@interface CREANController
- (BOOL)_writeDataToEAN:(id)n withKey:(id)key;
- (BOOL)calculateDerLength:(id)length actualSize:(unint64_t *)size;
- (BOOL)copyFDREANValues:(id)values outgenerationCount:(unsigned int *)count outManifesthash:(id *)manifesthash;
- (BOOL)deleteFDRDataFromEANWithDataClass:(id)class;
- (BOOL)isEANSupported;
- (BOOL)readFDRDataFromEANWithDataClass:(id)class outData:(id *)data stripPadding:(BOOL)padding;
- (BOOL)setupVersionedFDRWithApTicket:(id)ticket;
- (BOOL)stageVersionedFDREANWithdataDir:(id)dir error:(id *)error;
- (BOOL)swapEAN:(id)n withKey:(id)key;
- (BOOL)swapVersionedFDR;
- (BOOL)verifyFDRDataFromEANUsingCache:(BOOL)cache cachedData:(id)data;
- (BOOL)writeEAN:(id)n isImg4:(BOOL)img4;
- (BOOL)writeFDRDataToEANWithdataDir:(id)dir;
- (id)_apticketCopyDataObjectPropertyWithTag:(unint64_t)tag property:(unint64_t)property;
- (id)_getDataClassesToWrite;
- (id)_ticketCopyHashDataWithNode:(unsigned int)node;
- (id)apticketCopyHashData;
- (id)copyCurrentFDREANValuesWithdataDir:(id)dir error:(id *)error;
- (id)copyStagedFDREanDataWithdataDir:(id)dir error:(id *)error;
- (unint64_t)sizeEAN:(id)n;
- (unsigned)_getQuerykeyFromDataClass:(id)class;
- (unsigned)nextEANGenerationCount;
- (void)_getDataClassesToWrite;
- (void)apticketCopyHashData;
- (void)isEANSupported;
- (void)swapVersionedFDR;
@end

@implementation CREANController

- (BOOL)isEANSupported
{
  v2 = IORegistryEntryFromPath(*MEMORY[0x277CD2898], "IODeviceTree:/defaults");
  if (v2)
  {
    v3 = v2;
    CFProperty = IORegistryEntryCreateCFProperty(v2, @"ean-storage-present", *MEMORY[0x277CBECE8], 0);
    v5 = CFProperty != 0;
    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    IOObjectRelease(v3);
  }

  else
  {
    v6 = handleForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CREANController isEANSupported];
    }

    return 0;
  }

  return v5;
}

- (BOOL)writeFDRDataToEANWithdataDir:(id)dir
{
  v60 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  v53 = 0;
  v54 = 0;
  v41 = objc_opt_new();
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v5 = *MEMORY[0x277CBECE8];
  v40 = dirCopy;
  v6 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], dirCopy, kCFURLPOSIXPathStyle, 1u);
  Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v8 = *MEMORY[0x277CBED10];
  CFDictionarySetValue(Mutable, @"GetCombined", *MEMORY[0x277CBED10]);
  CFDictionarySetValue(Mutable, @"StripImg4", v8);
  CFDictionarySetValue(Mutable, @"VerifyData", v8);
  CFDictionarySetValue(Mutable, @"DataDirectory", v6);
  _getDataClassesToWrite = [(CREANController *)self _getDataClassesToWrite];
  v10 = _getDataClassesToWrite;
  if (!_getDataClassesToWrite || ![_getDataClassesToWrite count])
  {
    v32 = v10;
    v34 = handleForCategory(0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [CREANController writeFDRDataToEANWithdataDir:];
    }

    v12 = 0;
LABEL_55:
    v33 = 0;
    goto LABEL_60;
  }

  v39 = v10;
  v11 = handleForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v56 = v10;
    _os_log_impl(&dword_247864000, v11, OS_LOG_TYPE_DEFAULT, "Writing Following FDR Data Classes to EAN: %@", buf, 0xCu);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v10;
  v12 = 0;
  v13 = 0;
  v14 = [obj countByEnumeratingWithState:&v45 objects:v59 count:16];
  if (!v14)
  {
    goto LABEL_47;
  }

  v15 = *v46;
  v42 = *MEMORY[0x277D81F98];
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v46 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v45 + 1) + 8 * i);
      if (v13)
      {
        CFRelease(v13);
      }

      v18 = handleForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = v17;
        _os_log_impl(&dword_247864000, v18, OS_LOG_TYPE_DEFAULT, "Copying data class: %@ to memory cache", buf, 0xCu);
      }

      if ([(__CFData *)v17 isEqualToString:@"seal"])
      {
        LocalMultiDataBlobForClass = AMFDRSealingMapCopyLocalDataForClass();
      }

      else if (AMFDRSealingMapEntryHasAttribute())
      {
        v20 = handleForCategory(0);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v56 = v17;
          _os_log_impl(&dword_247864000, v20, OS_LOG_TYPE_DEFAULT, "Copying multi data: %@", buf, 0xCu);
        }

        LocalMultiDataBlobForClass = AMFDRSealingMapCreateLocalMultiDataBlobForClass();
      }

      else
      {
        LocalMultiDataBlobForClass = AMFDRSealingManifestCopyLocalDataForClass();
      }

      v13 = LocalMultiDataBlobForClass;
      if (!LocalMultiDataBlobForClass || !CFDataGetLength(LocalMultiDataBlobForClass))
      {
        v22 = v54;
LABEL_29:
        if (v22)
        {

          v54 = 0;
        }

        else
        {
          v22 = v12;
        }

        v24 = handleForCategory(0);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v56 = v17;
          v57 = 2112;
          v58 = v22;
          _os_log_impl(&dword_247864000, v24, OS_LOG_TYPE_DEFAULT, "Failed to read FDR data instance for: %@ with error %@", buf, 0x16u);
        }

        v25 = [(CREANController *)self readFDRDataFromEANWithDataClass:v17 outData:&v53 stripPadding:0];
        if (v53)
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        if (v26)
        {
          if (![(CREANController *)self deleteFDRDataFromEANWithDataClass:v17])
          {
            v35 = handleForCategory(0);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              [CREANController writeFDRDataToEANWithdataDir:];
            }

            v33 = 0;
            v12 = v22;
            goto LABEL_59;
          }

          v27 = handleForCategory(0);
          if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_44;
          }

          *buf = 138412290;
          v56 = v17;
          v28 = v27;
          v29 = "Successfully deleted %@ from EAN";
          v30 = 12;
        }

        else
        {
          v27 = handleForCategory(0);
          if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
LABEL_44:

            v12 = v22;
            continue;
          }

          *buf = 0;
          v28 = v27;
          v29 = "Data class already absent from EAN";
          v30 = 2;
        }

        _os_log_impl(&dword_247864000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, v30);
        goto LABEL_44;
      }

      Length = CFDataGetLength(v13);
      v22 = v54;
      if (Length > 10000000 || v54)
      {
        goto LABEL_29;
      }

      v23 = handleForCategory(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = v13;
        _os_log_impl(&dword_247864000, v23, OS_LOG_TYPE_DEFAULT, "Got instance data %@", buf, 0xCu);
      }

      [v41 setObject:v13 forKeyedSubscript:v17];
    }

    v14 = [obj countByEnumeratingWithState:&v45 objects:v59 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_47:

  v31 = handleForCategory(0);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247864000, v31, OS_LOG_TYPE_DEFAULT, "Write data classes from memory cache to EAN", buf, 2u);
  }

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __48__CREANController_writeFDRDataToEANWithdataDir___block_invoke;
  v44[3] = &unk_278EB1350;
  v44[4] = self;
  v44[5] = &v49;
  [v41 enumerateKeysAndObjectsUsingBlock:v44];
  v32 = v39;
  if (v50[3])
  {
    goto LABEL_55;
  }

  if ([(CREANController *)self verifyFDRDataFromEANUsingCache:1 cachedData:v41])
  {
    v33 = 1;
  }

  else
  {
    v38 = handleForCategory(0);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [CREANController writeFDRDataToEANWithdataDir:];
    }

    v33 = 0;
