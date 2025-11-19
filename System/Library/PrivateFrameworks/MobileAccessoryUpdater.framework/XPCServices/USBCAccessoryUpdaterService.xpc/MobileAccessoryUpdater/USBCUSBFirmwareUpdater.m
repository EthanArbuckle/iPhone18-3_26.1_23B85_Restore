@interface USBCUSBFirmwareUpdater
- (id)DeviceAlternateFirmwareVersionString;
- (id)DeviceFirmwareVersionString;
- (id)DeviceSerialNumber:(BOOL)a3;
- (id)EnterUpdateMode;
- (id)RetrieveA11xQApp:(id *)a3;
- (id)RetrieveA11xSerialNumber:(char *)a3;
- (id)applyFirmware:(id)a3 hardware:(id)a4 firmware:(id)a5 progress:(id)a6;
- (id)finishFirmware:(id)a3 hardware:(id)a4 firmware:(id)a5 progress:(id)a6;
- (id)prepareFirmware:(id)a3 hardware:(id)a4 firmware:(id)a5 progress:(id)a6;
- (id)validateDevice:(id)a3 withFirmware:(id)a4;
- (id)validateFirmware:(id)a3 hardware:(id)a4 firmware:(id)a5 progress:(id)a6;
- (id)validateUSBCBillboard;
- (unsigned)DeviceAlternateFirmwareVersion;
- (unsigned)DeviceFirmwareVersion;
- (unsigned)FirmwareFileVersion:(id)a3;
- (unsigned)FirmwareFileVersion:(id)a3 firmware:(id *)a4 isSecure:(BOOL *)a5 andSignature:(id *)a6 withPartition:(unsigned int)a7;
- (void)setPreferredFirmwarePartition:(BOOL)a3;
@end

@implementation USBCUSBFirmwareUpdater

- (id)RetrieveA11xSerialNumber:(char *)a3
{
  memset(v8, 0, 46);
  v6 = 46;
  v4 = [(USBCPDAccess *)self->super._pdAccess RemoteIECSReadReg:v8 bufferLength:46 registerAddress:23 returnedBufferLength:&v6];
  if (v4)
  {
    sub_10001331C(v4, &v7);
    v4 = v7;
  }

  else
  {
    *a3 = *(&v8[1] + 12);
    *(a3 + 8) = WORD6(v8[2]);
  }

  return v4;
}

- (id)RetrieveA11xQApp:(id *)a3
{
  v8 = 4;
  v5 = [(USBCPDAccess *)self->super._pdAccess RemoteExecuteCommand:1886404945 withDelay:500000 canRetry:1 canRecover:1];
  if (v5 || (v8 = 64, *&a3->var0.var0 = 0u, *&a3->var4 = 0u, *&a3->var6[8] = 0u, *&a3->var7[4] = 0u, [(USBCPDAccess *)self->super._pdAccess RemoteIECSReadReg:a3 bufferLength:64 registerAddress:9 returnedBufferLength:&v8], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    sub_10001331C(v5, &v9);
    v6 = v9;
  }

  else
  {
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"    Current firmware info:"];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"        Active Region:              %u\n", a3->var0.var0];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"        Preferred Region:           %u\n", a3->var0.var1];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@" "];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"        Target Region Start Addr:   0x%04X\n", a3->var1];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"        Target Region End Addr:     0x%04X\n", a3->var2];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@" "];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"    Current Bootloader Version:     %08X\n", a3->var5];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"        Current App1 Version:       %08X\n", a3->var3];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"        Current App2 Version:       %08X\n", a3->var4];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@" "];
    v6 = 0;
  }

  return v6;
}

- (id)DeviceSerialNumber:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware S/N"];

    if (v5)
    {
      v6 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware S/N"];
      goto LABEL_10;
    }
  }

  v10 = 0;
  v7 = [(USBCPDAccess *)self->super._pdAccess DeviceInAlternateMode:&v10];
  if (v7)
  {
    goto LABEL_14;
  }

  if ((v10 & 1) == 0)
  {
    sub_10001339C(v11);
    v7 = v11[0];
LABEL_14:

    goto LABEL_7;
  }

  v8 = [(USBCUSBFirmwareUpdater *)self RetrieveA11xSerialNumber:v11];

  if (v8)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_10;
  }

  v6 = [NSString stringWithUTF8String:v11];
  if (v3)
  {
    [(NSMutableDictionary *)self->super._hardwareProperties setObject:v6 forKeyedSubscript:@"Hardware S/N"];
  }

LABEL_10:

  return v6;
}

- (unsigned)DeviceFirmwareVersion
{
  result = self->super._firmwareVersion;
  if (!result)
  {
    v6 = 0u;
    memset(v7, 0, sizeof(v7));
    v4 = [(USBCUSBFirmwareUpdater *)self RetrieveA11xQApp:&v6];
    if (!v4)
    {
      if (v6 == 1)
      {
        v5 = &v6 + 3;
        goto LABEL_7;
      }

      if (v6 == 2)
      {
        v5 = v7;
LABEL_7:
        self->super._firmwareVersion = *v5;
      }
    }

    return self->super._firmwareVersion;
  }

  return result;
}

- (unsigned)DeviceAlternateFirmwareVersion
{
  v7 = 0u;
  memset(v8, 0, sizeof(v8));
  v2 = [(USBCUSBFirmwareUpdater *)self RetrieveA11xQApp:&v7];
  if (v2 || v7 == BYTE1(v7))
  {
    goto LABEL_6;
  }

  if (BYTE1(v7) != 1)
  {
    if (BYTE1(v7) == 2)
    {
      v3 = v8;
      goto LABEL_9;
    }

LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v3 = (&v7 | 0xC);
LABEL_9:
  v6 = *v3;
  if (v6 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v6;
  }

LABEL_7:

  return v4;
}

- (id)DeviceFirmwareVersionString
{
  v2 = [(USBCUSBFirmwareUpdater *)self DeviceFirmwareVersion];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"%X.%X.%X", HIWORD(v2), BYTE1(v2), v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)DeviceAlternateFirmwareVersionString
{
  v2 = [(USBCUSBFirmwareUpdater *)self DeviceAlternateFirmwareVersion];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"%X.%X.%X", HIWORD(v2), BYTE1(v2), v2];
  }

  else
  {
    v3 = @"(Invalid F/W Image)";
  }

  return v3;
}

