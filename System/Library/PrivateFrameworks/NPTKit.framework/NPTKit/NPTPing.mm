@interface NPTPing
- (NPTPing)initWithCoder:(id)coder;
- (NPTPing)initWithNetworkActivityParent:(id)parent;
- (NPTPing)initWithNetworkActivityParent:(id)parent pingTarget:(id)target;
- (id)copyWithZone:(_NSZone *)zone;
- (id)delegate;
- (void)cancel;
- (void)encodeWithCoder:(id)coder;
- (void)sendPing;
- (void)simplePing:(id)ping didFailToSendPacket:(id)packet sequenceNumber:(unsigned __int16)number error:(id)error;
- (void)simplePing:(id)ping didFailWithError:(id)error;
- (void)simplePing:(id)ping didReceivePingResponsePacket:(id)packet sequenceNumber:(unsigned __int16)number;
- (void)simplePing:(id)ping didReceiveUnexpectedPacket:(id)packet;
- (void)simplePing:(id)ping didTimeOut:(id)out sequenceNumber:(unsigned __int16)number error:(id)error;
- (void)startWithNumberOfPings:(unint64_t)pings forcingIPv4:(BOOL)pv4 forcingIPv6:(BOOL)pv6 completion:(id)completion;
- (void)stop;
@end

@implementation NPTPing

- (NPTPing)initWithNetworkActivityParent:(id)parent
{
  parentCopy = parent;
  v17.receiver = self;
  v17.super_class = NPTPing;
  v6 = [(NPTPing *)&v17 init];
  if (v6)
  {
    v7 = objc_alloc_init(NPTPingResult);
    [(NPTPing *)v6 setResults:v7];

    v8 = [[SimplePing alloc] initWithHostName:@"npt.cdn-apple.com"];
    pinger = v6->pinger;
    v6->pinger = v8;

    [(SimplePing *)v6->pinger setDelegate:v6];
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pings = v6->pings;
    v6->pings = v10;

    v12 = nw_activity_create();
    pingActivity = v6->pingActivity;
    v6->pingActivity = v12;

    objc_storeStrong(&v6->activityParent, parent);
    activityParent = v6->activityParent;
    v14 = v6->pingActivity;
    nw_activity_set_parent_activity();
  }

  return v6;
}

- (NPTPing)initWithNetworkActivityParent:(id)parent pingTarget:(id)target
{
  parentCopy = parent;
  targetCopy = target;
  v20.receiver = self;
  v20.super_class = NPTPing;
  v9 = [(NPTPing *)&v20 init];
  if (v9)
  {
    v10 = objc_alloc_init(NPTPingResult);
    [(NPTPing *)v9 setResults:v10];

    v11 = [[SimplePing alloc] initWithHostName:targetCopy];
    pinger = v9->pinger;
    v9->pinger = v11;

    [(SimplePing *)v9->pinger setDelegate:v9];
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pings = v9->pings;
    v9->pings = v13;

    v15 = nw_activity_create();
    pingActivity = v9->pingActivity;
    v9->pingActivity = v15;

    objc_storeStrong(&v9->activityParent, parent);
    activityParent = v9->activityParent;
    v17 = v9->pingActivity;
    nw_activity_set_parent_activity();
  }

  return v9;
}

- (void)startWithNumberOfPings:(unint64_t)pings forcingIPv4:(BOOL)pv4 forcingIPv6:(BOOL)pv6 completion:(id)completion
{
  pv6Copy = pv6;
  pv4Copy = pv4;
  v18 = *MEMORY[0x277D85DE8];
  [(NPTPing *)self setCompletion:completion];
  pingActivity = self->pingActivity;
  nw_activity_activate();
  [(NPTPing *)self setCanceled:0];
  self->pingCount = pings;
  if (pv4Copy && !pv6Copy)
  {
    v11 = 1;
LABEL_7:
    [(SimplePing *)self->pinger setAddressStyle:v11];
    goto LABEL_8;
  }

  if (pv6Copy && !pv4Copy)
  {
    v11 = 2;
    goto LABEL_7;
  }

LABEL_8:
  delegate = [(NPTPing *)self delegate];

  if (delegate)
  {
    delegate2 = [(NPTPing *)self delegate];
    [delegate2 pingWillStartPinging];
  }

  v14 = +[NPTLogger network];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134217984;
    pingsCopy = pings;
    _os_log_impl(&dword_233421000, v14, OS_LOG_TYPE_DEFAULT, "Will test ping latency by sending %lu pings to Apple CDN Server", &v16, 0xCu);
  }

  [(SimplePing *)self->pinger start];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)sendPing
{
  pings = self->pings;
  v4 = objc_alloc_init(Ping);
  [(NSMutableArray *)pings addObject:v4];

  pinger = self->pinger;

  [(SimplePing *)pinger sendPingWithData:0];
}

