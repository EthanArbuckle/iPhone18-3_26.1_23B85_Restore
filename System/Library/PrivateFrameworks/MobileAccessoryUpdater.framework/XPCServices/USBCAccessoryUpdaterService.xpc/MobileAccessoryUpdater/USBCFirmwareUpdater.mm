@interface USBCFirmwareUpdater
- (USBCFirmwareUpdater)initWithRegistryEntry:(unsigned int)a3;
- (id)BlessArgumentsWithRemoteReset:(BOOL)a3;
- (id)DeviceVIDDID:(unsigned int *)a3 andDid:(unsigned int *)a4 andUid:(id *)a5;
- (id)LocatePortMicroForSerialNumber:(id)a3;
- (id)applyFirmware:(id)a3 hardware:(id)a4 firmware:(id)a5 progress:(id)a6;
- (id)finishFirmware:(id)a3 hardware:(id)a4 firmware:(id)a5 progress:(id)a6;
- (id)prepareFirmware:(id)a3 hardware:(id)a4 firmware:(id)a5 progress:(id)a6;
- (id)validateFirmware:(id)a3 hardware:(id)a4 firmware:(id)a5 progress:(id)a6;
@end

@implementation USBCFirmwareUpdater

- (USBCFirmwareUpdater)initWithRegistryEntry:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = USBCFirmwareUpdater;
  result = [(USBCFirmwareUpdater *)&v5 init];
  if (result)
  {
    result->_registryEntry = a3;
  }

  return result;
}

