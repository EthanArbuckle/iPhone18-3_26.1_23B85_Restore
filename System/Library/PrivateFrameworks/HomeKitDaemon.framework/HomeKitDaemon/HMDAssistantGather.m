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
  v7[3] = &unk_27868A7A0;
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
  v7[3] = &unk_27868A7A0;
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
  v236 = *MEMORY[0x277D85DE8];
  v153 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.gather-home-objects"];
  v3 = [MEMORY[0x277CBEB18] array];
  v215 = 0u;
  v216 = 0u;
  v217 = 0u;
  v218 = 0u;
  v169 = self;
  v4 = [(HMDAssistantGather *)self manager];
  v5 = [v4 homes];
  v6 = [v5 copy];

  obj = v6;
  v156 = [v6 countByEnumeratingWithState:&v215 objects:v235 count:16];
  if (v156)
  {
    v155 = *v216;
    v159 = *MEMORY[0x277CCF1A8];
    do
    {
      v7 = 0;
      do
      {
        if (*v216 != v155)
        {
          objc_enumerationMutation(obj);
        }

        v158 = v7;
        v8 = *(*(&v215 + 1) + 8 * v7);
        v9 = [v8 assistantObject];
        v161 = v8;
        v157 = v9;
        if (!v9)
        {
          v141 = objc_autoreleasePoolPush();
          v142 = v169;
          v143 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
          {
            v144 = HMFGetLogIdentifier();
            v145 = [v161 name];
            v146 = [v161 uuid];
            v147 = [v146 UUIDString];
            *buf = 138543874;
            v224 = v144;
            v225 = 2112;
            v226 = v145;
            v227 = 2112;
            v228 = v147;
            _os_log_impl(&dword_229538000, v143, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot create an assistant object for home %@/%@; skipping all objects in home", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v141);
          goto LABEL_142;
        }

        [v3 addObject:v9];
        v213 = 0u;
        v214 = 0u;
        v211 = 0u;
        v212 = 0u;
        v160 = [v8 accessories];
        v163 = [v160 countByEnumeratingWithState:&v211 objects:v234 count:16];
        if (!v163)
        {
          goto LABEL_74;
        }

        v162 = *v212;
        do
        {
          v10 = 0;
          do
          {
            if (*v212 != v162)
            {
              objc_enumerationMutation(v160);
            }

            v170 = v10;
            v11 = *(*(&v211 + 1) + 8 * v10);
            if ([v11 conformsToProtocol:&unk_283F010C8])
            {
              v12 = v11;
            }

            else
            {
              v12 = 0;
            }

            v13 = v12;

            v14 = [v13 matterAdapter];

            v15 = [v14 supportsRVC];
            v16 = v15;
            if (v15)
            {
              v17 = objc_autoreleasePoolPush();
              v18 = v169;
              v19 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                v20 = HMFGetLogIdentifier();
                v21 = MEMORY[0x277CCABB0];
                [v14 rvcRooms];
                v23 = v22 = v14;
                v24 = [v21 numberWithUnsignedInteger:{objc_msgSend(v23, "count")}];
                *buf = 138543874;
                v224 = v20;
                v225 = 2112;
                v226 = v24;
                v227 = 2112;
                v228 = v22;
                _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Adding RVC Rooms [%@] for %@", buf, 0x20u);

                v14 = v22;
              }

              objc_autoreleasePoolPop(v17);
              v25 = [v14 rvcRooms];
              v209[0] = MEMORY[0x277D85DD0];
              v209[1] = 3221225472;
              v209[2] = __43__HMDAssistantGather__gatherHomeKitObjects__block_invoke;
              v209[3] = &unk_27867F4C0;
              v26 = v3;
              v210 = v26;
              [v25 na_each:v209];

              v27 = objc_autoreleasePoolPush();
              v28 = v18;
              v29 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                v30 = HMFGetLogIdentifier();
                v31 = v14;
                v32 = MEMORY[0x277CCABB0];
                [v31 rvcZones];
                v33 = v174 = v27;
                v34 = [v32 numberWithUnsignedInteger:{objc_msgSend(v33, "count")}];
                *buf = 138543874;
                v224 = v30;
                v225 = 2112;
                v226 = v34;
                v227 = 2112;
                v228 = v31;
                _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Adding RVC Zones [%@] for %@", buf, 0x20u);

                v14 = v31;
                v27 = v174;
              }

              objc_autoreleasePoolPop(v27);
              v35 = [v14 rvcZones];
              v207[0] = MEMORY[0x277D85DD0];
              v207[1] = 3221225472;
              v207[2] = __43__HMDAssistantGather__gatherHomeKitObjects__block_invoke_217;
              v207[3] = &unk_27867F4E8;
              v207[4] = v28;
              v207[5] = v161;
              v208 = v26;
              [v35 na_each:v207];
            }

            v36 = v11;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v37 = v36;
            }

            else
            {
              v37 = 0;
            }

            v38 = v37;

            if (v38)
            {
              v39 = [v38 mediaProfile];

              if (v39)
              {
                v40 = [v38 mediaProfile];
                v41 = [v40 assistantObject];

                if (v41)
                {
                  [v3 addObject:v41];
                  v16 = 1;
                }
              }

              v205 = 0u;
              v206 = 0u;
              v203 = 0u;
              v204 = 0u;
              v42 = [v38 services];
              v43 = [v42 countByEnumeratingWithState:&v203 objects:v233 count:16];
              if (v43)
              {
                v44 = v43;
                v45 = *v204;
                do
                {
                  for (i = 0; i != v44; ++i)
                  {
                    if (*v204 != v45)
                    {
                      objc_enumerationMutation(v42);
                    }

                    v47 = *(*(&v203 + 1) + 8 * i);
                    if (([v47 isHidden] & 1) == 0)
                    {
                      v48 = [v47 assistantObject];
                      if (v48)
                      {
                        [v3 addObject:v48];
                        v16 = 1;
                      }
                    }
                  }

                  v44 = [v42 countByEnumeratingWithState:&v203 objects:v233 count:16];
                }

                while (v44);
              }
            }

            v201 = 0u;
            v202 = 0u;
            v199 = 0u;
            v200 = 0u;
            v49 = [v38 cameraProfiles];
            v50 = [v49 countByEnumeratingWithState:&v199 objects:v232 count:16];
            if (v50)
            {
              v51 = v50;
              v52 = *v200;
              do
              {
                for (j = 0; j != v51; ++j)
                {
                  if (*v200 != v52)
                  {
                    objc_enumerationMutation(v49);
                  }

                  v54 = [*(*(&v199 + 1) + 8 * j) assistantObject];
                  if (v54)
                  {
                    [v3 addObject:v54];
                    v16 = 1;
                  }
                }

                v51 = [v49 countByEnumeratingWithState:&v199 objects:v232 count:16];
              }

              while (v51);
            }

            v55 = v36;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v56 = v55;
            }

            else
            {
              v56 = 0;
            }

            v57 = v56;

            v175 = v38;
            if (v57)
            {
              v58 = [v57 mediaProfile];
              v59 = [v58 assistantObject];

              if (v59)
              {
                [v3 addObject:v59];
                v16 = 1;
              }
            }

            v60 = v55;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v61 = v60;
            }

            else
            {
              v61 = 0;
            }

            v62 = v61;

            v63 = [v62 audioDestinationController];
            v64 = [v63 data];
            v65 = [v64 destinationIdentifier];

            if (!v65)
            {
              goto LABEL_64;
            }

            v165 = v57;
            v66 = v14;
            v67 = [v62 home];
            v68 = [v62 name];
            v69 = [v63 assistantObjectWithHome:v67 name:v68];

            if (!v69)
            {
              v14 = v66;
              v57 = v165;
LABEL_64:
              if ((v16 & 1) == 0)
              {
                goto LABEL_72;
              }

              goto LABEL_65;
            }

            [v3 addObject:v69];

            v14 = v66;
            v57 = v165;
LABEL_65:
            v70 = [v175 hostAccessory];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v71 = v70;
            }

            else
            {
              v71 = 0;
            }

            v72 = v71;

            if (!v72)
            {
              v73 = [v60 assistantObject];
              if (v73)
              {
                [v3 addObject:v73];
              }
            }

LABEL_72:

            v10 = v170 + 1;
          }

          while (v170 + 1 != v163);
          v163 = [v160 countByEnumeratingWithState:&v211 objects:v234 count:16];
        }

        while (v163);
