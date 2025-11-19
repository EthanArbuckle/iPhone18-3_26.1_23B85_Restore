@interface HAPAccessoryServerBTLE200
@end

@implementation HAPAccessoryServerBTLE200

void __43___HAPAccessoryServerBTLE200_timerDidFire___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) pairingActivity];
}

void __64___HAPAccessoryServerBTLE200_securitySession_didCloseWithError___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) securitySession];

  if (v2 == v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 48);
      *buf = 138543618;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Security session did close with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) submitPairVerifyMetricWithError:*(a1 + 48)];
    [*(a1 + 40) setSecuritySession:0];
    if (([*(a1 + 40) _shouldIgnoreRetryDiscoveryError:*(a1 + 48)] & 1) == 0)
    {
      [*(a1 + 40) _updateLastKeyBagIdentityIndexFailingPVWithError:*(a1 + 48)];
      v9 = [*(a1 + 40) shouldRetryPVDueToAuthenticationError:*(a1 + 48)];
      v10 = *(a1 + 40);
      if (v9)
      {
        v11 = [v10 clientQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __64___HAPAccessoryServerBTLE200_securitySession_didCloseWithError___block_invoke_1012;
        block[3] = &unk_2786D6CA0;
        block[4] = *(a1 + 40);
        dispatch_async(v11, block);
      }

      else
      {
        [v10 _disconnectWithDisconnectionError:0 completionHandler:0];
        if (*(a1 + 48))
        {
          [*(a1 + 40) _cancelAllQueuedOperationsWithError:?];
          [*(a1 + 40) _resumeAllOperations];
          [*(a1 + 40) updateResumeSessionID:0];
        }
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __53___HAPAccessoryServerBTLE200_securitySessionDidOpen___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) securitySession];

  if (v2 == v3)
  {
    v4 = [*(a1 + 40) accessoryCache];
    [v4 setLastKeyBagIdentityIndexFailingPV:0];

    v5 = *(a1 + 40);
    v6 = [v5 identifier];
    [v5 associateAccessoryWithControllerKeyUsingAccessoryIdentifier:v6];

    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 32) resumeSessionID];
      v13 = 138543618;
      v14 = v10;
      v15 = 2048;
      v16 = v11;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Security session is open with resumeSessionID %llu", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) submitPairVerifyMetricWithError:0];
    [*(a1 + 40) updateResumeSessionID:{objc_msgSend(*(a1 + 32), "resumeSessionID")}];
    [*(a1 + 40) _notifyDelegatesOfConnectionState:1 withError:0];
    [*(a1 + 40) _resumeAllOperations];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __55___HAPAccessoryServerBTLE200_securitySessionIsOpening___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) securitySession];

  if (v2 == v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Security session is opening", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __74___HAPAccessoryServerBTLE200_securitySession_didReceiveSetupExchangeData___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) securitySession];

  if (v2 == v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Request to send security session setup exchange", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) _handleSecuritySessionSetupExchangeData:*(a1 + 48)];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __55___HAPAccessoryServerBTLE200_authSession_authComplete___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v24 = v5;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Auth Complete with status: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 40) userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if (!v8)
  {
    v8 = *(a1 + 40);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __55___HAPAccessoryServerBTLE200_authSession_authComplete___block_invoke_994;
  v21[3] = &unk_2786D7050;
  v21[4] = *(a1 + 32);
  v9 = v8;
  v22 = v9;
  __55___HAPAccessoryServerBTLE200_authSession_authComplete___block_invoke_994(v21);
  v10 = [*(a1 + 32) delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [*(a1 + 32) delegateQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __55___HAPAccessoryServerBTLE200_authSession_authComplete___block_invoke_2;
    v19[3] = &unk_2786D7050;
    v13 = *(a1 + 40);
    v19[4] = *(a1 + 32);
    v20 = v13;
    dispatch_async(v12, v19);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v17;
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement accessoryServer:didFinishAuth:", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __55___HAPAccessoryServerBTLE200_authSession_authComplete___block_invoke_994(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v3;
  }
}

void __55___HAPAccessoryServerBTLE200_authSession_authComplete___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didFinishAuth:*(a1 + 40)];
}

void __60___HAPAccessoryServerBTLE200_authSession_confirmUUID_token___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60___HAPAccessoryServerBTLE200_authSession_confirmUUID_token___block_invoke_2;
    block[3] = &unk_2786D7078;
    v5 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v15 = v5;
    v16 = *(a1 + 48);
    dispatch_async(v4, block);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v9;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement accessoryServer:confirmUUID:token:)", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:1 userInfo:0];
    [v10 authSession:v11 authComplete:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __60___HAPAccessoryServerBTLE200_authSession_confirmUUID_token___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) confirmUUID:*(a1 + 40) token:*(a1 + 48)];
}

void __65___HAPAccessoryServerBTLE200_authSession_authenticateUUID_token___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65___HAPAccessoryServerBTLE200_authSession_authenticateUUID_token___block_invoke_2;
    block[3] = &unk_2786D7078;
    v5 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v15 = v5;
    v16 = *(a1 + 48);
    dispatch_async(v4, block);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v9;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement accessoryServer:authenticateUUID:token:", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:1 userInfo:0];
    [v10 authSession:v11 authComplete:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __65___HAPAccessoryServerBTLE200_authSession_authenticateUUID_token___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) authenticateUUID:*(a1 + 40) token:*(a1 + 48)];
}

void __61___HAPAccessoryServerBTLE200_authSession_validateUUID_token___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    [*(a1 + 32) _suspendConnectionIdleTimer];
    v4 = [*(a1 + 32) delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61___HAPAccessoryServerBTLE200_authSession_validateUUID_token___block_invoke_2;
    block[3] = &unk_2786D7078;
    v5 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v15 = v5;
    v16 = *(a1 + 48);
    dispatch_async(v4, block);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v9;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement validateUUID:token1:token2:", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:1 userInfo:0];
    [v10 authSession:v11 authComplete:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __61___HAPAccessoryServerBTLE200_authSession_validateUUID_token___block_invoke_2(uint64_t a1)
{
  v7 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 authenticatedProtocolInfo];
  v6 = [v5 modelName];
  [v7 accessoryServer:v2 validateUUID:v3 token:v4 model:v6];
}

uint64_t __63___HAPAccessoryServerBTLE200_authSession_sendAuthExchangeData___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63___HAPAccessoryServerBTLE200_authSession_sendAuthExchangeData___block_invoke_2;
  v4[3] = &unk_2786D4478;
  v4[4] = v2;
  return [v2 _sendProtocolInfoServiceExchangeData:v1 completion:v4];
}

void __63___HAPAccessoryServerBTLE200_authSession_sendAuthExchangeData___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v10;
      v28 = 2112;
      v29 = v5;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@SW Auth failed, sending auth exchange with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = v5;
    v12 = [v11 userInfo];
    v13 = *MEMORY[0x277CCA7E8];
    v14 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    v15 = v11;
    if (v14)
    {
      v16 = [v11 userInfo];
      v15 = [v16 objectForKeyedSubscript:v13];
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __63___HAPAccessoryServerBTLE200_authSession_sendAuthExchangeData___block_invoke_987;
    v24[3] = &unk_2786D7050;
    v24[4] = *(a1 + 32);
    v17 = v15;
    v25 = v17;
    __63___HAPAccessoryServerBTLE200_authSession_sendAuthExchangeData___block_invoke_987(v24);
    v18 = [*(a1 + 32) authSession];
    [v18 resetSession];

    if ([*(a1 + 32) _delegateRespondsToSelector:sel_accessoryServer_didFinishAuth_])
    {
      v19 = [*(a1 + 32) delegateQueue];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __63___HAPAccessoryServerBTLE200_authSession_sendAuthExchangeData___block_invoke_2_990;
      v22[3] = &unk_2786D7050;
      v22[4] = *(a1 + 32);
      v23 = v11;
      dispatch_async(v19, v22);
    }
  }

  else
  {
    v20 = [*(a1 + 32) authSession];
    [v20 handleAuthExchangeData:v6 withHeader:0];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __63___HAPAccessoryServerBTLE200_authSession_sendAuthExchangeData___block_invoke_987(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v3;
  }
}

void __63___HAPAccessoryServerBTLE200_authSession_sendAuthExchangeData___block_invoke_2_990(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didFinishAuth:*(a1 + 40)];
}

void __74___HAPAccessoryServerBTLE200__notifyDelegatesOfConnectionState_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didUpdateConnectionState:*(a1 + 48) linkLayerType:3 withError:*(a1 + 40)];
}

void __61___HAPAccessoryServerBTLE200__notifyDelegatesPairingStopped___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v10 = v4;

  v5 = *(a1 + 32);
  if ([v10 isHAPError] && objc_msgSend(v10, "code") == 1)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = [*(a1 + 32) domain];
    v8 = [v6 errorWithDomain:v7 code:objc_msgSend(*(a1 + 32) userInfo:{"code"), 0}];

    v5 = v8;
  }

  v9 = [*(a1 + 40) delegate];
  [v9 accessoryServer:*(a1 + 40) didStopPairingWithError:v5];
}

void __61___HAPAccessoryServerBTLE200_tearDownSessionOnAuthCompletion__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) authSession];
  [v2 resetSession];

  [*(a1 + 32) setAuthenticated:1];
  [*(a1 + 32) setPairing:0];
  v3 = [*(a1 + 32) browser];
  v4 = [v3 pairSetupSession:*(a1 + 32) pairSetupType:objc_msgSend(*(a1 + 32) features:{"_getPairSetupType"), objc_msgSend(*(a1 + 32), "featureFlags")}];

  [*(a1 + 32) setPairSetupSession:v4];
}

void __45___HAPAccessoryServerBTLE200_provisionToken___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) authSession];
  [v2 sendTokenUpdateRequest:*(a1 + 40)];
}

void __58___HAPAccessoryServerBTLE200_continueAuthAfterValidation___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) authMethod] == 2)
  {
    v6 = [*(a1 + 32) authSession];
    [v6 continueAuthAfterValidation:*(a1 + 40)];

    return;
  }

  if (*(a1 + 40) != 1)
  {
    goto LABEL_14;
  }

  if ([*(a1 + 32) authMethod] == 4)
  {
    v2 = *(a1 + 32);

    [v2 _continuePairingAfterMFiCertValidation];
    return;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
LABEL_14:
    v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:16 description:@"Pairing Failed." reason:@"User cancelled pairing" suggestion:0 underlyingError:0];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58___HAPAccessoryServerBTLE200_continueAuthAfterValidation___block_invoke_2;
    v7[3] = &unk_2786D7050;
    v7[4] = *(a1 + 32);
    v8 = v4;
    v5 = v4;
    __58___HAPAccessoryServerBTLE200_continueAuthAfterValidation___block_invoke_2(v7);
    [*(a1 + 32) _pairingCompletedWithError:v5];

    return;
  }

  v3 = *(a1 + 32);

  [v3 continuePairingAfterAuthPrompt];
}

void __58___HAPAccessoryServerBTLE200_continueAuthAfterValidation___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v3;
  }
}

void __51___HAPAccessoryServerBTLE200_authenticateAccessory__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) authSession];
  [v1 handleAuthExchangeData:0 withHeader:0];
}

void __47___HAPAccessoryServerBTLE200_getAccessoryInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) protocolInfoServiceSignatureCharacteristics];
  v3 = [v2 instanceID];
  v4 = [HAPProtocolMessages constructInfoRequest:v3 outTID:*(*(a1 + 48) + 8) + 24];

  if (v4)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47___HAPAccessoryServerBTLE200_getAccessoryInfo___block_invoke_2;
    v9[3] = &unk_2786D4450;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v6;
    v11 = *(a1 + 48);
    [v5 _sendProtocolInfoServiceExchangeData:v4 completion:v9];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:1 userInfo:0];
    (*(v7 + 16))(v7, v8);
  }
}

void __47___HAPAccessoryServerBTLE200_getAccessoryInfo___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(*(a1 + 40) + 16);
LABEL_5:
    v7();
    goto LABEL_6;
  }

  v8 = [HAPProtocolMessages parseInfoResponse:v6 expectedTID:*(*(*(a1 + 48) + 8) + 24) withHeader:0];
  [*(a1 + 32) setAuthenticatedProtocolInfo:v8];

  v9 = *(a1 + 32);
  v10 = [v9 authenticatedProtocolInfo];
  LODWORD(v9) = [v9 _validateProtocolInfo:v10];

  if (v9)
  {
    v11 = [*(a1 + 32) authenticatedProtocolInfo];
    v12 = [v11 protocolVersion];
    [*(a1 + 32) setVersion:v12];

    v7 = *(*(a1 + 40) + 16);
    goto LABEL_5;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = *(a1 + 32);
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [*(a1 + 32) authenticatedProtocolInfo];
    v21 = 138543618;
    v22 = v17;
    v23 = 2112;
    v24 = v18;
    _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, "%{public}@Protocol Info does not match: %@ Accessory out of compliance", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v19 = *(a1 + 40);
  v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:7 userInfo:0];
  (*(v19 + 16))(v19, v20);

LABEL_6:
  v13 = *MEMORY[0x277D85DE8];
}

void __88___HAPAccessoryServerBTLE200_pairSetupSession_didReceiveBackoffRequestWithTimeInterval___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) pairSetupSession];

  if (v2 == v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 48);
      v10 = 138543618;
      v11 = v7;
      v12 = 2048;
      v13 = v8;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Pair Setup session request to backoff for %g seconds", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) setBadPairSetupCode:1];
    [*(a1 + 40) setPairSetupBackoffTimeInterval:*(a1 + 48)];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __73___HAPAccessoryServerBTLE200_pairSetupSessionDidReceiveInvalidSetupCode___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) pairSetupSession];

  if (v2 == v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Pair Setup session invalid setup code", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) setBadPairSetupCode:1];
    [*(a1 + 40) setPairSetupBackoffTimeInterval:0.0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __95___HAPAccessoryServerBTLE200_pairSetupSession_didReceiveSetupCodeRequestWithCompletionHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) pairSetupSession];

  if (v2 == v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Request to get the pairing peer setup code", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) _handlePairingSetupCodeRequestWithCompletionHandler:*(a1 + 48)];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __69___HAPAccessoryServerBTLE200_pairSetupSession_didReceiveProductData___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) pairSetupSession];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [v4 setProductData:v5];
  }
}

void __64___HAPAccessoryServerBTLE200_pairSetupSession_didStopWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) pairSetupSession];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [v4 _pairingCompletedWithError:v5];
  }
}

