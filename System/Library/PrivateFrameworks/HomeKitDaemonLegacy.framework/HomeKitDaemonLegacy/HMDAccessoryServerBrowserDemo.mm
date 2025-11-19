@interface HMDAccessoryServerBrowserDemo
- (BOOL)_delegateRespondsToSelector:(SEL)a3;
- (HAPAccessoryServerBrowserDelegate)delegate;
- (id)_handleTestAccessorySetReachability:(id)a3;
- (id)_handleTestAccessorySetValue:(id)a3 response:(id *)a4;
- (id)_handleTestModeConfigRequest:(id)a3 response:(id *)a4;
- (void)appendDemoData:(id)a3;
- (void)discoverAccessoryServerWithIdentifier:(id)a3;
- (void)discoverServer;
- (void)loadDemoData:(id)a3 finalized:(BOOL)a4;
- (void)resetDemoAccessories;
- (void)resetDemoAccessory:(id)a3;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)startDiscoveringAccessoryServers;
- (void)stopDiscoveringAccessoryServers;
@end

@implementation HMDAccessoryServerBrowserDemo

- (HAPAccessoryServerBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_handleTestModeConfigRequest:(id)a3 response:(id *)a4
{
  v6 = a3;
  v7 = [v6 hmf_arrayForKey:@"kConfigTestingSetReturnValueKey"];
  if (v7)
  {
    v8 = [(HMDAccessoryServerBrowserDemo *)self _handleTestAccessorySetValue:v7 response:a4];
  }

  else
  {
    v9 = [v6 hmf_arrayForKey:@"kConfigTestingSetReachabilityKey"];
    if (v9)
    {
      v8 = [(HMDAccessoryServerBrowserDemo *)self _handleTestAccessorySetReachability:v9];
    }

    else
    {
      v10 = [v6 hmf_arrayForKey:@"kConfigTestingGenerateNotificationKey"];
      if (v10)
      {
        v8 = [(HMDAccessoryServerBrowserDemo *)self _handleTestAccessoryGenerateNotification:v10];
      }

      else
      {
        v11 = [v6 hmf_arrayForKey:@"kConfigTestingReadValueKey"];
        if (v11)
        {
          v8 = [(HMDAccessoryServerBrowserDemo *)self _handleTestAccessoryReadValue:v11];
        }

        else
        {
          v8 = 0;
        }
      }
    }
  }

  return v8;
}

- (id)_handleTestAccessorySetReachability:(id)a3
{
  v78 = *MEMORY[0x277D85DE8];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v3 = a3;
  v47 = [v3 countByEnumeratingWithState:&v63 objects:v77 count:16];
  if (v47)
  {
    v51 = 0;
    v48 = *MEMORY[0x277CD1FC8];
    v49 = *v64;
    *&v4 = 138543874;
    v45 = v4;
    v46 = v3;
    while (1)
    {
      v5 = 0;
LABEL_4:
      if (*v64 != v49)
      {
        objc_enumerationMutation(v3);
      }

      v6 = *(*(&v63 + 1) + 8 * v5);
      v7 = [v6 hmf_stringForKey:{v48, v45}];
      v8 = [v6 hmf_numberForKey:@"kAccessoryInstanceIDKey"];
      v62 = 0;
      v53 = [v6 hmf_BOOLForKey:@"kAccessoryIsReachableKey" isPresent:&v62];
      if ((v62 & 1) == 0)
      {
        v39 = objc_autoreleasePoolPush();
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543618;
          v68 = v41;
          v69 = 2112;
          v70 = v6;
          _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@No reachability setting for the setReachability request: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v39);
        v37 = MEMORY[0x277CCA9B8];
        v38 = 3;
        goto LABEL_50;
      }

      v52 = v5;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v9 = [(HMDAccessoryServerBrowserDemo *)self servers];
      v10 = [v9 countByEnumeratingWithState:&v58 objects:v76 count:16];
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = *v59;
LABEL_9:
      v13 = 0;
      while (1)
      {
        if (*v59 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v58 + 1) + 8 * v13);
        v15 = [v14 identifier];
        v16 = [v15 isEqual:v7];

        if (v16)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v58 objects:v76 count:16];
          if (v11)
          {
            goto LABEL_9;
          }

          goto LABEL_43;
        }
      }

      v17 = v14;

      if (!v17)
      {
        goto LABEL_44;
      }

      if (v8)
      {
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v18 = [v17 accessories];
        v19 = [v18 countByEnumeratingWithState:&v54 objects:v75 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v55;
          while (2)
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v55 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v54 + 1) + 8 * i);
              v24 = [v23 instanceID];
              v25 = [v8 isEqual:v24];

              if (v25)
              {
                v26 = v23;
                goto LABEL_28;
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v54 objects:v75 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }

          v26 = 0;