- (id)LocatePortMicroForSerialNumber:(id)a3
{
  v38 = a3;
  v36 = +[AppleHPMUserClientManager sharedInstance];
  if (!v36)
  {
    [(FudPluginDelegate *)self->_delegate log:3 format:@"AppleHPM not found or you are running as a non-root user"];
    v27 = +[NSMutableDictionary dictionary];
    delegate = self->_delegate;
    v29 = @"Bad userClient Manager";
    v30 = 7;
LABEL_43:
    [(FudPluginDelegate *)delegate log:v30 format:v29];
    [v27 setObject:v29 forKeyedSubscript:@"Notes"];
    v7 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:9216 userInfo:v27];

    goto LABEL_44;
  }

  pdControllers = self->_pdControllers;
  if (!pdControllers)
  {
    v5 = +[PDController knownPDControllers];
    v6 = self->_pdControllers;
    self->_pdControllers = v5;

    pdControllers = self->_pdControllers;
    if (!pdControllers)
    {
      v27 = +[NSMutableDictionary dictionary];
      delegate = self->_delegate;
      v29 = @"No PD Controllers array";
      goto LABEL_42;
    }
  }

  if (![(NSArray *)pdControllers count])
  {
    v27 = +[NSMutableDictionary dictionary];
    delegate = self->_delegate;
    v29 = @"No PD Controllers present";
LABEL_42:
    v30 = 3;
    goto LABEL_43;
  }

  if (self->_pdController)
  {
    goto LABEL_46;
  }

  v7 = 0;
  v8 = 0;
  location = &self->_pdController;
  do
  {
    v37 = v8;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = self->_pdControllers;
    v9 = [(NSArray *)obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v47;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v47 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v46 + 1) + 8 * i);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v15 = off_1000242F0;
          if ((isKindOfClass & 1) == 0)
          {
            v15 = off_100024300;
          }

          v16 = [objc_alloc(*v15) initWithPDController:v13];
          pdAccess = self->_pdAccess;
          self->_pdAccess = v16;

          v45 = 0;
          v18 = self->_delegate;
          v19 = [v13 address];
          v20 = [v13 userClient];
          -[FudPluginDelegate log:format:](v18, "log:format:", 7, @"%s - Testing alternate mode for Port %u on RID %u...", "-[USBCFirmwareUpdater LocatePortMicroForSerialNumber:]", v19, [v20 routerID]);

          v21 = [(USBCPDAccess *)self->_pdAccess DeviceInAlternateMode:&v45];

          if (v21)
          {
            gEnableDetailLogging = 0;
            v7 = v21;
          }

          else if (v45 == 1)
          {
            v43 = 0;
            v44 = 0;
            [(FudPluginDelegate *)self->_delegate log:7 format:@"%s - Alternate mode ENABLED", "[USBCFirmwareUpdater LocatePortMicroForSerialNumber:]"];
            v7 = [(USBCFirmwareUpdater *)self DeviceVIDDID:&v44 andDid:&v43 andUid:0];
            [(FudPluginDelegate *)self->_delegate log:7 format:@"%s - DeviceVIDDID gave: %@ (vid = 0x%04X, did = 0x%04X)", "[USBCFirmwareUpdater LocatePortMicroForSerialNumber:]", v7, v44, v43];
            if (!v7)
            {
              parent = 0;
              for (j = self->_registryEntry; !IORegistryEntryGetParentEntry(j, "IOService", &parent); j = parent)
              {
                if (IOObjectConformsTo(parent, "IOThunderboltSwitchType3"))
                {
                  v41 = 9999;
                  if (![IOKitUtilities uint32ForRegistryEntry:parent andKey:@"Depth" outValue:&v41])
                  {
                    if (v41)
                    {
                      v23 = +[NSMutableDictionary dictionary];
                      [v23 setObject:@"Depth != 0 - not direct attached" forKeyedSubscript:@"Notes"];
                      v7 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:8960 userInfo:v23];

                      if (v7)
                      {
                        goto LABEL_31;
                      }
                    }

                    break;
                  }
                }
              }

              v24 = [(USBCFirmwareUpdater *)self DeviceSerialNumber:0];
              v25 = v24;
              if (!v24 || [v24 compare:v38])
              {
                [(FudPluginDelegate *)self->_delegate log:7 format:@"%s - Validating pdAccess.... S/N DID NOT Match.  (%@ vs. %@)", "[USBCFirmwareUpdater LocatePortMicroForSerialNumber:]", v25, v38];
                [(NSMutableDictionary *)self->_hardwareProperties setObject:0 forKeyedSubscript:@"Hardware S/N"];

                goto LABEL_28;
              }

              [(FudPluginDelegate *)self->_delegate log:7 format:@"%s - Validating pdAccess.... S/N Matched", "[USBCFirmwareUpdater LocatePortMicroForSerialNumber:]"];
              objc_storeStrong(location, v13);

              v7 = 0;
              goto LABEL_35;
            }
          }

          else
          {
LABEL_28:
            if (!*location)
            {
              [(FudPluginDelegate *)self->_delegate log:7 format:@"%s - Validating pdAccess.... _pdController was left as NULL - trying next interface", "[USBCFirmwareUpdater LocatePortMicroForSerialNumber:]"];
              v26 = self->_pdAccess;
              self->_pdAccess = 0;
            }

            v7 = 0;
          }

LABEL_31:
        }

        v10 = [(NSArray *)obj countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_35:

    if (*location)
    {
      break;
    }

    [(FudPluginDelegate *)self->_delegate log:7 format:@"%s - Found no valid/connected H/W.  Pausing briefly and retrying", "[USBCFirmwareUpdater LocatePortMicroForSerialNumber:]"];
    usleep(0xF4240u);
    if (self->_pdController)
    {
      break;
    }

    v8 = v37 + 1;
  }

  while (v37 < 4);
LABEL_44:
  if (v7)
  {
    v31 = +[NSMutableDictionary dictionary];
    [v31 setObject:v7 forKeyedSubscript:@"Previous Error Response"];
    v32 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:9216 userInfo:v31];

    v33 = v38;
    v34 = v36;
    goto LABEL_49;
  }

LABEL_46:
  v34 = v36;
  if (self->_pdAccess)
  {
    v32 = 0;
    v33 = v38;
    goto LABEL_50;
  }

  v31 = +[NSMutableDictionary dictionary];
  [v31 setObject:@"No valid PD Controller" forKeyedSubscript:@"Notes"];
  v32 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:9216 userInfo:v31];
  v33 = v38;
LABEL_49:

LABEL_50:

  return v32;
}

