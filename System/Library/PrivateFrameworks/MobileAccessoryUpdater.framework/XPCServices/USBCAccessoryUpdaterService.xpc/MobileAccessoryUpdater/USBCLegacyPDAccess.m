@interface USBCLegacyPDAccess
- (BOOL)attemptErrorRecovery:(id)a3 lastAttempt:(BOOL)a4;
- (USBCLegacyPDAccess)initWithPDController:(id)a3;
- (id)DeviceAttached:(BOOL *)a3;
- (id)DeviceInAlternateMode:(BOOL *)a3;
- (id)VerifyEmptyPortAndReset:(id)a3 blessCallback:(id)a4;
- (id)getVDM:(unsigned int *)a3 ofLength:(unsigned int *)a4;
- (id)readIECSRegister:(void *)a3 ofLength:(unsigned int)a4 atRegister:(unsigned int)a5 andOutReadLength:(unsigned int *)a6;
- (id)sendVDM:(unsigned int *)a3 ofLength:(unsigned int)a4;
- (id)waitForVDMAck:(unsigned int *)a3 count:(unsigned int)a4 retry:(BOOL *)a5 command:(unsigned __int8)a6 checkLength:(BOOL)a7;
- (id)writeIECSRegister:(const void *)a3 ofLength:(unsigned int)a4 atRegister:(unsigned int)a5;
@end

@implementation USBCLegacyPDAccess

- (USBCLegacyPDAccess)initWithPDController:(id)a3
{
  v6.receiver = self;
  v6.super_class = USBCLegacyPDAccess;
  v3 = [(USBCPDAccess *)&v6 initWithPDController:a3];
  v4 = v3;
  if (v3)
  {
    [(USBCLegacyPDAccess *)v3 setCached_sequence_num:255];
    [(USBCLegacyPDAccess *)v4 setStreamSequenceNumber:0];
  }

  return v4;
}

