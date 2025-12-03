@interface USBCThunderboltFirmwareUpdater
- (id)DeviceFirmwareVersionString;
- (id)DeviceSerialNumber;
- (id)DeviceVIDDID:(unsigned int *)d andDid:(unsigned int *)did andUid:(id *)uid;
- (id)RetrieveA115SerialNumber:(char *)number;
- (id)RetrieveAceFirmwareVersion:(char *)version;
- (id)applyFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress;
- (id)finishFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress;
- (id)prepareFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress;
- (id)validateDevice:(id)device withFirmware:(id)firmware;
- (id)validateFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress;
- (id)validateThunderboltSwitch;
- (unsigned)DeviceFirmwareVersion;
- (unsigned)FirmwareFileVersion:(id)version firmware:(id *)firmware isSecure:(BOOL *)secure andSignature:(id *)signature;
@end

@implementation USBCThunderboltFirmwareUpdater

- (unsigned)FirmwareFileVersion:(id)version firmware:(id *)firmware isSecure:(BOOL *)secure andSignature:(id *)signature
{
  versionCopy = version;
  v10 = [versionCopy length];
  v11 = malloc_type_malloc(v10, 0xE5C66A55uLL);
  [versionCopy getBytes:v11 length:v10];
  v12 = *v11;
  if (*v11 == -1394606079)
  {
    v13 = 0;
    v14 = v11;
  }

  else
  {
    if ((v12 + 1) > 1)
    {
      v16 = v11 + 1023;
    }

    else
    {
      v12 = v11[1024];
      if ((v12 + 1) < 2)
      {
        LODWORD(v15) = -1;
        goto LABEL_38;
      }

      v16 = v11 + 2047;
    }

    v13 = (*v16 + v12);
    v14 = (v11 + v13);
  }

  signatureCopy = signature;
  if (v13 >= v10)
  {
    delegate = self->super._delegate;
    v26 = @"Invalid Ace Image (1)\n";
  }

  else
  {
    if (*v14 == -1394606079 && v14[2] == 4096)
    {
      v17 = (v14[3] + 4096);
      v18 = v14[6];
      v19 = v18 + 1;
      v20 = v18 + 4096;
      if (v19 >= 2)
      {
        v21 = v20;
      }

      else
      {
        v21 = v17;
      }

      if (v19 >= 2)
      {
        v22 = v20;
      }

      else
      {
        v22 = 0xFFFFFFFFLL;
      }

      v23 = v21 + v13;
      if (v21 > 0x18000 || v23 > v10)
      {
        [(FudPluginDelegate *)self->super._delegate log:7 format:@"Invalid Ace Image (2)\n"];
        [(FudPluginDelegate *)self->super._delegate log:7 format:@"aceLength %08x aceOffset %08x len %08x imageLength %08x APP_SIZE_ACE %08x\n", v21, v13, (v17 + v13), v10, 98304];
        v31 = 0;
        v15 = 0xFFFFFFFFLL;
      }

      else
      {
        v31 = v23 < v10;
        v15 = (v14[13] << 8);
      }

      goto LABEL_27;
    }

    delegate = self->super._delegate;
    v26 = @"Not an Ace image\n";
  }

  [(FudPluginDelegate *)delegate log:7 format:v26];
  v17 = 0;
  v31 = 0;
  v22 = 0xFFFFFFFFLL;
  v15 = 0xFFFFFFFFLL;
LABEL_27:
  free(v11);
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"    aceOffset: %u (0x%X)", v13, v13];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"    aceLength: %u (0x%X)", v17, v17];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"    aceLengthTotal: %u (0x%X)", v22, v22];
  v27 = @"NO";
  if (v31)
  {
    v27 = @"YES";
  }

  [(FudPluginDelegate *)self->super._delegate log:7 format:@"    signedBinary: %@", v27];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"    fwVersion: %u (0x%X)", v15, v15];
  if (firmware)
  {
    *firmware = [versionCopy subdataWithRange:{v13, v22}];
  }

  if (secure)
  {
    *secure = v31;
  }

  if (signatureCopy)
  {
    v28 = [versionCopy length];
    if ((v22 - v17) < 0x100)
    {
      v29 = 0;
    }

    else
    {
      v29 = [versionCopy subdataWithRange:{v28 - 256, 256}];
    }

    *signatureCopy = v29;
  }

LABEL_38:

  return v15;
}