- (id)validateFirmware:(id)a3 hardware:(id)a4 firmware:(id)a5 progress:(id)a6
{
  [(USBCFirmwareUpdater *)self doesNotRecognizeSelector:a2, a4, a5, a6];
  delegate = self->_delegate;
  v9 = NSStringFromSelector(a2);
  [(FudPluginDelegate *)delegate log:7 format:@"%s - doesNotRecognizeSelector = %@", "[USBCFirmwareUpdater validateFirmware:hardware:firmware:progress:]", v9];

  v10 = NSStringFromSelector(a2);
  v11 = [NSString stringWithFormat:@"Unimplemented Selector: %@", v10];
  [0 setObject:v11 forKeyedSubscript:@"Notes"];

  v12 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13824 userInfo:0];
  [(FudPluginDelegate *)self->_delegate didFinish:0 info:0 error:v12];
  [(FudPluginDelegate *)self->_delegate progress:100.0];

  return v12;
}

- (id)prepareFirmware:(id)a3 hardware:(id)a4 firmware:(id)a5 progress:(id)a6
{
  [(USBCFirmwareUpdater *)self doesNotRecognizeSelector:a2, a4, a5, a6];
  delegate = self->_delegate;
  v9 = NSStringFromSelector(a2);
  [(FudPluginDelegate *)delegate log:7 format:@"%s - doesNotRecognizeSelector = %@", "[USBCFirmwareUpdater prepareFirmware:hardware:firmware:progress:]", v9];

  v10 = NSStringFromSelector(a2);
  v11 = [NSString stringWithFormat:@"Unimplemented Selector: %@", v10];
  [0 setObject:v11 forKeyedSubscript:@"Notes"];

  v12 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13824 userInfo:0];
  [(FudPluginDelegate *)self->_delegate didFinish:0 info:0 error:v12];
  [(FudPluginDelegate *)self->_delegate progress:100.0];

  return v12;
}

- (id)applyFirmware:(id)a3 hardware:(id)a4 firmware:(id)a5 progress:(id)a6
{
  [(USBCFirmwareUpdater *)self doesNotRecognizeSelector:a2, a4, a5, a6];
  delegate = self->_delegate;
  v9 = NSStringFromSelector(a2);
  [(FudPluginDelegate *)delegate log:7 format:@"%s - doesNotRecognizeSelector = %@", "[USBCFirmwareUpdater applyFirmware:hardware:firmware:progress:]", v9];

  v10 = NSStringFromSelector(a2);
  v11 = [NSString stringWithFormat:@"Unimplemented Selector: %@", v10];
  [0 setObject:v11 forKeyedSubscript:@"Notes"];

  v12 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13824 userInfo:0];
  [(FudPluginDelegate *)self->_delegate didFinish:0 info:0 error:v12];
  [(FudPluginDelegate *)self->_delegate progress:100.0];

  return v12;
}

- (id)finishFirmware:(id)a3 hardware:(id)a4 firmware:(id)a5 progress:(id)a6
{
  [(USBCFirmwareUpdater *)self doesNotRecognizeSelector:a2, a4, a5, a6];
  delegate = self->_delegate;
  v9 = NSStringFromSelector(a2);
  [(FudPluginDelegate *)delegate log:7 format:@"%s - doesNotRecognizeSelector = %@", "[USBCFirmwareUpdater finishFirmware:hardware:firmware:progress:]", v9];

  v10 = NSStringFromSelector(a2);
  v11 = [NSString stringWithFormat:@"Unimplemented Selector: %@", v10];
  [0 setObject:v11 forKeyedSubscript:@"Notes"];

  v12 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13824 userInfo:0];
  [(FudPluginDelegate *)self->_delegate didFinish:0 info:0 error:v12];
  [(FudPluginDelegate *)self->_delegate progress:100.0];

  return v12;
}