LABEL_74:

        v197 = 0u;
        v198 = 0u;
        v195 = 0u;
        v196 = 0u;
        v74 = [v161 serviceGroups];
        v75 = [v74 countByEnumeratingWithState:&v195 objects:v231 count:16];
        if (v75)
        {
          v76 = v75;
          v77 = *v196;
          v171 = v74;
          v166 = *v196;
          do
          {
            v78 = 0;
            v176 = v76;
            do
            {
              if (*v196 != v77)
              {
                objc_enumerationMutation(v74);
              }

              v79 = *(*(&v195 + 1) + 8 * v78);
              v80 = [v79 serviceUUIDs];
              v81 = [v80 count];

              if (v81)
              {
                v82 = [v79 assistantObject];
                if (v82)
                {
                  [v3 addObject:v82];
                }
              }

              else
              {
                v83 = objc_autoreleasePoolPush();
                v84 = v169;
                v85 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
                {
                  v86 = HMFGetLogIdentifier();
                  v87 = [v79 name];
                  v88 = [v161 name];
                  v89 = [v161 uuid];
                  v90 = [v89 UUIDString];
                  *buf = 138544130;
                  v224 = v86;
                  v225 = 2112;
                  v226 = v87;
                  v227 = 2112;
                  v228 = v88;
                  v229 = 2112;
                  v230 = v90;
                  _os_log_impl(&dword_229538000, v85, OS_LOG_TYPE_INFO, "%{public}@Dropping empty service group %@ in home %@/%@ from sync data", buf, 0x2Au);

                  v76 = v176;
                  v74 = v171;

                  v77 = v166;
                }

                objc_autoreleasePoolPop(v83);
              }

              ++v78;
            }

            while (v76 != v78);
            v76 = [v74 countByEnumeratingWithState:&v195 objects:v231 count:16];
          }

          while (v76);
        }

        v193 = 0u;
        v194 = 0u;
        v191 = 0u;
        v192 = 0u;
        v91 = [v161 rooms];
        v92 = [v91 countByEnumeratingWithState:&v191 objects:v222 count:16];
        if (v92)
        {
          v93 = v92;
          v94 = *v192;
          do
          {
            for (k = 0; k != v93; ++k)
            {
              if (*v192 != v94)
              {
                objc_enumerationMutation(v91);
              }

              v96 = [*(*(&v191 + 1) + 8 * k) assistantObject];
              if (v96)
              {
                [v3 addObject:v96];
              }
            }

            v93 = [v91 countByEnumeratingWithState:&v191 objects:v222 count:16];
          }

          while (v93);
        }

        v97 = [v161 roomForEntireHome];
        v98 = [v97 assistantObject];

        if (v98)
        {
          [v3 addObject:v98];
        }

        v164 = v98;
        v189 = 0u;
        v190 = 0u;
        v187 = 0u;
        v188 = 0u;
        v99 = [v161 zones];
        v100 = [v99 countByEnumeratingWithState:&v187 objects:v221 count:16];
        v101 = v159;
        if (v100)
        {
          v102 = v100;
          v103 = *v188;
          v172 = v99;
          v167 = *v188;
          do
          {
            v104 = 0;
            v177 = v102;
            do
            {
              if (*v188 != v103)
              {
                objc_enumerationMutation(v99);
              }

              v105 = *(*(&v187 + 1) + 8 * v104);
              v106 = [v105 roomUUIDs];
              v107 = [v106 count];

              if (v107)
              {
                v108 = [v105 assistantObject];
                if (v108)
                {
                  [v3 addObject:v108];
                }
              }

              else
              {
                v109 = objc_autoreleasePoolPush();
                v110 = v169;
                v111 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
                {
                  v112 = HMFGetLogIdentifier();
                  v113 = [v105 name];
                  v114 = [v161 name];
                  v115 = [v161 uuid];
                  v116 = [v115 UUIDString];
                  *buf = 138544130;
                  v224 = v112;
                  v225 = 2112;
                  v226 = v113;
                  v227 = 2112;
                  v228 = v114;
                  v229 = 2112;
                  v230 = v116;
                  _os_log_impl(&dword_229538000, v111, OS_LOG_TYPE_INFO, "%{public}@Dropping empty zone %@ in home %@/%@ from sync data", buf, 0x2Au);

                  v99 = v172;
                  v102 = v177;

                  v101 = v159;
                  v103 = v167;
                }

                objc_autoreleasePoolPop(v109);
              }

              ++v104;
            }

            while (v102 != v104);
            v102 = [v99 countByEnumeratingWithState:&v187 objects:v221 count:16];
          }

          while (v102);
        }

        v185 = 0u;
        v186 = 0u;
        v183 = 0u;
        v184 = 0u;
        v117 = [v161 actionSets];
        v118 = [v117 countByEnumeratingWithState:&v183 objects:v220 count:16];
        if (v118)
        {
          v119 = v118;
          v120 = *v184;
          v178 = *v184;
          v168 = v117;
          do
          {
            for (m = 0; m != v119; ++m)
            {
              if (*v184 != v120)
              {
                objc_enumerationMutation(v117);
              }

              v122 = *(*(&v183 + 1) + 8 * m);
              v123 = [v122 type];
              if ([v123 isEqualToString:v101])
              {
                v124 = [v122 actions];
                v125 = [v124 count];

                if (!v125)
                {
                  v126 = objc_autoreleasePoolPush();
                  v127 = v169;
                  v128 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
                  {
                    v129 = HMFGetLogIdentifier();
                    [v122 name];
                    v130 = v173 = v126;
                    v131 = [v161 name];
                    v132 = [v161 uuid];
                    v133 = [v132 UUIDString];
                    *buf = 138544130;
                    v224 = v129;
                    v225 = 2112;
                    v226 = v130;
                    v227 = 2112;
                    v228 = v131;
                    v229 = 2112;
                    v230 = v133;
                    _os_log_impl(&dword_229538000, v128, OS_LOG_TYPE_INFO, "%{public}@Dropping empty user-defined actionSet %@ in home %@/%@ from sync data", buf, 0x2Au);

                    v117 = v168;
                    v126 = v173;

                    v101 = v159;
                  }

                  objc_autoreleasePoolPop(v126);
                  v120 = v178;
                  continue;
                }
              }

              else
              {
              }

              v134 = [v122 assistantObject];
              if (v134)
              {
                [v3 addObject:v134];
              }
            }

            v119 = [v117 countByEnumeratingWithState:&v183 objects:v220 count:16];
          }

          while (v119);
        }

        v181 = 0u;
        v182 = 0u;
        v179 = 0u;
        v180 = 0u;
        v135 = [v161 mediaSystems];
        v136 = [v135 countByEnumeratingWithState:&v179 objects:v219 count:16];
        if (v136)
        {
          v137 = v136;
          v138 = *v180;
          do
          {
            for (n = 0; n != v137; ++n)
            {
              if (*v180 != v138)
              {
                objc_enumerationMutation(v135);
              }

              v140 = [*(*(&v179 + 1) + 8 * n) assistantObject];
              if (v140)
              {
                [v3 addObject:v140];
              }
            }

            v137 = [v135 countByEnumeratingWithState:&v179 objects:v219 count:16];
          }

          while (v137);
        }