LABEL_28:
          v3 = v46;
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v18 = [v17 accessories];
        v26 = [v18 firstObject];
      }

      v27 = objc_autoreleasePoolPush();
      v28 = HMFGetOSLogHandle();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
      if (v26)
      {
        if (v29)
        {
          v30 = HMFGetLogIdentifier();
          v31 = HMFBooleanToString();
          *buf = 138544130;
          v68 = v30;
          v69 = 2112;
          v70 = v7;
          v71 = 2112;
          v72 = v8;
          v73 = 2112;
          v74 = v31;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Setting the reachability of accessory %@+%@ to %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v27);
        [v26 setReachable:v53];
      }

      else
      {
        if (v29)
        {
          v32 = HMFGetLogIdentifier();
          *buf = v45;
          v68 = v32;
          v69 = 2112;
          v70 = v7;
          v71 = 2112;
          v72 = v8;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Unable to look up accessory with deviceIdentifier %@, instanceID %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v27);
        v33 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];

        v51 = v33;
      }

      if (v26)
      {
        v5 = v52 + 1;
        if (v52 + 1 != v47)
        {
          goto LABEL_4;
        }

        v47 = [v3 countByEnumeratingWithState:&v63 objects:v77 count:16];
        if (v47)
        {
          continue;
        }
      }

      goto LABEL_51;
    }

LABEL_43:

LABEL_44:
    v34 = objc_autoreleasePoolPush();
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v68 = v36;
      v69 = 2112;
      v70 = v7;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Unable to look up accessoryServer with deviceIdentifier %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v34);
    v37 = MEMORY[0x277CCA9B8];
    v38 = 2;
LABEL_50:
    v42 = [v37 hmfErrorWithCode:v38];

    v51 = v42;
  }

  else
  {
    v51 = 0;
  }

LABEL_51:

  v43 = *MEMORY[0x277D85DE8];

  return v51;
}

