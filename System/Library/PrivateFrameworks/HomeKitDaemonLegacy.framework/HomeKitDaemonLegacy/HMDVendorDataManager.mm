@interface HMDVendorDataManager
+ (id)dbURL;
+ (id)logCategory;
+ (id)sharedVendorDataManager;
- (BOOL)_loadDatabaseFromDictionary:(id)dictionary;
- (BOOL)_loadDatabaseFromFilePath:(id)path fileDescription:(id)description;
- (BOOL)_loadDatabaseFromFileURL:(id)l fileDescription:(id)description;
- (BOOL)_parseDatabaseFromDictionary:(id)dictionary dataVersion:(int64_t *)version collectionsByManufacturer:(id *)manufacturer entriesByProductData:(id *)data;
- (BOOL)_parseManufacturersList:(id)list collectionsByManufacturer:(id *)manufacturer entriesByProductData:(id *)data;
- (BOOL)databaseContainsManufacturer:(id)manufacturer;
- (HMDVendorDataManager)init;
- (HMDVendorDataManager)initWithDefaults;
- (HMDVendorDataManager)initWithWorkQueue:(id)queue downloader:(id)downloader fetchTimer:(id)timer;
- (NSDictionary)collectionsByManufacturer;
- (NSURL)urlForBundledInternalPlist;
- (NSURL)urlForBundledPlist;
- (id)_createMmapFromEncodedData:(id)data errorContext:(id)context;
- (id)_modelsStringForManufacturer:(id)manufacturer model:(id)model dictionary:(id)dictionary key:(id)key;
- (id)_parseVendorModelEntryForManufacturer:(id)manufacturer model:(id)model dictionary:(id)dictionary;
- (id)modelCollectionForManufacturer:(id)manufacturer;
- (id)vendorModelEntryForManufacturer:(id)manufacturer model:(id)model;
- (id)vendorModelEntryForProductData:(id)data;
- (void)_fetchDataFromServer;
- (void)_handleDataFromServer:(id)server;
- (void)_handleServerResponse:(id)response withData:(id)data error:(id)error;
- (void)_loadDatabaseFromLocalFiles;
- (void)_start;
- (void)setCollectionsByManufacturer:(id)manufacturer;
- (void)setEntriesByProductData:(id)data;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDVendorDataManager

- (void)timerDidFire:(id)fire
{
  v15 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDVendorDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v9;
    v13 = 2048;
    v14 = vendorInfoFetchPeriod;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Timer fired after %.0lf sec", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDVendorDataManager *)selfCopy _fetchDataFromServer];

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_parseManufacturersList:(id)list collectionsByManufacturer:(id *)manufacturer entriesByProductData:(id *)data
{
  v111 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v105 = v11;
    v106 = 2112;
    v107 = listCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Parsing manufacturers dictionary: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v15 = listCopy;
  v16 = [(__CFString *)v15 countByEnumeratingWithState:&v99 objects:v110 count:16];
  if (!v16)
  {
LABEL_37:

    v47 = objc_autoreleasePoolPush();
    v48 = selfCopy;
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v51 = v50 = dictionary2;
      *buf = 138543618;
      v105 = v51;
      v106 = 2112;
      v107 = dictionary;
      _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_DEBUG, "%{public}@Prepared vendor model entries: %@", buf, 0x16u);

      dictionary2 = v50;
    }

    objc_autoreleasePoolPop(v47);
    *manufacturer = [(__CFString *)dictionary copy];
    *data = [dictionary2 copy];
    v52 = 1;
    goto LABEL_49;
  }

  v17 = *v100;
  v89 = whitespaceCharacterSet;
  v86 = v15;
  v93 = selfCopy;
  v79 = *v100;
  dataCopy = data;
LABEL_5:
  v18 = 0;
  v81 = v16;