- (id)RetrieveAceFirmwareVersion:(char *)version
{
  v14 = 4;
  v15 = 0;
  v13 = 0;
  v5 = [(USBCPDAccess *)self->super._pdAccess DeviceInAlternateMode:&v13];
  if (v5)
  {
LABEL_10:
    v11 = v5;
    goto LABEL_11;
  }

  if (v13 == 1)
  {
    v5 = [(USBCPDAccess *)self->super._pdAccess RemoteIECSReadReg:&v15 bufferLength:4 registerAddress:15 returnedBufferLength:&v14];
    if (!v5)
    {
      v6 = HIWORD(v15);
      v7 = BYTE1(v15);
      v8 = v15;
      sprintf(version, "%X.%X.%X", HIWORD(v15), BYTE1(v15), v15);
      v9 = 0;
      self->super._firmwareVersion = (v7 << 8) | (v6 << 16) | v8;
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v10 = +[NSMutableDictionary dictionary];
  [v10 setObject:@"Not in alternate mode" forKeyedSubscript:@"Notes"];
  v11 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:9472 userInfo:v10];

  if (!v11)
  {
    v9 = 0;
    goto LABEL_7;
  }

LABEL_11:
  sub_100014C3C(v11, &v16);
  v9 = v16;
LABEL_7:

  return v9;
}

- (id)RetrieveA115SerialNumber:(char *)number
{
  v10 = 0u;
  v11 = 0u;
  memset(v9, 0, sizeof(v9));
  v7 = 64;
  v5 = [(USBCPDAccess *)self->super._pdAccess RemoteExecuteCommand:1917081416];
  if (v5 || ([(USBCPDAccess *)self->super._pdAccess RemoteIECSReadReg:v9 bufferLength:64 registerAddress:9 returnedBufferLength:&v7], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    sub_10001331C(v5, &v8);
    v5 = v8;
  }

  else
  {
    *number = v10;
    *(number + 8) = v11;
  }

  return v5;
}

- (unsigned)DeviceFirmwareVersion
{
  result = self->super._firmwareVersion;
  if (!result)
  {
    v4 = [(USBCThunderboltFirmwareUpdater *)self RetrieveAceFirmwareVersion:v5];
    return self->super._firmwareVersion;
  }

  return result;
}

- (id)DeviceFirmwareVersionString
{
  v2 = [(USBCThunderboltFirmwareUpdater *)self RetrieveAceFirmwareVersion:v5];

  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [NSString stringWithFormat:@"%s", v5];
  }

  return v3;
}

- (id)validateThunderboltSwitch
{
  selfCopy = self;
  parent = 0;
  v43 = 0;
  v42 = 0;
  v3 = &IOCreatePlugInInterfaceForService_ptr;
  v4 = &IOCreatePlugInInterfaceForService_ptr;
  if (IORegistryEntryGetParentEntry(self->super._registryEntry, "IOService", &parent))
  {
    v5 = 0;
    goto LABEL_15;
  }

  v36 = selfCopy;
  while (1)
  {
    if (IOObjectConformsTo(parent, "IOThunderboltPort"))
    {
      v6 = ![IOKitUtilities uint8ForRegistryEntry:parent andKey:@"Dual-Link Port RID" outValue:&v43 + 1]&& [IOKitUtilities uint8ForRegistryEntry:parent andKey:@"Micro Address" outValue:&v43]== 0;
    }

    else
    {
      v6 = 1;
    }

    if (IOObjectConformsTo(parent, "IOThunderboltSwitchType3"))
    {
      LODWORD(v45[0]) = 9999;
      if (v6 && ![IOKitUtilities uint32ForRegistryEntry:parent andKey:@"Depth" outValue:v45]&& ![IOKitUtilities uint64ForRegistryEntry:parent andKey:@"Route String" outValue:&v42])
      {
        break;
      }
    }

    if (IORegistryEntryGetParentEntry(parent, "IOService", &parent))
    {
      v5 = 0;
      v4 = &IOCreatePlugInInterfaceForService_ptr;
      v3 = &IOCreatePlugInInterfaceForService_ptr;
      goto LABEL_15;
    }
  }

  if (LODWORD(v45[0]))
  {
    v3 = &IOCreatePlugInInterfaceForService_ptr;
    v13 = +[NSMutableDictionary dictionary];
    [v13 setObject:@"Depth != 0 - not direct attached" forKeyedSubscript:@"Notes"];
    v4 = &IOCreatePlugInInterfaceForService_ptr;
    v5 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:8962 userInfo:v13];

LABEL_15:
    dictionary = [v3[126] dictionary];
    v8 = dictionary;
    if (v5)
    {
      [dictionary setObject:v5 forKeyedSubscript:@"Previous Error Response"];
    }

    [v8 setObject:@"No USB-C switch?" forKeyedSubscript:@"Notes"];
    v9 = [v4[107] errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:8963 userInfo:v8];
    goto LABEL_18;
  }

  v4 = &IOCreatePlugInInterfaceForService_ptr;
  v3 = &IOCreatePlugInInterfaceForService_ptr;
  if (selfCopy->super._pdControllers || (+[PDController knownPDControllers], v14 = objc_claimAutoreleasedReturnValue(), pdControllers = selfCopy->super._pdControllers, selfCopy->super._pdControllers = v14, pdControllers, selfCopy->super._pdControllers))
  {
    v16 = +[AppleHPMUserClientManager sharedInstance];
    if (v16)
    {
      v8 = v16;
      v5 = [v16 userClientForRouterID:HIBYTE(v43) andRoute:v42];
      if (v5)
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v17 = selfCopy->super._pdControllers;
        v18 = [(NSArray *)v17 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v39;
          do
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v39 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v38 + 1) + 8 * i);
              pdController = [v22 userClient];
              if (pdController == v5)
              {
                address = [v22 address];
                v25 = v43;

                if (address != v25)
                {
                  continue;
                }

                v26 = v22;
                pdController = v36->super._pdController;
                v36->super._pdController = v26;
              }
            }

            v19 = [(NSArray *)v17 countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v19);
        }

        selfCopy = v36;
        v4 = &IOCreatePlugInInterfaceForService_ptr;
        v3 = &IOCreatePlugInInterfaceForService_ptr;
        if (v36->super._pdController)
        {
          goto LABEL_49;
        }

        if ([(NSArray *)v36->super._pdControllers count]== 1)
        {
          v27 = [(NSArray *)v36->super._pdControllers objectAtIndexedSubscript:0];
          v28 = v36->super._pdController;
          v36->super._pdController = v27;
        }

        if (v36->super._pdController)
        {
LABEL_49:
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v30 = off_1000242F0;
          if ((isKindOfClass & 1) == 0)
          {
            v30 = off_100024300;
          }

          v31 = [objc_alloc(*v30) initWithPDController:v36->super._pdController];
          pdAccess = v36->super._pdAccess;
          v36->super._pdAccess = v31;

          memset(v45, 0, sizeof(v45));
          v37 = 32;
          v9 = [(USBCPDAccess *)v36->super._pdAccess LocalIECSReadReg:v45 bufferLength:32 registerAddress:72 returnedBufferLength:&v37];
          if (v9)
          {
            goto LABEL_18;
          }

          if (*(v45 + 11) == 5719)
          {
            v9 = 0;
LABEL_18:

            goto LABEL_19;
          }

          v34 = +[NSMutableDictionary dictionary];
          [v34 setObject:@"Incorrect productID value" forKeyedSubscript:@"Notes"];
          v35 = 8448;
        }

        else
        {
          v34 = +[NSMutableDictionary dictionary];
          [v34 setObject:@"No _pdController?" forKeyedSubscript:@"Notes"];
          v35 = 8967;
        }
      }

      else
      {
        v34 = +[NSMutableDictionary dictionary];
        [v34 setObject:@"No userClient?" forKeyedSubscript:@"Notes"];
        v35 = 8966;
      }

      v9 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:v35 userInfo:v34];

      goto LABEL_18;
    }

    v8 = +[NSMutableDictionary dictionary];
    [v8 setObject:@"No userClientMgr?" forKeyedSubscript:@"Notes"];
    v33 = 8965;
  }

  else
  {
    v8 = +[NSMutableDictionary dictionary];
    [v8 setObject:@"No pdControllers array?" forKeyedSubscript:@"Notes"];
    v33 = 8964;
  }

  v9 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:v33 userInfo:v8];
LABEL_19:

  if (v9)
  {
    dictionary2 = [v3[126] dictionary];
    [dictionary2 setObject:v9 forKeyedSubscript:@"Previous Error Response"];
    v11 = [v4[107] errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:8960 userInfo:dictionary2];

LABEL_21:
    goto LABEL_24;
  }

  selfCopy->super._route = v42;
  selfCopy->super._rid = HIBYTE(v43);
  selfCopy->super._address = v43;
  if (!selfCopy->super._pdAccess)
  {
    dictionary2 = [v3[126] dictionary];
    [dictionary2 setObject:@"_pdAccess == nil" forKeyedSubscript:@"Notes"];
    v11 = [v4[107] errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:8960 userInfo:dictionary2];
    goto LABEL_21;
  }

  v11 = 0;
LABEL_24:

  return v11;
}