- (id)_handleTestAccessorySetValue:(id)a3 response:(id *)a4
{
  v160 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v95 = [MEMORY[0x277CBEB18] array];
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  obj = v4;
  v107 = [obj countByEnumeratingWithState:&v134 objects:v159 count:16];
  v5 = 0;
  if (v107)
  {
    v104 = *MEMORY[0x277CD1FC8];
    v105 = *v135;
    v103 = *MEMORY[0x277CD25F8];
    v102 = *MEMORY[0x277CD2140];
    v106 = *MEMORY[0x277CD21B8];
    do
    {
      v6 = 0;
      do
      {
        v115 = v5;
        if (*v135 != v105)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v134 + 1) + 8 * v6);
        v114 = [v7 mutableCopy];
        v8 = [v7 hmf_stringForKey:v104];
        v9 = [v7 hmf_numberForKey:@"kAccessoryInstanceIDKey"];
        v117 = [v7 hmf_numberForKey:v103];
        v116 = [v7 hmf_numberForKey:v102];
        v110 = [v7 objectForKey:v106];
        v109 = [v7 hmf_numberForKey:@"kConfigTestingResponseDelayKey"];
        v101 = [v7 hmf_BOOLForKey:@"kCharacteristicEnableNotificationRequestKey"];
        v130 = 0u;
        v131 = 0u;
        v132 = 0u;
        v133 = 0u;
        v10 = [(HMDAccessoryServerBrowserDemo *)self servers];
        v11 = [v10 countByEnumeratingWithState:&v130 objects:v158 count:16];
        if (!v11)
        {
          goto LABEL_14;
        }

        v12 = v11;
        v13 = *v131;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v131 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v130 + 1) + 8 * i);
            v16 = [v15 identifier];
            v17 = [v16 isEqual:v8];

            if (v17)
            {
              v18 = v15;

              if (!v18)
              {
                goto LABEL_26;
              }

              v100 = v18;
              if (v9)
              {
                v128 = 0u;
                v129 = 0u;
                v126 = 0u;
                v127 = 0u;
                v19 = [v18 accessories];
                v20 = [v19 countByEnumeratingWithState:&v126 objects:v157 count:16];
                if (v20)
                {
                  v21 = v20;
                  v22 = *v127;
                  while (2)
                  {
                    for (j = 0; j != v21; ++j)
                    {
                      if (*v127 != v22)
                      {
                        objc_enumerationMutation(v19);
                      }

                      v24 = *(*(&v126 + 1) + 8 * j);
                      v25 = [v24 instanceID];
                      v26 = [v9 isEqual:v25];

                      if (v26)
                      {
                        v34 = v24;
                        v18 = v100;
                        goto LABEL_31;
                      }
                    }

                    v21 = [v19 countByEnumeratingWithState:&v126 objects:v157 count:16];
                    if (v21)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v18 = v100;
LABEL_41:
                v43 = objc_autoreleasePoolPush();
                v44 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                {
                  v45 = HMFGetLogIdentifier();
                  *buf = 138543874;
                  v142 = v45;
                  v143 = 2112;
                  v144 = v8;
                  v145 = 2112;
                  v146 = v9;
                  _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@Unable to look up accessory with deviceIdentifier %@, instanceID %@", buf, 0x20u);
                }

                objc_autoreleasePoolPop(v43);
                v5 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
                v46 = 0;
LABEL_57:
                v30 = 0;
                v31 = v114;
                v59 = v115;
                v33 = v109;
                v32 = v110;
              }

              else
              {
                v19 = [v18 accessories];
                v34 = [v19 firstObject];
LABEL_31:

                if (!v34)
                {
                  goto LABEL_41;
                }

                v124 = 0u;
                v125 = 0u;
                v122 = 0u;
                v123 = 0u;
                v98 = v34;
                v35 = [v34 services];
                v36 = [v35 countByEnumeratingWithState:&v122 objects:v156 count:16];
                if (!v36)
                {
LABEL_40:

LABEL_54:
                  v56 = objc_autoreleasePoolPush();
                  v57 = HMFGetOSLogHandle();
                  v18 = v100;
                  v46 = v98;
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
                  {
                    v58 = HMFGetLogIdentifier();
                    *buf = 138544130;
                    v142 = v58;
                    v143 = 2112;
                    v144 = v8;
                    v145 = 2112;
                    v146 = v9;
                    v147 = 2112;
                    v148 = v117;
                    _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_INFO, "%{public}@Unable to look up accessory with deviceIdentifier %@, instanceID %@, serviceInstanceID %@", buf, 0x2Au);
                  }

                  objc_autoreleasePoolPop(v56);
                  v5 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
                  goto LABEL_57;
                }

                v37 = v36;
                v38 = *v123;
LABEL_34:
                v39 = 0;
                while (1)
                {
                  if (*v123 != v38)
                  {
                    objc_enumerationMutation(v35);
                  }

                  v40 = *(*(&v122 + 1) + 8 * v39);
                  v41 = [v40 instanceID];
                  v42 = [v117 isEqual:v41];

                  if (v42)
                  {
                    break;
                  }

                  if (v37 == ++v39)
                  {
                    v37 = [v35 countByEnumeratingWithState:&v122 objects:v156 count:16];
                    if (v37)
                    {
                      goto LABEL_34;
                    }

                    goto LABEL_40;
                  }
                }

                v47 = v40;

                if (!v47)
                {
                  goto LABEL_54;
                }

                v120 = 0u;
                v121 = 0u;
                v118 = 0u;
                v119 = 0u;
                v97 = v47;
                v48 = [v47 characteristics];
                v49 = [v48 countByEnumeratingWithState:&v118 objects:v155 count:16];
                if (v49)
                {
                  v50 = v49;
                  v51 = *v119;
LABEL_47:
                  v52 = 0;
                  while (1)
                  {
                    if (*v119 != v51)
                    {
                      objc_enumerationMutation(v48);
                    }

                    v53 = *(*(&v118 + 1) + 8 * v52);
                    v54 = [v53 instanceID];
                    v55 = [v116 isEqual:v54];

                    if (v55)
                    {
                      break;
                    }

                    if (v50 == ++v52)
                    {
                      v50 = [v48 countByEnumeratingWithState:&v118 objects:v155 count:16];
                      if (v50)
                      {
                        goto LABEL_47;
                      }

                      goto LABEL_53;
                    }
                  }

                  v60 = v53;

                  if (!v60)
                  {
                    goto LABEL_67;
                  }

                  v31 = v114;
                  v61 = v115;
                  v33 = v109;
                  v46 = v98;
                  v96 = v60;
                  if (v109)
                  {
                    v62 = objc_autoreleasePoolPush();
                    v63 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
                    {
                      v64 = HMFGetLogIdentifier();
                      *buf = 138544642;
                      v142 = v64;
                      v143 = 2112;
                      v144 = v8;
                      v145 = 2112;
                      v146 = v9;
                      v147 = 2112;
                      v148 = v117;
                      v149 = 2112;
                      v150 = v116;
                      v151 = 2112;
                      v152 = v109;
                      _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_INFO, "%{public}@Setting the responseDelay for characteristic (%@+%@/%@/%@) to %@", buf, 0x3Eu);
                    }

                    objc_autoreleasePoolPop(v62);
                    [v96 setResponseDelay:v109];
                    v32 = v110;
                  }

                  else
                  {
                    v70 = [v60 responseDelay];

                    v32 = v110;
                    if (v70)
                    {
                      v71 = [v96 responseDelay];
                      [v114 setObject:v71 forKey:@"kConfigTestingResponseDelayKey"];

                      v72 = objc_autoreleasePoolPush();
                      v73 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
                      {
                        HMFGetLogIdentifier();
                        v74 = v93 = v72;
                        v75 = [v96 responseDelay];
                        *buf = 138544642;
                        v142 = v74;
                        v143 = 2112;
                        v144 = v8;
                        v145 = 2112;
                        v146 = v9;
                        v147 = 2112;
                        v148 = v117;
                        v149 = 2112;
                        v150 = v116;
                        v151 = 2112;
                        v152 = v75;
                        _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_INFO, "%{public}@Getting the value for characteristic responseDelay (%@+%@/%@/%@): %@ ", buf, 0x3Eu);

                        v46 = v98;
                        v72 = v93;
                      }

                      objc_autoreleasePoolPop(v72);
                    }
                  }

                  v76 = objc_autoreleasePoolPush();
                  v77 = HMFGetOSLogHandle();
                  v78 = os_log_type_enabled(v77, OS_LOG_TYPE_INFO);
                  if (v32)
                  {
                    if (v78)
                    {
                      HMFGetLogIdentifier();
                      v79 = v111 = v76;
                      v80 = [v96 responseDelay];
                      *buf = 138544898;
                      v142 = v79;
                      v143 = 2112;
                      v144 = v8;
                      v145 = 2112;
                      v146 = v9;
                      v147 = 2112;
                      v148 = v117;
                      v149 = 2112;
                      v150 = v116;
                      v151 = 2112;
                      v152 = v32;
                      v153 = 2112;
                      v154 = v80;
                      _os_log_impl(&dword_2531F8000, v77, OS_LOG_TYPE_INFO, "%{public}@Setting the value for characteristic (%@+%@/%@/%@) to %@ with responseDelay %@ milliseconds", buf, 0x48u);

                      v46 = v98;
                      v76 = v111;
                    }

                    objc_autoreleasePoolPop(v76);
                    [v96 setValue:v32];
                  }

                  else
                  {
                    if (v78)
                    {
                      HMFGetLogIdentifier();
                      v81 = v112 = v76;
                      *buf = 138544642;
                      v142 = v81;
                      v143 = 2112;
                      v144 = v8;
                      v145 = 2112;
                      v146 = v9;
                      v147 = 2112;
                      v148 = v117;
                      v149 = 2112;
                      v150 = v116;
                      v151 = 2112;
                      v152 = 0;
                      _os_log_impl(&dword_2531F8000, v77, OS_LOG_TYPE_INFO, "%{public}@Getting the value for characteristic (%@+%@/%@/%@): %@ ", buf, 0x3Eu);

                      v76 = v112;
                    }

                    objc_autoreleasePoolPop(v76);
                    v82 = [v96 value];
                    if (v82)
                    {
                      [v114 setObject:v82 forKey:v106];
                    }

                    else
                    {
                      v83 = [MEMORY[0x277CBEB68] null];
                      [v114 setObject:v83 forKey:v106];
                    }
                  }

                  if (v101)
                  {
                    v84 = objc_autoreleasePoolPush();
                    v85 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
                    {
                      HMFGetLogIdentifier();
                      v86 = v113 = v84;
                      v87 = [v96 responseDelay];
                      *buf = 138544898;
                      v142 = v86;
                      v143 = 2112;
                      v144 = v8;
                      v145 = 2112;
                      v146 = v9;
                      v147 = 2112;
                      v148 = v117;
                      v149 = 2112;
                      v150 = v116;
                      v151 = 2112;
                      v152 = v32;
                      v153 = 2112;
                      v154 = v87;
                      _os_log_impl(&dword_2531F8000, v85, OS_LOG_TYPE_INFO, "%{public}@Triggering update notification for characteristic (%@+%@/%@/%@) with value %@, responseDelay %@ milliseconds", buf, 0x48u);

                      v46 = v98;
                      v84 = v113;
                    }

                    objc_autoreleasePoolPop(v84);
                    v140 = v96;
                    v88 = [MEMORY[0x277CBEA60] arrayWithObjects:&v140 count:1];
                    [v100 handleUpdatesForCharacteristics:v88 stateNumber:0];
                  }

                  [v95 addObject:v114];
                  v30 = 1;
                  v69 = v96;
                }

                else
                {
LABEL_53:

LABEL_67:
                  v65 = objc_autoreleasePoolPush();
                  v66 = HMFGetOSLogHandle();
                  v31 = v114;
                  v33 = v109;
                  v46 = v98;
                  if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
                  {
                    v67 = HMFGetLogIdentifier();
                    *buf = 138544386;
                    v142 = v67;
                    v143 = 2112;
                    v144 = v8;
                    v145 = 2112;
                    v146 = v9;
                    v147 = 2112;
                    v148 = v117;
                    v149 = 2112;
                    v150 = v116;
                    _os_log_impl(&dword_2531F8000, v66, OS_LOG_TYPE_INFO, "%{public}@Unable to look up accessory with deviceIdentifier %@, instanceID %@, serviceInstanceID %@, characteristicInstanceID %@", buf, 0x34u);
                  }

                  objc_autoreleasePoolPop(v65);
                  v68 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
                  v30 = 0;
                  v69 = v115;
                  v61 = v68;
                  v32 = v110;
                }

                v5 = v61;

                v59 = v97;
                v18 = v100;
              }

              goto LABEL_59;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v130 objects:v158 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }

