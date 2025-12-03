@interface USBCSimpleUVDMFirmwareUpdater
- (BOOL)pingDevice;
- (id)DeviceSerialNumber:(BOOL)number;
- (id)DeviceSerialNumberForController:(id)controller;
- (id)applyFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress;
- (id)checkForEntryForSerialNumber:(id)number inSavedAccInfo:(id)info needsReplacement:(BOOL)replacement;
- (id)enableFirmwareUpdate;
- (id)executeUVDM:(id)m header:(unsigned __int16)header svid:(unsigned __int16)svid data:(unsigned int *)data size:(char *)size sop:(int)sop response:(BOOL)response;
- (id)finishFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress;
- (id)getAccessoryFWStagedInfoForSerialNum:(id)num;
- (id)prepareFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress;
- (id)queryPredicate;
- (id)setWriteOffset:(unsigned int)offset length:(unsigned __int8)length;
- (id)validateDevice:(id)device withFirmware:(id)firmware;
- (int)holdSleepAssertion;
- (int)releaseSleepAssertion;
- (int)setCFUpForController:(id)controller enable:(BOOL)enable;
- (unsigned)DeviceFirmwareVersion;
- (void)createUSBDevice;
- (void)getFWFromURL:(id)l;
- (void)saveAccessoryFWStagedInfo;
@end

@implementation USBCSimpleUVDMFirmwareUpdater

- (id)validateDevice:(id)device withFirmware:(id)firmware
{
  properties = 0;
  if ([(USBCSimpleUVDMFirmwareUpdater *)self holdSleepAssertion:device]|| (!IORegistryEntryCreateCFProperties(self->super._registryEntry, &properties, kCFAllocatorDefault, 0) ? (v5 = properties == 0) : (v5 = 1), v5))
  {
    v6 = 0;
    v19 = 0;
    v13 = 0;
    v25 = 0;
    v12 = 0;
    v9 = 0;
    goto LABEL_28;
  }

  v6 = properties;
  if (!self->super._hardwareProperties)
  {
    v7 = +[NSMutableDictionary dictionary];
    hardwareProperties = self->super._hardwareProperties;
    self->super._hardwareProperties = v7;
  }

  v9 = [(__CFDictionary *)v6 objectForKey:@"bcdDevice"];
  if (!v9)
  {
    v19 = 0;
    v13 = 0;
    v25 = 0;
    v12 = 0;
    goto LABEL_28;
  }

  [(NSMutableDictionary *)self->super._hardwareProperties setObject:v9 forKey:@"Hardware Installed firmware version"];
  v10 = objc_alloc_init(NSNumberFormatter);
  [v10 setNumberStyle:1];
  v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%x", [v9 unsignedIntValue]);
  v28 = v10;
  v12 = [v10 numberFromString:v11];

  self->_firmwareVersionMajor = [v12 unsignedIntValue] / 0x3E8;
  self->_firmwareVersionMinor = (656 * ([v12 unsignedIntValue] % 0x3E8)) >> 16;
  self->_firmwareVersionRelease = [v12 unsignedIntValue] % 0x64;
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"Accessory requires initial delay of %f seconds", *&self->_initialDelay];
  [NSThread sleepForTimeInterval:self->_initialDelay];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"Continuing after initial delay of %f seconds", *&self->_initialDelay];
  v13 = [(__CFDictionary *)v6 objectForKey:@"USB Serial Number"];
  if (!v13)
  {
    v19 = 0;
    goto LABEL_27;
  }

  v27 = v6;
  [(NSMutableDictionary *)self->super._hardwareProperties setObject:v13 forKey:@"Hardware S/N"];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"Current FW version on for S/N %@: %d.%d.%d", v13, self->_firmwareVersionMajor, self->_firmwareVersionMinor, self->_firmwareVersionRelease];
  v14 = +[PDController knownPDControllers];
  pdControllers = self->super._pdControllers;
  self->super._pdControllers = v14;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = self->super._pdControllers;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v30;
    while (2)
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v29 + 1) + 8 * i);
        if (v19)
        {
        }

        v23 = [(USBCSimpleUVDMFirmwareUpdater *)self DeviceSerialNumberForController:v22];
        v19 = v23;
        if (v23 && ![v23 compare:v13])
        {
          [(FudPluginDelegate *)self->super._delegate log:7 format:@"Found _pdController for S/N %@", v13];
          objc_storeStrong(&self->super._pdController, v22);
          goto LABEL_24;
        }
      }

      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_24:

  if (!self->super._pdController)
  {
    v6 = v27;
LABEL_27:
    v25 = v28;
LABEL_28:
    v24 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:8448 userInfo:0];
    goto LABEL_29;
  }

  v24 = 0;
  v6 = v27;
  v25 = v28;
