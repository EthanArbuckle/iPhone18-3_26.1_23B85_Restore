@interface IDSDevice(HMDAccounts)
- (HMDDeviceCapabilities)hmd_capabilities;
- (id)hmd_handlesForService:()HMDAccounts;
- (id)hmd_productInfo;
- (id)hmd_version;
@end

@implementation IDSDevice(HMDAccounts)

- (id)hmd_handlesForService:()HMDAccounts
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v6 = objc_alloc(MEMORY[0x277CCAD78]);
  v7 = [a1 uniqueIDOverride];
  v8 = [v6 initWithUUIDString:v7];

  if (v8)
  {
    v9 = [[_HMDLocalDeviceHandle alloc] initWithDeviceIdentifier:v8];
    if (v9)
    {
      v10 = [[HMDDeviceHandle alloc] initWithInternal:v9];
      [v5 addObject:v10];
    }

    v11 = [a1 pushToken];
    v12 = [v4 hmd_preferredHandle];
    if (v11 && ([v11 hmf_isZeroed] & 1) == 0 && v12)
    {
      v13 = [[_HMDGlobalDeviceHandle alloc] initWithPushToken:v11 accountHandle:v12];
      if (!v13)
      {
LABEL_12:

        v16 = [v5 copy];
        goto LABEL_16;
      }

      v14 = [[HMDDeviceHandle alloc] initWithInternal:v13];
    }

    else
    {
      v15 = IDSCopyIDForDevice();
      v13 = [v15 mutableCopy];

      [(_HMDGlobalDeviceHandle *)v13 replaceOccurrencesOfString:@"self-token" withString:@"token" options:1 range:0, [(_HMDGlobalDeviceHandle *)v13 length]];
      v14 = [HMDDeviceHandle deviceHandleForDestination:v13];
      if (!v14)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    [v5 addObject:v14];
    goto LABEL_11;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = a1;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    v23 = 138543362;
    v24 = v20;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to create device identifier", &v23, 0xCu);
  }

  objc_autoreleasePoolPop(v17);
  v16 = MEMORY[0x277CBEBF8];
LABEL_16:

  v21 = *MEMORY[0x277D85DE8];

  return v16;
}

- (HMDDeviceCapabilities)hmd_capabilities
{
  v2 = [HMDDeviceCapabilities alloc];
  v3 = [a1 hmd_productInfo];
  v4 = [(HMDDeviceCapabilities *)v2 initWithProductInfo:v3];

  return v4;
}

- (id)hmd_version
{
  v2 = [a1 hmd_productInfo];
  [a1 operatingSystemVersion];
  v3 = [v2 productPlatform];
  if (v3 <= 2)
  {
    if (v3 != 1)
    {
      if (v3 != 2)
      {
        goto LABEL_126;
      }

      if ([v2 productClass] == 4)
      {
        v25 = *MEMORY[0x277D0F350];
        v186 = *(MEMORY[0x277D0F350] + 16);
        v10 = 0uLL;
        if (!HMFOperatingSystemVersionCompare())
        {
          goto LABEL_77;
        }
      }

      v26 = *MEMORY[0x277D0F510];
      v187 = *(MEMORY[0x277D0F510] + 16);
      v11 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
LABEL_55:
        v5 = [HMDHomeKitVersion version1:v11];
        goto LABEL_127;
      }

      v27 = *MEMORY[0x277D0F358];
      v188 = *(MEMORY[0x277D0F358] + 16);
      v10 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_77;
      }

      v28 = *MEMORY[0x277D0F710];
      v189 = *(MEMORY[0x277D0F710] + 16);
      v10 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_77;
      }

      v29 = *MEMORY[0x277D0F280];
      v190 = *(MEMORY[0x277D0F280] + 16);
      v12 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_102;
      }

      v30 = *MEMORY[0x277D0F388];
      v191 = *(MEMORY[0x277D0F388] + 16);
      v12 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_102;
      }

      v31 = *MEMORY[0x277D0F6F0];
      v192 = *(MEMORY[0x277D0F6F0] + 16);
      v12 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_102;
      }

      v32 = *MEMORY[0x277D0F2B0];
      v193 = *(MEMORY[0x277D0F2B0] + 16);
      v13 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_131;
      }

      v33 = *MEMORY[0x277D0F378];
      v194 = *(MEMORY[0x277D0F378] + 16);
      v13 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_131;
      }

      v34 = *MEMORY[0x277D0F390];
      v195 = *(MEMORY[0x277D0F390] + 16);
      v13 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_131;
      }

      v35 = *MEMORY[0x277D0F5A0];
      v196 = *(MEMORY[0x277D0F5A0] + 16);
      v13 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_131;
      }

      v36 = *MEMORY[0x277D0F590];
      v197 = *(MEMORY[0x277D0F590] + 16);
      v14 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_85;
      }

      v37 = *MEMORY[0x277D0F598];
      v198 = *(MEMORY[0x277D0F598] + 16);
      v14 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_85;
      }

      v38 = *MEMORY[0x277D0F748];
      v199 = *(MEMORY[0x277D0F748] + 16);
      v14 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_85;
      }

      v39 = *MEMORY[0x277D0F740];
      v200 = *(MEMORY[0x277D0F740] + 16);
      v15 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_138;
      }

      v40 = *MEMORY[0x277D0F730];
      v201 = *(MEMORY[0x277D0F730] + 16);
      v15 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_138;
      }

      v41 = *MEMORY[0x277D0F738];
      v202 = *(MEMORY[0x277D0F738] + 16);
      v15 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_138;
      }

      v42 = *MEMORY[0x277D0F250];
      v203 = *(MEMORY[0x277D0F250] + 16);
      v15 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_138;
      }

      v43 = *MEMORY[0x277D0F248];
      v204 = *(MEMORY[0x277D0F248] + 16);
      v16 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_150;
      }

      v44 = *MEMORY[0x277D0F230];
      v205 = *(MEMORY[0x277D0F230] + 16);
      v17 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
