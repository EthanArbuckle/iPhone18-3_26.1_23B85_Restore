@interface CRFDRUtils
+ (BOOL)_getAllLiveDataClasses:(id *)a3 liveInstances:(id *)a4 missingLiveData:(id)a5 mesaState:(id)a6 error:(id *)a7;
+ (BOOL)_getAllSealedDataAndPropertiesFromManifest:(id)a3 properties:(id *)a4 classes:(id *)a5 instances:(id *)a6 error:(id *)a7;
+ (BOOL)isDataClassSupported:(id)a3;
+ (BOOL)isDcSignedCombinedDataClass:(id)a3 error:(id *)a4;
+ (BOOL)isDcSignedDataClass:(id)a3 instance:(id)a4 error:(id *)a5;
+ (BOOL)isDcSignedSealingManifest:(id *)a3;
+ (BOOL)isPrimaryDataClassSupported:(id)a3;
+ (BOOL)isPropertySupported:(id)a3;
+ (BOOL)isRepairASIDSupported;
+ (BOOL)queryDeviceStagedSealedFromEAN:(BOOL)a3 error:(id *)a4;
+ (__AMFDR)_createFDRLocal;
+ (id)_getDataClassesFromSealingManifest;
+ (id)_getDataClassesFromSealingMap;
+ (id)_getManifestForDataClass:(id)a3;
+ (id)_getMesaState;
+ (id)_getPropertiesFromSealingMap;
+ (id)_getUnsealedMesaData:(id)a3 mesaState:(id)a4;
+ (id)extractComponentsAndIdentifiers:(id)a3;
+ (id)findUnsealedDataWithError:(id *)a3;
+ (id)findUnsealedDataWithKey:(id)a3 error:(id *)a4;
+ (id)getData:(id)a3 instance:(id)a4;
+ (id)getDataPayload:(id)a3 instance:(id)a4;
+ (id)getDataPayloadDictWithClass:(id)a3 instance:(id)a4;
+ (id)getLocalSealingManifestWithError:(id *)a3;
+ (id)getSealedInstancesWithClass:(id)a3 error:(id *)a4;
+ (id)getStringFromCert:(id)a3 WithTag:(unint64_t)a4 AndOID:(id)a5;
+ (id)isServicePartWithError:(id *)a3;
+ (id)localManifestProperties;
+ (void)_compareSealedAndLiveDataClasses:(id)a3 instances:(id)a4 liveClasses:(id)a5 liveInstances:(id)a6 results:(id)a7;
+ (void)_compareSerialNumberProperties:(id)a3 missingLiveData:(id)a4 results:(id)a5;
+ (void)_getDataClassesFromSealingManifest;
+ (void)_getDataClassesFromSealingMap;
+ (void)_getPropertiesFromSealingMap;
+ (void)isRepairASIDSupported;
+ (void)localManifestProperties;
@end

@implementation CRFDRUtils

+ (__AMFDR)_createFDRLocal
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"DataStore";
  v8[0] = @"Local";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v3 = *MEMORY[0x277CBECE8];
  v4 = AMFDRCreateWithOptions();

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (id)getLocalSealingManifestWithError:(id *)a3
{
  [a1 _createFDRLocal];
  v9 = 0;
  v10 = 0;
  v4 = handleForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_247864000, v4, OS_LOG_TYPE_DEFAULT, "Getting local sealing manifest", v8, 2u);
  }

  if (AMFDRSealingMapPopulateSealingManifest())
  {
    v5 = v9;
  }

  else
  {
    v6 = handleForCategory(1uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CRFDRUtils getLocalSealingManifestWithError:?];
    }

    v5 = 0;
    if (a3 && v10)
    {
      v5 = 0;
      *a3 = v10;
    }
  }

  AMSupportSafeRelease();

  return v5;
}

+ (id)getStringFromCert:(id)a3 WithTag:(unint64_t)a4 AndOID:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v6 = a5;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27[0] = 0;
  v27[1] = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  while (!DERDecodeSeqNext(&v28, &v21))
  {
    v9 = [MEMORY[0x277CCAE60] valueWithBytes:&v21 objCType:"{?=Q{?=*Q}}"];
    [v7 addObject:v9];
  }

  if ([v7 count])
  {
    v11 = 0;
    *&v10 = 138412290;
    v20 = v10;
    while (1)
    {
      v12 = [v7 objectAtIndex:{0, v20, v21, v22, v23}];
      [v12 getValue:&v24];
      v13 = objc_alloc(MEMORY[0x277CBEA90]);
      v14 = [v13 initWithBytes:v25 length:v26];
      if (v24 != a4 || ([v6 isEqual:v14] & 1) == 0)
      {
        break;
      }

      v11 = 1;
LABEL_15:
      [v7 removeObjectAtIndex:0];

      if (![v7 count])
      {
        goto LABEL_20;
      }
    }

    if (v11)
    {
      v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v14 encoding:4];
      [v8 addObject:v15];
    }

    else
    {
      if (!DERDecodeSeqContentInit(&v25, v27))
      {
        while (!DERDecodeSeqNext(v27, &v21))
        {
          v16 = [MEMORY[0x277CCAE60] valueWithBytes:&v21 objCType:"{?=Q{?=*Q}}"];
          [v7 addObject:v16];
        }

        goto LABEL_14;
      }

      v15 = handleForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = v20;
        v30 = v14;
        _os_log_error_impl(&dword_247864000, v15, OS_LOG_TYPE_ERROR, "Failed to parse node in cert chain data = %@", buf, 0xCu);
      }
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