- (id)DeviceAttached:(BOOL *)a3
{
  v10 = 4;
  v11 = 0;
  v4 = [(USBCPDAccess *)self LocalIECSReadReg:&v11 bufferLength:4 registerAddress:126 returnedBufferLength:&v10];
  v5 = v4;
  LOBYTE(v6) = 0;
  if (!v4)
  {
    v6 = 0x3001u >> (v11 - 109);
    if ((v11 - 109) > 0xD)
    {
      LOBYTE(v6) = 0;
    }
  }

  if (a3)
  {
    *a3 = v6 & 1;
  }

  if (v4)
  {
    v7 = +[NSMutableDictionary dictionary];
    [v7 setObject:v5 forKeyedSubscript:@"Previous Error Response"];
    v8 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:6656 userInfo:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)attemptErrorRecovery:(id)a3 lastAttempt:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v33 = 0;
  v7 = [(USBCLegacyPDAccess *)self DeviceInAlternateMode:&v33];
  if (v7)
  {
    v15 = 0;
    v29 = 1;
    LOBYTE(v16) = v4;
    LOBYTE(v17) = v4;
    v10 = v6;
    goto LABEL_40;
  }

  v8 = v33;
  if (v33)
  {
    if ([(USBCPDAccess *)self didFailErrorRecovery:v6])
    {
      v9 = 0;
      v10 = v6;
      goto LABEL_44;
    }

    if (v6)
    {
      v31 = __PAIR64__(v4, v8);
      v32 = v6;
      v11 = 0;
      v15 = 0;
      v14 = 0;
      v17 = v4;
      v16 = v4;
      do
      {
        v18 = [v6 userInfo];
        v19 = [v6 code];
        if ((v19 >> 8) <= 0x1E)
        {
          v20 = 1 << SBYTE1(v19);
          v21 = v19 == 3;
          v22 = v21 | v16;
          v23 = v21 | v17;
          v24 = (v19 != 3) | v11;
          if (((1 << SBYTE1(v19)) & 0x48000000) != 0)
          {
            v25 = v22;
          }

          else
          {
            v25 = v16;
          }

          if (((1 << SBYTE1(v19)) & 0x48000000) == 0)
          {
            v23 = v17;
            v24 = v11;
          }

          if (((1 << SBYTE1(v19)) & 0x3000000) != 0)
          {
            v25 = v16;
            v26 = v17;
          }

          else
          {
            v26 = v23;
          }

          if (((1 << SBYTE1(v19)) & 0x3000000) != 0)
          {
            v27 = 1;
          }

          else
          {
            v27 = v14;
          }

          if (((1 << SBYTE1(v19)) & 0x3000000) != 0)
          {
            v24 = v11;
          }

          if ((v20 & 0xC00000) != 0)
          {
            v15 = 1;
          }

          else
          {
            v16 = v25;
            v17 = v26;
            v14 = v27;
          }

          if ((v20 & 0xC00000) == 0)
          {
            v11 = v24;
          }
        }

        v28 = [v18 objectForKeyedSubscript:@"Previous Error Response"];

        v6 = v28;
      }

      while (v28);
      goto LABEL_31;
    }

    v15 = 0;
    v10 = 0;
    v29 = 1;
    LOBYTE(v16) = v4;
LABEL_39:
    LOBYTE(v17) = v4;
    goto LABEL_40;
  }

  if (!v6)
  {
    v15 = 0;
    v29 = 0;
    v10 = 0;
    LOBYTE(v16) = 1;
    goto LABEL_39;
  }

  LODWORD(v31) = v33;
  HIDWORD(v31) = v4;
  v32 = v6;
  LOBYTE(v11) = 0;
  do
  {
    v12 = [v6 userInfo];
    LOBYTE(v11) = ([v6 code] >> 8 == 30) | v11;
    v13 = [v12 objectForKeyedSubscript:@"Previous Error Response"];

    v6 = v13;
  }

  while (v13);
  LOBYTE(v14) = 0;
  v15 = 0;
  LOBYTE(v16) = 1;
  LOBYTE(v17) = BYTE4(v31);
LABEL_31:
  if (v11)
  {
    usleep(0x4C4B40u);
    v10 = 0;
    v7 = 0;
    v6 = v32;
    v9 = v31;
LABEL_43:
    usleep(0x4C4B40u);
    goto LABEL_44;
  }

  v7 = 0;
  v6 = v32;
  if (v14)
  {
    usleep(0x4C4B40u);
    v9 = 0;
    v10 = 0;
    if ((v17 & 1) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v10 = 0;
  v29 = v31;
  v4 = HIDWORD(v31);
LABEL_40:
  if (v4)
  {
    usleep(0x4C4B40u);
  }

  v9 = v29 & ((v15 | v16) ^ 1);
  if ((v15 | v17))
  {
    goto LABEL_43;
  }

LABEL_44:

  return v9;
}

- (id)VerifyEmptyPortAndReset:(id)a3 blessCallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v33 = 0;
  v8 = [(USBCLegacyPDAccess *)self DeviceAttached:&v33];
  v9 = v33;
  v10 = v6;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    do
    {
      v13 = v12;
      v14 = [v12 userInfo];
      v15 = [v12 code] & 0xFFFFFFFFFFFFFF00;
      v9 = (v15 != 2816) & v9;
      v12 = [v14 objectForKeyedSubscript:@"Previous Error Response"];
    }

    while (v12 && v15 != 2816);
  }

  if (v7 && v9)
  {
    v28 = v8;
    v16 = v7[2](v7);
    v17 = objc_alloc_init(NSMutableString);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v30;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v29 + 1) + 8 * i);
          if ([v17 length])
          {
            [v17 appendString:@" "];
          }

          [(__CFString *)v23 rangeOfString:@" "];
          v24 = v17;
          if (v25)
          {
            [v17 appendString:@""];
            [v17 appendString:v23];
            v24 = v17;
            v26 = @"";
          }

          else
          {
            v26 = v23;
          }

          [v24 appendString:v26];
        }

        v20 = [v18 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v20);
    }

    system([v17 UTF8String]);
    v8 = v28;
  }

  return v8;
}