void __75___HAPAccessoryServerBTLE200_pairSetupSession_didReceiveSetupExchangeData___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) pairSetupSession];

  if (v2 == v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Request to send Pair Setup session setup exchange", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) _handlePairSetupSessionExchangeData:*(a1 + 48)];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __61___HAPAccessoryServerBTLE200_controlOutputStreamDidComplete___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  if (v2)
  {
    v3 = v2;
    v2[2](v2, 0);
    [*(a1 + 32) setCompletionHandler:0];
    v2 = v3;
  }
}

void __68___HAPAccessoryServerBTLE200_controlOutputStream_didCloseWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  if (v2)
  {
    v3 = v2;
    v2[2](v2, *(a1 + 40));
    [*(a1 + 32) setCompletionHandler:0];
    v2 = v3;
  }
}

void __105___HAPAccessoryServerBTLE200_controlOutputStream_didReceiveRequestToSendControlPacket_completionHandler___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [*(a1 + 32) pendingRequests];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [v7 controlOutputStream];

        if (v8 == v9)
        {
          [*(a1 + 32) _sendControlPacket:*(a1 + 48) forRequest:v7 completionHandler:*(a1 + 56)];
          goto LABEL_14;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    *buf = 138543618;
    v21 = v13;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%{public}@No matching request for control output stream: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  if (*(a1 + 56))
  {
    v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Invalid parameter." reason:@"No matching request for control output stream." suggestion:0 underlyingError:0];
    (*(*(a1 + 56) + 16))();
LABEL_14:
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __91___HAPAccessoryServerBTLE200_peripheral_didUpdateNotificationStateForCharacteristic_error___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) state] == 2)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 48);
      v14 = 138543618;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Received Notification updated confirmation for characteristics %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    if (*(a1 + 56))
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 40);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        v11 = *(a1 + 56);
        v14 = 138543618;
        v15 = v10;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Notification Update failed with error: %@", &v14, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
    }

    v12 = [*(a1 + 40) _characteristicForCBCharacteristic:*(a1 + 48)];
    if (v12)
    {
      [*(a1 + 40) _handleHAPNotificationStateUpdateForCharacteristic:v12 error:*(a1 + 56)];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __78___HAPAccessoryServerBTLE200_peripheral_didWriteValueForCharacteristic_error___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) state] == 2)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v2 = [*(a1 + 40) characteristicWriteCompletionHandlers];
    v3 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v21;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v21 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v20 + 1) + 8 * i);
          v8 = [v7 cbCharacteristic];
          v9 = [v8 isEqual:*(a1 + 48)];

          if (v9)
          {
            [*(a1 + 40) _handleWriteCompletionForCharacteristic:v7 error:*(a1 + 56)];

            goto LABEL_17;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 40);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 48);
      *buf = 138543618;
      v26 = v13;
      v27 = 2112;
      v28 = v14;
      v15 = "%{public}@Received characteristic write confirmation from unmapped characteristic: %@";
      v16 = v12;
      v17 = OS_LOG_TYPE_INFO;
LABEL_14:
      _os_log_impl(&dword_22AADC000, v16, v17, v15, buf, 0x16u);
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 40);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v18 = *(a1 + 32);
      *buf = 138543618;
      v26 = v13;
      v27 = 2112;
      v28 = v18;
      v15 = "%{public}@Received characteristic write for invalid peripheral: %@";
      v16 = v12;
      v17 = OS_LOG_TYPE_DEBUG;
      goto LABEL_14;
    }
  }

  objc_autoreleasePoolPop(v10);
LABEL_17:
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __79___HAPAccessoryServerBTLE200_peripheral_didUpdateValueForCharacteristic_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result == 2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 _handleUpdateValueForCharacteristic:v4 error:v5];
  }

  return result;
}

uint64_t __75___HAPAccessoryServerBTLE200_peripheral_didUpdateValueForDescriptor_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result == 2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 _handleReadDescriptorValue:v4 error:v5];
  }

  return result;
}

uint64_t __87___HAPAccessoryServerBTLE200_peripheral_didDiscoverDescriptorsForCharacteristic_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result == 2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 _handleDiscoveredCharacteristic:v4 error:v5];
  }

  return result;
}

uint64_t __84___HAPAccessoryServerBTLE200_peripheral_didDiscoverCharacteristicsForService_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result == 2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 _handleDiscoveredCharacteristicsForService:v4 error:v5];
  }

  return result;
}

uint64_t __59___HAPAccessoryServerBTLE200_peripheral_didModifyServices___block_invoke(id *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  result = [a1[4] state];
  if (result == 2)
  {
    result = [a1[5] count];
    if (result)
    {
      v3 = objc_autoreleasePoolPush();
      v4 = a1[6];
      v5 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = HMFGetLogIdentifier();
        v7 = a1[5];
        *buf = 138543618;
        v18 = v6;
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_ERROR, "%{public}@Disconnecting on services changed: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v3);
      if ([a1[6] isPairing])
      {
        v8 = [MEMORY[0x277CCA9B8] hapErrorWithCode:24];
        v11 = MEMORY[0x277D85DD0];
        v12 = 3221225472;
        v13 = __59___HAPAccessoryServerBTLE200_peripheral_didModifyServices___block_invoke_959;
        v14 = &unk_2786D7050;
        v15 = a1[6];
        v16 = v8;
        v9 = v8;
        __59___HAPAccessoryServerBTLE200_peripheral_didModifyServices___block_invoke_959(&v11);
        [a1[6] setPairingDisconnectionError:{v9, v11, v12, v13, v14, v15}];
      }

      result = [a1[6] _disconnectWithDisconnectionError:0 completionHandler:0];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void __59___HAPAccessoryServerBTLE200_peripheral_didModifyServices___block_invoke_959(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v3;
  }
}

uint64_t __61___HAPAccessoryServerBTLE200_peripheral_didDiscoverServices___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result == 2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 _handleDiscoveredServices:v4 error:v5];
  }

  return result;
}

void __83___HAPAccessoryServerBTLE200__notifyDelegateOfSentPlaintextData_forCharacteristic___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBTLE:*(a1 + 32) willSendPlaintextPayload:*(a1 + 40) forCharacteristic:*(a1 + 48)];
}

void __96___HAPAccessoryServerBTLE200__notifyDelegateOfSentEncryptedAuthenticatedData_forCharacteristic___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBTLE:*(a1 + 32) willSendEncryptedAndAuthenticatedPayload:*(a1 + 40) forCharacteristic:*(a1 + 48)];
}

void __87___HAPAccessoryServerBTLE200__notifyDelegateOfReceivedPlaintextData_forCharacteristic___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBTLE:*(a1 + 32) didReceivePlaintextPayload:*(a1 + 40) forCharacteristic:*(a1 + 48)];
}

void __100___HAPAccessoryServerBTLE200__notifyDelegateOfReceivedEncryptedAuthenticatedData_forCharacteristic___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBTLE:*(a1 + 32) didReceiveEncryptedAndAuthenticatedPayload:*(a1 + 40) forCharacteristic:*(a1 + 48)];
}

void __80___HAPAccessoryServerBTLE200__generateBroadcastKey_queue_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, double a4, uint64_t a5, void *a6)
{
  v59 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  v12 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v14 = v12;
  v15 = v14;
  if (!v14)
  {
    if (v11)
    {
      [WeakRetained setStateNumber:v11];
      v21 = [WeakRetained browser];
      v22 = [WeakRetained identifier];
      [v21 updateCachedStateForIdentifier:v22 stateNumber:v11];
    }

    if (v10)
    {
      if (*(a1 + 56) == 2)
      {
        v23 = [WeakRetained accessoryCache];
        v24 = [v23 peripheralInfo];
        [v24 keyUpdatedTime];
        v26 = v25;

        Current = 1.0;
        if (v26 <= 0.0)
        {
          Current = CFAbsoluteTimeGetCurrent();
        }

        v28 = [WeakRetained browser];
        v29 = [WeakRetained identifier];
        [v28 updateBroadcastKeyForIdentifier:v29 key:v10 keyUpdatedStateNumber:v11 keyUpdatedTime:Current];

        v16 = objc_autoreleasePoolPush();
        v30 = WeakRetained;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138544130;
          v52 = v31;
          v53 = 2112;
          v54 = v10;
          v55 = 2112;
          v56 = v11;
          v57 = 2048;
          v58 = Current;
          _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Saving the read broadcast key: %@, S#: %@ time: %f", buf, 0x2Au);
        }

        v15 = 0;
        goto LABEL_13;
      }

      if ([WeakRetained _validateGeneratedBroadcastKey:v10])
      {
        v39 = CFAbsoluteTimeGetCurrent();
        v40 = [WeakRetained browser];
        v41 = [WeakRetained identifier];
        [v40 updateBroadcastKeyForIdentifier:v41 key:v10 keyUpdatedStateNumber:v11 keyUpdatedTime:v39];

        v16 = objc_autoreleasePoolPush();
        v42 = WeakRetained;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v43 = HMFGetLogIdentifier();
          *buf = 138544130;
          v52 = v43;
          v53 = 2112;
          v54 = v10;
          v55 = 2112;
          v56 = v11;
          v57 = 2048;
          v58 = v39;
          _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Saving the read broadcast key: %@, S#: %@ time: %f", buf, 0x2Au);
        }

        v15 = 0;
        v32 = 1;
        goto LABEL_14;
      }
    }

    v15 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9];
    if (!v15)
    {
      v32 = 0;
      goto LABEL_15;
    }
  }

  v16 = objc_autoreleasePoolPush();
  v17 = WeakRetained;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a1 + 56)];
    *buf = 138543874;
    v52 = v19;
    v53 = 2112;
    v54 = v20;
    v55 = 2112;
    v56 = v15;
    _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to generate broadcast key with type: %@. Error: %@", buf, 0x20u);
  }

LABEL_13:
  v32 = 0;
LABEL_14:

  objc_autoreleasePoolPop(v16);
LABEL_15:
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __80___HAPAccessoryServerBTLE200__generateBroadcastKey_queue_withCompletionHandler___block_invoke_865;
  v44[3] = &unk_2786D5C98;
  v33 = *(a1 + 32);
  v34 = *(a1 + 40);
  v45 = v10;
  v46 = v11;
  v49 = a4;
  v50 = v32;
  v47 = v15;
  v48 = v34;
  v35 = v15;
  v36 = v11;
  v37 = v10;
  dispatch_async(v33, v44);

  v38 = *MEMORY[0x277D85DE8];
}

void __79___HAPAccessoryServerBTLE200_generateBroadcastKey_queue_withCompletionHandler___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _getProtocolInfoService];
  if (([v2 serviceProperties] & 4) != 0)
  {
    v5 = *(a1 + 56) == 2;
    v6 = [*(a1 + 32) accessoryCache];
    v7 = [v6 peripheralInfo];
    v4 = [v7 broadcastKey];

    v8 = [*(a1 + 32) accessoryCache];
    v9 = [v8 peripheralInfo];
    v10 = [v9 keyUpdatedStateNumber];

    v11 = [*(a1 + 32) accessoryCache];
    v12 = [v11 peripheralInfo];
    [v12 keyUpdatedTime];
    v14 = v13;

    Current = CFAbsoluteTimeGetCurrent();
    v16 = 0;
    v17 = Current - v14;
    if (!*(a1 + 56) && v14 > 0.0 && v17 <= 604800.0)
    {
      if ([*(a1 + 32) connectReason] == 3)
      {
        v16 = 0;
      }

      else
      {
        v5 = v4 == 0;
        v18 = objc_autoreleasePoolPush();
        v19 = *(a1 + 32);
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "length")}];
          *buf = 138544130;
          v39 = v21;
          v40 = 2112;
          v41 = v22;
          v42 = 2112;
          v43 = v10;
          v44 = 2048;
          v45 = v17;
          _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_ERROR, "%{public}@Rate limiting BC key generation. BC Key Info: %@ / %@ / %.2fs", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v18);
        v16 = 1;
      }
    }

    if (*(a1 + 56) == 1 && v14 > 0.0 && v17 <= 86400.0)
    {
      v5 = v4 == 0;
      v23 = objc_autoreleasePoolPush();
      v24 = *(a1 + 32);
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "length")}];
        *buf = 138544130;
        v39 = v26;
        v40 = 2112;
        v41 = v27;
        v42 = 2112;
        v43 = v10;
        v44 = 2048;
        v45 = v17;
        _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_ERROR, "%{public}@Rate limiting BC key refresh. BC Key Info: %@ / %@ / %.2fs", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v23);
      v16 = 1;
    }

    if (!v16 || v5)
    {
      if (v5)
      {
        v29 = 2;
      }

      else
      {
        v29 = *(a1 + 56);
      }

      [*(a1 + 32) _generateBroadcastKey:v29 queue:*(a1 + 40) withCompletionHandler:*(a1 + 48)];
    }

    else
    {
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __79___HAPAccessoryServerBTLE200_generateBroadcastKey_queue_withCompletionHandler___block_invoke_855;
      v31[3] = &unk_2786D4400;
      v28 = *(a1 + 40);
      v34 = *(a1 + 48);
      v32 = v4;
      v33 = v10;
      v35 = v14;
      dispatch_async(v28, v31);
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79___HAPAccessoryServerBTLE200_generateBroadcastKey_queue_withCompletionHandler___block_invoke_2;
    block[3] = &unk_2786D6490;
    v3 = *(a1 + 40);
    v37 = *(a1 + 48);
    dispatch_async(v3, block);
    v4 = v37;
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __79___HAPAccessoryServerBTLE200_generateBroadcastKey_queue_withCompletionHandler___block_invoke_855(uint64_t a1)
{
  v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:28 description:@"Not generating BC Keys" reason:@"Key generated in recent past" suggestion:@"Report the faulty accessory" underlyingError:0];
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  (*(*(a1 + 48) + 16))(*(a1 + 56));
}

