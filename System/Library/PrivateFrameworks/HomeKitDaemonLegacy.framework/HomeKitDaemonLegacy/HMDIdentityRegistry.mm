@interface HMDIdentityRegistry
+ (id)logCategory;
+ (id)sharedRegistry;
- (HMDHomeManager)homeManager;
- (HMDIdentityRegistry)init;
- (NSArray)registeredIdentities;
- (id)_userForIdenity:(id)idenity;
- (id)accountsForIdentity:(id)identity;
- (id)attributeDescriptions;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)identitiesForAccount:(id)account;
- (id)identitiesForAccountIdentifier:(id)identifier;
- (id)identitiesForDevice:(id)device;
- (id)identityForIdentifier:(id)identifier;
- (id)userForDevice:(id)device;
- (void)deregisterIdentity:(id)identity object:(id)object;
- (void)registerIdentity:(id)identity account:(id)account object:(id)object;
- (void)registerIdentity:(id)identity device:(id)device object:(id)object;
- (void)reset;
@end

@implementation HMDIdentityRegistry

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v132 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  registeredIdentities = [(HMDIdentityRegistry *)self registeredIdentities];
  mapTableWithStrongToStrongObjects = [MEMORY[0x277CCAB00] mapTableWithStrongToStrongObjects];
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v5 = registeredIdentities;
  v6 = [v5 countByEnumeratingWithState:&v116 objects:v131 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v117;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v117 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v116 + 1) + 8 * i);
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
          device = [v12 device];
          v14 = [mapTableWithStrongToStrongObjects objectForKey:device];

          if (!v14)
          {
            v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
            device2 = [v12 device];
            [mapTableWithStrongToStrongObjects setObject:v14 forKey:device2];
          }

          [v14 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v116 objects:v131 count:16];
    }

    while (v7);
  }

  v65 = v5;

  v72 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(mapTableWithStrongToStrongObjects, "count")}];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  obj = [mapTableWithStrongToStrongObjects keyEnumerator];
  v74 = [obj countByEnumeratingWithState:&v112 objects:v130 count:16];
  if (v74)
  {
    v70 = *v113;
    do
    {
      v16 = 0;
      do
      {
        if (*v113 != v70)
        {
          objc_enumerationMutation(obj);
        }

        v78 = *(*(&v112 + 1) + 8 * v16);
        v80 = v16;
        v17 = [mapTableWithStrongToStrongObjects objectForKey:v65];
        v86 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v17, "count")}];
        v108 = 0u;
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        v82 = v17;
        v18 = [v82 countByEnumeratingWithState:&v108 objects:v129 count:16];
        if (v18)
        {
          v19 = v18;
          v84 = *v109;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v109 != v84)
              {
                objc_enumerationMutation(v82);
              }

              v21 = *(*(&v108 + 1) + 8 * j);
              array = [MEMORY[0x277CBEB18] array];
              v104 = 0u;
              v105 = 0u;
              v106 = 0u;
              v107 = 0u;
              registeredObjects = [v21 registeredObjects];
              v24 = [registeredObjects countByEnumeratingWithState:&v104 objects:v128 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v105;
                do
                {
                  for (k = 0; k != v25; ++k)
                  {
                    if (*v105 != v26)
                    {
                      objc_enumerationMutation(registeredObjects);
                    }

                    observedObject = [*(*(&v104 + 1) + 8 * k) observedObject];
                    v29 = [observedObject description];
                    [array addObject:v29];
                  }

                  v25 = [registeredObjects countByEnumeratingWithState:&v104 objects:v128 count:16];
                }

                while (v25);
              }

              v126[0] = @"Identity";
              v30 = [v21 description];
              v126[1] = @"Objects";
              v127[0] = v30;
              v127[1] = array;
              v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v127 forKeys:v126 count:2];
              [v86 addObject:v31];
            }

            v19 = [v82 countByEnumeratingWithState:&v108 objects:v129 count:16];
          }

          while (v19);
        }

        shortDescription = [v78 shortDescription];
        [v72 setObject:v86 forKey:shortDescription];

        v16 = v80 + 1;
      }

      while (v80 + 1 != v74);
      v74 = [obj countByEnumeratingWithState:&v112 objects:v130 count:16];
    }

    while (v74);
  }

  v33 = [v72 copy];
  [dictionary setObject:v33 forKeyedSubscript:@"deviceIdentities"];

  mapTableWithStrongToStrongObjects2 = [MEMORY[0x277CCAB00] mapTableWithStrongToStrongObjects];
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v34 = v65;
  v35 = [v34 countByEnumeratingWithState:&v100 objects:v125 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v101;
    do
    {
      for (m = 0; m != v36; ++m)
      {
        if (*v101 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v100 + 1) + 8 * m);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v40 = v39;
        }

        else
        {
          v40 = 0;
        }

        v41 = v40;

        if (v41)
        {
          account = [v41 account];
          v43 = [mapTableWithStrongToStrongObjects2 objectForKey:account];

          if (!v43)
          {
            v43 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
            account2 = [v41 account];
            [mapTableWithStrongToStrongObjects2 setObject:v43 forKey:account2];
          }

          [v43 addObject:{v41, v65}];
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v100 objects:v125 count:16];
    }

    while (v36);
  }

  v66 = v34;

  v73 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(mapTableWithStrongToStrongObjects2, "count")}];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  obja = [mapTableWithStrongToStrongObjects2 keyEnumerator];
  v75 = [obja countByEnumeratingWithState:&v96 objects:v124 count:16];
  if (v75)
  {
    v71 = *v97;
    do
    {
      v45 = 0;
      do
      {
        if (*v97 != v71)
        {
          objc_enumerationMutation(obja);
        }

        v79 = *(*(&v96 + 1) + 8 * v45);
        v81 = v45;
        v46 = [mapTableWithStrongToStrongObjects2 objectForKey:v66];
        v87 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v46, "count")}];
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        v83 = v46;
        v47 = [v83 countByEnumeratingWithState:&v92 objects:v123 count:16];
        if (v47)
        {
          v48 = v47;
          v85 = *v93;
          do
          {
            for (n = 0; n != v48; ++n)
            {
              if (*v93 != v85)
              {
                objc_enumerationMutation(v83);
              }

              v50 = *(*(&v92 + 1) + 8 * n);
              array2 = [MEMORY[0x277CBEB18] array];
              v88 = 0u;
              v89 = 0u;
              v90 = 0u;
              v91 = 0u;
              registeredObjects2 = [v50 registeredObjects];
              v53 = [registeredObjects2 countByEnumeratingWithState:&v88 objects:v122 count:16];
              if (v53)
              {
                v54 = v53;
                v55 = *v89;
                do
                {
                  for (ii = 0; ii != v54; ++ii)
                  {
                    if (*v89 != v55)
                    {
                      objc_enumerationMutation(registeredObjects2);
                    }

                    observedObject2 = [*(*(&v88 + 1) + 8 * ii) observedObject];
                    v58 = [observedObject2 description];
                    [array2 addObject:v58];
                  }

                  v54 = [registeredObjects2 countByEnumeratingWithState:&v88 objects:v122 count:16];
                }

                while (v54);
              }

              v120[0] = @"Identity";
              v59 = [v50 description];
              v120[1] = @"Objects";
              v121[0] = v59;
              v121[1] = array2;
              v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:2];
              [v87 addObject:v60];
            }

            v48 = [v83 countByEnumeratingWithState:&v92 objects:v123 count:16];
          }

          while (v48);
        }

        shortDescription2 = [v79 shortDescription];
        [v73 setObject:v87 forKey:shortDescription2];

        v45 = v81 + 1;
      }

      while (v81 + 1 != v75);
      v75 = [obja countByEnumeratingWithState:&v96 objects:v124 count:16];
    }

    while (v75);
  }

  v62 = [v73 copy];
  [dictionary setObject:v62 forKeyedSubscript:@"accountIdentities"];

  v63 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)reset
{
  lock = [(HMDIdentityRegistry *)self lock];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28__HMDIdentityRegistry_reset__block_invoke;
  v4[3] = &unk_279735D00;
  v4[4] = self;
  [lock performBlock:v4];
}