- (id)sendVDM:(unsigned int *)a3 ofLength:(unsigned int)a4
{
  v13 = 0;
  v12 = 0;
  v15 = 0;
  v14 = 0;
  if (a4 >= 7)
  {
    v5 = 7;
  }

  else
  {
    v5 = a4;
  }

  v11 = v5;
  __memcpy_chk();
  v6 = [(USBCPDAccess *)self LocalIECSWriteReg:&v11 bufferLength:(4 * (v5 & 0x1FFFFFFF)) | 1 registerAddress:9];
  if (v6 || ([(USBCPDAccess *)self LocalExecuteCommand:1934443606], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = +[NSMutableDictionary dictionary];
    [v8 setObject:v7 forKeyedSubscript:@"Previous Error Response"];
    v9 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:7168 userInfo:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)getVDM:(unsigned int *)a3 ofLength:(unsigned int *)a4
{
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v15 = 65;
  v7 = *a4;
  if (*a4 >= 8)
  {
    v7 = 7;
    *a4 = 7;
  }

  v8 = [(USBCPDAccess *)self LocalIECSReadReg:v16 bufferLength:(4 * v7) | 1 registerAddress:79 returnedBufferLength:&v15];
  if (v8)
  {
    v9 = v8;
    v10 = +[NSMutableDictionary dictionary];
    [v10 setObject:v9 forKeyedSubscript:@"Previous Error Response"];
    v11 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:7424 userInfo:v10];
  }

  else
  {
    v12 = LOBYTE(v16[0]) >> 5;
    if (v12 == [(USBCLegacyPDAccess *)self cached_sequence_num])
    {
      bzero(a3, 4 * *a4);
      v11 = 0;
      *a4 = 0;
    }

    else
    {
      [(USBCLegacyPDAccess *)self setCached_sequence_num:v12];
      v13 = v16[0] & 7;
      *a4 = v13;
      memcpy(a3, v16 + 1, 4 * v13);
      v11 = 0;
    }
  }

  return v11;
}

- (id)waitForVDMAck:(unsigned int *)a3 count:(unsigned int)a4 retry:(BOOL *)a5 command:(unsigned __int8)a6 checkLength:(BOOL)a7
{
  v27 = a7;
  v7 = a6;
  bzero(a3, 4 * a4);
  v11 = 500;
  do
  {
    v12 = v11;
    v29 = a4;
    v13 = [(USBCLegacyPDAccess *)self getVDM:a3 ofLength:&v29];
    v14 = v29;
    if (!v13 && v29)
    {
      v15 = (*a3 & 0xF) != v7 || (*a3 & 0x30) == 0;
      if (v15 || (*a3 & 0x7C0) == 0 && v27)
      {
        v14 = 0;
        self->_cached_sequence_num = -1;
        v29 = 0;
      }
    }

    if (v12 <= 0x31)
    {
      v28 = 0;
      v16 = [(USBCLegacyPDAccess *)self DeviceInAlternateMode:&v28];
      if (v16)
      {
        v17 = +[NSMutableDictionary dictionary];
        v18 = v17;
        if (v13)
        {
          [v17 setObject:v16 forKeyedSubscript:@"Previous Error Response"];
        }

        [v18 setObject:@"Alternate mode check failed" forKeyedSubscript:@"Notes"];
        v19 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:7681 userInfo:v18];

        v13 = v19;
      }

      if (v28)
      {
        usleep(0x2710u);
      }

      else
      {
        v20 = +[NSMutableDictionary dictionary];
        v21 = v20;
        if (v13)
        {
          [v20 setObject:v13 forKeyedSubscript:@"Previous Error Response"];
        }

        [v21 setObject:@"Not in alternate mode as required" forKeyedSubscript:@"Notes"];
        v22 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:7682 userInfo:v21];

        v13 = v22;
      }

      v14 = v29;
    }

    if (v13)
    {
      break;
    }

    if (v14)
    {
      break;
    }

    v11 = v12 - 1;
  }

  while (v12 != 1);
  if (v12 == 1)
  {
    v23 = +[NSMutableDictionary dictionary];
    v24 = v23;
    if (v13)
    {
      [v23 setObject:v13 forKeyedSubscript:@"Previous Error Response"];
    }

    [v24 setObject:@"Retry counter expired" forKeyedSubscript:@"Notes"];
    v25 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:7683 userInfo:v24];

    v13 = v25;
  }

  return v13;
}