- (id)validateUSBCBillboard
{
  properties = 0;
  IORegistryEntryCreateCFProperties(self->super._registryEntry, &properties, kCFAllocatorDefault, 0);
  v3 = properties;
  v4 = v3;
  if (!v3)
  {
    v5 = +[NSMutableDictionary dictionary];
    [v5 setObject:@"Bad registry entry" forKeyedSubscript:@"Notes"];
    v20 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:8704 userInfo:v5];
    v21 = 0;
    v22 = 0;
    goto LABEL_26;
  }

  v5 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"IOClassName"];
  v6 = [(__CFDictionary *)v4 objectForKeyedSubscript:@"IOClassNameOverride"];
  v7 = [(__CFDictionary *)v4 objectForKeyedSubscript:@"USB Serial Number"];
  v8 = v6;
  v9 = v8;
  if (!v8 && (v9 = v5) == 0 || [v9 compare:@"IOUSBDevice"] && objc_msgSend(v9, "compare:", @"IOUSBHostDevice"))
  {
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"Provider class didn't make sense: %@", v4];
  }

  v10 = [(__CFDictionary *)v4 objectForKeyedSubscript:@"bcdDevice"];
  v11 = [v10 unsignedLongValue];
  v12 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware S/N"];

  if (!v12)
  {
    [(NSMutableDictionary *)self->super._hardwareProperties setObject:v7 forKeyedSubscript:@"Hardware S/N"];
  }

  v13 = v11 << 8;
  v14 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware Installed firmware version"];

  if (!v14)
  {
    v15 = [NSNumber numberWithUnsignedLong:v13];
    [(NSMutableDictionary *)self->super._hardwareProperties setObject:v15 forKeyedSubscript:@"Hardware Installed firmware version"];
  }

  v37 = v7;
  if (v10 && v13)
  {
    v16 = [(NSMutableDictionary *)self->super._firmwareAssetProperties objectForKeyedSubscript:@"Firmware Asset Version"];
    v17 = [v16 unsignedLongValue];
    if (v16)
    {
      if ((v17 & 0x800000) == 0)
      {
        v18 = v17 & 0x7FFFFF;
        v19 = v13 & 0x7FFF00;
        if (v19 >= v18)
        {
          [(FudPluginDelegate *)self->super._delegate log:7 format:@"Reported firmware version do not support install of new firmware.  Aborting (0x%06X / 0x%06X)", v19, v18];
          v36 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware Device Class"];
          v28 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware Installed firmware version"];
          v33 = [v28 unsignedLongValue];

          if (!self->super._firmwareVersion)
          {
            self->super._firmwareVersion = v33;
          }

          delegate = self->super._delegate;
          v29 = [(USBCUSBFirmwareUpdater *)self DeviceSerialNumber];
          v30 = [(USBCUSBFirmwareUpdater *)self DeviceFirmwareVersionString];
          [(FudPluginDelegate *)delegate log:1 format:@"%@ with S/N %@ is up to date.  Installed firmware version is %@", v36, v29, v30];

          v35 = +[NSMutableDictionary dictionary];
          [v35 setObject:@"Firmware not new enough" forKeyedSubscript:@"Notes"];
          v20 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:9728 userInfo:v35];
          v32 = _previouslyUpdatedObjects;
          v31 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware S/N"];
          [v32 setObject:&off_1000277C0 forKeyedSubscript:v31];

          goto LABEL_21;
        }
      }
    }
  }

  if (!self->startupPauseCompleted)
  {
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"%s - Pausing here to let the host clear any attachment-related traffic...", "[USBCUSBFirmwareUpdater validateUSBCBillboard]"];
    usleep(0xE4E1C0u);
    self->startupPauseCompleted = 1;
  }

  v20 = [(USBCFirmwareUpdater *)self LocatePortMicroForSerialNumber:v7];
  if (!v20)
  {
    pdController = self->super._pdController;
    if (pdController)
    {
      v24 = [(PDController *)pdController userClient];
      v22 = [v24 routerID];

      v21 = [(PDController *)self->super._pdController address];
      [(FudPluginDelegate *)self->super._delegate log:3 format:@"%s - Everything OK.  S/N: %@", "[USBCUSBFirmwareUpdater validateUSBCBillboard]", v37];
      v20 = 0;
      goto LABEL_25;
    }
  }

  [(FudPluginDelegate *)self->super._delegate log:3 format:@"AppleHPM instance not found or you are running as a non-root user"];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"S/N error returnValue: %@", v20];
LABEL_21:
  v21 = 0;
  v22 = 0;
LABEL_25:

LABEL_26:
  if (v20)
  {
    v25 = +[NSMutableDictionary dictionary];
    [v25 setObject:v20 forKeyedSubscript:@"Previous Error Response"];
    v26 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:8704 userInfo:v25];
  }

  else
  {
    v26 = 0;
    self->super._route = 0;
    self->super._rid = v22;
    self->super._address = v21;
  }

  return v26;
}

- (id)validateDevice:(id)a3 withFirmware:(id)a4
{
  v7 = a3;
  v8 = a4;
  v34 = 0;
  if (!self->super._hardwareProperties)
  {
    objc_storeStrong(&self->super._hardwareProperties, a3);
  }

  if (!self->super._firmwareAssetProperties)
  {
    objc_storeStrong(&self->super._firmwareAssetProperties, a4);
  }

  v9 = _previouslyUpdatedObjects;
  v10 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware S/N"];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (!v11)
  {
    v15 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware Installed firmware version"];
    if (!v15)
    {
      if (!self->super._firmwareVersion)
      {
        goto LABEL_12;
      }

      v15 = [NSNumber numberWithUnsignedLong:?];
      [(NSMutableDictionary *)self->super._hardwareProperties setObject:v15 forKeyedSubscript:@"Hardware Installed firmware version"];
    }

LABEL_12:
    v16 = [(USBCUSBFirmwareUpdater *)self validateUSBCBillboard];
    if (v16)
    {
      v13 = v16;
      [(FudPluginDelegate *)self->super._delegate log:7 format:@"validateUSBCBillboard gave: %@", v16];
      v14 = 0;
LABEL_21:
      delegate = self->super._delegate;
      v26 = [v13 description];
      [(FudPluginDelegate *)delegate log:7 format:@"validateDevice has an error: %@", v26];

      v27 = +[NSMutableDictionary dictionary];
      [v27 setObject:v13 forKeyedSubscript:@"Previous Error Response"];
      v28 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:8448 userInfo:v27];

      v13 = 0;
      goto LABEL_32;
    }

    v17 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware VID"];
    if (v17)
    {
      v18 = v17;
      v19 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware DID"];
      if (v19)
      {
        v20 = v19;
        v21 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware UID"];

        if (v21)
        {
          v22 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware VID"];
          HIDWORD(v34) = [v22 unsignedLongValue];

          v23 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware DID"];
          LODWORD(v34) = [v23 unsignedLongValue];

          v14 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware UID"];
          goto LABEL_24;
        }
      }

      else
      {
      }
    }

    [(NSMutableDictionary *)self->super._hardwareProperties setObject:0 forKeyedSubscript:@"Hardware VID"];
    [(NSMutableDictionary *)self->super._hardwareProperties setObject:0 forKeyedSubscript:@"Hardware DID"];
    [(NSMutableDictionary *)self->super._hardwareProperties setObject:0 forKeyedSubscript:@"Hardware UID"];
    v33 = 0;
    v13 = [(USBCFirmwareUpdater *)self DeviceVIDDID:&v34 + 4 andDid:&v34 andUid:&v33];
    v24 = v33;
    v14 = v24;
    if (v13)
    {
      [(FudPluginDelegate *)self->super._delegate log:7 format:@"DeviceVIDDID gave: %@", v13];
      goto LABEL_21;
    }

    if (v24)
    {
      [(NSMutableDictionary *)self->super._hardwareProperties setObject:v24 forKeyedSubscript:@"Hardware UID"];
    }

LABEL_24:
    if (v34 == 0xA2700000019)
    {
      v29 = [v7 objectForKeyedSubscript:@"Hardware Installed firmware version"];

      if (v29)
      {
        v30 = [v7 objectForKeyedSubscript:@"Hardware Installed firmware version"];
        [v30 unsignedLongValue];
      }

      else
      {
        v30 = [NSNumber numberWithUnsignedLong:[(USBCUSBFirmwareUpdater *)self DeviceFirmwareVersion]];
        [v7 setObject:v30 forKeyedSubscript:@"Hardware Installed firmware version"];
      }

      v13 = [(USBCUSBFirmwareUpdater *)self DeviceFirmwareVersionString];
      [(FudPluginDelegate *)self->super._delegate log:7 format:@"Firmware version: %@", v13];
    }

    else
    {
      v31 = +[NSMutableDictionary dictionary];
      [(FudPluginDelegate *)self->super._delegate log:7 format:@"Wrong VID/DID: 0x%04X / 0x%04X", HIDWORD(v34), v34];
      [v31 setObject:@"Wrong VID/DID" forKeyedSubscript:@"Notes"];
      v13 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:8448 userInfo:v31];

      if (v13)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_31;
  }

  [(FudPluginDelegate *)self->super._delegate log:7 format:@"This registry entry appears to have been previously updated.  Aborting"];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"%u Previously updated - aborting", self->super._registryEntry];
  v12 = +[NSMutableDictionary dictionary];
  [v12 setObject:@"Previously updated" forKeyedSubscript:@"Notes"];
  v13 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:8448 userInfo:v12];

  v14 = 0;
  if (v13)
  {
    goto LABEL_21;
  }

