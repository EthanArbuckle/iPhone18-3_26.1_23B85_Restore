@interface SimplePing
+ (unint64_t)icmpHeaderOffsetInIPv4Packet:(id)packet;
- (BOOL)validatePing4ResponsePacket:(id)packet sequenceNumber:(unsigned __int16 *)number;
- (BOOL)validatePing6ResponsePacket:(id)packet sequenceNumber:(unsigned __int16 *)number;
- (BOOL)validatePingResponsePacket:(id)packet sequenceNumber:(unsigned __int16 *)number;
- (BOOL)validateSequenceNumber:(unsigned __int16)number;
- (SimplePing)initWithHostName:(id)name;
- (SimplePingDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)pingPacketWithType:(unsigned __int8)type payload:(id)payload requiresChecksum:(BOOL)checksum;
- (unsigned)hostAddressFamily;
- (void)dealloc;
- (void)didFailWithError:(id)error;
- (void)didFailWithHostStreamError:(id)error;
- (void)hostResolutionDone;
- (void)packetDidFailToSendDelegate:(id)delegate error:(id)error;
- (void)readData;
- (void)sendPingWithData:(id)data;
- (void)setupTimer:(id)timer currentSequenceNumber:(unsigned __int16)number;
- (void)start;
- (void)startWithHostAddress;
- (void)stop;
- (void)stopHostResolution;
- (void)stopSocket;
@end

@implementation SimplePing

- (SimplePing)initWithHostName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v10.receiver = self;
    v10.super_class = SimplePing;
    v5 = [(SimplePing *)&v10 init];
    if (v5)
    {
      v6 = [nameCopy copy];
      hostName = v5->_hostName;
      v5->_hostName = v6;

      v5->_identifier = arc4random();
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(SimplePing *)self setIsInvalidated:1];
  [(SimplePing *)self stop];
  v3.receiver = self;
  v3.super_class = SimplePing;
  [(SimplePing *)&v3 dealloc];
}

- (unsigned)hostAddressFamily
{
  hostAddress = [(SimplePing *)self hostAddress];
  if (hostAddress)
  {
    hostAddress4 = hostAddress;
    hostAddress2 = [(SimplePing *)self hostAddress];
    if ([hostAddress2 length] <= 0xF)
    {

      v8 = 0;
      goto LABEL_7;
    }

    hostAddress3 = [(SimplePing *)self hostAddress];
    bytes = [hostAddress3 bytes];

    if (bytes)
    {
      hostAddress4 = [(SimplePing *)self hostAddress];
      v8 = *([hostAddress4 bytes] + 1);
LABEL_7:

      return v8;
    }
  }

  return 0;
}

- (void)didFailWithError:(id)error
{
  v12[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = errorCopy;
  if (!errorCopy)
  {
    v6 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = @"Unknown error occurred";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v5 = [v6 errorWithDomain:@"com.apple.NPTKit" code:-1 userInfo:v7];
  }

  selfCopy = self;
  CFAutorelease(selfCopy);
  [(SimplePing *)selfCopy stop];
  delegate = [(SimplePing *)selfCopy delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate simplePing:selfCopy didFailWithError:v5];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)didFailWithHostStreamError:(id)error
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (error.var0 == *MEMORY[0x277CBAD40])
  {
    v8 = *MEMORY[0x277CBACF0];
    v4 = [MEMORY[0x277CCABB0] numberWithInt:*&error.var1];
    v9[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CBACE8] code:2 userInfo:v5];
  [(SimplePing *)self didFailWithError:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)pingPacketWithType:(unsigned __int8)type payload:(id)payload requiresChecksum:(BOOL)checksum
{
  checksumCopy = checksum;
  payloadCopy = payload;
  v9 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(payloadCopy, "length") + 8}];
  v10 = v9;
  if (v9)
  {
    mutableBytes = [v9 mutableBytes];
    *mutableBytes = type;
    *(mutableBytes + 1) = 0;
    *(mutableBytes + 2) = 0;
    *(mutableBytes + 4) = __rev16([(SimplePing *)self identifier]);
    *(mutableBytes + 6) = __rev16([(SimplePing *)self nextSequenceNumber]);
    memcpy((mutableBytes + 8), [payloadCopy bytes], objc_msgSend(payloadCopy, "length"));
    if (!checksumCopy)
    {
LABEL_9:
      v16 = v10;
      goto LABEL_10;
    }

    bytes = [v10 bytes];
    v13 = [v10 length];
    if (v13 < 2)
    {
      v14 = 0;
      if (!v13)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v14 = 0;
      do
      {
        v15 = *bytes++;
        v14 += v15;
        v13 -= 2;
      }

      while (v13 > 1);
      if (!v13)
      {
        goto LABEL_8;
      }
    }

    v14 += *bytes;
LABEL_8:
    *(mutableBytes + 2) = ~(HIWORD(v14) + v14 + (((v14 >> 16) + v14) >> 16));
    goto LABEL_9;
  }