LABEL_73:
        v5 = [HMDHomeKitVersion version7_0:v17];
        goto LABEL_127;
      }

      v45 = *MEMORY[0x277D0F238];
      v206 = *(MEMORY[0x277D0F238] + 16);
      v16 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_150;
      }

      v46 = *MEMORY[0x277D0F240];
      v207 = *(MEMORY[0x277D0F240] + 16);
      v16 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_150;
      }

      v47 = *MEMORY[0x277D0F648];
      v208 = *(MEMORY[0x277D0F648] + 16);
      v16 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_150;
      }

      v48 = *MEMORY[0x277D0F628];
      v209 = *(MEMORY[0x277D0F628] + 16);
      v18 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_142;
      }

      v49 = *MEMORY[0x277D0F630];
      v210 = *(MEMORY[0x277D0F630] + 16);
      v18 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_142;
      }

      v50 = *MEMORY[0x277D0F638];
      v211 = *(MEMORY[0x277D0F638] + 16);
      v18 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_142;
      }

      v51 = *MEMORY[0x277D0F640];
      v212 = *(MEMORY[0x277D0F640] + 16);
      v19 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_144;
      }

      v52 = *MEMORY[0x277D0F6E8];
      v213 = *(MEMORY[0x277D0F6E8] + 16);
      v19 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_144;
      }

      v53 = *MEMORY[0x277D0F6B8];
      v214 = *(MEMORY[0x277D0F6B8] + 16);
      v20 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_209;
      }

      v54 = *MEMORY[0x277D0F6C0];
      v215 = *(MEMORY[0x277D0F6C0] + 16);
      v20 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_209;
      }

      v55 = *MEMORY[0x277D0F6C8];
      v216 = *(MEMORY[0x277D0F6C8] + 16);
      v20 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_209;
      }

      v56 = *MEMORY[0x277D0F6D0];
      v217 = *(MEMORY[0x277D0F6D0] + 16);
      v21 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_156;
      }

      v57 = *MEMORY[0x277D0F6D8];
      v218 = *(MEMORY[0x277D0F6D8] + 16);
      v20 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_209;
      }

      v58 = *MEMORY[0x277D0F6E0];
      v219 = *(MEMORY[0x277D0F6E0] + 16);
      v20 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_209;
      }

      v59 = *MEMORY[0x277D0F330];
      v220 = *(MEMORY[0x277D0F330] + 16);
      v20 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_209;
      }

      v60 = *MEMORY[0x277D0F318];
      v221 = *(MEMORY[0x277D0F318] + 16);
      v9 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_87;
      }

      v61 = *MEMORY[0x277D0F328];
      v222 = *(MEMORY[0x277D0F328] + 16);
      v9 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_87;
      }

      v62 = *MEMORY[0x277D0F310];
      v223 = *(MEMORY[0x277D0F310] + 16);
      v9 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_87;
      }

      v63 = *MEMORY[0x277D0F2F0];
      v224 = *(MEMORY[0x277D0F2F0] + 16);
      v22 = 0uLL;
      if (HMFOperatingSystemVersionCompare() != 1)
      {
        v64 = *MEMORY[0x277D0F2F8];
        v225 = *(MEMORY[0x277D0F2F8] + 16);
        v22 = 0uLL;
        if (HMFOperatingSystemVersionCompare() != 1)
        {
          v65 = *MEMORY[0x277D0F300];
          v226 = *(MEMORY[0x277D0F300] + 16);
          v22 = 0uLL;
          if (HMFOperatingSystemVersionCompare() != 1)
          {
            v66 = *MEMORY[0x277D0F308];
            v227 = *(MEMORY[0x277D0F308] + 16);
            v22 = 0uLL;
            if (HMFOperatingSystemVersionCompare() != 1)
            {
              v67 = *MEMORY[0x277D0F508];
              v228 = *(MEMORY[0x277D0F508] + 16);
              v22 = 0uLL;
              if (HMFOperatingSystemVersionCompare() != 1)
              {
                v4 = MEMORY[0x277D0F500];
                goto LABEL_124;
              }
            }
          }
        }
      }