uint64_t __28__HMDIdentityRegistry_reset__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v19 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Resetting", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(*(a1 + 32) + 8);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        __notifyRegisteredIdentityRemoved(*(a1 + 32), *(*(&v13 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  result = [*(*(a1 + 32) + 8) removeAllObjects];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)deregisterIdentity:(id)identity object:(id)object
{
  identityCopy = identity;
  objectCopy = object;
  v8 = objectCopy;
  if (identityCopy && objectCopy)
  {
    lock = [(HMDIdentityRegistry *)self lock];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__HMDIdentityRegistry_deregisterIdentity_object___block_invoke;
    v10[3] = &unk_279734960;
    v10[4] = self;
    v11 = identityCopy;
    v12 = v8;
    [lock performBlock:v10];
  }
}

void __49__HMDIdentityRegistry_deregisterIdentity_object___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    *buf = 138543874;
    v38 = v5;
    v39 = 2112;
    v40 = v6;
    v41 = 2048;
    v42 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Deregistering identity, %@, for object: %p", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [*(a1 + 32) registeredIdentities];
  v8 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    v24 = *v32;
    do
    {
      v11 = 0;
      v25 = v9;
      do
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * v11);
        v13 = [v12 identity];
        v14 = [v13 isEqual:*(a1 + 40)];

        if (v14)
        {
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v15 = [v12 registeredObjects];
          v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v28;
            while (2)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v28 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v27 + 1) + 8 * i);
                v21 = [v20 observedObject];
                v22 = *(a1 + 48);

                if (v21 == v22)
                {
                  __removeRegisteredObjectForRegisteredIdentity(*(a1 + 32), v12, v20);
                  goto LABEL_19;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

LABEL_19:

          v10 = v24;
          v9 = v25;
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)registerIdentity:(id)identity account:(id)account object:(id)object
{
  v33 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  accountCopy = account;
  objectCopy = object;
  v11 = objectCopy;
  if (identityCopy && accountCopy && objectCopy)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      shortDescription = [accountCopy shortDescription];
      *buf = 138544130;
      v26 = v15;
      v27 = 2112;
      v28 = identityCopy;
      v29 = 2112;
      v30 = shortDescription;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Registering identity, %@, for account, %@, for object: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    v17 = [objc_alloc(MEMORY[0x277D0F898]) initWithObservedObject:v11];
    lock = [(HMDIdentityRegistry *)selfCopy lock];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __55__HMDIdentityRegistry_registerIdentity_account_object___block_invoke;
    v21[3] = &unk_279734870;
    v21[4] = selfCopy;
    v22 = identityCopy;
    v23 = accountCopy;
    v24 = v17;
    v19 = v17;
    [lock performBlock:v21];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __55__HMDIdentityRegistry_registerIdentity_account_object___block_invoke(void **a1)
{
  v30 = *MEMORY[0x277D85DE8];
  __registeredIdentitiesForIdentity(a1[4], a1[5]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = v22 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v20 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v19 + 1) + 8 * v6);
      objc_opt_class();
      v8 = (objc_opt_isKindOfClass() & 1) != 0 ? v7 : 0;
      v9 = v8;

      v10 = [(__HMDRegisteredAccountIdentity *)v9 account];
      v11 = [v10 isEqual:a1[6]];

      if (v11)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v19 objects:v29 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    if (v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
LABEL_12:
  }

  v12 = objc_autoreleasePoolPush();
  v13 = a1[4];
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = a1[5];
    v17 = [a1[6] shortDescription];
    *buf = 138543874;
    v24 = v15;
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v17;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Adding identity, %@, for account: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v7 = [[__HMDRegisteredAccountIdentity alloc] initWithIdentity:a1[5] account:a1[6]];
  [*(a1[4] + 1) addObject:v7];
  __notifyRegisteredIdentityAdded(a1[4], v7);
LABEL_17:
  __registerObjectForRegisteredIdentity(a1[4], v7, a1[7]);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)registerIdentity:(id)identity device:(id)device object:(id)object
{
  v33 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  deviceCopy = device;
  objectCopy = object;
  v11 = objectCopy;
  if (identityCopy && deviceCopy && objectCopy)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      shortDescription = [deviceCopy shortDescription];
      *buf = 138544130;
      v26 = v15;
      v27 = 2112;
      v28 = identityCopy;
      v29 = 2112;
      v30 = shortDescription;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Registering identity, %@, for device, %@, for object: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    v17 = [objc_alloc(MEMORY[0x277D0F898]) initWithObservedObject:v11];
    lock = [(HMDIdentityRegistry *)selfCopy lock];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __54__HMDIdentityRegistry_registerIdentity_device_object___block_invoke;
    v21[3] = &unk_279734870;
    v21[4] = selfCopy;
    v22 = identityCopy;
    v23 = deviceCopy;
    v24 = v17;
    v19 = v17;
    [lock performBlock:v21];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __54__HMDIdentityRegistry_registerIdentity_device_object___block_invoke(void **a1)
{
  v30 = *MEMORY[0x277D85DE8];
  __registeredIdentitiesForIdentity(a1[4], a1[5]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = v22 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v20 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v19 + 1) + 8 * v6);
      objc_opt_class();
      v8 = (objc_opt_isKindOfClass() & 1) != 0 ? v7 : 0;
      v9 = v8;

      v10 = [(__HMDRegisteredDeviceIdentity *)v9 device];
      v11 = [v10 isEqual:a1[6]];

      if (v11)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v19 objects:v29 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    if (v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
LABEL_12:
  }

  v12 = objc_autoreleasePoolPush();
  v13 = a1[4];
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = a1[5];
    v17 = [a1[6] shortDescription];
    *buf = 138543874;
    v24 = v15;
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v17;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Adding identity, %@, for device: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v7 = [[__HMDRegisteredDeviceIdentity alloc] initWithIdentity:a1[5] device:a1[6]];
  [*(a1[4] + 1) addObject:v7];
  __notifyRegisteredIdentityAdded(a1[4], v7);
LABEL_17:
  __registerObjectForRegisteredIdentity(a1[4], v7, a1[7]);

  v18 = *MEMORY[0x277D85DE8];
}