LABEL_10:

  return v10;
}

- (void)setupTimer:(id)timer currentSequenceNumber:(unsigned __int16)number
{
  timerCopy = timer;
  v7 = dispatch_get_global_queue(0, 0);
  v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v7);
  [(SimplePing *)self setTimeoutTimer:v8];

  objc_initWeak(&location, self);
  timeoutTimer = [(SimplePing *)self timeoutTimer];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __47__SimplePing_setupTimer_currentSequenceNumber___block_invoke;
  v19 = &unk_2789D43C8;
  objc_copyWeak(&v21, &location);
  v10 = timerCopy;
  v20 = v10;
  numberCopy = number;
  dispatch_source_set_event_handler(timeoutTimer, &v16);

  v11 = [(SimplePing *)self hostAddress:v16];

  [(SimplePing *)self timeoutTimer];
  if (v11)
    v12 = {;
    v13 = 1000000000;
  }

  else
    v12 = {;
    v13 = 5000000000;
  }

  v14 = dispatch_time(0, v13);
  dispatch_source_set_timer(v12, v14, 0xFFFFFFFFFFFFFFFFLL, 0);

  timeoutTimer2 = [(SimplePing *)self timeoutTimer];
  dispatch_source_set_cancel_handler(timeoutTimer2, &__block_literal_global_1);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

