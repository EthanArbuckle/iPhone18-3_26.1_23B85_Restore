@interface HAPBTLEControlOutputStream
+ (id)shortDescription;
- (HAPBTLEControlOutputStream)init;
- (HAPBTLEControlOutputStream)initWithControlType:(unsigned __int8)type transactionIdentifier:(id)identifier controlPayload:(id)payload mtuLength:(unint64_t)length timeoutInterval:(double)interval;
- (HAPBTLEControlOutputStreamDelegate)delegate;
- (id)_nextPacketWithMaximumLength:(unint64_t)length error:(id *)error;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)shortDescription;
- (unint64_t)remainingControlPayloadLength;
- (void)_closeWithError:(id)error;
- (void)_complete;
- (void)_sendNextPayloadFragmentWithCompletionHandler:(id)handler;
- (void)close;
- (void)open;
- (void)sendNextPayloadFragment;
- (void)setCompletionHandler:(id)handler;
@end

@implementation HAPBTLEControlOutputStream

- (void)setCompletionHandler:(id)handler
{
  v4 = MEMORY[0x231885210](handler, a2);
  objc_setAssociatedObject(self, "completionHandler", v4, 3);
}

- (HAPBTLEControlOutputStreamDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_nextPacketWithMaximumLength:(unint64_t)length error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  if ([(HAPBTLEControlOutputStream *)self isComplete])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      shortDescription = [(HAPBTLEControlOutputStream *)self shortDescription];
      v29 = 138543618;
      v30 = v9;
      v31 = 2112;
      v32 = shortDescription;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@[%@] The control output stream is complete", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:1 description:@"Invalid operation." reason:@"The control output stream is complete" suggestion:0 underlyingError:0];
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = [(HAPBTLEControlOutputStream *)self controlPayloadWrittenLength]!= 0;
    payload = [(HAPBTLEControlOutputStream *)self payload];
    controlPayloadWrittenLength = [(HAPBTLEControlOutputStream *)self controlPayloadWrittenLength];
    payload2 = [(HAPBTLEControlOutputStream *)self payload];
    v16 = [payload subdataWithRange:{controlPayloadWrittenLength, objc_msgSend(payload2, "length") - -[HAPBTLEControlOutputStream controlPayloadWrittenLength](self, "controlPayloadWrittenLength")}];

    v17 = [HAPBTLEControlPacket alloc];
    type = [(HAPBTLEControlOutputStream *)self type];
    transactionIdentifier = [(HAPBTLEControlOutputStream *)self transactionIdentifier];
    v11 = [(HAPBTLEControlPacket *)v17 initWithControlType:type transactionIdentifier:transactionIdentifier continuationPacket:v12 packetPayload:v16 maximumLength:length];

    if (v11)
    {
      controlPayloadWrittenLength2 = [(HAPBTLEControlOutputStream *)self controlPayloadWrittenLength];
      payload3 = [(HAPBTLEControlPacket *)v11 payload];
      -[HAPBTLEControlOutputStream setControlPayloadWrittenLength:](self, "setControlPayloadWrittenLength:", [payload3 length] + controlPayloadWrittenLength2);

      v22 = v11;
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        shortDescription2 = [(HAPBTLEControlOutputStream *)self shortDescription];
        v29 = 138543618;
        v30 = v25;
        v31 = 2112;
        v32 = shortDescription2;
        _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to create control packet", &v29, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] hapErrorWithCode:1 description:@"Failed to create control packet." reason:0 suggestion:0 underlyingError:0];
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_sendNextPayloadFragmentWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  clientQueue = [(HAPBTLEControlOutputStream *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HAPBTLEControlOutputStream__sendNextPayloadFragmentWithCompletionHandler___block_invoke;
  v7[3] = &unk_2786D65D8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(clientQueue, v7);
}

void __76__HAPBTLEControlOutputStream__sendNextPayloadFragmentWithCompletionHandler___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v21 = 0;
  v3 = [v2 _nextPacketWithMaximumLength:objc_msgSend(v2 error:{"mtuLength"), &v21}];
  v4 = v21;
  if (v3)
  {
    v5 = [*(a1 + 32) delegate];
    if (v5)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __76__HAPBTLEControlOutputStream__sendNextPayloadFragmentWithCompletionHandler___block_invoke_22;
      v19[3] = &unk_2786D6790;
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v19[4] = *(a1 + 32);
      v20 = v7;
      [v5 controlOutputStream:v6 didReceiveRequestToSendControlPacket:v3 completionHandler:v19];
      v8 = v20;
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [*(a1 + 32) shortDescription];
        *buf = 138543618;
        v23 = v16;
        v24 = 2112;
        v25 = v17;
        _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] The stream delegate is missing, closing session", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      if (!*(a1 + 40))
      {
        goto LABEL_13;
      }

      v8 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Operation not supported." reason:@"The stream delegate is missing." suggestion:0 underlyingError:0 marker:236];
      (*(*(a1 + 40) + 16))();
    }

LABEL_13:
    goto LABEL_14;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 32) shortDescription];
    *buf = 138543874;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = v4;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to get the next control packet with error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v4);
  }

