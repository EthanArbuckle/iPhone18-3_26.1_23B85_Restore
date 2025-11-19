@interface MSUBootFirmwareUpdater
+ (BOOL)supportsDualiBoot;
+ (id)_updaterClasses;
+ (id)updater;
+ (id)updaterWithTimeout:(double)a3;
- (BOOL)generateFirmwareImagesWithCallback:(ramrod_update_callbacks *)a3 context:(firmware_update_context *)a4;
- (MSUBootFirmwareUpdater)init;
- (MSUBootFirmwareUpdater)initWithIOService:(unsigned int)a3;
- (MSUBootFirmwareUpdater)initWithIOServiceMatching:(id)a3;
- (id)_encodeFirmware:(id)a3 withRestoreInfo:(id)a4;
- (id)_restoreInfoDictionary;
- (id)copyFirmwareWithRestoreInfo:(id)a3;
- (int)_encodeAndWriteFirmware:(id)a3 toWriter:(id)a4 withError:(id *)a5;
- (void)dealloc;
- (void)setApNonce:(id)a3;
- (void)setApNonceSlotID:(unsigned int)a3;
@end

@implementation MSUBootFirmwareUpdater

+ (id)_updaterClasses
{
  if (objc_opt_class() == a1)
  {
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v3 = &v7;
    v4 = 4;
  }

  else
  {
    v6 = a1;
    v3 = &v6;
    v4 = 1;
  }

  return [NSArray arrayWithObjects:v3 count:v4, v6, v7, v8, v9, v10];
}

+ (id)updater
{
  if (objc_opt_class() != a1)
  {
    v3 = objc_alloc_init(a1);

    return v3;
  }

  if ([a1 supportsPCIeNANDBoot])
  {
    v5 = PCIeNANDiBootUpdater;
LABEL_9:

    return [(__objc2_class *)v5 updater];
  }

  if ([a1 supportsDualiBoot])
  {
    v5 = SPIiBootUpdater;
    goto LABEL_9;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = [a1 _updaterClasses];
  result = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v11;
LABEL_14:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(v6);
      }

      result = [*(*(&v10 + 1) + 8 * v9) updater];
      if (result)
      {
        break;
      }

      if (v7 == ++v9)
      {
        result = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
        v7 = result;
        if (result)
        {
          goto LABEL_14;
        }

        return result;
      }
    }
  }

  return result;
}

+ (id)updaterWithTimeout:(double)a3
{
  v5 = +[NSProcessInfo processInfo];
  [(NSProcessInfo *)v5 systemUptime];
  v7 = v6 + a3;
  NSStringFromClass(a1);
  iBU_LOG_real(@"Waiting %ld seconds for %@\n", "+[MSUBootFirmwareUpdater updaterWithTimeout:]", v8, v9, v10, v11, v12, v13, llround(a3));
  while (1)
  {
    v14 = [a1 updater];
    if (v14)
    {
      break;
    }

    [(NSProcessInfo *)v5 systemUptime];
    v16 = llround(v7 - v15);
    sleep(v16 > 0);
    if (v16 <= 0)
    {
      v23 = @"Found no matching service.";
      goto LABEL_6;
    }
  }

  v24 = objc_opt_class();
  v26 = NSStringFromClass(v24);
  v23 = @"Created an instance of %@ to update this device's firmware and boot images";
LABEL_6:
  iBU_LOG_real(v23, "+[MSUBootFirmwareUpdater updaterWithTimeout:]", v17, v18, v19, v20, v21, v22, v26);
  return v14;
}

- (MSUBootFirmwareUpdater)init
{
  v3 = [objc_opt_class() IOMatchingPropertyTable];

  return [(MSUBootFirmwareUpdater *)self initWithIOServiceMatching:v3];
}