- (void)stop
{
  results = [(NPTPing *)self results];
  error = [results error];

  v5 = [NPTPingResult alloc];
  pings = self->pings;
  hostName = [(SimplePing *)self->pinger hostName];
  v8 = [(NPTPingResult *)v5 initWithPings:pings usingAddress:hostName];
  [(NPTPing *)self setResults:v8];

  results2 = [(NPTPing *)self results];
  [results2 setError:error];

  [(SimplePing *)self->pinger stop];
  results3 = [(NPTPing *)self results];
  [results3 percentLost];
  if (v11 == 0.0)
  {
    results4 = [(NPTPing *)self results];
    pings = [results4 pings];
    v14 = [pings count];
    pingCount = self->pingCount;

    v16 = v14 == pingCount;
  }

  else
  {

    v16 = 0;
  }

  pingActivity = self->pingActivity;
  nw_activity_complete_with_reason();
  delegate = [(NPTPing *)self delegate];

  if (delegate)
  {
    delegate2 = [(NPTPing *)self delegate];
    results5 = [(NPTPing *)self results];
    [delegate2 pingDidFinishWithResults:results5];
  }

  completion = [(NPTPing *)self completion];

  if (completion)
  {
    if (v16)
    {
      v22 = 0;
    }

    else
    {
      v58 = MEMORY[0x277CCACA8];
      v60 = error;
      results6 = [(NPTPing *)self results];
      pings2 = [results6 pings];
      v25 = [pings2 count];
      results7 = [(NPTPing *)self results];
      pings3 = [results7 pings];
      v28 = [pings3 count];
      results8 = [(NPTPing *)self results];
      [results8 percentLost];
      v31 = ((v30 / -100.0 + 1.0) * v28);
      v32 = self->pingCount;
      results9 = [(NPTPing *)self results];
      [results9 percentLost];
      v35 = [v58 stringWithFormat:@"Errors encountered with ping. Sent: %ld Received: %ld Expected: %lu Percent Lost: %f", v25, v31, v32, v34];

      results10 = [(NPTPing *)self results];
      error2 = [results10 error];
      localizedDescription = [error2 localizedDescription];

      if (localizedDescription)
      {
        v55 = MEMORY[0x277CCACA8];
        results11 = [(NPTPing *)self results];
        error3 = [results11 error];
        localizedDescription2 = [error3 localizedDescription];
        results12 = [(NPTPing *)self results];
        pings4 = [results12 pings];
        v40 = [pings4 count];
        results13 = [(NPTPing *)self results];
        pings5 = [results13 pings];
        v43 = [pings5 count];
        results14 = [(NPTPing *)self results];
        [results14 percentLost];
        v46 = ((v45 / -100.0 + 1.0) * v43);
        v47 = self->pingCount;
        results15 = [(NPTPing *)self results];
        [results15 percentLost];
        v50 = [v55 stringWithFormat:@"%@. Sent: %ld Received: %ld Expected: %lu Percent Lost: %.02f", localizedDescription2, v40, v46, v47, v49];

        v35 = v50;
      }

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [dictionary setValue:v35 forKey:*MEMORY[0x277CCA450]];
      v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NPTKit" code:-1 userInfo:dictionary];
      results16 = [(NPTPing *)self results];
      [results16 setError:v22];

      error = v60;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __15__NPTPing_stop__block_invoke;
    block[3] = &unk_2789D4388;
    block[4] = self;
    v62 = v22;
    v53 = v22;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __15__NPTPing_stop__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) completion];
  v2 = [*(a1 + 32) results];
  v3[2](v3, v2, *(a1 + 40));
}

- (void)simplePing:(id)ping didReceivePingResponsePacket:(id)packet sequenceNumber:(unsigned __int16)number
{
  numberCopy = number;
  packet = [(NSMutableArray *)self->pings objectAtIndex:number, packet];
  [packet setWasSuccessful:1];

  v8 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v9 = [(NSMutableArray *)self->pings objectAtIndex:numberCopy];
  [v9 setEndTime:v8];

  if ([(NPTPing *)self canceled]|| [(NSMutableArray *)self->pings count]>= self->pingCount)
  {

    [(NPTPing *)self stop];
  }

  else
  {

    [(NPTPing *)self sendPing];
  }
}