LABEL_118:
      v5 = [HMDHomeKitVersion version12:v22];
      goto LABEL_127;
    }

    v86 = *MEMORY[0x277D0F4D8];
    v247 = *(MEMORY[0x277D0F4D8] + 16);
    v14 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_85;
    }

    v88 = *MEMORY[0x277D0F4E0];
    v249 = *(MEMORY[0x277D0F4E0] + 16);
    v14 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_85;
    }

    v91 = *MEMORY[0x277D0F470];
    v252 = *(MEMORY[0x277D0F470] + 16);
    v14 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_85;
    }

    v94 = *MEMORY[0x277D0F460];
    v255 = *(MEMORY[0x277D0F460] + 16);
    v15 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_138;
    }

    v97 = *MEMORY[0x277D0F468];
    v258 = *(MEMORY[0x277D0F468] + 16);
    v15 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_138;
    }

    v100 = *MEMORY[0x277D0F400];
    v261 = *(MEMORY[0x277D0F400] + 16);
    v15 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_138;
    }

    v103 = *MEMORY[0x277D0F3F0];
    v264 = *(MEMORY[0x277D0F3F0] + 16);
    v16 = 0uLL;
    if (HMFOperatingSystemVersionCompare() != 1)
    {
      v106 = *MEMORY[0x277D0F3F8];
      v267 = *(MEMORY[0x277D0F3F8] + 16);
      v16 = 0uLL;
      if (HMFOperatingSystemVersionCompare() != 1)
      {
        v109 = *MEMORY[0x277D0F670];
        v270 = *(MEMORY[0x277D0F670] + 16);
        v16 = 0uLL;
        if (HMFOperatingSystemVersionCompare() != 1)
        {
          v112 = *MEMORY[0x277D0F650];
          v273 = *(MEMORY[0x277D0F650] + 16);
          v18 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_142;
          }

          v117 = *MEMORY[0x277D0F658];
          v278 = *(MEMORY[0x277D0F658] + 16);
          v18 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_142;
          }

          v118 = *MEMORY[0x277D0F660];
          v279 = *(MEMORY[0x277D0F660] + 16);
          v18 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_142;
          }

          v119 = *MEMORY[0x277D0F668];
          v280 = *(MEMORY[0x277D0F668] + 16);
          v19 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_144;
          }

          v120 = *MEMORY[0x277D0F5D0];
          v281 = *(MEMORY[0x277D0F5D0] + 16);
          v19 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_144;
          }

          v124 = *MEMORY[0x277D0F5A8];
          v285 = *(MEMORY[0x277D0F5A8] + 16);
          v20 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_209;
          }

          v125 = *MEMORY[0x277D0F5B0];
          v286 = *(MEMORY[0x277D0F5B0] + 16);
          v20 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_209;
          }

          v126 = *MEMORY[0x277D0F5B8];
          v287 = *(MEMORY[0x277D0F5B8] + 16);
          v21 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_156;
          }

          v159 = *MEMORY[0x277D0F5C0];
          v320 = *(MEMORY[0x277D0F5C0] + 16);
          v20 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_209;
          }

          v160 = *MEMORY[0x277D0F5C8];
          v321 = *(MEMORY[0x277D0F5C8] + 16);
          v20 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_209;
          }

          v161 = *MEMORY[0x277D0F6B0];
          v322 = *(MEMORY[0x277D0F6B0] + 16);
          v20 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_209;
          }

          v162 = *MEMORY[0x277D0F6A0];
          v323 = *(MEMORY[0x277D0F6A0] + 16);
          v9 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_87;
          }

          v163 = *MEMORY[0x277D0F6A8];
          v324 = *(MEMORY[0x277D0F6A8] + 16);
          v9 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_87;
          }

          v164 = *MEMORY[0x277D0F3E8];
          v325 = *(MEMORY[0x277D0F3E8] + 16);
          v9 = 0uLL;
          if (HMFOperatingSystemVersionCompare() == 1)
          {
            goto LABEL_87;
          }

          v165 = *MEMORY[0x277D0F3C8];
          v326 = *(MEMORY[0x277D0F3C8] + 16);
          v22 = 0uLL;
          if (HMFOperatingSystemVersionCompare() != 1)
          {
            v166 = *MEMORY[0x277D0F3D0];
            v327 = *(MEMORY[0x277D0F3D0] + 16);
            v22 = 0uLL;
            if (HMFOperatingSystemVersionCompare() != 1)
            {
              v167 = *MEMORY[0x277D0F3D8];
              v328 = *(MEMORY[0x277D0F3D8] + 16);
              v22 = 0uLL;
              if (HMFOperatingSystemVersionCompare() != 1)
              {
                v168 = *MEMORY[0x277D0F3E0];
                v329 = *(MEMORY[0x277D0F3E0] + 16);
                v22 = 0uLL;
                if (HMFOperatingSystemVersionCompare() != 1)
                {
                  v169 = *MEMORY[0x277D0F2A8];
                  v330 = *(MEMORY[0x277D0F2A8] + 16);
                  v22 = 0uLL;
                  if (HMFOperatingSystemVersionCompare() != 1)
                  {
                    v4 = MEMORY[0x277D0F2A0];
                    goto LABEL_124;
                  }
                }
              }
            }
          }

          goto LABEL_118;
        }
      }
    }