LABEL_20:
  v17 = [v8 copy];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)getData:(id)a3 instance:(id)a4
{
  v5 = a3;
  v6 = a4;
  v14 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"VerifyData", *MEMORY[0x277CBED28]);
  if (v6)
  {
    v8 = AMFDRSealingMapCopyLocalData();
  }

  else
  {
    v8 = AMFDRSealingManifestCopyLocalDataForClass();
  }

  v9 = v8;
  if (v8)
  {
    CFDictionarySetValue(Mutable, @"VerifyData", *MEMORY[0x277CBED10]);
    if (v6)
    {
      v10 = AMFDRSealingMapCopyLocalData();
    }

    else
    {
      v10 = AMFDRSealingManifestCopyLocalDataForClass();
    }

    v11 = v10;
  }

  else
  {

    v13 = handleForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CRFDRUtils getData:v5 instance:&v14];
    }

    v11 = 0;
  }

  AMSupportSafeRelease();
  AMSupportSafeRelease();

  return v11;
}

+ (id)getDataPayload:(id)a3 instance:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a1 getData:v6 instance:a4];
  v8 = v7;
  if (v7)
  {
    [v7 bytes];
    [v8 length];
    if (Img4DecodeInit())
    {
      +[CRFDRUtils getDataPayload:instance:];
    }

    else
    {
      if (!Img4DecodeGetPayload())
      {
        v9 = [MEMORY[0x277CBEA90] dataWithBytes:0 length:0];
        goto LABEL_5;
      }

      +[CRFDRUtils getDataPayload:instance:];
    }
  }

  else
  {
    +[CRFDRUtils getDataPayload:instance:];
  }

  v9 = 0;
LABEL_5:

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)getDataPayloadDictWithClass:(id)a3 instance:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v14 = 0;
  v16 = @"DataStore";
  v17[0] = @"Local";
  v6 = MEMORY[0x277CBEAC0];
  v7 = a3;
  v8 = [v6 dictionaryWithObjects:v17 forKeys:&v16 count:1];
  if (v5)
  {
    v9 = AMFDRSealingMapCopyLocalDict();
  }

  else
  {
    v9 = AMFDRSealingManifestCopyLocalDictForClass();
  }

  v10 = v9;

  if (v10)
  {
    v11 = v14 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    [CRFDRUtils getDataPayloadDictWithClass:&v15 instance:?];
  }

  AMSupportSafeRelease();

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)getSealedInstancesWithClass:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = AMFDRSealingManifestCopyMultiInstanceForClass();
  if (!v6)
  {
    v7 = handleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils getSealedInstancesWithClass:error:];
    }
  }

  if (a4)
  {
    v8 = 0;
    *a4 = 0;
  }

  return v6;
}

+ (BOOL)isDataClassSupported:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__CRFDRUtils_isDataClassSupported___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  v3 = isDataClassSupported__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&isDataClassSupported__onceToken, block);
  }

  v5 = [isDataClassSupported__classes containsObject:v4];

  return v5;
}

void __35__CRFDRUtils_isDataClassSupported___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _getDataClassesFromSealingMap];
  v4 = v1;
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = [MEMORY[0x277CBEB98] set];
  }

  v3 = isDataClassSupported__classes;
  isDataClassSupported__classes = v2;
}

+ (BOOL)isPropertySupported:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__CRFDRUtils_isPropertySupported___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  v3 = isPropertySupported__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&isPropertySupported__onceToken, block);
  }

  v5 = [isPropertySupported__properties containsObject:v4];

  return v5;
}

void __34__CRFDRUtils_isPropertySupported___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _getPropertiesFromSealingMap];
  v4 = v1;
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = [MEMORY[0x277CBEB98] set];
  }

  v3 = isPropertySupported__properties;
  isPropertySupported__properties = v2;
}

+ (BOOL)isPrimaryDataClassSupported:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  if ([a1 isDataClassSupported:v4])
  {
    [v5 addObject:@"vcrt"];
    if ([a1 isDataClassSupported:@"tcrt"])
    {
      v6 = @"tcrt";
    }

    else
    {
      v6 = @"dCfg";
    }

    [v5 addObject:v6];
    if ([a1 isDataClassSupported:@"prpc"])
    {
      v7 = @"prpc";
    }

    else
    {
      v7 = @"PlCl";
    }

    [v5 addObject:v7];
    [v5 addObject:@"CmCl"];
    [v5 addObject:@"NBCl"];
    [v5 addObject:@"TBCl"];
    [v5 addObject:@"MSRk"];
    [v5 addObject:@"FSCl"];
    [v5 addObject:@"LCfg"];
    [v5 addObject:@"bcrt"];
    [v5 addObject:@"wcrt"];
    v8 = [v5 containsObject:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isRepairASIDSupported
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = +[CRFDRUtils getLocalSealingManifest];
  if (v2)
  {
    v3 = *MEMORY[0x277CBECE8];
    if (AMFDRCreateTypeWithOptions())
    {
      AMFDRSetOption();
      v4 = AMFDRDataCopySealingManifestProperty();
      v5 = handleForCategory(0);
      v6 = v5;
      if (v4)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v10 = 0;
          _os_log_impl(&dword_247864000, v6, OS_LOG_TYPE_DEFAULT, "supm: %@", buf, 0xCu);
        }
      }

      else
      {
        +[(CRFDRUtils *)v5];
      }
    }

    else
    {
      +[CRFDRUtils isRepairASIDSupported];
    }
  }

  else
  {
    +[CRFDRUtils isRepairASIDSupported];
  }

  AMSupportSafeRelease();

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (id)_getDataClassesFromSealingManifest
{
  v7 = 0;
  v2 = [a1 getLocalSealingManifest];
  if (v2)
  {
    v3 = AMFDRSealingManifestCopyDataClassesInstancesAndProperties();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    if (v3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [MEMORY[0x277CBEB98] setWithArray:0];
        v5 = [v4 setByAddingObject:@"seal"];
        goto LABEL_13;
      }

      v4 = handleForCategory(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        +[CRFDRUtils _getDataClassesFromSealingManifest];
      }
    }

    else
    {
      v4 = handleForCategory(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        +[(CRFDRUtils *)&v7];
      }
    }

    v5 = 0;
  }

  else
  {
    v4 = handleForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils _getDataClassesFromSealingManifest];
    }

    v5 = 0;
  }