void __77___HAPAccessoryServerBTLE200_handleDisconnectionWithError_completionHandler___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(a1 + 56);
    *buf = 138543874;
    v42 = v6;
    v43 = 2112;
    v44 = v2;
    v45 = 2048;
    v46 = v7;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@The connection disconnected with error = %@ duration = %.3f seconds", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  if ([*(a1 + 40) connectionState] == 1 && !v2)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v11;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@Received a disconnection while a connection was in progress", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2 description:@"Connection failed." reason:@"Connection was cancelled." suggestion:0 underlyingError:0];
  }

  [*(a1 + 40) setConnectionState:0];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __77___HAPAccessoryServerBTLE200_handleDisconnectionWithError_completionHandler___block_invoke_843;
  v39[3] = &unk_2786D7050;
  v36 = *(a1 + 32);
  v12 = v36.i64[0];
  v40 = vextq_s8(v36, v36, 8uLL);
  __77___HAPAccessoryServerBTLE200_handleDisconnectionWithError_completionHandler___block_invoke_843(v39);
  [*(a1 + 40) _notifyDelegatesOfConnectionState:0 withError:v2];
  v13 = [*(a1 + 40) connectionCompletionHandler];
  v14 = MEMORY[0x231885210]();
  v15 = v14;
  if (v14)
  {
    (*(v14 + 16))(v14, v2);
  }

  [*(a1 + 40) setConnectionCompletionHandler:0];
  v16 = [*(a1 + 40) discoveryContext];

  v17 = *(a1 + 40);
  if (v16)
  {
    if (([v17 _cancelDiscoveryWithError:v2] & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ([v17 isPaired] & 1) != 0 || (objc_msgSend(*(a1 + 40), "isPairing"))
  {
    v18 = [*(a1 + 40) operationsReceivedDuringConnectionStateChange];
    v19 = [v18 count];

    if (!v19)
    {
LABEL_19:
      [*(a1 + 40) _resetWithError:v2];
      v28 = 1;
      goto LABEL_24;
    }

    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 40);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = MEMORY[0x277CCABB0];
      v25 = [*(a1 + 40) operationsReceivedDuringConnectionStateChange];
      v26 = [v24 numberWithUnsignedInteger:{objc_msgSend(v25, "count")}];
      *buf = 138543618;
      v42 = v23;
      v43 = 2112;
      v44 = v26;
      _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_INFO, "%{public}@Rediscovering the accessory with %@ pending operations mid connection state change", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    objc_initWeak(buf, *(a1 + 40));
    v27 = *(a1 + 40);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __77___HAPAccessoryServerBTLE200_handleDisconnectionWithError_completionHandler___block_invoke_848;
    v37[3] = &unk_2786D6D90;
    objc_copyWeak(&v38, buf);
    [v27 _discoverWithType:0 completionHandler:v37];
    objc_destroyWeak(&v38);
    objc_destroyWeak(buf);
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = *(a1 + 40);
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v32;
      _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_DEBUG, "%{public}@The accessory is unpaired and no pairing operation is in progress, not removing server on disconnection", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    [*(a1 + 40) _resetWithError:v2];
  }

  v28 = 0;
LABEL_24:
  v33 = MEMORY[0x231885210](*(a1 + 48));
  v34 = v33;
  if (v33)
  {
    (*(v33 + 16))(v33, v28);
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __77___HAPAccessoryServerBTLE200_handleDisconnectionWithError_completionHandler___block_invoke_843(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v3;
  }
}

void __77___HAPAccessoryServerBTLE200_handleDisconnectionWithError_completionHandler___block_invoke_848(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invokeOperationsReceivedDuringConnectionStateChangeWithError:v3];
}

void __50___HAPAccessoryServerBTLE200_isReadyForOperation___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) connectionState])
  {
    goto LABEL_10;
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  if ([*(a1 + 32) connectionState] == 3)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory is in disconnecting state. Pending an operation block", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = [*(a1 + 32) operationsReceivedDuringConnectionStateChange];
    [v6 addObject:&__block_literal_global_836];

    goto LABEL_10;
  }

  if (!*(a1 + 48))
  {
LABEL_10:
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  v7 = *(a1 + 32);
  v8 = *MEMORY[0x277D85DE8];

  [v7 _kickConnectionIdleTimer];
}

void __71___HAPAccessoryServerBTLE200_handleConnectionWithPeripheral_withError___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (HAPIsHH2Enabled_onceToken != -1)
  {
    dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
  }

  if (HAPIsHH2Enabled_hh2Enabled == 1 && !*(a1 + 32) && [*(a1 + 40) connectionState] == 2)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 48);
      v15 = 138543618;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      v7 = "%{public}@Received a connection completion while already connected. Ignoring %@";
LABEL_15:
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_ERROR, v7, &v15, 0x16u);

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (!*(a1 + 32) && [*(a1 + 48) state] != 2)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v13 = *(a1 + 48);
      v15 = 138543618;
      v16 = v5;
      v17 = 2112;
      v18 = v13;
      v7 = "%{public}@Received a connection with invalid connection state. Ignoring %@";
      goto LABEL_15;
    }

LABEL_16:

    objc_autoreleasePoolPop(v2);
    v14 = *MEMORY[0x277D85DE8];
    return;
  }

  v8 = [*(a1 + 40) peripheral];
  [v8 setDelegate:0];

  [*(a1 + 40) updatePeripheral:*(a1 + 48)];
  v9 = [*(a1 + 40) peripheral];
  [v9 setDelegate:*(a1 + 40)];

  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *MEMORY[0x277D85DE8];

  [v10 _handleConnectionWithError:v11];
}

void __82___HAPAccessoryServerBTLE200__disconnectWithDisconnectionError_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v3;
  }
}

void __57___HAPAccessoryServerBTLE200__cancelConnectionWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v3;
  }
}

void __59___HAPAccessoryServerBTLE200_connectWithCompletionHandler___block_invoke(id *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] connectionState];
  v3 = [MEMORY[0x277CBEAA8] date];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __59___HAPAccessoryServerBTLE200_connectWithCompletionHandler___block_invoke_2;
  v24 = &unk_2786D3F08;
  objc_copyWeak(v27, a1 + 6);
  v27[1] = v2;
  v4 = v3;
  v25 = v4;
  v26 = a1[5];
  v5 = MEMORY[0x231885210](&v21);
  if (v2)
  {
    if ((v2 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = a1[4];
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        v10 = [MEMORY[0x277CCABB0] numberWithInteger:{v2, v21, v22, v23, v24, v25}];
        *buf = 138543618;
        v29 = v9;
        v30 = 2112;
        v31 = v10;
        _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Trying to connect but a connection is already in progress (%@)", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      v11 = [MEMORY[0x277CCA9B8] hapErrorWithCode:4];
    }

    else
    {
      v11 = 0;
    }

    (v5)[2](v5, v11);
  }

  else
  {
    [a1[4] setConnectionCompletionHandler:{v5, v21, v22, v23, v24, v25}];
    v12 = objc_autoreleasePoolPush();
    v13 = a1[4];
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [a1[4] blePeripheral];
      v17 = [v16 shortDescription];
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(a1[4], "connectReason")}];
      *buf = 138543874;
      v29 = v15;
      v30 = 2112;
      v31 = v17;
      v32 = 2112;
      v33 = v18;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_INFO, "%{public}@Connecting to the peripheral: %@. Connection Reason: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v19 = [a1[4] browser];
    [v19 connectToBTLEAccessoryServer:a1[4]];

    [a1[4] _restartConnectionIdleTimer:15.0];
    [a1[4] setConnectionState:1];
  }

  objc_destroyWeak(v27);
  v20 = *MEMORY[0x277D85DE8];
}

void __59___HAPAccessoryServerBTLE200_connectWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*(a1 + 56) != 2)
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    [v5 timeIntervalSinceDate:*(a1 + 32)];
    v7 = v6;

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __59___HAPAccessoryServerBTLE200_connectWithCompletionHandler___block_invoke_3;
    v10[3] = &unk_2786D4978;
    v10[4] = WeakRetained;
    v12 = v7;
    v11 = v3;
    __59___HAPAccessoryServerBTLE200_connectWithCompletionHandler___block_invoke_3(v10);
  }

  v8 = MEMORY[0x231885210](*(a1 + 40));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }
}

void __59___HAPAccessoryServerBTLE200_connectWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v4 = v2;
    v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v4;
  }
}

void __70___HAPAccessoryServerBTLE200__handleSecuritySessionSetupExchangeData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [v5 value];
  if (v6)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = WeakRetained;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v12;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to send security session exchange data with error: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = v6;
LABEL_10:
    v14 = v13;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = WeakRetained;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v18;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%{public}@The security session exchange response value, %@, is invalid", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v13 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Security session setup exchange failed." reason:@"Invalid Pair Verify exchange response." suggestion:0 underlyingError:0];
    goto LABEL_10;
  }

  v14 = 0;
LABEL_11:
  v19 = [WeakRetained securitySession];
  [v19 receivedSetupExchangeData:v8 error:v14];

  [*(a1 + 32) setValue:0];
  v20 = *MEMORY[0x277D85DE8];
}

void __72___HAPAccessoryServerBTLE200_evaluateConnectionStateForOperation_block___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) connectionState] == 3 || (objc_msgSend(*(a1 + 32), "operationsReceivedDuringConnectionStateChange"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "count"), v2, v3))
  {
    v4 = [*(a1 + 32) operationsReceivedDuringConnectionStateChange];
    v5 = MEMORY[0x231885210](*(a1 + 40));
    [v4 addObject:v5];

    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "connectionState")}];
      v12 = MEMORY[0x277CCABB0];
      v13 = [*(a1 + 32) operationsReceivedDuringConnectionStateChange];
      v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
      *buf = 138544130;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Adding block for operation: %@ due to connection state: %@. Count: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v6);
    v15 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v16 = MEMORY[0x231885210](*(a1 + 40));
    if (v16)
    {
      v18 = v16;
      v16[2]();
      v16 = v18;
    }

    v17 = *MEMORY[0x277D85DE8];
  }
}

void __78___HAPAccessoryServerBTLE200__sendProtocolInfoServiceExchangeData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v11;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to send Protocol Exchange error: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if ([v5 statusCode])
    {
      v12 = objc_autoreleasePoolPush();
      v13 = WeakRetained;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v15;
        v22 = 1024;
        LODWORD(v23) = [v5 statusCode];
        _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Protocol Exchange failed with status: %d", &v20, 0x12u);
      }

      objc_autoreleasePoolPop(v12);
      v16 = *(a1 + 32);
      v17 = [MEMORY[0x277CCA9B8] hapErrorWithCode:8 marker:2108];
      (*(v16 + 16))(v16, v17, 0);
    }

    else
    {
      v18 = *(a1 + 32);
      v17 = [v5 body];
      (*(v18 + 16))(v18, 0, v17);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __67___HAPAccessoryServerBTLE200__reallySendRequest_completionHandler___block_invoke(id *a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = a1[5];
    *buf = 138543618;
    v37 = v5;
    v38 = 2112;
    v39 = v6;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Sending request: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = objc_autoreleasePoolPush();
  v8 = a1[4];
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [a1[5] characteristic];
    v12 = [v11 type];
    v13 = [a1[5] characteristic];
    v14 = [v13 instanceID];
    v15 = [a1[5] serialize];
    *buf = 138544130;
    v37 = v10;
    v38 = 2112;
    v39 = v12;
    v40 = 2112;
    v41 = v14;
    v42 = 2112;
    v43 = v15;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Serialized Request '%@/%@' -> %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  v16 = [a1[4] _maximumControlWriteLengthForRequest:a1[5]];
  if (v16)
  {
    v17 = v16;
    v18 = [HAPBTLETransactionIdentifier alloc];
    v19 = [a1[5] identifier];
    v20 = -[HAPBTLETransactionIdentifier initWithUnsignedCharValue:](v18, "initWithUnsignedCharValue:", [v19 unsignedCharValue]);

    v21 = [HAPBTLEControlOutputStream alloc];
    v22 = [a1[5] serialize];
    v23 = [(HAPBTLEControlOutputStream *)v21 initWithControlType:0 transactionIdentifier:v20 controlPayload:v22 mtuLength:v17 timeoutInterval:4.0];

    [(HAPBTLEControlOutputStream *)v23 setDelegate:a1[4]];
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __67___HAPAccessoryServerBTLE200__reallySendRequest_completionHandler___block_invoke_779;
    v33 = &unk_2786D6790;
    v34 = a1[4];
    v35 = a1[6];
    [(HAPBTLEControlOutputStream *)v23 setCompletionHandler:&v30];
    [a1[4] _suspendConnectionIdleTimer];
    [a1[5] setControlOutputStream:v23];
    v24 = [a1[4] pendingRequests];
    [v24 addObject:a1[5]];

    [(HAPBTLEControlOutputStream *)v23 open];
LABEL_11:

    goto LABEL_12;
  }

  v25 = objc_autoreleasePoolPush();
  v26 = a1[4];
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v28;
    _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine the control write length", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v25);
  if (a1[6])
  {
    v20 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1 description:@"Control write failed." reason:@"Failed to determine the control write length" suggestion:0 underlyingError:0];
    (*(a1[6] + 2))();
    goto LABEL_11;
  }

LABEL_12:
  v29 = *MEMORY[0x277D85DE8];
}

void __67___HAPAccessoryServerBTLE200__reallySendRequest_completionHandler___block_invoke_779(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67___HAPAccessoryServerBTLE200__reallySendRequest_completionHandler___block_invoke_2;
  v7[3] = &unk_2786D65D8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __76___HAPAccessoryServerBTLE200__sendRequest_shouldPrioritize_responseHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __76___HAPAccessoryServerBTLE200__sendRequest_shouldPrioritize_responseHandler___block_invoke_2;
    v6[3] = &unk_2786D42B8;
    objc_copyWeak(&v9, (a1 + 56));
    v7 = v3;
    v8 = *(a1 + 40);
    [v4 _reallySendRequest:v5 completionHandler:v6];

    objc_destroyWeak(&v9);
  }
}

void __76___HAPAccessoryServerBTLE200__sendRequest_shouldPrioritize_responseHandler___block_invoke_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = objc_loadWeakRetained(a1 + 7);
  v4 = [WeakRetained clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76___HAPAccessoryServerBTLE200__sendRequest_shouldPrioritize_responseHandler___block_invoke_4;
  v7[3] = &unk_2786D4330;
  v7[4] = WeakRetained;
  v8 = a1[4];
  v5 = a1[5];
  v9 = v3;
  v10 = v5;
  v6 = v3;
  objc_copyWeak(&v11, a1 + 6);
  objc_copyWeak(&v12, a1 + 7);
  dispatch_async(v4, v7);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
}