- (void)simplePing:(id)ping didFailWithError:(id)error
{
  errorCopy = error;
  pingCopy = ping;
  v8 = +[NPTLogger network];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [NPTPing simplePing:errorCopy didFailWithError:?];
  }

  [pingCopy stop];
  results = [(NPTPing *)self results];
  error = [results error];

  if (!error)
  {
    results2 = [(NPTPing *)self results];
    [results2 setError:errorCopy];
  }

  delegate = [(NPTPing *)self delegate];

  if (delegate)
  {
    delegate2 = [(NPTPing *)self delegate];
    [delegate2 pingDidFinishWithError:errorCopy];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __39__NPTPing_simplePing_didFailWithError___block_invoke;
  v15[3] = &unk_2789D4388;
  v15[4] = self;
  v16 = errorCopy;
  v14 = errorCopy;
  dispatch_async(MEMORY[0x277D85CD0], v15);
}

void __39__NPTPing_simplePing_didFailWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];

  if (v2)
  {
    v3 = [*(a1 + 32) completion];
    (*(v3 + 2))(v3, 0, *(a1 + 40));
  }
}

- (void)simplePing:(id)ping didTimeOut:(id)out sequenceNumber:(unsigned __int16)number error:(id)error
{
  numberCopy = number;
  errorCopy = error;
  v9 = +[NPTLogger network];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [NPTPing simplePing:errorCopy didTimeOut:? sequenceNumber:? error:?];
  }

  results = [(NPTPing *)self results];
  error = [results error];

  if (!error)
  {
    results2 = [(NPTPing *)self results];
    [results2 setError:errorCopy];
  }

  if (![(NSMutableArray *)self->pings count])
  {
    goto LABEL_9;
  }

  v13 = [(NSMutableArray *)self->pings objectAtIndex:numberCopy];
  [v13 setWasSuccessful:0];

  v14 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v15 = [(NSMutableArray *)self->pings objectAtIndex:numberCopy];
  [v15 setEndTime:v14];

  if ([(NPTPing *)self canceled]|| [(NSMutableArray *)self->pings count]>= self->pingCount)
  {
LABEL_9:
    [(NPTPing *)self stop];
  }

  else
  {
    [(NPTPing *)self sendPing];
  }
}

- (void)simplePing:(id)ping didFailToSendPacket:(id)packet sequenceNumber:(unsigned __int16)number error:(id)error
{
  numberCopy = number;
  errorCopy = error;
  v9 = +[NPTLogger network];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [NPTPing simplePing:errorCopy didFailToSendPacket:? sequenceNumber:? error:?];
  }

  v10 = [(NSMutableArray *)self->pings objectAtIndex:numberCopy];
  [v10 setWasSuccessful:0];

  v11 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v12 = [(NSMutableArray *)self->pings objectAtIndex:numberCopy];
  [v12 setEndTime:v11];

  results = [(NPTPing *)self results];
  error = [results error];

  if (!error)
  {
    results2 = [(NPTPing *)self results];
    [results2 setError:errorCopy];
  }

  if ([(NPTPing *)self canceled]|| [(NSMutableArray *)self->pings count]>= self->pingCount)
  {
    [(NPTPing *)self stop];
  }

  else
  {
    [(NPTPing *)self sendPing];
  }
}

- (void)simplePing:(id)ping didReceiveUnexpectedPacket:(id)packet
{
  v5 = [NPTLogger network:ping];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [NPTPing simplePing:v5 didReceiveUnexpectedPacket:?];
  }

  v6 = [(NSMutableArray *)self->pings objectAtIndex:[(NSMutableArray *)self->pings count]- 1];
  [v6 setWasSuccessful:0];

  v7 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v8 = [(NSMutableArray *)self->pings objectAtIndex:[(NSMutableArray *)self->pings count]- 1];
  [v8 setEndTime:v7];

  if ([(NPTPing *)self canceled]|| [(NSMutableArray *)self->pings count]>= self->pingCount)
  {
    [(NPTPing *)self stop];
  }

  else
  {
    [(NPTPing *)self sendPing];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  results = [(NPTPing *)self results];
  [coderCopy encodeObject:results forKey:@"pingResults"];
}

- (NPTPing)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = NPTPing;
  coderCopy = coder;
  v4 = [(NPTPing *)&v7 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"pingResults", v7.receiver, v7.super_class}];

  [(NPTPing *)v4 setResults:v5];
  return v4;
}

- (void)cancel
{
  [(NPTPing *)self setCanceled:1];
  pinger = self->pinger;

  [(SimplePing *)pinger stop];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NPTPing allocWithZone:?]];
  results = [(NPTPing *)self results];
  [(NPTPing *)v4 setResults:results];

  return v4;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)simplePing:(void *)a1 didFailWithError:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)simplePing:(void *)a1 didTimeOut:sequenceNumber:error:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)simplePing:(void *)a1 didFailToSendPacket:sequenceNumber:error:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end