LABEL_6:
  if (*v100 != v17)
  {
    objc_enumerationMutation(v15);
  }

  v82 = v18;
  v19 = *(*(&v99 + 1) + 8 * v18);
  v20 = objc_autoreleasePoolPush();
  v21 = v19;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  v24 = [(__CFString *)v23 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  v90 = v24;
  if (![(__CFString *)v24 length])
  {
    v62 = v20;
    v63 = objc_autoreleasePoolPush();
    v64 = v93;
    v65 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v67 = v66 = dictionary2;
      *buf = 138543618;
      v105 = v67;
      v106 = 2112;
      v107 = v21;
      _os_log_impl(&dword_2531F8000, v65, OS_LOG_TYPE_ERROR, "%{public}@Manufacturers dictionary contains invalid key: %@", buf, 0x16u);

      dictionary2 = v66;
      whitespaceCharacterSet = v89;
    }

    objc_autoreleasePoolPop(v63);
    v20 = v62;
    v24 = v90;
    goto LABEL_48;
  }

  lowercaseString = [(__CFString *)v24 lowercaseString];
  v26 = [(__CFString *)dictionary objectForKeyedSubscript:lowercaseString];
  if (!v26)
  {
    v26 = objc_alloc_init(HMDVendorModelCollection);
    [(__CFString *)dictionary setObject:v26 forKeyedSubscript:lowercaseString];
  }

  dataCopy = [(__CFString *)v15 hmf_dictionaryForKey:v24, v79, dataCopy];
  v87 = lowercaseString;
  v92 = v26;
  if (!dataCopy)
  {
    v68 = objc_autoreleasePoolPush();
    v69 = v93;
    v70 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v71 = v20;
      v73 = v72 = dictionary2;
      *buf = 138543618;
      v105 = v73;
      v106 = 2112;
      v107 = v90;
      _os_log_impl(&dword_2531F8000, v70, OS_LOG_TYPE_ERROR, "%{public}@Manufacturers dictionary contains an invalid entry for %@", buf, 0x16u);

      dictionary2 = v72;
      v20 = v71;
      v24 = v90;
    }

    objc_autoreleasePoolPop(v68);
    goto LABEL_48;
  }

  v88 = dataCopy;
  v28 = [dataCopy hmf_dictionaryForKey:@"Models"];
  if (v28)
  {
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v29 = v28;
    v30 = [v29 countByEnumeratingWithState:&v95 objects:v103 count:16];
    if (!v30)
    {
      goto LABEL_33;
    }

    v31 = v30;
    v32 = *v96;
    v83 = dictionary;
    v85 = v20;
LABEL_18:
    v33 = 0;
    while (1)
    {
      if (*v96 != v32)
      {
        objc_enumerationMutation(v29);
      }

      v34 = *(*(&v95 + 1) + 8 * v33);
      objc_opt_class();
      v35 = (objc_opt_isKindOfClass() & 1) != 0 ? v34 : 0;
      v36 = v35;

      v37 = [v36 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

      if (![v37 length])
      {
        break;
      }

      v38 = [v29 hmf_dictionaryForKey:v37];
      if (!v38)
      {
        v57 = objc_autoreleasePoolPush();
        v58 = v93;
        v54 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v59 = HMFGetLogIdentifier();
          *buf = 138543874;
          v105 = v59;
          v106 = 2112;
          v107 = v24;
          v108 = 2112;
          v109 = v37;
          _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_ERROR, "%{public}@Manufacturer %@ contains an invalid model entry for %@", buf, 0x20u);
        }

        dictionary = v83;
        v15 = v86;
        v56 = v87;
LABEL_46:

        objc_autoreleasePoolPop(v57);
        goto LABEL_47;
      }

      v39 = v38;
      v40 = [(HMDVendorDataManager *)v93 _parseVendorModelEntryForManufacturer:v24 model:v37 dictionary:v38];
      [(HMDVendorModelCollection *)v92 addEntry:v40];
      productData = [v40 productData];
      if (productData)
      {
        v42 = dictionary2;
        v43 = [dictionary2 objectForKeyedSubscript:productData];
        v44 = v43;
        if (!v43 || [v43 compare:v40] == -1)
        {
          [v42 setObject:v40 forKeyedSubscript:productData];
        }

        dictionary2 = v42;
        whitespaceCharacterSet = v89;
      }

      ++v33;
      v24 = v90;
      if (v31 == v33)
      {
        v31 = [v29 countByEnumeratingWithState:&v95 objects:v103 count:16];
        dictionary = v83;
        v20 = v85;
        if (v31)
        {
          goto LABEL_18;
        }

LABEL_33:

        v45 = [v88 hmf_dictionaryForKey:@"DefaultModel"];
        if (v45)
        {
          v46 = [(HMDVendorDataManager *)v93 _parseVendorModelEntryForManufacturer:v24 model:@"DefaultModel" dictionary:v45];
          [(HMDVendorModelCollection *)v92 setDefaultEntry:v46];
        }

        objc_autoreleasePoolPop(v20);
        v18 = v82 + 1;
        v15 = v86;
        selfCopy = v93;
        v17 = v79;
        data = dataCopy;
        if (v82 + 1 == v81)
        {
          v16 = [(__CFString *)v86 countByEnumeratingWithState:&v99 objects:v110 count:16];
          if (!v16)
          {
            goto LABEL_37;
          }

          goto LABEL_5;
        }

        goto LABEL_6;
      }
    }

    v91 = objc_autoreleasePoolPush();
    v53 = v93;
    v54 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = HMFGetLogIdentifier();
      *buf = 138543874;
      v105 = v55;
      v106 = 2112;
      v107 = v24;
      v108 = 2112;
      v109 = v34;
      _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_ERROR, "%{public}@Models dictionary for %@ contains invalid key: %@", buf, 0x20u);
    }

    dictionary = v83;
    v15 = v86;
    v56 = v87;
    v57 = v91;
    goto LABEL_46;
  }

  v85 = v20;
  v74 = objc_autoreleasePoolPush();
  v75 = v93;
  v76 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
  {
    v77 = HMFGetLogIdentifier();
    [v88 objectForKeyedSubscript:@"Models"];
    v78 = v94 = dictionary2;
    *buf = 138543874;
    v105 = v77;
    v106 = 2112;
    v107 = @"Models";
    v108 = 2112;
    v109 = v78;
    _os_log_impl(&dword_2531F8000, v76, OS_LOG_TYPE_ERROR, "%{public}@Manufacturers dictionary contains an invalid %@ value: %@", buf, 0x20u);

    dictionary2 = v94;
    whitespaceCharacterSet = v89;
  }

  objc_autoreleasePoolPop(v74);
  v29 = 0;
  v56 = v87;
LABEL_47:

  v20 = v85;
LABEL_48:

  objc_autoreleasePoolPop(v20);
  v52 = 0;
LABEL_49:

  v60 = *MEMORY[0x277D85DE8];
  return v52;
}

- (id)_parseVendorModelEntryForManufacturer:(id)manufacturer model:(id)model dictionary:(id)dictionary
{
  v40 = *MEMORY[0x277D85DE8];
  manufacturerCopy = manufacturer;
  modelCopy = model;
  dictionaryCopy = dictionary;
  v33 = [(HMDVendorDataManager *)self _modelsStringForManufacturer:manufacturerCopy model:modelCopy dictionary:dictionaryCopy key:@"BundleID"];
  v32 = [(HMDVendorDataManager *)self _modelsStringForManufacturer:manufacturerCopy model:modelCopy dictionary:dictionaryCopy key:@"StoreID"];
  v31 = [(HMDVendorDataManager *)self _modelsStringForManufacturer:manufacturerCopy model:modelCopy dictionary:dictionaryCopy key:@"FirmwareVersion"];
  v11 = [(HMDVendorDataManager *)self _modelsStringForManufacturer:manufacturerCopy model:modelCopy dictionary:dictionaryCopy key:@"ProductData"];
  if (v11 && ![HMDAccessory validateProductData:v11])
  {
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [dictionaryCopy objectForKeyedSubscript:@"ProductData"];
      *buf = 138544386;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = manufacturerCopy;
      *&buf[22] = 2112;
      v38 = modelCopy;
      *v39 = 2112;
      *&v39[2] = @"ProductData";
      *&v39[10] = 2112;
      *&v39[12] = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Models dictionary for %@:%@ contains an invalid %@ value: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(context);
    v11 = 0;
  }

  v16 = [dictionaryCopy objectForKeyedSubscript:@"ProductDataChangeAllowedTo"];

  if (v16)
  {
    v17 = [dictionaryCopy hmf_arrayForKey:@"ProductDataChangeAllowedTo"];
    if (![v17 count])
    {
      goto LABEL_13;
    }

    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v38 = __Block_byref_object_copy__127909;
    *v39 = __Block_byref_object_dispose__127910;
    *&v39[8] = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v17, "count")}];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __79__HMDVendorDataManager__parseVendorModelEntryForManufacturer_model_dictionary___block_invoke;
    v34[3] = &unk_27972CA08;
    v19 = whitespaceCharacterSet;
    v35 = v19;
    v36 = buf;
    [v17 hmf_enumerateWithAutoreleasePoolUsingBlock:v34];
    v20 = *(*&buf[8] + 40);
    v21 = v20 ? [v20 copy] : 0;

    _Block_object_dispose(buf, 8);
    if (!v21)
    {
LABEL_13:
      contexta = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [dictionaryCopy objectForKeyedSubscript:@"ProductDataChangeAllowedTo"];
        *buf = 138544386;
        *&buf[4] = v24;
        *&buf[12] = 2112;
        *&buf[14] = manufacturerCopy;
        *&buf[22] = 2112;
        v38 = modelCopy;
        *v39 = 2112;
        *&v39[2] = @"ProductDataChangeAllowedTo";
        *&v39[10] = 2112;
        *&v39[12] = v25;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Models dictionary for %@:%@ contains an invalid %@ value: %@", buf, 0x34u);
      }

      objc_autoreleasePoolPop(contexta);
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v26 = [[HMDVendorModelEntry alloc] initWithManufacturer:manufacturerCopy model:modelCopy appBundleID:v33 appStoreID:v32 firmwareVersion:v31 productData:v11 productDataAlternates:v21];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

