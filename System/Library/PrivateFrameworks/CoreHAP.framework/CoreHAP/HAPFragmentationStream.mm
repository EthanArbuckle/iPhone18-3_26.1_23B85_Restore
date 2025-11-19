@interface HAPFragmentationStream
- (HAPFragmentationStream)init;
- (HAPFragmentationStreamDelegate)delegate;
- (id)__transactionDataWithTransactionIdentifier:(unsigned __int16)a3;
- (void)__addFragmentationPacket:(id)a3;
- (void)close;
- (void)receivedFragmentedPacket:(id)a3;
@end

@implementation HAPFragmentationStream

- (HAPFragmentationStreamDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)__addFragmentationPacket:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = [(HAPFragmentationStream *)self pendingPackets];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __51__HAPFragmentationStream___addFragmentationPacket___block_invoke;
  v11 = &unk_2786D4BC0;
  v6 = v4;
  v12 = v6;
  v13 = &v14;
  [v5 enumerateObjectsUsingBlock:&v8];

  v7 = [(HAPFragmentationStream *)self pendingPackets:v8];
  [v7 insertObject:v6 atIndex:v15[3]];

  _Block_object_dispose(&v14, 8);
}

void __51__HAPFragmentationStream___addFragmentationPacket___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [*(a1 + 32) transactionIdentifier];
  if (v7 == [v9 transactionIdentifier] && (v8 = objc_msgSend(*(a1 + 32), "offset"), v8 < objc_msgSend(v9, "offset")))
  {
    *a4 = 1;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a3 + 1;
  }
}

- (id)__transactionDataWithTransactionIdentifier:(unsigned __int16)a3
{
  v3 = a3;
  v40 = *MEMORY[0x277D85DE8];
  v4 = [(HAPFragmentationStream *)self __filteredPacketsWithTransactionIdentifier:?];
  if ([v4 count])
  {
    v5 = [v4 firstObject];
    v6 = [v5 length];

    v7 = [MEMORY[0x277CBEB28] dataWithCapacity:v6];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v31 + 1) + 8 * i);
          v14 = [v13 offset];
          if ([v7 length] != v14)
          {
            v17 = objc_autoreleasePoolPush();
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = HMFGetLogIdentifier();
              v20 = [v13 offset];
              v21 = [v7 length];
              *buf = 138543874;
              v36 = v19;
              v37 = 1024;
              *v38 = v20;
              *&v38[4] = 2048;
              *&v38[6] = v21;
              _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@[HAPFragmentationInputStream] Packet with offset %u does not match current offset %tu", buf, 0x1Cu);
            }

            objc_autoreleasePoolPop(v17);
            goto LABEL_21;
          }

          v15 = [v13 data];
          [v7 appendData:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    if ([v7 length] == v6)
    {
      v16 = v7;
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [v7 length];
        *buf = 138543874;
        v36 = v27;
        v37 = 2048;
        *v38 = v28;
        *&v38[8] = 1024;
        *&v38[10] = v6;
        _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_ERROR, "%{public}@[HAPFragmentationInputStream] Final payload length, %tu, doesn't match expected payload length, %u", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v25);
LABEL_21:
      v16 = 0;
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v24;
      v37 = 1024;
      *v38 = v3;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@[HAPFragmentationInputStream] No packets matching transaction %u", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v22);
    v16 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)receivedFragmentedPacket:(id)a3
{
  v4 = a3;
  v5 = [(HAPFragmentationStream *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HAPFragmentationStream_receivedFragmentedPacket___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __51__HAPFragmentationStream_receivedFragmentedPacket___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentPacketTransactionIdentifier];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) currentPacketTransactionIdentifier];
    v5 = [v4 unsignedCharValue];
    v6 = [*(a1 + 40) transactionIdentifier];

    if (v6 != v5)
    {
      v7 = *(a1 + 32);
      v8 = [v7 currentPacketTransactionIdentifier];
      [v7 __removeAllPendingPacketsWithTransactionIdentifier:{objc_msgSend(v8, "unsignedCharValue")}];

      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6723 userInfo:0];
      v10 = [*(a1 + 32) delegate];
      v11 = *(a1 + 32);
      v12 = [v11 currentPacketTransactionIdentifier];
      [v10 fragmentationStream:v11 didReceiveData:0 transactionIdentifier:objc_msgSend(v12 error:{"unsignedCharValue"), v9}];
    }
  }

  [*(a1 + 32) __addFragmentationPacket:*(a1 + 40)];
  v13 = [*(a1 + 32) __isTransactionCompleteWithTransactionIdentifier:{objc_msgSend(*(a1 + 40), "transactionIdentifier")}];
  v14 = *(a1 + 32);
  if (v13)
  {
    v15 = [v14 __transactionDataWithTransactionIdentifier:{objc_msgSend(*(a1 + 40), "transactionIdentifier")}];
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6732 userInfo:0];
    }

    v16 = [*(a1 + 32) delegate];
    [v16 fragmentationStream:*(a1 + 32) didReceiveData:v15 transactionIdentifier:objc_msgSend(*(a1 + 40) error:{"transactionIdentifier"), v17}];

    [*(a1 + 32) setCurrentPacketTransactionIdentifier:0];
    [*(a1 + 32) __removeAllPendingPacketsWithTransactionIdentifier:{objc_msgSend(*(a1 + 40), "transactionIdentifier")}];
  }

  else
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(*(a1 + 40), "transactionIdentifier")}];
    [v14 setCurrentPacketTransactionIdentifier:?];
  }
}

- (void)close
{
  v3 = [(HAPFragmentationStream *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HAPFragmentationStream_close__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __31__HAPFragmentationStream_close__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6752 userInfo:0];
  v2 = [*(a1 + 32) delegate];
  [v2 fragmentationStream:*(a1 + 32) didCloseWithError:v3];
}

- (HAPFragmentationStream)init
{
  v11.receiver = self;
  v11.super_class = HAPFragmentationStream;
  v2 = [(HAPFragmentationStream *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v4 = HAPDispatchQueueName(v2, 0);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(v4, v5);
    clientQueue = v3->_clientQueue;
    v3->_clientQueue = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB40]);
    pendingPackets = v3->_pendingPackets;
    v3->_pendingPackets = v8;
  }

  return v3;
}

@end