LABEL_31:
  v28 = 0;
LABEL_32:

  return v28;
}

- (unsigned)FirmwareFileVersion:(id)a3 firmware:(id *)a4 isSecure:(BOOL *)a5 andSignature:(id *)a6 withPartition:(unsigned int)a7
{
  v12 = a3;
  v13 = [v12 length];
  v14 = malloc_type_malloc(v13, 0x963900D6uLL);
  [v12 getBytes:v14 length:v13];
  v30 = a5;
  v31 = a6;
  v29 = a4;
  if (a7 == 1)
  {
    v15 = 4096;
  }

  else
  {
    if (a7 != 2)
    {
      sub_100013410();
    }

    v15 = 69632;
  }

  v16 = v15;
  v17 = &v14[v15];
  v18 = *v17;
  v19 = @"NO";
  if (v13 > 0x20000)
  {
    v19 = @"YES";
  }

  v27 = v19;
  v28 = v13;
  if (v13 <= 0x20000)
  {
    v20 = (v18 + 256);
  }

  else
  {
    v20 = v18;
  }

  v22 = v17[5];
  v21 = v17[6];
  v23 = v17[4];
  free(v14);
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"    VID: %u (0x%X)", v21, v21];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"    DID: %u (0x%X)", v22, v22];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@" "];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"    Offset: %u (0x%X)", v16, v16];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"    Length: %u (0x%X)", v18, v18];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"    LengthTotal: %u (0x%X)", v20, v20];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"    appendedSigs: %@", v27];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"    fwVersion: %u (0x%X)", v23, v23];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@" "];
  if (v29)
  {
    *v29 = [v12 subdataWithRange:{v16, v20}];
  }

  if (v30)
  {
    *v30 = v28 > 0x20000;
  }

  if (v31)
  {
    v24 = [v12 length];
    if (v20 - v28 < 0x100)
    {
      v25 = 0;
    }

    else
    {
      v25 = [v12 subdataWithRange:{&v24[256 * a7 - 768], 256}];
    }

    *v31 = v25;
  }

  return v23;
}

- (id)EnterUpdateMode
{
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"Enabling lock (does nothing)"];
  result = [(USBCPDAccess *)self->super._pdAccess EnterUpdateMode:0];
  self->receptacleDisabled = 1;
  return result;
}

- (unsigned)FirmwareFileVersion:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  if (!self->super._pdAccess)
  {
    goto LABEL_6;
  }

  v5 = [(USBCUSBFirmwareUpdater *)self RetrieveA11xQApp:&v9];
  if (v5)
  {
LABEL_8:

    v7 = -1;
    goto LABEL_9;
  }

  if (DWORD1(v9) == 4096)
  {
LABEL_6:
    v6 = 1;
    goto LABEL_7;
  }

  if (DWORD1(v9) != 69632)
  {
    goto LABEL_8;
  }

  v6 = 2;
LABEL_7:
  v7 = [(USBCUSBFirmwareUpdater *)self FirmwareFileVersion:v4 firmware:0 isSecure:0 andSignature:0 withPartition:v6, v9, v10, v11, v12];
LABEL_9:

  return v7;
}