void __79__HMDVendorDataManager__parseVendorModelEntryForManufacturer_model_dictionary___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v12;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v7 stringByTrimmingCharactersInSet:*(a1 + 32)];

  v9 = [v8 lowercaseString];

  if (v9 && [HMDAccessory validateProductData:v9])
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v9];
  }

  else
  {
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;

    *a4 = 1;
  }
}

- (id)_modelsStringForManufacturer:(id)manufacturer model:(id)model dictionary:(id)dictionary key:(id)key
{
  v35 = *MEMORY[0x277D85DE8];
  manufacturerCopy = manufacturer;
  modelCopy = model;
  dictionaryCopy = dictionary;
  keyCopy = key;
  v14 = [dictionaryCopy hmf_stringForKey:keyCopy];
  if (v14)
  {
    v15 = v14;
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v17 = [v15 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

    if ([v17 length])
    {
      if (v17)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_7:
  v17 = [dictionaryCopy objectForKeyedSubscript:keyCopy];

  if (v17)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [dictionaryCopy objectForKeyedSubscript:keyCopy];
      v25 = 138544386;
      v26 = v21;
      v27 = 2112;
      v28 = manufacturerCopy;
      v29 = 2112;
      v30 = modelCopy;
      v31 = 2112;
      v32 = keyCopy;
      v33 = 2112;
      v34 = v22;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Models dictionary for %@:%@ contains an invalid %@ value: %@", &v25, 0x34u);
    }

    objc_autoreleasePoolPop(v18);
    v17 = 0;
  }

LABEL_11:

  v23 = *MEMORY[0x277D85DE8];

  return v17;
}

- (BOOL)_parseDatabaseFromDictionary:(id)dictionary dataVersion:(int64_t *)version collectionsByManufacturer:(id *)manufacturer entriesByProductData:(id *)data
{
  v138[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  HMFUptime();
  v12 = v11;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138544386;
    v116 = v16;
    v117 = 2114;
    v118 = @"vendorDataManagerStart";
    v119 = 2112;
    v120 = @"Parsing vendor database";
    v121 = 2114;
    v122 = @"state";
    v123 = 2112;
    v124 = @"vendorDataManagerParsingData";
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v13);
  mEMORY[0x277D17DE8] = [MEMORY[0x277D17DE8] sharedInstance];
  v18 = objc_alloc(MEMORY[0x277D17DF8]);
  v137 = @"state";
  v138[0] = @"vendorDataManagerParsingData";
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v138 forKeys:&v137 count:1];
  v20 = [v18 initWithTag:@"vendorDataManagerStart" data:v19];
  currentTagProcessorList = [MEMORY[0x277D0F770] currentTagProcessorList];
  [mEMORY[0x277D17DE8] submitTaggedEvent:v20 processorList:currentTagProcessorList];

  v22 = [dictionaryCopy hmf_numberForKey:@"SchemaVersion"];
  integerValue = [v22 integerValue];

  if (integerValue != 1)
  {
    v37 = objc_autoreleasePoolPush();
    v38 = selfCopy;
    v39 = HMFGetOSLogHandle();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
    v41 = MEMORY[0x277CBEC28];
    if (v40)
    {
      v42 = HMFGetLogIdentifier();
      v43 = [dictionaryCopy hmf_numberForKey:@"SchemaVersion"];
      *buf = 138545410;
      v116 = v42;
      v117 = 2114;
      v118 = @"vendorDataManagerStart";
      v119 = 2112;
      v120 = @"Error: Unsupported schema version";
      v121 = 2114;
      v122 = @"state";
      v123 = 2112;
      v124 = @"vendorDataManagerParsedData";
      v125 = 2114;
      v126 = @"success";
      v127 = 2112;
      v128 = v41;
      v129 = 2114;
      v130 = @"DataVersion";
      v131 = 2112;
      v132 = v43;
      _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x5Cu);
    }

    objc_autoreleasePoolPop(v37);
    mEMORY[0x277D17DE8]2 = [MEMORY[0x277D17DE8] sharedInstance];
    v44 = objc_alloc(MEMORY[0x277D17DF8]);
    mEMORY[0x277D17DE8]3 = [dictionaryCopy hmf_numberForKey:@"SchemaVersion"];
    v34 = HMDTaggedLoggingCreateDictionary();
    v35 = [v44 initWithTag:@"vendorDataManagerStart" data:{v34, @"state", @"vendorDataManagerParsedData", @"success", v41, @"DataVersion", mEMORY[0x277D17DE8]3}];
    v36 = MEMORY[0x277D0F770];
    goto LABEL_12;
  }

  v24 = [dictionaryCopy hmf_numberForKey:@"DataVersion"];
  integerValue2 = [v24 integerValue];

  if (integerValue2 <= 52)
  {
    v26 = objc_autoreleasePoolPush();
    v27 = selfCopy;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      v30 = [dictionaryCopy hmf_numberForKey:@"DataVersion"];
      *buf = 138545922;
      v116 = v29;
      v117 = 2114;
      v118 = @"vendorDataManagerStart";
      v119 = 2112;
      v120 = @"Error: Data version is lower than minimum";
      v121 = 2114;
      v122 = @"state";
      v123 = 2112;
      v124 = @"vendorDataManagerParsedData";
      v125 = 2114;
      v126 = @"success";
      v127 = 2112;
      v128 = MEMORY[0x277CBEC28];
      v129 = 2114;
      v130 = @"DataVersion";
      v131 = 2112;
      v132 = v30;
      v133 = 2114;
      v134 = @"MinVersion";
      v135 = 2112;
      v136 = &unk_286628FC0;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x70u);
    }

    objc_autoreleasePoolPop(v26);
    mEMORY[0x277D17DE8]2 = [MEMORY[0x277D17DE8] sharedInstance];
    v32 = objc_alloc(MEMORY[0x277D17DF8]);
    mEMORY[0x277D17DE8]3 = [dictionaryCopy hmf_numberForKey:@"DataVersion"];
    v99 = mEMORY[0x277D17DE8]3;
    v95 = MEMORY[0x277CBEC28];
