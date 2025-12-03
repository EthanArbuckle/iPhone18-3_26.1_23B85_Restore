@interface HMDAssistantGather
+ (id)logCategory;
- (HMDAssistantGather)initWithHomeManager:(id)manager queue:(id)queue;
- (HMDHomeManager)manager;
- (NSArray)homeKitObjects;
- (NSString)currentHomeAssistantIdentifier;
- (NSString)currentHomeName;
- (NSString)primaryHomeAssistantIdentifier;
- (NSString)primaryHomeName;
- (id)_getCurrentHome;
- (id)_getPrimaryHome;
- (int64_t)homeCount;
- (void)_gatherHomeKitObjects;
- (void)gatherHomeKitObjectsWithCompletion:(id)completion;
- (void)getSyncEntityObjectsWithCompletionHandler:(id)handler;
@end

@implementation HMDAssistantGather

- (HMDHomeManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (void)getSyncEntityObjectsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = [(HMDAssistantGather *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDAssistantGather_getSyncEntityObjectsWithCompletionHandler___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(workQueue, v7);
}

void __64__HMDAssistantGather_getSyncEntityObjectsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeKitObjects];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = entityFromObject(*(*(&v13 + 1) + 8 * v8), 1);
        v10 = v9;
        if (v9)
        {
          v11 = [v9 dictionary];
          [v3 addObject:v11];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x277D85DE8];
}

- (NSArray)homeKitObjects
{
  currentHomekitObjects = [(HMDAssistantGather *)self currentHomekitObjects];
  v3 = [currentHomekitObjects copy];

  return v3;
}

- (void)gatherHomeKitObjectsWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDAssistantGather *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMDAssistantGather_gatherHomeKitObjectsWithCompletion___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