- (id)validateFirmware:(id)a3 hardware:(id)a4 firmware:(id)a5 progress:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v72 = 0;
  v67 = [v12 objectForKeyedSubscript:@"Firmware Asset Version"];
  v14 = [v12 objectForKeyedSubscript:@"Firmware Asset Is Secure"];
  v15 = [v12 objectForKeyedSubscript:@"Firmware Asset File"];
  v69 = [v12 objectForKeyedSubscript:@"Firmware Asset Payload"];
  v16 = [v12 objectForKeyedSubscript:@"Firmware Asset Signature"];
  v68 = [v11 objectForKeyedSubscript:@"Hardware Partition"];
  v17 = _previouslyUpdatedObjects;
  v18 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware S/N"];
  v19 = [v17 objectForKeyedSubscript:v18];

  v63 = v12;
  if (v19)
  {
    v20 = 0;
LABEL_3:
    v21 = 0;
    v22 = 0;
    goto LABEL_4;
  }

  if (!v15)
  {
    v36 = +[NSMutableDictionary dictionary];
    [v36 setObject:@"Firmware file was missing" forKeyedSubscript:@"Notes"];
    v20 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:12290 userInfo:v36];

    goto LABEL_3;
  }

  if (v69 && v16 && v14 && v67 && v68)
  {
    v61 = [v67 unsignedLongValue];
    v72 = [v14 BOOLValue];
    v33 = [v12 objectForKeyedSubscript:@"Firmware Asset Payload"];

    v34 = [v12 objectForKeyedSubscript:@"Firmware Asset Signature"];

    v35 = [v11 objectForKeyedSubscript:@"Hardware Partition"];

    v68 = v35;
    v69 = v33;
    v16 = v34;
  }

  else
  {
    memset(v74, 0, sizeof(v74));
    v37 = [(USBCUSBFirmwareUpdater *)self RetrieveA11xQApp:v74];
    if (v37)
    {
      v20 = v37;
      goto LABEL_3;
    }

    if (DWORD1(v74[0]) == 4096)
    {
      v38 = 1;
    }

    else
    {
      if (DWORD1(v74[0]) != 69632)
      {
        sub_10001343C(&v73);
        v20 = v73;
        goto LABEL_3;
      }

      v38 = 2;
    }

    v65 = [NSNumber numberWithUnsignedLong:v38];

    [v11 setObject:v65 forKeyedSubscript:@"Hardware Partition"];
    v70 = v16;
    v71 = v69;
    v39 = -[USBCUSBFirmwareUpdater FirmwareFileVersion:firmware:isSecure:andSignature:withPartition:](self, "FirmwareFileVersion:firmware:isSecure:andSignature:withPartition:", v15, &v71, &v72, &v70, [v65 unsignedLongValue]);
    v59 = v71;

    v40 = v70;
    v41 = v16;
    v16 = v40;

    v61 = v39;
    v42 = [NSNumber numberWithUnsignedLong:v39];

    [v12 setObject:v42 forKeyedSubscript:@"Firmware Asset Version"];
    v43 = [NSNumber numberWithBool:v72];

    [v12 setObject:v43 forKeyedSubscript:@"Firmware Asset Is Secure"];
    [v12 setObject:v59 forKeyedSubscript:@"Firmware Asset Payload"];
    [v12 setObject:v16 forKeyedSubscript:@"Firmware Asset Signature"];
    v68 = v65;
    v69 = v59;
    v14 = v43;
    v67 = v42;
  }

  v44 = [v11 objectForKeyedSubscript:@"Hardware Installed firmware version"];
  v22 = v44;
  if (v44)
  {
    v45 = [v44 unsignedLongValue];
  }

  else
  {
    v45 = [(USBCUSBFirmwareUpdater *)self DeviceFirmwareVersion];
    [NSNumber numberWithUnsignedLong:v45];
    v47 = v46 = v16;
    [v11 setObject:v47 forKeyedSubscript:@"Hardware Installed firmware version"];

    v16 = v46;
  }

  if (v72)
  {
    v58 = v22;
    v60 = v15;
    v66 = v16;
    v48 = v61 & 0x7FFFFF;
    v56 = [(USBCUSBFirmwareUpdater *)self DeviceAlternateFirmwareVersion];
    v49 = [v11 objectForKeyedSubscript:@"Hardware Device Class"];
    delegate = self->super._delegate;
    v50 = [(USBCUSBFirmwareUpdater *)self DeviceSerialNumber];
    v51 = [(USBCUSBFirmwareUpdater *)self DeviceFirmwareVersionString];
    if (v45 >= v48 || v56 >= v48)
    {
      [(USBCUSBFirmwareUpdater *)self DeviceAlternateFirmwareVersionString];
      v54 = v62 = v45;
      [(FudPluginDelegate *)delegate log:1 format:@"%@ with S/N %@ is up to date.  Installed firmware version is %@.  Alternate firmware is: %@", v49, v50, v51, v54];

      [(FudPluginDelegate *)self->super._delegate log:7 format:@"Firmware older/equal than what is currently installed (0x%08X vs. 0x%08X)", v62, v48];
      v55 = +[NSMutableDictionary dictionary];
      [v55 setObject:@"Firmware older/equal than what is currently installed" forKeyedSubscript:@"Notes"];
      v20 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:2816 userInfo:v55];

      v21 = 0;
    }

    else
    {
      v52 = [(USBCFirmwareUpdater *)self FirmwareFileVersionString:v61];
      v21 = 1;
      [(FudPluginDelegate *)delegate log:1 format:@"%@ with S/N %@ is in need of an update.  Installed firmware version %@ will be replaced with %@", v49, v50, v51, v52];

      v20 = 0;
    }

    v22 = v58;
    v15 = v60;
    v16 = v66;
  }

  else
  {
    v53 = +[NSMutableDictionary dictionary];
    [v53 setObject:@"Firmware file was bad" forKeyedSubscript:@"Notes"];
    v20 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:12291 userInfo:v53];

    v21 = 0;
  }

LABEL_4:
  if (v13)
  {
    v13[2](v13, 100.0);
  }

  v64 = v16;
  if (v20)
  {
    +[NSMutableDictionary dictionary];
    v23 = v21;
    v24 = v22;
    v25 = v13;
    v26 = v10;
    v27 = v11;
    v28 = v14;
    v30 = v29 = v15;
    [v30 setObject:v20 forKeyedSubscript:@"Previous Error Response"];
    v31 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:12292 userInfo:v30];

    v15 = v29;
    v14 = v28;
    v11 = v27;
    v10 = v26;
    v13 = v25;
    v22 = v24;
    v21 = v23;
    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v31 = 0;
  if (v10)
  {
LABEL_8:
    v10[2](v10, v21, 0, v31);
  }

LABEL_9:

  return v31;
}

- (id)prepareFirmware:(id)a3 hardware:(id)a4 firmware:(id)a5 progress:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v10 objectForKeyedSubscript:@"Hardware Partition"];
  v13 = MGCopyAnswer();
  if (v12)
  {
    goto LABEL_8;
  }

  memset(v45, 0, sizeof(v45));
  v14 = [(USBCUSBFirmwareUpdater *)self RetrieveA11xQApp:v45];
  if (v14)
  {
    v16 = v14;
LABEL_38:
    v12 = 0;
    if (v11)
    {
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (DWORD1(v45[0]) == 4096)
  {
    v15 = 1;
    goto LABEL_7;
  }

  if (DWORD1(v45[0]) != 69632)
  {
    sub_1000134B0(&v43);
    v16 = v43;
    goto LABEL_38;
  }

  v15 = 2;
LABEL_7:
  v12 = [NSNumber numberWithUnsignedLong:v15];
  [v10 setObject:v12 forKeyedSubscript:@"Hardware Partition"];
LABEL_8:
  if ([v13 containsString:@"arm"])
  {
    v16 = 0;
    if (!v11)
    {
      goto LABEL_29;
    }

LABEL_28:
    v11[2](v11, 100.0);
    goto LABEL_29;
  }

  v17 = [[NSMutableDictionary alloc] initWithCapacity:5];
  if (!v17)
  {
    v17 = [NSMutableDictionary dictionaryWithCapacity:1];
  }

  v36 = v13;
  v37 = v10;
  v38 = v9;
  v18 = [(USBCFirmwareUpdater *)self BlessArgumentsWithRemoteReset:1];
  if (v18)
  {
    v19 = [NSString stringWithFormat:@"%u %u", self->super._rid, self->super._address];
    v20 = [NSNumber numberWithInt:500];
    v21 = [NSDictionary dictionaryWithObjectsAndKeys:v18, @"BlessArguments", v20, @"Priority", v19, @"UniqueID", 0, 0];

    [v17 setObject:v21 forKeyedSubscript:@"BlessSettings"];
  }

  v35 = self;
  v22 = objc_alloc_init(NSMutableString);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v23 = v18;
  v24 = [v23 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v40;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v40 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v39 + 1) + 8 * i);
        if ([v22 length])
        {
          [v22 appendString:@" "];
        }

        [(__CFString *)v28 rangeOfString:@" "];
        v29 = v22;
        if (v30)
        {
          [v22 appendString:@""];
          [v22 appendString:v28];
          v29 = v22;
          v31 = @"";
        }

        else
        {
          v31 = v28;
        }

        [v29 appendString:v31];
      }

      v25 = [v23 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v25);
  }

  [(FudPluginDelegate *)v35->super._delegate log:7 format:@"Bless Invocation string: %@", v22];
  v16 = 0;
  v10 = v37;
  v9 = v38;
  v13 = v36;
  if (v11)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (v16)
  {
    v32 = +[NSMutableDictionary dictionary];
    [v32 setObject:v16 forKeyedSubscript:@"Previous Error Response"];
    v33 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:12032 userInfo:v32];

    if (!v9)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v33 = 0;
  if (v9)
  {
LABEL_31:
    v9[2](v9, 0, v33);
  }