LABEL_29:
  if ([(USBCSimpleUVDMFirmwareUpdater *)self releaseSleepAssertion]&& !v24)
  {
    v24 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:8448 userInfo:0];
  }

  return v24;
}

- (id)finishFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress
{
  if (firmware)
  {
    (*(firmware + 2))(firmware, 0, 0, hardware, a5, progress);
  }

  return 0;
}

- (id)DeviceSerialNumber:(BOOL)number
{
  if (number)
  {
    [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware S/N"];
  }

  else
  {
    [(USBCSimpleUVDMFirmwareUpdater *)self DeviceSerialNumberForController:self->super._pdController];
  }
  v3 = ;

  return v3;
}

- (unsigned)DeviceFirmwareVersion
{
  v2 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware Installed firmware version"];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (id)queryPredicate
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000153A4;
  v4[3] = &unk_1000245E0;
  v4[4] = self;
  v2 = [NSPredicate predicateWithBlock:v4];

  return v2;
}

- (void)saveAccessoryFWStagedInfo
{
  v3 = +[NSFileManager defaultManager];
  v4 = +[NSDate date];
  fwVersion = [(MobileAsset *)self->_mobileAsset fwVersion];
  if (!fwVersion || (v6 = fwVersion, [(USBCSimpleUVDMFirmwareUpdater *)self DeviceSerialNumber], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    sub_100015FCC(self);
    goto LABEL_14;
  }

  fwVersion2 = [(MobileAsset *)self->_mobileAsset fwVersion];
  deviceSerialNumber = [(USBCSimpleUVDMFirmwareUpdater *)self DeviceSerialNumber];
  v10 = [NSString pathWithComponents:&off_1000277D8];
  v11 = [v10 stringByAppendingPathComponent:@"StagedFWInfo"];
  if (![v3 fileExistsAtPath:v11])
  {
    [v3 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:0];
    [v3 createFileAtPath:v11 contents:0 attributes:0];
LABEL_7:
    v12 = objc_alloc_init(NSMutableArray);
    goto LABEL_8;
  }

  v12 = [[NSMutableArray alloc] initWithContentsOfFile:v11];
  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_8:
  v21 = v10;
  v13 = [(USBCSimpleUVDMFirmwareUpdater *)self checkForEntryForSerialNumber:deviceSerialNumber inSavedAccInfo:v12 needsReplacement:1];
  if (!v13)
  {
    v13 = +[NSMutableDictionary dictionary];
  }

  [v13 setObject:deviceSerialNumber forKey:@"SerialNumber"];
  [v13 setObject:fwVersion2 forKey:@"StagedFW"];
  v22 = v4;
  [v13 setObject:v4 forKey:@"DateSaved"];
  [v12 addObject:v13];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"Saving Staged Firmware Info to file: %@", v11];
  v14 = [NSURL fileURLWithPath:v11];
  v23 = 0;
  v15 = fwVersion2;
  v16 = [v12 writeToURL:v14 error:&v23];
  v17 = v23;
  delegate = self->super._delegate;
  if (v16)
  {
    [(FudPluginDelegate *)delegate log:7 format:@"Saved Staged Firmware Info %@ to %@", v13, v11, v19, v20];
  }

  else
  {
    [(FudPluginDelegate *)delegate log:7 format:@"%s: There was an error: %@ while saving Staged Firmware Info: %@ to file: %@", "[USBCSimpleUVDMFirmwareUpdater saveAccessoryFWStagedInfo]", v17, v13, v14];
  }

  v4 = v22;
LABEL_14:
}

- (id)getAccessoryFWStagedInfoForSerialNum:(id)num
{
  numCopy = num;
  v5 = +[NSFileManager defaultManager];
  v6 = [NSString pathWithComponents:&off_1000277F0];
  v7 = [v6 stringByAppendingPathComponent:@"StagedFWInfo"];
  if ([v5 fileExistsAtPath:v7])
  {
    v8 = [[NSMutableArray alloc] initWithContentsOfFile:v7];
    v9 = v8;
    if (v8 && [v8 count])
    {
      v10 = [(USBCSimpleUVDMFirmwareUpdater *)self checkForEntryForSerialNumber:numCopy inSavedAccInfo:v9 needsReplacement:0];
      if (v10)
      {
        v11 = v10;
        goto LABEL_6;
      }

      v13 = @"No saved state information for this accessory";
    }

    else
    {
      v13 = @"No saved state information in file";
    }
  }

  else
  {
    v9 = 0;
    v13 = @"No saved state file";
  }

  [(FudPluginDelegate *)self->super._delegate log:7 format:v13];
  v11 = 0;
LABEL_6:

  return v11;
}

- (id)setWriteOffset:(unsigned int)offset length:(unsigned __int8)length
{
  offsetCopy = offset;
  lengthCopy = length;
  LOBYTE(v6) = 0;
  v4 = [(USBCSimpleUVDMFirmwareUpdater *)self executeUVDM:0 header:47 svid:1452 data:&offsetCopy size:&lengthCopy sop:0 response:v6];

  return v4;
}

- (int)setCFUpForController:(id)controller enable:(BOOL)enable
{
  enableCopy = enable;
  controllerCopy = controller;
  pdController = controllerCopy;
  if (!controllerCopy)
  {
    pdController = self->super._pdController;
  }

  v8 = pdController;
  v19 = enableCopy;
  v18 = 1128682864;
  LODWORD(v15) = 4194305;
  v9 = [(PDController *)v8 executeIECSAtomicCommand:1 cmdBuffer:&v18 dataBuffer:&v19 extDataBuffer:0 returnDataBuffer:v20 returnExtDataBuffer:0 inputDataLength:v15 returnDataBufferLength:10 timeoutInSeconds:?];
  v10 = @"disable";
  if (enableCopy)
  {
    v10 = @"enable";
  }

  v11 = v10;
  if (v9)
  {
    v12 = -536870212;
    [(FudPluginDelegate *)self->super._delegate log:3 format:@"%s: Failed to execute iecsCommand(CFUp) for CFUp %@, status=0x%X", "[USBCSimpleUVDMFirmwareUpdater setCFUpForController:enable:]", v11, v9];
  }

  else
  {
    v13 = v20[0];
    if (v20[0])
    {
      v17 = 0;
      if ([(PDController *)v8 registerRead32:&v17 atAddress:0]|| v17 != 40 || (v16 = 0, [(PDController *)v8 registerRead32:&v16 atAddress:1]) || (v12 = 0, v16 != 826622785))
      {
        v12 = -536870212;
        [(FudPluginDelegate *)self->super._delegate log:3 format:@"%s: Failed to execute iecsCommand(CFUp) for CFUp %@, taskResult=0x%X", "[USBCSimpleUVDMFirmwareUpdater setCFUpForController:enable:]", v11, v13];
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)executeUVDM:(id)m header:(unsigned __int16)header svid:(unsigned __int16)svid data:(unsigned int *)data size:(char *)size sop:(int)sop response:(BOOL)response
{
  svidCopy = svid;
  mCopy = m;
  v15 = +[NSMutableDictionary dictionary];
  v32 = 0;
  v31 = 0;
  pdController = mCopy;
  if (!mCopy)
  {
    pdController = self->super._pdController;
  }

  v33 = 0;
  v17 = pdController;
  if (self->_isManifestCommand)
  {
    v18 = 8000;
  }

  else
  {
    v18 = 1000;
  }

  if (![(USBCSimpleUVDMFirmwareUpdater *)self setCFUpForController:v17 enable:1])
  {
    if (response && [(PDController *)v17 receiveVDM:v34 length:28 outSop:&v33 outSequence:&v31 + 1 outLength:&v32])
    {
      if ([(USBCSimpleUVDMFirmwareUpdater *)self setCFUpForController:v17 enable:0])
      {
LABEL_25:
        deviceSerialNumber = [(USBCSimpleUVDMFirmwareUpdater *)self DeviceSerialNumber];
        [NSString stringWithFormat:@"%s: Failed to executeUVDM for S/N %@ and failed to setCFUp off", "[USBCSimpleUVDMFirmwareUpdater executeUVDM:header:svid:data:size:sop:response:]", deviceSerialNumber];
        v26 = LABEL_30:;
        [v15 setObject:v26 forKeyedSubscript:@"Notes"];

        goto LABEL_31;
      }
    }

    else
    {
      v35[0] = header & 0x7FFF | (svidCopy << 16);
      v20 = *size;
      if (v20 <= 6)
      {
        v21 = 4 * v20;
      }

      else
      {
        v21 = 24;
      }

      __memcpy_chk();
      v22 = [(PDController *)v17 sendVDM:v35 length:(v21 + 4) sop:sop];
      v23 = v22 == 0;
      if (v22)
      {
        v24 = 1;
      }

      else
      {
        v24 = !response;
      }

      if (!v24)
      {
        LOBYTE(v31) = HIBYTE(v31);
        [NSThread sleepForTimeInterval:0.01];
        while (1)
        {
          v23 = v31 != HIBYTE(v31);
          if (v31 != HIBYTE(v31) || [(PDController *)v17 receiveVDM:data length:28 outSop:&v33 outSequence:&v31 outLength:&v32])
          {
            break;
          }

          *size = v32 >> 2;
          if (v31 != HIBYTE(v31))
          {
            [NSThread sleepForTimeInterval:0.01];
          }

          if (!--v18)
          {
            [(FudPluginDelegate *)self->super._delegate log:7 format:@"Timeout in waiting for VDM response\n"];
            v23 = 1;
            break;
          }
        }
      }

      if ([(USBCSimpleUVDMFirmwareUpdater *)self setCFUpForController:v17 enable:0])
      {
        goto LABEL_25;
      }

      if (v23)
      {
        v25 = 0;
        goto LABEL_32;
      }
    }

    deviceSerialNumber = [(USBCSimpleUVDMFirmwareUpdater *)self DeviceSerialNumber];
    [NSString stringWithFormat:@"Failed to executeUVDM for S/N %@", deviceSerialNumber, v29];
    goto LABEL_30;
  }

  deviceSerialNumber = [NSString stringWithFormat:@"%s: Failed to setCFUp on", "[USBCSimpleUVDMFirmwareUpdater executeUVDM:header:svid:data:size:sop:response:]"];
  [v15 setObject:deviceSerialNumber forKeyedSubscript:@"Notes"];
LABEL_31:

  v25 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:11520 userInfo:v15];
LABEL_32:
  v27 = v25;

  return v27;
}

- (id)prepareFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress
{
  firmwareCopy = firmware;
  hardwareCopy = hardware;
  v12 = a5;
  progressCopy = progress;
  if (self->_useDropboxLocation)
  {
    filePathURL = 0;
    goto LABEL_4;
  }

  asset = [(MobileAsset *)self->_mobileAsset asset];
  getLocalFileUrl = [asset getLocalFileUrl];
  fwBundleFileName = [(MobileAsset *)self->_mobileAsset fwBundleFileName];
  v17 = [getLocalFileUrl URLByAppendingPathComponent:fwBundleFileName];
  filePathURL = [v17 filePathURL];

  if (filePathURL)
  {
    [(USBCSimpleUVDMFirmwareUpdater *)self getFWFromURL:filePathURL];
    if (self->_firmware)
    {
LABEL_4:
      v19 = 0;
      if (!firmwareCopy)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  v19 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:1536 userInfo:0];
  if (firmwareCopy)
  {
LABEL_5:
    v20 = sub_100010D60();
    v21(v20);
  }

LABEL_6:

  return v19;
}

- (id)applyFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress
{
  firmwareCopy = firmware;
  hardwareCopy = hardware;
  v12 = a5;
  progressCopy = progress;
  p_name = (&stru_100029FF8 + 8);
  v30 = hardwareCopy;
  if (!self->super._updaterOperational)
  {
    v21 = 0;
    v25 = 0;
    goto LABEL_18;
  }

  if (!self->_firmware)
  {
    v21 = 0;
    v25 = 0;
    goto LABEL_25;
  }

  delegate = self->super._delegate;
  v16 = [hardwareCopy objectForKeyedSubscript:@"Hardware Device Class"];
  deviceSerialNumber = [(USBCSimpleUVDMFirmwareUpdater *)self DeviceSerialNumber];
  [(FudPluginDelegate *)delegate log:1 format:@"Accessory firmware update started: %@ with S/N %@", v16, deviceSerialNumber];

  [(FudPluginDelegate *)self->super._delegate log:7 format:@"=-=-=-=-=-=-=-=-=-=-=-=- Sending Firmware Update Start Command =-=-=-=-=-=-=-=-=-=-=-=-"];
  enableFirmwareUpdate = [(USBCSimpleUVDMFirmwareUpdater *)self enableFirmwareUpdate];
  if (enableFirmwareUpdate || ([(FudPluginDelegate *)self->super._delegate log:7 format:@"=-=-=-=-=-=-=-=-=-=-=-=- Setting Write Offset =-=-=-=-=-=-=-=-=-=-=-=-"], [(USBCSimpleUVDMFirmwareUpdater *)self setWriteOffset:0 length:1], (enableFirmwareUpdate = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v25 = enableFirmwareUpdate;
    v21 = 0;
LABEL_25:
    p_name = (&stru_100029FF8 + 8);
    goto LABEL_18;
  }

  [(FudPluginDelegate *)self->super._delegate log:7 format:@"=-=-=-=-=-=-=-=-=-=-=-=- Sending Firmware Payload =-=-=-=-=-=-=-=-=-=-=-=-"];
  if ([(NSData *)self->_firmware length])
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    while (1)
    {

      if ([(NSData *)self->_firmware length]- v20 <= 0x80)
      {
        v22 = [(NSData *)self->_firmware length]- v20;
      }

      else
      {
        v22 = 128;
      }

      v21 = [(NSData *)self->_firmware subdataWithRange:v19, v22];
      if (!v21)
      {
        v25 = 0;
        goto LABEL_25;
      }

      [(FudPluginDelegate *)self->super._delegate log:7 format:@"Sending BlockAddress: %d", v20];
      v23 = [(USBCSimpleUVDMFirmwareUpdater *)self sendFirmwareBlock:v21 atOffset:v20];
      if (v23)
      {
        break;
      }

      v19 = (v20 + v22);
      if (progressCopy)
      {
        progressCopy[2](progressCopy, v19 / [(NSData *)self->_firmware length]* 100.0);
      }

      v20 = (v20 + v22);
      if ([(NSData *)self->_firmware length]<= v19)
      {
        goto LABEL_17;
      }
    }

    v25 = v23;
    goto LABEL_25;
  }

  v21 = 0;
LABEL_17:
  [NSThread sleepForTimeInterval:0.1];
  [(FudPluginDelegate *)self->super._delegate log:1 format:@"=-=-=-=-=-=-=-=-=-=-=-=- Sending Manifest Command =-=-=-=-=-=-=-=-=-=-=-=-"];
  p_name = &stru_100029FF8.name;
  self->_isManifestCommand = 1;
  LOBYTE(v29) = 1;
  sub_100010D40();
  v25 = [v24 executeUVDM:v29 header:? svid:? data:? size:? sop:? response:?];
LABEL_18:
  *(&self->super.super.isa + *(p_name + 825)) = 0;
  if (firmwareCopy)
  {
    v26 = sub_100010D60();
    v27(v26);
  }

  return v25;
}

- (id)DeviceSerialNumberForController:(id)controller
{
  memset(v8, 0, sizeof(v8));
  LOBYTE(v7) = 1;
  sub_100010D40();
  v4 = [v3 executeUVDM:v7 header:? svid:? data:? size:? sop:? response:?];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[NSString alloc] initWithBytes:v8 + 4 length:17 encoding:4];
  }

  return v5;
}

- (id)checkForEntryForSerialNumber:(id)number inSavedAccInfo:(id)info needsReplacement:(BOOL)replacement
{
  numberCopy = number;
  infoCopy = info;
  v10 = infoCopy;
  v11 = 0;
  v28 = numberCopy;
  v12 = 0;
  if (numberCopy && infoCopy)
  {
    if ([infoCopy count])
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v13 = v10;
      v12 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v12)
      {
        replacementCopy = replacement;
        selfCopy = self;
        v14 = *v30;
LABEL_6:
        v15 = 0;
        while (1)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v13);
          }

          v16 = *(*(&v29 + 1) + 8 * v15);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [v16 objectForKey:@"SerialNumber"];
            if (v17)
            {
              v18 = v17;
              v19 = [v16 objectForKey:@"SerialNumber"];
              v20 = [v19 isEqualToString:v28];

              if (v20)
              {
                break;
              }
            }
          }

          if (v12 == ++v15)
          {
            v12 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
            if (v12)
            {
              goto LABEL_6;
            }

            v11 = 0;
            goto LABEL_21;
          }
        }

        v11 = [v16 objectForKey:@"DateSaved"];
        if (v11)
        {
          v21 = +[NSDate date];
          [v21 timeIntervalSinceDate:v11];
          v23 = v22;

          v24 = v23 / 86400.0;
          v12 = [v16 copy];
          if (replacementCopy || v24 >= 7.0)
          {
            [v13 removeObject:v16];

            if (v24 < 7.0)
            {
              goto LABEL_22;
            }

            [(FudPluginDelegate *)selfCopy->super._delegate log:7 format:@"Saved Staged Firmware Info %@ older than %d days (%f sec), discarding", v12, 7, *&v23];
            v13 = v12;
            v12 = 0;
          }
        }

        else
        {
          [v13 removeObject:v16];
          v12 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

LABEL_21:
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

LABEL_22:

  return v12;
}

- (int)holdSleepAssertion
{
  if (self->_hasSleepAssertion)
  {
    v3 = 0;
    v4 = @"Sleep Assertion already held";
  }

  else
  {
    v3 = IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, @"com.apple.USBCAccessoryFirmwareUpdater.SleepAssertionID", &self->_sleepAssertionId);
    if (v3)
    {
      v4 = @"Failed to hold sleep assertion";
    }

    else
    {
      self->_hasSleepAssertion = 1;
      v4 = @"Held sleep assertion";
    }
  }

  [(FudPluginDelegate *)self->super._delegate log:7 format:v4];
  return v3;
}

