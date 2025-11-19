@interface HMDRemoteMessageTransport
+ (id)_createModernTransportForProductInfo:(id)a3 preferences:(id)a4;
+ (id)logCategory;
+ (id)remoteMessageFromMessage:(id)a3 secure:(BOOL)a4 accountRegistry:(id)a5;
+ (id)remoteMessageTransportsForProductInfo:(id)a3;
- (BOOL)canSendMessage:(id)a3;
- (BOOL)doesResponse:(id)a3 matchAllCapabilities:(id)a4;
- (HMDHomeMembershipVerifier)homeMembershipVerifier;
- (HMDRemoteMessageTransport)init;
- (HMDRemoteMessageTransport)initWithAccountRegistry:(id)a3;
- (HMDRemoteMessageTransportReachabilityDelegate)reachabilityDelegate;
- (double)defaultTimeout;
- (double)retryInterval;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)matchResponse:(id)a3 requestedCapabilities:(id)a4;
- (id)remoteMessageFromMessage:(id)a3;
- (id)start;
- (int64_t)compareCapability:(id)a3 key:(id)a4 withCapability:(id)a5;
- (unint64_t)numRetries;
- (void)postDidReceiveRemoteMessageWithNoListenerFromDevice:(id)a3;
@end

@implementation HMDRemoteMessageTransport

+ (id)_createModernTransportForProductInfo:(id)a3 preferences:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 productPlatform];
  if (v8 > 5)
  {
    goto LABEL_7;
  }

  if (((1 << v8) & 0x36) == 0)
  {
    if (v8 == 3)
    {
LABEL_10:
      v15 = 0;
      goto LABEL_11;
    }

LABEL_7:
    v16 = objc_autoreleasePoolPush();
    v17 = a1;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Not creating modern message transport because it is not supported on this platform", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    goto LABEL_10;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = a1;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Creating modern message transport", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [HMDModernRemoteMessageTransport alloc];
  v14 = +[HMDAccountRegistry sharedRegistry];
  v15 = [(HMDModernRemoteMessageTransport *)v13 initWithAccountRegistry:v14];

LABEL_11:
  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)remoteMessageTransportsForProductInfo:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v21 = 0;
    goto LABEL_51;
  }

  v5 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = objc_autoreleasePoolPush();
  v8 = a1;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *v63 = 138543362;
    *&v63[4] = v10;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Using legacy transport", v63, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [v4 productPlatform];
  if ((v11 - 1) >= 5)
  {
    if (v11)
    {
      goto LABEL_20;
    }

    v14 = objc_autoreleasePoolPush();
    v15 = v8;
    v16 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v17 = HMFGetLogIdentifier();
    *v63 = 138543362;
    *&v63[4] = v17;
    v18 = "%{public}@Not creating IDS message transport due to unknown platform";
    v19 = v16;
    v20 = OS_LOG_TYPE_ERROR;
    goto LABEL_14;
  }

  v12 = [v5 preferenceForKey:@"disableIDSTransport"];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v8;
    v16 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
LABEL_15:

      objc_autoreleasePoolPop(v14);
      goto LABEL_20;
    }

    v17 = HMFGetLogIdentifier();
    *v63 = 138543362;
    *&v63[4] = v17;
    v18 = "%{public}@Not creating IDS message transport due to preference";
    v19 = v16;
    v20 = OS_LOG_TYPE_INFO;
LABEL_14:
    _os_log_impl(&dword_2531F8000, v19, v20, v18, v63, 0xCu);

    goto LABEL_15;
  }

  v22 = [HMDIDSMessageTransport alloc];
  v23 = +[HMDAccountRegistry sharedRegistry];
  v24 = +[HMDIDSServiceManager sharedIDSServiceName];
  v25 = [(HMDIDSMessageTransport *)v22 initWithAccountRegistry:v23 forServiceName:v24];

  if (v25)
  {
    [v6 addObject:v25];
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = v8;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *v63 = 138543362;
      *&v63[4] = v29;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to create IDS message transport", v63, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
  }