void __76___HAPAccessoryServerBTLE200__sendRequest_shouldPrioritize_responseHandler___block_invoke_4(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a1 + 32;
  v3 = [*(a1 + 32) _pendingResponseForRequest:*(a1 + 40)];
  v4 = [*v2 pendingRequests];
  [v4 removeObject:*(v2 + 8)];

  v5 = [*v2 pendingResponses];
  [v5 removeObject:v3];

  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = [*(a1 + 48) error];
    (*(v6 + 16))(v6, v3, v7);
  }

  if (![*(a1 + 32) _outstandingRequests])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v11;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Resuming connection idle timer as there are no outstanding requests", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 32) _resumeConnectionIdleTimer];
  }

  v12 = [*(a1 + 48) error];
  if (v12 && ([*(a1 + 32) _shouldIgnoreRetryDiscoveryError:v12] & 1) == 0)
  {
    v13 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __76___HAPAccessoryServerBTLE200__sendRequest_shouldPrioritize_responseHandler___block_invoke_770;
    v15[3] = &unk_2786D4308;
    objc_copyWeak(&v16, (a1 + 64));
    objc_copyWeak(&v17, (a1 + 72));
    [v13 _disconnectWithDisconnectionError:0 completionHandler:v15];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v16);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __76___HAPAccessoryServerBTLE200__sendRequest_shouldPrioritize_responseHandler___block_invoke_770(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to disconnect from the accessory, resetting the server", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v9 error];
    [v6 _resetWithError:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __76___HAPAccessoryServerBTLE200__sendRequest_shouldPrioritize_responseHandler___block_invoke_2(id *a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (v7)
  {
    [a1[4] cancelWithError:v7];
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x277D0F920]);
    [a1[5] timeoutInterval];
    v5 = [v4 initWithTimeInterval:1 options:?];
    [v5 setDelegate:WeakRetained];
    v6 = [WeakRetained clientQueue];
    [v5 setDelegateQueue:v6];

    [a1[5] setResponseTimer:v5];
    [WeakRetained _requestResponseForRequest:a1[5]];
  }
}

void __53___HAPAccessoryServerBTLE200_identifyWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!v3)
  {
    v11 = [WeakRetained identifyCharacteristic];
    if (v11)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __53___HAPAccessoryServerBTLE200_identifyWithCompletion___block_invoke_2;
      v21[3] = &unk_2786D4290;
      v12 = &v22;
      v13 = *(a1 + 32);
      v21[4] = v5;
      v22 = v13;
      v14 = MEMORY[0x231885210](v21);
      [v5 _writeValue:MEMORY[0x277CBEC38] toCharacteristic:v11 authorizationData:0 contextData:0 options:0 completionHandler:v14];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v5;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v29 = v18;
        _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%{public}@Identify failed, missing the Identify characteristic", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      if (!*(a1 + 32))
      {
        v11 = 0;
        goto LABEL_13;
      }

      v19 = [v16 clientQueue];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __53___HAPAccessoryServerBTLE200_identifyWithCompletion___block_invoke_765;
      v23[3] = &unk_2786D6490;
      v12 = &v24;
      v24 = *(a1 + 32);
      dispatch_async(v19, v23);
    }

LABEL_13:
    goto LABEL_14;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = v5;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v29 = v9;
    v30 = 2112;
    v31 = v3;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Cancelling operation, identity discovery failed with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if (*(a1 + 32))
  {
    v10 = [v7 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53___HAPAccessoryServerBTLE200_identifyWithCompletion___block_invoke_758;
    block[3] = &unk_2786D65D8;
    v26 = v3;
    v27 = *(a1 + 32);
    dispatch_async(v10, block);

    v11 = v26;
    goto LABEL_13;
  }

LABEL_14:

  v20 = *MEMORY[0x277D85DE8];
}

void __53___HAPAccessoryServerBTLE200_identifyWithCompletion___block_invoke_758(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2 description:@"Identify failed." reason:@"Discovery of the Identify characteristic failed." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __53___HAPAccessoryServerBTLE200_identifyWithCompletion___block_invoke_765(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Identify failed." reason:@"Missing Identify characteristic." suggestion:0 underlyingError:0];
  (*(*(a1 + 32) + 16))();
}

void __53___HAPAccessoryServerBTLE200_identifyWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (*(a1 + 40))
  {
    v5 = [*(a1 + 32) clientQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53___HAPAccessoryServerBTLE200_identifyWithCompletion___block_invoke_3;
    v6[3] = &unk_2786D65D8;
    v8 = *(a1 + 40);
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

void __72___HAPAccessoryServerBTLE200__sendPairingRequestData_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v6)
  {
    v12 = [v5 value];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = WeakRetained;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v19;
        _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@Pairing operation failed, the response value is invalid", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      if (*(a1 + 32))
      {
        v20 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Pairing operation failed." reason:@"Pairing response is invalid." suggestion:0 underlyingError:0];
        (*(*(a1 + 32) + 16))();
      }

      goto LABEL_10;
    }

    v14 = *(a1 + 32);
    if (!v14)
    {
LABEL_10:

      goto LABEL_11;
    }

    v13 = *(v14 + 16);
LABEL_9:
    v13();
    goto LABEL_10;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v11;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to write pairing request data with error: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (*(a1 + 32))
  {
    v12 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Pairing operation failed." reason:@"Pairing write failed." suggestion:0 underlyingError:v6];
    v13 = *(*(a1 + 32) + 16);
    goto LABEL_9;
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
}

void __80___HAPAccessoryServerBTLE200_listPairingsWithCompletionQueue_completionHandler___block_invoke(id *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v2 = [HAPPairingUtilities createListPairingsRequest:&v23];
  v3 = v23;
  if (v2)
  {
    v4 = a1 + 4;
    objc_initWeak(location, a1[4]);
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __80___HAPAccessoryServerBTLE200_listPairingsWithCompletionQueue_completionHandler___block_invoke_2;
    v16 = &unk_2786D4268;
    objc_copyWeak(&v19, location);
    v17 = a1[5];
    v18 = a1[6];
    v5 = MEMORY[0x231885210](&v13);
    [*v4 _sendPairingRequestData:v2 completionHandler:{v5, v13, v14, v15, v16}];

    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v10;
      v25 = 2112;
      v26 = v3;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to create list pairings request payload with error: %@", location, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = a1[5];
    if (v11)
    {
      v12 = a1[6];
      if (v12)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __80___HAPAccessoryServerBTLE200_listPairingsWithCompletionQueue_completionHandler___block_invoke_737;
        block[3] = &unk_2786D65D8;
        v22 = v12;
        v21 = v3;
        dispatch_async(v11, block);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __80___HAPAccessoryServerBTLE200_listPairingsWithCompletionQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v5)
  {
    v26 = 0;
    v8 = [HAPPairingUtilities parseListPairingsResponse:v5 error:&v26];
    v9 = v26;
    if (!v8)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = WeakRetained;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v31 = v13;
        v32 = 2112;
        v33 = v9;
        _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to list pairings, peer responded with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = *(a1 + 40);
      if (v15)
      {
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __80___HAPAccessoryServerBTLE200_listPairingsWithCompletionQueue_completionHandler___block_invoke_745;
        v22[3] = &unk_2786D69E0;
        v25 = v15;
        v23 = v8;
        v24 = v9;
        dispatch_async(v14, v22);
      }
    }

    goto LABEL_10;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = WeakRetained;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v20;
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to get pairings with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v21 = *(a1 + 32);
  if (v21 && *(a1 + 40))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80___HAPAccessoryServerBTLE200_listPairingsWithCompletionQueue_completionHandler___block_invoke_738;
    block[3] = &unk_2786D65D8;
    v28 = v6;
    v29 = *(a1 + 40);
    dispatch_async(v21, block);

    v9 = v28;
LABEL_10:
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __80___HAPAccessoryServerBTLE200_listPairingsWithCompletionQueue_completionHandler___block_invoke_738(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"List pairings failed." reason:@"List pairings write failed." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __106___HAPAccessoryServerBTLE200_removePairingForCurrentControllerOnQueue_completion_serverPairingCompletion___block_invoke_735(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v43 = v8;
    v44 = 2112;
    v45 = v3;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Request to remove current controller completed with error %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = v3;
  v10 = [v6 browser];
  v11 = [v6 identifier];
  [v10 deRegisterAccessoryWithIdentifier:v11];

  v12 = [v6 keyStore];
  v13 = [v6 identifier];
  v41 = 0;
  v14 = [v12 removeAccessoryKeyForName:v13 error:&v41];
  v15 = v41;

  if ((v14 & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v6;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v19;
      v44 = 2112;
      v45 = v15;
      _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Failed to remove the current controller keychain entry with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = [v6 keyStore];
  v21 = [v6 identifier];
  v40 = v15;
  v22 = [v20 deletePeripheralIdentifierForAccessoryIdentifier:v21 error:&v40];
  v23 = v40;

  if ((v22 & 1) == 0)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v6;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [v25 identifier];
      *buf = 138543874;
      v43 = v27;
      v44 = 2112;
      v45 = v28;
      v46 = 2112;
      v47 = v23;
      _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Failed to remove the peripheral keychain entry for %@ with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v24);
  }

  v29 = *(a1 + 32);
  if (v29)
  {
    v30 = *(a1 + 40);
    if (v30)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __106___HAPAccessoryServerBTLE200_removePairingForCurrentControllerOnQueue_completion_serverPairingCompletion___block_invoke_736;
      block[3] = &unk_2786D6490;
      v39 = v30;
      dispatch_async(v29, block);

      v29 = *(a1 + 32);
    }
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __106___HAPAccessoryServerBTLE200_removePairingForCurrentControllerOnQueue_completion_serverPairingCompletion___block_invoke_2;
  v34[3] = &unk_2786D6808;
  v35 = v29;
  v31 = *(a1 + 48);
  v36 = v9;
  v37 = v31;
  v32 = v9;
  [v6 _disconnectWithDisconnectionError:0 completionHandler:v34];

  v33 = *MEMORY[0x277D85DE8];
}

void __106___HAPAccessoryServerBTLE200_removePairingForCurrentControllerOnQueue_completion_serverPairingCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __106___HAPAccessoryServerBTLE200_removePairingForCurrentControllerOnQueue_completion_serverPairingCompletion___block_invoke_3;
      v4[3] = &unk_2786D65D8;
      v6 = v3;
      v5 = *(a1 + 40);
      dispatch_async(v1, v4);
    }
  }
}

void __78___HAPAccessoryServerBTLE200_removePairing_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessoryCache];
  v3 = [v2 peripheralInfo];
  [v3 resetBroadcastKeyConfig];

  v4 = *(a1 + 40);
  v25 = 0;
  v5 = [HAPPairingUtilities createRemovePairingRequestForPairingIdentity:v4 error:&v25];
  v6 = v25;
  if (v5)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __78___HAPAccessoryServerBTLE200_removePairing_completionQueue_completionHandler___block_invoke_2;
    v18 = &unk_2786D5C70;
    v19 = *(a1 + 32);
    v20 = *(a1 + 48);
    v21 = *(a1 + 56);
    v7 = MEMORY[0x231885210](&v15);
    [*(a1 + 32) _sendPairingRequestData:v5 completionHandler:{v7, v15, v16, v17, v18, v19}];

    v8 = v20;
LABEL_3:

    goto LABEL_4;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v13;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to create remove pairing request payload with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = *(a1 + 48);
  if (v14 && *(a1 + 56))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78___HAPAccessoryServerBTLE200_removePairing_completionQueue_completionHandler___block_invoke_719;
    block[3] = &unk_2786D65D8;
    v23 = v6;
    v24 = *(a1 + 56);
    dispatch_async(v14, block);

    v8 = v23;
    goto LABEL_3;
  }

LABEL_4:

  v9 = *MEMORY[0x277D85DE8];
}

void __78___HAPAccessoryServerBTLE200_removePairing_completionQueue_completionHandler___block_invoke_719(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Remove pairing failed." reason:@"Failed to create remove pairing request payload." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __78___HAPAccessoryServerBTLE200_removePairing_completionQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v28 = 0;
    v7 = [HAPPairingUtilities parseRemovePairingResponse:v5 error:&v28];
    v8 = v28;
    if (v7)
    {
      v9 = *(a1 + 40);
      if (!v9)
      {
        goto LABEL_17;
      }

      v10 = *(a1 + 48);
      if (!v10)
      {
        goto LABEL_17;
      }

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __78___HAPAccessoryServerBTLE200_removePairing_completionQueue_completionHandler___block_invoke_2_734;
      v23[3] = &unk_2786D6490;
      v11 = &v24;
      v24 = v10;
      dispatch_async(v9, v23);
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 32);
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v33 = v20;
        v34 = 2112;
        v35 = v8;
        _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove pairing, peer responded with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v21 = *(a1 + 40);
      if (!v21 || !*(a1 + 48))
      {
        goto LABEL_17;
      }

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __78___HAPAccessoryServerBTLE200_removePairing_completionQueue_completionHandler___block_invoke_730;
      v25[3] = &unk_2786D65D8;
      v11 = &v26;
      v26 = v8;
      v27 = *(a1 + 48);
      dispatch_async(v21, v25);
    }

LABEL_17:
    goto LABEL_18;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 32);
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543618;
    v33 = v15;
    v34 = 2112;
    v35 = v6;
    _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove pairing with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = *(a1 + 40);
  if (v16 && *(a1 + 48))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78___HAPAccessoryServerBTLE200_removePairing_completionQueue_completionHandler___block_invoke_726;
    block[3] = &unk_2786D65D8;
    v30 = v6;
    v31 = *(a1 + 48);
    dispatch_async(v16, block);

    v8 = v30;
    goto LABEL_17;
  }

LABEL_18:

  v22 = *MEMORY[0x277D85DE8];
}

void __78___HAPAccessoryServerBTLE200_removePairing_completionQueue_completionHandler___block_invoke_726(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Remove pairing failed." reason:@"Remove pairing write failed." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __78___HAPAccessoryServerBTLE200_removePairing_completionQueue_completionHandler___block_invoke_730(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Remove pairing failed." reason:@"The peer failed to remove the pairing." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __75___HAPAccessoryServerBTLE200_addPairing_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v24 = 0;
  v3 = [HAPPairingUtilities createAddPairingRequestForPairingIdentity:v2 error:&v24];
  v4 = v24;
  if (v3)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __75___HAPAccessoryServerBTLE200_addPairing_completionQueue_completionHandler___block_invoke_2;
    v17 = &unk_2786D5C70;
    v5 = *(a1 + 48);
    v18 = *(a1 + 40);
    v19 = v5;
    v20 = *(a1 + 56);
    v6 = MEMORY[0x231885210](&v14);
    [*(a1 + 40) _sendPairingRequestData:v3 completionHandler:{v6, v14, v15, v16, v17, v18}];

    v7 = v19;
LABEL_3:

    goto LABEL_4;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 40);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v12;
    v27 = 2112;
    v28 = v4;
    _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to create add pairing request payload with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *(a1 + 48);
  if (v13 && *(a1 + 56))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75___HAPAccessoryServerBTLE200_addPairing_completionQueue_completionHandler___block_invoke_702;
    block[3] = &unk_2786D65D8;
    v22 = v4;
    v23 = *(a1 + 56);
    dispatch_async(v13, block);

    v7 = v22;
    goto LABEL_3;
  }

LABEL_4:

  v8 = *MEMORY[0x277D85DE8];
}