LABEL_14:

LABEL_26:
        v27 = objc_autoreleasePoolPush();
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543618;
          v142 = v29;
          v143 = 2112;
          v144 = v8;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Unable to look up accessoryServer with deviceIdentifier %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v27);
        [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
        v5 = v30 = 0;
        v31 = v114;
        v18 = v115;
        v33 = v109;
        v32 = v110;
LABEL_59:

        if (!v30)
        {
          goto LABEL_91;
        }

        ++v6;
      }

      while (v6 != v107);
      v89 = [obj countByEnumeratingWithState:&v134 objects:v159 count:16];
      v107 = v89;
    }

    while (v89);
  }

LABEL_91:

  v138 = @"CharacteristicConfiguration";
  v90 = [v95 copy];
  v139 = v90;
  *a4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v139 forKeys:&v138 count:1];

  v91 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)_delegateRespondsToSelector:(SEL)a3
{
  v4 = [(HMDAccessoryServerBrowserDemo *)self delegate];
  if (v4)
  {
    v5 = [(HMDAccessoryServerBrowserDemo *)self delegateQueue];
    if (v5)
    {
      v6 = objc_opt_respondsToSelector();
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (void)discoverAccessoryServerWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HMDAccessoryServerBrowserDemo_discoverAccessoryServerWithIdentifier___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __71__HMDAccessoryServerBrowserDemo_discoverAccessoryServerWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) servers];
  v3 = [v2 hmf_firstObjectWithValue:*(a1 + 40) forKeyPath:@"identifier"];

  v4 = *(a1 + 32);
  if (v3)
  {
    if ([v4 _delegateRespondsToSelector:sel_accessoryServerBrowser_didFindAccessoryServer_stateChanged_stateNumber_])
    {
      v5 = [*(a1 + 32) delegateQueue];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __71__HMDAccessoryServerBrowserDemo_discoverAccessoryServerWithIdentifier___block_invoke_2;
      v11[3] = &unk_2797359B0;
      v11[4] = *(a1 + 32);
      v6 = &v12;
      v12 = v3;
      v7 = v11;
LABEL_6:
      dispatch_async(v5, v7);
    }
  }

  else if ([v4 _delegateRespondsToSelector:sel_accessoryServerBrowser_didFailToDiscoverAccessoryServerWithIdentifier_])
  {
    v5 = [*(a1 + 32) delegateQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__HMDAccessoryServerBrowserDemo_discoverAccessoryServerWithIdentifier___block_invoke_3;
    v9[3] = &unk_2797359B0;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v6 = &v10;
    v10 = v8;
    v7 = v9;
    goto LABEL_6;
  }
}

void __71__HMDAccessoryServerBrowserDemo_discoverAccessoryServerWithIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFindAccessoryServer:*(a1 + 40) stateChanged:0 stateNumber:0];
}