uint64_t __47__SimplePing_setupTimer_currentSequenceNumber___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    if (([WeakRetained isInvalidated] & 1) == 0)
    {
      v3 = [v9 timeoutTimer];
      if (v3)
      {
        v4 = v3;
        v5 = [v9 timeoutTimer];
        v6 = dispatch_source_testcancel(v5);

        if (!v6)
        {
          v7 = [v9 timeoutTimer];
          dispatch_source_cancel(v7);
        }
      }

      [v9 setTimeoutTimer:0];
      [v9 timeOutHandler:*(a1 + 32) sequenceNumber:*(a1 + 48)];
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)sendPingWithData:(id)data
{
  v46[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  hostAddress = [(SimplePing *)self hostAddress];

  if (!hostAddress)
  {
    v16 = MEMORY[0x277CCA9B8];
    v45 = *MEMORY[0x277CCA450];
    v46[0] = @"hostAddress is nil";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    v18 = [v16 errorWithDomain:@"com.apple.NPTKit" code:1 userInfo:v17];

    [(SimplePing *)self packetDidFailToSendDelegate:0 error:v18];
    delegate = 0;
    v20 = 0;
    v7 = 0;
    goto LABEL_29;
  }

  v6 = dataCopy;
  v7 = v6;
  if (!v6)
  {
    v8 = MEMORY[0x277CCACA8];
    nextSequenceNumber = [(SimplePing *)self nextSequenceNumber];
    v10 = [v8 stringWithFormat:@"%28zd bottles of beer on the wall", (100 * (nextSequenceNumber / 0x64u) - nextSequenceNumber + 99)];
    v7 = [v10 dataUsingEncoding:1];
  }

  hostAddressFamily = [(SimplePing *)self hostAddressFamily];
  if (hostAddressFamily == 30)
  {
    selfCopy2 = self;
    v13 = 128;
    v14 = v7;
    v15 = 0;
  }

  else
  {
    if (hostAddressFamily != 2)
    {
      v29 = MEMORY[0x277CCA9B8];
      v43 = *MEMORY[0x277CCA450];
      v44 = @"hostAddressFamily is not compatible";
      v30 = MEMORY[0x277CBEAC0];
      v31 = &v44;
      v32 = &v43;
LABEL_16:
      v33 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:1];
      v34 = [v29 errorWithDomain:@"com.apple.NPTKit" code:1 userInfo:v33];

      [(SimplePing *)self packetDidFailToSendDelegate:0 error:v34];
      delegate = 0;
      v20 = 0;
      goto LABEL_29;
    }

    selfCopy2 = self;
    v13 = 8;
    v14 = v7;
    v15 = 1;
  }

  v20 = [(SimplePing *)selfCopy2 pingPacketWithType:v13 payload:v14 requiresChecksum:v15];
  if (!v20)
  {
    v29 = MEMORY[0x277CCA9B8];
    v41 = *MEMORY[0x277CCA450];
    v42 = @"Failed to create packet";
    v30 = MEMORY[0x277CBEAC0];
    v31 = &v42;
    v32 = &v41;
    goto LABEL_16;
  }

  if ([(SimplePing *)self socket])
  {
    v39 = dataCopy;
    Native = CFSocketGetNative(self->_socket);
    v40[0] = 0;
    v40[1] = 1000000;
    setsockopt(Native, 0xFFFF, 4101, v40, 0x10u);
    bytes = [v20 bytes];
    v23 = [v20 length];
    hostAddress2 = [(SimplePing *)self hostAddress];
    bytes2 = [hostAddress2 bytes];
    hostAddress3 = [(SimplePing *)self hostAddress];
    v27 = sendto(Native, bytes, v23, 0, bytes2, [hostAddress3 length]);

    v28 = 0;
    if (v27 < 0)
    {
      v28 = *__error();
    }

    dataCopy = v39;
  }

  else
  {
    v28 = 9;
    v27 = -1;
  }

  delegate = [(SimplePing *)self delegate];
  if (v27 >= 1 && v27 == [v20 length])
  {
    [(SimplePing *)self setupTimer:v6 currentSequenceNumber:[(SimplePing *)self nextSequenceNumber]];
    timeoutTimer = [(SimplePing *)self timeoutTimer];
    dispatch_activate(timeoutTimer);

    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate simplePing:self didSendPacket:v20 sequenceNumber:{-[SimplePing nextSequenceNumber](self, "nextSequenceNumber")}];
    }

    [(SimplePing *)self setNextSequenceNumber:([(SimplePing *)self nextSequenceNumber]+ 1)];
    if (![(SimplePing *)self nextSequenceNumber])
    {
      [(SimplePing *)self setNextSequenceNumberHasWrapped:1];
    }
  }

  else
  {
    if (v28)
    {
      v36 = v28;
    }

    else
    {
      v36 = 55;
    }

    v37 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v36 userInfo:0];
    [(SimplePing *)self packetDidFailToSendDelegate:v20 error:v37];
  }

LABEL_29:

  v38 = *MEMORY[0x277D85DE8];
}

- (void)packetDidFailToSendDelegate:(id)delegate error:(id)error
{
  delegateCopy = delegate;
  errorCopy = error;
  delegate = [(SimplePing *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate simplePing:self didFailToSendPacket:delegateCopy sequenceNumber:-[SimplePing nextSequenceNumber](self error:{"nextSequenceNumber"), errorCopy}];
  }

  [(SimplePing *)self setNextSequenceNumber:([(SimplePing *)self nextSequenceNumber]+ 1)];
  if (![(SimplePing *)self nextSequenceNumber])
  {
    [(SimplePing *)self setNextSequenceNumberHasWrapped:1];
  }
}