LABEL_8:
    v34 = HMDTaggedLoggingCreateDictionary();
    v35 = [v32 initWithTag:@"vendorDataManagerStart" data:{v34, @"state", @"vendorDataManagerParsedData", @"success", v95, @"DataVersion", v99}];
    v36 = MEMORY[0x277D0F770];
LABEL_12:
    currentTagProcessorList2 = [v36 currentTagProcessorList];
    [(__CFString *)mEMORY[0x277D17DE8]2 submitTaggedEvent:v35 processorList:currentTagProcessorList2];
LABEL_13:

LABEL_14:
    v46 = 0;
    goto LABEL_15;
  }

  if (integerValue2 < [(HMDVendorDataManager *)selfCopy dataVersion])
  {
    v49 = objc_autoreleasePoolPush();
    v50 = selfCopy;
    v51 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = HMFGetLogIdentifier();
      v53 = [MEMORY[0x277CCABB0] numberWithLong:integerValue2];
      v54 = [MEMORY[0x277CCABB0] numberWithLong:{-[HMDVendorDataManager dataVersion](v50, "dataVersion")}];
      *buf = 138545922;
      v116 = v52;
      v117 = 2114;
      v118 = @"vendorDataManagerStart";
      v119 = 2112;
      v120 = @"Error: Data version is lower than current";
      v121 = 2114;
      v122 = @"state";
      v123 = 2112;
      v124 = @"vendorDataManagerParsedData";
      v125 = 2114;
      v126 = @"success";
      v127 = 2112;
      v128 = MEMORY[0x277CBEC28];
      v129 = 2114;
      v130 = @"DataVersion";
      v131 = 2112;
      v132 = v53;
      v133 = 2114;
      v134 = @"CurrentVersion";
      v135 = 2112;
      v136 = v54;
      _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x70u);
    }

    objc_autoreleasePoolPop(v49);
    mEMORY[0x277D17DE8]2 = [MEMORY[0x277D17DE8] sharedInstance];
    v55 = objc_alloc(MEMORY[0x277D17DF8]);
    mEMORY[0x277D17DE8]3 = [MEMORY[0x277CCABB0] numberWithLong:integerValue2];
    v34 = [MEMORY[0x277CCABB0] numberWithLong:{-[HMDVendorDataManager dataVersion](v50, "dataVersion")}];
    v96 = MEMORY[0x277CBEC28];
    v35 = HMDTaggedLoggingCreateDictionary();
    currentTagProcessorList2 = [v55 initWithTag:@"vendorDataManagerStart" data:{v35, @"state", @"vendorDataManagerParsedData", @"success", v96, @"DataVersion", mEMORY[0x277D17DE8]3, @"CurrentVersion", v34}];
    currentTagProcessorList3 = [MEMORY[0x277D0F770] currentTagProcessorList];
    [(__CFString *)mEMORY[0x277D17DE8]2 submitTaggedEvent:currentTagProcessorList2 processorList:currentTagProcessorList3];

    goto LABEL_13;
  }

  dataVersion = [(HMDVendorDataManager *)selfCopy dataVersion];
  v58 = objc_autoreleasePoolPush();
  v59 = selfCopy;
  v60 = HMFGetOSLogHandle();
  v61 = v60;
  if (integerValue2 == dataVersion)
  {
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      v62 = HMFGetLogIdentifier();
      v63 = [MEMORY[0x277CCABB0] numberWithLong:integerValue2];
      *buf = 138545410;
      v116 = v62;
      v117 = 2114;
      v118 = @"vendorDataManagerStart";
      v119 = 2112;
      v120 = @"Data version is the same as current";
      v121 = 2114;
      v122 = @"state";
      v123 = 2112;
      v124 = @"vendorDataManagerParsedData";
      v125 = 2114;
      v126 = @"success";
      v127 = 2112;
      v128 = MEMORY[0x277CBEC28];
      v129 = 2114;
      v130 = @"DataVersion";
      v131 = 2112;
      v132 = v63;
      _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x5Cu);
    }

    objc_autoreleasePoolPop(v58);
    mEMORY[0x277D17DE8]2 = [MEMORY[0x277D17DE8] sharedInstance];
    v32 = objc_alloc(MEMORY[0x277D17DF8]);
    mEMORY[0x277D17DE8]3 = [MEMORY[0x277CCABB0] numberWithLong:integerValue2];
    v99 = mEMORY[0x277D17DE8]3;
    v95 = MEMORY[0x277CBEC28];
    goto LABEL_8;
  }

  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    v64 = HMFGetLogIdentifier();
    *buf = 138543618;
    v116 = v64;
    v117 = 2048;
    v118 = integerValue2;
    _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_DEFAULT, "%{public}@Parsing data version %ld", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v58);
  v65 = [dictionaryCopy hmf_dictionaryForKey:@"Manufacturers"];
  if (!v65)
  {
    v76 = objc_autoreleasePoolPush();
    v77 = v59;
    v78 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      v79 = HMFGetLogIdentifier();
      v80 = [dictionaryCopy objectForKeyedSubscript:@"Manufacturers"];
      *buf = 138545410;
      v116 = v79;
      v117 = 2114;
      v118 = @"vendorDataManagerStart";
      v119 = 2112;
      v120 = @"Error: Data contains invalid manufacturers";
      v121 = 2114;
      v122 = @"state";
      v123 = 2112;
      v124 = @"vendorDataManagerParsedData";
      v125 = 2114;
      v126 = @"success";
      v127 = 2112;
      v128 = MEMORY[0x277CBEC28];
      v129 = 2114;
      v130 = @"Manufacturers";
      v131 = 2112;
      v132 = v80;
      _os_log_impl(&dword_2531F8000, v78, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x5Cu);
    }

    objc_autoreleasePoolPop(v76);
    mEMORY[0x277D17DE8]3 = [MEMORY[0x277D17DE8] sharedInstance];
    v81 = objc_alloc(MEMORY[0x277D17DF8]);
    v34 = [dictionaryCopy objectForKeyedSubscript:@"Manufacturers"];
    v97 = MEMORY[0x277CBEC28];
    v82 = HMDTaggedLoggingCreateDictionary();
    v83 = [v81 initWithTag:@"vendorDataManagerStart" data:{v82, @"state", @"vendorDataManagerParsedData", @"success", v97, @"Manufacturers", v34}];
    currentTagProcessorList4 = [MEMORY[0x277D0F770] currentTagProcessorList];
    [mEMORY[0x277D17DE8]3 submitTaggedEvent:v83 processorList:currentTagProcessorList4];

    mEMORY[0x277D17DE8]2 = 0;
    goto LABEL_14;
  }

  mEMORY[0x277D17DE8]2 = v65;
  v113 = 0;
  v114 = 0;
  v106 = [(HMDVendorDataManager *)v59 _parseManufacturersList:v65 collectionsByManufacturer:&v114 entriesByProductData:&v113];
  mEMORY[0x277D17DE8]3 = v114;
  v34 = v113;
  context = objc_autoreleasePoolPush();
  v111 = v59;
  v66 = HMFGetOSLogHandle();
  v67 = v66;
  if (!v106)
  {
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v85 = HMFGetLogIdentifier();
      *buf = 138544898;
      v116 = v85;
      v117 = 2114;
      v118 = @"vendorDataManagerStart";
      v119 = 2112;
      v120 = @"Error: Manufacturers failed to parse";
      v121 = 2114;
      v122 = @"state";
      v123 = 2112;
      v124 = @"vendorDataManagerParsedData";
      v125 = 2114;
      v126 = @"success";
      v127 = 2112;
      v128 = MEMORY[0x277CBEC28];
      _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
    }

    objc_autoreleasePoolPop(context);
    mEMORY[0x277D17DE8]4 = [MEMORY[0x277D17DE8] sharedInstance];
    v87 = objc_alloc(MEMORY[0x277D17DF8]);
    v98 = MEMORY[0x277CBEC28];
    v88 = HMDTaggedLoggingCreateDictionary();
    v89 = [v87 initWithTag:@"vendorDataManagerStart" data:{v88, @"state", @"vendorDataManagerParsedData", @"success", v98}];
    currentTagProcessorList5 = [MEMORY[0x277D0F770] currentTagProcessorList];
    [mEMORY[0x277D17DE8]4 submitTaggedEvent:v89 processorList:currentTagProcessorList5];

    v91 = objc_autoreleasePoolPush();
    v92 = v111;
    v93 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      v94 = HMFGetLogIdentifier();
      *buf = 138543618;
      v116 = v94;
      v117 = 2112;
      v118 = mEMORY[0x277D17DE8]2;
      _os_log_impl(&dword_2531F8000, v93, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse manufacturers: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v91);
    goto LABEL_14;
  }

  if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
  {
    v68 = HMFGetLogIdentifier();
    v103 = MEMORY[0x277CCACA8];
    v107 = v68;
    HMFUptime();
    v104 = [v103 stringWithFormat:@"%.3f", v69 - v12];
    v101 = [MEMORY[0x277CCABB0] numberWithLong:integerValue2];
    *buf = 138545922;
    v116 = v107;
    v117 = 2114;
    v118 = @"vendorDataManagerStart";
    v119 = 2112;
    v120 = @"Parsing succeeded";
    v121 = 2114;
    v122 = @"state";
    v123 = 2112;
    v124 = @"vendorDataManagerParsedData";
    v125 = 2114;
    v126 = @"duration";
    v127 = 2112;
    v128 = v104;
    v129 = 2114;
    v130 = @"success";
    v131 = 2112;
    v132 = MEMORY[0x277CBEC38];
    v133 = 2114;
    v134 = @"DataVersion";
    v135 = 2112;
    v136 = v101;
    _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x70u);
  }

  objc_autoreleasePoolPop(context);
  mEMORY[0x277D17DE8]5 = [MEMORY[0x277D17DE8] sharedInstance];
  v105 = objc_alloc(MEMORY[0x277D17DF8]);
  v70 = MEMORY[0x277CCACA8];
  HMFUptime();
  v108 = [v70 stringWithFormat:@"%.3f", v71 - v12];
  contexta = [MEMORY[0x277CCABB0] numberWithLong:integerValue2];
  v100 = MEMORY[0x277CBEC38];
  v102 = HMDTaggedLoggingCreateDictionary();
  v72 = [v105 initWithTag:@"vendorDataManagerStart" data:{v102, @"state", @"vendorDataManagerParsedData", @"duration", v108, @"success", v100, @"DataVersion", contexta}];
  currentTagProcessorList6 = [MEMORY[0x277D0F770] currentTagProcessorList];
  [mEMORY[0x277D17DE8]5 submitTaggedEvent:v72 processorList:currentTagProcessorList6];

  *version = integerValue2;
  v74 = mEMORY[0x277D17DE8]3;
  *manufacturer = mEMORY[0x277D17DE8]3;
  v75 = v34;
  *data = v34;
  v46 = 1;