LABEL_13:

  return v5;
}

+ (id)_getDataClassesFromSealingMap
{
  v8 = 0;
  v2 = *MEMORY[0x277CBECE8];
  v3 = *MEMORY[0x277D81FA0];
  if (AMFDRSealingMapCopyDataClassesWithAttribute())
  {
    v4 = v8 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [MEMORY[0x277CBEB98] setWithArray:0];
      v6 = [v5 setByAddingObject:@"seal"];
      goto LABEL_12;
    }

    v5 = handleForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils _getDataClassesFromSealingManifest];
    }
  }

  else
  {
    v5 = handleForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[(CRFDRUtils *)&v8];
    }
  }

  v6 = 0;
LABEL_12:

  return v6;
}

+ (id)_getPropertiesFromSealingMap
{
  v7 = 0;
  v2 = AMFDRSealingMapCopyPropertyTagsAndIdentifiers();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = MEMORY[0x277CBEB98];
    v4 = [v2 allKeys];
    v5 = [v3 setWithArray:v4];
  }

  else
  {
    v4 = handleForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils _getPropertiesFromSealingMap];
    }

    v5 = 0;
  }

  return v5;
}

+ (id)_getManifestForDataClass:(id)a3
{
  v4 = a3;
  [a1 _createFDRLocal];
  v8 = 0;
  if (v4)
  {
    v5 = AMFDRSealingManifestCopyInstanceForClass();
    if (v5)
    {
      if ((AMFDRDataCopyManifest() & 1) == 0)
      {
        v6 = handleForCategory(0);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [CRFDRUtils _getManifestForDataClass:?];
        }
      }
    }

    else
    {
      [CRFDRUtils _getManifestForDataClass:?];
    }
  }

  else
  {
    +[CRFDRUtils _getManifestForDataClass:];
    v5 = 0;
  }

  AMSupportSafeRelease();
  AMSupportSafeRelease();

  return 0;
}

+ (BOOL)isDcSignedSealingManifest:(id *)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = 0;
  v21 = 0;
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&commonNameOIDBytes length:3];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF MATCHES %@", @"FDR-SS-DC.*"];
  v6 = +[CRFDRUtils getLocalSealingManifest];
  v7 = v6;
  if (!v6)
  {
    v11 = 0;
    v16 = @"Cannot copy sealing manifest from device";
    goto LABEL_16;
  }

  [v6 bytes];
  [v7 length];
  inited = Img4DecodeInitManifest();
  if (inited)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to parse cert as img4; stat: %d", inited];
    v16 = LABEL_14:;
    v13 = 0;
    if (!v16)
    {
      LOBYTE(a3) = 0;
      v11 = 0;
      goto LABEL_9;
    }

    v11 = 0;
    goto LABEL_16;
  }

  v9 = DERDecodeSeqContentInit(v44 + 1, &v20);
  if (v9)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to parse cert chain; stat: %d", v9];
    goto LABEL_14;
  }

  v10 = [CRFDRUtils getStringFromCert:v20 WithTag:v21 AndOID:6, v4];
  v11 = v10;
  if (v10 && [v10 count])
  {
    a3 = handleForCategory(0);
    if (os_log_type_enabled(a3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v11;
      _os_log_impl(&dword_247864000, a3, OS_LOG_TYPE_DEFAULT, "Parsed the following common names from cert in seal: %@", buf, 0xCu);
    }

    v12 = [v11 filteredArrayUsingPredicate:v5];

    v13 = 0;
    LOBYTE(a3) = [v12 count] != 0;
    v11 = v12;
    goto LABEL_9;
  }

  v16 = @"Failed to parse cert common name from cert chain";
LABEL_16:
  v17 = handleForCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    +[CRFDRUtils isDcSignedSealingManifest:];
  }

  if (a3)
  {
    v18 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v23 = v16;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    *a3 = [v18 errorWithDomain:@"com.apple.corerepair" code:-42 userInfo:v19];

    LOBYTE(a3) = 0;
  }

  v13 = v16;
LABEL_9:

  v14 = *MEMORY[0x277D85DE8];
  return a3;
}

