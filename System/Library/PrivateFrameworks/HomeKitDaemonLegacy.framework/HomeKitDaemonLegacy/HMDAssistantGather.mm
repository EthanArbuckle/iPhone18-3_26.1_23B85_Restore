@interface HMDAssistantGather
+ (id)logCategory;
- (HMDAssistantGather)initWithHomeManager:(id)a3 queue:(id)a4;
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
- (void)gatherHomeKitObjectsWithCompletion:(id)a3;
- (void)getSyncEntityObjectsWithCompletionHandler:(id)a3;
@end

@implementation HMDAssistantGather

- (HMDHomeManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (void)getSyncEntityObjectsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMDAssistantGather *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDAssistantGather_getSyncEntityObjectsWithCompletionHandler___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
  v2 = [(HMDAssistantGather *)self currentHomekitObjects];
  v3 = [v2 copy];

  return v3;
}

- (void)gatherHomeKitObjectsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMDAssistantGather *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMDAssistantGather_gatherHomeKitObjectsWithCompletion___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
  v3 = [MEMORY[0x277CBEB18] array];
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v136 = self;
  v4 = [(HMDAssistantGather *)self manager];
  v5 = [v4 homes];
  v6 = [v5 copy];

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
        v10 = [v9 assistantObject];
        v133 = v10;
        if (!v10)
        {
          v117 = objc_autoreleasePoolPush();
          v118 = v136;
          v119 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
          {
            v120 = HMFGetLogIdentifier();
            v121 = [v9 name];
            v122 = [v9 uuid];
            v123 = [v122 UUIDString];
            *buf = 138543874;
            v194 = v120;
            v195 = 2112;
            v196 = v121;
            v197 = 2112;
            v198 = v123;
            _os_log_impl(&dword_2531F8000, v119, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot create an assistant object for home %@/%@; skipping all objects in home", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v117);
          goto LABEL_133;
        }

        [v3 addObject:v10];
        v183 = 0u;
        v184 = 0u;
        v181 = 0u;
        v182 = 0u;
        v135 = [v9 accessories];
        v140 = [v135 countByEnumeratingWithState:&v181 objects:v204 count:16];
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
              objc_enumerationMutation(v135);
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
              v15 = [v14 mediaProfile];

              if (v15)
              {
                v16 = [v14 mediaProfile];
                v17 = [v16 assistantObject];

                v18 = v17 != 0;
                if (v17)
                {
                  [v3 addObject:v17];
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
              v19 = [v14 services];
              v20 = [v19 countByEnumeratingWithState:&v177 objects:v203 count:16];
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
                      objc_enumerationMutation(v19);
                    }

                    v24 = *(*(&v177 + 1) + 8 * i);
                    if (([v24 isHidden] & 1) == 0)
                    {
                      v25 = [v24 assistantObject];
                      if (v25)
                      {
                        [v3 addObject:v25];
                        v18 = 1;
                      }
                    }
                  }

                  v21 = [v19 countByEnumeratingWithState:&v177 objects:v203 count:16];
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
            v26 = [v14 cameraProfiles];
            v27 = [v26 countByEnumeratingWithState:&v173 objects:v202 count:16];
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
                    objc_enumerationMutation(v26);
                  }

                  v31 = [*(*(&v173 + 1) + 8 * j) assistantObject];
                  if (v31)
                  {
                    [v3 addObject:v31];
                    v18 = 1;
                  }
                }

                v28 = [v26 countByEnumeratingWithState:&v173 objects:v202 count:16];
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
              v35 = [v34 mediaProfile];
              v36 = [v35 assistantObject];

              if (v36)
              {
                [v3 addObject:v36];
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

            v40 = [v39 audioDestinationController];
            v41 = [v40 data];
            v42 = [v41 destinationIdentifier];

            if (!v42)
            {
              goto LABEL_57;
            }

            v43 = [v39 home];
            v44 = [v39 name];
            v45 = [v40 assistantObjectWithHome:v43 name:v44];

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

            [v3 addObject:v45];

            v9 = v144;
LABEL_58:
            v46 = [v149 hostAccessory];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if ((isKindOfClass & 1) == 0 || !v46)
            {
              v48 = [v37 assistantObject];
              if (v48)
              {
                [v3 addObject:v48];
              }
            }

LABEL_63:

            v11 = v145 + 1;
          }

          while (v145 + 1 != v140);
          v140 = [v135 countByEnumeratingWithState:&v181 objects:v204 count:16];
        }

        while (v140);