void __71__HMDAccessoryServerBrowserDemo_discoverAccessoryServerWithIdentifier___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFailToDiscoverAccessoryServerWithIdentifier:*(a1 + 40)];
}

- (void)resetDemoAccessories
{
  v3 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HMDAccessoryServerBrowserDemo_resetDemoAccessories__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

void __53__HMDAccessoryServerBrowserDemo_resetDemoAccessories__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) servers];
  v3 = [v2 copy];

  v4 = [*(a1 + 32) servers];
  [v4 removeAllObjects];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        if ([*(a1 + 32) _delegateRespondsToSelector:sel_accessoryServerBrowser_didRemoveAccessoryServer_error_])
        {
          v11 = [*(a1 + 32) delegateQueue];
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __53__HMDAccessoryServerBrowserDemo_resetDemoAccessories__block_invoke_2;
          v13[3] = &unk_2797359B0;
          v13[4] = *(a1 + 32);
          v13[5] = v10;
          dispatch_async(v11, v13);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __53__HMDAccessoryServerBrowserDemo_resetDemoAccessories__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didRemoveAccessoryServer:*(a1 + 40) error:0];
}

- (void)resetDemoAccessory:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(HMDAccessoryServerBrowserDemo *)self _delegateRespondsToSelector:sel_accessoryServerBrowser_didRemoveAccessoryServer_error_])
    {
      v5 = [(HMDAccessoryServerBrowserDemo *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__HMDAccessoryServerBrowserDemo_resetDemoAccessory___block_invoke;
      block[3] = &unk_2797359B0;
      block[4] = self;
      v10 = v4;
      dispatch_async(v5, block);
    }

    v6 = [(HAPAccessoryServerBrowser *)self workQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52__HMDAccessoryServerBrowserDemo_resetDemoAccessory___block_invoke_2;
    v7[3] = &unk_2797359B0;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v6, v7);
  }
}

