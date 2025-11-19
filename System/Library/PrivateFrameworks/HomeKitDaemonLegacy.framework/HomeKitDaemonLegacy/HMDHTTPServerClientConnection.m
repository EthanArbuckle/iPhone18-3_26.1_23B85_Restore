@interface HMDHTTPServerClientConnection
@end

@implementation HMDHTTPServerClientConnection

void __79___HMDHTTPServerClientConnection__reallySendMessage_timeout_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0)
  {
    objc_initWeak(&location, *(a1 + 32));
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __79___HMDHTTPServerClientConnection__reallySendMessage_timeout_completionHandler___block_invoke_2;
    aBlock[3] = &unk_27972ACB8;
    objc_copyWeak(&v16, &location);
    objc_copyWeak(&v17, (a1 + 64));
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    v14 = v4;
    v15 = v5;
    v6 = _Block_copy(aBlock);
    [*(a1 + 32) addCompletionHandler:v6 forTransactionIdentifier:*(a1 + 40)];
    v7 = [*(a1 + 32) connection];
    v8 = *(a1 + 48);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __79___HMDHTTPServerClientConnection__reallySendMessage_timeout_completionHandler___block_invoke_55;
    v9[3] = &unk_27972ACE0;
    objc_copyWeak(&v11, &location);
    objc_copyWeak(&v12, (a1 + 64));
    v10 = *(a1 + 40);
    [v7 sendResponse:v8 completionHandler:v9];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&v11);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __79___HMDHTTPServerClientConnection__reallySendMessage_timeout_completionHandler___block_invoke_57(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = [WeakRetained error];
  (*(v2 + 16))(v2, v3, v4);
}

void __79___HMDHTTPServerClientConnection__reallySendMessage_timeout_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = objc_loadWeakRetained((a1 + 56));
  v9 = objc_autoreleasePoolPush();
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [WeakRetained shortDescription];
    v13 = [*(a1 + 32) UUIDString];
    v17 = 138544386;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = v5;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[%@] Received response to transaction '%@', %@, with error %@", &v17, 0x34u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v5;

  if (v6)
  {
    [v8 cancelWithError:v6];
  }

  else
  {
    [v8 finish];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __79___HMDHTTPServerClientConnection__reallySendMessage_timeout_completionHandler___block_invoke_55(id *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v5 = objc_loadWeakRetained(a1 + 6);
  if (v3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [WeakRetained shortDescription];
      v10 = [WeakRetained device];
      v18 = 138544130;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to send message to device, %@, with error: %@", &v18, 0x2Au);
    }

    objc_autoreleasePoolPop(v6);
    [v5 cancelWithError:v3];
  }

  v11 = objc_autoreleasePoolPush();
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [WeakRetained shortDescription];
    v15 = [WeakRetained device];
    v16 = [a1[4] UUIDString];
    v18 = 138544130;
    v19 = v13;
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = v15;
    v24 = 2112;
    v25 = v16;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[%@] Sent message to device, %@, with transaction identifier: %@", &v18, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __72___HMDHTTPServerClientConnection_sendMessage_timeout_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    WeakRetained = [WeakRetained isCancelled];
    v3 = v7;
    if ((WeakRetained & 1) == 0)
    {
      [v7 setCompletionBlock:0];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      if (*(a1 + 72) - (v4 - *(a1 + 64)) <= 1.0)
      {
        v5 = 1.0;
      }

      else
      {
        v5 = *(a1 + 72);
      }

      [*(a1 + 32) _reallySendMessage:*(a1 + 40) timeout:*(a1 + 48) completionHandler:v5];
      WeakRetained = [v7 finish];
      v3 = v7;
    }
  }

  return MEMORY[0x2821F96F8](WeakRetained, v3);
}

void __72___HMDHTTPServerClientConnection_sendMessage_timeout_completionHandler___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x277D0F1A0]])
  {
    v5 = [WeakRetained error];
    v6 = [v5 code];

    if (v6 != 13)
    {
      goto LABEL_8;
    }

    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 32) shortDescription];
      v13 = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[%@] The request timed out, starting a lost connection timer", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v3 = [*(a1 + 32) lostConnectionTimer];
    [v3 resume];
  }

  else
  {
  }

LABEL_8:
  if (*(a1 + 40))
  {
    v11 = [WeakRetained error];
    if (!v11)
    {
      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23 description:@"Operation Cancelled" reason:@"Unable to send message" suggestion:0];
    }

    (*(*(a1 + 40) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end