void __75___HAPAccessoryServerBTLE200_addPairing_completionQueue_completionHandler___block_invoke_702(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Add pairing failed." reason:@"Failed to create add pairing request payload." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __75___HAPAccessoryServerBTLE200_addPairing_completionQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v28 = 0;
    v7 = [HAPPairingUtilities parseAddPairingResponse:v5 error:&v28];
    v8 = v28;
    if (v7)
    {
      v9 = *(a1 + 40);
      if (!v9)
      {
        goto LABEL_17;
      }

      v10 = *(a1 + 48);
      if (!v10)
      {
        goto LABEL_17;
      }

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __75___HAPAccessoryServerBTLE200_addPairing_completionQueue_completionHandler___block_invoke_2_717;
      v23[3] = &unk_2786D6490;
      v11 = &v24;
      v24 = v10;
      dispatch_async(v9, v23);
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 32);
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v33 = v20;
        v34 = 2112;
        v35 = v8;
        _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to add pairing, peer responded with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v21 = *(a1 + 40);
      if (!v21 || !*(a1 + 48))
      {
        goto LABEL_17;
      }

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __75___HAPAccessoryServerBTLE200_addPairing_completionQueue_completionHandler___block_invoke_713;
      v25[3] = &unk_2786D65D8;
      v11 = &v26;
      v26 = v8;
      v27 = *(a1 + 48);
      dispatch_async(v21, v25);
    }

LABEL_17:
    goto LABEL_18;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 32);
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543618;
    v33 = v15;
    v34 = 2112;
    v35 = v6;
    _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to add pairing with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = *(a1 + 40);
  if (v16 && *(a1 + 48))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75___HAPAccessoryServerBTLE200_addPairing_completionQueue_completionHandler___block_invoke_709;
    block[3] = &unk_2786D65D8;
    v30 = v6;
    v31 = *(a1 + 48);
    dispatch_async(v16, block);

    v8 = v30;
    goto LABEL_17;
  }

LABEL_18:

  v22 = *MEMORY[0x277D85DE8];
}

void __75___HAPAccessoryServerBTLE200_addPairing_completionQueue_completionHandler___block_invoke_709(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Add pairing failed." reason:@"Add pairing write failed." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __75___HAPAccessoryServerBTLE200_addPairing_completionQueue_completionHandler___block_invoke_713(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Add pairing failed." reason:@"The peer failed to add the pairing." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __57___HAPAccessoryServerBTLE200__pairingCompletedWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEAA8] date];
  [v4 timeIntervalSinceDate:*(a1 + 32)];
  v6 = v5;

  v7 = v3;
  v8 = [v7 userInfo];
  v9 = *MEMORY[0x277CCA7E8];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  v11 = v7;
  if (v10)
  {
    v12 = [v7 userInfo];
    v11 = [v12 objectForKeyedSubscript:v9];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57___HAPAccessoryServerBTLE200__pairingCompletedWithError___block_invoke_2;
  v16[3] = &unk_2786D4978;
  v16[4] = *(a1 + 40);
  v18 = v6;
  v13 = v11;
  v17 = v13;
  __57___HAPAccessoryServerBTLE200__pairingCompletedWithError___block_invoke_2(v16);
  v14 = *(a1 + 40);
  if (v7)
  {
    v15 = [v14 authSession];
    [v14 authSession:v15 authComplete:v7];
  }

  else
  {
    [v14 authenticateAccessory];
  }
}

void __57___HAPAccessoryServerBTLE200__pairingCompletedWithError___block_invoke_3(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [v3 authenticatedProtocolInfo];
  v5 = [v4 modelName];
  [v6 accessoryServer:v3 validateCert:v2 model:v5];
}

void __57___HAPAccessoryServerBTLE200__pairingCompletedWithError___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v4 = v2;
    v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v4;
  }
}

void __84___HAPAccessoryServerBTLE200_tryPairingPassword_onboardingSetupPayloadString_error___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) setupCodeCompletionHandler];
  if (v4)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = 0;
    }

    else
    {
      v3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Invalid setup code." reason:@"The setup code is nil" suggestion:0 underlyingError:0];
      v2 = *(a1 + 40);
    }

    v4[2](v4, v2, v3);
    [*(a1 + 32) setSetupCodeCompletionHandler:0];
  }

  [*(a1 + 32) _resumeConnectionIdleTimer];
}

void __82___HAPAccessoryServerBTLE200__handlePairingSetupCodeRequestWithCompletionHandler___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  [v2 pairSetupBackoffTimeInterval];
  [v4 accessoryServer:v2 didReceiveBadPasswordThrottleAttemptsWithDelay:v3];
}

void __82___HAPAccessoryServerBTLE200__handlePairingSetupCodeRequestWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) promptUserForPasswordWithType:1];
}

void __66___HAPAccessoryServerBTLE200__handlePairSetupSessionExchangeData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HAPPairingStateFromData(*(a1 + 32));
  v5 = [v3 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if (!v6)
  {
    v6 = v3;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66___HAPAccessoryServerBTLE200__handlePairSetupSessionExchangeData___block_invoke_2;
  v9[3] = &unk_2786D7078;
  v9[4] = *(a1 + 40);
  v10 = v4;
  v11 = v6;
  v7 = v6;
  v8 = v4;
  __66___HAPAccessoryServerBTLE200__handlePairSetupSessionExchangeData___block_invoke_2(v9);
}

void __66___HAPAccessoryServerBTLE200__handlePairSetupSessionExchangeData___block_invoke_680(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 value];
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v11;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to send Pair Setup exchange data with error: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = v6;
LABEL_5:
    (*(*(a1 + 48) + 16))();
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = 0;
    goto LABEL_11;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 32);
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v16;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%{public}@The Pair Setup exchange response value, %@, is invalid", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  v12 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Pairing Failed." reason:@"Invalid Pair Setup exchange response." suggestion:0 underlyingError:0];
  if (v12)
  {
    goto LABEL_5;
  }

LABEL_11:
  v17 = [*(a1 + 32) pairSetupSession];
  [v17 receivedSetupExchangeData:v7 error:v12];

  [*(a1 + 40) setValue:0];
  v18 = *MEMORY[0x277D85DE8];
}

void __66___HAPAccessoryServerBTLE200__handlePairSetupSessionExchangeData___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 48) domain];

    [*(a1 + 48) code];
    v2 = v3;
  }
}

void __51___HAPAccessoryServerBTLE200_stopPairingWithError___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isPairing])
  {
    v12 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2 description:@"Pairing cancelled." reason:0 suggestion:0 underlyingError:0];
    v2 = [*(a1 + 32) pairSetupSession];

    v3 = *(a1 + 32);
    if (v2)
    {
      v4 = [v3 pairSetupSession];
      [v4 stopWithError:v12];
    }

    else
    {
      [v3 _pairingCompletedWithError:v12];
    }
  }

  else if (![*(a1 + 32) pendingRemovePairing])
  {
    if ([*(a1 + 32) isPaired])
    {
      goto LABEL_12;
    }

    v5 = [*(a1 + 32) keyStore];
    v6 = [*(a1 + 32) identifier];
    v7 = [v5 readControllerPairingKeyForAccessory:v6 error:0];

    if (v7)
    {
LABEL_12:
      [*(a1 + 32) setPendingRemovePairing:1];
      v8 = [*(a1 + 32) discoveryContext];
      if (!v8 || (v9 = v8, v10 = [*(a1 + 32) isSecuritySessionOpen], v9, v10))
      {
        v11 = *(a1 + 32);

        [v11 _removePairingOfAccessoryServerCancelledMidPairing];
      }
    }
  }
}

uint64_t __60___HAPAccessoryServerBTLE200_continuePairingAfterAuthPrompt__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60___HAPAccessoryServerBTLE200_continuePairingAfterAuthPrompt__block_invoke_2;
  v3[3] = &unk_2786D6CF0;
  v3[4] = v1;
  return [v1 connectWithCompletionHandler:v3];
}

void __60___HAPAccessoryServerBTLE200_continuePairingAfterAuthPrompt__block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v8;
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed, failed to connect to the accessory with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2 description:@"Failed to connect to accessory." reason:0 suggestion:0 underlyingError:v3];
    [*(a1 + 32) _pairingCompletedWithError:v9];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 32) authMethod];
      if (v11 > 6)
      {
        v12 = @"HAPAuthMethodUnknown";
      }

      else
      {
        v12 = off_2786D2590[v11];
      }

      v13 = v12;
      *buf = 138543618;
      v19 = v10;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Starting the Pair Setup session with authMethods: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setBadPairSetupCode:0];
    v14 = [*(a1 + 32) browser];
    v9 = [v14 pairSetupSession:*(a1 + 32) pairSetupType:objc_msgSend(*(a1 + 32) features:{"_getPairSetupType"), objc_msgSend(*(a1 + 32), "featureFlags")}];

    v15 = [*(a1 + 32) browser];
    [v15 pauseScans];

    [*(a1 + 32) setPairSetupSession:v9];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __60___HAPAccessoryServerBTLE200_continuePairingAfterAuthPrompt__block_invoke_665;
    v17[3] = &unk_2786D6CA0;
    v17[4] = *(a1 + 32);
    __60___HAPAccessoryServerBTLE200_continuePairingAfterAuthPrompt__block_invoke_665(v17);
    [v9 start];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __60___HAPAccessoryServerBTLE200_continuePairingAfterAuthPrompt__block_invoke_665(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 32) _getPairSetupType];
    v2 = v3;
  }
}

void __71___HAPAccessoryServerBTLE200__getPairingFeaturesWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if (!v7)
  {
    v7 = v5;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71___HAPAccessoryServerBTLE200__getPairingFeaturesWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_2786D4978;
  v10[4] = *(a1 + 32);
  v12 = a2;
  v8 = v7;
  v11 = v8;
  __71___HAPAccessoryServerBTLE200__getPairingFeaturesWithCompletionHandler___block_invoke_2(v10);
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }
}

void __71___HAPAccessoryServerBTLE200__getPairingFeaturesWithCompletionHandler___block_invoke_655(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v10;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed, failed to read the Pairing Features characteristic", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1 description:@"Pairing Failed." reason:@"Failed to read the Pairing Features characteristic" suggestion:0 underlyingError:v6];
    v12 = *(*(a1 + 48) + 16);
  }

  else
  {
    v14 = 0;
    *buf = 0;
    [*(a1 + 32) _parsePairingFeaturesCharacteristic:*(a1 + 40) authMethod:buf error:&v14];
    v11 = v14;
    v12 = *(*(a1 + 48) + 16);
  }

  v12();

  v13 = *MEMORY[0x277D85DE8];
}

void __71___HAPAccessoryServerBTLE200__getPairingFeaturesWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v3;
  }
}

void __50___HAPAccessoryServerBTLE200__checkForAuthPrompt___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v8;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed, failed to discover the accessory with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2 description:@"Pairing Failed." reason:@"Failed to discovery the accessory." suggestion:0 underlyingError:v3];
    [*(a1 + 32) _pairingCompletedWithError:v9];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v12 = HMFBooleanToString();
      *buf = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Determining if MFi Pair Setup is supported, consentRequired: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v13 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __50___HAPAccessoryServerBTLE200__checkForAuthPrompt___block_invoke_635;
    v15[3] = &unk_2786D41C8;
    v15[4] = v13;
    v16 = *(a1 + 40);
    [v13 _getPairingFeaturesWithCompletionHandler:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __50___HAPAccessoryServerBTLE200__checkForAuthPrompt___block_invoke_635(uint64_t a1, uint64_t a2, void *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v50 = v9;
      v51 = 2112;
      v52 = v5;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed, failed to get the pairing features with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = MEMORY[0x277CCA9B8];
    v11 = @"Failed to get the pairing features.";
    v12 = 2;
    v13 = v5;
    goto LABEL_5;
  }

  if (a2 != 5 && a2)
  {
    v30 = *(a1 + 32);
    if (a2 != 1 || (*(a1 + 40) & 1) == 0)
    {
      [v30 continuePairingAfterAuthPrompt];
      goto LABEL_6;
    }

    if ([v30 _delegateRespondsToSelector:sel_accessoryServer_requestUserPermission_accessoryInfo_error_])
    {
      v31 = [HAPAccessoryInfo alloc];
      v32 = [*(a1 + 32) name];
      v33 = [*(a1 + 32) category];
      v34 = [(HAPAccessoryInfo *)v31 initWithName:v32 manufacturer:0 modelName:0 category:v33 certificationStatus:0 denylisted:0 ppid:0];

      v35 = [*(a1 + 32) delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __50___HAPAccessoryServerBTLE200__checkForAuthPrompt___block_invoke_646;
      block[3] = &unk_2786D7050;
      block[4] = *(a1 + 32);
      v45 = v34;
      v36 = v34;
      dispatch_async(v35, block);

      v37 = v45;
LABEL_27:

      goto LABEL_6;
    }

    v26 = objc_autoreleasePoolPush();
    v27 = *(a1 + 32);
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v50 = v29;
      goto LABEL_16;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = off_2786D2590[a2];
      *buf = 138543618;
      v50 = v19;
      v51 = 2112;
      v52 = v20;
      _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_INFO, "%{public}@Incompatible auth %@, prompting user", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    if ([*(a1 + 32) _delegateRespondsToSelector:sel_accessoryServer_requestUserPermission_accessoryInfo_error_])
    {
      v21 = [HAPAccessoryInfo alloc];
      v22 = [*(a1 + 32) name];
      v23 = [*(a1 + 32) category];
      v24 = [(HAPAccessoryInfo *)v21 initWithName:v22 manufacturer:0 modelName:0 category:v23 certificationStatus:0 denylisted:0 ppid:0];

      if (a2)
      {
        v25 = 4;
      }

      else
      {
        v38 = objc_autoreleasePoolPush();
        v39 = *(a1 + 32);
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543362;
          v50 = v41;
          _os_log_impl(&dword_22AADC000, v40, OS_LOG_TYPE_INFO, "%{public}@The accessory does not support pair setup auth, prompting for user permission to pair the accessory", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v38);
        v25 = 0;
      }

      v42 = [*(a1 + 32) delegateQueue];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __50___HAPAccessoryServerBTLE200__checkForAuthPrompt___block_invoke_642;
      v46[3] = &unk_2786D4978;
      v43 = *(a1 + 32);
      v47 = v24;
      v48 = v25;
      v46[4] = v43;
      v36 = v24;
      dispatch_async(v42, v46);

      v37 = v47;
      goto LABEL_27;
    }

    v26 = objc_autoreleasePoolPush();
    v27 = *(a1 + 32);
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v50 = v29;
LABEL_16:
      _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed, the pairing requires additional authentication and the delegate does not support additional authentication requests", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v26);
  v10 = MEMORY[0x277CCA9B8];
  v11 = @"The delegate is missing.";
  v12 = 9;
  v13 = 0;
LABEL_5:
  v14 = [v10 hapErrorWithCode:v12 description:@"Pairing Failed." reason:v11 suggestion:0 underlyingError:v13];
  [*(a1 + 32) _pairingCompletedWithError:v14];

LABEL_6:
  v15 = *MEMORY[0x277D85DE8];
}

void __50___HAPAccessoryServerBTLE200__checkForAuthPrompt___block_invoke_642(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) requestUserPermission:*(a1 + 48) accessoryInfo:*(a1 + 40) error:0];
}