void __52__HMDAccessoryServerBrowserDemo_resetDemoAccessory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didRemoveAccessoryServer:*(a1 + 40) error:0];
}

void __52__HMDAccessoryServerBrowserDemo_resetDemoAccessory___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) servers];
  [v2 removeObject:*(a1 + 40)];

  v3 = [HMDAccessoryServerDemo alloc];
  v4 = [*(a1 + 40) name];
  v5 = [*(a1 + 40) identifier];
  v6 = [*(a1 + 40) accessoryInfo];
  v7 = [*(a1 + 32) keyStore];
  v8 = [(HMDAccessoryServerDemo *)v3 initWithName:v4 identifier:v5 deviceInfo:v6 paired:0 keyStore:v7 testMode:0 browser:*(a1 + 32)];

  v9 = objc_autoreleasePoolPush();
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [(HAPAccessoryServer *)v8 identifier];
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[CoreHAP] Discovered new accessory server %@ with Demo info", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [*(a1 + 32) servers];
  [v13 addObject:v8];

  if ([*(a1 + 32) _delegateRespondsToSelector:sel_accessoryServerBrowser_didFindAccessoryServer_stateChanged_stateNumber_])
  {
    v14 = [*(a1 + 32) delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__HMDAccessoryServerBrowserDemo_resetDemoAccessory___block_invoke_27;
    block[3] = &unk_2797359B0;
    block[4] = *(a1 + 32);
    v17 = v8;
    dispatch_async(v14, block);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __52__HMDAccessoryServerBrowserDemo_resetDemoAccessory___block_invoke_27(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFindAccessoryServer:*(a1 + 40) stateChanged:0 stateNumber:0];
}

- (void)appendDemoData:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDAccessoryServerBrowserDemo_appendDemoData___block_invoke;
  block[3] = &unk_279732E78;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __48__HMDAccessoryServerBrowserDemo_appendDemoData___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained[11] hmf_arrayForKey:@"accessories"];
  v3 = [v2 mutableCopy];

  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
  }

  v4 = v3;
  v5 = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = *(a1 + 32);
  v6 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v29 + 1) + 8 * i) hmf_arrayForKey:@"accessories"];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __48__HMDAccessoryServerBrowserDemo_appendDemoData___block_invoke_2;
        v26[3] = &unk_279723218;
        v27 = v4;
        v28 = v5;
        [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:v26];
      }

      v7 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v7);
  }

  v11 = v5;
  if ([v5 count])
  {
    [v4 addObjectsFromArray:v5];
    v12 = objc_autoreleasePoolPush();
    v13 = WeakRetained;
    v14 = WeakRetained;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v16;
      v37 = 2112;
      v38 = v4;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Updated demo accessory list: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v33 = @"accessories";
    v34 = v4;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v18 = WeakRetained[11];
    WeakRetained[11] = v17;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v13 = WeakRetained;
    v20 = WeakRetained;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@No new accessories (but kicking re-discovery anyway).", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }

  if (*(v13 + 61) == 1)
  {
    [v13 discoverServer];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __48__HMDAccessoryServerBrowserDemo_appendDemoData___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMDAccessoryServerBrowserDemo_appendDemoData___block_invoke_3;
  v7[3] = &unk_279733028;
  v5 = v3;
  v8 = v5;
  if (([v4 na_any:v7] & 1) == 0)
  {
    v6 = [v5 mutableCopy];
    [v6 setObject:MEMORY[0x277CBEC38] forKey:@"testMode"];
    [*(a1 + 40) addObject:v6];
  }
}

uint64_t __48__HMDAccessoryServerBrowserDemo_appendDemoData___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"identifier"];
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"identifier"];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)loadDemoData:(id)a3 finalized:(BOOL)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = [(HAPAccessoryServerBrowser *)self workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HMDAccessoryServerBrowserDemo_loadDemoData_finalized___block_invoke;
  v9[3] = &unk_27972F5B0;
  objc_copyWeak(&v11, &location);
  v10 = v6;
  v12 = a4;
  v8 = v6;
  dispatch_async(v7, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __56__HMDAccessoryServerBrowserDemo_loadDemoData_finalized___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_storeStrong(WeakRetained + 11, *(a1 + 32));
  *(WeakRetained + 60) = *(a1 + 48);
}

- (void)discoverServer
{
  objc_initWeak(&location, self);
  v3 = [(HAPAccessoryServerBrowser *)self workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__HMDAccessoryServerBrowserDemo_discoverServer__block_invoke;
  v4[3] = &unk_279732FD8;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __47__HMDAccessoryServerBrowserDemo_discoverServer__block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained[10])
  {
    v2 = [MEMORY[0x277CBEB18] array];
    v3 = WeakRetained[10];
    WeakRetained[10] = v2;
  }

  v4 = WeakRetained[11];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 objectForKey:@"accessories"];
    if (v6)
    {
      v29 = v6;
      v30 = v5;
      v46 = 0u;
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
      obj = v6;
      v38 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
      if (v38)
      {
        v37 = *v44;
        v31 = WeakRetained;
        do
        {
          for (i = 0; i != v38; ++i)
          {
            if (*v44 != v37)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v43 + 1) + 8 * i);
            v9 = [v8 objectForKeyedSubscript:@"name"];
            v10 = [v8 objectForKeyedSubscript:@"identifier"];
            v11 = [v8 objectForKeyedSubscript:@"attrDB"];
            v12 = [v8 objectForKeyedSubscript:@"testMode"];
            v13 = objc_autoreleasePoolPush();
            v14 = WeakRetained;
            v15 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = HMFGetLogIdentifier();
              *buf = 138543874;
              v48 = v16;
              v49 = 2112;
              v50 = v9;
              v51 = 2112;
              v52 = v10;
              _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Processing Demo Accessory information: %@ / %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v13);
            if (v9 && v10 && v11)
            {
              v17 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v11 options:0 error:0];
              if (v17)
              {
                v35 = v17;
                v36 = v12;
                v18 = WeakRetained[10];
                v41[0] = MEMORY[0x277D85DD0];
                v41[1] = 3221225472;
                v41[2] = __47__HMDAccessoryServerBrowserDemo_discoverServer__block_invoke_16;
                v41[3] = &unk_2797231F0;
                v19 = v10;
                v42 = v19;
                v20 = [v18 na_firstObjectPassingTest:v41];
                if (v20)
                {
                  v21 = v20;
                  v22 = objc_autoreleasePoolPush();
                  v23 = v14;
                  v24 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                  {
                    v32 = HMFGetLogIdentifier();
                    *buf = 138543874;
                    v48 = v32;
                    v49 = 2112;
                    v50 = v9;
                    v51 = 2112;
                    v52 = v19;
                    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Server already exists for Demo Accessory: %@ / %@ - leaving it in place", buf, 0x20u);
                  }

                  objc_autoreleasePoolPop(v22);
                  WeakRetained = v31;
                }

                else
                {
                  v33 = [HMDAccessoryServerDemo alloc];
                  v25 = [v14 accessoryPaired];
                  v26 = [v14 keyStore];
                  v21 = -[HMDAccessoryServerDemo initWithName:identifier:deviceInfo:paired:keyStore:testMode:browser:](v33, "initWithName:identifier:deviceInfo:paired:keyStore:testMode:browser:", v9, v19, v35, v25, v26, [v36 BOOLValue], v14);

                  [WeakRetained[10] addObject:v21];
                }

                if ([v14 _delegateRespondsToSelector:sel_accessoryServerBrowser_didFindAccessoryServer_stateChanged_stateNumber_])
                {
                  v27 = [v14 delegateQueue];
                  block[0] = MEMORY[0x277D85DD0];
                  block[1] = 3221225472;
                  block[2] = __47__HMDAccessoryServerBrowserDemo_discoverServer__block_invoke_21;
                  block[3] = &unk_2797359B0;
                  block[4] = v14;
                  v40 = v21;
                  dispatch_async(v27, block);
                }

                v17 = v35;
                v12 = v36;
              }
            }
          }

          v38 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
        }

        while (v38);
      }

      v5 = 0;
      v6 = v29;
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __47__HMDAccessoryServerBrowserDemo_discoverServer__block_invoke_16(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __47__HMDAccessoryServerBrowserDemo_discoverServer__block_invoke_21(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFindAccessoryServer:*(a1 + 40) stateChanged:1 stateNumber:0];
}