LABEL_20:
  v30 = [v4 productPlatform];
  if (v30 <= 5)
  {
    if (((1 << v30) & 0x36) != 0)
    {
      v31 = [v5 preferenceForKey:@"disableHTTPTransport"];
      v32 = [v31 BOOLValue];

      if ((v32 & 1) == 0)
      {
        v40 = [HMDHTTPMessageTransport alloc];
        v41 = +[HMDAccountRegistry sharedRegistry];
        v42 = [(HMDHTTPMessageTransport *)v40 initWithAccountRegistry:v41];

        if (v42)
        {
          [v6 addObject:v42];
        }

        else
        {
          v43 = objc_autoreleasePoolPush();
          v44 = v8;
          v45 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v46 = HMFGetLogIdentifier();
            *v63 = 138543362;
            *&v63[4] = v46;
            _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_ERROR, "%{public}@Failed to create HTTP message transport", v63, 0xCu);
          }

          objc_autoreleasePoolPop(v43);
        }

        goto LABEL_36;
      }

      v33 = objc_autoreleasePoolPush();
      v34 = v8;
      v35 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        goto LABEL_31;
      }

      v36 = HMFGetLogIdentifier();
      *v63 = 138543362;
      *&v63[4] = v36;
      v37 = "%{public}@Not creating HTTP message transport due to preference";
      v38 = v35;
      v39 = OS_LOG_TYPE_INFO;
      goto LABEL_30;
    }

    if (!v30)
    {
      v33 = objc_autoreleasePoolPush();
      v34 = v8;
      v35 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
LABEL_31:

        objc_autoreleasePoolPop(v33);
        goto LABEL_36;
      }

      v36 = HMFGetLogIdentifier();
      *v63 = 138543362;
      *&v63[4] = v36;
      v37 = "%{public}@Not creating HTTP message transport due to unknown platform";
      v38 = v35;
      v39 = OS_LOG_TYPE_ERROR;
LABEL_30:
      _os_log_impl(&dword_2531F8000, v38, v39, v37, v63, 0xCu);

      goto LABEL_31;
    }
  }

LABEL_36:
  v47 = [v8 _createModernTransportForProductInfo:v4 preferences:{v5, *v63}];
  if (v47)
  {
    [v6 addObject:v47];
  }

  if ([v4 productPlatform] == 3 || objc_msgSend(v4, "productClass") == 1)
  {
    v48 = [v5 preferenceForKey:@"disableIDSProxyTransport"];
    v49 = [v48 BOOLValue];

    if (v49)
    {
      v50 = objc_autoreleasePoolPush();
      v51 = v8;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        v53 = HMFGetLogIdentifier();
        *v63 = 138543362;
        *&v63[4] = v53;
        _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_INFO, "%{public}@Not creating IDS Proxy message transport due to preference", v63, 0xCu);
      }

      objc_autoreleasePoolPop(v50);
    }

    else
    {
      v54 = [HMDIDSProxyMessageTransport alloc];
      v55 = +[HMDAccountRegistry sharedRegistry];
      v56 = [(HMDIDSProxyMessageTransport *)v54 initWithAccountRegistry:v55];

      if (v56)
      {
        [v6 addObject:v56];
      }

      else
      {
        v57 = objc_autoreleasePoolPush();
        v58 = v8;
        v59 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          v60 = HMFGetLogIdentifier();
          *v63 = 138543362;
          *&v63[4] = v60;
          _os_log_impl(&dword_2531F8000, v59, OS_LOG_TYPE_ERROR, "%{public}@Failed to create IDS Proxy message transport", v63, 0xCu);
        }

        objc_autoreleasePoolPop(v57);
      }
    }
  }

  v21 = [v6 copy];
LABEL_51:

  v61 = *MEMORY[0x277D85DE8];

  return v21;
}

- (HMDHomeMembershipVerifier)homeMembershipVerifier
{
  WeakRetained = objc_loadWeakRetained(&self->_homeMembershipVerifier);

  return WeakRetained;
}

- (HMDRemoteMessageTransportReachabilityDelegate)reachabilityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_reachabilityDelegate);

  return WeakRetained;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(HMFObject *)self debugDescription];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D0F0D0]];

  return v4;
}