LABEL_59:
    v32 = v39;
  }

LABEL_60:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();

  _Block_object_dispose(&v49, 8);
  v36 = *MEMORY[0x277D85DE8];
  return v33;
}

void __48__CREANController_writeFDRDataToEANWithdataDir___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (([*(a1 + 32) _writeDataToEAN:a3 withKey:v7] & 1) == 0)
  {
    v8 = handleForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __48__CREANController_writeFDRDataToEANWithdataDir___block_invoke_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (BOOL)_writeDataToEAN:(id)n withKey:(id)key
{
  v44 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  connect = 0;
  nCopy = n;
  v8 = [nCopy length];
  v9 = -v8 & 0xFFFLL;
  input = 0;
  v42 = 0;
  v43 = 0;
  output = 0;
  outputCnt = 1;
  v10 = v9 + v8;
  v11 = [MEMORY[0x277CBEB28] dataWithLength:v9 + v8];
  [v11 setData:nCopy];

  v12 = malloc_type_malloc(v9, 0x6B3733EuLL);
  v13 = v12;
  if (!v12)
  {
    v26 = handleForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [CREANController _writeDataToEAN:withKey:];
    }

    goto LABEL_15;
  }

  bzero(v12, v9);
  [v11 appendBytes:v13 length:v9];
  if ([v11 length] != v10)
  {
    v26 = handleForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [CREANController _writeDataToEAN:withKey:];
    }

    goto LABEL_15;
  }

  v14 = [v11 length];
  bytes = [v11 bytes];
  if ((v14 & 0xFFF) != 0)
  {
    v26 = handleForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [CREANController _writeDataToEAN:withKey:];
    }

    goto LABEL_15;
  }

  v16 = bytes;
  v17 = [(CREANController *)self _getQuerykeyFromDataClass:keyCopy];
  if (!v17)
  {
    v26 = handleForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [CREANController _writeDataToEAN:withKey:];
    }

    goto LABEL_15;
  }

  v18 = v17;
  v19 = *MEMORY[0x277CD2898];
  v20 = IOServiceMatching("AppleNVMeEAN");
  MatchingService = IOServiceGetMatchingService(v19, v20);
  if (!MatchingService)
  {
    v26 = handleForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [CREANController _writeDataToEAN:withKey:];
    }

LABEL_15:
    v22 = 0;
LABEL_16:
    v27 = 0;
    goto LABEL_17;
  }

  v22 = MatchingService;
  if (IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect))
  {
    v26 = handleForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [CREANController _writeDataToEAN:withKey:];
    }

    goto LABEL_16;
  }

  input = v18;
  v42 = v16;
  v43 = v14;
  v23 = handleForCategory(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110144;
    *v34 = HIBYTE(v18);
    *&v34[4] = 1024;
    *&v34[6] = HIWORD(v18);
    v35 = 1024;
    v36 = v18 >> 8;
    v37 = 1024;
    v38 = v18;
    v39 = 2048;
    v40 = v14;
    _os_log_impl(&dword_247864000, v23, OS_LOG_TYPE_DEFAULT, "Writing EAN key %c%c%c%c, imageSize=%llu", buf, 0x24u);
  }

  v24 = IOConnectCallMethod(connect, 2u, &input, 3u, 0, 0, &output, &outputCnt, 0, 0);
  v25 = handleForCategory(0);
  v26 = v25;
  if (v24)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [CREANController _writeDataToEAN:withKey:];
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v34 = keyCopy;
    _os_log_impl(&dword_247864000, v26, OS_LOG_TYPE_DEFAULT, "Successfully written %@ data to EAN", buf, 0xCu);
  }

  v27 = 1;
LABEL_17:

  if (connect)
  {
    IOServiceClose(connect);
    connect = 0;
  }

  if (v22)
  {
    IOObjectRelease(v22);
  }

  AMSupportSafeFree();

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (id)_getDataClassesToWrite
{
  v3 = objc_opt_new();
  memset(v10, 0, sizeof(v10));
  if ([(CREANController *)self isEANSupported])
  {
    v4 = *MEMORY[0x277CBECE8];
    v5 = *MEMORY[0x277D81F90];
    if (AMFDRSealingMapCopyDataClassesWithAttribute())
    {
      v6 = v10[0] == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v7 = *MEMORY[0x277D81F98];
      if (AMFDRSealingMapCopyDataClassesWithAttribute())
      {
        v8 = v10[0] == 0;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        if ([v3 count])
        {
          if (([v3 containsObject:@"seal"] & 1) == 0 && +[CRFDRUtils isDataClassSupported:](CRFDRUtils, "isDataClassSupported:", @"seal"))
          {
            [v3 addObject:@"seal"];
          }
        }

        else
        {

          v3 = 0;
        }
      }

      else
      {
        [(CREANController *)v10 _getDataClassesToWrite];
      }
    }

    else
    {
      [(CREANController *)v10 _getDataClassesToWrite];
    }
  }

  return v3;
}

- (BOOL)readFDRDataFromEANWithDataClass:(id)class outData:(id *)data stripPadding:(BOOL)padding
{
  paddingCopy = padding;
  input[1] = *MEMORY[0x277D85DE8];
  classCopy = class;
  v9 = classCopy;
  connect = 0;
  output = 0;
  outputCnt = 1;
  if (!classCopy || (v10 = [classCopy length], !data) || !v10)
  {
    v18 = handleForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CREANController readFDRDataFromEANWithDataClass:outData:stripPadding:];
    }

    goto LABEL_12;
  }

  v11 = [(CREANController *)self _getQuerykeyFromDataClass:v9];
  if (!v11)
  {
    v18 = handleForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CREANController _writeDataToEAN:withKey:];
    }

    goto LABEL_12;
  }

  v12 = v11;
  v13 = v11;
  input[0] = v11;
  v14 = *MEMORY[0x277CD2898];
  v15 = IOServiceMatching("AppleNVMeEAN");
  MatchingService = IOServiceGetMatchingService(v14, v15);
  if (!MatchingService)
  {
    v18 = handleForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CREANController _writeDataToEAN:withKey:];
    }

LABEL_12:
    v17 = 0;
LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  v17 = MatchingService;
  if (IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect))
  {
    v18 = handleForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CREANController _writeDataToEAN:withKey:];
    }

    goto LABEL_13;
  }

  if (IOConnectCallScalarMethod(connect, 3u, input, 1u, &output, &outputCnt))
  {
    v18 = handleForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CREANController readFDRDataFromEANWithDataClass:outData:stripPadding:];
    }

    goto LABEL_13;
  }

  v18 = [MEMORY[0x277CBEB28] dataWithLength:output];
  v22 = handleForCategory(0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110144;
    *&buf[4] = HIBYTE(v12);
    *&buf[8] = 1024;
    *&buf[10] = HIWORD(v12);
    LOWORD(v36) = 1024;
    *(&v36 + 2) = v12 >> 8;
    HIWORD(v36) = 1024;
    v37 = v12;
    v38 = 2048;
    v39 = output;
    _os_log_impl(&dword_247864000, v22, OS_LOG_TYPE_DEFAULT, "Reading EAN key %c%c%c%c, imageSize=%llu", buf, 0x24u);
  }

  v34[0] = v13;
  v34[1] = [v18 mutableBytes];
  v34[2] = output;
  if (IOConnectCallScalarMethod(connect, 4u, v34, 3u, 0, 0))
  {
    [CREANController readFDRDataFromEANWithDataClass:outData:stripPadding:];
    goto LABEL_13;
  }

  if (!paddingCopy)
  {
    v27 = [v18 copy];
    goto LABEL_32;
  }

  v30 = 0;
  v23 = [(CREANController *)self calculateDerLength:v18 actualSize:&v30];
  v24 = handleForCategory(0);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v18 length];
    *buf = 134218240;
    *&buf[4] = v25;
    *&buf[12] = 2048;
    v36 = v30;
    _os_log_impl(&dword_247864000, v24, OS_LOG_TYPE_DEFAULT, "Image size: %lu DER size: %ld", buf, 0x16u);
  }

  if (!v23)
  {
    [CREANController readFDRDataFromEANWithDataClass:buf outData:? stripPadding:?];
    goto LABEL_42;
  }

  v26 = v30;
  if (!v30 || v26 > [v18 length])
  {
    [CREANController readFDRDataFromEANWithDataClass:buf outData:? stripPadding:?];
LABEL_42:

    goto LABEL_13;
  }

  v27 = [v18 subdataWithRange:0, v30];
