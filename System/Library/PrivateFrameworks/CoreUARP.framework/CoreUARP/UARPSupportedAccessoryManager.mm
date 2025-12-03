@interface UARPSupportedAccessoryManager
+ (id)defaultManager;
- (UARPSupportedAccessoryManager)init;
- (id)findByHardwareID:(id)d;
- (id)findByIdentifier:(id)identifier;
- (void)addSupportedAccessories:(id)accessories;
- (void)addSupportedAccessoriesByURL:(id)l;
- (void)addSupportedAccessory:(id)accessory;
- (void)addSupportedAccessoryByDictionary:(id)dictionary;
@end

@implementation UARPSupportedAccessoryManager

- (UARPSupportedAccessoryManager)init
{
  v8.receiver = self;
  v8.super_class = UARPSupportedAccessoryManager;
  v2 = [(UARPSupportedAccessoryManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    setOfAccessories = v2->_setOfAccessories;
    v2->_setOfAccessories = v3;

    v5 = os_log_create("com.apple.accessoryupdater.uarp", "supportedAccessories");
    log = v2->_log;
    v2->_log = v5;
  }

  return v2;
}

+ (id)defaultManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__UARPSupportedAccessoryManager_defaultManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultManager_onceToken != -1)
  {
    dispatch_once(&defaultManager_onceToken, block);
  }

  v2 = defaultManager_sharedManager;

  return v2;
}