- (id)accountsForIdentity:(id)identity
{
  identityCopy = identity;
  if (identityCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__11258;
    v15 = __Block_byref_object_dispose__11259;
    v16 = 0;
    lock = [(HMDIdentityRegistry *)self lock];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__HMDIdentityRegistry_accountsForIdentity___block_invoke;
    v8[3] = &unk_279735BC0;
    v8[4] = self;
    v9 = identityCopy;
    v10 = &v11;
    [lock performBlock:v8];

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __43__HMDIdentityRegistry_accountsForIdentity___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB40] orderedSet];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v20 = a1;
  v3 = __registeredIdentitiesForIdentity(*(a1 + 32), *(a1 + 40));
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;

        if (v10)
        {
          v11 = [v10 account];
          if (v11)
          {
            goto LABEL_11;
          }

          goto LABEL_12;
        }

        v12 = v8;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v10 = v13;

        if (v10)
        {
          v14 = [v10 device];
          v11 = [v14 account];

          if (!v11)
          {
            goto LABEL_12;
          }

LABEL_11:
          [v2 addObject:v11];
LABEL_12:
        }

        ++v7;
      }

      while (v5 != v7);
      v15 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v5 = v15;
    }

    while (v15);
  }

  v16 = [v2 array];
  v17 = *(*(v20 + 48) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  v19 = *MEMORY[0x277D85DE8];
}