- (id)validateDevice:(id)device withFirmware:(id)firmware
{
  deviceCopy = device;
  firmwareCopy = firmware;
  v18 = 0;
  if (!self->super._hardwareProperties)
  {
    objc_storeStrong(&self->super._hardwareProperties, device);
  }

  if (!self->super._firmwareAssetProperties)
  {
    objc_storeStrong(&self->super._firmwareAssetProperties, firmware);
  }

  validateThunderboltSwitch = [(USBCThunderboltFirmwareUpdater *)self validateThunderboltSwitch];
  if (validateThunderboltSwitch)
  {
    v10 = validateThunderboltSwitch;
    v11 = 0;
LABEL_11:
    deviceFirmwareVersionString = +[NSMutableDictionary dictionary];
    [deviceFirmwareVersionString setObject:v10 forKeyedSubscript:@"Previous Error Response"];
    v15 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:8448 userInfo:deviceFirmwareVersionString];

    goto LABEL_13;
  }

  v17 = 0;
  v10 = [(USBCThunderboltFirmwareUpdater *)self DeviceVIDDID:&v18 + 4 andDid:&v18 andUid:&v17];
  v11 = v17;
  if (v10)
  {
    goto LABEL_11;
  }

  if (v18 == 0x5AC00001657)
  {
    v10 = 0;
  }

  else
  {
    v12 = +[NSMutableDictionary dictionary];
    [v12 setObject:@"Wrong VID/DID" forKeyedSubscript:@"Notes"];
    v10 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:8448 userInfo:v12];
  }

  v13 = [NSNumber numberWithUnsignedLong:[(USBCThunderboltFirmwareUpdater *)self DeviceFirmwareVersion]];
  [(NSMutableDictionary *)self->super._hardwareProperties setObject:v13 forKeyedSubscript:@"Hardware Installed firmware version"];

  if (v10)
  {
    goto LABEL_11;
  }

  deviceFirmwareVersionString = [(USBCThunderboltFirmwareUpdater *)self DeviceFirmwareVersionString];
  v15 = 0;
LABEL_13:

  return v15;
}

- (id)validateFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress
{
  firmwareCopy = firmware;
  hardwareCopy = hardware;
  v12 = a5;
  progressCopy = progress;
  bOOLValue = 0;
  v13 = [v12 objectForKeyedSubscript:@"Firmware Asset Version"];
  v14 = [v12 objectForKeyedSubscript:@"Firmware Asset Is Secure"];
  v15 = [v12 objectForKeyedSubscript:@"Firmware Asset File"];
  v16 = [v12 objectForKeyedSubscript:@"Firmware Asset Payload"];
  v17 = [v12 objectForKeyedSubscript:@"Firmware Asset Signature"];
  v18 = v17;
  v49 = firmwareCopy;
  v50 = hardwareCopy;
  v48 = v15;
  if (v15)
  {
    if (v16 && v17 && v14 && v13)
    {
      v46 = v13;
      unsignedLongValue = [v13 unsignedLongValue];
      v47 = v14;
      bOOLValue = [v14 BOOLValue];
      v20 = [v12 objectForKeyedSubscript:@"Firmware Asset Payload"];

      v21 = [v12 objectForKeyedSubscript:@"Firmware Asset Signature"];

      v18 = v21;
      v16 = v20;
    }

    else
    {
      v52 = v17;
      v53 = v16;
      unsignedLongValue = [(USBCThunderboltFirmwareUpdater *)self FirmwareFileVersion:v15 firmware:&v53 isSecure:&bOOLValue andSignature:&v52];
      v25 = v53;

      v26 = v13;
      v27 = v52;

      v28 = [NSNumber numberWithUnsignedLong:unsignedLongValue];

      [v12 setObject:v28 forKeyedSubscript:@"Firmware Asset Version"];
      v29 = [NSNumber numberWithBool:bOOLValue];

      [v12 setObject:v29 forKeyedSubscript:@"Firmware Asset Is Secure"];
      [v12 setObject:v25 forKeyedSubscript:@"Firmware Asset Payload"];
      [v12 setObject:v27 forKeyedSubscript:@"Firmware Asset Signature"];
      v18 = v27;
      v16 = v25;
      v46 = v28;
      v47 = v29;
      hardwareCopy = v50;
    }

    v30 = [hardwareCopy objectForKeyedSubscript:@"Hardware Installed firmware version"];
    v24 = v30;
    if (v30)
    {
      unsignedLongValue2 = [v30 unsignedLongValue];
      if (!v16)
      {
        goto LABEL_17;
      }
    }

    else
    {
      unsignedLongValue2 = [(USBCThunderboltFirmwareUpdater *)self DeviceFirmwareVersion];
      v32 = [NSNumber numberWithUnsignedLong:unsignedLongValue2];
      [hardwareCopy setObject:v32 forKeyedSubscript:@"Hardware Installed firmware version"];

      if (!v16)
      {
        goto LABEL_17;
      }
    }

    if (bOOLValue != 1 || [v18 length])
    {
      if (unsignedLongValue2 < (unsignedLongValue & 0x7FFFFF))
      {
        v33 = [hardwareCopy objectForKeyedSubscript:@"Hardware Device Class"];
        delegate = self->super._delegate;
        deviceSerialNumber = [(USBCThunderboltFirmwareUpdater *)self DeviceSerialNumber];
        deviceFirmwareVersionString = [(USBCThunderboltFirmwareUpdater *)self DeviceFirmwareVersionString];
        v36 = [(USBCFirmwareUpdater *)self FirmwareFileVersionString:unsignedLongValue];
        v37 = 1;
        [(FudPluginDelegate *)delegate log:1 format:@"%@ with S/N %@ is in need of an update.  Installed firmware version %@ will be replaced with %@", v33, deviceSerialNumber, deviceFirmwareVersionString, v36];

        v23 = 0;
        goto LABEL_21;
      }

      v38 = +[NSMutableDictionary dictionary];
      [v38 setObject:@"Firmware older than/equal to what is currently installed" forKeyedSubscript:@"Notes"];
      v39 = 2817;
      goto LABEL_19;
    }

LABEL_17:
    v38 = +[NSMutableDictionary dictionary];
    [v38 setObject:@"Firmware file was bad" forKeyedSubscript:@"Notes"];
    v39 = 12290;
LABEL_19:
    v23 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:v39 userInfo:v38];

    goto LABEL_20;
  }

  v46 = v13;
  v47 = v14;
  v22 = +[NSMutableDictionary dictionary];
  [v22 setObject:@"Firmware file was missing" forKeyedSubscript:@"Notes"];
  v23 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:12289 userInfo:v22];

  v24 = 0;