- (MSUBootFirmwareUpdater)initWithIOService:(unsigned int)a3
{
  v10.receiver = self;
  v10.super_class = MSUBootFirmwareUpdater;
  v4 = [(MSUBootFirmwareUpdater *)&v10 init];
  if (v4)
  {
    matches = 0;
    v5 = [objc_opt_class() IOMatchingPropertyTable];
    if (a3 && (v6 = v5, [(__CFDictionary *)v5 count]) && (!IOServiceMatchPropertyTable(a3, v6, &matches) ? (v7 = matches == 0) : (v7 = 1), !v7))
    {
      IOServiceWaitQuiet(a3, 0);
      IOObjectRetain(a3);
      v4->_matchedService = a3;
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (MSUBootFirmwareUpdater)initWithIOServiceMatching:(id)a3
{
  if ([a3 count])
  {
    if (a3)
    {
      v5 = CFRetain(a3);
    }

    else
    {
      v5 = 0;
    }

    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v5);
  }

  else
  {
    MatchingService = 0;
  }

  v7 = [(MSUBootFirmwareUpdater *)self initWithIOService:MatchingService];
  if (MatchingService && IOObjectRelease(MatchingService))
  {
    [(MSUBootFirmwareUpdater *)&v9 initWithIOServiceMatching:v10];
  }

  return v7;
}

- (void)setApNonce:(id)a3
{
  v4 = [a3 copy];

  self->_apNonce = v4;
  self->_apNonceSlotID = 0;
  self->_supportsSlotIDs = 0;
}

- (void)setApNonceSlotID:(unsigned int)a3
{
  self->_apNonce = 0;
  self->_apNonceSlotID = a3;
  self->_supportsSlotIDs = 1;
}

- (void)dealloc
{
  matchedService = self->_matchedService;
  if (matchedService)
  {
    IOObjectRelease(matchedService);
  }

  v4.receiver = self;
  v4.super_class = MSUBootFirmwareUpdater;
  [(MSUBootFirmwareUpdater *)&v4 dealloc];
}

+ (BOOL)supportsDualiBoot
{
  is_nonzero = _ioreg_property_is_nonzero("IODeviceTree:/product", @"dual-iboot-support");
  if (is_nonzero)
  {
    LOBYTE(is_nonzero) = [a1 supportsPCIeNANDBoot] ^ 1;
  }

  return is_nonzero;
}

- (BOOL)generateFirmwareImagesWithCallback:(ramrod_update_callbacks *)a3 context:(firmware_update_context *)a4
{
  v7 = objc_opt_new();
  v77 = objc_opt_new();
  v88[0] = @"iBoot";
  v88[1] = @"ANS";
  v88[2] = @"iBootData";
  v88[3] = @"DCP";
  v88[4] = @"AppleLogo";
  obj = [NSArray arrayWithObjects:v88 count:5];
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 1;
  v8 = (a3->var2)(a4);
  [v7 addObject:v8];
  v9 = (a3->var3)(a4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 mutableCopy];
    if ([objc_opt_class() isSingleStageBoot])
    {
      iBU_LOG_real(@"iBoot data provided in firmware images yet this is single-stage-boot device - removing from firmware images being updated.", "[MSUBootFirmwareUpdater generateFirmwareImagesWithCallback:context:]", v11, v12, v13, v14, v15, v16, v70);
      [v10 removeObjectForKey:@"iBoot"];
      v17 = 0;
    }

    else
    {
      v17 = [v10 objectForKey:@"iBoot"];
    }

    v75 = [v10 objectForKey:@"Dali"];
    iBU_LOG_real(@"Ordered firmware image names: %@.", "[MSUBootFirmwareUpdater generateFirmwareImagesWithCallback:context:]", v27, v28, v29, v30, v31, v32, obj);
    v74 = a3;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v33 = [(NSArray *)obj countByEnumeratingWithState:&v79 objects:v87 count:16];
    v71 = v17;
    v72 = a4;
    v73 = v9;
    v24 = 0;
    v25 = 0;
    if (v33)
    {
      v34 = *v80;
      do
      {
        for (i = 0; i != v33; i = i + 1)
        {
          if (*v80 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v36 = *(*(&v79 + 1) + 8 * i);
          if ([v10 objectForKeyedSubscript:v36])
          {
            if ([v36 isEqualToString:@"ANS"])
            {
              iBU_LOG_real(@"Pulling ANS out of the list of firmwares.", "[MSUBootFirmwareUpdater generateFirmwareImagesWithCallback:context:]", v37, v38, v39, v40, v41, v42, v70);
              v25 = [v10 objectForKeyedSubscript:v36];
            }

            if ([v36 isEqualToString:@"AppleLogo"])
            {
              iBU_LOG_real(@"Pulling Logo out of the list of firmwares.", "[MSUBootFirmwareUpdater generateFirmwareImagesWithCallback:context:]", v43, v44, v45, v46, v47, v48, v70);
              v24 = [v10 objectForKeyedSubscript:v36];
            }

            [v77 addObject:{objc_msgSend(v10, "objectForKeyedSubscript:", v36)}];
            [v10 removeObjectForKey:v36];
          }
        }

        v33 = [(NSArray *)obj countByEnumeratingWithState:&v79 objects:v87 count:16];
      }

      while (v33);
    }

    v9 = v73;
    v26 = v71;
    a4 = v72;
    a3 = v74;
    [v77 addObjectsFromArray:{objc_msgSend(v10, "allValues")}];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      iBU_LOG_real(@"request for images data returned non-Array and non-Dictionary. Type returned was: %@", "[MSUBootFirmwareUpdater generateFirmwareImagesWithCallback:context:]", v18, v19, v20, v21, v22, v23, v9);
LABEL_29:
      v68 = 0;
      goto LABEL_30;
    }

    [v77 addObjectsFromArray:v9];
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v75 = 0;
  }

  if ([objc_opt_class() requiresSEPInFW])
  {
    v49 = (a3->var6)(a4);
    iBU_LOG_real(@"Appending SEP to firmwareImages", "[MSUBootFirmwareUpdater generateFirmwareImagesWithCallback:context:]", v50, v51, v52, v53, v54, v55, v70);
    if (!v49)
    {
      iBU_LOG_real(@"NULL returned from copy_sep()!", "[MSUBootFirmwareUpdater generateFirmwareImagesWithCallback:context:]", v56, v57, v58, v59, v60, v61, v70);
      goto LABEL_29;
    }

    [v77 addObject:v49];
  }

  v78[0] = _NSConcreteStackBlock;
  v78[1] = 3254779904;
  v78[2] = __69__MSUBootFirmwareUpdater_generateFirmwareImagesWithCallback_context___block_invoke;
  v78[3] = &__block_descriptor_40_e8_32r_e15_v32__0_8Q16_B24l;
  v78[4] = &v83;
  [v77 enumerateObjectsUsingBlock:v78];
  if ((v84[3] & 1) == 0)
  {
    iBU_LOG_real(@"Firmware images array contains non-CFDataRef/non-NSArray.", "[MSUBootFirmwareUpdater generateFirmwareImagesWithCallback:context:]", v62, v63, v64, v65, v66, v67, v70);
    goto LABEL_29;
  }

  (a3->var1)(0, 0, a4);
  [(MSUBootFirmwareUpdater *)self setBootBlockImages:v7];
  [(MSUBootFirmwareUpdater *)self setFirmwareImages:v77];
  [(MSUBootFirmwareUpdater *)self setDaliData:v75];
  [(MSUBootFirmwareUpdater *)self setIbootData:v26];
  [(MSUBootFirmwareUpdater *)self setLlbData:v8];
  [(MSUBootFirmwareUpdater *)self setAns2Data:v25];
  [(MSUBootFirmwareUpdater *)self setLogoData:v24];
  v68 = 1;
LABEL_30:

  _Block_object_dispose(&v83, 8);
  return v68;
}

uint64_t __69__MSUBootFirmwareUpdater_generateFirmwareImagesWithCallback_context___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

- (id)copyFirmwareWithRestoreInfo:(id)a3
{
  v5 = [(MSUBootFirmwareUpdater *)self _restoreInfoDictionary];

  return [(MSUBootFirmwareUpdater *)self _encodeFirmware:a3 withRestoreInfo:v5];
}

- (id)_restoreInfoDictionary
{
  if ([(MSUBootFirmwareUpdater *)self supportsSlotIDs])
  {
    v9 = @"anid";
    v10 = [NSNumber numberWithUnsignedInt:[(MSUBootFirmwareUpdater *)self apNonceSlotID]];
    v3 = &v10;
    v4 = &v9;
  }

  else
  {
    v5 = [(MSUBootFirmwareUpdater *)self apNonce];
    if (!v5)
    {
      v5 = _ioreg_copy_property("IODeviceTree:/chosen", @"boot-nonce");
      if (!v5)
      {
        return __NSDictionary0__;
      }
    }

    v7 = @"BNCN";
    v8 = v5;
    v3 = &v8;
    v4 = &v7;
  }

  return [NSDictionary dictionaryWithObjects:v3 forKeys:v4 count:1];
}

- (int)_encodeAndWriteFirmware:(id)a3 toWriter:(id)a4 withError:(id *)a5
{
  v9 = [(MSUBootFirmwareUpdater *)self _restoreInfoDictionary];
  if (!a3)
  {
    if (!a5)
    {
      return -536870212;
    }

    v19 = @"_encodeAndWriteFirmware called with NULL data?";
LABEL_9:
    v20 = 7;
LABEL_10:
    *a5 = MSUBootFirmwareError(v20, 0, v19, v10, v11, v12, v13, v14, v21);
    return -536870212;
  }

  v10 = v9;
  if (!v9)
  {
    if (!a5)
    {
      return -536870212;
    }

    v19 = @"_encodeAndWriteFirmware retrieved a null restoreInfo dictionary?";
    goto LABEL_9;
  }

  v15 = [(MSUBootFirmwareUpdater *)self _encodeFirmware:a3 withRestoreInfo:v9];
  if (v15)
  {
    v16 = v15;
    v17 = [a4 writeData:v15 withError:a5];

    return v17;
  }

  if (a5)
  {
    v19 = @"_encodeAndWriteFirmware failed to encode Img4 data.";
    v20 = 9;
    goto LABEL_10;
  }

  return -536870212;
}

- (id)_encodeFirmware:(id)a3 withRestoreInfo:(id)a4
{
  result = [a3 length];
  if (result)
  {
    v6 = AMAuthInstallApImg4EncodeRestoreInfo();
    if (v6)
    {
      iBU_LOG_real(@"AMAuthInstallApImg4EncodeRestoreInfo returned %d during Img4 encoding?", "[MSUBootFirmwareUpdater _encodeFirmware:withRestoreInfo:]", v7, v8, v9, v10, v11, v12, v6);
    }

    else
    {
      v13 = [a3 length];
      [0 length];
      iBU_LOG_real(@"original data length: %lu. img4_restore_data length: %lu", "[MSUBootFirmwareUpdater _encodeFirmware:withRestoreInfo:]", v14, v15, v16, v17, v18, v19, v13);
    }

    return 0;
  }

  return result;
}

- (void)initWithIOServiceMatching:(uint64_t *)a1 .cold.1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  OUTLINED_FUNCTION_1(v6, v3, v4, v5, &_mh_execute_header);
  v7 = *a1;
  _os_crash_msg();
  __break(1u);
}

@end