- (id)BlessArgumentsWithRemoteReset:(BOOL)a3
{
  v3 = a3;
  v5 = [NSMutableArray arrayWithCapacity:16];
  v6 = [NSMutableString alloc];
  v7 = [(NSMutableDictionary *)self->_firmwareAssetProperties objectForKeyedSubscript:@"Firmware Asset Path"];
  v8 = [v6 initWithString:v7];

  v9 = [(NSArray *)self->_pdControllers count];
  v10 = +[NSFileManager defaultManager];
  v11 = [NSString stringWithFormat:@"%@/%@", @"/usr/standalone/firmware/FUD/USBCAccessoryFirmwareUpdater", @"HPMUtil.efi"];
  v25 = v11;
  v26 = v10;
  if ([v10 fileExistsAtPath:v11])
  {
    [(FudPluginDelegate *)self->_delegate log:7 format:@"%s - EFI tools found in modern location.  Using that one: %@", "[USBCFirmwareUpdater BlessArgumentsWithRemoteReset:]", v11, v11, v10];
    v12 = [v11 mutableCopy];

    v8 = v12;
  }

  else
  {
    [v8 appendString:@"/"];
    [v8 appendString:@"HPMUtil.efi"];
  }

  [(FudPluginDelegate *)self->_delegate log:7 format:@"%s - flasher_filenameWithPath = %@", "[USBCFirmwareUpdater BlessArgumentsWithRemoteReset:]", v8];
  [v5 addObject:@"/usr/sbin/bless"];
  [v5 addObject:@"-verbose"];
  [v5 addObject:@"--nextonly"];
  [v5 addObject:@"-mount"];
  [v5 addObject:@"/"];
  [v5 addObject:@"-firmware"];
  [v5 addObject:v8];
  [v5 addObject:@"-options"];
  v13 = [NSMutableArray arrayWithCapacity:16];
  [v13 addObject:@"-g"];
  [v13 addObject:@"-os"];
  [v13 addObject:@"-o"];
  [v13 addObject:@"g"];
  [v13 addObject:@"-w1"];
  [v13 addObject:@"0x4"];
  if (v3)
  {
    [v13 addObject:@"-remote"];
  }

  if (v9 >= 2)
  {
    [v13 addObject:@"-sr"];
    v14 = [NSString stringWithFormat:@"%u", self->_rid];
    [v13 addObject:v14];

    v15 = [NSString stringWithFormat:@"%llu", self->_route];
    [v13 addObject:v15];

    [v13 addObject:@"-pps"];
    v16 = [NSString stringWithFormat:@"%u", self->_address];
    [v13 addObject:v16];
  }

  [v13 addObject:@"-noreset"];
  v17 = objc_alloc_init(NSMutableString);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = v13;
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v27 + 1) + 8 * i);
        if ([v17 length])
        {
          [v17 appendString:@" "];
        }

        [v17 appendString:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v20);
  }

  [v5 addObject:v17];
  [(FudPluginDelegate *)self->_delegate log:1 format:@"%s - bless call requested", "[USBCFirmwareUpdater BlessArgumentsWithRemoteReset:]"];

  return v5;
}