void __50___HAPAccessoryServerBTLE200__checkForAuthPrompt___block_invoke_646(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) requestUserPermission:3 accessoryInfo:*(a1 + 40) error:0];
}

void __54___HAPAccessoryServerBTLE200_startPairingWithRequest___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setPairingActivity:*(a1 + 40)];
  [*(a1 + 32) setPairingRequest:*(a1 + 48)];
  if ([*(a1 + 32) isPaired])
  {
    v2 = @"Pairing not supported on paired accessory.";
    v3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:18 description:@"Pairing not supported on paired accessory." reason:0 suggestion:0 underlyingError:0];
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  if ([*(a1 + 32) isPairing])
  {
    v2 = @"An existing pairing session is already in progress.";
    v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:4 description:@"An existing pairing session is already in progress." reason:0 suggestion:0 underlyingError:0];

    v3 = v4;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v9;
      v20 = 2112;
      v21 = v2;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [*(a1 + 32) _notifyDelegatesPairingStopped:v3];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v10;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Starting Pair Setup", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __54___HAPAccessoryServerBTLE200_startPairingWithRequest___block_invoke_624;
    v15 = &unk_2786D7050;
    v16 = *(a1 + 32);
    v17 = *(a1 + 48);
    __54___HAPAccessoryServerBTLE200_startPairingWithRequest___block_invoke_624(&v12);
    [*(a1 + 32) setPairingDisconnectionError:{0, v12, v13, v14, v15, v16}];
    [*(a1 + 32) setPairing:1];
    [*(a1 + 32) _checkForAuthPrompt:{objc_msgSend(*(a1 + 48), "requiresUserConsent")}];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __54___HAPAccessoryServerBTLE200_startPairingWithRequest___block_invoke_624(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v4 = v2;
    [*(a1 + 40) requiresUserConsent];
    v3 = HMFBooleanToString();
    v2 = v4;
  }
}

void __97___HAPAccessoryServerBTLE200__enableBroadcastEvent_interval_forCharacteristic_completionHandler___block_invoke(void **a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v11;
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to configure characteristic with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    _callCharacteristicOperationCompletion(a1[4], a1[5], 3, v6, @"Configure Characteristic request failed.");
  }

  else if ([v5 statusCode])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = WeakRetained;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v15;
      v32 = 1024;
      LODWORD(v33) = [v5 statusCode];
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Configure characteristic failed with status: %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v12);
    v17 = a1[4];
    v16 = a1[5];
    v18 = [MEMORY[0x277CCA9B8] hapErrorWithCode:{HAPErrorCodeFromHAPBLEStatusErrorCode(objc_msgSend(v5, "statusCode"))}];
    _callCharacteristicOperationCompletion(v17, v16, 3, v18, @"Response with failure status code");
  }

  else
  {
    v29 = 0;
    v19 = [objc_opt_class() parseCharacteristicConfigurationResponse:v5 error:&v29];
    v20 = v29;
    if (v19)
    {
      _callCharacteristicOperationCompletion(a1[4], a1[5], 3, 0, 0);
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = WeakRetained;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        v31 = v24;
        v32 = 2112;
        v33 = v20;
        _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse characteristic configuration response with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v26 = a1[4];
      v25 = a1[5];
      v27 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12];
      _callCharacteristicOperationCompletion(v26, v25, 3, v27, @"Configure characteristic response invalid.");
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __84___HAPAccessoryServerBTLE200__configureCharacteristics_queue_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v5 instanceID];
      v12 = [v5 type];
      v15 = 138544130;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Enable event response for characteristic %@/%@ with error: %@", &v15, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
  }

  v13 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v5 error:v6];
  [*(a1 + 40) addObject:v13];
  dispatch_group_leave(*(a1 + 48));

  v14 = *MEMORY[0x277D85DE8];
}

void __84___HAPAccessoryServerBTLE200__configureCharacteristics_queue_withCompletionHandler___block_invoke_607(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@Completed multiple broadcast enable requests", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __84___HAPAccessoryServerBTLE200__configureCharacteristics_queue_withCompletionHandler___block_invoke_608;
      v10[3] = &unk_2786D65D8;
      v12 = v8;
      v11 = *(a1 + 40);
      dispatch_async(v7, v10);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __83___HAPAccessoryServerBTLE200_configureCharacteristics_queue_withCompletionHandler___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __83___HAPAccessoryServerBTLE200_configureCharacteristics_queue_withCompletionHandler___block_invoke_2;
  v5[3] = &unk_2786D6650;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 56);
  [v2 _configureCharacteristics:v3 queue:v4 withCompletionHandler:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __83___HAPAccessoryServerBTLE200_configureCharacteristics_queue_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v21 = a1;
  v22 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [v12 error];

        if (!v13)
        {
          v14 = objc_autoreleasePoolPush();
          v15 = WeakRetained;
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = HMFGetLogIdentifier();
            v18 = [v12 characteristic];
            *buf = 138543618;
            v28 = v17;
            v29 = 2112;
            v30 = v18;
            _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_INFO, "%{public}@Configured characteristic %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v14);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v9);
  }

  v19 = *(v21 + 32);
  if (v19)
  {
    (*(v19 + 16))(v19, v7, v22);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __86___HAPAccessoryServerBTLE200__configureBroadcastKeyGeneration_service_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a1 + 64)];
    *buf = 138543874;
    v44 = v10;
    v45 = 2112;
    v46 = v11;
    v47 = 2112;
    v48 = v6;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Did configure for broadcast key generation type: %@ with error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v6)
  {
    if (*(a1 + 48))
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to configure for broadcast key"];
      v15 = @"Protocol config request failed.";
      v16 = v13;
      v17 = v14;
      v18 = v6;
LABEL_11:
      v25 = [v16 hapErrorWithCode:1 description:v17 reason:v15 suggestion:0 underlyingError:v18];

      (*(*(a1 + 48) + 16))(0.0);
LABEL_20:
    }
  }

  else
  {
    if (![v5 statusCode])
    {
      v41 = 0;
      v42 = 0;
      v40 = 0;
      v26 = [objc_opt_class() parseProtocolConfigurationResponse:v5 key:&v42 stateNumber:&v41 error:&v40];
      v27 = v42;
      v28 = v41;
      v25 = v40;
      if (v26)
      {
        v29 = *(a1 + 48);
        if (v29)
        {
          Current = CFAbsoluteTimeGetCurrent();
          (*(v29 + 16))(v29, v27, v28, 1, 0, Current);
        }
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = WeakRetained;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v34 = v39 = v31;
          *buf = 138543618;
          v44 = v34;
          v45 = 2112;
          v46 = v25;
          _os_log_impl(&dword_22AADC000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse protocol configuration response with error: %@", buf, 0x16u);

          v31 = v39;
        }

        objc_autoreleasePoolPop(v31);
        if (*(a1 + 48))
        {
          v35 = MEMORY[0x277CCA9B8];
          v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to configure service %@.", *(a1 + 40)];
          v37 = [v35 hapErrorWithCode:12 description:v36 reason:@"Protocol config response was invalid." suggestion:0 underlyingError:v25];

          (*(*(a1 + 48) + 16))(0.0);
        }
      }

      goto LABEL_20;
    }

    v19 = objc_autoreleasePoolPush();
    v20 = WeakRetained;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v5 statusCode];
      *buf = 138543618;
      v44 = v22;
      v45 = 1024;
      LODWORD(v46) = v23;
      _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%{public}@Protocol Config failed with status: %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v19);
    if (*(a1 + 48))
    {
      v24 = MEMORY[0x277CCA9B8];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Protocol Config failed"];
      v15 = @"Response with failure status code";
      v16 = v24;
      v17 = v14;
      v18 = 0;
      goto LABEL_11;
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __70___HAPAccessoryServerBTLE200__handleEventIndicationForCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 error];

        if (!v11)
        {
          v12 = [v10 characteristic];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  if ([v4 count] && objc_msgSend(*(a1 + 32), "_delegateRespondsToSelector:", sel_accessoryServer_didUpdateValuesForCharacteristics_stateNumber_broadcast_))
  {
    v13 = [*(a1 + 32) delegateQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __70___HAPAccessoryServerBTLE200__handleEventIndicationForCharacteristic___block_invoke_2;
    v15[3] = &unk_2786D7050;
    v15[4] = *(a1 + 32);
    v16 = v4;
    dispatch_async(v13, v15);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __70___HAPAccessoryServerBTLE200__handleEventIndicationForCharacteristic___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [v3 stateNumber];
  [v5 accessoryServer:v3 didUpdateValuesForCharacteristics:v2 stateNumber:v4 broadcast:0];
}

uint64_t __85___HAPAccessoryServerBTLE200__performEnableEvent_toCharacteristic_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), a2);
  }

  return result;
}

void __89___HAPAccessoryServerBTLE200__enableEvent_forCharacteristic_withCompletionHandler_queue___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v10;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to enable events on characteristic with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    [v5 setEventNotificationsEnabled:*(a1 + 56)];
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = *(a1 + 40);
    if (v12)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __89___HAPAccessoryServerBTLE200__enableEvent_forCharacteristic_withCompletionHandler_queue___block_invoke_570;
      block[3] = &unk_2786D69E0;
      v17 = v11;
      v15 = v5;
      v16 = v6;
      dispatch_async(v12, block);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __91___HAPAccessoryServerBTLE200__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_549(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [v5 setEventNotificationsEnabled:(*(a1 + 48) & 1) == 0];
  }

  v7 = [v5 service];
  v8 = [v7 accessory];

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 instanceID];
    v14 = [v5 instanceID];
    [v5 type];
    v19 = v9;
    v16 = v15 = v8;
    *buf = 138544386;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    v24 = 2112;
    v25 = v14;
    v26 = 2112;
    v27 = v16;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Enable event response for characteristic %@/%@/%@ with error: %@", buf, 0x34u);

    v8 = v15;
    v9 = v19;
  }

  objc_autoreleasePoolPop(v9);
  v17 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v5 error:v6];
  if (v17)
  {
    [*(a1 + 40) addObject:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __91___HAPAccessoryServerBTLE200__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_550(uint64_t a1)
{
  v2 = *(a1 + 48);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __91___HAPAccessoryServerBTLE200__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_2;
  v8[3] = &unk_2786D4128;
  v12 = *(a1 + 72);
  v7 = *(a1 + 32);
  v3 = *(&v7 + 1);
  v13 = *(a1 + 80);
  v11 = *(a1 + 64);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v7 _readCharacteristicValues:v3 queue:v2 completionHandler:v8];
}

void __91___HAPAccessoryServerBTLE200__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v59;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v59 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v58 + 1) + 8 * i);
        v13 = [v12 error];

        if (v13)
        {
          v14 = objc_autoreleasePoolPush();
          v15 = *(a1 + 32);
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v17 = v51 = v6;
            v18 = [v12 characteristic];
            v19 = [v18 shortDescription];
            [v12 error];
            v20 = v50 = v14;
            *buf = 138543874;
            v63 = v17;
            v64 = 2112;
            v65 = v19;
            v66 = 2112;
            v67 = v20;
            _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to read value for characteristic, %@, with error: %@", buf, 0x20u);

            v14 = v50;
            v6 = v51;
          }

          objc_autoreleasePoolPop(v14);
          v21 = [v12 error];

          v6 = v21;
          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v58 objects:v68 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v22 = objc_autoreleasePoolPush();
  v23 = *(a1 + 32);
  v24 = HMFGetOSLogHandle();
  v25 = v24;
  if (v6)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v63 = v26;
      v64 = 2112;
      v65 = v6;
      _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to read characteristic values with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v6);
    v27 = [*(a1 + 32) browser];
    v28 = [*(a1 + 32) identifier];
    [v27 removeRecentlySeenPairedPeripheralWithIdentifier:v28];
  }

  else
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      v41 = [v7 count];
      *buf = 138543618;
      v63 = v40;
      v64 = 2048;
      v65 = v41;
      _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_INFO, "%{public}@Read values for %lu Characteristics supporting Events", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v42 = objc_autoreleasePoolPush();
    v43 = *(a1 + 32);
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = HMFGetLogIdentifier();
      v46 = [*(a1 + 32) identifier];
      *buf = 138543618;
      v63 = v45;
      v64 = 2112;
      v65 = v46;
      _os_log_impl(&dword_22AADC000, v44, OS_LOG_TYPE_INFO, "%{public}@Saving accessory cache with identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v42);
    v47 = [*(a1 + 32) accessoryCache];
    [v47 save];

    if ([*(a1 + 40) count] && objc_msgSend(*(a1 + 32), "_delegateRespondsToSelector:", sel_accessoryServer_didUpdateValuesForCharacteristics_stateNumber_broadcast_))
    {
      v48 = [*(a1 + 32) delegateQueue];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __91___HAPAccessoryServerBTLE200__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_553;
      v56[3] = &unk_2786D7050;
      v49 = *(a1 + 40);
      v56[4] = *(a1 + 32);
      v57 = v49;
      dispatch_async(v48, v56);
    }
  }

  v29 = objc_autoreleasePoolPush();
  v30 = *(a1 + 32);
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = HMFGetLogIdentifier();
    v33 = v32;
    v34 = @"disable";
    if (*(a1 + 80))
    {
      v34 = @"enable";
    }

    *buf = 138543618;
    v63 = v32;
    v64 = 2112;
    v65 = v34;
    _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_INFO, "%{public}@Completed multiple %@ event requests", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v29);
  v35 = *(a1 + 64);
  if (v35)
  {
    v36 = *(a1 + 48);
    if (v36)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __91___HAPAccessoryServerBTLE200__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_554;
      block[3] = &unk_2786D61A0;
      v54 = v35;
      v37 = *(a1 + 56);
      v38 = *(a1 + 72);
      v53 = v37;
      v55 = v38;
      dispatch_async(v36, block);
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

uint64_t __91___HAPAccessoryServerBTLE200__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_553(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [v3 stateNumber];
  [v2 accessoryServer:v3 didUpdateValuesForCharacteristics:v4 stateNumber:v5 broadcast:0];

  v6 = *(a1 + 32);

  return [v6 setStateChanged:0];
}

void __105___HAPAccessoryServerBTLE200__performTimedWriteExecuteForCharacteristic_value_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v11;
      v43 = 2114;
      v44 = v6;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to execute write to characteristic with error: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = *(a1 + 40);
    v13 = *(a1 + 32);
    [v12 instanceID];

    [v6 domain];
    [v6 code];

    _callCharacteristicOperationCompletion(*(a1 + 40), *(a1 + 56), 2, v6, @"Execute timed write request failed.");
    goto LABEL_24;
  }

  if (![v5 statusCode])
  {
    v21 = *(a1 + 48);
    v22 = v21;
    if ((*(a1 + 72) & 2) != 0)
    {
      v39 = 0;
      v40 = v21;
      v24 = [objc_opt_class() parseWriteResponse:v5 value:&v40 error:&v39];
      v23 = v40;

      v25 = v39;
      v26 = v25;
      if ((v24 & 1) == 0)
      {
        v30 = objc_autoreleasePoolPush();
        v31 = WeakRetained;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543618;
          v42 = v33;
          v43 = 2114;
          v44 = v26;
          _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse characteristic execute response with error: %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v30);
        v34 = *(a1 + 40);
        v35 = *(a1 + 32);
        [v34 instanceID];

        [v26 domain];
        [v26 code];

        _callCharacteristicOperationCompletion(*(a1 + 40), *(a1 + 56), 2, v26, @"Execute timed write response invalid.");
        goto LABEL_23;
      }
    }

    else
    {
      v23 = v21;
    }

    [*(a1 + 40) setValue:v23];
    [*(a1 + 40) instanceID];

    [v5 statusCode];
    v27 = [*(a1 + 40) type];
    if (![v27 isEqualToString:@"0000001E-0000-1000-8000-0026BB765291"])
    {
      v28 = [*(a1 + 40) type];
      if (![v28 isEqualToString:@"00000032-0000-1000-8000-0026BB765291"])
      {
        v29 = [*(a1 + 40) type];
        if (![v29 isEqualToString:@"0000007C-0000-1000-8000-0026BB765291"])
        {
          v37 = [*(a1 + 40) type];
          v38 = [v37 isEqualToString:@"00000067-0000-1000-8000-0026BB765291"];

          if ((v38 & 1) == 0)
          {
            [WeakRetained markNotifyingCharacteristicUpdatedforCharacteristic:*(a1 + 40)];
          }

          goto LABEL_19;
        }
      }
    }