LABEL_150:
    v5 = [HMDHomeKitVersion version7:v16];
    goto LABEL_127;
  }

  if (v3 == 3)
  {
    v68 = *MEMORY[0x277D0F260];
    v229 = *(MEMORY[0x277D0F260] + 16);
    v11 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_55;
    }

    v87 = *MEMORY[0x277D0F2E0];
    v248 = *(MEMORY[0x277D0F2E0] + 16);
    v10 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_77;
    }

    v90 = *MEMORY[0x277D0F338];
    v251 = *(MEMORY[0x277D0F338] + 16);
    v10 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_77;
    }

    v93 = *MEMORY[0x277D0F258];
    v254 = *(MEMORY[0x277D0F258] + 16);
    v12 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_102;
    }

    v96 = *MEMORY[0x277D0F368];
    v257 = *(MEMORY[0x277D0F368] + 16);
    v12 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_102;
    }

    v99 = *MEMORY[0x277D0F3A0];
    v260 = *(MEMORY[0x277D0F3A0] + 16);
    v12 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_102;
    }

    v102 = *MEMORY[0x277D0F288];
    v263 = *(MEMORY[0x277D0F288] + 16);
    v13 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_131;
    }

    v105 = *MEMORY[0x277D0F380];
    v266 = *(MEMORY[0x277D0F380] + 16);
    v13 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_131;
    }

    v108 = *MEMORY[0x277D0F398];
    v269 = *(MEMORY[0x277D0F398] + 16);
    v13 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_131;
    }

    v111 = *MEMORY[0x277D0F3C0];
    v272 = *(MEMORY[0x277D0F3C0] + 16);
    v13 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_131;
    }

    v113 = *MEMORY[0x277D0F3B0];
    v274 = *(MEMORY[0x277D0F3B0] + 16);
    v14 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_85;
    }

    v114 = *MEMORY[0x277D0F3B8];
    v275 = *(MEMORY[0x277D0F3B8] + 16);
    v14 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_85;
    }

    v115 = *MEMORY[0x277D0F418];
    v276 = *(MEMORY[0x277D0F418] + 16);
    v14 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_85;
    }

    v116 = *MEMORY[0x277D0F408];
    v277 = *(MEMORY[0x277D0F408] + 16);
    v15 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_138;
    }

    v121 = *MEMORY[0x277D0F410];
    v282 = *(MEMORY[0x277D0F410] + 16);
    v15 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_138;
    }

    v122 = *MEMORY[0x277D0F458];
    v283 = *(MEMORY[0x277D0F458] + 16);
    v15 = 0uLL;
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      goto LABEL_138;
    }

    v123 = *MEMORY[0x277D0F440];
    v284 = *(MEMORY[0x277D0F440] + 16);
    v16 = 0uLL;
    if (HMFOperatingSystemVersionCompare() != 1)
    {
      v127 = *MEMORY[0x277D0F448];
      v288 = *(MEMORY[0x277D0F448] + 16);
      v16 = 0uLL;
      if (HMFOperatingSystemVersionCompare() != 1)
      {
        v128 = *MEMORY[0x277D0F450];
        v289 = *(MEMORY[0x277D0F450] + 16);
        v16 = 0uLL;
        if (HMFOperatingSystemVersionCompare() != 1)
        {
          v129 = *MEMORY[0x277D0F498];
          v290 = *(MEMORY[0x277D0F498] + 16);
          v16 = 0uLL;
          if (HMFOperatingSystemVersionCompare() != 1)
          {
            v130 = *MEMORY[0x277D0F478];
            v291 = *(MEMORY[0x277D0F478] + 16);
            v18 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_142;
            }

            v131 = *MEMORY[0x277D0F480];
            v292 = *(MEMORY[0x277D0F480] + 16);
            v18 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_142;
            }

            v132 = *MEMORY[0x277D0F488];
            v293 = *(MEMORY[0x277D0F488] + 16);
            v18 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_142;
            }

            v133 = *MEMORY[0x277D0F490];
            v294 = *(MEMORY[0x277D0F490] + 16);
            v19 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_144;
            }

            v134 = *MEMORY[0x277D0F4D0];
            v295 = *(MEMORY[0x277D0F4D0] + 16);
            v19 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_144;
            }

            v135 = *MEMORY[0x277D0F4A0];
            v296 = *(MEMORY[0x277D0F4A0] + 16);
            v20 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_209;
            }

            v136 = *MEMORY[0x277D0F4A8];
            v297 = *(MEMORY[0x277D0F4A8] + 16);
            v20 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_209;
            }

            v137 = *MEMORY[0x277D0F4B0];
            v298 = *(MEMORY[0x277D0F4B0] + 16);
            v20 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_209;
            }

            v138 = *MEMORY[0x277D0F4B8];
            v299 = *(MEMORY[0x277D0F4B8] + 16);
            v21 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_156;
            }

            v139 = *MEMORY[0x277D0F4C0];
            v300 = *(MEMORY[0x277D0F4C0] + 16);
            v20 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_209;
            }

            v140 = *MEMORY[0x277D0F4C8];
            v301 = *(MEMORY[0x277D0F4C8] + 16);
            v20 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_209;
            }

            v141 = *MEMORY[0x277D0F4F8];
            v302 = *(MEMORY[0x277D0F4F8] + 16);
            v20 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_209;
            }

            v142 = *MEMORY[0x277D0F4E8];
            v303 = *(MEMORY[0x277D0F4E8] + 16);
            v9 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_87;
            }

            v143 = *MEMORY[0x277D0F4F0];
            v304 = *(MEMORY[0x277D0F4F0] + 16);
            v9 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_87;
            }

            v144 = *MEMORY[0x277D0F538];
            v305 = *(MEMORY[0x277D0F538] + 16);
            v9 = 0uLL;
            if (HMFOperatingSystemVersionCompare() == 1)
            {
              goto LABEL_87;
            }

            v145 = *MEMORY[0x277D0F518];
            v306 = *(MEMORY[0x277D0F518] + 16);
            v22 = 0uLL;
            if (HMFOperatingSystemVersionCompare() != 1)
            {
              v146 = *MEMORY[0x277D0F520];
              v307 = *(MEMORY[0x277D0F520] + 16);
              v22 = 0uLL;
              if (HMFOperatingSystemVersionCompare() != 1)
              {
                v147 = *MEMORY[0x277D0F528];
                v308 = *(MEMORY[0x277D0F528] + 16);
                v22 = 0uLL;
                if (HMFOperatingSystemVersionCompare() != 1)
                {
                  v148 = *MEMORY[0x277D0F530];
                  v309 = *(MEMORY[0x277D0F530] + 16);
                  v22 = 0uLL;
                  if (HMFOperatingSystemVersionCompare() != 1)
                  {
                    v149 = *MEMORY[0x277D0F548];
                    v310 = *(MEMORY[0x277D0F548] + 16);
                    v22 = 0uLL;
                    if (HMFOperatingSystemVersionCompare() != 1)
                    {
                      v4 = MEMORY[0x277D0F540];
                      goto LABEL_124;
                    }
                  }
                }
              }
            }

            goto LABEL_118;
          }
        }
      }
    }

    goto LABEL_150;
  }

  if (v3 != 4)
  {
    if (v3 == 5)
    {
      v24 = *MEMORY[0x277D0F270];
      v185 = *(MEMORY[0x277D0F270] + 16);
      v9 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1 || (v89 = *MEMORY[0x277D0F268], v250 = *(MEMORY[0x277D0F268] + 16), v9 = 0uLL, HMFOperatingSystemVersionCompare() == 1) || (v92 = *MEMORY[0x277D0F2D8], v253 = *(MEMORY[0x277D0F2D8] + 16), v9 = 0uLL, HMFOperatingSystemVersionCompare() == 1))
      {
LABEL_87:
        v5 = [HMDHomeKitVersion version11:v9];
        goto LABEL_127;
      }

      v95 = *MEMORY[0x277D0F2B8];
      v256 = *(MEMORY[0x277D0F2B8] + 16);
      v22 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_118;
      }

      v98 = *MEMORY[0x277D0F2C0];
      v259 = *(MEMORY[0x277D0F2C0] + 16);
      v22 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_118;
      }

      v101 = *MEMORY[0x277D0F2C8];
      v262 = *(MEMORY[0x277D0F2C8] + 16);
      v22 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_118;
      }

      v104 = *MEMORY[0x277D0F2D0];
      v265 = *(MEMORY[0x277D0F2D0] + 16);
      v22 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_118;
      }

      v107 = *MEMORY[0x277D0F348];
      v268 = *(MEMORY[0x277D0F348] + 16);
      v22 = 0uLL;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        goto LABEL_118;
      }

      v4 = MEMORY[0x277D0F340];