- (id)readIECSRegister:(void *)a3 ofLength:(unsigned int)a4 atRegister:(unsigned int)a5 andOutReadLength:(unsigned int *)a6
{
  v10 = 0;
  v38 = 0;
  v39 = 0;
  v41 = 0;
  v40 = 0;
  if (a4 >= 0x40)
  {
    v11 = 64;
  }

  else
  {
    v11 = a4;
  }

  v37 = 1;
  v12 = 25;
  do
  {
    if (!v12)
    {
      v12 = -1;
      goto LABEL_23;
    }

    v37 = 0;
    LODWORD(v38) = 95158787;
    HIDWORD(v38) = v11 | 0x1000000;
    LODWORD(v39) = a5;
    v13 = [(USBCLegacyPDAccess *)self sendVDM:&v38 ofLength:3];

    if (v13)
    {
      v10 = v13;
      goto LABEL_17;
    }

    do
    {
      v14 = [(USBCLegacyPDAccess *)self waitForVDMAck:&v38 count:7 retry:&v37 command:3 checkLength:0];
      if (v14)
      {
        v10 = v14;
        goto LABEL_17;
      }
    }

    while (v38 >> 15 != 2904);
    v15 = (v38 >> 4) & 3;
    if (v15 <= 1)
    {
      if (v15)
      {
        v10 = 0;
        goto LABEL_17;
      }

LABEL_15:
      v10 = 0;
      v37 = 1;
      goto LABEL_17;
    }

    if (v15 == 3)
    {
      goto LABEL_15;
    }

    v16 = +[NSMutableDictionary dictionary];
    [v16 setObject:@"Got NAK'd" forKeyedSubscript:@"Notes"];
    v10 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:6155 userInfo:v16];

LABEL_17:
    --v12;
  }

  while ((v37 & 1) != 0);
  if (!v12)
  {
    v17 = +[NSMutableDictionary dictionary];
    v18 = v17;
    if (v10)
    {
      [v17 setObject:v10 forKeyedSubscript:@"Previous Error Response"];
    }

    [v18 setObject:@"Retry counter expired" forKeyedSubscript:@"Notes"];
    v19 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:6159 userInfo:v18];

    v12 = 0;
    v10 = v19;
  }

LABEL_23:
  if (v10)
  {
    v20 = 0;
    goto LABEL_25;
  }

  v37 = 1;
  v20 = 0;
  v10 = 0;
  if (!v12)
  {
    goto LABEL_54;
  }

LABEL_36:
  while (2)
  {
    --v12;
    v37 = 0;
    if (v10 || v20 >= v11)
    {
      goto LABEL_25;
    }

    while (1)
    {
      v28 = (((v11 - v20) & 0x1F) << 6) | 0x5AC0001;
      if ((v11 - v20) > 0x18u)
      {
        v28 = 95159809;
      }

      LODWORD(v38) = v28;
      v29 = [(USBCLegacyPDAccess *)self sendVDM:&v38 ofLength:1];
      if (v29)
      {
        break;
      }

      v38 = 0xAA00AA00FF00FF00;
      v29 = [(USBCLegacyPDAccess *)self waitForVDMAck:&v38 count:7 retry:&v37 command:1 checkLength:1];
      if (v29)
      {
        break;
      }

      if (v38 >> 15 == 2904)
      {
        v30 = (v38 >> 4) & 3;
        if (v30 != 1)
        {
          if (!v30 || v30 == 3)
          {
            v10 = 0;
            v37 = 1;
            if (!v12)
            {
              goto LABEL_54;
            }

            goto LABEL_36;
          }

          v10 = 0;
          v37 = 0;
LABEL_25:
          if (!v12)
          {
            v21 = +[NSMutableDictionary dictionary];
            v22 = v21;
            if (v10)
            {
              [v21 setObject:v10 forKeyedSubscript:@"Previous Error Response"];
            }

            [v22 setObject:@"Retry counter expired" forKeyedSubscript:@"Notes"];
            v23 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:6159 userInfo:v22];

            v12 = 0;
            v10 = v23;
          }

          if (v10)
          {
            goto LABEL_30;
          }

LABEL_55:
          v32 = 0;
          v37 = 1;
          while (2)
          {
            if (!v12)
            {
              v24 = v32;
              goto LABEL_72;
            }

            v37 = 0;
            if (v20 >= v11)
            {
              v24 = v32;
            }

            else
            {
              v24 = v10;

              LODWORD(v38) = 95158276;
              v10 = [(USBCLegacyPDAccess *)self sendVDM:&v38 ofLength:1];

              if (!v10)
              {
                do
                {
                  v33 = [(USBCLegacyPDAccess *)self waitForVDMAck:&v38 count:7 retry:&v37 command:4 checkLength:0];
                  if (v33)
                  {
                    goto LABEL_64;
                  }
                }

                while (v38 >> 15 != 2904);
                v34 = (v38 >> 4) & 3;
                if (v34 > 1)
                {
                  if (v34 != 2)
                  {
                    goto LABEL_70;
                  }

                  v35 = +[NSMutableDictionary dictionary];
                  [v35 setObject:@"Got NAK'd" forKeyedSubscript:@"Notes"];
                  v10 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:6156 userInfo:v35];
                }

                else
                {
                  if (v34)
                  {
                    v33 = v24;
                    v24 = v33;
LABEL_64:
                    v10 = v33;
                    goto LABEL_66;
                  }

LABEL_70:
                  v10 = 0;
                  v37 = 1;
                }
              }
            }

LABEL_66:
            --v12;
            v32 = v24;
            if ((v37 & 1) == 0)
            {
              goto LABEL_31;
            }

            continue;
          }
        }

        v31 = (v38 >> 6) & 0x1F;
        memcpy(a3 + v20, &v38 + 4, v31);
        v20 += v31;
        *a6 = v20;
      }

      if (v20 >= v11)
      {
        v10 = 0;
        goto LABEL_48;
      }
    }

    v10 = v29;