LABEL_20:
  v33 = [hardwareCopy objectForKeyedSubscript:@"Hardware Device Class"];
  v40 = self->super._delegate;
  deviceSerialNumber = [(USBCThunderboltFirmwareUpdater *)self DeviceSerialNumber];
  deviceFirmwareVersionString = [(USBCThunderboltFirmwareUpdater *)self DeviceFirmwareVersionString];
  [(FudPluginDelegate *)v40 log:1 format:@"%@ with S/N %@ is up to date.  Installed firmware version is %@", v33, deviceSerialNumber, deviceFirmwareVersionString];
  v37 = 0;
LABEL_21:
  v41 = progressCopy;

  if (progressCopy)
  {
    (*(progressCopy + 2))(progressCopy, 100.0);
  }

  if (v23)
  {
    v42 = +[NSMutableDictionary dictionary];
    [v42 setObject:v23 forKeyedSubscript:@"Previous Error Response"];
    v43 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:12292 userInfo:v42];

    v41 = progressCopy;
    if (!v49)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v43 = 0;
  if (v49)
  {
LABEL_25:
    (v49)[2](v49, v37, 0, v43);
  }

LABEL_26:

  return v43;
}

- (id)prepareFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress
{
  firmwareCopy = firmware;
  progressCopy = progress;
  v10 = MGCopyAnswer();
  v11 = 0;
  if (([v10 containsString:@"arm"] & 1) == 0)
  {
    v29 = firmwareCopy;
    v11 = [[NSMutableDictionary alloc] initWithCapacity:5];
    if (!v11)
    {
      v11 = [NSMutableDictionary dictionaryWithCapacity:1];
    }

    v28 = v10;
    v12 = [(USBCFirmwareUpdater *)self BlessArgumentsWithRemoteReset:0];
    if (v12)
    {
      v13 = [NSString stringWithFormat:@"%u %u", self->super._rid, self->super._address];
      v14 = [NSNumber numberWithInt:500];
      v15 = [NSDictionary dictionaryWithObjectsAndKeys:v12, @"BlessArguments", v14, @"Priority", v13, @"UniqueID", 0, 0];

      [v11 setObject:v15 forKeyedSubscript:@"BlessSettings"];
    }

    selfCopy = self;
    v16 = objc_alloc_init(NSMutableString);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = v12;
    v18 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v30 + 1) + 8 * i);
          if ([v16 length])
          {
            [v16 appendString:@" "];
          }

          [(__CFString *)v22 rangeOfString:@" "];
          v23 = v16;
          if (v24)
          {
            [v16 appendString:@""];
            [v16 appendString:v22];
            v23 = v16;
            v25 = @"";
          }

          else
          {
            v25 = v22;
          }

          [v23 appendString:v25];
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v19);
    }

    self = selfCopy;
    [(FudPluginDelegate *)selfCopy->super._delegate log:7 format:@"Bless Invocation string: %@", v16];

    v10 = v28;
    firmwareCopy = v29;
  }

  if (progressCopy)
  {
    progressCopy[2](progressCopy, 100.0);
  }

  if (firmwareCopy)
  {
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"Info Dict: %@", v11];
    firmwareCopy[2](firmwareCopy, v11, 0);
  }

  return 0;
}

- (id)finishFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress
{
  firmwareCopy = firmware;
  hardwareCopy = hardware;
  progressCopy = progress;
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"-=-=-=-=-=-=-=-=-=-=- Completing Update Operation -=-=-=-=-=-=-=-=-=-=-=-=-=-=-"];
  if (self->super._updaterOperational)
  {
    v12 = hardwareCopy;
    if (progressCopy)
    {
      progressCopy[2](progressCopy, 50.0);
    }

    v13 = 0;
  }

  else
  {
    v14 = +[NSMutableDictionary dictionary];
    [v14 setObject:@"Update Aborted at start of finish" forKeyedSubscript:@"Notes"];
    v15 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13312 userInfo:v14];
    delegate = self->super._delegate;
    v12 = hardwareCopy;
    v17 = [hardwareCopy objectForKeyedSubscript:@"Hardware Device Class"];
    deviceSerialNumber = [(USBCThunderboltFirmwareUpdater *)self DeviceSerialNumber];
    [(FudPluginDelegate *)delegate log:1 format:@"%@ with S/N %@ - Update aborted", v17, deviceSerialNumber];

    v13 = v15;
    v19 = [(USBCFirmwareUpdater *)self ExitUpdateMode:0];
  }

  [(FudPluginDelegate *)self->super._delegate log:7 format:@"-=-=-=-=-=-=-=-=-=-=-= Completing Reset Operation -=-=-=-=-=-=-=-=-=-=-=-=-=-=-"];
  v20 = MGCopyAnswer();
  v46 = 0;
  if (([v20 containsString:@"arm"] & 1) == 0)
  {
    v42 = v20;
    v43 = v13;
    v44 = progressCopy;
    v45 = firmwareCopy;
    v21 = [NSMutableDictionary dictionaryWithCapacity:1];
    v22 = [(USBCFirmwareUpdater *)self BlessArgumentsWithRemoteReset:0];
    if (v22)
    {
      v23 = [NSString stringWithFormat:@"%u %u", self->super._rid, self->super._address];
      v24 = [NSNumber numberWithInt:500];
      v25 = [NSDictionary dictionaryWithObjectsAndKeys:v22, @"BlessArguments", v24, @"Priority", v23, @"UniqueID", 0, 0];

      [v21 setObject:v25 forKeyedSubscript:@"BlessSettings"];
    }

    v46 = v21;
    v26 = objc_alloc_init(NSMutableString);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v27 = v22;
    v28 = [v27 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v49;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v49 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v48 + 1) + 8 * i);
          if ([v26 length])
          {
            [v26 appendString:@" "];
          }

          [(__CFString *)v32 rangeOfString:@" "];
          v33 = v26;
          if (v34)
          {
            [v26 appendString:@""];
            [v26 appendString:v32];
            v33 = v26;
            v35 = @"";
          }

          else
          {
            v35 = v32;
          }

          [v33 appendString:v35];
        }

        v29 = [v27 countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v29);
    }

    [(FudPluginDelegate *)self->super._delegate log:7 format:@"Bless Invocation: %@", v26];
    firmwareCopy = v45;
    v13 = v43;
    progressCopy = v44;
    v20 = v42;
  }

  pdAccess = self->super._pdAccess;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10000FA7C;
  v47[3] = &unk_100024568;
  v47[4] = self;
  v37 = [(USBCPDAccess *)pdAccess ExitUpdateMode:v47 remoteReset:0];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"Past 'Gaid' calls"];
  if (progressCopy)
  {
    progressCopy[2](progressCopy, 100.0);
  }

  if (v13)
  {
    v38 = +[NSMutableDictionary dictionary];
    [v38 setObject:v13 forKeyedSubscript:@"Previous Error Response"];
    v39 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:10496 userInfo:v38];
  }

  else
  {
    v39 = 0;
  }

  v40 = self->super._delegate;
  if (firmwareCopy)
  {
    [(FudPluginDelegate *)v40 log:7 format:@"Info Dict: %@", v46];
    firmwareCopy[2](firmwareCopy, v46, v39);
  }

  else
  {
    [(FudPluginDelegate *)v40 log:7 format:@"No callback?"];
  }

  return v39;
}