LABEL_32:
  v28 = *data;
  *data = v27;

  v29 = handleForCategory(0);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v9;
    _os_log_impl(&dword_247864000, v29, OS_LOG_TYPE_DEFAULT, "Successfully read %@ from EAN", buf, 0xCu);
  }

  v19 = 1;
LABEL_14:

  if (connect)
  {
    IOServiceClose(connect);
    connect = 0;
  }

  if (v17)
  {
    IOObjectRelease(v17);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (unsigned)_getQuerykeyFromDataClass:(id)class
{
  classCopy = class;
  if ([classCopy length] == 4)
  {
    v4 = bswap32(*[classCopy UTF8String]);
  }

  else
  {
    [CREANController _getQuerykeyFromDataClass:classCopy];
    v4 = 0;
  }

  return v4;
}

- (BOOL)deleteFDRDataFromEANWithDataClass:(id)class
{
  input[1] = *MEMORY[0x277D85DE8];
  classCopy = class;
  v5 = classCopy;
  input[0] = 0;
  outputCnt = 1;
  connect = 0;
  output = 0;
  if (!classCopy || ![classCopy length])
  {
    v14 = handleForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CREANController readFDRDataFromEANWithDataClass:outData:stripPadding:];
    }

    goto LABEL_12;
  }

  v6 = [(CREANController *)self _getQuerykeyFromDataClass:v5];
  if (!v6)
  {
    v14 = handleForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CREANController _writeDataToEAN:withKey:];
    }

    goto LABEL_12;
  }

  v7 = v6;
  v8 = *MEMORY[0x277CD2898];
  v9 = IOServiceMatching("AppleNVMeEAN");
  MatchingService = IOServiceGetMatchingService(v8, v9);
  if (!MatchingService)
  {
    v14 = handleForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CREANController _writeDataToEAN:withKey:];
    }

LABEL_12:
    v11 = 0;
LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  v11 = MatchingService;
  if (IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect))
  {
    v14 = handleForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CREANController _writeDataToEAN:withKey:];
    }

    goto LABEL_13;
  }

  input[0] = v7;
  v12 = IOConnectCallMethod(connect, 5u, input, 1u, 0, 0, &output, &outputCnt, 0, 0);
  v13 = handleForCategory(0);
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CREANController deleteFDRDataFromEANWithDataClass:];
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v5;
    _os_log_impl(&dword_247864000, v14, OS_LOG_TYPE_DEFAULT, "Successfully deleted %@ from EAN", buf, 0xCu);
  }

  v15 = 1;
LABEL_14:

  if (connect)
  {
    IOServiceClose(connect);
    connect = 0;
  }

  if (v11)
  {
    IOObjectRelease(v11);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)verifyFDRDataFromEANUsingCache:(BOOL)cache cachedData:(id)data
{
  cacheCopy = cache;
  v64 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v6 = handleForCategory(0);
  v7 = v6;
  if (!dataCopy && cacheCopy)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CREANController verifyFDRDataFromEANUsingCache:cachedData:];
    }

LABEL_5:

    goto LABEL_6;
  }

  v9 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  v46 = dataCopy;
  if (cacheCopy)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_247864000, v7, OS_LOG_TYPE_DEFAULT, "Verifying EAN FDR data from cache...", buf, 2u);
    }

    v58 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v7 = dataCopy;
    v10 = [v7 countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v56;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v56 != v12)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v55 + 1) + 8 * i);
          v15 = handleForCategory(0);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v14;
            _os_log_impl(&dword_247864000, v15, OS_LOG_TYPE_DEFAULT, "Verifying data class: %@", buf, 0xCu);
          }

          v54 = 0;
          v16 = [v7 objectForKey:v14];
          v17 = [(CREANController *)self readFDRDataFromEANWithDataClass:v14 outData:&v54 stripPadding:1];
          v18 = v54;
          v19 = handleForCategory(0);
          v20 = v19;
          if (!v17 || v18 == 0)
          {
            [CREANController verifyFDRDataFromEANUsingCache:v19 cachedData:buf];
            v43 = *buf;
LABEL_71:
            dataCopy = v46;

            goto LABEL_5;
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *&buf[4] = v54;
            v61 = 2112;
            v62 = v16;
            _os_log_impl(&dword_247864000, v20, OS_LOG_TYPE_DEFAULT, "Comparing data class: %@ : %@", buf, 0x16u);
          }

          if (([v16 isEqualToData:v54] & 1) == 0)
          {
            v43 = handleForCategory(0);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              [CREANController verifyFDRDataFromEANUsingCache:cachedData:];
            }

            goto LABEL_71;
          }
        }

        v11 = [v7 countByEnumeratingWithState:&v55 objects:v63 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v8 = 1;
    dataCopy = v46;
    goto LABEL_67;
  }

  if (v9)
  {
    *buf = 0;
    _os_log_impl(&dword_247864000, v7, OS_LOG_TYPE_DEFAULT, "Verifying EAN FDR data from FDR local store...", buf, 2u);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v23 = *MEMORY[0x277CBED10];
  CFDictionarySetValue(Mutable, @"GetCombined", *MEMORY[0x277CBED10]);
  CFDictionarySetValue(Mutable, @"StripImg4", v23);
  CFDictionarySetValue(Mutable, @"VerifyData", v23);
  _getDataClassesToWrite = [(CREANController *)self _getDataClassesToWrite];
  v25 = handleForCategory(0);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = _getDataClassesToWrite;
    _os_log_impl(&dword_247864000, v25, OS_LOG_TYPE_DEFAULT, "EAN Data classes to verify: %@", buf, 0xCu);
  }

  if (_getDataClassesToWrite && [_getDataClassesToWrite count])
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = _getDataClassesToWrite;
    v26 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v51;
      v47 = *MEMORY[0x277D81F98];
      while (2)
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v51 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v50 + 1) + 8 * j);
          v31 = objc_autoreleasePoolPush();
          v54 = 0;
          v32 = handleForCategory(0);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v30;
            _os_log_impl(&dword_247864000, v32, OS_LOG_TYPE_DEFAULT, "Verifying data class: %@", buf, 0xCu);
          }

          if ([v30 isEqualToString:@"seal"])
          {
            LocalMultiDataBlobForClass = AMFDRSealingMapCopyLocalDataForClass();
          }

          else if (AMFDRSealingMapEntryHasAttribute())
          {
            v34 = handleForCategory(0);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v30;
              _os_log_impl(&dword_247864000, v34, OS_LOG_TYPE_DEFAULT, "Copying multi data: %@", buf, 0xCu);
            }

            LocalMultiDataBlobForClass = AMFDRSealingMapCreateLocalMultiDataBlobForClass();
          }

          else
          {
            LocalMultiDataBlobForClass = AMFDRSealingManifestCopyLocalDataForClass();
          }

          v35 = LocalMultiDataBlobForClass;
          if (!LocalMultiDataBlobForClass)
          {
            v36 = handleForCategory(0);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = 0;
              _os_log_impl(&dword_247864000, v36, OS_LOG_TYPE_DEFAULT, "Failed to get data class from local store, error: %@", buf, 0xCu);
            }
          }

          if (![(CREANController *)self readFDRDataFromEANWithDataClass:v30 outData:&v54 stripPadding:1])
          {
            v37 = handleForCategory(0);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_247864000, v37, OS_LOG_TYPE_DEFAULT, "Failed to read data class from EAN", buf, 2u);
            }
          }

          v38 = v35 | v54;
          v39 = handleForCategory(0);
          v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
          if (v38)
          {
            if (v40)
            {
              *buf = 138412546;
              *&buf[4] = v54;
              v61 = 2112;
              v62 = v35;
              _os_log_impl(&dword_247864000, v39, OS_LOG_TYPE_DEFAULT, "Comparing data class: %@ : %@", buf, 0x16u);
            }

            if (([v35 isEqualToData:v54] & 1) == 0)
            {
              v44 = handleForCategory(0);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                [CREANController verifyFDRDataFromEANUsingCache:cachedData:];
              }

              objc_autoreleasePoolPop(v31);
              v8 = 0;
              dataCopy = v46;
              goto LABEL_67;
            }
          }

          else
          {
            if (v40)
            {
              *buf = 138412290;
              *&buf[4] = v30;
              _os_log_impl(&dword_247864000, v39, OS_LOG_TYPE_DEFAULT, "Data class (%@) both missing in EAN and FDR local store. Continue.", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v31);
        }

        v27 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_66;
  }

  [CREANController verifyFDRDataFromEANUsingCache:_getDataClassesToWrite cachedData:?];