LABEL_15:

  v47 = *MEMORY[0x277D85DE8];
  return v46;
}

- (void)_handleDataFromServer:(id)server
{
  v51 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  v44 = 0;
  v5 = [MEMORY[0x277CCAC58] propertyListWithData:serverCopy options:0 format:0 error:&v44];
  v6 = v44;
  if (v5)
  {
    v42 = 0;
    v43 = 0;
    v41 = 0;
    v7 = [(HMDVendorDataManager *)self _parseDatabaseFromDictionary:v5 dataVersion:&v43 collectionsByManufacturer:&v42 entriesByProductData:&v41];
    v8 = v42;
    v9 = v41;
    if (v7)
    {
      v36 = v6;
      v38 = v9;
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v48 = v13;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully parsed database from server, saving to disk", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      [serverCopy writeToFile:@"/var/mobile/Library/homed/vendor-database" atomically:1];
      v14 = [MEMORY[0x277CBEB58] set];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __46__HMDVendorDataManager__handleDataFromServer___block_invoke;
      v39[3] = &unk_27972C9E0;
      v39[4] = selfCopy;
      v15 = v14;
      v40 = v15;
      [v8 enumerateKeysAndObjectsUsingBlock:v39];
      v16 = MEMORY[0x277CBEB98];
      allKeys = [v8 allKeys];
      v18 = [v16 setWithArray:allKeys];

      v19 = MEMORY[0x277CBEB58];
      collectionsByManufacturer = [(HMDVendorDataManager *)selfCopy collectionsByManufacturer];
      allKeys2 = [collectionsByManufacturer allKeys];
      v22 = [v19 setWithArray:allKeys2];

      v37 = v18;
      [v22 minusSet:v18];
      if ([v22 count])
      {
        allObjects = [v22 allObjects];
        [v15 addObjectsFromArray:allObjects];
      }

      [(HMDVendorDataManager *)selfCopy setDataVersion:v43];
      [(HMDVendorDataManager *)selfCopy setCollectionsByManufacturer:v8];
      [(HMDVendorDataManager *)selfCopy setEntriesByProductData:v38];
      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543362;
        v48 = v27;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Setting entriesByProductData", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
      v6 = v36;
      if ([v15 count])
      {
        v45 = @"ChangedManufacturer";
        allObjects2 = [v15 allObjects];
        v46 = allObjects2;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];

        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter postNotificationName:@"kHMDVendorInfoUpdatedNotification" object:v25 userInfo:v29];
      }

      v9 = v38;
    }
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v48 = v34;
      v49 = 2112;
      v50 = v6;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Error while deserializing plist from server data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __46__HMDVendorDataManager__handleDataFromServer___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) collectionsByManufacturer];
  v7 = [v6 objectForKeyedSubscript:v8];

  if (!v7 || ([v7 isEqual:v5] & 1) == 0)
  {
    [*(a1 + 40) addObject:v8];
  }
}