- (int)releaseSleepAssertion
{
  if (self->_hasSleepAssertion)
  {
    v3 = IOPMAssertionRelease(self->_sleepAssertionId);
    if (v3)
    {
      v4 = @"Failed to release sleep assertion";
    }

    else
    {
      self->_hasSleepAssertion = 0;
      v4 = @"Released sleep assertion";
    }
  }

  else
  {
    v3 = 0;
    v4 = @"No sleep assertion held to release";
  }

  [(FudPluginDelegate *)self->super._delegate log:7 format:v4];
  return v3;
}

- (void)getFWFromURL:(id)l
{
  v11 = [NSBundle bundleWithURL:l];
  if (v11)
  {
    v4 = [v11 objectForInfoDictionaryKey:@"FirmwareImageFile"];
    if (v4)
    {
      v5 = v4;
      stringByDeletingPathExtension = [v4 stringByDeletingPathExtension];
      pathExtension = [v5 pathExtension];
      v8 = [v11 pathForResource:stringByDeletingPathExtension ofType:pathExtension];
      v9 = [NSData dataWithContentsOfFile:v8];
      firmware = self->_firmware;
      self->_firmware = v9;
    }
  }
}

- (id)enableFirmwareUpdate
{
  v2 = +[NSMutableDictionary dictionary];
  HIBYTE(v7) = 1;
  LODWORD(v10) = 0;
  LOBYTE(v7) = 1;
  sub_100010D40();
  v4 = [v3 executeUVDM:v7 header:0 svid:0 data:0 size:v10 sop:? response:?];
  if (!v4)
  {
    if (v8 && !v9)
    {
      v5 = 0;
      goto LABEL_5;
    }

    v4 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:10752 userInfo:v2];
  }

  v5 = v4;