LABEL_14:

  v18 = *MEMORY[0x277D85DE8];
}

void __76__HAPBTLEControlOutputStream__sendNextPayloadFragmentWithCompletionHandler___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) clientQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __76__HAPBTLEControlOutputStream__sendNextPayloadFragmentWithCompletionHandler___block_invoke_2;
    v5[3] = &unk_2786D65D8;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

- (void)sendNextPayloadFragment
{
  v3 = objc_alloc(MEMORY[0x277D0F780]);
  [(HAPBTLEControlOutputStream *)self timeoutInterval];
  v4 = [v3 initWithTimeout:?];
  objc_initWeak(&location, v4);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__HAPBTLEControlOutputStream_sendNextPayloadFragment__block_invoke;
  v8[3] = &unk_2786D6EB0;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  [v4 addExecutionBlock:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__HAPBTLEControlOutputStream_sendNextPayloadFragment__block_invoke_3;
  v6[3] = &unk_2786D6EB0;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  [v4 setCompletionBlock:v6];
  operationQueue = [(HAPBTLEControlOutputStream *)self operationQueue];
  [operationQueue addOperation:v4];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __53__HAPBTLEControlOutputStream_sendNextPayloadFragment__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __53__HAPBTLEControlOutputStream_sendNextPayloadFragment__block_invoke_2;
    v5[3] = &unk_2786D6CF0;
    v6 = v3;
    [v4 _sendNextPayloadFragmentWithCompletionHandler:v5];
  }
}

void __53__HAPBTLEControlOutputStream_sendNextPayloadFragment__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) clientQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__HAPBTLEControlOutputStream_sendNextPayloadFragment__block_invoke_4;
  v6[3] = &unk_2786D7050;
  v4 = *(a1 + 32);
  v7 = WeakRetained;
  v8 = v4;
  v5 = WeakRetained;
  dispatch_async(v3, v6);
}

void __53__HAPBTLEControlOutputStream_sendNextPayloadFragment__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  v3 = *(a1 + 40);
  if (v2)
  {
    v6 = [*(a1 + 32) error];
    [v3 _closeWithError:v6];
  }

  else
  {
    v4 = [*(a1 + 40) remainingControlPayloadLength];
    v5 = *(a1 + 40);
    if (v4)
    {

      [v5 sendNextPayloadFragment];
    }

    else
    {

      [v5 _complete];
    }
  }
}

uint64_t __53__HAPBTLEControlOutputStream_sendNextPayloadFragment__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 cancelWithError:a2];
  }

  else
  {
    return [v2 finish];
  }
}

- (void)_complete
{
  if (![(HAPBTLEControlOutputStream *)self isComplete])
  {
    [(HAPBTLEControlOutputStream *)self setComplete:1];
    delegate = [(HAPBTLEControlOutputStream *)self delegate];
    [delegate controlOutputStreamDidComplete:self];
  }
}

- (void)_closeWithError:(id)error
{
  errorCopy = error;
  if ([(HAPBTLEControlOutputStream *)self isOpen])
  {
    [(HAPBTLEControlOutputStream *)self setOpen:0];
    delegate = [(HAPBTLEControlOutputStream *)self delegate];
    [delegate controlOutputStream:self didCloseWithError:errorCopy];
  }
}