LABEL_32:

  return v33;
}

- (id)finishFirmware:(id)a3 hardware:(id)a4 firmware:(id)a5 progress:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [[NSMutableDictionary alloc] initWithCapacity:5];
  v13 = MGCopyAnswer();
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"-=-=-=-=-=-=-=-=-=-=- Completing Update Operation -=-=-=-=-=-=-=-=-=-=-=-=-=-=-"];
  v47 = v10;
  if (self->super._updaterOperational)
  {
    [(USBCUSBFirmwareUpdater *)self setPreferredFirmwarePartition:1];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"-=-=-=-=-=-=-=-=-=-=-= Completing Reset Operation -=-=-=-=-=-=-=-=-=-=-=-=-=-=-"];
    if (v11)
    {
      v11[2](v11, 50.0);
    }

    if ([v13 containsString:@"arm"])
    {
      v14 = v11;
    }

    else
    {
      if (!v12)
      {
        v12 = [NSMutableDictionary dictionaryWithCapacity:1];
      }

      v43 = v13;
      v44 = v9;
      v46 = v11;
      v23 = [(USBCFirmwareUpdater *)self BlessArgumentsWithRemoteReset:1];
      if (v23)
      {
        v24 = [NSString stringWithFormat:@"%u %u", self->super._rid, self->super._address];
        v25 = [NSNumber numberWithInt:500];
        v26 = [NSDictionary dictionaryWithObjectsAndKeys:v23, @"BlessArguments", v25, @"Priority", v24, @"UniqueID", 0, 0];

        [v12 setObject:v26 forKeyedSubscript:@"BlessSettings"];
      }

      v27 = objc_alloc_init(NSMutableString);
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v28 = v23;
      v29 = [v28 countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v49;
        do
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v49 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v48 + 1) + 8 * i);
            if ([v27 length])
            {
              [v27 appendString:@" "];
            }

            [(__CFString *)v33 rangeOfString:@" "];
            v34 = v27;
            if (v35)
            {
              [v27 appendString:@""];
              [v27 appendString:v33];
              v34 = v27;
              v36 = @"";
            }

            else
            {
              v36 = v33;
            }

            [v34 appendString:v36];
          }

          v30 = [v28 countByEnumeratingWithState:&v48 objects:v52 count:16];
        }

        while (v30);
      }

      [(FudPluginDelegate *)self->super._delegate log:7 format:@"Bless Invocation string: %@", v27];
      v9 = v44;
      v14 = v46;
      v13 = v43;
    }

    v37 = _previouslyUpdatedObjects;
    v38 = [(NSMutableDictionary *)self->super._hardwareProperties objectForKeyedSubscript:@"Hardware S/N"];
    [v37 setObject:&off_1000277C0 forKeyedSubscript:v38];

    v16 = 0;
  }

  else
  {
    v15 = +[NSMutableDictionary dictionary];
    [v15 setObject:@"Update Aborted at finish start" forKeyedSubscript:@"Notes"];
    [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13312 userInfo:v15];
    v16 = v45 = v11;
    delegate = self->super._delegate;
    v18 = [v10 objectForKeyedSubscript:@"Hardware Device Class"];
    [(USBCUSBFirmwareUpdater *)self DeviceSerialNumber];
    v19 = v13;
    v21 = v20 = v12;
    [(FudPluginDelegate *)delegate log:1 format:@"%@ with S/N %@ - Update aborted", v18, v21];

    v12 = v20;
    v13 = v19;

    v22 = [(USBCUSBFirmwareUpdater *)self ExitUpdateMode:0];
    v14 = v45;
  }

  [(FudPluginDelegate *)self->super._delegate log:7 format:@"-=-=-=-=-=-=-=-=-=-=-= Completing Reset Operation -=-=-=-=-=-=-=-=-=-=-=-=-=-=-"];
  v39 = [(USBCUSBFirmwareUpdater *)self ExitUpdateMode:0];
  if (v14)
  {
    v14[2](v14, 100.0);
  }

  if (v16)
  {
    v40 = +[NSMutableDictionary dictionary];
    [v40 setObject:v16 forKeyedSubscript:@"Previous Error Response"];
    v41 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:12544 userInfo:v40];

    if (!v9)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v41 = 0;
  if (v9)
  {
LABEL_29:
    v9[2](v9, v12, v41);
  }

LABEL_30:

  return v41;
}

- (void)setPreferredFirmwarePartition:(BOOL)a3
{
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = [(USBCUSBFirmwareUpdater *)self RetrieveA11xQApp:&v9];
  v6 = 0;
  v8 = 0;
  if (!v5)
  {
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"    QApp info:"];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"        regionInfo:"];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"            activeRegion:    %u", v9];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"            preferredRegion: %u", BYTE1(v9)];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"        targetStartAddress: %lu", DWORD1(v9)];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"        targetEndAddress:   %lu", DWORD2(v9)];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"        app1Version:        0x%lX", HIDWORD(v9)];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"        app2Version:        0x%lX", v10];
    [(FudPluginDelegate *)self->super._delegate log:7 format:@"        bootVersion:        0x%lX", DWORD1(v10)];
    if (HIDWORD(v9) <= v10)
    {
      if (HIDWORD(v9) >= v10)
      {
        [(FudPluginDelegate *)self->super._delegate log:7 format:@"    Not changing preferred region as both partitions have the same firmware"];
        v6 = v9;
        if (v9 == BYTE1(v9))
        {
          if (v9 == 1)
          {
            v6 = 2;
          }

          else
          {
            v6 = 1;
          }
        }
      }

      else if (v3)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }
    }

    else if (v3)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    v8 = v6;
  }

  [(FudPluginDelegate *)self->super._delegate log:7 format:@"    Setting preferred region to: %u", v6];
  v7 = [(USBCPDAccess *)self->super._pdAccess RemoteIECSWriteReg:&v8 bufferLength:4 registerAddress:9];
  if (!v7)
  {
    v7 = [(USBCPDAccess *)self->super._pdAccess RemoteExecuteCommand:1313296976 withDelay:1000000 canRetry:1 canRecover:1];
  }
}