- (id)identitiesForAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__11258;
    v15 = __Block_byref_object_dispose__11259;
    v16 = 0;
    lock = [(HMDIdentityRegistry *)self lock];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__HMDIdentityRegistry_identitiesForAccountIdentifier___block_invoke;
    v8[3] = &unk_279735BC0;
    v8[4] = self;
    v9 = identifierCopy;
    v10 = &v11;
    [lock performBlock:v8];

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

void __54__HMDIdentityRegistry_identitiesForAccountIdentifier___block_invoke(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v17 = [MEMORY[0x277CBEB40] orderedSet];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1[4] + 8);
  v2 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v20;
    do
    {
      v5 = 0;
      do
      {
        if (*v20 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v19 + 1) + 8 * v5);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
        }

        else
        {
          v7 = 0;
        }

        v8 = v7;

        v9 = [v8 account];
        v10 = [v9 identifier];
        v11 = [v10 isEqual:a1[5]];

        if (v11)
        {
          v12 = [v6 identity];
          [v17 addObject:v12];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v3);
  }

  v13 = [v17 array];
  v14 = *(a1[6] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *MEMORY[0x277D85DE8];
}

- (id)identitiesForAccount:(id)account
{
  accountCopy = account;
  if (accountCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__11258;
    v15 = __Block_byref_object_dispose__11259;
    v16 = 0;
    lock = [(HMDIdentityRegistry *)self lock];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__HMDIdentityRegistry_identitiesForAccount___block_invoke;
    v8[3] = &unk_279735BC0;
    v8[4] = self;
    v9 = accountCopy;
    v10 = &v11;
    [lock performBlock:v8];

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

void __44__HMDIdentityRegistry_identitiesForAccount___block_invoke(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = [MEMORY[0x277CBEB40] orderedSet];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1[4] + 8);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
        }

        else
        {
          v8 = 0;
        }

        v9 = v8;

        v10 = [v9 account];
        v11 = [v10 isEqual:a1[5]];

        if (v11)
        {
          v12 = [v7 identity];
          [v17 addObject:v12];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  v13 = [v17 array];
  v14 = *(a1[6] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *MEMORY[0x277D85DE8];
}

- (id)identitiesForDevice:(id)device
{
  deviceCopy = device;
  v5 = deviceCopy;
  if (deviceCopy)
  {
    account = [deviceCopy account];
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__11258;
    v19 = __Block_byref_object_dispose__11259;
    v20 = 0;
    lock = [(HMDIdentityRegistry *)self lock];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43__HMDIdentityRegistry_identitiesForDevice___block_invoke;
    v11[3] = &unk_279722F58;
    v11[4] = self;
    v12 = v5;
    v8 = account;
    v13 = v8;
    v14 = &v15;
    [lock performBlock:v11];

    v9 = v16[5];
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

void __43__HMDIdentityRegistry_identitiesForDevice___block_invoke(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB40] orderedSet];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = *(a1[4] + 8);
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;

        v11 = [v10 device];
        v12 = [v11 isEqual:a1[5]];

        if (v12)
        {
          goto LABEL_15;
        }

        if (!a1[6])
        {
          goto LABEL_17;
        }

        v13 = v8;
        objc_opt_class();
        v14 = (objc_opt_isKindOfClass() & 1) != 0 ? v13 : 0;
        v10 = v14;

        v15 = [v10 account];
        v16 = [v15 isEqual:a1[6]];

        if (v16)
        {
LABEL_15:
          v17 = [v8 identity];
          [v2 addObject:v17];
        }

LABEL_17:
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  v18 = [v2 array];
  v19 = *(a1[7] + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  v21 = *MEMORY[0x277D85DE8];
}

- (id)userForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[HMDIdentityRegistry sharedRegistry];
  v6 = [v5 identitiesForDevice:deviceCopy];

  if ([v6 count])
  {
    firstObject = [v6 firstObject];
    if (firstObject)
    {
      v8 = [(HMDIdentityRegistry *)self _userForIdenity:firstObject];
      goto LABEL_6;
    }
  }

  else
  {
    firstObject = 0;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (id)_userForIdenity:(id)idenity
{
  v20 = *MEMORY[0x277D85DE8];
  idenityCopy = idenity;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  homeManager = [(HMDIdentityRegistry *)self homeManager];
  homes = [homeManager homes];

  v7 = [homes countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(homes);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) userWithPairingIdentity:idenityCopy];
        if (v11)
        {
          v12 = v11;
          goto LABEL_11;
        }
      }

      v8 = [homes countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)identityForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__11258;
    v15 = __Block_byref_object_dispose__11259;
    v16 = 0;
    lock = [(HMDIdentityRegistry *)self lock];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__HMDIdentityRegistry_identityForIdentifier___block_invoke;
    v8[3] = &unk_279735BC0;
    v8[4] = self;
    v9 = identifierCopy;
    v10 = &v11;
    [lock performBlock:v8];

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __45__HMDIdentityRegistry_identityForIdentifier___block_invoke(void *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = *(a1[4] + 8);
  v3 = [v2 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v29;
    obj = v2;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;

        v11 = [v10 identity];
        v12 = [v11 identifier];
        v13 = [v12 isEqualToString:a1[5]];

        if (v13)
        {
          v21 = [v10 identity];
          v22 = *(a1[6] + 8);
          v23 = *(v22 + 40);
          *(v22 + 40) = v21;

          v24 = obj;
          goto LABEL_21;
        }

        v14 = v8;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        v17 = [v16 identity];
        v18 = [v17 identifier];
        v19 = [v18 isEqualToString:a1[5]];

        if (v19)
        {
          v20 = [v16 identity];

          v5 = v20;
        }
      }

      v2 = obj;
      v4 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = 0;
  }

  v25 = *(a1[6] + 8);
  v5 = v5;
  v24 = *(v25 + 40);
  *(v25 + 40) = v5;
LABEL_21:

  v26 = *MEMORY[0x277D85DE8];
}

- (NSArray)registeredIdentities
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__11258;
  v11 = __Block_byref_object_dispose__11259;
  v12 = 0;
  lock = [(HMDIdentityRegistry *)self lock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__HMDIdentityRegistry_registeredIdentities__block_invoke;
  v6[3] = &unk_279734898;
  v6[4] = self;
  v6[5] = &v7;
  [lock performBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __43__HMDIdentityRegistry_registeredIdentities__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  registeredIdentities = [(HMDIdentityRegistry *)self registeredIdentities];
  v5 = [v3 initWithName:@"Identities" value:registeredIdentities];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMDIdentityRegistry)init
{
  v8.receiver = self;
  v8.super_class = HMDIdentityRegistry;
  v2 = [(HMDIdentityRegistry *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAC60]);
    lock = v2->_lock;
    v2->_lock = v3;

    array = [MEMORY[0x277CBEB18] array];
    registeredIdentities = v2->_registeredIdentities;
    v2->_registeredIdentities = array;
  }

  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t27_11269 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t27_11269, &__block_literal_global_11270);
  }

  v3 = logCategory__hmf_once_v28_11271;

  return v3;
}

uint64_t __34__HMDIdentityRegistry_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v28_11271 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedRegistry
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HMDIdentityRegistry_sharedRegistry__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedRegistry_onceToken != -1)
  {
    dispatch_once(&sharedRegistry_onceToken, block);
  }

  v2 = sharedRegistry_identityRegistry;

  return v2;
}

void __37__HMDIdentityRegistry_sharedRegistry__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(HMDIdentityRegistry);
  v3 = sharedRegistry_identityRegistry;
  sharedRegistry_identityRegistry = v2;

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Creating HMDIdentity Registry", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

@end