LABEL_48:
    if ((v37 & 1) == 0)
    {
      goto LABEL_25;
    }

    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_54:
  v12 = -1;
  if (!v10)
  {
    goto LABEL_55;
  }

LABEL_30:
  v24 = 0;
LABEL_31:
  if (!v12)
  {
    v25 = +[NSMutableDictionary dictionary];
    v26 = v25;
    if (v10)
    {
      [v25 setObject:v10 forKeyedSubscript:@"Previous Error Response"];
    }

    [v26 setObject:@"Retry counter expired" forKeyedSubscript:@"Notes"];
    v27 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:6159 userInfo:v26];

    v10 = v27;
  }

LABEL_72:

  return v10;
}

- (id)writeIECSRegister:(const void *)a3 ofLength:(unsigned int)a4 atRegister:(unsigned int)a5
{
  v7 = 0;
  v33 = 0;
  v34 = 0;
  v36 = 0;
  v35 = 0;
  if (a4 >= 0x40)
  {
    v8 = 64;
  }

  else
  {
    v8 = a4;
  }

  v32 = 1;
  v9 = 25;
  do
  {
    if (!v9)
    {
      v9 = -1;
      goto LABEL_23;
    }

    v32 = 0;
    LODWORD(v33) = 95158787;
    HIDWORD(v33) = v8 | 0x1800000;
    LODWORD(v34) = a5;
    v10 = [(USBCLegacyPDAccess *)self sendVDM:&v33 ofLength:3];

    if (v10)
    {
      v7 = v10;
      goto LABEL_17;
    }

    do
    {
      v11 = [(USBCLegacyPDAccess *)self waitForVDMAck:&v33 count:7 retry:&v32 command:3 checkLength:0];
      if (v11)
      {
        v7 = v11;
        goto LABEL_17;
      }
    }

    while (v33 >> 15 != 2904);
    v12 = (v33 >> 4) & 3;
    if (v12 <= 1)
    {
      if (v12)
      {
        v7 = 0;
        goto LABEL_17;
      }

LABEL_15:
      v7 = 0;
      v32 = 1;
      goto LABEL_17;
    }

    if (v12 == 3)
    {
      goto LABEL_15;
    }

    v13 = +[NSMutableDictionary dictionary];
    [v13 setObject:@"Got NAK'd" forKeyedSubscript:@"Notes"];
    v7 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:6401 userInfo:v13];
    v32 = 1;

LABEL_17:
    --v9;
  }

  while ((v32 & 1) != 0);
  if (!v9)
  {
    v14 = +[NSMutableDictionary dictionary];
    v15 = v14;
    if (v7)
    {
      [v14 setObject:v7 forKeyedSubscript:@"Previous Error Response"];
    }

    [v15 setObject:@"Retry counter expired" forKeyedSubscript:@"Notes"];
    v16 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:6402 userInfo:v15];

    v9 = 0;
    v7 = v16;
  }