LABEL_6:
  v8 = 0;
LABEL_67:
  AMSupportSafeRelease();

  v41 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)calculateDerLength:(id)length actualSize:(unint64_t *)size
{
  lengthCopy = length;
  v14[0] = [lengthCopy bytes];
  v6 = [lengthCopy length];

  v14[1] = v6;
  v12 = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  Length = DERDecodeItemPartialBufferGetLength(v14, &v10, &v13);
  if (Length)
  {
    *size = 0;
    v8 = handleForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CREANController calculateDerLength:actualSize:];
    }
  }

  else
  {
    *size = v11 - v14[0] + v12;
  }

  return Length == 0;
}

- (id)_apticketCopyDataObjectPropertyWithTag:(unint64_t)tag property:(unint64_t)property
{
  v41 = *MEMORY[0x277D85DE8];
  v40 = 0;
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
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  apTicket = self->apTicket;
  if (!apTicket)
  {
    v6 = handleForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CREANController _apticketCopyDataObjectPropertyWithTag:property:];
    }

    goto LABEL_10;
  }

  [(NSData *)apTicket bytes];
  [(NSData *)self->apTicket length];
  if (Img4DecodeInitManifest())
  {
    v6 = handleForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[CREANController _apticketCopyDataObjectPropertyWithTag:property:]";
      _os_log_impl(&dword_247864000, v6, OS_LOG_TYPE_DEFAULT, "%s: failed to parse AP ticket as Img4 manifest", buf, 0xCu);
    }

LABEL_10:

    v7 = 0;
    goto LABEL_11;
  }

  if (Img4DecodeGetObjectPropertyData())
  {
    v6 = handleForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CREANController _apticketCopyDataObjectPropertyWithTag:property:];
    }

    goto LABEL_10;
  }

  v7 = [MEMORY[0x277CBEA90] dataWithBytes:0 length:0];
  if (!v7)
  {
    v6 = handleForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CREANController _apticketCopyDataObjectPropertyWithTag:property:];
    }

    goto LABEL_10;
  }

LABEL_11:
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)copyCurrentFDREANValuesWithdataDir:(id)dir error:(id *)error
{
  v6 = [MEMORY[0x277CBEBC0] URLWithString:dir];
  if (!self->apTicket)
  {
    v20 = handleForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CREANController copyCurrentFDREANValuesWithdataDir:error:];
    }

    goto LABEL_13;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v20 = handleForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CREANController copyCurrentFDREANValuesWithdataDir:error:];
    }

LABEL_13:
    v11 = 0;
LABEL_21:
    v16 = 0;
    goto LABEL_22;
  }

  v8 = Mutable;
  CFDictionaryAddValue(Mutable, @"CopyAllowUnsealed", *MEMORY[0x277CBED28]);
  v9 = *MEMORY[0x277CBED10];
  CFDictionarySetValue(v8, @"GetCombined", *MEMORY[0x277CBED10]);
  CFDictionaryAddValue(v8, @"VerifyData", v9);
  if (!v6)
  {
    v20 = handleForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CREANController copyCurrentFDREANValuesWithdataDir:error:];
    }

    goto LABEL_33;
  }

  CFDictionaryAddValue(v8, @"DataDirectory", v6);
  if (!AMFDRCreateTypeWithOptions())
  {
    v20 = handleForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CREANController copyCurrentFDREANValuesWithdataDir:error:];
    }

LABEL_33:
    v11 = 0;
    goto LABEL_21;
  }

  v10 = [(CREANController *)self _apticketCopyDataObjectPropertyWithTag:1718903152 property:1145525076];
  if (!v10)
  {
    v20 = handleForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CREANController copyCurrentFDREANValuesWithdataDir:error:];
    }

    v11 = 0;
    goto LABEL_21;
  }

  v11 = v10;
  AMFDRSetOption();
  if ((AMFDRDataCopyTrustObject() & 1) == 0)
  {
    v20 = handleForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CREANController copyCurrentFDREANValuesWithdataDir:error:];
    }

    goto LABEL_21;
  }

  v12 = AMFDRSealingMapCopyMultiInstanceForClass();
  v13 = v12;
  if (!v12 || CFArrayGetCount(v12) < 1)
  {
    if (error)
    {
      *error = 0;
    }

    v20 = handleForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CREANController copyCurrentFDREANValuesWithdataDir:error:];
    }

    goto LABEL_21;
  }

  CFArrayGetValueAtIndex(v13, 0);
  v14 = AMFDRSealingMapCopyLocalData();
  if (!v14)
  {
    if (error)
    {
      *error = 0;
    }

    v20 = handleForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CREANController copyCurrentFDREANValuesWithdataDir:error:];
    }

    goto LABEL_21;
  }

  v15 = v14;
  v16 = objc_opt_new();
  apTicket = self->apTicket;
  v18 = [MEMORY[0x277CCABB0] numberWithInt:1802793057];
  [v16 setObject:apTicket forKeyedSubscript:v18];

  v19 = [MEMORY[0x277CCABB0] numberWithInt:1953722996];
  [v16 setObject:0 forKeyedSubscript:v19];

  v20 = [MEMORY[0x277CCABB0] numberWithInt:1818322291];
  [v16 setObject:v15 forKeyedSubscript:v20];
LABEL_22:

  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  v21 = v16;

  return v21;
}