- (id)applyFirmware:(id)a3 hardware:(id)a4 firmware:(id)a5 progress:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v235 = a6;
  memset(__s1, 0, sizeof(__s1));
  sub_10000BA30();
  v13 = [v12 objectForKeyedSubscript:@"Firmware Asset Is Secure"];
  v14 = [v12 objectForKeyedSubscript:@"Firmware Asset File"];
  v234 = [v12 objectForKeyedSubscript:@"Firmware Asset Payload"];
  v228 = [v12 objectForKeyedSubscript:@"Firmware Asset Signature"];
  v226 = v12;
  v227 = v10;
  v233 = v11;
  v224 = v14;
  v225 = v13;
  if (!self->super._updaterOperational)
  {
    v76 = +[NSMutableDictionary dictionary];
    [v76 setObject:@"Update Aborted before it began" forKeyedSubscript:@"Notes"];
    sub_10000BAB0();
    v49 = [v77 errorWithDomain:? code:? userInfo:?];
    v78 = 40;
LABEL_69:
    v79 = *(&self->super.super.isa + v78);
    goto LABEL_73;
  }

  if (!v14)
  {
    v76 = +[NSMutableDictionary dictionary];
    [v76 setObject:@"Firmware file was missing" forKeyedSubscript:@"Notes"];
    v80 = 10496;
LABEL_71:
    v49 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:v80 userInfo:v76];
    goto LABEL_75;
  }

  [v13 BOOLValue];
  delegate = self->super._delegate;
  v16 = [v11 objectForKeyedSubscript:@"Hardware Device Class"];
  v174 = [(USBCUSBFirmwareUpdater *)self DeviceSerialNumber];
  [(FudPluginDelegate *)delegate log:1 format:@"%@ with S/N %@ - Accessory firmware update started"];

  [(FudPluginDelegate *)self->super._delegate log:7 format:@"-=-=-=-=-=-=-=-=-=-=-=-= Initiating Update Mode -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"];
  v17 = [(USBCUSBFirmwareUpdater *)self EnterUpdateMode];
  if (v17)
  {
    goto LABEL_177;
  }

  sub_10000BA0C(0, v18, v19, v20, v21, v22, v23, v24, v16, v174, v182, v187, v192, v197, v202, v207, v212, v217, v222, v14, v13, v12, v10, v228, 56);
  if ((v25 & 1) == 0)
  {
    v76 = +[NSMutableDictionary dictionary];
    [v76 setObject:@"Update Aborted at start" forKeyedSubscript:@"Notes"];
    sub_10000BAB0();
    v49 = [v81 errorWithDomain:? code:? userInfo:?];
    v79 = self->super._delegate;
LABEL_73:
    v82 = v11;
    goto LABEL_74;
  }

  v26 = [(USBCPDAccess *)self->super._pdAccess VerifyPowerRole];
  [(FudPluginDelegate *)self->super._delegate log:7 format:@"-=-=-=-=-=-=-=-= Sending Firmware Update Start Command =-=-=-=-=-=-=-=-=-=-=-=-"];
  v17 = [(USBCPDAccess *)self->super._pdAccess RemoteExecuteCommand:1213418566 withDelay:1000000 canRetry:1 canRecover:1];
  if (v17 || (sub_10000BA30(), [sub_10000B93C() RemoteIECSReadReg:? bufferLength:? registerAddress:? returnedBufferLength:?], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_177:
    v49 = v17;
    goto LABEL_76;
  }

  if (LODWORD(__s1[0]))
  {
LABEL_176:
    v49 = 0;
    goto LABEL_76;
  }

  v27 = [(FudPluginDelegate *)self->super._delegate log:7 format:@"-=-=-=-=-=-=-=-=-=-=-=- Sending Firmware Payload =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"];
  sub_10000BA0C(v27, v28, v29, v30, v31, v32, v33, v34, v167, v175, v183, v188, v193, v198, v203, v208, v213, v218, 40, v224, v225, v226, v227, v228, v229);
  v35 = v234;
  if (v36 != 1)
  {
LABEL_93:
    v76 = +[NSMutableDictionary dictionary];
    [v76 setObject:@"Update Aborted during payload xmit" forKeyedSubscript:@"Notes"];
    goto LABEL_94;
  }

  v37 = 0;
  v38 = 0;
  v219 = (v235 + 2);
  while (1)
  {
    v39 = v37;
    v40 = [v35 length];
    if (v40 <= v37)
    {
      break;
    }

    if ([v35 length] - v37 <= 0x40)
    {
      v48 = [v35 length] - v37;
    }

    else
    {
      v48 = 64;
    }

    sub_10000BA3C();
    v49 = 0;
    v50 = 4;
    while (2)
    {
      v51 = v50;
      v52 = sub_10000BA18();
      if ((v52 & 1) == 0)
      {
        if (!v49)
        {
          goto LABEL_19;
        }

        if (sub_10000BABC())
        {

LABEL_19:
          sub_10000BA60();
          do
          {
            v52 = sub_10000BA18();
            if (v52)
            {
              break;
            }

            if (v49)
            {
              if (!sub_10000B97C())
              {
                v62 = +[NSMutableDictionary dictionary];
                [v62 setObject:v49 forKeyedSubscript:@"Previous Error Response"];
                v13 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13067 userInfo:v62];

                v49 = v13;
                break;
              }
            }

            sub_10000B968();
            sub_10000BA8C();
            v52 = [v60 RemoteIECSWriteReg:? bufferLength:? registerAddress:?];
            if (v52 || (sub_10000B99C(), sub_10000BA8C(), [v61 RemoteIECSReadReg:? bufferLength:? registerAddress:? returnedBufferLength:?], (v52 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v49 = v52;
            }

            else
            {
              v52 = memcmp(__s1, __s2, v37);
              if (!v52)
              {
                goto LABEL_33;
              }

              v49 = 0;
            }

            v13 = (v13 - 1);
          }

          while (v13);
          if (!v49)
          {
LABEL_33:
            v13 = v48;
            if (v38 != v48)
            {
              sub_10000BA60();
              do
              {
                v52 = sub_10000BA18();
                if (v52)
                {
                  break;
                }

                if (v49)
                {
                  if (!sub_10000B97C())
                  {
                    +[NSMutableDictionary dictionary];
                    objc_claimAutoreleasedReturnValue();
                    sub_10000BA6C();
                    [v65 setObject:? forKeyedSubscript:?];
                    v66 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13068 userInfo:v13];

                    v49 = v66;
                    break;
                  }
                }

                sub_10000B968();
                sub_10000BAA4();
                v52 = [v63 RemoteIECSWriteReg:? bufferLength:? registerAddress:?];
                if (v52 || (sub_10000B99C(), sub_10000BAA4(), [v64 RemoteIECSReadReg:? bufferLength:? registerAddress:? returnedBufferLength:?], (v52 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v49 = v52;
                }

                else
                {
                  if (v48 == __s2[0])
                  {
                    goto LABEL_48;
                  }

                  v49 = 0;
                }

                v13 = (v13 - 1);
              }

              while (v13);
              if (v49)
              {
                goto LABEL_53;
              }

LABEL_48:
              v13 = v48;
            }

            v52 = [(USBCPDAccess *)self->super._pdAccess RemoteExecuteCommand:1414682438 withDelay:1000 canRetry:1 canRecover:1];
            if (v52 || ([sub_10000B93C() RemoteIECSReadReg:? bufferLength:? registerAddress:? returnedBufferLength:?], (v52 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v49 = v52;
            }

            else
            {
              if (!LOBYTE(__s1[0]))
              {
                v38 = v13;
                goto LABEL_63;
              }

              [*(&self->super.super.isa + v223) log:7 format:{@"            RemoteIECSReadReg:kIECSRegisterData returned: 0x%08X with buffer[0] = 0x%02X", 0, LOBYTE(__s1[0])}];
              v67 = *(&self->super.super.isa + v223);
              if ((LODWORD(__s1[0]) - 1) < 5)
              {
                [v67 log:7 format:off_100024588[LODWORD(__s1[0]) - 1]];
LABEL_96:
                v76 = +[NSMutableDictionary dictionary];
                sub_10000B954();
                sub_10000BA98();
                v105 = [v104 stringWithFormat:@"FWRT_cmd Command failed.  flashStatus = 0x%02X %02X%02X%02X"];
                [v76 setObject:v105 forKeyedSubscript:@"Notes"];

                v80 = 11018;
                goto LABEL_71;
              }

              v204 = BYTE6(__s1[0]);
              v209 = BYTE7(__s1[0]);
              v194 = BYTE4(__s1[0]);
              v199 = BYTE5(__s1[0]);
              v184 = BYTE2(__s1[0]);
              v189 = HIBYTE(LODWORD(__s1[0]));
              v168 = LOBYTE(__s1[0]);
              v176 = BYTE1(__s1[0]);
              v52 = [v67 log:7 format:@"            FWRT_cmd Command returned: %02X %02X%02X%02X %02X%02X%02X%02X"];
              if (!v51)
              {
                goto LABEL_96;
              }

              v49 = 0;
            }

            v38 = v13;
          }

LABEL_53:
          v50 = v51 - 1;
          if (v51)
          {
            continue;
          }

          break;
        }

        v68 = +[NSMutableDictionary dictionary];
        [v68 setObject:v49 forKeyedSubscript:@"Previous Error Response"];
        v69 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13066 userInfo:v68];

        v49 = v69;
      }

      break;
    }

    if (v49)
    {
      if (!sub_10000BA18())
      {
        goto LABEL_76;
      }

      +[NSMutableDictionary dictionary];
      objc_claimAutoreleasedReturnValue();
      sub_10000BA6C();
      [v70 setObject:? forKeyedSubscript:?];
      v71 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13070 userInfo:v13];

      if (v71)
      {
        v49 = v71;
        goto LABEL_76;
      }
    }

LABEL_63:
    gEnableDetailLogging = 0;
    v35 = v234;
    if (v235)
    {
      v72 = [v234 length];
      v73 = sub_10000B9D0(v72);
      v52 = v74(v73);
    }

    v37 = (v48 + v39);
    sub_10000BA0C(v52, v53, v54, v55, v56, v57, v58, v59, v168, v176, v184, v189, v194, v199, v204, v209, v214, v219, v223, v224, v225, v226, v227, v228, v230);
    if ((v75 & 1) == 0)
    {
      goto LABEL_93;
    }
  }

  sub_10000BA0C(v40, v41, v42, v43, v44, v45, v46, v47, v168, v176, v184, v189, v194, v199, v204, v209, v214, v219, v223, v224, v225, v226, v227, v228, v230);
  if ((v97 & 1) == 0)
  {
    goto LABEL_93;
  }

  v98 = [v35 length];
  v99 = *(&self->super.super.isa + v223);
  if (v98 > v39)
  {
    sub_10000BADC();
    v100 = *(&self->super.super.isa + v223);
    sub_10000B954();
    sub_10000B9F0();
    sub_10000BA98();
    [v101 log:7 format:?];
    v76 = +[NSMutableDictionary dictionary];
    v102 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Payload size did not match what the micro was expecting.  Sent = 0x%X.  Expected = 0x%lX", v39, [v35 length]);
    [v76 setObject:v102 forKeyedSubscript:@"Notes"];

    v80 = 11019;
    goto LABEL_71;
  }

  v169 = [v35 length];
  v177 = [v35 length];
  sub_10000BADC();
  if (v235)
  {
    v235[2](90.0);
  }

  [*(&self->super.super.isa + v223) log:7 format:{@"-=-=-=-=-=-=-=-=-=-=-=- Sending Firmware Signature =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-", v169, v177}];
  v11 = v233;
  v106 = v228;
  if (*(&self->super.super.isa + v231) != 1)
  {
LABEL_167:
    v76 = +[NSMutableDictionary dictionary];
    [v76 setObject:@"Update Aborted during signature xmit" forKeyedSubscript:@"Notes"];
    sub_10000BAB0();
    v49 = [v153 errorWithDomain:? code:? userInfo:?];
    v78 = v223;
    goto LABEL_69;
  }

  v107 = 0;
  v108 = 0;
  v220 = (v235 + 2);
  while (1)
  {
    v109 = v107;
    v110 = [v106 length];
    if (v110 <= v107)
    {
      break;
    }

    if ([v106 length] - v107 <= 0x40)
    {
      v118 = [v106 length] - v107;
    }

    else
    {
      v118 = 64;
    }

    sub_10000BA3C();
    v49 = 0;
    v119 = 4;
    v120 = v108;
    while (2)
    {
      v121 = v119;
      if ((sub_10000BA18() & 1) == 0)
      {
        if (!v49)
        {
          goto LABEL_110;
        }

        if (sub_10000BABC())
        {

LABEL_110:
          sub_10000BA60();
          while ((sub_10000BA18() & 1) == 0)
          {
            if (v49)
            {
              if (!sub_10000B97C())
              {
                +[NSMutableDictionary dictionary];
                objc_claimAutoreleasedReturnValue();
                sub_10000BA6C();
                [v125 setObject:? forKeyedSubscript:?];
                v126 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13072 userInfo:v13];

                v49 = v126;
                break;
              }
            }

            sub_10000B968();
            sub_10000BA8C();
            v123 = [v122 RemoteIECSWriteReg:? bufferLength:? registerAddress:?];
            if (v123 || (sub_10000B99C(), sub_10000BA8C(), [v124 RemoteIECSReadReg:? bufferLength:? registerAddress:? returnedBufferLength:?], (v123 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v49 = v123;
            }

            else
            {
              if (!memcmp(__s1, __s2, v107))
              {
                goto LABEL_124;
              }

              v49 = 0;
            }

            v13 = (v13 - 1);
            if (!v13)
            {
              break;
            }
          }

          if (v49)
          {
            goto LABEL_142;
          }

LABEL_124:
          v108 = v118;
          if (v120 != v118)
          {
            sub_10000BA60();
            while ((sub_10000BA18() & 1) == 0)
            {
              if (v49)
              {
                if (!sub_10000B97C())
                {
                  +[NSMutableDictionary dictionary];
                  objc_claimAutoreleasedReturnValue();
                  sub_10000BA6C();
                  [v130 setObject:? forKeyedSubscript:?];
                  v131 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13073 userInfo:v13];

                  v49 = v131;
                  break;
                }
              }

              sub_10000B968();
              sub_10000BAA4();
              v128 = [v127 RemoteIECSWriteReg:? bufferLength:? registerAddress:?];
              if (v128 || (sub_10000BA30(), sub_10000B99C(), sub_10000BAA4(), [v129 RemoteIECSReadReg:? bufferLength:? registerAddress:? returnedBufferLength:?], (v128 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v49 = v128;
              }

              else
              {
                if (v118 == __s2[0])
                {
                  goto LABEL_139;
                }

                v49 = 0;
              }

              v13 = (v13 - 1);
              if (!v13)
              {
                break;
              }
            }

            if (v49)
            {
              goto LABEL_142;
            }

LABEL_139:
            v108 = v118;
          }

          v49 = [(USBCPDAccess *)self->super._pdAccess RemoteExecuteCommand:1414682438];
          if (!v49)
          {
            v136 = 5;
            while (v136 && (sub_10000BA18() & 1) == 0)
            {
              if (v49)
              {
                if (![(USBCPDAccess *)self->super._pdAccess attemptErrorRecovery:v49 lastAttempt:v136 == 1])
                {
                  v144 = +[NSMutableDictionary dictionary];
                  [v144 setObject:v49 forKeyedSubscript:@"Previous Error Response"];
                  v13 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13074 userInfo:v144];

                  v49 = v13;
                  break;
                }
              }

              sub_10000BA30();
              v49 = [sub_10000B93C() RemoteIECSReadReg:? bufferLength:? registerAddress:? returnedBufferLength:?];
              --v136;
              if (!v49)
              {
                if (!LODWORD(__s1[0]))
                {
                  goto LABEL_146;
                }

                [sub_10000B9AC(0 v137];
                v76 = +[NSMutableDictionary dictionary];
                sub_10000B954();
                sub_10000BA98();
                v166 = @"FWRT_cmd Command failed.  flashStatus = 0x%02X %02X%02X%02X";
                goto LABEL_166;
              }
            }

            if (!v49)
            {
              goto LABEL_146;
            }

            if (sub_10000BA18())
            {
              v145 = +[NSMutableDictionary dictionary];
              [v145 setObject:v49 forKeyedSubscript:@"Previous Error Response"];
              v146 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13075 userInfo:v145];

              v49 = v146;
            }

            goto LABEL_76;
          }

          v120 = v108;
LABEL_142:
          v119 = v121 - 1;
          if (v121)
          {
            continue;
          }

          goto LABEL_76;
        }

        v132 = +[NSMutableDictionary dictionary];
        [v132 setObject:v49 forKeyedSubscript:@"Previous Error Response"];
        v13 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13071 userInfo:v132];

        v49 = v13;
      }

      break;
    }

    v108 = v120;
    if (v49)
    {
      goto LABEL_76;
    }

LABEL_146:
    v106 = v228;
    if (v235)
    {
      v133 = [v228 length];
      v134 = sub_10000B9D0(v133);
      v135(v134);
    }

    v107 = (v118 + v109);
    v11 = v233;
    if ((*(&self->super.super.isa + v231) & 1) == 0)
    {
      goto LABEL_167;
    }
  }

  sub_10000BA0C(v110, v111, v112, v113, v114, v115, v116, v117, v170, v178, v185, v190, v195, v200, v205, v210, v215, v220, v223, v224, v225, v226, v227, v228, v231);
  if ((v147 & 1) == 0)
  {
    goto LABEL_167;
  }

  v148 = [v106 length];
  v149 = *(&self->super.super.isa + v223);
  if (v148 > v109)
  {
    sub_10000BADC();
    v150 = *(&self->super.super.isa + v223);
    sub_10000B954();
    sub_10000B9F0();
    sub_10000BA98();
    [v151 log:7 format:?];
    v76 = +[NSMutableDictionary dictionary];
    v173 = v109;
    v181 = [v106 length];
    v166 = @"Signature size did not match what the micro was expecting.  Sent = 0x%X.  Expected = 0x%lX";
    v165 = NSString;
LABEL_166:
    v152 = [v165 stringWithFormat:v166, v173, v181];
    [v76 setObject:v152 forKeyedSubscript:@"Notes"];

    v80 = 11264;
    goto LABEL_71;
  }

  v171 = [v106 length];
  v179 = [v106 length];
  sub_10000BADC();
  if (v235)
  {
    v235[2](95.0);
  }

  [*(&self->super.super.isa + v223) log:7 format:{@"-=-=-=-=-=-=-=-=-=-=-= Verifying Update Operation -=-=-=-=-=-=-=-=-=-=-=-=-=-=-", v171, v179}];
  v17 = [(USBCPDAccess *)self->super._pdAccess RemoteExecuteCommand:1497781830 withDelay:2000000 canRetry:1 canRecover:1];
  if (v17)
  {
    goto LABEL_177;
  }

  sub_10000BA30();
  v17 = [sub_10000B93C() RemoteIECSReadReg:? bufferLength:? registerAddress:? returnedBufferLength:?];
  if (v17)
  {
    goto LABEL_177;
  }

  if (LODWORD(__s1[0]))
  {
    v17 = [sub_10000B9AC(0 v154];
  }

  sub_10000BA0C(v17, v154, v155, v156, v157, v158, v159, v160, v172, v180, v186, v191, v196, v201, v206, v211, v216, v221, v223, v224, v225, v226, v227, v228, v232);
  if (v161)
  {
    v162 = *(&self->super.super.isa + v223);
    v163 = [v233 objectForKeyedSubscript:@"Hardware Device Class"];
    v164 = [(USBCUSBFirmwareUpdater *)self DeviceSerialNumber];
    [v162 log:1 format:{@"%@ with S/N %@ - Accessory firmware update succeeded", v163, v164}];

    goto LABEL_176;
  }

  v76 = +[NSMutableDictionary dictionary];
  [v76 setObject:@"Update Aborted after signature xmit" forKeyedSubscript:@"Notes"];
LABEL_94:
  sub_10000BAB0();
  v49 = [v103 errorWithDomain:? code:? userInfo:?];
  v79 = *(&self->super.super.isa + v223);
  v82 = v233;
LABEL_74:
  v83 = [v82 objectForKeyedSubscript:@"Hardware Device Class"];
  v84 = [(USBCUSBFirmwareUpdater *)self DeviceSerialNumber];
  [(FudPluginDelegate *)v79 log:1 format:@"%@ with S/N %@ - Update aborted", v83, v84];

  v85 = [(USBCUSBFirmwareUpdater *)self ExitUpdateMode:0];
LABEL_75:

LABEL_76:
  if (v235)
  {
    v235[2](100.0);
  }

  if (v49)
  {
    v87 = v225;
    v86 = v226;
    if ([(USBCPDAccess *)self->super._pdAccess didFailErrorRecovery:v49])
    {
      v88 = +[NSMutableDictionary dictionary];
      [v88 setObject:v49 forKeyedSubscript:@"Previous Error Response"];
      v89 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13076 userInfo:v88];

      v49 = v89;
    }

    v91 = +[NSMutableDictionary dictionary];
    v92 = v91;
    if (v49)
    {
      [v91 setObject:v49 forKeyedSubscript:@"Previous Error Response"];
    }

    v90 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:10496 userInfo:v92];

    v93 = self->super._delegate;
    v94 = [v233 objectForKeyedSubscript:@"Hardware Device Class"];
    v95 = [(USBCUSBFirmwareUpdater *)self DeviceSerialNumber];
    [(FudPluginDelegate *)v93 log:1 format:@"%@ with S/N %@ - Accessory firmware update failed: %@", v94, v95, v90];

    if (v227)
    {
LABEL_86:
      (v227)[2](v227, 0, v90);
    }
  }

  else
  {
    v90 = 0;
    v87 = v225;
    v86 = v226;
    if (v227)
    {
      goto LABEL_86;
    }
  }

  return v90;
}

@end