LABEL_142:
        v7 = v158 + 1;
      }

      while (v158 + 1 != v156);
      v156 = [obj countByEnumeratingWithState:&v215 objects:v235 count:16];
    }

    while (v156);
  }

  v148 = objc_autoreleasePoolPush();
  v149 = v169;
  v150 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v150, OS_LOG_TYPE_DEBUG))
  {
    v151 = HMFGetLogIdentifier();
    *buf = 138543618;
    v224 = v151;
    v225 = 2112;
    v226 = v3;
    _os_log_impl(&dword_229538000, v150, OS_LOG_TYPE_DEBUG, "%{public}@currentHomekitObjects: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v148);
  [(HMDAssistantGather *)v149 setCurrentHomekitObjects:v3];

  v152 = *MEMORY[0x277D85DE8];
}

void __43__HMDAssistantGather__gatherHomeKitObjects__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 assistantObject];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

void __43__HMDAssistantGather__gatherHomeKitObjects__block_invoke_217(id *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 roomUUIDs];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [v3 assistantObject];
    if (v6)
    {
      [a1[6] addObject:v6];
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v3 name];
      v12 = [a1[5] name];
      v13 = [a1[5] uuid];
      v14 = [v13 UUIDString];
      v16 = 138544130;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Dropping empty zone %@ in home %@/%@ from sync data", &v16, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
  }

  v15 = *MEMORY[0x277D85DE8];
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
  if (logCategory__hmf_once_t0_200917 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_200917, &__block_literal_global_200918);
  }

  v3 = logCategory__hmf_once_v1_200919;

  return v3;
}

void __33__HMDAssistantGather_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_200919;
  logCategory__hmf_once_v1_200919 = v1;
}

@end