- (unint64_t)sizeEAN:(id)n
{
  input[3] = *MEMORY[0x277D85DE8];
  nCopy = n;
  memset(input, 0, 24);
  outputCnt = 1;
  connect = 0;
  output = 0;
  if (!nCopy)
  {
    v14 = handleForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CREANController sizeEAN:];
    }

    goto LABEL_18;
  }

  v5 = [(CREANController *)self _getQuerykeyFromDataClass:nCopy];
  if (!v5)
  {
    v14 = handleForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CREANController sizeEAN:];
    }

    goto LABEL_18;
  }

  v6 = v5;
  v7 = *MEMORY[0x277CD2898];
  v8 = IOServiceMatching("AppleNVMeEAN");
  MatchingService = IOServiceGetMatchingService(v7, v8);
  if (!MatchingService)
  {
    v14 = handleForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CREANController sizeEAN:];
    }

LABEL_18:
    v10 = 0;
    goto LABEL_25;
  }

  v10 = MatchingService;
  if (IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect))
  {
    v14 = handleForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CREANController sizeEAN:];
    }
  }

  else if (connect)
  {
    input[0] = v6;
    if (!IOConnectCallMethod(connect, 3u, input, 3u, 0, 0, &output, &outputCnt, 0, 0))
    {
      goto LABEL_7;
    }

    v14 = handleForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CREANController sizeEAN:];
    }
  }

  else
  {
    v14 = handleForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CREANController sizeEAN:];
    }
  }

LABEL_25:

LABEL_7:
  if (connect)
  {
    IOServiceClose(connect);
    connect = 0;
  }

  if (v10)
  {
    IOObjectRelease(v10);
  }

  v11 = output;

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)copyFDREANValues:(id)values outgenerationCount:(unsigned int *)count outManifesthash:(id *)manifesthash
{
  v34 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  v27 = 0;
  if (![(CREANController *)self readFDRDataFromEANWithDataClass:valuesCopy outData:&v27 stripPadding:0])
  {
    v10 = handleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v29 = valuesCopy;
      v11 = "Failed to load EAN key: %@";
      goto LABEL_7;
    }

LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  v9 = [v27 length];
  if (v9 <= 0x1F)
  {
    v10 = handleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v29 = valuesCopy;
      v11 = "Entry too small to be versioned blob: %@";
LABEL_7:
      _os_log_impl(&dword_247864000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v12 = v9;
  bytes = [v27 bytes];
  v14 = bytes;
  if (*bytes != 1769104486)
  {
    v10 = handleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CREANController copyFDREANValues:v14 outgenerationCount:? outManifesthash:?];
    }

    goto LABEL_17;
  }

  if (bytes[1] != 1)
  {
    v10 = handleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CREANController copyFDREANValues:? outgenerationCount:? outManifesthash:?];
    }

    goto LABEL_17;
  }

  v15 = bytes[2];
  if (v15 + 1 <= 1)
  {
    v10 = handleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CREANController copyFDREANValues:outgenerationCount:outManifesthash:];
    }

    goto LABEL_17;
  }

  v19 = bytes[3];
  if (v19 <= 0x1F)
  {
    v10 = handleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CREANController copyFDREANValues:outgenerationCount:outManifesthash:];
    }

    goto LABEL_17;
  }

  v20 = bytes[4];
  if (!v20)
  {
    v10 = handleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CREANController copyFDREANValues:outgenerationCount:outManifesthash:];
    }

    goto LABEL_17;
  }

  if (v12 <= v20 + v19)
  {
    v10 = handleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CREANController copyFDREANValues:outgenerationCount:outManifesthash:];
    }

    goto LABEL_17;
  }

  v21 = bytes[5];
  if (!v21)
  {
    v10 = handleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CREANController copyFDREANValues:outgenerationCount:outManifesthash:];
    }

    goto LABEL_17;
  }

  v22 = 16 * v21;
  if (16 * v21 != bytes[7])
  {
    v10 = handleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v25 = v14[5];
      v26 = v14[7];
      *buf = 67109888;
      *v29 = v25;
      *&v29[4] = 2048;
      *&v29[6] = 16;
      v30 = 2048;
      v31 = v22;
      v32 = 1024;
      v33 = v26;
      _os_log_error_impl(&dword_247864000, v10, OS_LOG_TYPE_ERROR, "FDR info payload is incorrect size.\tExpect: %d * %lu = %zu\tFound: %d", buf, 0x22u);
    }

    goto LABEL_17;
  }

  if (count)
  {
    *count = v15;
  }

  if (!manifesthash)
  {
    v16 = 1;
    goto LABEL_19;
  }

  v23 = [MEMORY[0x277CBEA90] dataWithBytes:bytes + bytes[3] length:bytes[4]];
  v10 = v23;
  v16 = v23 != 0;
  if (v23)
  {
    v24 = v23;
    *manifesthash = v10;
    v16 = 1;
  }

LABEL_18:

LABEL_19:
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (unsigned)nextEANGenerationCount
{
  v9 = 0;
  if ([(CREANController *)self copyFDREANValues:@"fdr1" outgenerationCount:&v9 outManifesthash:0])
  {
    v3 = v9;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(CREANController *)self copyFDREANValues:@"fdr2" outgenerationCount:&v9 outManifesthash:0];
  v5 = v9;
  if (!v4)
  {
    v5 = 0;
  }

  if (v3 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (v3 < v5)
  {
    v5 = v3;
  }

  if (v5 == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (v6 == -2)
  {
    return v7;
  }

  else
  {
    return v6 + 1;
  }
}

- (id)copyStagedFDREanDataWithdataDir:(id)dir error:(id *)error
{
  v65 = *MEMORY[0x277D85DE8];
  v63 = 0u;
  v64 = 0u;
  *md = 0u;
  *bytes = 0u;
  v57 = 0u;
  v5 = [(CREANController *)self copyCurrentFDREANValuesWithdataDir:dir error:error];
  v6 = v5;
  if (!v5)
  {
    v47 = handleForCategory(0);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      [CREANController copyStagedFDREanDataWithdataDir:error:];
    }

    goto LABEL_49;
  }

  Count = CFDictionaryGetCount(v5);
  if (!Count)
  {
    v47 = handleForCategory(0);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      [CREANController copyStagedFDREanDataWithdataDir:error:];
    }

LABEL_49:

    Mutable = 0;
    goto LABEL_50;
  }

  v8 = Count;
  v9 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  v10 = malloc_type_calloc(v8, 8uLL, 0x6004044C4A2DFuLL);
  v11 = *MEMORY[0x277CBECE8];
  v12 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, "aptk");
  Value = CFDictionaryGetValue(v6, v12);
  if (Value)
  {
    v14 = Value;
    BytePtr = CFDataGetBytePtr(Value);
    Length = CFDataGetLength(v14);
    CC_SHA384(BytePtr, Length, md);
    allocator = v11;
    v17 = CFDataCreate(v11, md, 48);
    CFDictionaryGetKeysAndValues(v6, v9, v10);
    v54 = malloc_type_calloc(v8, 0x10uLL, 0x1000040451B5BE8uLL);
    v18 = CFDataGetLength(v17);
    v19 = v18;
    v20 = v18 & 3;
    if (v18 <= 0)
    {
      v20 = -(-v18 & 3);
    }

    if (v20)
    {
      v21 = v18 - v20 + 4;
    }

    else
    {
      v21 = v18;
    }

    v55 = v21;
    *bytes = 0x169726466;
    nextEANGenerationCount = [(CREANController *)self nextEANGenerationCount];
    *&bytes[8] = nextEANGenerationCount;
    v23 = handleForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v59) = nextEANGenerationCount;
      _os_log_impl(&dword_247864000, v23, OS_LOG_TYPE_DEFAULT, "Will use generation count: %u", buf, 8u);
    }

    *&bytes[12] = 32;
    theData = v17;
    LODWORD(v57) = CFDataGetLength(v17);
    DWORD1(v57) = v8;
    DWORD2(v57) = v55 + 32;
    HIDWORD(v57) = 16 * v8;
    v52 = v9;
    v24 = v55 + 32 + 16 * v8;
    if (v8 >= 1)
    {
      v25 = v54 + 8;
      v26 = v10;
      v27 = v9;
      v28 = v8;
      do
      {
        v29 = *v26++;
        v30 = CFDataGetLength(v29);
        v31 = v30;
        if (v30 <= 0)
        {
          v32 = -(-v30 & 3);
        }

        else
        {
          v32 = v30 & 3;
        }

        if (v32)
        {
          v33 = v30 - v32 + 4;
        }

        else
        {
          v33 = v30;
        }

        v34 = *v27++;
        *buf = 0;
        CFNumberGetValue(v34, kCFNumberSInt32Type, buf);
        *(v25 - 2) = *buf;
        *(v25 - 1) = v24;
        *v25 = v31;
        v25 += 4;
        v24 += v33;
        --v28;
      }

      while (v28);
    }

    Mutable = CFDataCreateMutable(allocator, v24);
    CFDataAppendBytes(Mutable, bytes, 32);
    v36 = handleForCategory(0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247864000, v36, OS_LOG_TYPE_DEFAULT, "Added header.", buf, 2u);
    }

    v37 = CFDataGetBytePtr(theData);
    v38 = CFDataGetLength(theData);
    CFDataAppendBytes(Mutable, v37, v38);
    if (v55 != v19)
    {
      CFDataIncreaseLength(Mutable, v55 - v19);
    }

    v39 = handleForCategory(0);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247864000, v39, OS_LOG_TYPE_DEFAULT, "Added hash.", buf, 2u);
    }

    CFDataAppendBytes(Mutable, v54, 16 * v8);
    v40 = handleForCategory(0);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247864000, v40, OS_LOG_TYPE_DEFAULT, "Added payload table.", buf, 2u);
    }

    if (v8 >= 1)
    {
      for (i = 0; i != v8; ++i)
      {
        v42 = CFDataGetLength(v10[i]);
        v43 = CFDataGetBytePtr(v10[i]);
        CFDataAppendBytes(Mutable, v43, v42);
        v44 = v42 & 3;
        if (v42 <= 0)
        {
          v44 = -(-v42 & 3);
        }

        if (v44)
        {
          CFDataIncreaseLength(Mutable, 4 - v44);
        }

        v45 = handleForCategory(0);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v59 = i;
          v60 = 2048;
          v61 = v42;
          _os_log_impl(&dword_247864000, v45, OS_LOG_TYPE_DEFAULT, "Added element %ld. Size: %ld", buf, 0x16u);
        }
      }
    }

    v46 = handleForCategory(0);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247864000, v46, OS_LOG_TYPE_DEFAULT, "Success.", buf, 2u);
    }

    if (v54)
    {
      free(v54);
    }

    v9 = v52;
    if (!v52)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v50 = handleForCategory(0);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      [CREANController copyStagedFDREanDataWithdataDir:error:];
    }

    Mutable = 0;
    if (!v9)
    {
      goto LABEL_43;
    }
  }

  free(v9);