- (void)_handleServerResponse:(id)response withData:(id)data error:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  dataCopy = data;
  errorCopy = error;
  fetchTimer = [(HMDVendorDataManager *)self fetchTimer];
  [fetchTimer kick];

  if (errorCopy)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v15;
      v29 = 2112;
      v30 = errorCopy;
      v16 = "%{public}@Failed to get the vendor info with error: %@";
      v17 = v14;
      v18 = 22;
LABEL_9:
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, v16, &v27, v18);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v15;
      v16 = "%{public}@Failed to receive HTTP response";
      v17 = v14;
      v18 = 12;
      goto LABEL_9;
    }

LABEL_10:

    objc_autoreleasePoolPop(v12);
    goto LABEL_11;
  }

  v19 = responseCopy;
  statusCode = [v19 statusCode];
  if (statusCode == 200)
  {
    [(HMDVendorDataManager *)self _handleDataFromServer:dataCopy];
  }

  else
  {
    v22 = statusCode;
    v23 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v26;
      v29 = 2048;
      v30 = v22;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Received status code %ld from vendor info request", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
  }

LABEL_11:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_fetchDataFromServer
{
  objc_initWeak(&location, self);
  v3 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"ManufacturerDB.fetch" parent:0 options:1];
  simpleDownloader = [(HMDVendorDataManager *)self simpleDownloader];
  dbURL = [objc_opt_class() dbURL];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HMDVendorDataManager__fetchDataFromServer__block_invoke;
  v7[3] = &unk_27972C9B8;
  objc_copyWeak(&v9, &location);
  v6 = v3;
  v8 = v6;
  [simpleDownloader fetchURL:dbURL completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __44__HMDVendorDataManager__fetchDataFromServer__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__HMDVendorDataManager__fetchDataFromServer__block_invoke_2;
    block[3] = &unk_2797352C0;
    v14 = *(a1 + 32);
    v15 = v11;
    v16 = v8;
    v17 = v7;
    v18 = v9;
    dispatch_async(v12, block);
  }
}

uint64_t __44__HMDVendorDataManager__fetchDataFromServer__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) begin];
  [*(a1 + 40) _handleServerResponse:*(a1 + 48) withData:*(a1 + 56) error:*(a1 + 64)];
  [*(a1 + 32) end];
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (void)_start
{
  workQueue = [(HMDVendorDataManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__HMDVendorDataManager__start__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __30__HMDVendorDataManager__start__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Starting", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) fetchTimer];
  [v6 resume];

  result = [*(a1 + 32) _fetchDataFromServer];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_loadDatabaseFromLocalFiles
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __51__HMDVendorDataManager__loadDatabaseFromLocalFiles__block_invoke;
  v2[3] = &unk_279735D00;
  v2[4] = self;
  [MEMORY[0x277D0F770] activityWithName:@"ManufacturerDB.load" parent:0 options:1 block:v2];
}

void __51__HMDVendorDataManager__loadDatabaseFromLocalFiles__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"allowVendorDataOverride"];
  if ([v3 BOOLValue])
  {
    v4 = [*(a1 + 32) _loadDatabaseFromFilePath:@"/var/mobile/Library/homed/vendor-database-local" fileDescription:@"side-loaded"];

    if (v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  if (([*(a1 + 32) _loadDatabaseFromFilePath:@"/var/mobile/Library/homed/vendor-database" fileDescription:@"cached"] & 1) == 0)
  {
    v5 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v6 = [v5 preferenceForKey:@"allowVendorDataOverride"];
    v7 = [v6 BOOLValue];

    v8 = *(a1 + 32);
    if (v7)
    {
      v9 = [v8 urlForBundledInternalPlist];
      v10 = @"bundled internal";
    }

    else
    {
      v9 = [v8 urlForBundledPlist];
      v10 = @"bundled";
    }

    v11 = [v8 _loadDatabaseFromFileURL:v9 fileDescription:v10];

    if ((v11 & 1) == 0)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v15;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to read any local database files", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      [*(a1 + 32) setDataVersion:0];
      [*(a1 + 32) setCollectionsByManufacturer:MEMORY[0x277CBEC10]];
    }
  }

LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_loadDatabaseFromFilePath:(id)path fileDescription:(id)description
{
  v6 = MEMORY[0x277CBEBC0];
  descriptionCopy = description;
  v8 = [v6 fileURLWithPath:path isDirectory:0];
  LOBYTE(self) = [(HMDVendorDataManager *)self _loadDatabaseFromFileURL:v8 fileDescription:descriptionCopy];

  return self;
}

- (BOOL)_loadDatabaseFromFileURL:(id)l fileDescription:(id)description
{
  v33 = *MEMORY[0x277D85DE8];
  lCopy = l;
  descriptionCopy = description;
  v26 = 0;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:lCopy error:&v26];
  v9 = v26;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (!v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v28 = v20;
      v29 = 2112;
      v30 = descriptionCopy;
      v31 = 2112;
      v32 = v9;
      v21 = "%{public}@Failed to read %@ plist file on disk: %@";
      v22 = v13;
      v23 = 32;
LABEL_12:
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
    }

LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v14;
    v29 = 2112;
    v30 = descriptionCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Read data from %@ plist file on disk", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [(HMDVendorDataManager *)selfCopy _loadDatabaseFromDictionary:v8];
  v10 = objc_autoreleasePoolPush();
  v16 = selfCopy;
  v17 = HMFGetOSLogHandle();
  v13 = v17;
  if (!v15)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v20;
      v29 = 2112;
      v30 = descriptionCopy;
      v21 = "%{public}@Failed to parse %@ plist file on disk";
      v22 = v13;
      v23 = 22;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v18;
    v29 = 2112;
    v30 = descriptionCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Loaded database from %@ plist file on disk", buf, 0x16u);
  }

  v19 = 1;
LABEL_14:

  objc_autoreleasePoolPop(v10);
  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_loadDatabaseFromDictionary:(id)dictionary
{
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v4 = [(HMDVendorDataManager *)self _parseDatabaseFromDictionary:dictionary dataVersion:&v10 collectionsByManufacturer:&v9 entriesByProductData:&v8];
  v5 = v9;
  v6 = v8;
  if (v4)
  {
    [(HMDVendorDataManager *)self setDataVersion:v10];
    [(HMDVendorDataManager *)self setCollectionsByManufacturer:v5];
    [(HMDVendorDataManager *)self setEntriesByProductData:v6];
  }

  return v4;
}

- (NSURL)urlForBundledInternalPlist
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"ManufacturerDatabase-local" withExtension:@"plist"];

  return v3;
}