+ (BOOL)isDcSignedDataClass:(id)a3 instance:(id)a4 error:(id *)a5
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v28 = 0;
  v29 = 0;
  v8 = MEMORY[0x277CBEA90];
  v9 = a4;
  v10 = [[v8 alloc] initWithBytes:&commonNameOIDBytes length:3];
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF MATCHES %@", @"FDR-CA\\d{1, 4}-ROOT-DC.*"];
  v12 = [CRFDRUtils getData:v7 instance:v9];

  if (!v12)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot copy %@ data from device", v7];
    v21 = LABEL_15:;
    v18 = 0;
    if (!v21)
    {
      LOBYTE(a5) = 0;
      v16 = 0;
      goto LABEL_9;
    }

    v16 = 0;
    goto LABEL_17;
  }

  [v12 bytes];
  [v12 length];
  v13 = Img4DecodeInit();
  if (v13)
  {
    v22 = MEMORY[0x277CCACA8];
    v27 = v13;
    v23 = @"Failed to parse cert as img4; stat: %d";
LABEL_14:
    [v22 stringWithFormat:v23, v27];
    goto LABEL_15;
  }

  v14 = DERDecodeSeqContentInit(v54 + 1, &v28);
  if (v14)
  {
    v22 = MEMORY[0x277CCACA8];
    v27 = v14;
    v23 = @"Failed to parse cert chain; stat: %d";
    goto LABEL_14;
  }

  v15 = [CRFDRUtils getStringFromCert:v28 WithTag:v29 AndOID:6, v10];
  v16 = v15;
  if (v15 && [v15 count])
  {
    a5 = handleForCategory(0);
    if (os_log_type_enabled(a5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v33 = v7;
      v34 = 2112;
      v35 = v16;
      _os_log_impl(&dword_247864000, a5, OS_LOG_TYPE_DEFAULT, "Parsed the following common names from cert in %@: %@", buf, 0x16u);
    }

    v17 = [v16 filteredArrayUsingPredicate:v11];

    v18 = 0;
    LOBYTE(a5) = [v17 count] != 0;
    v16 = v17;
    goto LABEL_9;
  }

  v21 = @"Failed to parse cert common name from cert chain";
LABEL_17:
  v24 = handleForCategory(0);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    +[CRFDRUtils isDcSignedSealingManifest:];
  }

  if (a5)
  {
    v25 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA450];
    v31 = v21;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    *a5 = [v25 errorWithDomain:@"com.apple.corerepair" code:-42 userInfo:v26];

    LOBYTE(a5) = 0;
  }

  v18 = v21;
LABEL_9:

  v19 = *MEMORY[0x277D85DE8];
  return a5;
}

+ (BOOL)isDcSignedCombinedDataClass:(id)a3 error:(id *)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v26 = 0;
  v27 = 0;
  v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&commonNameOIDBytes length:3];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF MATCHES %@", @"FDR-CA\\d{1, 4}-ROOT-DC.*"];
  v9 = [a1 _getManifestForDataClass:v6];
  v10 = v9;
  if (!v9)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot copy %@ manifest from device", v6];
    v19 = LABEL_15:;
    v16 = 0;
    if (!v19)
    {
      LOBYTE(a4) = 0;
      v14 = 0;
      goto LABEL_9;
    }

    v14 = 0;
    goto LABEL_17;
  }

  [v9 bytes];
  [v10 length];
  inited = Img4DecodeInitManifest();
  if (inited)
  {
    v20 = MEMORY[0x277CCACA8];
    v25 = inited;
    v21 = @"Failed to parse cert as img4; stat: %d";
LABEL_14:
    [v20 stringWithFormat:v21, v25];
    goto LABEL_15;
  }

  v12 = DERDecodeSeqContentInit(v52 + 1, &v26);
  if (v12)
  {
    v20 = MEMORY[0x277CCACA8];
    v25 = v12;
    v21 = @"Failed to parse cert chain; stat: %d";
    goto LABEL_14;
  }

  v13 = [CRFDRUtils getStringFromCert:v26 WithTag:v27 AndOID:6, v7];
  v14 = v13;
  if (v13 && [v13 count])
  {
    a4 = handleForCategory(0);
    if (os_log_type_enabled(a4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = v6;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&dword_247864000, a4, OS_LOG_TYPE_DEFAULT, "Parsed the following common names from cert in %@: %@", buf, 0x16u);
    }

    v15 = [v14 filteredArrayUsingPredicate:v8];

    v16 = 0;
    LOBYTE(a4) = [v15 count] != 0;
    v14 = v15;
    goto LABEL_9;
  }

  v19 = @"Failed to parse cert common name from cert chain";
LABEL_17:
  v22 = handleForCategory(0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    +[CRFDRUtils isDcSignedSealingManifest:];
  }

  if (a4)
  {
    v23 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    v29 = v19;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    *a4 = [v23 errorWithDomain:@"com.apple.corerepair" code:-42 userInfo:v24];

    LOBYTE(a4) = 0;
  }

  v16 = v19;
LABEL_9:

  v17 = *MEMORY[0x277D85DE8];
  return a4;
}