- (int64_t)compareCapability:(id)a3 key:(id)a4 withCapability:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (([v8 isEqualToString:@"kHomedVersionKey"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"kHomeConfigurationVersionKey") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"kMetadataInfoSchemaVersionKey") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"kMetadataInfoVersionKey")) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v10 = [v7 compare:v9];
  }

  else if ([v8 isEqualToString:*MEMORY[0x277CD0640]] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [v7 isEqualToString:v9] - 1;
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (BOOL)doesResponse:(id)a3 matchAllCapabilities:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v6 objectForKeyedSubscript:{v12, v19}];
        v14 = [v7 objectForKeyedSubscript:v12];
        v15 = [(HMDRemoteMessageTransport *)self compareCapability:v13 key:v12 withCapability:v14];

        if (v15 > 1)
        {
          v16 = 0;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)matchResponse:(id)a3 requestedCapabilities:(id)a4
{
  v81[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v49 = a4;
  v6 = objc_autoreleasePoolPush();
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543874;
    v71 = v8;
    v72 = 2112;
    v73 = v49;
    v74 = 2112;
    v75 = v5;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Select based on capability %@, and responses %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v47 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:0 ascending:0 comparator:&__block_literal_global_312_190785];
  v81[0] = v47;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:1];
  v51 = [v5 sortedArrayUsingDescriptors:v11];

  v12 = objc_autoreleasePoolPush();
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v71 = v14;
    v72 = 2112;
    v73 = v51;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Sorted responses by homed version: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v48 = v5;
  v57 = v9;
  if ([v5 count] >= 2)
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v15 = v49;
    v52 = [v15 countByEnumeratingWithState:&v66 objects:v80 count:16];
    if (v52)
    {
      v50 = *v67;
      do
      {
        v16 = 0;
        do
        {
          if (*v67 != v50)
          {
            objc_enumerationMutation(v15);
          }

          v53 = v16;
          v17 = *(*(&v66 + 1) + 8 * v16);
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          obj = v51;
          v18 = [obj countByEnumeratingWithState:&v62 objects:v79 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v63;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v63 != v20)
                {
                  objc_enumerationMutation(obj);
                }

                v22 = *(*(&v62 + 1) + 8 * i);
                if (([v9 containsObject:v22] & 1) == 0)
                {
                  [v9 addObject:v22];
                  [v10 addObject:&unk_28662A538];
                }

                v23 = [v22 objectForKeyedSubscript:v17];
                v24 = [v15 objectForKeyedSubscript:v17];
                v25 = [(HMDRemoteMessageTransport *)self compareCapability:v23 key:v17 withCapability:v24];

                v9 = v57;
                if ((v25 & 0x8000000000000000) == 0)
                {
                  v26 = [v57 indexOfObject:v22];
                  v27 = MEMORY[0x277CCABB0];
                  v28 = [v10 objectAtIndexedSubscript:v26];
                  v29 = [v27 numberWithInteger:{objc_msgSend(v28, "integerValue") + 1}];
                  [v10 replaceObjectAtIndex:v26 withObject:v29];
                }
              }

              v19 = [obj countByEnumeratingWithState:&v62 objects:v79 count:16];
            }

            while (v19);
          }

          v16 = v53 + 1;
        }

        while (v53 + 1 != v52);
        v52 = [v15 countByEnumeratingWithState:&v66 objects:v80 count:16];
      }

      while (v52);
    }
  }

  if (![v9 count])
  {
    [v9 addObjectsFromArray:v51];
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = v10;
  v30 = [v56 countByEnumeratingWithState:&v58 objects:v78 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = *v59;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v59 != v35)
        {
          objc_enumerationMutation(v56);
        }

        v37 = [*(*(&v58 + 1) + 8 * j) integerValue];
        v38 = [v57 objectAtIndexedSubscript:v32];
        v39 = [v38 objectForKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];

        if (v39)
        {
          v40 = v37;
        }

        else
        {
          v40 = v37 + 1;
        }

        if (v40 > v34)
        {
          v33 = v32;
          v34 = v40;
        }

        ++v32;
      }

      v31 = [v56 countByEnumeratingWithState:&v58 objects:v78 count:16];
    }

    while (v31);
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  v41 = objc_autoreleasePoolPush();
  v42 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    v43 = HMFGetLogIdentifier();
    *buf = 138544130;
    v71 = v43;
    v72 = 2048;
    v73 = v34;
    v74 = 2048;
    v75 = v33;
    v76 = 2112;
    v77 = v57;
    _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Returning Best matched capability (Matched: %ld, Index: %ld) from Filtered list :%@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v41);
  v44 = [v57 objectAtIndexedSubscript:v33];

  v45 = *MEMORY[0x277D85DE8];

  return v44;
}