LABEL_23:
  v17 = 0;
  if (!v7)
  {
    v32 = 1;
    while (1)
    {
      if (!v9)
      {
        v9 = -1;
        if (!v7)
        {
          goto LABEL_53;
        }

        goto LABEL_66;
      }

      v32 = 0;
      if (!v7 && v17 < v8)
      {
        break;
      }

LABEL_45:
      --v9;
      if ((v32 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    while (1)
    {
      if ((v8 - v17) <= 0x18u)
      {
        v18 = v8 - v17;
      }

      else
      {
        v18 = 24;
      }

      __memcpy_chk();
      LODWORD(v33) = ((v18 & 0x1F) << 6) | 0x5AC0002;
      v19 = [(USBCLegacyPDAccess *)self sendVDM:&v33 ofLength:((v18 + 3) >> 2) + 1];
      if (v19 || ([(USBCLegacyPDAccess *)self waitForVDMAck:&v33 count:7 retry:&v32 command:2 checkLength:0], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v7 = v19;
        goto LABEL_45;
      }

      if (v33 >> 15 == 2904)
      {
        v20 = (v33 >> 4) & 3;
        if (v20 > 1)
        {
          if (v20 != 3)
          {
            v21 = +[NSMutableDictionary dictionary];
            [v21 setObject:@"Got NAK'd" forKeyedSubscript:@"Notes"];
            v7 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:6403 userInfo:v21];

            goto LABEL_45;
          }

LABEL_41:
          v32 = 1;
          goto LABEL_42;
        }

        if (!v20)
        {
          goto LABEL_41;
        }

        v17 += v18;
      }

LABEL_42:
      if (v17 >= v8)
      {
        v7 = 0;
        goto LABEL_45;
      }
    }
  }

LABEL_24:
  if (v9)
  {
    if (!v7)
    {
LABEL_53:
      v32 = 0;
      if (v17 >= v8)
      {
LABEL_61:
        v7 = 0;
      }

      else
      {
        LODWORD(v33) = 95158276;
        v25 = [(USBCLegacyPDAccess *)self sendVDM:&v33 ofLength:1];
        if (v25)
        {
LABEL_58:
          v7 = v25;
        }

        else
        {
          do
          {
            v25 = [(USBCLegacyPDAccess *)self waitForVDMAck:&v33 count:7 retry:&v32 command:4 checkLength:0];
            if (v25)
            {
              goto LABEL_58;
            }
          }

          while (v33 >> 15 != 2904);
          v26 = (v33 >> 4) & 3;
          if (v26 <= 1)
          {
            if (v26)
            {
              goto LABEL_61;
            }

            goto LABEL_70;
          }

          if (v26 == 3)
          {
LABEL_70:
            v7 = 0;
            v32 = 1;
            goto LABEL_62;
          }

          v31 = +[NSMutableDictionary dictionary];
          [v31 setObject:@"Got NAK'd" forKeyedSubscript:@"Notes"];
          v7 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:6405 userInfo:v31];
        }
      }

LABEL_62:
      if (v9 == 1)
      {
LABEL_63:
        v27 = +[NSMutableDictionary dictionary];
        v28 = v27;
        if (v7)
        {
          [v27 setObject:v7 forKeyedSubscript:@"Previous Error Response"];
        }

        [v28 setObject:@"Retry counter expired" forKeyedSubscript:@"Notes"];
        v29 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:6406 userInfo:v28];

        v7 = v29;
      }
    }
  }

  else
  {
    v22 = +[NSMutableDictionary dictionary];
    v23 = v22;
    if (v7)
    {
      [v22 setObject:v7 forKeyedSubscript:@"Previous Error Response"];
    }

    [v23 setObject:@"Retry counter expired" forKeyedSubscript:@"Notes"];
    v24 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:6404 userInfo:v23];

    v7 = v24;
    if (v24)
    {
      goto LABEL_63;
    }

    v32 = 1;
  }

LABEL_66:

  return v7;
}

- (id)DeviceInAlternateMode:(BOOL *)a3
{
  v15 = 4;
  v16 = 0;
  LOBYTE(v12) = 0;
  v5 = [(USBCLegacyPDAccess *)self IECSReadReg:1 buffer:&v16 bufferLength:4 registerAddress:126 returnedBufferLength:&v15 canRetry:0 canRecover:v12];
  if (v5)
  {
    goto LABEL_8;
  }

  if ((v16 - 109) > 0xD || ((1 << (v16 - 109)) & 0x3001) == 0)
  {
    v8 = 0;
    v7 = 0;
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  HIDWORD(v13) = 1;
  v15 = 4;
  v5 = [sub_100006E48() IECSWriteReg:? buffer:? bufferLength:? registerAddress:? canRetry:? canRecover:?];
  if (v5 || ([(USBCPDAccess *)self LocalExecuteCommand:1835292245 withDelay:0 canRetry:0 canRecover:0], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_8:
    v7 = v5;
    goto LABEL_9;
  }

  v15 = 4;
  LOBYTE(v13) = 0;
  v7 = [sub_100006E48() IECSReadReg:v13 buffer:? bufferLength:? registerAddress:? returnedBufferLength:? canRetry:? canRecover:?];
  if (v7)
  {
LABEL_9:
    v8 = 0;
    if (!a3)
    {
      goto LABEL_13;
    }

LABEL_12:
    *a3 = v8;
    goto LABEL_13;
  }

  v8 = v14 == 0;
  if (a3)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v7)
  {
    v9 = +[NSMutableDictionary dictionary];
    [v9 setObject:v7 forKeyedSubscript:@"Previous Error Response"];
    v10 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:6656 userInfo:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end