+ (id)isServicePartWithError:(id *)a3
{
  v34[1] = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v4 = objc_opt_new();
  if (![v4 isEANSupported])
  {
LABEL_16:
    v8 = 0;
LABEL_17:
    v11 = 0;
    v10 = 0;
    v7 = 0;
    goto LABEL_18;
  }

  if (([v4 readFDRDataFromEANWithDataClass:@"seal" outData:&v30 stripPadding:1] & 1) == 0)
  {
    v14 = handleForCategory(1uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils isServicePartWithError:];
    }

    goto LABEL_16;
  }

  if (!v30)
  {
    v19 = handleForCategory(1uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils isServicePartWithError:];
    }

    v20 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    v34[0] = @"Local Sealing manifest fetch failed";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v8 = [v20 errorWithDomain:@"com.apple.corerepair" code:-28 userInfo:v21];

    goto LABEL_17;
  }

  v5 = handleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_247864000, v5, OS_LOG_TYPE_DEFAULT, "Local Sealing manifest fetch sucessful", v25, 2u);
  }

  v6 = AMFDRSealingManifestCopyDataClassesInstancesAndProperties();
  v7 = 0;
  v8 = v26;
  if (v6 && (v9 = v29) != 0 && v28)
  {
    v10 = 0;
    v11 = 0;
    if (v27)
    {
      v10 = v27;
      v7 = v28;
      v12 = [v28 count];
      if (v12 == [v10 count] && objc_msgSend(v9, "count"))
      {
        v13 = [v9 objectForKeyedSubscript:@"SrvP"];
        v11 = v9;
        goto LABEL_19;
      }

      v11 = v9;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v22 = handleForCategory(1uLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    +[CRFDRUtils isServicePartWithError:];
  }

  if (!v8)
  {
    v23 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v32 = @"DataInstances and Classes count mismatch";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v8 = [v23 errorWithDomain:@"com.apple.corerepair" code:-28 userInfo:v24];
  }

LABEL_18:
  v13 = 0;
LABEL_19:
  if (a3)
  {
    v15 = v8;
    *a3 = v8;
  }

  v16 = v13;

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)findUnsealedDataWithError:(id *)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [a1 _getMesaState];
  v8 = +[CRFDRRetryController sharedInstance];
  [v8 disableRetry];

  v40 = 0;
  v9 = [a1 getLocalSealingManifestWithError:&v40];
  v10 = v40;
  v11 = v10;
  if (v9)
  {
    v30 = v6;
    v38 = 0;
    v39 = 0;
    v36 = v10;
    v37 = 0;
    v12 = [a1 _getAllSealedDataAndPropertiesFromManifest:v9 properties:&v39 classes:&v38 instances:&v37 error:&v36];
    v13 = v39;
    v32 = v38;
    v31 = v37;
    v14 = v36;

    if (v12)
    {
      v29 = a3;
      v34 = 0;
      v35 = 0;
      v33 = v14;
      v15 = [a1 _getAllLiveDataClasses:&v35 liveInstances:&v34 missingLiveData:v5 mesaState:v7 error:&v33];
      v16 = v7;
      v17 = v5;
      v18 = v15;
      v19 = v35;
      v20 = v34;
      v11 = v33;

      if (v18)
      {
        [a1 _compareSealedAndLiveDataClasses:v32 instances:v31 liveClasses:v19 liveInstances:v20 results:v30];
        v21 = v13;
        v6 = v30;
        [a1 _compareSerialNumberProperties:v21 missingLiveData:v17 results:v30];
        v22 = [a1 _getUnsealedMesaData:v30 mesaState:v16];
        [v30 addEntriesFromDictionary:v22];

        v5 = v17;
        v7 = v16;
        a3 = v29;
        goto LABEL_9;
      }

      v5 = v17;
      v7 = v16;
      a3 = v29;
    }

    else
    {
      v20 = 0;
      v19 = 0;
      v11 = v14;
    }

    v21 = v13;
    v6 = v30;
  }

  else
  {
    v20 = 0;
    v19 = 0;
    v21 = 0;
    v31 = 0;
    v32 = 0;
  }

LABEL_9:
  v23 = +[CRFDRRetryController sharedInstance];
  [v23 enableRetry];

  if (v11)
  {
    v24 = handleForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [CRFDRUtils findUnsealedDataWithError:v11];
    }

    if (a3)
    {
      v25 = v11;
      *a3 = v11;
    }
  }

  v26 = handleForCategory(0);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = v6;
    _os_log_impl(&dword_247864000, v26, OS_LOG_TYPE_DEFAULT, "Unsealed: %@", buf, 0xCu);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (BOOL)_getAllSealedDataAndPropertiesFromManifest:(id)a3 properties:(id *)a4 classes:(id *)a5 instances:(id *)a6 error:(id *)a7
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (!a4 || !a5 || !a6 || !a7)
  {
    v11 = handleForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils _getAllSealedDataAndPropertiesFromManifest:properties:classes:instances:error:];
    }

    goto LABEL_14;
  }

  v11 = 0;
  if (!AMFDRSealingManifestCopyDataClassesInstancesAndProperties())
  {
    v15 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to decode sealing manifest: %@", 0, 0, 0, 0];
    v23[0] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    *a7 = [v15 errorWithDomain:@"com.apple.corerepair" code:-28 userInfo:v17];

LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  *a4 = 0;
  *a5 = 0;
  v12 = 0;
  *a6 = v12;
  if (!*a5 || !v12 || (v13 = [*a5 count], v13 != objc_msgSend(*a6, "count")))
  {
    v18 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA450];
    v21 = @"Number of data classes and instances mismatches";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    *a7 = [v18 errorWithDomain:@"com.apple.corerepair" code:-42 userInfo:v11];
    goto LABEL_14;
  }

  result = 1;