- (NSURL)urlForBundledPlist
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"ManufacturerDatabase" withExtension:@"plist"];

  return v3;
}

- (BOOL)databaseContainsManufacturer:(id)manufacturer
{
  v3 = [(HMDVendorDataManager *)self modelCollectionForManufacturer:manufacturer];
  v4 = v3 != 0;

  return v4;
}

- (id)vendorModelEntryForProductData:(id)data
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA900];
  dataCopy = data;
  whitespaceCharacterSet = [v4 whitespaceCharacterSet];
  v7 = [dataCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  lowercaseString = [v7 lowercaseString];

  if ([HMDAccessory validateProductData:lowercaseString])
  {
    v9 = [(NSData *)self->_entriesByProductDataMmap hmf_objectForKey:lowercaseString forDictionaryAtOffset:0];
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

    if (v11)
    {
      v12 = [[HMDVendorModelEntry alloc] initWithEncodedData:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = lowercaseString;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Invalid product data: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)vendorModelEntryForManufacturer:(id)manufacturer model:(id)model
{
  modelCopy = model;
  v7 = [(HMDVendorDataManager *)self modelCollectionForManufacturer:manufacturer];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v9 = [modelCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  v10 = [v7 lookupModel:v9];

  return v10;
}

- (id)modelCollectionForManufacturer:(id)manufacturer
{
  manufacturerCopy = manufacturer;
  if (manufacturerCopy)
  {
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v6 = [(HMDVendorModelCollection *)manufacturerCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];
    lowercaseString = [v6 lowercaseString];

    v8 = [(NSData *)self->_collectionsByManufacturerMmap hmf_objectForKey:lowercaseString forDictionaryAtOffset:0];
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
      manufacturerCopy = [[HMDVendorModelCollection alloc] initWithEncodedData:v10];
    }

    else
    {
      manufacturerCopy = 0;
    }
  }

  return manufacturerCopy;
}

- (NSDictionary)collectionsByManufacturer
{
  v14 = 0;
  v2 = [(NSData *)self->_collectionsByManufacturerMmap hmf_readObjectAtOffset:&v14];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __49__HMDVendorDataManager_collectionsByManufacturer__block_invoke;
  v12 = &unk_27972C990;
  v13 = v5;
  v6 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:&v9];

  v7 = [v6 copy];

  return v7;
}

void __49__HMDVendorDataManager_collectionsByManufacturer__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[HMDVendorModelCollection alloc] initWithEncodedData:v5];

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (void)setCollectionsByManufacturer:(id)manufacturer
{
  v4 = MEMORY[0x277CBEB38];
  manufacturerCopy = manufacturer;
  v6 = [v4 dictionaryWithCapacity:{objc_msgSend(manufacturerCopy, "count")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__HMDVendorDataManager_setCollectionsByManufacturer___block_invoke;
  v11[3] = &unk_27972C968;
  v12 = v6;
  v7 = v6;
  [manufacturerCopy enumerateKeysAndObjectsUsingBlock:v11];

  v8 = objc_opt_new();
  [v8 hmf_appendObject:v7];
  v9 = [(HMDVendorDataManager *)self _createMmapFromEncodedData:v8 errorContext:@"Manufacturer Collections"];
  collectionsByManufacturerMmap = self->_collectionsByManufacturerMmap;
  self->_collectionsByManufacturerMmap = v9;
}

void __53__HMDVendorDataManager_setCollectionsByManufacturer___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 asEncodedData];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (void)setEntriesByProductData:(id)data
{
  v4 = MEMORY[0x277CBEB38];
  dataCopy = data;
  v6 = [v4 dictionaryWithCapacity:{objc_msgSend(dataCopy, "count")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__HMDVendorDataManager_setEntriesByProductData___block_invoke;
  v11[3] = &unk_27972C940;
  v12 = v6;
  v7 = v6;
  [dataCopy enumerateKeysAndObjectsUsingBlock:v11];

  v8 = objc_opt_new();
  [v8 hmf_appendObject:v7];
  v9 = [(HMDVendorDataManager *)self _createMmapFromEncodedData:v8 errorContext:@"Product Entries"];
  entriesByProductDataMmap = self->_entriesByProductDataMmap;
  self->_entriesByProductDataMmap = v9;
}

void __48__HMDVendorDataManager_setEntriesByProductData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 asEncodedData];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (id)_createMmapFromEncodedData:(id)data errorContext:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  contextCopy = context;
  v8 = NSTemporaryDirectory();
  v9 = objc_opt_new();
  uUIDString = [v9 UUIDString];
  v11 = [v8 stringByAppendingPathComponent:uUIDString];

  [dataCopy writeToFile:v11 atomically:1];
  v28 = 0;
  v12 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v11 options:1 error:&v28];
  v13 = v28;
  if (v13)
  {
    v14 = v13;
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v30 = v18;
      v31 = 2112;
      v32 = contextCopy;
      v33 = 2112;
      v34 = v14;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to mmap %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = 0;
  }

  else
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v27 = 0;
    [defaultManager removeItemAtPath:v11 error:&v27];
    v14 = v27;
    if (v14)
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543874;
        v30 = v24;
        v31 = 2112;
        v32 = contextCopy;
        v33 = 2112;
        v34 = v14;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove %@ mapping file: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
    }

    v19 = v12;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v19;
}