LABEL_19:
    _callCharacteristicOperationCompletion(*(a1 + 40), *(a1 + 56), 2, 0, 0);
LABEL_23:

    goto LABEL_24;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = WeakRetained;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v42 = v17;
    v43 = 1024;
    LODWORD(v44) = [v5 statusCode];
    _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, "%{public}@Received response to prepare with status code: 0x%02x", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v14);
  [*(a1 + 40) instanceID];

  [v5 statusCode];
  v18 = *(a1 + 40);
  v19 = *(a1 + 56);
  v20 = [MEMORY[0x277CCA9B8] hapErrorWithCode:{HAPErrorCodeFromHAPBLEStatusErrorCode(objc_msgSend(v5, "statusCode"))}];
  _callCharacteristicOperationCompletion(v18, v19, 2, v20, @"Execute response returned non-zero status code.");

LABEL_24:
  v36 = *MEMORY[0x277D85DE8];
}

void __138___HAPAccessoryServerBTLE200__performTimedWritePrepareWithValue_toCharacteristic_authorizationData_contextData_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v10;
      v27 = 2114;
      v28 = v6;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to prepare timed write to characteristic with error: %{public}@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = *(a1 + 48);
    v12 = *(a1 + 40);
    [v11 instanceID];

    [v6 domain];
    [v6 code];

    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v15 = @"Prepare timed write request failed.";
    v16 = v6;
    goto LABEL_5;
  }

  if (![v5 statusCode])
  {
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v16 = 0;
    v15 = 0;
LABEL_5:
    _callCharacteristicOperationCompletion(v13, v14, 2, v16, v15);
    goto LABEL_10;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = *(a1 + 32);
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    v25 = 138543618;
    v26 = v20;
    v27 = 1024;
    LODWORD(v28) = [v5 statusCode];
    _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Received response to prepare write with status code: 0x%02x", &v25, 0x12u);
  }

  objc_autoreleasePoolPop(v17);
  [*(a1 + 48) instanceID];

  [v5 statusCode];
  v22 = *(a1 + 48);
  v21 = *(a1 + 56);
  v23 = [MEMORY[0x277CCA9B8] hapErrorWithCode:{HAPErrorCodeFromHAPBLEStatusErrorCode(objc_msgSend(v5, "statusCode"))}];
  _callCharacteristicOperationCompletion(v22, v21, 2, v23, @"Prepare timed write response returned non-zero status code.");

LABEL_10:
  v24 = *MEMORY[0x277D85DE8];
}

void __127___HAPAccessoryServerBTLE200__performTimedWriteValue_toCharacteristic_authorizationData_contextData_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) clientQueue];
  dispatch_assert_queue_V2(v6);

  if (v5)
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      (*(v7 + 16))(v7, *(a1 + 40), v5);
    }
  }

  else
  {
    [*(a1 + 32) _performTimedWriteExecuteForCharacteristic:v10 value:*(a1 + 48) options:*(a1 + 64) completionHandler:*(a1 + 56)];
  }

  v8 = [*(a1 + 32) requestOperationQueue];
  v9 = [v8 isSuspended];

  if (v9)
  {
    [*(a1 + 32) _resumeAllOperations];
  }
}

void __122___HAPAccessoryServerBTLE200__performWriteValue_toCharacteristic_authorizationData_contextData_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!v6)
  {
    v15 = *(a1 + 48);
    v16 = v15;
    if ((*(a1 + 72) & 2) != 0)
    {
      v32 = 0;
      v33 = v15;
      v18 = [objc_opt_class() parseWriteResponse:v5 value:&v33 error:&v32];
      v17 = v33;

      v19 = v32;
      v20 = v19;
      if ((v18 & 1) == 0)
      {
        v25 = objc_autoreleasePoolPush();
        v26 = WeakRetained;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543618;
          v35 = v28;
          v36 = 2114;
          v37 = v20;
          _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse characteristic write response with error: %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
        v29 = *(a1 + 32);
        v30 = *(a1 + 40);
        [v29 instanceID];

        [v20 domain];
        [v20 code];

        _callCharacteristicOperationCompletion(*(a1 + 32), *(a1 + 56), 2, v20, @"Write response failed.");
        goto LABEL_15;
      }
    }

    else
    {
      v17 = v15;
    }

    [*(a1 + 32) setValue:v17];
    [*(a1 + 32) instanceID];

    [v5 statusCode];
    v21 = +[HAPMetadata getSharedInstance];
    v22 = [v21 characteristicTypesChangingTargetState];
    v23 = [*(a1 + 32) type];
    v24 = [v22 containsObject:v23];

    if ((v24 & 1) == 0)
    {
      [WeakRetained markNotifyingCharacteristicUpdatedforCharacteristic:*(a1 + 32)];
    }

    _callCharacteristicOperationCompletion(*(a1 + 32), *(a1 + 56), 2, 0, 0);
LABEL_15:

    goto LABEL_16;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 32) shortDescription];
    *buf = 138543874;
    v35 = v11;
    v36 = 2112;
    v37 = v12;
    v38 = 2114;
    v39 = v6;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to write to characteristic: %@ with error: %{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  [v13 instanceID];

  [v6 domain];
  [v6 code];

  _callCharacteristicOperationCompletion(*(a1 + 32), *(a1 + 56), 2, v6, @"Write request failed.");
LABEL_16:

  v31 = *MEMORY[0x277D85DE8];
}

void __105___HAPAccessoryServerBTLE200_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v1 = a1;
  v78 = *MEMORY[0x277D85DE8];
  if (*(a1 + 72) > 0.0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = v1[4];
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 72);
      *buf = 138543618;
      v68 = v5;
      v69 = 2048;
      v70 = v6;
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Request timeouts are not supported, request may not timeout within %f seconds", buf, 0x16u);

      v1 = a1;
    }

    objc_autoreleasePoolPop(v2);
  }

  v49 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v1[5], "count")}];
  v7 = dispatch_group_create();
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v1[5];
  v50 = [obj countByEnumeratingWithState:&v63 objects:v77 count:16];
  v9 = 0;
  if (v50)
  {
    v47 = *v64;
    *&v8 = 138544386;
    v42 = v8;
    v48 = v7;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v64 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v63 + 1) + 8 * i);
        dispatch_group_enter(v7);
        v12 = [v11 writeType] == 1;
        if ([v11 includeResponseValue])
        {
          v13 = 3;
        }

        else
        {
          v13 = 1;
        }

        v14 = [v11 timedWrite];
        v15 = v13 | 4;
        if (!v14)
        {
          v15 = v13;
        }

        v51 = v15;
        v16 = [v11 characteristic];
        [v16 instanceID];

        v17 = objc_autoreleasePoolPush();
        v18 = v1[4];
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          v21 = [v11 value];
          v22 = [v11 characteristic];
          [v22 shortDescription];
          v45 = v9;
          v24 = v23 = v12;
          [v11 contextData];
          v25 = v46 = v17;
          *buf = v42;
          v68 = v20;
          v69 = 2114;
          v70 = v21;
          v71 = 2114;
          v72 = v24;
          v73 = 2050;
          v74 = v51;
          v75 = 2114;
          v76 = v25;
          _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "%{public}@Writing value '%{public}@' for characteristic %{public}@ with writeOptions: %{public}tu contextData: %{public}@", buf, 0x34u);

          v12 = v23;
          v9 = v45;

          v1 = a1;
          v17 = v46;
        }

        v9 |= v12;

        objc_autoreleasePoolPop(v17);
        v26 = v1[4];
        v27 = [v11 value];
        v28 = [v11 characteristic];
        v29 = [v11 authorizationData];
        v30 = [v11 contextData];
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __105___HAPAccessoryServerBTLE200_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_441;
        v59[3] = &unk_2786D66A0;
        v31 = v49;
        v32 = v1[4];
        v60 = v31;
        v61 = v32;
        v7 = v48;
        v62 = v48;
        [v26 _writeValue:v27 toCharacteristic:v28 authorizationData:v29 contextData:v30 options:v51 completionHandler:v59];
      }

      v50 = [obj countByEnumeratingWithState:&v63 objects:v77 count:16];
    }

    while (v50);
  }

  v33 = [v1[4] clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __105___HAPAccessoryServerBTLE200_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_442;
  block[3] = &unk_2786D4038;
  v34 = v1[6];
  v52 = *(v1 + 2);
  v35 = v52.i64[1];
  v58 = v9 & 1;
  v36 = v1[7];
  v37.i64[0] = v34;
  v37.i64[1] = v36;
  v38 = vzip2q_s64(v52, v37);
  v37.i64[1] = v52.i64[0];
  v54 = v37;
  v55 = v38;
  v39 = v1[8];
  v56 = v49;
  v57 = v39;
  v40 = v49;
  dispatch_group_notify(v7, v33, block);

  v41 = *MEMORY[0x277D85DE8];
}

void __105___HAPAccessoryServerBTLE200_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_441(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v5 error:v6];
  [*(a1 + 32) addObject:v7];
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v7;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Write response: %{public}@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  dispatch_group_leave(*(a1 + 48));

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __105___HAPAccessoryServerBTLE200_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_442(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) begin];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "count")}];
    v7 = *(a1 + 80);
    v8 = HMFBooleanToString();
    *buf = 138543874;
    v20 = v5;
    v21 = 2114;
    v22 = v6;
    v23 = 2114;
    v24 = v8;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Completed %{public}@ write requests. ShouldDisconnect: %{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) markWithReason:@"Calling completion handler"];
  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = *(a1 + 72);
    if (v10)
    {
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __105___HAPAccessoryServerBTLE200_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_443;
      v16 = &unk_2786D65D8;
      v18 = v10;
      v17 = *(a1 + 64);
      dispatch_async(v9, &v13);
    }
  }

  if (*(a1 + 80) == 1)
  {
    [*(a1 + 32) markWithReason:@"Disconnecting"];
    [*(a1 + 40) _suspendConnectionIdleTimer];
    [*(a1 + 40) _handleConnectionIdleTimeout];
  }

  [*(a1 + 32) end];
  result = [*(a1 + 32) invalidate];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void __84___HAPAccessoryServerBTLE200__readValueForCharacteristic_options_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (v6)
  {
    [a1[4] setValue:0];
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v11;
      v32 = 2114;
      v33 = v6;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to read from characteristic with error: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = a1[4];
    v13 = a1[5];
    [v12 instanceID];

    [v6 domain];
    [v6 code];

    _callCharacteristicOperationCompletion(a1[4], a1[6], 1, v6, @"Read request failed.");
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v14 = [objc_opt_class() parseReadResponse:v5 value:&v29 notificationContext:&v28 error:&v27];
    v15 = v29;
    v16 = v28;
    v17 = v27;
    v18 = a1[4];
    if (v14)
    {
      [v18 setValue:v15];
      [a1[4] setNotificationContext:v16];
      [a1[4] instanceID];

      [v5 statusCode];
      [WeakRetained _updatePropertiesFromCharacteristic:a1[4]];
      _callCharacteristicOperationCompletion(a1[4], a1[6], 1, 0, 0);
    }

    else
    {
      v26 = v15;
      [v18 setValue:0];
      [a1[4] setNotificationContext:0];
      v19 = objc_autoreleasePoolPush();
      v20 = WeakRetained;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v31 = v22;
        v32 = 2114;
        v33 = v17;
        _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse characteristic read response with error: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v23 = a1[4];
      v24 = a1[5];
      [v23 instanceID];

      [v17 domain];
      [v17 code];

      _callCharacteristicOperationCompletion(a1[4], a1[6], 1, v17, @"Read response invalid.");
      v15 = v26;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __80___HAPAccessoryServerBTLE200__readCharacteristicValues_queue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v5 instanceID];
      v12 = [v5 type];
      v15 = 138544130;
      v16 = v10;
      v17 = 2114;
      v18 = v11;
      v19 = 2114;
      v20 = v12;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Read response for characteristic %{public}@/%{public}@ with error: %{public}@", &v15, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
  }

  v13 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v5 error:v6];
  [*(a1 + 40) addObject:v13];
  dispatch_group_leave(*(a1 + 48));

  v14 = *MEMORY[0x277D85DE8];
}