LABEL_124:
      v110 = *v4;
      v271 = *(v4 + 2);
      v8 = 0uLL;
      v23 = 0;
      if (HMFOperatingSystemVersionCompare() == 1)
      {
        v5 = [HMDHomeKitVersion version13:0];
        goto LABEL_127;
      }
    }

LABEL_126:
    v5 = [HMDHomeKitVersion currentVersion:v8];
    goto LABEL_127;
  }

  v69 = *MEMORY[0x277D0F6F8];
  v230 = *(MEMORY[0x277D0F6F8] + 16);
  v10 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1 || (v70 = *MEMORY[0x277D0F708], v231 = *(MEMORY[0x277D0F708] + 16), v10 = 0uLL, HMFOperatingSystemVersionCompare() == 1))
  {
LABEL_77:
    v5 = [HMDHomeKitVersion version2:v10];
    goto LABEL_127;
  }

  v71 = *MEMORY[0x277D0F278];
  v232 = *(MEMORY[0x277D0F278] + 16);
  v12 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1 || (v72 = *MEMORY[0x277D0F370], v233 = *(MEMORY[0x277D0F370] + 16), v12 = 0uLL, HMFOperatingSystemVersionCompare() == 1) || (v73 = *MEMORY[0x277D0F700], v234 = *(MEMORY[0x277D0F700] + 16), v12 = 0uLL, HMFOperatingSystemVersionCompare() == 1))
  {
LABEL_102:
    v5 = [HMDHomeKitVersion version3:v12];
    goto LABEL_127;
  }

  v74 = *MEMORY[0x277D0F2E8];
  v235 = *(MEMORY[0x277D0F2E8] + 16);
  v13 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1)
  {
    goto LABEL_131;
  }

  v75 = *MEMORY[0x277D0F360];
  v236 = *(MEMORY[0x277D0F360] + 16);
  v13 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1 || (v76 = *MEMORY[0x277D0F3A8], v237 = *(MEMORY[0x277D0F3A8] + 16), v13 = 0uLL, HMFOperatingSystemVersionCompare() == 1) || (v77 = *MEMORY[0x277D0F438], v238 = *(MEMORY[0x277D0F438] + 16), v13 = 0uLL, HMFOperatingSystemVersionCompare() == 1))
  {
LABEL_131:
    v5 = [HMDHomeKitVersion version4:v13];
    goto LABEL_127;
  }

  v78 = *MEMORY[0x277D0F428];
  v239 = *(MEMORY[0x277D0F428] + 16);
  v14 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1 || (v79 = *MEMORY[0x277D0F430], v240 = *(MEMORY[0x277D0F430] + 16), v14 = 0uLL, HMFOperatingSystemVersionCompare() == 1) || (v80 = *MEMORY[0x277D0F728], v241 = *(MEMORY[0x277D0F728] + 16), v14 = 0uLL, HMFOperatingSystemVersionCompare() == 1))
  {
LABEL_85:
    v5 = [HMDHomeKitVersion version5:v14];
    goto LABEL_127;
  }

  v81 = *MEMORY[0x277D0F718];
  v242 = *(MEMORY[0x277D0F718] + 16);
  v15 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1 || (v82 = *MEMORY[0x277D0F720], v243 = *(MEMORY[0x277D0F720] + 16), v15 = 0uLL, HMFOperatingSystemVersionCompare() == 1) || (v83 = *MEMORY[0x277D0F228], v244 = *(MEMORY[0x277D0F228] + 16), v15 = 0uLL, HMFOperatingSystemVersionCompare() == 1))
  {
LABEL_138:
    v5 = [HMDHomeKitVersion version6:v15];
    goto LABEL_127;
  }

  v84 = *MEMORY[0x277D0F220];
  v245 = *(MEMORY[0x277D0F220] + 16);
  v16 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1)
  {
    goto LABEL_150;
  }

  v85 = *MEMORY[0x277D0F208];
  v246 = *(MEMORY[0x277D0F208] + 16);
  v17 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1)
  {
    goto LABEL_73;
  }

  v150 = *MEMORY[0x277D0F210];
  v311 = *(MEMORY[0x277D0F210] + 16);
  v16 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1)
  {
    goto LABEL_150;
  }

  v151 = *MEMORY[0x277D0F218];
  v312 = *(MEMORY[0x277D0F218] + 16);
  v16 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1)
  {
    goto LABEL_150;
  }

  v152 = *MEMORY[0x277D0F620];
  v313 = *(MEMORY[0x277D0F620] + 16);
  v16 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1)
  {
    goto LABEL_150;
  }

  v153 = *MEMORY[0x277D0F600];
  v314 = *(MEMORY[0x277D0F600] + 16);
  v18 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1 || (v154 = *MEMORY[0x277D0F608], v315 = *(MEMORY[0x277D0F608] + 16), v18 = 0uLL, HMFOperatingSystemVersionCompare() == 1) || (v155 = *MEMORY[0x277D0F610], v316 = *(MEMORY[0x277D0F610] + 16), v18 = 0uLL, HMFOperatingSystemVersionCompare() == 1))
  {
LABEL_142:
    v5 = [HMDHomeKitVersion version8:v18];
    goto LABEL_127;
  }

  v156 = *MEMORY[0x277D0F618];
  v317 = *(MEMORY[0x277D0F618] + 16);
  v19 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1 || (v157 = *MEMORY[0x277D0F588], v318 = *(MEMORY[0x277D0F588] + 16), v19 = 0uLL, HMFOperatingSystemVersionCompare() == 1))
  {
LABEL_144:
    v5 = [HMDHomeKitVersion version9:v19];
    goto LABEL_127;
  }

  v158 = *MEMORY[0x277D0F550];
  v319 = *(MEMORY[0x277D0F550] + 16);
  v20 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1)
  {
    goto LABEL_209;
  }

  v170 = *MEMORY[0x277D0F558];
  v331 = *(MEMORY[0x277D0F558] + 16);
  v20 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1)
  {
    goto LABEL_209;
  }

  v171 = *MEMORY[0x277D0F560];
  v332 = *(MEMORY[0x277D0F560] + 16);
  v20 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1)
  {
    goto LABEL_209;
  }

  v172 = *MEMORY[0x277D0F568];
  v333 = *(MEMORY[0x277D0F568] + 16);
  v20 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1)
  {
    goto LABEL_209;
  }

  v173 = *MEMORY[0x277D0F570];
  v334 = *(MEMORY[0x277D0F570] + 16);
  v21 = 0uLL;
  if (HMFOperatingSystemVersionCompare() == 1)
  {
LABEL_156:
    v5 = [HMDHomeKitVersion version10_3:v21];
    goto LABEL_127;
  }

  v174 = *MEMORY[0x277D0F578];
  v335 = *(MEMORY[0x277D0F578] + 16);
  v20 = 0uLL;
  if (HMFOperatingSystemVersionCompare() != 1)
  {
    v175 = *MEMORY[0x277D0F580];
    v336 = *(MEMORY[0x277D0F580] + 16);
    v20 = 0uLL;
    if (HMFOperatingSystemVersionCompare() != 1)
    {
      v176 = *MEMORY[0x277D0F698];
      v337 = *(MEMORY[0x277D0F698] + 16);
      v20 = 0uLL;
      if (HMFOperatingSystemVersionCompare() != 1)
      {
        v177 = *MEMORY[0x277D0F678];
        v338 = *(MEMORY[0x277D0F678] + 16);
        v9 = 0uLL;
        if (HMFOperatingSystemVersionCompare() == 1)
        {
          goto LABEL_87;
        }

        v178 = *MEMORY[0x277D0F690];
        v339 = *(MEMORY[0x277D0F690] + 16);
        v9 = 0uLL;
        if (HMFOperatingSystemVersionCompare() == 1)
        {
          goto LABEL_87;
        }

        v179 = *MEMORY[0x277D0F5F8];
        v340 = *(MEMORY[0x277D0F5F8] + 16);
        v9 = 0uLL;
        if (HMFOperatingSystemVersionCompare() == 1)
        {
          goto LABEL_87;
        }

        v180 = *MEMORY[0x277D0F5D8];
        v341 = *(MEMORY[0x277D0F5D8] + 16);
        v22 = 0uLL;
        if (HMFOperatingSystemVersionCompare() != 1)
        {
          v181 = *MEMORY[0x277D0F5E0];
          v342 = *(MEMORY[0x277D0F5E0] + 16);
          v22 = 0uLL;
          if (HMFOperatingSystemVersionCompare() != 1)
          {
            v182 = *MEMORY[0x277D0F5E8];
            v343 = *(MEMORY[0x277D0F5E8] + 16);
            v22 = 0uLL;
            if (HMFOperatingSystemVersionCompare() != 1)
            {
              v183 = *MEMORY[0x277D0F5F0];
              v344 = *(MEMORY[0x277D0F5F0] + 16);
              v22 = 0uLL;
              if (HMFOperatingSystemVersionCompare() != 1)
              {
                v184 = *MEMORY[0x277D0F298];
                v345 = *(MEMORY[0x277D0F298] + 16);
                v22 = 0uLL;
                if (HMFOperatingSystemVersionCompare() != 1)
                {
                  v4 = MEMORY[0x277D0F290];
                  goto LABEL_124;
                }
              }
            }
          }
        }

        goto LABEL_118;
      }
    }
  }