uint64_t __65__HMDRemoteMessageTransport_matchResponse_requestedCapabilities___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 hmf_stringForKey:@"kHomeKitVersionStringKey"];
  v7 = [v5 hmf_stringForKey:@"kHomeKitVersionStringKey"];
  v8 = v7;
  if (v6 | v7)
  {
    if (v6)
    {
      v9 = [[HMDHomeKitVersion alloc] initWithString:v6];
      if (v8)
      {
LABEL_4:
        v10 = [[HMDHomeKitVersion alloc] initWithString:v8];
        v11 = v10;
        v12 = v9 != 0;
        if (!v9 || !v10)
        {
          goto LABEL_17;
        }

LABEL_9:
        v14 = [v9 compare:v11];
        goto LABEL_22;
      }
    }

    else
    {
      v9 = 0;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    v11 = 0;
    v12 = v9 != 0;
LABEL_17:
    v16 = !v12;
    v17 = 1;
    if (v16)
    {
      v17 = -1;
    }

    if (v9 | v11)
    {
      v14 = v17;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_22;
  }

  v9 = [v4 hmf_numberForKey:@"kHomedVersionKey"];
  v13 = [v5 hmf_numberForKey:@"kHomedVersionKey"];
  v11 = v13;
  if (v9 && v13)
  {
    goto LABEL_9;
  }

  v15 = 1;
  if (!v9)
  {
    v15 = -1;
  }

  if (v9 | v13)
  {
    v14 = v15;
  }

  else
  {
    v14 = 0;
  }

LABEL_22:

  return v14;
}

- (id)remoteMessageFromMessage:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(HMDRemoteMessageTransport *)self accountRegistry];
  v7 = [v5 remoteMessageFromMessage:v4 secure:0 accountRegistry:v6];

  return v7;
}

- (void)postDidReceiveRemoteMessageWithNoListenerFromDevice:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __81__HMDRemoteMessageTransport_postDidReceiveRemoteMessageWithNoListenerFromDevice___block_invoke;
    v6[3] = &unk_2797359B0;
    v7 = v4;
    v8 = self;
    dispatch_async(v5, v6);
  }
}

void __81__HMDRemoteMessageTransport_postDidReceiveRemoteMessageWithNoListenerFromDevice___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = HMFGetLogIdentifier();
    v5 = *(a1 + 32);
    *buf = 138543618;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_2531F8000, v3, OS_LOG_TYPE_INFO, "%{public}@Posting notification about incoming message with no listeners from: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v11 = @"kIDSMessageSourceIDKey";
  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) remoteDestinationString];
  v12 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v6 postNotificationName:@"HMDDidReceiveRemoteMessageWithNoListenerNotification" object:v7 userInfo:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)start
{
  v3 = [(HMDRemoteMessageTransport *)self startPromise];
  [v3 fulfillWithValue:0];

  return [(HMDRemoteMessageTransport *)self startFuture];
}

- (HMDRemoteMessageTransport)initWithAccountRegistry:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HMDRemoteMessageTransport;
  v6 = [(HMDRemoteMessageTransport *)&v11 init];
  if (v6)
  {
    obj = 0;
    v7 = [MEMORY[0x277D0F7C0] futureWithPromise:&obj];
    startFuture = v6->_startFuture;
    v6->_startFuture = v7;

    objc_storeStrong(&v6->_startPromise, obj);
    objc_storeStrong(&v6->_accountRegistry, a3);
  }

  return v6;
}

- (BOOL)canSendMessage:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (double)retryInterval
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"HMDRemoteMessageTransportSendMessageRetryIntervalKey"];
  v4 = [v3 numberValue];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (unint64_t)numRetries
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"HMDRemoteMessageTransportSendMessageNumberOfRetriesKey"];
  v4 = [v3 numberValue];
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

- (double)defaultTimeout
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"HMDRemoteMessageTransportSendMessageDefaultTimeoutKey"];
  v4 = [v3 numberValue];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (HMDRemoteMessageTransport)init
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