- (void)close
{
  clientQueue = [(HAPBTLEControlOutputStream *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HAPBTLEControlOutputStream_close__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

- (void)open
{
  clientQueue = [(HAPBTLEControlOutputStream *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HAPBTLEControlOutputStream_open__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

uint64_t __34__HAPBTLEControlOutputStream_open__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isOpen];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setOpen:1];
    v3 = [*(a1 + 32) delegate];
    [v3 controlOutputStreamDidOpen:*(a1 + 32)];

    v4 = *(a1 + 32);

    return [v4 sendNextPayloadFragment];
  }

  return result;
}

- (unint64_t)remainingControlPayloadLength
{
  payload = [(HAPBTLEControlOutputStream *)self payload];
  v4 = [payload length];
  v5 = v4 - [(HAPBTLEControlOutputStream *)self controlPayloadWrittenLength];

  return v5;
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  v16 = MEMORY[0x277CCACA8];
  shortDescription = [(HAPBTLEControlOutputStream *)self shortDescription];
  if (pointerCopy)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v6 = &stru_283E79C60;
  }

  type = [(HAPBTLEControlOutputStream *)self type];
  v8 = @"unknown";
  if (type == 1)
  {
    v8 = @"response";
  }

  if (!type)
  {
    v8 = @"request";
  }

  v9 = v8;
  transactionIdentifier = [(HAPBTLEControlOutputStream *)self transactionIdentifier];
  unsignedCharValue = [transactionIdentifier unsignedCharValue];
  [(HAPBTLEControlOutputStream *)self isComplete];
  v12 = HMFBooleanToString();
  payload = [(HAPBTLEControlOutputStream *)self payload];
  v14 = [v16 stringWithFormat:@"<%@%@, Type = %@, Transaction Identifier = 0x%02x, Completed = %@, Payload Length = %tu, Remaining Payload Length = %tu>", shortDescription, v6, v9, unsignedCharValue, v12, objc_msgSend(payload, "length"), -[HAPBTLEControlOutputStream remainingControlPayloadLength](self, "remainingControlPayloadLength")];

  if (pointerCopy)
  {
  }

  return v14;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HAPBTLEControlOutputStream)initWithControlType:(unsigned __int8)type transactionIdentifier:(id)identifier controlPayload:(id)payload mtuLength:(unint64_t)length timeoutInterval:(double)interval
{
  v40 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  payloadCopy = payload;
  v15 = payloadCopy;
  if (!identifierCopy)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  if (![payloadCopy length])
  {
    v28 = objc_autoreleasePoolPush();
    v29 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

LABEL_9:
    v30 = HMFGetLogIdentifier();
    v31 = +[HAPBTLEControlOutputStream shortDescription];
    *buf = 138543618;
    v37 = v30;
    v38 = 2112;
    v39 = v31;
    v32 = "%{public}@[%@] Invalid control payload data.";
    goto LABEL_16;
  }

  if (!length)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v30 = HMFGetLogIdentifier();
    v31 = +[HAPBTLEControlOutputStream shortDescription];
    *buf = 138543618;
    v37 = v30;
    v38 = 2112;
    v39 = v31;
    v32 = "%{public}@[%@] Invalid MTU length.";
LABEL_16:
    _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_ERROR, v32, buf, 0x16u);

    goto LABEL_17;
  }

  if (interval <= 0.0)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v31 = +[HAPBTLEControlOutputStream shortDescription];
      *buf = 138543618;
      v37 = v30;
      v38 = 2112;
      v39 = v31;
      v32 = "%{public}@[%@] Invalid timeout for write.";
      goto LABEL_16;
    }

LABEL_17:

    objc_autoreleasePoolPop(v28);
    selfCopy = 0;
    goto LABEL_18;
  }

  v35.receiver = self;
  v35.super_class = HAPBTLEControlOutputStream;
  v16 = [(HAPBTLEControlOutputStream *)&v35 init];
  v17 = v16;
  if (v16)
  {
    v18 = HAPDispatchQueueName(v16, 0);
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create(v18, v19);
    clientQueue = v17->_clientQueue;
    v17->_clientQueue = v20;

    v17->_type = type;
    objc_storeStrong(&v17->_transactionIdentifier, identifier);
    v22 = [v15 copy];
    payload = v17->_payload;
    v17->_payload = v22;

    v17->_mtuLength = length;
    v17->_timeoutInterval = interval;
    v24 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", HAPDispatchQueueName(v17, @"operationQueue"];
    [(NSOperationQueue *)v24 setName:v25];

    [(NSOperationQueue *)v24 setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v24 setQualityOfService:25];
    operationQueue = v17->_operationQueue;
    v17->_operationQueue = v24;
  }

  self = v17;
  selfCopy = self;
LABEL_18:

  v33 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (HAPBTLEControlOutputStream)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end