void __80___HAPAccessoryServerBTLE200__readCharacteristicValues_queue_completionHandler___block_invoke_393(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v13 = v5;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Completed multiple read requests", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __80___HAPAccessoryServerBTLE200__readCharacteristicValues_queue_completionHandler___block_invoke_394;
      v9[3] = &unk_2786D65D8;
      v11 = v7;
      v10 = *(a1 + 48);
      dispatch_async(v6, v9);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __104___HAPAccessoryServerBTLE200_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = *v2;
  v5 = [v4 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v5)
  {
    v6 = *v30;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        if ([v3 containsObject:v8])
        {
          v17 = objc_autoreleasePoolPush();
          v18 = *(a1 + 40);
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = HMFGetLogIdentifier();
            *buf = 138543618;
            v34 = v20;
            v35 = 2114;
            v36 = v8;
            _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Not sending requests due to duplicate characteristic: %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v17);
          [*(a1 + 48) markWithReason:@"Calling completion handler"];
          if (*(a1 + 64))
          {
            v21 = MEMORY[0x277CCA9B8];
            v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Duplicate characteristic read of %@.", v8];
            v23 = [v21 hapErrorWithCode:11 description:v22 reason:@"Client requested to read characteristic twice." suggestion:0 underlyingError:0];

            (*(*(a1 + 64) + 16))();
          }

          [*(a1 + 48) end];
          [*(a1 + 48) invalidate];

          goto LABEL_19;
        }

        [v3 addObject:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  if (*(a1 + 72) > 0.0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 72);
      *buf = 138543618;
      v34 = v12;
      v35 = 2048;
      v36 = v13;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Request timeouts are not supported, request may not timeout within %f seconds", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  objc_initWeak(buf, *(a1 + 40));
  v14 = *(a1 + 40);
  v15 = *(a1 + 32);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __104___HAPAccessoryServerBTLE200_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_383;
  v25[3] = &unk_2786D3FE8;
  v16 = *(a1 + 56);
  v26 = *(a1 + 48);
  objc_copyWeak(&v28, buf);
  v27 = *(a1 + 64);
  [v14 _readCharacteristicValues:v15 queue:v16 completionHandler:v25];

  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);
LABEL_19:

  v24 = *MEMORY[0x277D85DE8];
}

void __104___HAPAccessoryServerBTLE200_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_383(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) begin];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [v5 hmf_objectsPassingTest:&__block_literal_global_386_7623];
  if ([v8 count])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = WeakRetained;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v12;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Read response: '%{public}@'", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  [*(a1 + 32) markWithReason:@"Calling completion handler"];
  v13 = MEMORY[0x231885210](*(a1 + 40));
  v14 = v13;
  if (v13)
  {
    (*(v13 + 16))(v13, v5, v6);
  }

  [*(a1 + 32) end];
  [*(a1 + 32) invalidate];

  v15 = *MEMORY[0x277D85DE8];
}

BOOL __104___HAPAccessoryServerBTLE200_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 error];
  v3 = v2 == 0;

  return v3;
}

void __64___HAPAccessoryServerBTLE200__handleReadServiceSignature_error___block_invoke(id *a1)
{
  v2 = [a1[4] pairingActivity];
  if (v2)
  {
    v5 = v2;
    v3 = [a1[5] UUID];
    v4 = [v3 UUIDString];

    [a1[6] domain];
    [a1[6] code];
    v2 = v5;
  }
}

void __71___HAPAccessoryServerBTLE200__handleReadCharacteristicSignature_error___block_invoke(id *a1)
{
  v2 = [a1[4] pairingActivity];
  if (v2)
  {
    v5 = v2;
    v3 = [a1[5] UUID];
    v4 = [v3 UUIDString];

    [a1[6] domain];
    [a1[6] code];
    v2 = v5;
  }
}

void __52___HAPAccessoryServerBTLE200__readServiceSignature___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6 && *(a1 + 32))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v10;
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to get signature from service with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) _handleReadServiceSignature:*(a1 + 32) error:v6];
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = objc_opt_class();
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v30 = 0;
    v15 = [v12 parseServiceSignatureResponse:v5 serviceInstanceID:v13 serviceType:v14 error:&v30];
    v16 = v30;
    if (v15 || !*(a1 + 32))
    {
      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 40);
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v15 description];
        *buf = 138543618;
        v32 = v20;
        v33 = 2112;
        v34 = v21;
        _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v22 = [*(a1 + 40) discoveryContext];
      v23 = [v22 serviceSignatures];
      [v23 setObject:v15 forKey:*(a1 + 32)];

      v24 = 0;
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = *(a1 + 40);
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543618;
        v32 = v28;
        v33 = 2112;
        v34 = v16;
        _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse service signature response with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v24 = v16;
    }

    [*(a1 + 40) _handleReadServiceSignature:*(a1 + 32) error:v24];
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __59___HAPAccessoryServerBTLE200__readCharacteristicSignature___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v10;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to get signature from characteristic with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) _handleReadCharacteristicSignature:*(a1 + 40) error:v6];
  }

  else
  {
    v11 = *(a1 + 32);
    v24 = 0;
    v12 = [objc_opt_class() parseSignatureResponse:v5 error:&v24];
    v13 = v24;
    if (v12)
    {
      v14 = [*(a1 + 32) discoveryContext];
      v15 = [v14 characteristicSignatures];
      [v15 setObject:v12 forKey:*(a1 + 40)];

      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v18 = 0;
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 32);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v26 = v22;
        v27 = 2112;
        v28 = v13;
        _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse characteristic signature response with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v18 = v13;
    }

    [v16 _handleReadCharacteristicSignature:v17 error:v18];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __45___HAPAccessoryServerBTLE200__retryDiscovery__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v4 = v2;
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "discoveryRetries")}];
    v2 = v4;
  }
}

void __66___HAPAccessoryServerBTLE200__discoverWithType_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [MEMORY[0x277CBEAA8] date];
  [v5 timeIntervalSinceDate:*(a1 + 32)];
  v7 = v6;

  v8 = [v3 userInfo];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!v11)
  {
    v9 = v3;
  }

  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __66___HAPAccessoryServerBTLE200__discoverWithType_completionHandler___block_invoke_2;
  v20 = &unk_2786D3EE0;
  v12 = *(a1 + 56);
  v21 = WeakRetained;
  v23 = v12;
  v24 = v7;
  v13 = v9;
  v22 = v13;
  __66___HAPAccessoryServerBTLE200__discoverWithType_completionHandler___block_invoke_2(&v17);
  v14 = [WeakRetained discoveryContext];
  [v14 setDiscovering:0];

  v15 = MEMORY[0x231885210](*(a1 + 40));
  v16 = v15;
  if (v15)
  {
    (*(v15 + 16))(v15, v3);
  }

  [WeakRetained incrementHAPBTLEMetricsDiscoveryCount];
}

void __66___HAPAccessoryServerBTLE200__discoverWithType_completionHandler___block_invoke_213(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
      *buf = 138543874;
      v26 = v8;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = v3;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to connect to the accessory during discovery type: %@ with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [*(a1 + 32) completionHandler];
    if (v10)
    {
      v11 = [v6 clientQueue];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __66___HAPAccessoryServerBTLE200__discoverWithType_completionHandler___block_invoke_214;
      v22[3] = &unk_2786D65D8;
      v23 = v3;
      v24 = v10;
      dispatch_async(v11, v22);
    }
  }

  else
  {
    v12 = *(a1 + 48);
    v13 = objc_autoreleasePoolPush();
    v14 = WeakRetained;
    v15 = HMFGetOSLogHandle();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
    if (v12 == 3)
    {
      if (v16)
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v17;
        _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_INFO, "%{public}@Ack-ed accessory notification", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      [v14 _cancelDiscoveryWithError:0];
      [v14 _disconnectWithDisconnectionError:0 completionHandler:0];
    }

    else
    {
      if (v16)
      {
        v18 = HMFGetLogIdentifier();
        v19 = *(a1 + 48);
        v20 = [v14 peripheral];
        *buf = 138543874;
        v26 = v18;
        v27 = 2050;
        v28 = v19;
        v29 = 2114;
        v30 = v20;
        _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_INFO, "%{public}@Starting attribute database discovery type: %{public}tu via %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      [v14 _discoverServices];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __66___HAPAccessoryServerBTLE200__discoverWithType_completionHandler___block_invoke_214(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:8 description:@"Discovery failed." reason:@"Failed to connect." suggestion:0 underlyingError:*(a1 + 32) marker:2107];
  (*(*(a1 + 40) + 16))();
}

void __66___HAPAccessoryServerBTLE200__discoverWithType_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v5 = v2;
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v5;
  }
}

uint64_t __86___HAPAccessoryServerBTLE200__readPendingDiscoveredCharacteristicTypesWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeObject:*(a1 + 40)];
  result = [*(a1 + 32) count];
  if (!result)
  {
    v3 = *(*(a1 + 48) + 16);

    return v3();
  }

  return result;
}

void __76___HAPAccessoryServerBTLE200_discoverAccessoriesAndReadCharacteristicTypes___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  objc_initWeak(&location, *(a1 + 32));
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __76___HAPAccessoryServerBTLE200_discoverAccessoriesAndReadCharacteristicTypes___block_invoke_2;
  v26[3] = &unk_2786D3E90;
  objc_copyWeak(&v27, &location);
  v3 = MEMORY[0x231885210](v26);
  if ([*v2 isPaired])
  {
    if (*(a1 + 40))
    {
      v4 = [*(a1 + 32) discoveredAccessoryCharacteristicsPendingRead];
      [v4 addObjectsFromArray:*(a1 + 40)];
    }

    v5 = [*(a1 + 32) discoveryContext];
    v6 = [v5 isDiscovering];

    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 32);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = MEMORY[0x277CCABB0];
        v12 = [*(a1 + 32) discoveryContext];
        v13 = [v11 numberWithInteger:{objc_msgSend(v12, "discoveryType")}];
        v14 = *(a1 + 40);
        *buf = 138543874;
        v30 = v10;
        v31 = 2112;
        v32 = v13;
        v33 = 2112;
        v34 = v14;
        _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Discovering in progress for type: %@. Pending characteristic types to read: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      v20 = [*(a1 + 32) connectReason];
      v21 = *(a1 + 32);
      if (v20 == 2)
      {
        [*(a1 + 32) setHasBeenDiscovered:1];
        [*(a1 + 32) _discoverWithType:3 completionHandler:0];
      }

      else
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __76___HAPAccessoryServerBTLE200_discoverAccessoriesAndReadCharacteristicTypes___block_invoke_200;
        v23[3] = &unk_2786D3EB8;
        objc_copyWeak(&v25, &location);
        v24 = v3;
        [v21 _discoverWithType:2 completionHandler:v23];

        objc_destroyWeak(&v25);
      }
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v18;
      v31 = 2112;
      v32 = @"Discovery on an unpaired accessory is not allowed";
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Discovery on an unpaired accessory is not allowed" reason:0 suggestion:0 underlyingError:0 marker:215];
    (v3)[2](v3, 0, v19);
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
  v22 = *MEMORY[0x277D85DE8];
}

void __76___HAPAccessoryServerBTLE200_discoverAccessoriesAndReadCharacteristicTypes___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained pendingRemovePairing] == 1)
  {
    [WeakRetained _removePairingOfAccessoryServerCancelledMidPairing];
  }

  else
  {
    [WeakRetained setHasBeenDiscovered:v5 == 0];
    if ([WeakRetained _delegateRespondsToSelector:sel_accessoryServer_didDiscoverAccessories_transaction_error_])
    {
      v7 = [WeakRetained delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __76___HAPAccessoryServerBTLE200_discoverAccessoriesAndReadCharacteristicTypes___block_invoke_3;
      block[3] = &unk_2786D5268;
      v10 = a2;
      block[4] = WeakRetained;
      v9 = v5;
      dispatch_async(v7, block);
    }
  }
}

void __76___HAPAccessoryServerBTLE200_discoverAccessoriesAndReadCharacteristicTypes___block_invoke_200(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v5 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1 description:@"Discovery failed" reason:0 suggestion:0 underlyingError:v3];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __76___HAPAccessoryServerBTLE200_discoverAccessoriesAndReadCharacteristicTypes___block_invoke_2_204;
    v6[3] = &unk_2786D3EB8;
    objc_copyWeak(&v8, (a1 + 40));
    v7 = *(a1 + 32);
    [WeakRetained _discoverWithType:0 completionHandler:v6];

    objc_destroyWeak(&v8);
  }
}

void __76___HAPAccessoryServerBTLE200_discoverAccessoriesAndReadCharacteristicTypes___block_invoke_2_204(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v5 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1 description:@"Discovery failed" reason:0 suggestion:0 underlyingError:v3];
    (*(*(a1 + 32) + 16))(*(a1 + 32), [WeakRetained isIncompatibleUpdate], v5);
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __76___HAPAccessoryServerBTLE200_discoverAccessoriesAndReadCharacteristicTypes___block_invoke_3_205;
    v7[3] = &unk_2786D6BE0;
    objc_copyWeak(&v10, (a1 + 40));
    v6 = *(a1 + 32);
    v8 = 0;
    v9 = v6;
    [WeakRetained _readPendingDiscoveredCharacteristicTypesWithCompletion:v7];

    objc_destroyWeak(&v10);
  }
}

void __76___HAPAccessoryServerBTLE200_discoverAccessoriesAndReadCharacteristicTypes___block_invoke_3_205(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained primaryAccessory];
  [v2 updateForAccessoryInformationService];

  (*(*(a1 + 40) + 16))(*(a1 + 40), [WeakRetained isIncompatibleUpdate], *(a1 + 32));
}

void __76___HAPAccessoryServerBTLE200_discoverAccessoriesAndReadCharacteristicTypes___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) delegate];
    [v2 accessoryServer:*(a1 + 32) didDiscoverAccessories:0 transaction:0 error:*(a1 + 40)];
  }

  v6 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [v3 accessories];
  v5 = [v4 copy];
  [v6 accessoryServer:v3 didDiscoverAccessories:v5 transaction:0 error:*(a1 + 40)];
}

void __80___HAPAccessoryServerBTLE200__removePairingOfAccessoryServerCancelledMidPairing__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed accessory server that its pairing was cancelled post pair-setup with error %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) setPendingRemovePairing:2];
  v8 = [*(a1 + 32) browser];
  v9 = [v8 isPerformingGeneralScan];

  if ((v9 & 1) == 0)
  {
    v10 = [*(a1 + 32) browser];
    [v10 stopDiscoveringAccessoryServers];
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __80___HAPAccessoryServerBTLE200__removePairingOfAccessoryServerCancelledMidPairing__block_invoke_193(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __209___HAPAccessoryServerBTLE200_initWithPeripheral_name_pairingUsername_statusFlags_stateNumber_stateChanged_connectReason_configNumber_category_setupHash_connectionIdleTime_browser_keyStore_whbStableIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained browser];
  v2 = [WeakRetained accessoryCache];
  [v1 saveCacheToDisk:v2];
}

uint64_t __41___HAPAccessoryServerBTLE200_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v334 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end