LABEL_65:

        v171 = 0u;
        v172 = 0u;
        v169 = 0u;
        v170 = 0u;
        v49 = [v9 serviceGroups];
        v50 = [v49 countByEnumeratingWithState:&v169 objects:v201 count:16];
        if (v50)
        {
          v51 = v50;
          v52 = *v170;
          v146 = v49;
          v141 = *v170;
          do
          {
            v53 = 0;
            v150 = v51;
            do
            {
              if (*v170 != v52)
              {
                objc_enumerationMutation(v49);
              }

              v54 = *(*(&v169 + 1) + 8 * v53);
              v55 = [v54 serviceUUIDs];
              v56 = [v55 count];

              if (v56)
              {
                v57 = [v54 assistantObject];
                if (v57)
                {
                  [v3 addObject:v57];
                }
              }

              else
              {
                v58 = objc_autoreleasePoolPush();
                v59 = v136;
                v60 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
                {
                  v61 = HMFGetLogIdentifier();
                  v62 = [v54 name];
                  v63 = [v144 name];
                  v64 = [v144 uuid];
                  v65 = [v64 UUIDString];
                  *buf = 138544130;
                  v194 = v61;
                  v195 = 2112;
                  v196 = v62;
                  v197 = 2112;
                  v198 = v63;
                  v199 = 2112;
                  v200 = v65;
                  _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_INFO, "%{public}@Dropping empty service group %@ in home %@/%@ from sync data", buf, 0x2Au);

                  v49 = v146;
                  v52 = v141;

                  v51 = v150;
                }

                objc_autoreleasePoolPop(v58);
              }

              ++v53;
            }

            while (v51 != v53);
            v51 = [v49 countByEnumeratingWithState:&v169 objects:v201 count:16];
          }

          while (v51);
        }

        v167 = 0u;
        v168 = 0u;
        v165 = 0u;
        v166 = 0u;
        v66 = v144;
        v67 = [v144 rooms];
        v68 = [v67 countByEnumeratingWithState:&v165 objects:v192 count:16];
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
                objc_enumerationMutation(v67);
              }

              v72 = [*(*(&v165 + 1) + 8 * k) assistantObject];
              if (v72)
              {
                [v3 addObject:v72];
              }
            }

            v69 = [v67 countByEnumeratingWithState:&v165 objects:v192 count:16];
          }

          while (v69);
        }

        v73 = [v144 roomForEntireHome];
        v74 = [v73 assistantObject];

        if (v74)
        {
          [v3 addObject:v74];
        }

        v139 = v74;
        v163 = 0u;
        v164 = 0u;
        v161 = 0u;
        v162 = 0u;
        v75 = [v144 zones];
        v76 = [v75 countByEnumeratingWithState:&v161 objects:v191 count:16];
        if (v76)
        {
          v77 = v76;
          v78 = *v162;
          v142 = v75;
          do
          {
            v79 = 0;
            v147 = v77;
            do
            {
              if (*v162 != v78)
              {
                objc_enumerationMutation(v75);
              }

              v80 = *(*(&v161 + 1) + 8 * v79);
              v81 = [v80 roomUUIDs];
              v82 = [v81 count];

              if (v82)
              {
                v83 = [v80 assistantObject];
                if (v83)
                {
                  [v3 addObject:v83];
                }
              }

              else
              {
                v84 = objc_autoreleasePoolPush();
                v85 = v136;
                v86 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
                {
                  v87 = HMFGetLogIdentifier();
                  v88 = [v80 name];
                  v89 = [v66 name];
                  [v66 uuid];
                  v151 = v84;
                  v91 = v90 = v78;
                  v92 = [v91 UUIDString];
                  *buf = 138544130;
                  v194 = v87;
                  v195 = 2112;
                  v196 = v88;
                  v197 = 2112;
                  v198 = v89;
                  v199 = 2112;
                  v200 = v92;
                  _os_log_impl(&dword_2531F8000, v86, OS_LOG_TYPE_INFO, "%{public}@Dropping empty zone %@ in home %@/%@ from sync data", buf, 0x2Au);

                  v78 = v90;
                  v84 = v151;

                  v75 = v142;
                  v66 = v144;

                  v77 = v147;
                }

                objc_autoreleasePoolPop(v84);
              }

              ++v79;
            }

            while (v77 != v79);
            v77 = [v75 countByEnumeratingWithState:&v161 objects:v191 count:16];
          }

          while (v77);
        }

        v159 = 0u;
        v160 = 0u;
        v157 = 0u;
        v158 = 0u;
        v93 = [v66 actionSets];
        v94 = [v93 countByEnumeratingWithState:&v157 objects:v190 count:16];
        if (v94)
        {
          v95 = v94;
          v96 = *v158;
          v143 = v93;
          v152 = *v158;
          do
          {
            for (m = 0; m != v95; ++m)
            {
              if (*v158 != v96)
              {
                objc_enumerationMutation(v93);
              }

              v98 = *(*(&v157 + 1) + 8 * m);
              v99 = [v98 type];
              if ([v99 isEqualToString:v137])
              {
                v100 = [v98 actions];
                v101 = [v100 count];

                if (!v101)
                {
                  v102 = objc_autoreleasePoolPush();
                  v103 = v136;
                  v104 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
                  {
                    HMFGetLogIdentifier();
                    v105 = v148 = v102;
                    v106 = [v98 name];
                    v107 = [v66 name];
                    v108 = [v66 uuid];
                    v109 = [v108 UUIDString];
                    *buf = 138544130;
                    v194 = v105;
                    v195 = 2112;
                    v196 = v106;
                    v197 = 2112;
                    v198 = v107;
                    v199 = 2112;
                    v200 = v109;
                    _os_log_impl(&dword_2531F8000, v104, OS_LOG_TYPE_INFO, "%{public}@Dropping empty user-defined actionSet %@ in home %@/%@ from sync data", buf, 0x2Au);

                    v93 = v143;
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

              v110 = [v98 assistantObject];
              if (v110)
              {
                [v3 addObject:v110];
              }
            }

            v95 = [v93 countByEnumeratingWithState:&v157 objects:v190 count:16];
          }

          while (v95);
        }

        v155 = 0u;
        v156 = 0u;
        v153 = 0u;
        v154 = 0u;
        v111 = [v66 mediaSystems];
        v112 = [v111 countByEnumeratingWithState:&v153 objects:v189 count:16];
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
                objc_enumerationMutation(v111);
              }

              v116 = [*(*(&v153 + 1) + 8 * n) assistantObject];
              if (v116)
              {
                [v3 addObject:v116];
              }
            }

            v113 = [v111 countByEnumeratingWithState:&v153 objects:v189 count:16];
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
  v125 = v136;
  v126 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
  {
    v127 = HMFGetLogIdentifier();
    *buf = 138543618;
    v194 = v127;
    v195 = 2112;
    v196 = v3;
    _os_log_impl(&dword_2531F8000, v126, OS_LOG_TYPE_DEBUG, "%{public}@currentHomekitObjects: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v124);
  [(HMDAssistantGather *)v125 setCurrentHomekitObjects:v3];

  v128 = *MEMORY[0x277D85DE8];
}

- (NSString)currentHomeAssistantIdentifier
{
  v2 = [(HMDAssistantGather *)self _getCurrentHome];
  v3 = [v2 urlString];

  return v3;
}

- (NSString)currentHomeName
{
  v2 = [(HMDAssistantGather *)self _getCurrentHome];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 name];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)primaryHomeAssistantIdentifier
{
  v2 = [(HMDAssistantGather *)self _getPrimaryHome];
  v3 = [v2 urlString];

  return v3;
}

- (NSString)primaryHomeName
{
  v2 = [(HMDAssistantGather *)self _getPrimaryHome];
  v3 = [v2 name];

  return v3;
}

- (int64_t)homeCount
{
  v2 = [(HMDAssistantGather *)self manager];
  v3 = [v2 homes];
  v4 = [v3 count];

  return v4;
}

- (id)_getCurrentHome
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(HMDAssistantGather *)self manager];
  v3 = [v2 currentHomeUUID];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v2 homes];
  v5 = [v4 copy];

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
        v10 = [v9 uuid];
        v11 = [v3 isEqual:v10];

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
  v2 = [(HMDAssistantGather *)self manager];
  v3 = [v2 primaryHomeUUID];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v2 homes];
  v5 = [v4 copy];

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
        v10 = [v9 uuid];
        v11 = [v3 isEqual:v10];

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

- (HMDAssistantGather)initWithHomeManager:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMDAssistantGather;
  v8 = [(HMDAssistantGather *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_manager, v6);
    objc_storeStrong(&v9->_workQueue, a4);
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