LABEL_15:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)_getAllLiveDataClasses:(id *)a3 liveInstances:(id *)a4 missingLiveData:(id)a5 mesaState:(id)a6 error:(id *)a7
{
  v37 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = a6;
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v13 = [MEMORY[0x277CBEB38] dictionary];
  if (v11 && a3 && a4 && a7)
  {
    if (+[CRFDRUtils isDataClassSupported:](CRFDRUtils, "isDataClassSupported:", @"FSCl") && (([v12 isEqualToString:@"ProvisionedUnknownKey"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"ProvisionedLockedUnknownKey")))
    {
      v14 = handleForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v12;
        _os_log_impl(&dword_247864000, v14, OS_LOG_TYPE_DEFAULT, "Skip reading unknown Mesa: %@", buf, 0xCu);
      }

      [v13 setObject:&unk_285978270 forKey:@"SkipRecoverDataClasses"];
      [v11 addObjectsFromArray:&unk_285978270];
    }

    [v13 setObject:MEMORY[0x277CBEC38] forKey:@"AllowIncompleteData"];
    v15 = *MEMORY[0x277CBECE8];
    AMFDRCreateTypeWithOptions();
    v16 = *MEMORY[0x277D81FA0];
    LODWORD(v17) = AMFDRSealingMapCopyDataClassesAndInstancesWithAttribute();
    v18 = handleForCategory(0);
    v19 = v18;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v36) = v17;
      _os_log_impl(&dword_247864000, v19, OS_LOG_TYPE_DEFAULT, "Read live data: %d", buf, 8u);
    }

    v21 = v30;
    if (v30)
    {
      if ([v30 count])
      {
        v22 = handleForCategory(0);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          +[CRFDRUtils _getAllLiveDataClasses:liveInstances:missingLiveData:mesaState:error:];
        }

        [v11 addObjectsFromArray:v21];
      }
    }

    *a3 = v32;
    v23 = v31;
    *a4 = v23;
    if (!*a3 || !v23 || (v24 = [*a3 count], v24 != objc_msgSend(*a4, "count")))
    {
      v25 = handleForCategory(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [CRFDRUtils _getAllLiveDataClasses:a3 liveInstances:a4 missingLiveData:? mesaState:? error:?];
      }

      v26 = MEMORY[0x277CCA9B8];
      v33 = *MEMORY[0x277CCA450];
      v34 = @"Number of live data classes and instances mismatches";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      *a7 = [v26 errorWithDomain:@"com.apple.corerepair" code:-42 userInfo:v17];

      LOBYTE(v17) = 0;
    }

    AMSupportSafeRelease();
  }

  else
  {
    v20 = handleForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils _getAllSealedDataAndPropertiesFromManifest:properties:classes:instances:error:];
    }

    LOBYTE(v17) = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (id)_getMesaState
{
  v7[1] = *MEMORY[0x277D85DE8];
  if ([CRFDRUtils isDataClassSupported:@"FSCl"]|| [CRFDRUtils isDataClassSupported:@"MSRk"])
  {
    v6 = @"QueryPath";
    v7[0] = @"QueryPath_Straight";
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    v3 = ZhuGeCopyValue();
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (void)_compareSealedAndLiveDataClasses:(id)a3 instances:(id)a4 liveClasses:(id)a5 liveInstances:(id)a6 results:(id)a7
{
  v39 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v30 = a7;
  if (v11 && v12 && v13 && v30)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [MEMORY[0x277CBEB98] setWithArray:v11];
    v32 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v32)
    {
      v31 = *v35;
      v15 = 0x277CBE000uLL;
      do
      {
        v16 = 0;
        do
        {
          if (*v35 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v33 = v16;
          v17 = *(*(&v34 + 1) + 8 * v16);
          v18 = [*(v15 + 2904) set];
          if ([v13 count])
          {
            v19 = 0;
            do
            {
              v20 = [v13 objectAtIndexedSubscript:v19];
              v21 = [v14 objectAtIndexedSubscript:v19];
              if ([v20 isEqualToString:v17])
              {
                [v18 addObject:v21];
              }

              ++v19;
            }

            while (v19 < [v13 count]);
          }

          v22 = [*(v15 + 2904) set];
          if ([v11 count])
          {
            v23 = 0;
            do
            {
              v24 = [v11 objectAtIndexedSubscript:v23];
              v25 = [v12 objectAtIndexedSubscript:v23];
              if ([v24 isEqualToString:v17])
              {
                [v22 addObject:v25];
              }

              ++v23;
            }

            while (v23 < [v11 count]);
          }

          v26 = [v18 mutableCopy];
          [v26 minusSet:v22];
          if ([v26 count])
          {
            v27 = [v26 allObjects];
            [v30 setObject:v27 forKeyedSubscript:v17];
          }

          v16 = v33 + 1;
          v15 = 0x277CBE000;
        }

        while (v33 + 1 != v32);
        v32 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v32);
    }
  }

  else
  {
    obj = handleForCategory(0);
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils _getAllSealedDataAndPropertiesFromManifest:properties:classes:instances:error:];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

+ (void)_compareSerialNumberProperties:(id)a3 missingLiveData:(id)a4 results:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v26 = a5;
  [a1 _createFDRLocal];
  if (v8 && v9 && v26)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = [&unk_285978258 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v28;
      *&v11 = 138412546;
      v24 = v11;
      v25 = v9;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(&unk_285978258);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v16 = [v8 objectForKeyedSubscript:{v15, v24}];
          if (v16)
          {
            v17 = AMFDRSealingMapCopyPropertyWithTag();
            v18 = v17;
            if (v17)
            {
              if (([v17 isEqualToString:v16] & 1) == 0)
              {
                v31 = v18;
                v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
                [v26 setObject:v19 forKeyedSubscript:v15];
              }
            }

            else
            {
              v21 = handleForCategory(0);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = v24;
                v33 = v15;
                v34 = 2112;
                v35 = 0;
                _os_log_error_impl(&dword_247864000, v21, OS_LOG_TYPE_ERROR, "Live property missing for %@: %@", buf, 0x16u);

                v9 = v25;
              }

              [v9 addObject:v15];
            }
          }

          else
          {
            v20 = handleForCategory(0);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v33 = v15;
              _os_log_impl(&dword_247864000, v20, OS_LOG_TYPE_DEFAULT, "Property %@ does not exist", buf, 0xCu);
            }
          }
        }

        v12 = [&unk_285978258 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v22 = handleForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils _getAllSealedDataAndPropertiesFromManifest:properties:classes:instances:error:];
    }
  }

  AMSupportSafeRelease();

  v23 = *MEMORY[0x277D85DE8];
}

+ (id)findUnsealedDataWithKey:(id)a3 error:(id *)a4
{
  v27[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v21 = 0;
  v6 = [MEMORY[0x277CBEA60] array];
  [a1 _createFDRLocal];
  if (![&unk_285978258 containsObject:v5])
  {
    v7 = AMFDRSealingMapCopyMultiInstanceForClass();
    if (v7)
    {
      v8 = AMFDRSealingManifestCopyMultiInstanceForClass();
      if (v8)
      {
        v12 = [MEMORY[0x277CBEB58] setWithArray:v7];
        v15 = [MEMORY[0x277CBEB58] setWithArray:v8];
        goto LABEL_8;
      }

      v18 = handleForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CRFDRUtils findUnsealedDataWithKey:v5 error:&v21];
      }
    }

    else
    {
      v8 = handleForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [CRFDRUtils findUnsealedDataWithKey:v5 error:&v21];
      }
    }