LABEL_43:
  if (v10)
  {
    free(v10);
  }

LABEL_50:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  v48 = *MEMORY[0x277D85DE8];
  return Mutable;
}

- (BOOL)writeEAN:(id)n isImg4:(BOOL)img4
{
  v34 = *MEMORY[0x277D85DE8];
  nCopy = n;
  v6 = nCopy;
  connect = 0;
  if (nCopy)
  {
    if (![nCopy count])
    {
      v21 = 1;
      goto LABEL_28;
    }

    v7 = *MEMORY[0x277CD2898];
    v8 = IOServiceMatching("AppleNVMeEAN");
    MatchingService = IOServiceGetMatchingService(v7, v8);
    v10 = MatchingService;
    if (MatchingService)
    {
      if (IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect))
      {
        [CREANController writeEAN:isImg4:];
      }

      else
      {
        if (connect)
        {
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v11 = v6;
          v12 = [v11 countByEnumeratingWithState:&v26 objects:v33 count:16];
          if (v12)
          {
            v13 = v12;
            v24 = v10;
            v25 = v6;
            v14 = *v27;
            while (2)
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v27 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v26 + 1) + 8 * i);
                v17 = [v11 objectForKeyedSubscript:v16];
                v18 = [(CREANController *)self _writeDataToEAN:v17 withKey:v16];

                v19 = handleForCategory(0);
                v20 = v19;
                if (!v18)
                {
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                  {
                    __48__CREANController_writeFDRDataToEANWithdataDir___block_invoke_cold_1();
                  }

                  v21 = 0;
                  goto LABEL_20;
                }

                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v32 = v16;
                  _os_log_impl(&dword_247864000, v20, OS_LOG_TYPE_DEFAULT, "EAN write success :%@", buf, 0xCu);
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v26 objects:v33 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }

            v21 = 1;
LABEL_20:
            v6 = v25;
            v10 = v24;
          }

          else
          {
            v21 = 1;
          }

          goto LABEL_24;
        }

        [CREANController writeEAN:isImg4:];
      }
    }

    else
    {
      [CREANController writeEAN:isImg4:];
    }
  }

  else
  {
    [CREANController writeEAN:isImg4:];
    v10 = 0;
  }

  v21 = 0;
LABEL_24:
  if (connect)
  {
    IOServiceClose(connect);
    connect = 0;
  }

  if (v10)
  {
    IOObjectRelease(v10);
  }

LABEL_28:

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)stageVersionedFDREANWithdataDir:(id)dir error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  v6 = [(CREANController *)self sizeEAN:@"fdr1"];
  v7 = v6 | [(CREANController *)self sizeEAN:@"fdr2"];
  v8 = handleForCategory(0);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_247864000, v8, OS_LOG_TYPE_DEFAULT, "Preparing to write staged FDR EAN key.", buf, 2u);
    }

    v18 = 0;
    v8 = [(CREANController *)self copyStagedFDREanDataWithdataDir:dirCopy error:&v18];
    v10 = v18;
    if (v10 || !v8)
    {
      v15 = handleForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CREANController stageVersionedFDREANWithdataDir:error:];
      }
    }

    else
    {
      v11 = [(CREANController *)self _writeDataToEAN:v8 withKey:@"fdr2"];
      v12 = handleForCategory(0);
      v13 = v12;
      if (v11)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v20 = @"fdr2";
          _os_log_impl(&dword_247864000, v13, OS_LOG_TYPE_DEFAULT, "EAN write success :%@", buf, 0xCu);
        }

        goto LABEL_12;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CREANController stageVersionedFDREANWithdataDir:error:];
      }
    }

    v14 = 0;
    goto LABEL_20;
  }

  if (v9)
  {
    *buf = 0;
    _os_log_impl(&dword_247864000, v8, OS_LOG_TYPE_DEFAULT, "fdr1 & fdr2 are blank returning.", buf, 2u);
  }

LABEL_12:
  v14 = 1;
LABEL_20:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)swapEAN:(id)n withKey:(id)key
{
  v45 = *MEMORY[0x277D85DE8];
  nCopy = n;
  keyCopy = key;
  v8 = keyCopy;
  connect = 0;
  input = 0;
  v44 = 0;
  output = 0;
  outputCnt = 1;
  if (!nCopy)
  {
    v20 = handleForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CREANController swapEAN:withKey:];
    }

    goto LABEL_29;
  }

  if (!keyCopy)
  {
    v20 = handleForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CREANController swapEAN:withKey:];
    }

    goto LABEL_29;
  }

  v9 = [(CREANController *)self _getQuerykeyFromDataClass:nCopy];
  if (!v9)
  {
    v20 = handleForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CREANController swapEAN:withKey:];
    }

    goto LABEL_29;
  }

  v10 = v9;
  v11 = [(CREANController *)self _getQuerykeyFromDataClass:v8];
  if (!v11)
  {
    v20 = handleForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CREANController swapEAN:withKey:];
    }

    goto LABEL_29;
  }

  v12 = v11;
  v13 = *MEMORY[0x277CD2898];
  v14 = IOServiceMatching("AppleNVMeEAN");
  MatchingService = IOServiceGetMatchingService(v13, v14);
  if (!MatchingService)
  {
    v20 = handleForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CREANController swapEAN:withKey:];
    }