+ (unint64_t)icmpHeaderOffsetInIPv4Packet:(id)packet
{
  packetCopy = packet;
  if ([packetCopy length] >= 0x1C && (v4 = objc_msgSend(packetCopy, "bytes"), (*v4 & 0xF0) == 0x40))
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    if (v4[9] == 1)
    {
      v6 = 4 * (*v4 & 0xF);
      if ([packetCopy length] >= (v6 + 8))
      {
        v5 = v6;
      }
    }
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (BOOL)validateSequenceNumber:(unsigned __int16)number
{
  numberCopy = number;
  nextSequenceNumberHasWrapped = [(SimplePing *)self nextSequenceNumberHasWrapped];
  nextSequenceNumber = [(SimplePing *)self nextSequenceNumber];
  if (nextSequenceNumberHasWrapped)
  {
    return (nextSequenceNumber - numberCopy) < 0x78u;
  }

  else
  {
    return nextSequenceNumber > numberCopy;
  }
}

- (BOOL)validatePing4ResponsePacket:(id)packet sequenceNumber:(unsigned __int16 *)number
{
  packetCopy = packet;
  v7 = [objc_opt_class() icmpHeaderOffsetInIPv4Packet:packetCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_13;
  }

  v8 = v7;
  v9 = ([packetCopy mutableBytes] + v7);
  v10 = v9[1];
  v9[1] = 0;
  v11 = [packetCopy length] - v8;
  if (v11 < 2)
  {
    v12 = 0;
    v13 = v9;
    if (!v11)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v12 = 0;
  v13 = v9;
  do
  {
    v14 = *v13++;
    v12 += v14;
    v11 -= 2;
  }

  while (v11 > 1);
  if (v11)
  {
LABEL_6:
    v12 += *v13;
  }

LABEL_7:
  v9[1] = v10;
  if ((v10 ^ (HIWORD(v12) + v12 + (((v12 >> 16) + v12) >> 16))) != 0xFFFF || *v9 || *(v9 + 1) || (v15 = bswap32(v9[2]), [(SimplePing *)self identifier]!= HIWORD(v15)) || (v16 = bswap32(v9[3]) >> 16, ![(SimplePing *)self validateSequenceNumber:v16]))
  {
LABEL_13:
    v17 = 0;
    goto LABEL_14;
  }

  [packetCopy replaceBytesInRange:0 withBytes:v8 length:{0, 0}];
  *number = v16;
  v17 = 1;
LABEL_14:

  return v17;
}

- (BOOL)validatePing6ResponsePacket:(id)packet sequenceNumber:(unsigned __int16 *)number
{
  packetCopy = packet;
  if ([packetCopy length] >= 8 && (v7 = objc_msgSend(packetCopy, "bytes"), *v7 == 129) && (v8 = v7, !v7[1]) && (v9 = bswap32(*(v7 + 2)), -[SimplePing identifier](self, "identifier") == HIWORD(v9)) && (v10 = bswap32(*(v8 + 3)) >> 16, -[SimplePing validateSequenceNumber:](self, "validateSequenceNumber:", v10)))
  {
    *number = v10;
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)validatePingResponsePacket:(id)packet sequenceNumber:(unsigned __int16 *)number
{
  packetCopy = packet;
  hostAddressFamily = [(SimplePing *)self hostAddressFamily];
  if (hostAddressFamily == 30)
  {
    v8 = [(SimplePing *)self validatePing6ResponsePacket:packetCopy sequenceNumber:number];
  }

  else
  {
    if (hostAddressFamily != 2)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v8 = [(SimplePing *)self validatePing4ResponsePacket:packetCopy sequenceNumber:number];
  }

  v9 = v8;
LABEL_7:

  return v9;
}

- (void)readData
{
  v36 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0;
  v29 = 0u;
  v3 = malloc_type_malloc(0xFFFFuLL, 0x4BCE79uLL);
  if (v3)
  {
    v4 = v3;
    v23 = 128;
    Native = CFSocketGetNative([(SimplePing *)self socket]);
    v6 = recvfrom(Native, v4, 0xFFFFuLL, 0, &v28, &v23);
    v7 = 0;
    if (v6 < 0)
    {
      v7 = *__error();
    }

    timeoutTimer = [(SimplePing *)self timeoutTimer];
    if (timeoutTimer)
    {
      v9 = timeoutTimer;
      timeoutTimer2 = [(SimplePing *)self timeoutTimer];
      v11 = dispatch_source_testcancel(timeoutTimer2);

      if (!v11)
      {
        timeoutTimer3 = [(SimplePing *)self timeoutTimer];
        dispatch_source_cancel(timeoutTimer3);
      }
    }

    if (v6 < 1)
    {
      if (v7)
      {
        v17 = v7;
      }

      else
      {
        v17 = 32;
      }

      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v17 userInfo:0];
      [(SimplePing *)self didFailWithError:v13];
LABEL_24:

      free(v4);
      goto LABEL_25;
    }

    v22 = 0;
    v13 = [MEMORY[0x277CBEB28] dataWithBytes:v4 length:v6];
    if ([v13 length])
    {
      delegate = [(SimplePing *)self delegate];
      if ([(SimplePing *)self validatePingResponsePacket:v13 sequenceNumber:&v22])
      {
        if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [delegate simplePing:self didReceivePingResponsePacket:v13 sequenceNumber:v22];
        }
      }

      else if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [delegate simplePing:self didReceiveUnexpectedPacket:v13];
      }

      goto LABEL_24;
    }

    v18 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25 = @"Failed to read packet data";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v20 = [v18 errorWithDomain:@"com.apple.NPTKit" code:-1 userInfo:v19];
    [(SimplePing *)self didFailWithError:v20];
  }

  else
  {
    v15 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v27 = @"Failed to allocate buffer";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v16 = [v15 errorWithDomain:@"com.apple.NPTKit" code:-1 userInfo:v13];
    [(SimplePing *)self didFailWithError:v16];
  }

LABEL_25:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)startWithHostAddress
{
  v19[1] = *MEMORY[0x277D85DE8];
  hostAddressFamily = [(SimplePing *)self hostAddressFamily];
  if (hostAddressFamily == 30)
  {
    v4 = 58;
    goto LABEL_5;
  }

  if (hostAddressFamily == 2)
  {
    v4 = 1;
LABEL_5:
    v5 = socket(hostAddressFamily, 2, v4);
    if (v5 < 0)
    {
      v11 = *__error();
      if (v11)
      {
        goto LABEL_13;
      }
    }

    context.version = 0;
    memset(&context.retain, 0, 24);
    context.info = self;
    v6 = CFSocketCreateWithNative(0, v5, 1uLL, SocketReadCallback, &context);
    [(SimplePing *)self setSocket:CFAutorelease(v6)];
    if ([(SimplePing *)self socket])
    {
      if ((CFSocketGetSocketFlags([(SimplePing *)self socket]) & 0x80) == 0)
      {
        [SimplePing startWithHostAddress];
      }

      RunLoopSource = CFSocketCreateRunLoopSource(0, [(SimplePing *)self socket], 0);
      resourceLoaderRunLoop = [MEMORY[0x277CBAB78] resourceLoaderRunLoop];
      CFRunLoopAddSource(resourceLoaderRunLoop, RunLoopSource, *MEMORY[0x277CBF058]);
      CFRelease(RunLoopSource);
      delegate = [(SimplePing *)self delegate];
      if (!delegate || (objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_18;
      }

      hostAddress = [(SimplePing *)self hostAddress];
      [delegate simplePing:self didStartWithAddress:hostAddress];
    }

    else
    {
      close(v5);
      v13 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA450];
      v19[0] = @"Failed to create Socket";
      hostAddress = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v14 = [v13 errorWithDomain:@"com.apple.NPTKit" code:-1 userInfo:hostAddress];
      [(SimplePing *)self didFailWithError:v14];

      delegate = 0;
    }

LABEL_18:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  v11 = 43;
LABEL_13:
  v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v11 userInfo:0];
  [(SimplePing *)self didFailWithError:?];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)hostResolutionDone
{
  v24 = *MEMORY[0x277D85DE8];
  hasBeenResolved = 0;
  v3 = CFHostGetAddressing([(SimplePing *)self host], &hasBeenResolved);
  v4 = v3;
  if (hasBeenResolved)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    hasBeenResolved = 0;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = v11;
          bytes = [v12 bytes];
          if ([v11 length] >= 0x10)
          {
            v14 = *(bytes + 1);
            if (v14 == 30)
            {
              if ([(SimplePing *)self addressStyle]!= 1)
              {
                goto LABEL_20;
              }
            }

            else if (v14 == 2 && [(SimplePing *)self addressStyle]!= 2)
            {
LABEL_20:
              v15 = [objc_alloc(MEMORY[0x277CBEA90]) initWithData:v11];
              [(SimplePing *)self setHostAddress:v15];

              hasBeenResolved = 1;
              goto LABEL_21;
            }
          }

          if (hasBeenResolved)
          {
            goto LABEL_21;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:
  }

  [(SimplePing *)self stopHostResolution];
  if (hasBeenResolved)
  {
    [(SimplePing *)self startWithHostAddress];
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CBACE8] code:1 userInfo:0];
    [(SimplePing *)self didFailWithError:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __19__SimplePing_start__block_invoke;
  block[3] = &unk_2789D3DF8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __19__SimplePing_start__block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  memset(&clientContext, 0, sizeof(clientContext));
  clientContext.info = *(a1 + 32);
  v2 = [clientContext.info hostAddress];
  if (v2)
  {
  }

  else if (![*(a1 + 32) host])
  {
    goto LABEL_5;
  }

  [*(a1 + 32) stop];
LABEL_5:
  v3 = [*(a1 + 32) hostName];
  v4 = CFHostCreateWithName(0, v3);
  [*(a1 + 32) setHost:CFAutorelease(v4)];

  if ([*(a1 + 32) host])
  {
    CFHostSetClient([*(a1 + 32) host], HostResolveCallback, &clientContext);
    v5 = [*(a1 + 32) host];
    v6 = [MEMORY[0x277CBAB78] resourceLoaderRunLoop];
    CFHostScheduleWithRunLoop(v5, v6, *MEMORY[0x277CBF058]);
    if (!CFHostStartInfoResolution([*(a1 + 32) host], kCFHostAddresses, &v11))
    {
      [*(a1 + 32) didFailWithHostStreamError:{v11.domain, *&v11.error}];
    }

    [*(a1 + 32) setupTimer:0 currentSequenceNumber:0];
    v7 = [*(a1 + 32) timeoutTimer];
    dispatch_activate(v7);
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = @"Failed to create CFHost";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v7 = [v8 errorWithDomain:@"com.apple.NPTKit" code:-1 userInfo:v9];

    [*(a1 + 32) didFailWithError:v7];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stopHostResolution
{
  if ([(SimplePing *)self host])
  {
    host = [(SimplePing *)self host];
    CFRetain(host);
    [(SimplePing *)self setHost:0];
    resourceLoaderRunLoop = [MEMORY[0x277CBAB78] resourceLoaderRunLoop];
    v5 = *MEMORY[0x277CBF058];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__SimplePing_stopHostResolution__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = host;
    CFRunLoopPerformBlock(resourceLoaderRunLoop, v5, block);
    CFRunLoopWakeUp([MEMORY[0x277CBAB78] resourceLoaderRunLoop]);
  }
}

void __32__SimplePing_stopHostResolution__block_invoke(uint64_t a1)
{
  CFHostSetClient(*(a1 + 32), 0, 0);
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBAB78] resourceLoaderRunLoop];
  CFHostUnscheduleFromRunLoop(v2, v3, *MEMORY[0x277CBF058]);
  v4 = *(a1 + 32);

  CFRelease(v4);
}