LABEL_22:

    v12 = 0;
    v15 = 0;
    goto LABEL_23;
  }

  v7 = AMFDRSealingMapCopyPropertyWithTag();
  if (!v7)
  {
    v8 = handleForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CRFDRUtils findUnsealedDataWithKey:v5 error:&v21];
    }

    goto LABEL_22;
  }

  v8 = [a1 localManifestProperties];
  v9 = [v8 objectForKeyedSubscript:v5];
  if (!v9)
  {
    v17 = handleForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CRFDRUtils findUnsealedDataWithKey:v5 error:&v21];
    }

    goto LABEL_22;
  }

  v10 = MEMORY[0x277CBEB58];
  v27[0] = v7;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v12 = [v10 setWithArray:v11];

  v13 = MEMORY[0x277CBEB58];
  v26 = v9;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v15 = [v13 setWithArray:v14];

LABEL_8:
  [v12 minusSet:v15];
  if (![v12 count])
  {
    goto LABEL_24;
  }

  v16 = handleForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = v5;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&dword_247864000, v16, OS_LOG_TYPE_DEFAULT, "Unsealed %@: %@", buf, 0x16u);
  }

  [v12 allObjects];
  v6 = v7 = v6;
LABEL_23:

LABEL_24:
  AMSupportSafeRelease();

  v19 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_getUnsealedMesaData:(id)a3 mesaState:(id)a4
{
  v27[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [CRFDRUtils isDataClassSupported:@"FSCl"];
  v9 = [CRFDRUtils isDataClassSupported:@"MSRk"];
  v10 = v9;
  if (v8)
  {
    if ([v6 isEqualToString:@"ProvisionedUnknownKey"])
    {
      v11 = handleForCategory(0);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:

        goto LABEL_17;
      }

      LOWORD(v24[0]) = 0;
      v12 = "mesa unpaired";
    }

    else
    {
      v14 = [v5 objectForKey:@"FSCl"];

      if (!v14)
      {
        goto LABEL_30;
      }

      v11 = handleForCategory(0);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      LOWORD(v24[0]) = 0;
      v12 = "mesa unsealed";
    }

    _os_log_impl(&dword_247864000, v11, OS_LOG_TYPE_DEFAULT, v12, v24, 2u);
    goto LABEL_12;
  }

  if (v9)
  {
    if ([v6 isEqualToString:@"ProvisionedUnknownKey"])
    {
      v13 = 1;
    }

    else
    {
      v13 = [v6 isEqualToString:@"ProvisionedLockedUnknownKey"];
    }

    v15 = handleForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24[0]) = 0;
      _os_log_impl(&dword_247864000, v15, OS_LOG_TYPE_DEFAULT, "mesa paired with unknown key", v24, 2u);
    }

    if (v13)
    {
LABEL_17:
      v24[0] = 0;
      v16 = ZhuGeCopyValue();
      v17 = v16;
      if (!v16 || v24[0])
      {
        v18 = handleForCategory(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [CRFDRUtils _getUnsealedMesaData:v24 mesaState:?];
        }
      }

      else
      {
        if (v8)
        {
          v27[0] = v16;
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
          v19 = @"MSRk";
        }

        else
        {
          if (!v10)
          {
LABEL_27:
            v21 = handleForCategory(0);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              +[CRFDRUtils _getUnsealedMesaData:mesaState:];
            }

            goto LABEL_30;
          }

          v26 = v16;
          v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
          [v7 setObject:v20 forKeyedSubscript:@"MSRk"];

          v25 = v17;
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
          v19 = @"FSC2";
        }

        [v7 setObject:v18 forKeyedSubscript:v19];
      }

      goto LABEL_27;
    }
  }

LABEL_30:

  v22 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (BOOL)queryDeviceStagedSealedFromEAN:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v6 = objc_opt_new();
  v7 = v6;
  if (v5)
  {
    if (([v6 isEANSupported] & 1) == 0)
    {
      v9 = handleForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[CRFDRUtils queryDeviceStagedSealedFromEAN:error:];
      }

      goto LABEL_25;
    }

    if ([v7 readFDRDataFromEANWithDataClass:@"seal" outData:&v17 stripPadding:1])
    {
      v8 = v17 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = handleForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[CRFDRUtils queryDeviceStagedSealedFromEAN:error:];
      }

      goto LABEL_25;
    }
  }

  else
  {
    v17 = +[CRFDRUtils getLocalSealingManifest];
    if (!v17)
    {
      v9 = handleForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[CRFDRUtils queryDeviceStagedSealedFromEAN:error:];
      }

      goto LABEL_25;
    }
  }

  v10 = *MEMORY[0x277CBECE8];
  if (AMFDRCreateTypeWithOptions())
  {
    AMFDRSetOption();
    v11 = AMFDRDataCopySealingManifestProperty();
    v12 = handleForCategory(0);
    v9 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = 0;
        _os_log_impl(&dword_247864000, v9, OS_LOG_TYPE_DEFAULT, "SrvT: %@", buf, 0xCu);
      }

      goto LABEL_27;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils queryDeviceStagedSealedFromEAN:error:];
    }
  }

  else
  {
    v9 = handleForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils queryDeviceStagedSealedFromEAN:error:];
    }
  }

LABEL_25:

  if (a4)
  {
    v13 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v19 = @"Query staged state failed";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    *a4 = [v13 errorWithDomain:@"com.apple.corerepair" code:-42 userInfo:v14];
  }

