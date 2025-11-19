@interface HAPBTLEControlOutputStream
+ (id)shortDescription;
- (HAPBTLEControlOutputStream)init;
- (HAPBTLEControlOutputStream)initWithControlType:(unsigned __int8)a3 transactionIdentifier:(id)a4 controlPayload:(id)a5 mtuLength:(unint64_t)a6 timeoutInterval:(double)a7;
- (HAPBTLEControlOutputStreamDelegate)delegate;
- (id)_nextPacketWithMaximumLength:(unint64_t)a3 error:(id *)a4;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)shortDescription;
- (unint64_t)remainingControlPayloadLength;
- (void)_closeWithError:(id)a3;
- (void)_complete;
- (void)_sendNextPayloadFragmentWithCompletionHandler:(id)a3;
- (void)close;
- (void)open;
- (void)sendNextPayloadFragment;
- (void)setCompletionHandler:(id)a3;
@end

@implementation HAPBTLEControlOutputStream

- (void)setCompletionHandler:(id)a3
{
  v4 = MEMORY[0x231885210](a3, a2);
  objc_setAssociatedObject(self, "completionHandler", v4, 3);
}

- (HAPBTLEControlOutputStreamDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_nextPacketWithMaximumLength:(unint64_t)a3 error:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  if ([(HAPBTLEControlOutputStream *)self isComplete])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [(HAPBTLEControlOutputStream *)self shortDescription];
      v29 = 138543618;
      v30 = v9;
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@[%@] The control output stream is complete", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    if (a4)
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:1 description:@"Invalid operation." reason:@"The control output stream is complete" suggestion:0 underlyingError:0];
      *a4 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = [(HAPBTLEControlOutputStream *)self controlPayloadWrittenLength]!= 0;
    v13 = [(HAPBTLEControlOutputStream *)self payload];
    v14 = [(HAPBTLEControlOutputStream *)self controlPayloadWrittenLength];
    v15 = [(HAPBTLEControlOutputStream *)self payload];
    v16 = [v13 subdataWithRange:{v14, objc_msgSend(v15, "length") - -[HAPBTLEControlOutputStream controlPayloadWrittenLength](self, "controlPayloadWrittenLength")}];

    v17 = [HAPBTLEControlPacket alloc];
    v18 = [(HAPBTLEControlOutputStream *)self type];
    v19 = [(HAPBTLEControlOutputStream *)self transactionIdentifier];
    v11 = [(HAPBTLEControlPacket *)v17 initWithControlType:v18 transactionIdentifier:v19 continuationPacket:v12 packetPayload:v16 maximumLength:a3];

    if (v11)
    {
      v20 = [(HAPBTLEControlOutputStream *)self controlPayloadWrittenLength];
      v21 = [(HAPBTLEControlPacket *)v11 payload];
      -[HAPBTLEControlOutputStream setControlPayloadWrittenLength:](self, "setControlPayloadWrittenLength:", [v21 length] + v20);

      v22 = v11;
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [(HAPBTLEControlOutputStream *)self shortDescription];
        v29 = 138543618;
        v30 = v25;
        v31 = 2112;
        v32 = v26;
        _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to create control packet", &v29, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      if (a4)
      {
        *a4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1 description:@"Failed to create control packet." reason:0 suggestion:0 underlyingError:0];
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_sendNextPayloadFragmentWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HAPBTLEControlOutputStream *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HAPBTLEControlOutputStream__sendNextPayloadFragmentWithCompletionHandler___block_invoke;
  v7[3] = &unk_2786D65D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
  v5 = [(HAPBTLEControlOutputStream *)self operationQueue];
  [v5 addOperation:v4];

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
    v3 = [(HAPBTLEControlOutputStream *)self delegate];
    [v3 controlOutputStreamDidComplete:self];
  }
}

- (void)_closeWithError:(id)a3
{
  v5 = a3;
  if ([(HAPBTLEControlOutputStream *)self isOpen])
  {
    [(HAPBTLEControlOutputStream *)self setOpen:0];
    v4 = [(HAPBTLEControlOutputStream *)self delegate];
    [v4 controlOutputStream:self didCloseWithError:v5];
  }
}

- (void)close
{
  v3 = [(HAPBTLEControlOutputStream *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HAPBTLEControlOutputStream_close__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)open
{
  v3 = [(HAPBTLEControlOutputStream *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HAPBTLEControlOutputStream_open__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
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
  v3 = [(HAPBTLEControlOutputStream *)self payload];
  v4 = [v3 length];
  v5 = v4 - [(HAPBTLEControlOutputStream *)self controlPayloadWrittenLength];

  return v5;
}

- (id)descriptionWithPointer:(BOOL)a3
{
  v3 = a3;
  v16 = MEMORY[0x277CCACA8];
  v5 = [(HAPBTLEControlOutputStream *)self shortDescription];
  if (v3)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v6 = &stru_283E79C60;
  }

  v7 = [(HAPBTLEControlOutputStream *)self type];
  v8 = @"unknown";
  if (v7 == 1)
  {
    v8 = @"response";
  }

  if (!v7)
  {
    v8 = @"request";
  }

  v9 = v8;
  v10 = [(HAPBTLEControlOutputStream *)self transactionIdentifier];
  v11 = [v10 unsignedCharValue];
  [(HAPBTLEControlOutputStream *)self isComplete];
  v12 = HMFBooleanToString();
  v13 = [(HAPBTLEControlOutputStream *)self payload];
  v14 = [v16 stringWithFormat:@"<%@%@, Type = %@, Transaction Identifier = 0x%02x, Completed = %@, Payload Length = %tu, Remaining Payload Length = %tu>", v5, v6, v9, v11, v12, objc_msgSend(v13, "length"), -[HAPBTLEControlOutputStream remainingControlPayloadLength](self, "remainingControlPayloadLength")];

  if (v3)
  {
  }

  return v14;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HAPBTLEControlOutputStream)initWithControlType:(unsigned __int8)a3 transactionIdentifier:(id)a4 controlPayload:(id)a5 mtuLength:(unint64_t)a6 timeoutInterval:(double)a7
{
  v40 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a5;
  v15 = v14;
  if (!v13)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  if (![v14 length])
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

  if (!a6)
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

  if (a7 <= 0.0)
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
    v27 = 0;
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

    v17->_type = a3;
    objc_storeStrong(&v17->_transactionIdentifier, a4);
    v22 = [v15 copy];
    payload = v17->_payload;
    v17->_payload = v22;

    v17->_mtuLength = a6;
    v17->_timeoutInterval = a7;
    v24 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", HAPDispatchQueueName(v17, @"operationQueue"];
    [(NSOperationQueue *)v24 setName:v25];

    [(NSOperationQueue *)v24 setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v24 setQualityOfService:25];
    operationQueue = v17->_operationQueue;
    v17->_operationQueue = v24;
  }

  self = v17;
  v27 = self;
LABEL_18:

  v33 = *MEMORY[0x277D85DE8];
  return v27;
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