- (void)stopSocket
{
  if ([(SimplePing *)self socket])
  {
    socket = [(SimplePing *)self socket];
    CFRetain(socket);
    [(SimplePing *)self setSocket:0];
    resourceLoaderRunLoop = [MEMORY[0x277CBAB78] resourceLoaderRunLoop];
    v5 = *MEMORY[0x277CBF058];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __24__SimplePing_stopSocket__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = socket;
    CFRunLoopPerformBlock(resourceLoaderRunLoop, v5, block);
    CFRunLoopWakeUp([MEMORY[0x277CBAB78] resourceLoaderRunLoop]);
  }
}

void __24__SimplePing_stopSocket__block_invoke(uint64_t a1)
{
  CFSocketInvalidate(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

- (void)stop
{
  timeoutTimer = [(SimplePing *)self timeoutTimer];
  if (timeoutTimer)
  {
    v4 = timeoutTimer;
    timeoutTimer2 = [(SimplePing *)self timeoutTimer];
    v6 = dispatch_source_testcancel(timeoutTimer2);

    if (!v6)
    {
      timeoutTimer3 = [(SimplePing *)self timeoutTimer];
      dispatch_source_cancel(timeoutTimer3);
    }
  }

  [(SimplePing *)self stopHostResolution];
  [(SimplePing *)self stopSocket];

  [(SimplePing *)self setHostAddress:0];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SimplePing allocWithZone:zone];
  hostName = [(SimplePing *)self hostName];
  v6 = [(SimplePing *)v4 initWithHostName:hostName];

  [(SimplePing *)v6 setAddressStyle:[(SimplePing *)self addressStyle]];
  return v6;
}

- (SimplePingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end