void __47__UARPSupportedAccessoryManager_defaultManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = defaultManager_sharedManager;
  defaultManager_sharedManager = v1;

  v3 = defaultManager_sharedManager;
  v4 = objc_alloc_init(UARPSupportedAccessoryA2617);
  [v3 addSupportedAccessory:v4];

  v5 = defaultManager_sharedManager;
  v6 = objc_alloc_init(UARPSupportedAccessoryA2968);
  [v5 addSupportedAccessory:v6];

  v7 = defaultManager_sharedManager;
  v8 = objc_alloc_init(UARPSupportedAccessoryA2699);
  [v7 addSupportedAccessory:v8];

  v9 = defaultManager_sharedManager;
  v10 = objc_alloc_init(UARPSupportedAccessoryA3048);
  [v9 addSupportedAccessory:v10];

  v11 = defaultManager_sharedManager;
  v12 = objc_alloc_init(UARPSupportedAccessoryA3059);
  [v11 addSupportedAccessory:v12];

  v13 = defaultManager_sharedManager;
  v14 = objc_alloc_init(UARPSupportedAccessoryA3122);
  [v13 addSupportedAccessory:v14];

  v15 = defaultManager_sharedManager;
  v16 = objc_alloc_init(UARPSupportedAccessoryA3053);
  [v15 addSupportedAccessory:v16];

  v17 = defaultManager_sharedManager;
  v18 = objc_alloc_init(UARPSupportedAccessoryA3054);
  [v17 addSupportedAccessory:v18];

  v19 = defaultManager_sharedManager;
  v20 = objc_alloc_init(UARPSupportedAccessoryA3056);
  [v19 addSupportedAccessory:v20];

  v21 = defaultManager_sharedManager;
  v22 = objc_alloc_init(UARPSupportedAccessoryA3057);
  [v21 addSupportedAccessory:v22];

  v23 = defaultManager_sharedManager;
  v24 = objc_alloc_init(UARPSupportedAccessoryA3064);
  [v23 addSupportedAccessory:v24];

  v25 = defaultManager_sharedManager;
  v26 = objc_alloc_init(UARPSupportedAccessoryA3065);
  [v25 addSupportedAccessory:v26];

  v27 = defaultManager_sharedManager;
  v28 = objc_alloc_init(UARPSupportedAccessoryA3058USB);
  [v27 addSupportedAccessory:v28];

  v29 = defaultManager_sharedManager;
  v30 = objc_alloc_init(UARPSupportedAccessoryA2924);
  [v29 addSupportedAccessory:v30];

  v31 = defaultManager_sharedManager;
  v32 = objc_alloc_init(UARPSupportedAccessoryA3150);
  [v31 addSupportedAccessory:v32];

  v33 = defaultManager_sharedManager;
  v34 = objc_alloc_init(UARPSupportedAccessoryA3140);
  [v33 addSupportedAccessory:v34];

  v35 = defaultManager_sharedManager;
  v36 = objc_alloc_init(UARPSupportedAccessoryA3211);
  [v35 addSupportedAccessory:v36];

  v37 = defaultManager_sharedManager;
  v38 = objc_alloc_init(UARPSupportedAccessoryA3157);
  [v37 addSupportedAccessory:v38];

  v39 = defaultManager_sharedManager;
  v40 = objc_alloc_init(UARPSupportedAccessoryA2513);
  [v39 addSupportedAccessory:v40];

  v41 = defaultManager_sharedManager;
  v42 = objc_alloc_init(UARPSupportedAccessoryA2871);
  [v41 addSupportedAccessory:v42];

  v43 = defaultManager_sharedManager;
  v44 = objc_alloc_init(UARPSupportedAccessoryA2049);
  [v43 addSupportedAccessory:v44];

  v45 = defaultManager_sharedManager;
  v46 = objc_alloc_init(UARPSupportedAccessoryA2049DFU);
  [v45 addSupportedAccessory:v46];

  v47 = defaultManager_sharedManager;
  v48 = objc_alloc_init(UARPSupportedAccessoryA2049Simulated);
  [v47 addSupportedAccessory:v48];

  v49 = defaultManager_sharedManager;
  v50 = objc_alloc_init(UARPSupportedAccessoryA2049DFUSimulated);
  [v49 addSupportedAccessory:v50];

  v51 = defaultManager_sharedManager;
  v52 = objc_alloc_init(UARPSupportedAccessoryA2869);
  [v51 addSupportedAccessory:v52];

  v53 = defaultManager_sharedManager;
  v54 = objc_alloc_init(UARPSupportedAccessoryA2868);
  [v53 addSupportedAccessory:v54];

  v55 = defaultManager_sharedManager;
  v56 = objc_alloc_init(UARPSupportedAccessoryA3299);
  [v55 addSupportedAccessory:v56];

  v57 = defaultManager_sharedManager;
  v58 = objc_alloc_init(UARPSupportedAccessoryA3046);
  [v57 addSupportedAccessory:v58];

  v59 = defaultManager_sharedManager;
  v60 = objc_alloc_init(UARPSupportedAccessoryA3046DFU);
  [v59 addSupportedAccessory:v60];

  v61 = defaultManager_sharedManager;
  v62 = objc_alloc_init(UARPSupportedAccessoryA3046Simulated);
  [v61 addSupportedAccessory:v62];

  v63 = defaultManager_sharedManager;
  v64 = objc_alloc_init(UARPSupportedAccessoryA3046DFUSimulated);
  [v63 addSupportedAccessory:v64];

  v65 = defaultManager_sharedManager;
  v66 = objc_alloc_init(UARPSupportedAccessoryA2363);
  [v65 addSupportedAccessory:v66];

  v67 = defaultManager_sharedManager;
  v68 = objc_alloc_init(UARPSupportedAccessoryA2975);
  [v67 addSupportedAccessory:v68];

  v69 = defaultManager_sharedManager;
  v70 = objc_alloc_init(UARPSupportedAccessoryA2974);
  [v69 addSupportedAccessory:v70];

  v71 = defaultManager_sharedManager;
  v72 = objc_alloc_init(UARPSupportedAccessoryA3339);
  [v71 addSupportedAccessory:v72];

  v73 = defaultManager_sharedManager;
  v74 = objc_alloc_init(UARPSupportedAccessoryA3340);
  [v73 addSupportedAccessory:v74];

  v75 = defaultManager_sharedManager;
  v76 = objc_alloc_init(UARPSupportedAccessoryA2384);
  [v75 addSupportedAccessory:v76];

  v77 = defaultManager_sharedManager;
  v78 = objc_alloc_init(UARPSupportedAccessoryA2140);
  [v77 addSupportedAccessory:v78];

  v79 = defaultManager_sharedManager;
  v80 = objc_alloc_init(UARPSupportedAccessoryA2580);
  [v79 addSupportedAccessory:v80];

  v81 = defaultManager_sharedManager;
  v82 = objc_alloc_init(UARPSupportedAccessoryA2458);
  [v81 addSupportedAccessory:v82];

  v83 = defaultManager_sharedManager;
  v84 = objc_alloc_init(UARPSupportedAccessoryA2463);
  [v83 addSupportedAccessory:v84];

  v85 = defaultManager_sharedManager;
  v86 = objc_alloc_init(UARPSupportedAccessoryA2728);
  [v85 addSupportedAccessory:v86];

  v87 = defaultManager_sharedManager;
  v88 = objc_alloc_init(UARPSupportedAccessoryA3088);
  [v87 addSupportedAccessory:v88];

  v89 = defaultManager_sharedManager;
  v90 = objc_alloc_init(UARPSupportedAccessoryd5b67c73d2e5e518);
  [v89 addSupportedAccessory:v90];

  v91 = defaultManager_sharedManager;
  v92 = objc_alloc_init(UARPSupportedAccessoryA3085);
  [v91 addSupportedAccessory:v92];

  v93 = defaultManager_sharedManager;
  v94 = objc_alloc_init(UARPSupportedAccessoryA2538);
  [v93 addSupportedAccessory:v94];

  v95 = defaultManager_sharedManager;
  v96 = objc_alloc_init(UARPSupportedAccessoryA2518);
  [v95 addSupportedAccessory:v96];

  v97 = defaultManager_sharedManager;
  v98 = objc_alloc_init(UARPSupportedAccessoryA2571);
  [v97 addSupportedAccessory:v98];

  v99 = defaultManager_sharedManager;
  v100 = objc_alloc_init(UARPSupportedAccessoryA3328);
  [v99 addSupportedAccessory:v100];

  v101 = defaultManager_sharedManager;
  v102 = objc_alloc_init(UARPSupportedAccessoryA2676);
  [v101 addSupportedAccessory:v102];

  v103 = defaultManager_sharedManager;
  v104 = objc_alloc_init(UARPSupportedAccessoryA2743);
  [v103 addSupportedAccessory:v104];

  v105 = defaultManager_sharedManager;
  v106 = objc_alloc_init(UARPSupportedAccessoryA2166);
  [v105 addSupportedAccessory:v106];

  v107 = defaultManager_sharedManager;
  v108 = objc_alloc_init(UARPSupportedAccessoryA2452);
  [v107 addSupportedAccessory:v108];

  v109 = defaultManager_sharedManager;
  v110 = objc_alloc_init(UARPSupportedAccessoryA3351);
  [v109 addSupportedAccessory:v110];

  v111 = defaultManager_sharedManager;
  v112 = objc_alloc_init(UARPSupportedAccessoryA2776);
  [v111 addSupportedAccessory:v112];

  v113 = defaultManager_sharedManager;
  v114 = objc_alloc_init(UARPSupportedAccessoryA3421);
  [v113 addSupportedAccessory:v114];

  v115 = defaultManager_sharedManager;
  v116 = objc_alloc_init(UARPSupportedAccessoryA2515);
  [v115 addSupportedAccessory:v116];

  v117 = defaultManager_sharedManager;
  v118 = objc_alloc_init(UARPSupportedAccessoryA2879);
  [v117 addSupportedAccessory:v118];

  v119 = defaultManager_sharedManager;
  v120 = objc_alloc_init(UARPSupportedAccessoryA2755);
  [v119 addSupportedAccessory:v120];

  v121 = defaultManager_sharedManager;
  v122 = objc_alloc_init(UARPSupportedAccessoryA2675);
  [v121 addSupportedAccessory:v122];

  v123 = defaultManager_sharedManager;
  v124 = objc_alloc_init(UARPSupportedAccessoryComputeModulePSU);
  [v123 addSupportedAccessory:v124];
}