- (id)DeviceVIDDID:(unsigned int *)a3 andDid:(unsigned int *)a4 andUid:(id *)a5
{
  v25 = 4;
  [(FudPluginDelegate *)self->_delegate log:7 format:@"%s - _pdAccess: %@ ", "[USBCFirmwareUpdater DeviceVIDDID:andDid:andUid:]", self->_pdAccess];
  if (!self->_pdAccess)
  {
    goto LABEL_13;
  }

  if (!a3)
  {
    goto LABEL_6;
  }

  v9 = [(NSMutableDictionary *)self->_hardwareProperties objectForKeyedSubscript:@"Hardware VID"];

  if (v9)
  {
    v10 = [(NSMutableDictionary *)self->_hardwareProperties objectForKeyedSubscript:@"Hardware VID"];
    *a3 = [v10 unsignedLongValue];
  }

  if (!*a3)
  {
    v16 = [sub_100002294() IECSReadReg:? buffer:? bufferLength:? registerAddress:? returnedBufferLength:? canRetry:? canRecover:?];
    delegate = self->_delegate;
    if (v16)
    {
      [(FudPluginDelegate *)delegate log:7 format:@"%s - RemoteIECSReadReg VID gave: %@", "[USBCFirmwareUpdater DeviceVIDDID:andDid:andUid:]", v16];
      goto LABEL_20;
    }

    [(FudPluginDelegate *)delegate log:7 format:@"%s - VID: %08X", "[USBCFirmwareUpdater DeviceVIDDID:andDid:andUid:]", *a3];
    v21 = [NSNumber numberWithUnsignedLong:*a3];
    [(NSMutableDictionary *)self->_hardwareProperties setObject:v21 forKeyedSubscript:@"Hardware VID"];

    if (!a4)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_6:
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  v11 = [(NSMutableDictionary *)self->_hardwareProperties objectForKeyedSubscript:@"Hardware DID"];

  if (v11)
  {
    v12 = [(NSMutableDictionary *)self->_hardwareProperties objectForKeyedSubscript:@"Hardware DID"];
    *a4 = [v12 unsignedLongValue];
  }

  if (!*a4)
  {
    v16 = [sub_100002294() IECSReadReg:? buffer:? bufferLength:? registerAddress:? returnedBufferLength:? canRetry:? canRecover:?];
    v18 = self->_delegate;
    if (!v16)
    {
      [(FudPluginDelegate *)v18 log:7 format:@"%s - DID: %08X", "[USBCFirmwareUpdater DeviceVIDDID:andDid:andUid:]", *a4];
      v22 = [NSNumber numberWithUnsignedLong:*a4];
      [(NSMutableDictionary *)self->_hardwareProperties setObject:v22 forKeyedSubscript:@"Hardware DID"];

      goto LABEL_10;
    }

    [(FudPluginDelegate *)v18 log:7 format:@"%s - RemoteIECSReadReg DID gave: %@", "[USBCFirmwareUpdater DeviceVIDDID:andDid:andUid:]", v16];
LABEL_20:
    [(FudPluginDelegate *)self->_delegate log:7 format:@"%s - returnValue: %@", "[USBCFirmwareUpdater DeviceVIDDID:andDid:andUid:]", v16];
    v14 = +[NSMutableDictionary dictionary];
    [v14 setObject:v16 forKeyedSubscript:@"Previous Error Response"];
    v15 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:9988 userInfo:v14];

    goto LABEL_21;
  }

LABEL_10:
  if (!a5)
  {
LABEL_13:
    v15 = 0;
    goto LABEL_22;
  }

  v13 = [(NSMutableDictionary *)self->_hardwareProperties objectForKeyedSubscript:@"Hardware UID"];

  if (!v13)
  {
    v25 = 16;
    LOBYTE(v24) = 0;
    v16 = [(USBCPDAccess *)self->_pdAccess IECSReadReg:0 buffer:v26 bufferLength:16 registerAddress:5 returnedBufferLength:&v25 canRetry:0 canRecover:v24];
    v19 = self->_delegate;
    if (!v16)
    {
      [(FudPluginDelegate *)v19 log:7 format:@"%s - UUID: %02X%02X%02X%02X-%02X%02X-%02X%02X-%02X%02X%02X%02X%02X%02X%02X%02X", "[USBCFirmwareUpdater DeviceVIDDID:andDid:andUid:]", v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9], v26[10], v26[11], v26[12], v26[13], v26[14], v26[15]];
      v23 = [[NSData alloc] initWithBytes:v26 length:16];
      *a5 = v23;
      v14 = [v23 copy];
      [(NSMutableDictionary *)self->_hardwareProperties setObject:v14 forKeyedSubscript:@"Hardware UID"];
      v15 = 0;
      goto LABEL_21;
    }

    [(FudPluginDelegate *)v19 log:7 format:@"%s - RemoteIECSReadReg UUID gave: %@", "[USBCFirmwareUpdater DeviceVIDDID:andDid:andUid:]", v16];
    goto LABEL_20;
  }

  v14 = [(NSMutableDictionary *)self->_hardwareProperties objectForKeyedSubscript:@"Hardware UID"];
  v15 = 0;
  *a5 = [v14 copy];
LABEL_21:

LABEL_22:

  return v15;
}

@end