+ (id)logCategory
{
  if (logCategory__hmf_once_t18_190822 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18_190822, &__block_literal_global_317_190823);
  }

  v3 = logCategory__hmf_once_v19_190824;

  return v3;
}

uint64_t __40__HMDRemoteMessageTransport_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v19_190824;
  logCategory__hmf_once_v19_190824 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)remoteMessageFromMessage:(id)a3 secure:(BOOL)a4 accountRegistry:(id)a5
{
  v6 = a4;
  v67 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = v10;
    if (v6)
    {
      [(HMDRemoteMessage *)v12 setSecure:1];
      v13 = v10;
    }
  }

  else
  {
    v14 = [HMDRemoteMessage alloc];
    v15 = [(HMDRemoteMessage *)v10 name];
    v16 = [(HMDRemoteMessage *)v10 qualityOfService];
    v17 = [(HMDRemoteMessage *)v10 destination];
    v18 = [(HMDRemoteMessage *)v10 messagePayload];
    [(HMDRemoteMessage *)v10 timeout];
    v20 = v19;
    LOBYTE(v53) = [(HMFMessage *)v10 isSecureRemote]|| v6;
    v13 = [(HMDRemoteMessage *)v14 initWithName:v15 qualityOfService:v16 destination:v17 payload:v18 headers:0 type:3 timeout:v20 secure:v53 restriction:[(HMFMessage *)v10 remoteRestriction] sendOptions:0];

    v21 = [(HMDRemoteMessage *)v10 identifier];
    [(HMDRemoteMessage *)v13 setIdentifier:v21];

    v22 = [(HMDRemoteMessage *)v10 responseHandler];
    [(HMDRemoteMessage *)v13 setResponseHandler:v22];
  }

  v23 = [(HMDRemoteMessage *)v13 attributedMessageName];

  if (!v23)
  {
    v24 = [(HMDRemoteMessage *)v10 name];
    [(HMDRemoteMessage *)v13 setAttributedMessageName:v24];
  }

  if (v9)
  {
    v25 = [(HMDRemoteMessage *)v13 destination];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    if (v27)
    {
      v54 = 0;
      v28 = [v27 device];
      v29 = [v28 handles];
      v30 = [v29 firstObject];
      v31 = [v9 deviceForHandle:v30 exists:&v54];

      if (v54 == 1)
      {
        v32 = objc_autoreleasePoolPush();
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          v34 = HMFGetLogIdentifier();
          v35 = [v27 device];
          *buf = 138543874;
          v56 = v34;
          v57 = 2112;
          v58 = v35;
          v59 = 2112;
          v60 = v31;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_DEBUG, "%{public}@Replacing device destination, %@, with device: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v32);
        v36 = [HMDRemoteDeviceMessageDestination alloc];
        v37 = [v27 target];
        v38 = [(HMDRemoteDeviceMessageDestination *)v36 initWithTarget:v37 device:v31];

        [(HMDRemoteMessage *)v13 setDestination:v38];
        v39 = [v27 preferredHandle];

        if (v39)
        {
          v40 = [v27 preferredHandle];
          [(HMDRemoteDeviceMessageDestination *)v38 setPreferredHandle:v40];
        }
      }
    }
  }

  v41 = objc_autoreleasePoolPush();
  v42 = a1;
  v43 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    v44 = HMFGetLogIdentifier();
    v45 = [(HMDRemoteMessage *)v13 identifier];
    v46 = [(HMDRemoteMessage *)v13 name];
    [(HMDRemoteMessage *)v13 timeout];
    v48 = v47;
    v49 = [(HMDRemoteMessage *)v13 type];
    if (v49 > 3)
    {
      v50 = 0;
    }

    else
    {
      v50 = off_2797356F0[v49];
    }

    *buf = 138544642;
    v56 = v44;
    v57 = 2112;
    v58 = v42;
    v59 = 2112;
    v60 = v45;
    v61 = 2112;
    v62 = v46;
    v63 = 2048;
    v64 = v48;
    v65 = 2112;
    v66 = v50;
    _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Created remote message from message with identifier: %@ name: %@ timeout: %.0f and type: %@", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v41);
  v51 = *MEMORY[0x277D85DE8];

  return v13;
}

@end