LABEL_209:
  v5 = [HMDHomeKitVersion version10:v20];
LABEL_127:
  v6 = v5;

  return v6;
}

- (id)hmd_productInfo
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [a1 productName];
  v3 = HMFProductPlatformFromString();

  v4 = [a1 modelIdentifier];
  v5 = [v4 lowercaseString];

  v6 = HMFProductClassFromString();
  if (v3)
  {
    if (v6)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = a1;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v8 productName];
    v24 = 138543874;
    v25 = v10;
    v26 = 2112;
    v27 = v11;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Could not determine product platform from product name '%@' for device: %@", &v24, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (!v6)
  {
LABEL_7:
    v12 = objc_autoreleasePoolPush();
    v13 = a1;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v13 modelIdentifier];
      v24 = 138543874;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Could not determine product class from model identifier '%@' for device: %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }

LABEL_10:
  v17 = objc_alloc(MEMORY[0x277D0F8E8]);
  v18 = objc_alloc(MEMORY[0x277D0F8F8]);
  [a1 operatingSystemVersion];
  v19 = [v18 initWithOperatingSystemVersion:&v24];
  v20 = [a1 modelIdentifier];
  v21 = [v17 initWithPlatform:v3 class:v6 softwareVersion:v19 modelIdentifier:v20];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

@end