LABEL_29:
    v16 = 0;
LABEL_30:
    v21 = 0;
    goto LABEL_14;
  }

  v16 = MatchingService;
  if (IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect))
  {
    v20 = handleForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CREANController sizeEAN:];
    }

    goto LABEL_30;
  }

  if (!connect)
  {
    v20 = handleForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CREANController sizeEAN:];
    }

    goto LABEL_30;
  }

  input = v10;
  v44 = v12;
  v17 = handleForCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110912;
    v28 = HIBYTE(v10);
    v29 = 1024;
    v30 = HIWORD(v10);
    v31 = 1024;
    v32 = v10 >> 8;
    v33 = 1024;
    v34 = v10;
    v35 = 1024;
    v36 = HIBYTE(v12);
    v37 = 1024;
    v38 = HIWORD(v12);
    v39 = 1024;
    v40 = v12 >> 8;
    v41 = 1024;
    v42 = v12;
    _os_log_impl(&dword_247864000, v17, OS_LOG_TYPE_DEFAULT, "Swapping EAN key %c%c%c%c and %c%c%c%c", buf, 0x32u);
  }

  v18 = IOConnectCallMethod(connect, 6u, &input, 2u, 0, 0, &output, &outputCnt, 0, 0);
  v19 = handleForCategory(0);
  v20 = v19;
  if (v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [CREANController swapEAN:withKey:];
    }

    goto LABEL_30;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247864000, v20, OS_LOG_TYPE_DEFAULT, "EAN key Swap success", buf, 2u);
  }

  v21 = 1;
LABEL_14:

  if (connect)
  {
    IOServiceClose(connect);
    connect = 0;
  }

  if (v16)
  {
    IOObjectRelease(v16);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)swapVersionedFDR
{
  v3 = [(CREANController *)self sizeEAN:@"fdr1"];
  v4 = [(CREANController *)self sizeEAN:@"fdr2"];
  if (v3 | v4)
  {
    if (v3 && v4)
    {
      v9 = [(CREANController *)self swapEAN:@"fdr1" withKey:@"fdr2"];
      v10 = handleForCategory(0);
      v5 = v10;
      if (v9)
      {
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_5;
        }

        v12 = 0;
        v6 = "FDR1 is now active.";
        v7 = &v12;
        goto LABEL_4;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CREANController swapVersionedFDR];
      }
    }

    else
    {
      v5 = handleForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [CREANController swapVersionedFDR];
      }
    }

    v8 = 0;
    goto LABEL_16;
  }

  v5 = handleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v6 = "Versioned FDR is empty. NO OP";
    v7 = buf;
LABEL_4:
    _os_log_impl(&dword_247864000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
  }

LABEL_5:
  v8 = 1;
LABEL_16:

  return v8;
}

- (id)_ticketCopyHashDataWithNode:(unsigned int)node
{
  v18 = *MEMORY[0x277D85DE8];
  if (!node)
  {
    v10 = handleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CREANController _ticketCopyHashDataWithNode:];
    }

    v9 = 0;
    goto LABEL_23;
  }

  CFProperty = IORegistryEntryCreateCFProperty(node, @"crypto-hash-method", *MEMORY[0x277CBECE8], 0);
  v5 = CFProperty;
  if (CFProperty)
  {
    if (*CFDataGetBytePtr(CFProperty) != 828467315)
    {
      v6 = *CFDataGetBytePtr(v5);
      v7 = handleForCategory(0);
      v8 = v7;
      if (v6 != 0x3438332D32616873)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [CREANController _ticketCopyHashDataWithNode:];
        }

        v9 = 0;
LABEL_22:
        CFRelease(v5);
        goto LABEL_23;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_247864000, v8, OS_LOG_TYPE_DEFAULT, "crypto-hash-method found. Using SHA2-384\n", v17, 2u);
      }

      CC_SHA384([(NSData *)self->apTicket bytes], [(NSData *)self->apTicket length], v17);
      v13 = 48;
      goto LABEL_17;
    }

    v11 = handleForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      v12 = "crypto-hash-method found. Using SHA1\n";
      goto LABEL_15;
    }
  }

  else
  {
    v11 = handleForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      v12 = "crypto-hash-method not found, defaulting to SHA1\n";
LABEL_15:
      _os_log_impl(&dword_247864000, v11, OS_LOG_TYPE_DEFAULT, v12, v17, 2u);
    }
  }

  CC_SHA1([(NSData *)self->apTicket bytes], [(NSData *)self->apTicket length], v17);
  v13 = 20;
LABEL_17:
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:v17 length:v13];
  if (!v9)
  {
    v14 = handleForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CREANController _ticketCopyHashDataWithNode:];
    }
  }

  if (v5)
  {
    goto LABEL_22;
  }

LABEL_23:
  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)apticketCopyHashData
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = handleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[CREANController apticketCopyHashData]";
    _os_log_impl(&dword_247864000, v3, OS_LOG_TYPE_DEFAULT, "entering %s\n", &v10, 0xCu);
  }

  if (self->apTicket)
  {
    v4 = IORegistryEntryFromPath(*MEMORY[0x277CD2898], "IODeviceTree:/chosen");
    if (v4)
    {
      v5 = v4;
      v6 = [(CREANController *)self _ticketCopyHashDataWithNode:v4];
      IOObjectRelease(v5);
      goto LABEL_11;
    }

    v7 = handleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CREANController _ticketCopyHashDataWithNode:];
    }
  }

  else
  {
    v7 = handleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CREANController apticketCopyHashData];
    }
  }

  v6 = 0;
LABEL_11:
  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)setupVersionedFDRWithApTicket:(id)ticket
{
  v30 = *MEMORY[0x277D85DE8];
  ticketCopy = ticket;
  v6 = [(CREANController *)self sizeEAN:@"fdr1"];
  v7 = [(CREANController *)self sizeEAN:@"fdr2"];
  bzero(v29, 0x1000uLL);
  if (!(v6 | v7))
  {
    v8 = handleForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247864000, v8, OS_LOG_TYPE_DEFAULT, "fdr1 & fdr2 are blank returning.", buf, 2u);
    }

    v9 = 0;
    v10 = 0;
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = handleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CREANController setupVersionedFDRWithApTicket:];
    }

    goto LABEL_40;
  }

  objc_storeStrong(&self->apTicket, ticket);
  v13 = handleForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247864000, v13, OS_LOG_TYPE_DEFAULT, "Ensuring FDR1 is valid and active.", buf, 2u);
  }

  if (!self->apTicket)
  {
    v10 = handleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CREANController setupVersionedFDRWithApTicket:];
    }

    goto LABEL_40;
  }

  apticketCopyHashData = [(CREANController *)self apticketCopyHashData];
  if (!apticketCopyHashData)
  {
    v10 = handleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CREANController setupVersionedFDRWithApTicket:];
    }

    goto LABEL_40;
  }

  v10 = apticketCopyHashData;
  v24 = 0;
  v15 = [(CREANController *)self copyFDREANValues:@"fdr1" outgenerationCount:0 outManifesthash:&v24];
  v9 = v24;
  if (v15)
  {
    v16 = handleForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      convertToHexString = [v9 convertToHexString];
      *buf = 138412290;
      v26 = convertToHexString;
      _os_log_impl(&dword_247864000, v16, OS_LOG_TYPE_DEFAULT, "FDR1 has hash: %@", buf, 0xCu);
    }

    v18 = [v10 isEqualToData:v9];
    v8 = handleForCategory(0);
    v19 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&dword_247864000, v8, OS_LOG_TYPE_DEFAULT, "FDR1 appears to be active.", buf, 2u);
      }

      goto LABEL_5;
    }

    if (v19)
    {
      *buf = 138412546;
      v26 = v10;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_247864000, v8, OS_LOG_TYPE_DEFAULT, "FDR1 boot hash mismatch:%@::%@", buf, 0x16u);
    }
  }

  v20 = handleForCategory(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247864000, v20, OS_LOG_TYPE_DEFAULT, "FDR1 is not written / valid.", buf, 2u);
  }

  if (v6 || !v7)
  {
    goto LABEL_6;
  }

  v8 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v29 length:4096];
  if (![(CREANController *)self _writeDataToEAN:v8 withKey:@"fdr1"])
  {
    v21 = handleForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [CREANController setupVersionedFDRWithApTicket:];
    }

    goto LABEL_39;
  }

  if (![(CREANController *)self swapVersionedFDR])
  {
    v21 = handleForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [CREANController setupVersionedFDRWithApTicket:];
    }