LABEL_5:

  return v5;
}

- (void)createUSBDevice
{
  theInterface = 0;
  theScore = 0;
  registryEntry = self->super._registryEntry;
  v4 = sub_100010D4C();
  v5 = CFUUIDGetConstantUUIDWithBytes(v4, 0x9Du, 0xC7u, 0xB7u, 0x80u, 0x9Eu, 0xC0u, 0x11u, byte7[0], byte7[1], byte7[2], byte7[3], byte7[4], byte7[5], byte7[6], byte7[7], 0x61u);
  v6 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  v7 = IOCreatePlugInInterfaceForService(registryEntry, v5, v6, &theInterface, &theScore);
  v8 = theInterface;
  if (!v7 && theInterface)
  {
    QueryInterface = (*theInterface)->QueryInterface;
    v10 = sub_100010D4C();
    v11 = CFUUIDGetConstantUUIDWithBytes(v10, 0x5Cu, 0x81u, 0x87u, 0xD0u, 0x9Eu, 0xF3u, 0x11u, byte7a[0], byte7a[1], byte7a[2], byte7a[3], byte7a[4], byte7a[5], byte7a[6], byte7a[7], 0x61u);
    v12 = CFUUIDGetUUIDBytes(v11);
    (QueryInterface)(v8, *&v12.byte0, *&v12.byte8, &self->_USBDevice);
    v8 = theInterface;
  }

  if (v8)
  {
    ((*v8)->Release)(v8);
  }
}

- (BOOL)pingDevice
{
  USBDevice = self->_USBDevice;
  if (USBDevice || ([(USBCSimpleUVDMFirmwareUpdater *)self createUSBDevice], (USBDevice = self->_USBDevice) != 0))
  {
    v5 = 192;
    v6 = 0;
    v7 = 2;
    v8 = 0;
    v9 = 0;
    ((*USBDevice)->DeviceRequest)(USBDevice, &v5);
    LOBYTE(USBDevice) = 1;
  }

  return USBDevice;
}

@end