- (id)DeviceSerialNumber
{
  v11[0] = 0;
  v3 = [(USBCPDAccess *)self->super._pdAccess DeviceInAlternateMode:v11];
  if (v3)
  {
    v4 = v3;
  }

  else if (v11[0])
  {
    v4 = 0;
  }

  else
  {
    v5 = +[NSMutableDictionary dictionary];
    [v5 setObject:@"Not in alternate mode" forKeyedSubscript:@"Notes"];
    v4 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:9472 userInfo:v5];
  }

  v6 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware S/N"];

  if (!v6)
  {
    v7 = [(USBCThunderboltFirmwareUpdater *)self RetrieveA115SerialNumber:v11];

    if (!v7)
    {
      v8 = [NSString stringWithUTF8String:v11];
      [(NSMutableDictionary *)self->super._hardwareProperties setObject:v8 forKeyedSubscript:@"Hardware S/N"];
    }
  }

  v9 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware S/N"];

  return v9;
}

- (id)DeviceVIDDID:(unsigned int *)d andDid:(unsigned int *)did andUid:(id *)uid
{
  memset(v29, 0, sizeof(v29));
  v27 = 32;
  if (!self->super._pdAccess)
  {
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"%s - _pdAccess: %@ / %@", "[USBCThunderboltFirmwareUpdater DeviceVIDDID:andDid:andUid:]", 0];
    if (!self->super._pdAccess)
    {
      goto LABEL_16;
    }
  }

  v9 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware VID"];
  if (v9 && (v10 = v9, [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware DID"], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    if (d)
    {
      v12 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware VID"];
      *d = [v12 unsignedLongValue];
    }

    if (did)
    {
      v13 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware DID"];
      *did = [v13 unsignedLongValue];
    }

    v14 = 0;
    if (!uid)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = [(USBCPDAccess *)self->super._pdAccess LocalIECSReadReg:v29 bufferLength:32 registerAddress:72 returnedBufferLength:&v27];
    if (v14)
    {
      if (!uid)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v22 = *(v29 + 1);
      v23 = *(v29 + 11);
      [(FudPluginDelegate *)self->super._delegate log:7 format:@"%s - Vendor: %04X, Product: %04X", "[USBCThunderboltFirmwareUpdater DeviceVIDDID:andDid:andUid:]", *(v29 + 1), *(v29 + 11)];
      v24 = [NSNumber numberWithUnsignedLong:v22];
      [(NSMutableDictionary *)self->super._hardwareProperties setObject:v24 forKeyedSubscript:@"Hardware VID"];

      v25 = [NSNumber numberWithUnsignedLong:v23];
      [(NSMutableDictionary *)self->super._hardwareProperties setObject:v25 forKeyedSubscript:@"Hardware DID"];

      if (d)
      {
        *d = v22;
      }

      v14 = 0;
      if (did)
      {
        *did = v23;
      }

      if (!uid)
      {
LABEL_15:
        if (!v14)
        {
LABEL_16:
          v17 = 0;
          goto LABEL_21;
        }

        goto LABEL_19;
      }
    }
  }

  v15 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware UID"];

  if (v15)
  {
    v16 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware UID"];
    *uid = [v16 copy];

    goto LABEL_15;
  }

  v27 = 16;
  v18 = [(USBCPDAccess *)self->super._pdAccess RemoteIECSReadReg:v28 bufferLength:16 registerAddress:5 returnedBufferLength:&v27];

  delegate = self->super._delegate;
  if (!v18)
  {
    [(FudPluginDelegate *)delegate log:7 format:@"%s - UUID: %02X%02X%02X%02X-%02X%02X-%02X%02X-%02X%02X%02X%02X%02X%02X%02X%02X", "[USBCThunderboltFirmwareUpdater DeviceVIDDID:andDid:andUid:]", v28[0], v28[1], v28[2], v28[3], v28[4], v28[5], v28[6], v28[7], v28[8], v28[9], v28[10], v28[11], v28[12], v28[13], v28[14], v28[15]];
    v26 = [[NSData alloc] initWithBytes:v28 length:16];
    *uid = v26;
    v20 = [v26 copy];
    [(NSMutableDictionary *)self->super._hardwareProperties setObject:v20 forKeyedSubscript:@"Hardware UID"];
    v17 = 0;
    goto LABEL_20;
  }

  [(FudPluginDelegate *)delegate log:7 format:@"%s - RemoteIECSReadReg UUID gave: %@", "[USBCThunderboltFirmwareUpdater DeviceVIDDID:andDid:andUid:]", v18];
  v14 = v18;
LABEL_19:
  v20 = +[NSMutableDictionary dictionary];
  [v20 setObject:v14 forKeyedSubscript:@"Previous Error Response"];
  v17 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:9988 userInfo:v20];

LABEL_20:
LABEL_21:

  return v17;
}