LABEL_27:
  AMSupportSafeRelease();

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (id)localManifestProperties
{
  v5 = 0;
  if ([a1 _createFDRLocal])
  {
    v2 = AMFDRSealingMapCopyManifestProperties();
    if (v2)
    {
      goto LABEL_9;
    }

    v3 = handleForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[(CRFDRUtils *)&v5];
    }
  }

  else
  {
    v3 = handleForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[CRFDRUtils localManifestProperties];
    }

    v2 = 0;
  }

LABEL_9:
  AMSupportSafeRelease();
  AMSupportSafeRelease();

  return v2;
}

+ (id)extractComponentsAndIdentifiers:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v29 = objc_opt_new();
  v4 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"([a-zA-Z0-9#]{4})-(.*$)" options:0 error:0];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    v28 = v4;
    do
    {
      v9 = 0;
      v30 = v7;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        v11 = [v4 firstMatchInString:v10 options:0 range:{0, objc_msgSend(v10, "length")}];
        v12 = handleForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v11 numberOfRanges];
          *buf = 134217984;
          v36 = v13;
          _os_log_impl(&dword_247864000, v12, OS_LOG_TYPE_DEFAULT, "number of ranges:%lu", buf, 0xCu);
        }

        if (v11 && [v11 numberOfRanges] >= 2)
        {
          v14 = [v11 rangeAtIndex:1];
          v16 = [v10 substringWithRange:{v14, v15}];
          v17 = [v11 rangeAtIndex:2];
          v19 = [v10 substringWithRange:{v17, v18}];
          v20 = v19;
          if (v16)
          {
            v21 = v19 == 0;
          }

          else
          {
            v21 = 1;
          }

          if (!v21)
          {
            v22 = v16;
            v23 = objc_opt_new();
            v24 = [v29 objectForKeyedSubscript:v22];
            [v23 addObjectsFromArray:v24];

            [v23 addObject:v20];
            v25 = [v23 copy];
            [v29 setObject:v25 forKeyedSubscript:v22];

            v4 = v28;
            v7 = v30;
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v7);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (void)getLocalSealingManifestWithError:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)getData:(uint64_t)a1 instance:(uint64_t *)a2 .cold.1(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)getData:(uint64_t)a1 instance:(uint64_t *)a2 .cold.2(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)getDataPayload:instance:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = handleForCategory(0);
  if (OUTLINED_FUNCTION_7(v1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

+ (void)getDataPayload:instance:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = handleForCategory(0);
  if (OUTLINED_FUNCTION_7(v1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

+ (void)getDataPayload:instance:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = handleForCategory(0);
  if (OUTLINED_FUNCTION_7(v1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

+ (void)getDataPayloadDictWithClass:(uint64_t *)a1 instance:(uint64_t *)a2 .cold.1(uint64_t *a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = handleForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *a1;
    OUTLINED_FUNCTION_8_0();
    _os_log_error_impl(&dword_247864000, v4, OS_LOG_TYPE_ERROR, "AMFDRDataDictCopy failed, error: %@", v7, 0xCu);
  }

  *a2 = *a1;
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)getSealedInstancesWithClass:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)isRepairASIDSupported
{
  v1 = handleForCategory(0);
  if (OUTLINED_FUNCTION_7(v1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

+ (void)_getDataClassesFromSealingManifest
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_getDataClassesFromSealingMap
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_0(a1);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_getPropertiesFromSealingMap
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_getManifestForDataClass:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)_getManifestForDataClass:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = handleForCategory(0);
  if (OUTLINED_FUNCTION_7(v3))
  {
    v5 = *a1;
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_0();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)_getManifestForDataClass:.cold.3()
{
  v1 = handleForCategory(0);
  if (OUTLINED_FUNCTION_7(v1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

+ (void)isDcSignedSealingManifest:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)isServicePartWithError:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)isServicePartWithError:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)isServicePartWithError:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)findUnsealedDataWithError:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)_getAllSealedDataAndPropertiesFromManifest:properties:classes:instances:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_getAllLiveDataClasses:(uint64_t)a1 liveInstances:(uint64_t *)a2 missingLiveData:mesaState:error:.cold.2(uint64_t a1, uint64_t *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0(a1, a2);
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)_getAllLiveDataClasses:liveInstances:missingLiveData:mesaState:error:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_getAllLiveDataClasses:(id *)a1 liveInstances:(id *)a2 missingLiveData:mesaState:error:.cold.4(id *a1, id *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  [*a1 count];
  [*a2 count];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)findUnsealedDataWithKey:(uint64_t)a1 error:(uint64_t *)a2 .cold.1(uint64_t a1, uint64_t *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0(a1, a2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)findUnsealedDataWithKey:(uint64_t)a1 error:(uint64_t *)a2 .cold.2(uint64_t a1, uint64_t *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0(a1, a2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)findUnsealedDataWithKey:(uint64_t)a1 error:(uint64_t *)a2 .cold.3(uint64_t a1, uint64_t *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0(a1, a2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)findUnsealedDataWithKey:(uint64_t)a1 error:(uint64_t *)a2 .cold.4(uint64_t a1, uint64_t *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0(a1, a2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)_getUnsealedMesaData:(uint64_t *)a1 mesaState:.cold.1(uint64_t *a1)
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_0(a1);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_getUnsealedMesaData:mesaState:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)queryDeviceStagedSealedFromEAN:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)queryDeviceStagedSealedFromEAN:error:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)queryDeviceStagedSealedFromEAN:error:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)queryDeviceStagedSealedFromEAN:error:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)queryDeviceStagedSealedFromEAN:error:.cold.6()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)localManifestProperties
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end