- (void)stopDiscoveringAccessoryServers
{
  v3 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HMDAccessoryServerBrowserDemo_stopDiscoveringAccessoryServers__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

void __64__HMDAccessoryServerBrowserDemo_stopDiscoveringAccessoryServers__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 61) = 0;
  v1 = objc_autoreleasePoolPush();
  v2 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = HMFGetLogIdentifier();
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_2531F8000, v2, OS_LOG_TYPE_INFO, "%{public}@[Demo Accessory Browser] Stopping browse for Demo accessories", &v5, 0xCu);
  }

  objc_autoreleasePoolPop(v1);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)startDiscoveringAccessoryServers
{
  v3 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMDAccessoryServerBrowserDemo_startDiscoveringAccessoryServers__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __65__HMDAccessoryServerBrowserDemo_startDiscoveringAccessoryServers__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v4;
    _os_log_impl(&dword_2531F8000, v3, OS_LOG_TYPE_INFO, "%{public}@[Demo Accessory Browser] Starting browse for Demo accessories...", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  *(*(a1 + 32) + 61) = 1;
  if ([*(a1 + 32) _delegateRespondsToSelector:sel_accessoryServerBrowser_didStartDiscoveringWithError_])
  {
    v5 = [*(a1 + 32) delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__HMDAccessoryServerBrowserDemo_startDiscoveringAccessoryServers__block_invoke_1;
    block[3] = &unk_279735D00;
    block[4] = *(a1 + 32);
    dispatch_async(v5, block);
  }

  result = [*(a1 + 32) discoverServer];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __65__HMDAccessoryServerBrowserDemo_startDiscoveringAccessoryServers__block_invoke_1(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didStartDiscoveringWithError:0];
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDAccessoryServerBrowserDemo_setDelegate_queue___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

uint64_t __51__HMDAccessoryServerBrowserDemo_setDelegate_queue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setDelegateQueue:v2];
}

@end