- (id)applyFirmware:(id)firmware hardware:(id)hardware firmware:(id)a5 progress:(id)progress
{
  firmwareCopy = firmware;
  hardwareCopy = hardware;
  v11 = a5;
  progressCopy = progress;
  memset(v238, 0, sizeof(v238));
  v237 = 4;
  v12 = [v11 objectForKeyedSubscript:@"Firmware Asset Is Secure"];
  v13 = [v11 objectForKeyedSubscript:@"Firmware Asset File"];
  v233 = [v11 objectForKeyedSubscript:@"Firmware Asset Payload"];
  v232 = [v11 objectForKeyedSubscript:@"Firmware Asset Signature"];
  deviceSerialNumber = &FUDUpdaterErrorDomain;
  v15 = &OBJC_IVAR___USBCFirmwareUpdater__delegate;
  v230 = v12;
  v231 = firmwareCopy;
  v229 = v13;
  if (!v13)
  {
    v35 = +[NSMutableDictionary dictionary];
    [v35 setObject:@"Firmware file was missing" forKeyedSubscript:@"Notes"];
    0x64570000u = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:10496 userInfo:v35];

    goto LABEL_9;
  }

  bOOLValue = [v12 BOOLValue];
  if (!self->super._updaterOperational)
  {
    v30 = +[NSMutableDictionary dictionary];
    [v30 setObject:@"Update Aborted before it began" forKeyedSubscript:@"Notes"];
    0x64570000u = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13312 userInfo:v30];
    delegate = self->super._delegate;
    v43 = [sub_10000FB50(0x64570000u v37];
    deviceSerialNumber = [(USBCThunderboltFirmwareUpdater *)self DeviceSerialNumber];
    [(FudPluginDelegate *)delegate log:1 format:@"%@ with S/N %@ - Update aborted", v43, deviceSerialNumber];

LABEL_11:
    v44 = [(USBCFirmwareUpdater *)self ExitUpdateMode:0];
    goto LABEL_12;
  }

  HIDWORD(v221) = bOOLValue;
  v23 = self->super._delegate;
  [sub_10000FB50(bOOLValue v17];
  objc_claimAutoreleasedReturnValue();
  [sub_10000FB14() DeviceSerialNumber];
  objc_claimAutoreleasedReturnValue();
  sub_10000FB38();
  sub_10000FB20();

  [(FudPluginDelegate *)self->super._delegate log:7 format:@"-=-=-=-=-=-=-=-=-=-=-=-= Initiating Update Mode -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"Enabling lock (does nothing)"];
  v24 = [(USBCPDAccess *)self->super._pdAccess EnterUpdateMode:0];
  if (v24 || (-[FudPluginDelegate log:format:](self->super._delegate, "log:format:", 7, @"-=-=-=-=-=-=-=-= Sending Firmware Update Start Command =-=-=-=-=-=-=-=-=-=-=-=-"), v25 = sub_10000FB44(), [v25 RemoteExecuteCommand:v26 | 0x69570000u], (v24 = objc_claimAutoreleasedReturnValue()) != 0) || (v237 = 4, objc_msgSend(sub_10000FAE0(), "RemoteIECSReadReg:bufferLength:registerAddress:returnedBufferLength:"), (v24 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    0x64570000u = v24;
    goto LABEL_13;
  }

  v27 = self->super._delegate;
  if (LOBYTE(v238[0]))
  {
    [(FudPluginDelegate *)v27 log:7 format:@"******** ERROR: Firmware update failed to initiate"];
    v28 = self->super._delegate;
    sub_10000FAC4();
    [v29 log:7 format:@"    SFWi Command returned: %02X%02X%02X%02X"];
    v30 = +[NSMutableDictionary dictionary];
    v31 = [NSNumber numberWithUnsignedLong:LOBYTE(v238[0])];
    [v30 setObject:v31 forKeyedSubscript:@"IOReturn result"];

    sub_10000FAC4();
    v33 = [v32 stringWithFormat:@"SFWi Command returned: %02X%02X%02X%02X"];
    [v30 setObject:v33 forKeyedSubscript:@"Notes"];

    0x64570000u = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:10752 userInfo:v30];
LABEL_12:

    goto LABEL_13;
  }

  [(FudPluginDelegate *)v27 log:7 format:@"Flash process successfully initiated..."];
  deviceSerialNumber = BYTE2(v238[0]) & ((BYTE2(v238[0]) & 6) != 0);
  v49 = @"NO";
  if ((BYTE2(v238[0]) & ((BYTE2(v238[0]) & 6) != 0)) != 0)
  {
    v50 = @"YES";
  }

  else
  {
    v50 = @"NO";
  }

  [(FudPluginDelegate *)self->super._delegate log:7 format:@"    deviceIsSecureUpdateCapable: %@\n", v50];
  v51 = [v232 length] != 0;
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"    extendedResultCode32: 0x%08X\n", LODWORD(v238[0])];
  if ((v238[0] & 0x30000) != 0)
  {
    v52 = @"YES";
  }

  else
  {
    v52 = @"NO";
  }

  [(FudPluginDelegate *)self->super._delegate log:7 format:@"    legacy deviceIsSecureUpdateCapable: %@\n", v52];
  v53 = ((v238[0] & 0x30000) == 0) ^ deviceSerialNumber & v51;
  if ((deviceSerialNumber & v51) != 0)
  {
    v54 = @"YES";
  }

  else
  {
    v54 = @"NO";
  }

  [(FudPluginDelegate *)self->super._delegate log:7 format:@"    isSecureUpdate: %@\n", v54];
  if (v53)
  {
    v55 = @"YES";
  }

  else
  {
    v55 = @"NO";
  }

  [(FudPluginDelegate *)self->super._delegate log:7 format:@"    okayToUpdate: %@\n", v55];
  if ((v53 & 1) == 0)
  {
    v57 = +[NSMutableDictionary dictionary];
    [v57 setObject:@"NOT OK to update this device... aborting" forKeyedSubscript:@"Notes"];
    v58 = 10752;
    goto LABEL_39;
  }

  if (progressCopy)
  {
    v56 = 5.0;
    progressCopy[2](5.0);
  }

  else
  {
    v56 = 0.0;
  }

  v15 = hardwareCopy;
  v59 = [(FudPluginDelegate *)self->super._delegate log:7 format:@"-=-=-=-=-=-=-=-=-=-=-=- Sending Firmware Payload =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"];
  sub_10000FB08(v59, v60, v61, v62, v63, v64, v65, v66, v179, v184, v190, v194, v198, v202, v206, v210, v214, v218, v222, v226);
  if (v67 != 1)
  {
    v97 = +[NSMutableDictionary dictionary];
    v30 = v97;
    v98 = @"Update Aborted before payload xmit";
LABEL_74:
    [v97 setObject:v98 forKeyedSubscript:@"Notes"];
    0x64570000u = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13312 userInfo:v30];
    v99 = self->super._delegate;
    [v15 objectForKeyedSubscript:@"Hardware Device Class"];
    objc_claimAutoreleasedReturnValue();
    [sub_10000FB14() DeviceSerialNumber];
    objc_claimAutoreleasedReturnValue();
    sub_10000FB38();
    sub_10000FB20();

    goto LABEL_11;
  }

  HIDWORD(v215) = BYTE2(v238[0]) & ((BYTE2(v238[0]) & 6) != 0);
  deviceSerialNumber = 0;
  v219 = (progressCopy + 2);
  do
  {
    v49 = v233;
    v68 = [v233 length];
    if (v68 <= deviceSerialNumber)
    {
      sub_10000FB08(v68, v69, v70, v71, v72, v73, v74, v75, v180, v186, v191, v195, v199, v203, v207, v211, v215, v219, v223, v227);
      if ((v100 & 1) == 0)
      {
LABEL_82:
        v97 = +[NSMutableDictionary dictionary];
        v30 = v97;
        v98 = @"Update Aborted during payload xmit";
        goto LABEL_74;
      }

LABEL_80:
      [(FudPluginDelegate *)self->super._delegate log:7 format:@"******** ERROR: Data size did not match what the micro was expecting"];
      [(FudPluginDelegate *)self->super._delegate log:7 format:@"    SFWd_cmd Command returned: %02X%02X%02X%02X %02X%02X%02X%02X", LOBYTE(v238[0]), BYTE1(v238[0]), BYTE2(v238[0]), BYTE3(v238[0]), BYTE4(v238[0]), BYTE5(v238[0]), BYTE6(v238[0]), BYTE7(v238[0])];
      v101 = +[NSMutableDictionary dictionary];
      deviceSerialNumber = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Data size did not match what the micro was expecting.  Sent = 0x%X.  Expected = 0x%lX", deviceSerialNumber, [v233 length]);
      [v101 setObject:deviceSerialNumber forKeyedSubscript:@"Notes"];

      v103 = 11009;
LABEL_81:
      0x64570000u = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:v103 userInfo:v101];

      goto LABEL_13;
    }

    if ([v233 length] - deviceSerialNumber <= 0x40)
    {
      v76 = [v233 length] - deviceSerialNumber;
    }

    else
    {
      v76 = 64;
    }

    [v233 getBytes:v238 range:{deviceSerialNumber, v76}];
    0x64570000u = 0;
    v77 = -3;
    while (1)
    {
      v78 = [(USBCPDAccess *)self->super._pdAccess RemoteIECSWriteReg:v238 bufferLength:v76 registerAddress:9];

      if (!v78)
      {
        break;
      }

      0x64570000u = [sub_10000FAF8() DeviceInAlternateMode:?];

      if (!0x64570000u && (v236 & 1) == 0)
      {
LABEL_127:
        0x64570000u = 0;
        goto LABEL_9;
      }

      v87 = __CFADD__(v77++, 1);
      if (v87)
      {
LABEL_61:
        v15 = hardwareCopy;
        if (0x64570000u)
        {
          goto LABEL_13;
        }

        v49 = 1;
        goto LABEL_63;
      }
    }

    v88 = sub_10000FB44();
    0x64570000u = [v88 RemoteExecuteCommand:v89 | 0x64570000u];
    if (0x64570000u)
    {
      goto LABEL_9;
    }

    v90 = -3;
    while (1)
    {
      v237 = 4;
      v91 = [sub_10000FAE0() RemoteIECSReadReg:? bufferLength:? registerAddress:? returnedBufferLength:?];

      if (!v91)
      {
        break;
      }

      0x64570000u = [sub_10000FAF8() DeviceInAlternateMode:?];

      if (!0x64570000u && (v236 & 1) == 0)
      {
        goto LABEL_127;
      }

      v87 = __CFADD__(v90++, 1);
      if (v87)
      {
        goto LABEL_61;
      }
    }

    v49 = SLOBYTE(v238[0]) < 0;
    if ((v238[0] & 0xF) != 0)
    {
      v93 = SLOBYTE(v238[0]);
      [(FudPluginDelegate *)self->super._delegate log:7 format:@"******** ERROR: Firmware upload failed"];
      v94 = self->super._delegate;
      sub_10000FAC4();
      [v95 log:7 format:@"    SFWd_cmd Command returned: %02X%02X%02X%02X"];
      v96 = @"NO";
      if (v93 < 0)
      {
        v96 = @"YES";
      }

      v79 = [(FudPluginDelegate *)self->super._delegate log:7 format:@"    - isMoreDataExpected: %@", v96];
      v15 = hardwareCopy;
      if ((v238[0] & 0xF) != 0)
      {
        v101 = +[NSMutableDictionary dictionary];
        sub_10000FAC4();
        deviceSerialNumber = [v102 stringWithFormat:@"SFWd_cmd Command returned: %02X%02X%02X%02X"];
        [v101 setObject:deviceSerialNumber forKeyedSubscript:@"Notes"];

        v103 = 11008;
        goto LABEL_81;
      }
    }

    else
    {
      v15 = hardwareCopy;
    }

LABEL_63:
    if (progressCopy)
    {
      v56 = v56 + v76 * 100.0 / [v233 length] * 0.9;
      v79 = (progressCopy[2])(progressCopy, v56);
    }

    deviceSerialNumber = (v76 + deviceSerialNumber);
    sub_10000FB08(v79, v80, v81, v82, v83, v84, v85, v86, v180, v186, v191, v195, v199, v203, v207, v211, v215, v219, v223, v227);
  }

  while ((v49 & v92 & 1) != 0);
  if ((v92 & 1) == 0)
  {
    goto LABEL_82;
  }

  if ((v49 & 1) != 0 || [v233 length] > deviceSerialNumber)
  {
    goto LABEL_80;
  }

  v49 = self->super._delegate;
  v181 = [v233 length];
  v187 = [v233 length];
  [v49 log:7 format:@"Firmware data length was: %lu bytes (0x%lX)"];
  if (progressCopy)
  {
    v56 = 95.0;
    progressCopy[2](95.0);
  }

  usleep(0xC350u);
  if ((HIDWORD(v223) & HIDWORD(v215)) != 1 || ![v232 length])
  {
    v144 = [(FudPluginDelegate *)self->super._delegate log:7 format:@"-=-=-=-=-=-=-=-=-=-=- Completing Update Operation -=-=-=-=-=-=-=-=-=-=-=-=-=-=-"];
    sub_10000FB08(v144, v145, v146, v147, v148, v149, v150, v151, v181, v187, v191, v195, v199, v203, v207, v211, v215, v219, v223, v227);
    if ((v152 & 1) == 0)
    {
      v97 = +[NSMutableDictionary dictionary];
      v30 = v97;
      v98 = @"Update Aborted before update complete call";
      goto LABEL_74;
    }

    v153 = sub_10000FB44();
    0x75570000u = [v153 RemoteExecuteCommand:v154 | 0x75570000u];
    if (0x75570000u)
    {
LABEL_143:
      0x64570000u = 0x75570000u;
      goto LABEL_9;
    }

    v113 = 0;
    v155 = -3;
    deviceSerialNumber = 4;
    while (1)
    {
      v237 = 4;
      v49 = [sub_10000FAE0() RemoteIECSReadReg:? bufferLength:? registerAddress:? returnedBufferLength:?];

      if (!v49)
      {
        break;
      }

      v236 = 1;
      v113 = [(USBCPDAccess *)self->super._pdAccess DeviceInAlternateMode:&v236];

      if (!v113 && (v236 & 1) == 0)
      {
        goto LABEL_127;
      }

      v87 = __CFADD__(v155++, 1);
      if (v87)
      {
        goto LABEL_134;
      }
    }

    if ((v238[0] & 0xF) == 0)
    {
      v113 = 0;
LABEL_134:
      v169 = self->super._delegate;
      [sub_10000FB50(v137 v138];
      objc_claimAutoreleasedReturnValue();
      [sub_10000FB14() DeviceSerialNumber];
      objc_claimAutoreleasedReturnValue();
      sub_10000FB38();
      sub_10000FB20();

      0x64570000u = v113;
      goto LABEL_13;
    }

    [(FudPluginDelegate *)self->super._delegate log:7 format:@"******** ERROR: Flash complete failed"];
    v166 = self->super._delegate;
    sub_10000FAC4();
    [v167 log:7 format:@"    SFWu_cmd returned: %02X%02X%02X%02X"];
    v57 = +[NSMutableDictionary dictionary];
    sub_10000FAC4();
    deviceSerialNumber = [v168 stringWithFormat:@"SFWu_cmd Command returned: %02X%02X%02X%02X"];
    [v57 setObject:deviceSerialNumber forKeyedSubscript:@"Notes"];

    v58 = 11776;
LABEL_39:
    0x64570000u = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:v58 userInfo:v57];

    goto LABEL_9;
  }

  v104 = [(FudPluginDelegate *)self->super._delegate log:7 format:@"-=-=-=-=-=-=-=-=-=-=-= Sending Signature Payload =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"];
  sub_10000FB08(v104, v105, v106, v107, v108, v109, v110, v111, v181, v187, v191, v195, v199, v203, v207, v211, v215, v219, v223, v227);
  if (v112 != 1)
  {
    v113 = 0;
    goto LABEL_130;
  }

  v113 = 0;
  deviceSerialNumber = 0;
  while (2)
  {
    v15 = v232;
    v114 = [v232 length];
    if (v114 <= deviceSerialNumber)
    {
      sub_10000FB08(v114, v115, v116, v117, v118, v119, v120, v121, v182, v188, v192, v196, v200, v204, v208, v212, v216, v220, v224, v228);
      if (v170)
      {
        goto LABEL_136;
      }

LABEL_130:
      v156 = +[NSMutableDictionary dictionary];
      [v156 setObject:@"Update Aborted during signature xmit" forKeyedSubscript:@"Notes"];
      0x64570000u = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13312 userInfo:v156];

      v157 = self->super._delegate;
      [sub_10000FB50(v158 v159];
      objc_claimAutoreleasedReturnValue();
      [sub_10000FB14() DeviceSerialNumber];
      objc_claimAutoreleasedReturnValue();
      sub_10000FB38();
      sub_10000FB20();

      v165 = [(USBCFirmwareUpdater *)self ExitUpdateMode:0];
      goto LABEL_13;
    }

    if ([v232 length] - deviceSerialNumber <= 0x40)
    {
      v122 = [v232 length] - deviceSerialNumber;
    }

    else
    {
      v122 = 64;
    }

    [v232 getBytes:v238 range:{deviceSerialNumber, v122}];
    v123 = -3;
    while (1)
    {
      v49 = [(USBCPDAccess *)self->super._pdAccess RemoteIECSWriteReg:v238 bufferLength:v122 registerAddress:9];

      if (!v49)
      {
        break;
      }

      v113 = [sub_10000FAF8() DeviceInAlternateMode:?];

      if (!v113 && (v236 & 1) == 0)
      {
        goto LABEL_127;
      }

      v87 = __CFADD__(v123++, 1);
      if (v87)
      {
        v15 = 1;
        goto LABEL_111;
      }
    }

    HIDWORD(v224) = v122;
    v132 = sub_10000FB44();
    0x75570000u = [v132 RemoteExecuteCommand:v133 | 0x73570000u];
    if (0x75570000u)
    {
      goto LABEL_143;
    }

    v113 = 0;
    v135 = -3;
    while (1)
    {
      v237 = 4;
      v49 = [sub_10000FAE0() RemoteIECSReadReg:? bufferLength:? registerAddress:? returnedBufferLength:?];

      if (!v49)
      {
        break;
      }

      v113 = [sub_10000FAF8() DeviceInAlternateMode:?];

      if (!v113 && (v236 & 1) == 0)
      {
        goto LABEL_127;
      }

      v87 = __CFADD__(v135++, 1);
      if (v87)
      {
        goto LABEL_110;
      }
    }

    v113 = 0;
LABEL_110:
    v15 = SLOBYTE(v238[0]) < 0;
    if ((v238[0] & 0xF) != 0)
    {
      [(FudPluginDelegate *)self->super._delegate log:7 format:@"******** ERROR: Signature upload failed"];
      v173 = self->super._delegate;
      sub_10000FAC4();
      [v174 log:7 format:@"    SFWs_cmd Command returned: %02X%02X%02X%02X"];
      v175 = +[NSMutableDictionary dictionary];
      v172 = v175;
      if (v113)
      {
        [v175 setObject:v113 forKeyedSubscript:@"Previous Error Response"];
      }

      sub_10000FAC4();
      [v176 stringWithFormat:@"SFWs_cmd Command returned: %02X%02X%02X%02X", v182, v188];
      goto LABEL_142;
    }

LABEL_111:
    if (progressCopy)
    {
      v56 = v56 + v122 * 100.0 / [v232 length] * 0.05;
      v124 = (progressCopy[2])(v56);
    }

    deviceSerialNumber = (v122 + deviceSerialNumber);
    sub_10000FB08(v124, v125, v126, v127, v128, v129, v130, v131, v182, v188, v192, v196, v200, v204, v208, v212, v216, v220, v224, v228);
    if (v15 & v136)
    {
      continue;
    }

    break;
  }

  if ((v136 & 1) == 0)
  {
    goto LABEL_130;
  }

  if ((v15 & 1) == 0)
  {
    v137 = [v232 length];
    if (v137 <= deviceSerialNumber)
    {
      goto LABEL_134;
    }
  }