- (HMDVendorDataManager)initWithDefaults
{
  v54[1] = *MEMORY[0x277D85DE8];
  HMFUptime();
  v4 = v3;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138544386;
    v40 = v8;
    v41 = 2114;
    v42 = @"vendorDataManagerStart";
    v43 = 2112;
    v44 = @"Vendor Data Manager loading";
    v45 = 2114;
    v46 = @"state";
    v47 = 2112;
    v48 = @"start";
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v5);
  mEMORY[0x277D17DE8] = [MEMORY[0x277D17DE8] sharedInstance];
  v10 = objc_alloc(MEMORY[0x277D17DF8]);
  v53 = @"state";
  v54[0] = @"start";
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:&v53 count:1];
  v12 = [v10 initWithTag:@"vendorDataManagerStart" data:v11];
  currentTagProcessorList = [MEMORY[0x277D0F770] currentTagProcessorList];
  [mEMORY[0x277D17DE8] submitTaggedEvent:v12 processorList:currentTagProcessorList];

  v14 = HMDispatchQueueNameString();
  uTF8String = [v14 UTF8String];
  v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v17 = dispatch_queue_create(uTF8String, v16);

  v18 = [[HMDDefaultSimpleDownloader alloc] initWithLogIdentifier:@"ManufacturerDB"];
  v19 = objc_alloc(MEMORY[0x277D0F920]);
  v20 = [v19 initWithTimeInterval:5 options:*&vendorInfoFetchPeriod];
  v21 = [(HMDVendorDataManager *)selfCopy initWithWorkQueue:v17 downloader:v18 fetchTimer:v20];
  [(HMDVendorDataManager *)v21 _loadDatabaseFromLocalFiles];
  v22 = objc_autoreleasePoolPush();
  v23 = v21;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = HMFGetLogIdentifier();
    v26 = MEMORY[0x277CCACA8];
    HMFUptime();
    v28 = [v26 stringWithFormat:@"%.3f", v27 - v4];
    *buf = 138544898;
    v40 = v25;
    v41 = 2114;
    v42 = @"vendorDataManagerDone";
    v43 = 2112;
    v44 = @"Vendor Data Manager loaded";
    v45 = 2114;
    v46 = @"state";
    v47 = 2112;
    v48 = @"end";
    v49 = 2114;
    v50 = @"duration";
    v51 = 2112;
    v52 = v28;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
  }

  objc_autoreleasePoolPop(v22);
  mEMORY[0x277D17DE8]2 = [MEMORY[0x277D17DE8] sharedInstance];
  v30 = objc_alloc(MEMORY[0x277D17DF8]);
  v31 = MEMORY[0x277CCACA8];
  HMFUptime();
  v33 = [v31 stringWithFormat:@"%.3f", v32 - v4];
  v34 = HMDTaggedLoggingCreateDictionary();
  v35 = [v30 initWithTag:@"vendorDataManagerDone" data:{v34, @"state", @"end", @"duration", v33}];
  currentTagProcessorList2 = [MEMORY[0x277D0F770] currentTagProcessorList];
  [mEMORY[0x277D17DE8]2 submitTaggedEvent:v35 processorList:currentTagProcessorList2];

  v37 = *MEMORY[0x277D85DE8];
  return v23;
}

- (HMDVendorDataManager)initWithWorkQueue:(id)queue downloader:(id)downloader fetchTimer:(id)timer
{
  queueCopy = queue;
  downloaderCopy = downloader;
  timerCopy = timer;
  v15.receiver = self;
  v15.super_class = HMDVendorDataManager;
  v12 = [(HMDVendorDataManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_workQueue, queue);
    objc_storeStrong(&v13->_simpleDownloader, downloader);
    objc_storeStrong(&v13->_fetchTimer, timer);
    [timerCopy setDelegate:v13];
    [timerCopy setDelegateQueue:queueCopy];
  }

  return v13;
}

- (HMDVendorDataManager)init
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
  if (logCategory__hmf_once_t43_128083 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t43_128083, &__block_literal_global_167_128084);
  }

  v3 = logCategory__hmf_once_v44_128085;

  return v3;
}

uint64_t __35__HMDVendorDataManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v44_128085;
  logCategory__hmf_once_v44_128085 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)dbURL
{
  if (dbURL_onceToken != -1)
  {
    dispatch_once(&dbURL_onceToken, &__block_literal_global_54_128087);
  }

  v3 = dbURL_url;

  return v3;
}

void __29__HMDVendorDataManager_dbURL__block_invoke()
{
  if (isInternalBuild())
  {
    v0 = vendorInfoDatabaseServerURLOverride;
    if ([v0 length])
    {
      v1 = [MEMORY[0x277CBEBC0] URLWithString:v0];
      v2 = dbURL_url;
      dbURL_url = v1;
    }
  }

  if (!dbURL_url)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = homeKitConfigurationPath;
    v5 = [v3 stringWithFormat:@"%@%@", v4, @"/v1/ManufacturerDatabase.plist"];

    v6 = MEMORY[0x277CCACE0];
    v11 = v5;
    v7 = objc_alloc_init(v6);
    [v7 setScheme:@"https"];
    [v7 setHost:appleConfigurationServer];
    [v7 setPath:v11];

    v8 = [v7 URL];
    v9 = [v8 copy];

    v10 = dbURL_url;
    dbURL_url = v9;
  }
}

+ (id)sharedVendorDataManager
{
  if (sharedVendorDataManager_onceToken != -1)
  {
    dispatch_once(&sharedVendorDataManager_onceToken, &__block_literal_global_128095);
  }

  v3 = sharedVendorDataManager_sharedInstance;

  return v3;
}

uint64_t __47__HMDVendorDataManager_sharedVendorDataManager__block_invoke()
{
  v0 = [[HMDVendorDataManager alloc] initWithDefaults];
  v1 = sharedVendorDataManager_sharedInstance;
  sharedVendorDataManager_sharedInstance = v0;

  v2 = sharedVendorDataManager_sharedInstance;

  return [v2 _start];
}

@end