- (void)addSupportedAccessoriesByURL:(id)l
{
  lCopy = l;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:lCopy];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    [(UARPSupportedAccessoryManager *)lCopy addSupportedAccessoriesByURL:?];
  }

  [(UARPSupportedAccessoryManager *)self addSupportedAccessoryByDictionary:v5];
  v7 = self->_log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(UARPSupportedAccessoryManager *)self addSupportedAccessoriesByURL:v7];
  }
}

- (void)addSupportedAccessoryByDictionary:(id)dictionary
{
  v17 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [dictionaryCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(dictionaryCopy);
        }

        v9 = [dictionaryCopy objectForKeyedSubscript:*(*(&v12 + 1) + 8 * v8)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [[UARPSupportedAccessory alloc] initWithDictionary:v9];
          if (v10)
          {
            [(UARPSupportedAccessoryManager *)self addSupportedAccessory:v10];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [dictionaryCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addSupportedAccessory:(id)accessory
{
  accessoryCopy = accessory;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (([(NSMutableSet *)selfCopy->_setOfAccessories containsObject:accessoryCopy]& 1) == 0)
  {
    [(NSMutableSet *)selfCopy->_setOfAccessories addObject:accessoryCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)addSupportedAccessories:(id)accessories
{
  v15 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [accessoriesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(accessoriesCopy);
        }

        [(UARPSupportedAccessoryManager *)self addSupportedAccessory:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [accessoriesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)findByHardwareID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = selfCopy->_setOfAccessories;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        hardwareID = [v10 hardwareID];
        v12 = [hardwareID isEqual:dCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(selfCopy);
  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)findByIdentifier:(id)identifier
{
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = selfCopy->_setOfAccessories;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = *v27;
    v21 = selfCopy;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:identifierCopy];

        if (v12)
        {
          v18 = v10;
          goto LABEL_20;
        }

        v13 = v7;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        alternativeAppleModelNumbers = [v10 alternativeAppleModelNumbers];
        v15 = [alternativeAppleModelNumbers countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v15)
        {
          v16 = *v23;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v23 != v16)
              {
                objc_enumerationMutation(alternativeAppleModelNumbers);
              }

              if ([*(*(&v22 + 1) + 8 * j) isEqualToString:identifierCopy])
              {
                v18 = v10;

                selfCopy = v21;
                goto LABEL_20;
              }
            }

            v15 = [alternativeAppleModelNumbers countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v7 = v13;
        selfCopy = v21;
      }

      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
      v18 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_20:

  objc_sync_exit(selfCopy);
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)addSupportedAccessoriesByURL:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_247AA7000, a2, OS_LOG_TYPE_ERROR, "Adding Supported Accessories from %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)addSupportedAccessoriesByURL:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_247AA7000, a2, OS_LOG_TYPE_ERROR, "Supported Accessories %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end