LABEL_136:
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"******** ERROR: Signature size did not match what the micro was expecting"];
  v171 = +[NSMutableDictionary dictionary];
  v172 = v171;
  if (v113)
  {
    [v171 setObject:v113 forKeyedSubscript:@"Previous Error Response"];
  }

  +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Signature size did not match what the micro was expecting.  Sent = 0x%X.  Expected = 0x%lX", deviceSerialNumber, [v232 length]);
  v177 = LABEL_142:;
  [v172 setObject:v177 forKeyedSubscript:@"Notes"];

  0x64570000u = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:11264 userInfo:v172];

LABEL_9:
  v15 = hardwareCopy;
LABEL_13:
  if (progressCopy)
  {
    (progressCopy[2])(progressCopy, 100.0);
  }

  if (0x64570000u)
  {
    v45 = +[NSMutableDictionary dictionary];
    [v45 setObject:0x64570000u forKeyedSubscript:@"Previous Error Response"];
    v46 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:10496 userInfo:v45];

    v47 = self->super._delegate;
    [v15 objectForKeyedSubscript:@"Hardware Device Class"];
    objc_claimAutoreleasedReturnValue();
    deviceSerialNumber2 = [sub_10000FB14() DeviceSerialNumber];
    sub_10000FB20();
  }

  else
  {
    v46 = 0;
  }

  if (v231)
  {
    (v231)[2](v231, 0, v46);
  }

  return v46;
}

@end