LABEL_39:

LABEL_40:
    v12 = 0;
    goto LABEL_41;
  }

LABEL_5:

LABEL_6:
  v11 = handleForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247864000, v11, OS_LOG_TYPE_DEFAULT, "setupVersionedFDRWithApTicket success", buf, 2u);
  }

  v12 = 1;
LABEL_41:

  v22 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)isEANSupported
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)writeFDRDataToEANWithdataDir:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeFDRDataToEANWithdataDir:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)writeFDRDataToEANWithdataDir:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __48__CREANController_writeFDRDataToEANWithdataDir___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_writeDataToEAN:withKey:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_writeDataToEAN:withKey:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_writeDataToEAN:withKey:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_writeDataToEAN:withKey:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_writeDataToEAN:withKey:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_writeDataToEAN:withKey:.cold.6()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_writeDataToEAN:withKey:.cold.7()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_getDataClassesToWrite
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = handleForCategory(0);
  if (OUTLINED_FUNCTION_7(v3))
  {
    v10 = *self;
    OUTLINED_FUNCTION_0();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)readFDRDataFromEANWithDataClass:outData:stripPadding:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)readFDRDataFromEANWithDataClass:outData:stripPadding:.cold.3()
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

- (void)readFDRDataFromEANWithDataClass:(void *)a1 outData:stripPadding:.cold.4(void *a1)
{
  v3 = handleForCategory(0);
  if (OUTLINED_FUNCTION_9(v3))
  {
    OUTLINED_FUNCTION_3(&dword_247864000, v4, v5, "Failed to get true size of der object", v6, v7, v8, v9, 0);
  }

  *a1 = v1;
}

- (void)readFDRDataFromEANWithDataClass:(void *)a1 outData:stripPadding:.cold.5(void *a1)
{
  v3 = handleForCategory(0);
  if (OUTLINED_FUNCTION_9(v3))
  {
    OUTLINED_FUNCTION_3(&dword_247864000, v4, v5, "Unexpected der length", v6, v7, v8, v9, 0);
  }

  *a1 = v1;
}

- (void)readFDRDataFromEANWithDataClass:outData:stripPadding:.cold.8()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_getQuerykeyFromDataClass:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = handleForCategory(0);
  if (OUTLINED_FUNCTION_7(v3))
  {
    [a1 length];
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_0();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)deleteFDRDataFromEANWithDataClass:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)verifyFDRDataFromEANUsingCache:cachedData:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)verifyFDRDataFromEANUsingCache:(void *)a1 cachedData:.cold.2(void *a1)
{
  v3 = handleForCategory(0);
  if (OUTLINED_FUNCTION_9(v3))
  {
    OUTLINED_FUNCTION_3(&dword_247864000, v4, v5, "Failed to get EAN data classes to verify", v6, v7, v8, v9, 0);
  }
}

- (void)verifyFDRDataFromEANUsingCache:(NSObject *)a1 cachedData:(void *)a2 .cold.3(NSObject *a1, void *a2)
{
  if (OUTLINED_FUNCTION_9(a1))
  {
    OUTLINED_FUNCTION_3(&dword_247864000, v4, v5, "Failed to read data class from EAN", v6, v7, v8, v9, 0);
  }

  *a2 = v2;
}

- (void)verifyFDRDataFromEANUsingCache:cachedData:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)verifyFDRDataFromEANUsingCache:cachedData:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)calculateDerLength:actualSize:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_apticketCopyDataObjectPropertyWithTag:property:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_apticketCopyDataObjectPropertyWithTag:property:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_apticketCopyDataObjectPropertyWithTag:property:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)copyCurrentFDREANValuesWithdataDir:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)copyCurrentFDREANValuesWithdataDir:error:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)copyCurrentFDREANValuesWithdataDir:error:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)copyCurrentFDREANValuesWithdataDir:error:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)copyCurrentFDREANValuesWithdataDir:error:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)copyCurrentFDREANValuesWithdataDir:error:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)copyCurrentFDREANValuesWithdataDir:error:.cold.7()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)copyCurrentFDREANValuesWithdataDir:error:.cold.8()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sizeEAN:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sizeEAN:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sizeEAN:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sizeEAN:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sizeEAN:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sizeEAN:.cold.6()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)copyFDREANValues:(uint64_t)a1 outgenerationCount:outManifesthash:.cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)copyFDREANValues:(unsigned int *)a1 outgenerationCount:outManifesthash:.cold.2(unsigned int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)copyFDREANValues:outgenerationCount:outManifesthash:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)copyFDREANValues:outgenerationCount:outManifesthash:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)copyFDREANValues:outgenerationCount:outManifesthash:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)copyFDREANValues:outgenerationCount:outManifesthash:.cold.6()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)copyFDREANValues:outgenerationCount:outManifesthash:.cold.7()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)copyStagedFDREanDataWithdataDir:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)copyStagedFDREanDataWithdataDir:error:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)copyStagedFDREanDataWithdataDir:error:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)writeEAN:isImg4:.cold.1()
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

- (void)writeEAN:isImg4:.cold.3()
{
  v1 = handleForCategory(0);
  if (OUTLINED_FUNCTION_7(v1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)writeEAN:isImg4:.cold.4()
{
  v1 = handleForCategory(0);
  if (OUTLINED_FUNCTION_7(v1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)writeEAN:isImg4:.cold.5()
{
  v1 = handleForCategory(0);
  if (OUTLINED_FUNCTION_7(v1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)stageVersionedFDREANWithdataDir:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stageVersionedFDREANWithdataDir:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_247864000, v1, OS_LOG_TYPE_ERROR, "Failed to copy staged FDR EAN data:%@:%@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)swapEAN:withKey:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)swapEAN:withKey:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)swapEAN:withKey:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)swapEAN:withKey:.cold.6()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)swapEAN:withKey:.cold.7()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)swapEAN:withKey:.cold.8()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)swapVersionedFDR
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_ticketCopyHashDataWithNode:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_ticketCopyHashDataWithNode:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_ticketCopyHashDataWithNode:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)apticketCopyHashData
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setupVersionedFDRWithApTicket:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setupVersionedFDRWithApTicket:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setupVersionedFDRWithApTicket:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setupVersionedFDRWithApTicket:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setupVersionedFDRWithApTicket:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end