void __57__HMDAssistantGather_gatherHomeKitObjectsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _gatherHomeKitObjects];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [*(a1 + 32) currentHomekitObjects];
    (*(v3 + 16))(v3, [v4 count]);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)_gatherHomeKitObjects
{
  v206 = *MEMORY[0x277D85DE8];
  v129 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.gather-home-objects"];
  array = [MEMORY[0x277CBEB18] array];
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  selfCopy = self;
  manager = [(HMDAssistantGather *)self manager];
  homes = [manager homes];
  v6 = [homes copy];

  obj = v6;
  v132 = [v6 countByEnumeratingWithState:&v185 objects:v205 count:16];
  if (v132)
  {
    v131 = *v186;
    v137 = *MEMORY[0x277CCF1A8];
    do
    {
      v7 = 0;
      do
      {
        if (*v186 != v131)
        {
          v8 = v7;
          objc_enumerationMutation(obj);
          v7 = v8;
        }

        v134 = v7;
        v9 = *(*(&v185 + 1) + 8 * v7);
        assistantObject = [v9 assistantObject];
        v133 = assistantObject;
        if (!assistantObject)
        {
          v117 = objc_autoreleasePoolPush();
          v118 = selfCopy;
          v119 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
          {
            v120 = HMFGetLogIdentifier();
            name = [v9 name];
            uuid = [v9 uuid];
            uUIDString = [uuid UUIDString];
            *buf = 138543874;
            v194 = v120;
            v195 = 2112;
            v196 = name;
            v197 = 2112;
            v198 = uUIDString;
            _os_log_impl(&dword_2531F8000, v119, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot create an assistant object for home %@/%@; skipping all objects in home", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v117);
          goto LABEL_133;
        }

        [array addObject:assistantObject];
        v183 = 0u;
        v184 = 0u;
        v181 = 0u;
        v182 = 0u;
        accessories = [v9 accessories];
        v140 = [accessories countByEnumeratingWithState:&v181 objects:v204 count:16];
        v144 = v9;
        if (!v140)
        {
          goto LABEL_65;
        }

        v138 = *v182;
        do
        {
          v11 = 0;
          do
          {
            if (*v182 != v138)
            {
              objc_enumerationMutation(accessories);
            }

            v145 = v11;
            v12 = *(*(&v181 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = v12;
            }

            else
            {
              v13 = 0;
            }

            v14 = v13;

            if (v14)
            {
              mediaProfile = [v14 mediaProfile];

              if (mediaProfile)
              {
                mediaProfile2 = [v14 mediaProfile];
                assistantObject2 = [mediaProfile2 assistantObject];

                v18 = assistantObject2 != 0;
                if (assistantObject2)
                {
                  [array addObject:assistantObject2];
                }
              }

              else
              {
                v18 = 0;
              }

              v179 = 0u;
              v180 = 0u;
              v177 = 0u;
              v178 = 0u;
              services = [v14 services];
              v20 = [services countByEnumeratingWithState:&v177 objects:v203 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v178;
                do
                {
                  for (i = 0; i != v21; ++i)
                  {
                    if (*v178 != v22)
                    {
                      objc_enumerationMutation(services);
                    }

                    v24 = *(*(&v177 + 1) + 8 * i);
                    if (([v24 isHidden] & 1) == 0)
                    {
                      assistantObject3 = [v24 assistantObject];
                      if (assistantObject3)
                      {
                        [array addObject:assistantObject3];
                        v18 = 1;
                      }
                    }
                  }

                  v21 = [services countByEnumeratingWithState:&v177 objects:v203 count:16];
                }

                while (v21);
              }
            }

            else
            {
              v18 = 0;
            }

            v175 = 0u;
            v176 = 0u;
            v173 = 0u;
            v174 = 0u;
            cameraProfiles = [v14 cameraProfiles];
            v27 = [cameraProfiles countByEnumeratingWithState:&v173 objects:v202 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v174;
              do
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v174 != v29)
                  {
                    objc_enumerationMutation(cameraProfiles);
                  }

                  assistantObject4 = [*(*(&v173 + 1) + 8 * j) assistantObject];
                  if (assistantObject4)
                  {
                    [array addObject:assistantObject4];
                    v18 = 1;
                  }
                }

                v28 = [cameraProfiles countByEnumeratingWithState:&v173 objects:v202 count:16];
              }

              while (v28);
            }

            v32 = v12;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = v32;
            }

            else
            {
              v33 = 0;
            }

            v34 = v33;

            v149 = v14;
            if (v34)
            {
              mediaProfile3 = [v34 mediaProfile];
              assistantObject5 = [mediaProfile3 assistantObject];

              if (assistantObject5)
              {
                [array addObject:assistantObject5];
                v18 = 1;
              }
            }

            v37 = v32;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v38 = v37;
            }

            else
            {
              v38 = 0;
            }

            v39 = v38;

            audioDestinationController = [v39 audioDestinationController];
            data = [audioDestinationController data];
            destinationIdentifier = [data destinationIdentifier];

            if (!destinationIdentifier)
            {
              goto LABEL_57;
            }

            home = [v39 home];
            name2 = [v39 name];
            v45 = [audioDestinationController assistantObjectWithHome:home name:name2];

            if (!v45)
            {
              v9 = v144;
LABEL_57:
              if (!v18)
              {
                goto LABEL_63;
              }

              goto LABEL_58;
            }

            [array addObject:v45];

            v9 = v144;
LABEL_58:
            hostAccessory = [v149 hostAccessory];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if ((isKindOfClass & 1) == 0 || !hostAccessory)
            {
              assistantObject6 = [v37 assistantObject];
              if (assistantObject6)
              {
                [array addObject:assistantObject6];
              }
            }

LABEL_63:

            v11 = v145 + 1;
          }

          while (v145 + 1 != v140);
          v140 = [accessories countByEnumeratingWithState:&v181 objects:v204 count:16];
        }

        while (v140);
LABEL_65:

        v171 = 0u;
        v172 = 0u;
        v169 = 0u;
        v170 = 0u;
        serviceGroups = [v9 serviceGroups];
        v50 = [serviceGroups countByEnumeratingWithState:&v169 objects:v201 count:16];
        if (v50)
        {
          v51 = v50;
          v52 = *v170;
          v146 = serviceGroups;
          v141 = *v170;
          do
          {
            v53 = 0;
            v150 = v51;
            do
            {
              if (*v170 != v52)
              {
                objc_enumerationMutation(serviceGroups);
              }

              v54 = *(*(&v169 + 1) + 8 * v53);
              serviceUUIDs = [v54 serviceUUIDs];
              v56 = [serviceUUIDs count];

              if (v56)
              {
                assistantObject7 = [v54 assistantObject];
                if (assistantObject7)
                {
                  [array addObject:assistantObject7];
                }
              }

              else
              {
                v58 = objc_autoreleasePoolPush();
                v59 = selfCopy;
                v60 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
                {
                  v61 = HMFGetLogIdentifier();
                  name3 = [v54 name];
                  name4 = [v144 name];
                  uuid2 = [v144 uuid];
                  uUIDString2 = [uuid2 UUIDString];
                  *buf = 138544130;
                  v194 = v61;
                  v195 = 2112;
                  v196 = name3;
                  v197 = 2112;
                  v198 = name4;
                  v199 = 2112;
                  v200 = uUIDString2;
                  _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_INFO, "%{public}@Dropping empty service group %@ in home %@/%@ from sync data", buf, 0x2Au);

                  serviceGroups = v146;
                  v52 = v141;

                  v51 = v150;
                }

                objc_autoreleasePoolPop(v58);
              }

              ++v53;
            }

            while (v51 != v53);
            v51 = [serviceGroups countByEnumeratingWithState:&v169 objects:v201 count:16];
          }

          while (v51);
        }

        v167 = 0u;
        v168 = 0u;
        v165 = 0u;
        v166 = 0u;
        v66 = v144;
        rooms = [v144 rooms];
        v68 = [rooms countByEnumeratingWithState:&v165 objects:v192 count:16];
        if (v68)
        {
          v69 = v68;
          v70 = *v166;
          do
          {
            for (k = 0; k != v69; ++k)
            {
              if (*v166 != v70)
              {
                objc_enumerationMutation(rooms);
              }

              assistantObject8 = [*(*(&v165 + 1) + 8 * k) assistantObject];
              if (assistantObject8)
              {
                [array addObject:assistantObject8];
              }
            }

            v69 = [rooms countByEnumeratingWithState:&v165 objects:v192 count:16];
          }

          while (v69);
        }

        roomForEntireHome = [v144 roomForEntireHome];
        assistantObject9 = [roomForEntireHome assistantObject];

        if (assistantObject9)
        {
          [array addObject:assistantObject9];
        }

        v139 = assistantObject9;
        v163 = 0u;
        v164 = 0u;
        v161 = 0u;
        v162 = 0u;
        zones = [v144 zones];
        v76 = [zones countByEnumeratingWithState:&v161 objects:v191 count:16];
        if (v76)
        {
          v77 = v76;
          v78 = *v162;
          v142 = zones;
          do
          {
            v79 = 0;
            v147 = v77;
            do
            {
              if (*v162 != v78)
              {
                objc_enumerationMutation(zones);
              }

              v80 = *(*(&v161 + 1) + 8 * v79);
              roomUUIDs = [v80 roomUUIDs];
              v82 = [roomUUIDs count];

              if (v82)
              {
                assistantObject10 = [v80 assistantObject];
                if (assistantObject10)
                {
                  [array addObject:assistantObject10];
                }
              }

              else
              {
                v84 = objc_autoreleasePoolPush();
                v85 = selfCopy;
                v86 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
                {
                  v87 = HMFGetLogIdentifier();
                  name5 = [v80 name];
                  name6 = [v66 name];
                  [v66 uuid];
                  v151 = v84;
                  v91 = v90 = v78;
                  uUIDString3 = [v91 UUIDString];
                  *buf = 138544130;
                  v194 = v87;
                  v195 = 2112;
                  v196 = name5;
                  v197 = 2112;
                  v198 = name6;
                  v199 = 2112;
                  v200 = uUIDString3;
                  _os_log_impl(&dword_2531F8000, v86, OS_LOG_TYPE_INFO, "%{public}@Dropping empty zone %@ in home %@/%@ from sync data", buf, 0x2Au);

                  v78 = v90;
                  v84 = v151;

                  zones = v142;
                  v66 = v144;

                  v77 = v147;
                }

                objc_autoreleasePoolPop(v84);
              }

              ++v79;
            }

            while (v77 != v79);
            v77 = [zones countByEnumeratingWithState:&v161 objects:v191 count:16];
          }

          while (v77);
        }

        v159 = 0u;
        v160 = 0u;
        v157 = 0u;
        v158 = 0u;
        actionSets = [v66 actionSets];
        v94 = [actionSets countByEnumeratingWithState:&v157 objects:v190 count:16];
        if (v94)
        {
          v95 = v94;
          v96 = *v158;
          v143 = actionSets;
          v152 = *v158;
          do
          {
            for (m = 0; m != v95; ++m)
            {
              if (*v158 != v96)
              {
                objc_enumerationMutation(actionSets);
              }

              v98 = *(*(&v157 + 1) + 8 * m);
              type = [v98 type];
              if ([type isEqualToString:v137])
              {
                actions = [v98 actions];
                v101 = [actions count];

                if (!v101)
                {
                  v102 = objc_autoreleasePoolPush();
                  v103 = selfCopy;
                  v104 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
                  {
                    HMFGetLogIdentifier();
                    v105 = v148 = v102;
                    name7 = [v98 name];
                    name8 = [v66 name];
                    uuid3 = [v66 uuid];
                    uUIDString4 = [uuid3 UUIDString];
                    *buf = 138544130;
                    v194 = v105;
                    v195 = 2112;
                    v196 = name7;
                    v197 = 2112;
                    v198 = name8;
                    v199 = 2112;
                    v200 = uUIDString4;
                    _os_log_impl(&dword_2531F8000, v104, OS_LOG_TYPE_INFO, "%{public}@Dropping empty user-defined actionSet %@ in home %@/%@ from sync data", buf, 0x2Au);

                    actionSets = v143;
                    v66 = v144;

                    v102 = v148;
                  }

                  objc_autoreleasePoolPop(v102);
                  v96 = v152;
                  continue;
                }
              }

              else
              {
              }

              assistantObject11 = [v98 assistantObject];
              if (assistantObject11)
              {
                [array addObject:assistantObject11];
              }
            }

            v95 = [actionSets countByEnumeratingWithState:&v157 objects:v190 count:16];
          }

          while (v95);
        }

        v155 = 0u;
        v156 = 0u;
        v153 = 0u;
        v154 = 0u;
        mediaSystems = [v66 mediaSystems];
        v112 = [mediaSystems countByEnumeratingWithState:&v153 objects:v189 count:16];
        if (v112)
        {
          v113 = v112;
          v114 = *v154;
          do
          {
            for (n = 0; n != v113; ++n)
            {
              if (*v154 != v114)
              {
                objc_enumerationMutation(mediaSystems);
              }

              assistantObject12 = [*(*(&v153 + 1) + 8 * n) assistantObject];
              if (assistantObject12)
              {
                [array addObject:assistantObject12];
              }
            }

            v113 = [mediaSystems countByEnumeratingWithState:&v153 objects:v189 count:16];
          }

          while (v113);
        }

LABEL_133:
        v7 = v134 + 1;
      }

      while (v134 + 1 != v132);
      v132 = [obj countByEnumeratingWithState:&v185 objects:v205 count:16];
    }

    while (v132);
  }

  v124 = objc_autoreleasePoolPush();
  v125 = selfCopy;
  v126 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
  {
    v127 = HMFGetLogIdentifier();
    *buf = 138543618;
    v194 = v127;
    v195 = 2112;
    v196 = array;
    _os_log_impl(&dword_2531F8000, v126, OS_LOG_TYPE_DEBUG, "%{public}@currentHomekitObjects: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v124);
  [(HMDAssistantGather *)v125 setCurrentHomekitObjects:array];

  v128 = *MEMORY[0x277D85DE8];
}

- (NSString)currentHomeAssistantIdentifier
{
  _getCurrentHome = [(HMDAssistantGather *)self _getCurrentHome];
  urlString = [_getCurrentHome urlString];

  return urlString;
}

- (NSString)currentHomeName
{
  _getCurrentHome = [(HMDAssistantGather *)self _getCurrentHome];
  v3 = _getCurrentHome;
  if (_getCurrentHome)
  {
    name = [_getCurrentHome name];
  }

  else
  {
    name = 0;
  }

  return name;
}

- (NSString)primaryHomeAssistantIdentifier
{
  _getPrimaryHome = [(HMDAssistantGather *)self _getPrimaryHome];
  urlString = [_getPrimaryHome urlString];

  return urlString;
}

- (NSString)primaryHomeName
{
  _getPrimaryHome = [(HMDAssistantGather *)self _getPrimaryHome];
  name = [_getPrimaryHome name];

  return name;
}

- (int64_t)homeCount
{
  manager = [(HMDAssistantGather *)self manager];
  homes = [manager homes];
  v4 = [homes count];

  return v4;
}

- (id)_getCurrentHome
{
  v19 = *MEMORY[0x277D85DE8];
  manager = [(HMDAssistantGather *)self manager];
  currentHomeUUID = [manager currentHomeUUID];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  homes = [manager homes];
  v5 = [homes copy];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        uuid = [v9 uuid];
        v11 = [currentHomeUUID isEqual:uuid];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_getPrimaryHome
{
  v19 = *MEMORY[0x277D85DE8];
  manager = [(HMDAssistantGather *)self manager];
  primaryHomeUUID = [manager primaryHomeUUID];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  homes = [manager homes];
  v5 = [homes copy];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        uuid = [v9 uuid];
        v11 = [primaryHomeUUID isEqual:uuid];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMDAssistantGather)initWithHomeManager:(id)manager queue:(id)queue
{
  managerCopy = manager;
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = HMDAssistantGather;
  v8 = [(HMDAssistantGather *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_manager, managerCopy);
    objc_storeStrong(&v9->_workQueue, queue);
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_134031 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_134031, &__block_literal_global_134032);
  }

  v3 = logCategory__hmf_once_v1_134033;

  return v3;
}

uint64_t __33__HMDAssistantGather_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_134033;
  logCategory__hmf_once_v1_134033 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end