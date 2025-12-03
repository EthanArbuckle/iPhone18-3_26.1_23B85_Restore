@interface NVMEiBootUpdater
+ (id)IOMatchingPropertyTable;
- (BOOL)_copyIBICFromPath:(char *)path withOptions:(__CFDictionary *)options intoArray:(const __CFArray *)array withError:(__CFError *)error;
- (BOOL)generateFirmwareImagesWithCallback:(ramrod_update_callbacks *)callback context:(firmware_update_context *)context;
- (BOOL)updateBootFirmwareWithCallback:(ramrod_update_callbacks *)callback context:(firmware_update_context *)context error:(id *)error;
- (void)dealloc;
@end

@implementation NVMEiBootUpdater

+ (id)IOMatchingPropertyTable
{
  v3 = @"IOProviderClass";
  v4 = @"AppleEmbeddedNVMeController";
  return [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NVMEiBootUpdater;
  [(MSUBootFirmwareUpdater *)&v3 dealloc];
}

- (BOOL)generateFirmwareImagesWithCallback:(ramrod_update_callbacks *)callback context:(firmware_update_context *)context
{
  v5.receiver = self;
  v5.super_class = NVMEiBootUpdater;
  return [(MSUBootFirmwareUpdater *)&v5 generateFirmwareImagesWithCallback:callback context:context];
}

- (BOOL)updateBootFirmwareWithCallback:(ramrod_update_callbacks *)callback context:(firmware_update_context *)context error:(id *)error
{
  llbData = [(MSUBootFirmwareUpdater *)self llbData];
  v115 = __NSArray0__;
  v114 = 0;
  v113 = 0;
  if (ramrod_hardware_partition_supports_bics() && ![(NVMEiBootUpdater *)self _copyIBICFromPath:[(NSString *)[(DevNodeWriter *)[(NVMEiBootUpdater *)self writer] devicePath] UTF8String] withOptions:context->var1 intoArray:&v115 withError:&v113])
  {
    iBU_LOG_real(@"Copy iBIC failed.", "[NVMEiBootUpdater updateBootFirmwareWithCallback:context:error:]", v9, v10, v11, v12, v13, v14, v101);
    if (!error)
    {
      return 0;
    }

    v42 = MSUBootFirmwareError(1, v113, @"Copy iBIC failed.", v43, v44, v45, v46, v47, v104);
    goto LABEL_10;
  }

  isAvailable = [(DevNodeWriter *)[(NVMEiBootUpdater *)self writer] isAvailable];
  writer = [(NVMEiBootUpdater *)self writer];
  if ((isAvailable & 1) == 0)
  {
    iBU_LOG_real(@"Writer %@ was unavailable at write-time", "[NVMEiBootUpdater updateBootFirmwareWithCallback:context:error:]", v17, v18, v19, v20, v21, v22, writer);
    if (!error)
    {
      return 0;
    }

    writer2 = [(NVMEiBootUpdater *)self writer];
    v42 = MSUBootFirmwareError(6, 0, @"Writer %@ was unavailable at write-time", v37, v38, v39, v40, v41, writer2);
LABEL_10:
    v48 = v42;
    result = 0;
    *error = v48;
    return result;
  }

  devicePath = [(DevNodeWriter *)writer devicePath];
  iBU_LOG_real(@"Writing lldb data to dev node %@", "[NVMEiBootUpdater updateBootFirmwareWithCallback:context:error:]", v24, v25, v26, v27, v28, v29, devicePath);
  if ([(MSUBootFirmwareUpdater *)self _encodeAndWriteFirmware:llbData toWriter:[(NVMEiBootUpdater *)self writer] withError:error])
  {
    v36 = @"Failed to write lldb data to dev node.";
LABEL_31:
    iBU_LOG_real(v36, "[NVMEiBootUpdater updateBootFirmwareWithCallback:context:error:]", v30, v31, v32, v33, v34, v35, v102);
    return 0;
  }

  v50 = [(NSArray *)[(MSUBootFirmwareUpdater *)self firmwareImages] count];
  [(DevNodeWriter *)[(NVMEiBootUpdater *)self writer] devicePath];
  iBU_LOG_real(@"Writing %lu firmware images to dev node %@", "[NVMEiBootUpdater updateBootFirmwareWithCallback:context:error:]", v51, v52, v53, v54, v55, v56, v50);
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  firmwareImages = [(MSUBootFirmwareUpdater *)self firmwareImages];
  v58 = [(NSArray *)firmwareImages countByEnumeratingWithState:&v109 objects:v117 count:16];
  if (v58)
  {
    v65 = v58;
    v66 = *v110;
    while (2)
    {
      for (i = 0; i != v65; i = i + 1)
      {
        if (*v110 != v66)
        {
          objc_enumerationMutation(firmwareImages);
        }

        if ([(MSUBootFirmwareUpdater *)self _encodeAndWriteFirmware:*(*(&v109 + 1) + 8 * i) toWriter:[(NVMEiBootUpdater *)self writer] withError:error])
        {
          v36 = @"Failed to write firmware data to dev node.";
          goto LABEL_31;
        }
      }

      v65 = [(NSArray *)firmwareImages countByEnumeratingWithState:&v109 objects:v117 count:16];
      if (v65)
      {
        continue;
      }

      break;
    }
  }

  if (v115)
  {
    v68 = [v115 count];
    [(DevNodeWriter *)[(NVMEiBootUpdater *)self writer] devicePath];
    iBU_LOG_real(@"Writing %d iBIC firmware image segments to dev node %@", "[NVMEiBootUpdater updateBootFirmwareWithCallback:context:error:]", v69, v70, v71, v72, v73, v74, v68);
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v75 = v115;
    v76 = [v115 countByEnumeratingWithState:&v105 objects:v116 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = *v106;
      while (2)
      {
        for (j = 0; j != v77; j = j + 1)
        {
          if (*v106 != v78)
          {
            objc_enumerationMutation(v75);
          }

          if ([(DevNodeWriter *)[(NVMEiBootUpdater *)self writer] writeData:*(*(&v105 + 1) + 8 * j) withError:error])
          {
            v36 = @"Failed to write ibic data to dev node.";
            goto LABEL_31;
          }
        }

        v77 = [v75 countByEnumeratingWithState:&v105 objects:v116 count:16];
        if (v77)
        {
          continue;
        }

        break;
      }
    }
  }

  iBU_LOG_real(@"Writing end_of_contents_bytes to dev node.", "[NVMEiBootUpdater updateBootFirmwareWithCallback:context:error:]", v59, v60, v61, v62, v63, v64, v102);
  if ([(DevNodeWriter *)[(NVMEiBootUpdater *)self writer] writeData:[NSData withError:"dataWithBytes:length:" dataWithBytes:2 length:?], error])
  {
    v36 = @"Failed to write end_of_contents bytes.";
    goto LABEL_31;
  }

  numberOfBytesRemainingInBlock = [(DevNodeWriter *)[(NVMEiBootUpdater *)self writer] numberOfBytesRemainingInBlock];
  if (numberOfBytesRemainingInBlock)
  {
    v87 = numberOfBytesRemainingInBlock;
    iBU_LOG_real(@"There are %lu bytes remaining in the boot block. Padding with zeroes.", "[NVMEiBootUpdater updateBootFirmwareWithCallback:context:error:]", v81, v82, v83, v84, v85, v86, numberOfBytesRemainingInBlock);
    if ([(DevNodeWriter *)[(NVMEiBootUpdater *)self writer] writeData:[NSMutableData withError:"dataWithLength:" dataWithLength:v87], error])
    {
      v36 = @"Failed to pad zeroes to the end of the block.";
      goto LABEL_31;
    }
  }

  if (![(DevNodeWriter *)[(NVMEiBootUpdater *)self writer] finished])
  {
    iBU_LOG_real(@"Failed to clean up writer.", "[NVMEiBootUpdater updateBootFirmwareWithCallback:context:error:]", v88, v89, v90, v91, v92, v93, v102);
  }

  v94 = IORegistryEntrySetCFProperty([(MSUBootFirmwareUpdater *)self matchedService], @"fw-write-done", kCFBooleanTrue);
  if (!v94)
  {
    iBU_LOG_real(@"Successfully updated iBoot firmware images", "[NVMEiBootUpdater updateBootFirmwareWithCallback:context:error:]", v95, v96, v97, v98, v99, v100, v102);
    return 1;
  }

  iBU_LOG_real(@"Failed to set 'fw-write-done' property on dev node. Kernel error: %d", "[NVMEiBootUpdater updateBootFirmwareWithCallback:context:error:]", v95, v96, v97, v98, v99, v100, v94);
  return 0;
}

- (BOOL)_copyIBICFromPath:(char *)path withOptions:(__CFDictionary *)options intoArray:(const __CFArray *)array withError:(__CFError *)error
{
  if (!error)
  {
    [(NVMEiBootUpdater *)self _copyIBICFromPath:a2 withOptions:path intoArray:options withError:array, 0, v6, v7, v73];
LABEL_36:
    LOBYTE(pathCopy) = 0;
    goto LABEL_26;
  }

  if (!array)
  {
    [(NVMEiBootUpdater *)error _copyIBICFromPath:a2 withOptions:path intoArray:options withError:0, error, v6, v7];
    goto LABEL_36;
  }

  pathCopy = path;
  if (!path)
  {
    [(NVMEiBootUpdater *)error _copyIBICFromPath:a2 withOptions:0 intoArray:options withError:array, error, v6, v7];
    goto LABEL_26;
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    [(NVMEiBootUpdater *)error _copyIBICFromPath:v12 withOptions:v13 intoArray:v14 withError:v15, v16, v17, v18];
    goto LABEL_36;
  }

  v20 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v28 = v20;
  if (!v20)
  {
    [(NVMEiBootUpdater *)error _copyIBICFromPath:v21 withOptions:v22 intoArray:v23 withError:v24, v25, v26, v27];
    goto LABEL_36;
  }

  CFArrayAppendValue(v20, @"ibic");
  if (options)
  {
    Value = CFDictionaryGetValue(options, @"iBICRequired");
    v30 = CFDictionaryGetValue(options, @"iBICAdditionalTag");
    if (v30)
    {
      v31 = v30;
      v32 = CFGetTypeID(v30);
      if (v32 != CFStringGetTypeID())
      {
        [(NVMEiBootUpdater *)error _copyIBICFromPath:v33 withOptions:v34 intoArray:v35 withError:v36, v37, v38, v39];
        goto LABEL_36;
      }

      CFArrayAppendValue(v28, v31);
    }
  }

  else
  {
    Value = 0;
  }

  if (!CFStringCreateWithCString(kCFAllocatorDefault, pathCopy, 0x8000100u))
  {
    [(NVMEiBootUpdater *)error _copyIBICFromPath:v40 withOptions:v41 intoArray:v42 withError:v43, v44, v45, v46];
    goto LABEL_36;
  }

  URLFromString = AMSupportCreateURLFromString();
  if (!URLFromString)
  {
    [(NVMEiBootUpdater *)error _copyIBICFromPath:v47 withOptions:v48 intoArray:v49 withError:v50, v51, v52, v53];
    goto LABEL_36;
  }

  arrayCopy = array;
  errorCopy = error;
  if (CFArrayGetCount(v28) < 1)
  {
LABEL_25:
    *arrayCopy = CFRetain(Mutable);
    LOBYTE(pathCopy) = 1;
  }

  else
  {
    v55 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v28, v55);
      CStringPtr = CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
      v64 = AMRestorePartitionFWCopyTagData(URLFromString);
      if (Value)
      {
        v65 = CFGetTypeID(Value);
        if (v65 == CFBooleanGetTypeID() && CFBooleanGetValue(Value) == 1 && v64)
        {
          break;
        }
      }

      if (v64 == 8)
      {
        iBU_LOG_real(@"FW tag %s missing, but this is not fatal.\n", "[NVMEiBootUpdater _copyIBICFromPath:withOptions:intoArray:withError:]", v58, v59, v60, v61, v62, v63, CStringPtr);
      }

      else if (v64)
      {
        iBU_LOG_real(@"Unexpected error %d scanning for FW tag %s - corrupt FW partition?\n", "[NVMEiBootUpdater _copyIBICFromPath:withOptions:intoArray:withError:]", v58, v59, v60, v61, v62, v63, v64);
      }

      else
      {
        CFDataGetLength(0);
        iBU_LOG_real(@"Found FW tag %s of %lu length.\n", "[NVMEiBootUpdater _copyIBICFromPath:withOptions:intoArray:withError:]", v66, v67, v68, v69, v70, v71, CStringPtr);
        CFArrayAppendValue(Mutable, 0);
      }

      if (CFArrayGetCount(v28) <= ++v55)
      {
        goto LABEL_25;
      }
    }

    [(NVMEiBootUpdater *)errorCopy _copyIBICFromPath:v64 withOptions:v58 intoArray:v59 withError:v60, v61, v62, v63];
    LOBYTE(pathCopy) = 0;
  }

LABEL_26:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return pathCopy;
}

@end