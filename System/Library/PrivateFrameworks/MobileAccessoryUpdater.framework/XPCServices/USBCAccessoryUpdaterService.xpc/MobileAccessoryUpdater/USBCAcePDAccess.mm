@interface USBCAcePDAccess
- (BOOL)attemptErrorRecovery:(id)recovery lastAttempt:(BOOL)attempt;
- (USBCAcePDAccess)initWithPDController:(id)controller;
- (id)DeviceInAlternateMode:(BOOL *)mode;
- (id)VerifyEmptyPortAndReset:(id)reset blessCallback:(id)callback;
- (id)VerifyPowerRole;
@end

@implementation USBCAcePDAccess

- (USBCAcePDAccess)initWithPDController:(id)controller
{
  v4.receiver = self;
  v4.super_class = USBCAcePDAccess;
  result = [(USBCPDAccess *)&v4 initWithPDController:controller];
  if (result)
  {
    result->CurrentPowerRole = -1;
  }

  return result;
}

- (BOOL)attemptErrorRecovery:(id)recovery lastAttempt:(BOOL)attempt
{
  attemptCopy = attempt;
  recoveryCopy = recovery;
  verifyPowerRole2 = 0;
  v57 = 0;
  v8 = 0;
  v60 = 0;
  v64 = 0;
  v9 = 1;
  v10 = attemptCopy;
  v58 = attemptCopy;
  v61 = recoveryCopy;
  v11 = 1;
  while (1)
  {
    v59 = v9;
    v12 = [(USBCAcePDAccess *)self DeviceInAlternateMode:&v64];

    v13 = attemptCopy;
    if (v12)
    {
      goto LABEL_3;
    }

    if ((v64 & 1) == 0)
    {
      memset(v65, 0, sizeof(v65));
      v63 = 64;
      LOBYTE(v54) = 0;
      v30 = [(USBCAcePDAccess *)self IECSReadReg:1 buffer:v65 bufferLength:64 registerAddress:26 returnedBufferLength:&v63 canRetry:1 canRecover:v54];
      if (v30)
      {
        v14 = v30;
        LOBYTE(v11) = 0;
        v13 = attemptCopy;
        if ((attemptCopy & 1) == 0)
        {
          LOBYTE(attemptCopy) = 0;
          goto LABEL_61;
        }

        LOBYTE(attemptCopy) = 1;
        goto LABEL_60;
      }

      if ((~LOBYTE(v65[0]) & 0xD) == 0)
      {
        v10 = 1;
        v64 = 1;
        v56 = (v59 == 0) | attemptCopy;
        goto LABEL_7;
      }

      if ((v64 & 1) == 0)
      {
        v13 = 1;
LABEL_3:
        LOBYTE(v11) = 0;
        v14 = v12;
        if ((attemptCopy & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v11 = 0;
    }

    v56 = attemptCopy;
LABEL_7:
    verifyPowerRole = [(USBCAcePDAccess *)self VerifyPowerRole];
    v16 = verifyPowerRole != 0;

    if (recoveryCopy)
    {
      v55 = attemptCopy;
      while (1)
      {
        userInfo = [recoveryCopy userInfo];
        code = [recoveryCopy code];
        if ([(USBCPDAccess *)self didFailErrorRecovery:v61])
        {
LABEL_96:

          verifyPowerRole2 = 0;
          v47 = 0;
          goto LABEL_103;
        }

        v19 = code >> 8;
        if (code >> 8 <= 23)
        {
          v20 = v19 - 22;
          if (v19 == 21)
          {
            v21 = 1;
          }

          else
          {
            v21 = v11;
          }

          v22 = v19 == 20;
          if (v19 == 20)
          {
            v23 = 1;
          }

          else
          {
            v23 = v8;
          }

          if (v22)
          {
            v21 = v11;
          }

          v24 = v20 >= 2;
          v25 = v60;
          if (!v24)
          {
            v25 = 1;
          }

          v60 = v25;
          if (v24)
          {
            v8 = v23;
          }

          if (v24)
          {
            v11 = v21;
          }

          goto LABEL_49;
        }

        if (v19 <= 26)
        {
          if ((v19 - 24) < 2)
          {
            v26 = [userInfo objectForKeyedSubscript:@"Error Code"];
            v27 = v26;
            if (v26)
            {
              unsignedLongValue = [v26 unsignedLongValue];
              if (unsignedLongValue <= 2)
              {
                if (unsignedLongValue)
                {
                  if (unsignedLongValue != 2)
                  {
                    goto LABEL_41;
                  }

                  goto LABEL_42;
                }
              }

              else
              {
                switch(unsignedLongValue)
                {
                  case 3:
                    LOBYTE(attemptCopy) = 1;
                    v10 = 1;
                    break;
                  case 4:
                    v11 = 0;
                    break;
                  case 5:
                    LOBYTE(attemptCopy) = v58 & attemptCopy;
                    goto LABEL_43;
                  default:
LABEL_41:
                    v56 |= v59 == 0;
                    LOBYTE(attemptCopy) = 1;
LABEL_42:
                    v10 = 1;
LABEL_43:
                    v55 = 1;
                    break;
                }
              }
            }
          }
        }

        else if (v19 == 27)
        {
          v57 = 1;
        }

        else if (v19 == 55)
        {
          v16 = 1;
        }

        else if ((v19 - 51) < 2)
        {
          goto LABEL_96;
        }

LABEL_49:
        v29 = [userInfo objectForKeyedSubscript:@"Previous Error Response"];

        recoveryCopy = v29;
        if (!v29)
        {
          goto LABEL_55;
        }
      }
    }

    v55 = attemptCopy;
LABEL_55:
    v13 = v8 & (v60 ^ 1) | attemptCopy;
    if (v16)
    {
      recoveryCopy = 0;
      v14 = 0;
    }

    else
    {
      if ((v57 & 1) == 0)
      {
        recoveryCopy = 0;
        v14 = 0;
        v57 = 0;
        v13 |= v60;
        v10 |= v60;
        LOBYTE(attemptCopy) = v56;
        if ((v55 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      recoveryCopy = 0;
      v14 = 0;
      v13 &= v58;
      v57 = 1;
    }

    v10 = 1;
    LOBYTE(attemptCopy) = v56;
LABEL_60:
    usleep(0x3D0900u);
LABEL_61:
    if (v13 & 1) != 0 || (attemptCopy)
    {
      v31 = [(USBCPDAccess *)self LocalExecuteCommand:1414677057];
      if (v31)
      {
        v32 = +[NSMutableDictionary dictionary];
        [v32 setObject:v31 forKeyedSubscript:@"Recovery Error Response"];
        if (v14)
        {
          [v32 setObject:v14 forKeyedSubscript:@"Previous Error Response"];
        }

        v33 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13057 userInfo:v32];

        v14 = v33;
      }
    }

    if ((attemptCopy & 1) == 0)
    {
      verifyPowerRole2 = v14;
      if (v10)
      {
        goto LABEL_98;
      }

      goto LABEL_99;
    }

    v63 = 0x20000;
    v34 = [(PDController *)self->super._pdController registerWrite:&v63 ofLength:4 atAddress:19];
    if (v34)
    {
      v35 = v34;
      v36 = +[NSMutableDictionary dictionary];
      v37 = v36;
      if (v14)
      {
        [v36 setObject:v14 forKeyedSubscript:@"Previous Error Response"];
      }

      v38 = [NSNumber numberWithUnsignedLong:v35];
      [v37 setObject:v38 forKeyedSubscript:@"IOReturn result"];

      v39 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13058 userInfo:v37];

      v14 = v39;
    }

    verifyPowerRole2 = [(USBCAcePDAccess *)self VerifyPowerRole];

    if (verifyPowerRole2)
    {
      v40 = 0;
      do
      {
        v41 = verifyPowerRole2;
        usleep(0x3D0900u);
        verifyPowerRole2 = [(USBCAcePDAccess *)self VerifyPowerRole];

        v42 = verifyPowerRole2 != 0;
        if (v40 > 3)
        {
          break;
        }

        ++v40;
      }

      while (verifyPowerRole2);
    }

    else
    {
      v42 = 0;
    }

    v43 = [(USBCPDAccess *)self LocalExecuteCommand:1632978499 withDelay:0 canRetry:1 canRecover:0];
    if (v43)
    {
      v44 = +[NSMutableDictionary dictionary];
      [v44 setObject:v43 forKeyedSubscript:@"Recovery Error Response"];
      if (v42)
      {
        [v44 setObject:verifyPowerRole2 forKeyedSubscript:@"Previous Error Response"];
      }

      v45 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13059 userInfo:v44];

      verifyPowerRole2 = v45;
      goto LABEL_86;
    }

    v62 = 0;
    *&v65[0] = 4;
    v46 = [(PDController *)self->super._pdController registerRead:&v62 ofLength:4 atAddress:19 andOutReadLength:v65];
    if (v46)
    {
      break;
    }

    if ((~BYTE2(v62) & 0xC) != 0)
    {
      usleep(0x3D0900u);
      if (v10)
      {
LABEL_98:
        usleep(0x3D0900u);
      }

LABEL_99:
      v47 = 1;
      goto LABEL_103;
    }

LABEL_86:
    v11 = 0;
    v47 = 0;
    v10 |= v58;
    v9 = v59 - 1;
    LOBYTE(attemptCopy) = 1;
    if (!v59)
    {
      goto LABEL_103;
    }
  }

  v48 = v46;
  v49 = +[NSMutableDictionary dictionary];
  v50 = v49;
  if (v42)
  {
    [v49 setObject:verifyPowerRole2 forKeyedSubscript:@"Previous Error Response"];
  }

  v51 = [NSNumber numberWithUnsignedLong:v48];
  [v50 setObject:v51 forKeyedSubscript:@"IOReturn result"];

  v52 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:6148 userInfo:v50];

  verifyPowerRole2 = v52;
  v47 = v11;
LABEL_103:

  return v47 & 1;
}

- (id)VerifyPowerRole
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  HIDWORD(v15) = 64;
  v3 = [(USBCPDAccess *)self LocalIECSReadReg:&v17 bufferLength:64 registerAddress:26 returnedBufferLength:&v15 + 4];
  if (v3)
  {
    goto LABEL_18;
  }

  if ((~v17 & 0xD) == 0)
  {
    CurrentPowerRole = self->CurrentPowerRole;
    v5 = v17 & 0x20;
    if (CurrentPowerRole == 255)
    {
      v6 = 0;
      self->CurrentPowerRole = v5;
      goto LABEL_15;
    }

    if (CurrentPowerRole != v5)
    {
      v10 = +[NSMutableDictionary dictionary];
      v11 = [NSNumber numberWithChar:v17];
      [v10 setObject:v11 forKeyedSubscript:@"Error Code"];

      [v10 setObject:@"Power Role Changed" forKeyedSubscript:@"Notes"];
      v12 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:14083 userInfo:v10];
      self->CurrentPowerRole = v17 & 0x20;
    }

    LOBYTE(v15) = 0;
    v3 = [(USBCAcePDAccess *)self IECSReadReg:1 buffer:&v17 bufferLength:64 registerAddress:94 returnedBufferLength:&v15 + 4 canRetry:0 canRecover:v15];
    if (!v3)
    {
      if (HIDWORD(v15) > 0x11)
      {
        if (BYTE1(v18))
        {
LABEL_14:
          v6 = 0;
          goto LABEL_15;
        }

        v7 = +[NSMutableDictionary dictionary];
        v9 = 14085;
      }

      else
      {
        v7 = +[NSMutableDictionary dictionary];
        v9 = 14084;
      }

      goto LABEL_13;
    }

LABEL_18:
    v13 = v3;
    goto LABEL_19;
  }

  v7 = +[NSMutableDictionary dictionary];
  v8 = [NSNumber numberWithChar:v17];
  [v7 setObject:v8 forKeyedSubscript:@"Error Code"];

  v9 = 14082;
LABEL_13:
  v13 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:v9 userInfo:v7];

  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_19:
  sub_100011AF8(v13, &v16);
  v6 = v16;
LABEL_15:

  return v6;
}

- (id)VerifyEmptyPortAndReset:(id)reset blessCallback:(id)callback
{
  resetCopy = reset;
  callbackCopy = callback;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = [sub_100008234() LocalIECSReadReg:? bufferLength:? registerAddress:? returnedBufferLength:?];
  if (v8)
  {
    goto LABEL_43;
  }

  if ((((v39 & 0xF) - 13) & 0xFFFFFFFD) == 0)
  {
    v9 = 1;
    goto LABEL_6;
  }

  v8 = [sub_100008234() LocalIECSReadReg:? bufferLength:? registerAddress:? returnedBufferLength:?];
  if (v8)
  {
LABEL_43:
    v31 = v8;
    goto LABEL_40;
  }

  v9 = v39 != 0;
LABEL_6:
  v10 = !v9;
  v11 = resetCopy;
  if (v11)
  {
    v12 = v11;
    v33 = callbackCopy;
    v13 = resetCopy;
    do
    {
      v14 = v12;
      userInfo = [v12 userInfo];
      v16 = [v12 code] >> 8;
      v17 = v16 == 38 || v16 == 11;
      v18 = v17;
      if (v17)
      {
        v9 = 0;
      }

      if (v17)
      {
        v10 = 0;
      }

      v12 = [userInfo objectForKeyedSubscript:@"Previous Error Response"];
    }

    while (v12 && !v18);

    resetCopy = v13;
    callbackCopy = v33;
  }

  if (v10)
  {
    v19 = [(USBCPDAccess *)self LocalExecuteCommand:1414677057];
  }

  if (callbackCopy != 0 && v9)
  {
    v20 = callbackCopy[2](callbackCopy);
    v21 = objc_alloc_init(NSMutableString);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v22 = v20;
    v23 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v35;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v34 + 1) + 8 * i);
          if ([v21 length])
          {
            [v21 appendString:@" "];
          }

          [(__CFString *)v27 rangeOfString:@" "];
          v28 = v21;
          if (v29)
          {
            [v21 appendString:@""];
            [v21 appendString:v27];
            v28 = v21;
            v30 = @"";
          }

          else
          {
            v30 = v27;
          }

          [v28 appendString:v30];
        }

        v24 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v24);
    }

    system([v21 UTF8String]);
  }

  v31 = 0;
LABEL_40:

  return v31;
}

- (id)DeviceInAlternateMode:(BOOL *)mode
{
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  HIDWORD(v13) = 64;
  v14 = 4;
  v15 = 0;
  LOBYTE(v13) = 0;
  v5 = [(USBCAcePDAccess *)self IECSReadReg:1 buffer:&v15 bufferLength:4 registerAddress:26 returnedBufferLength:&v14 canRetry:0 canRecover:v13];
  if (v5)
  {
    goto LABEL_2;
  }

  if ((((v15 & 0xF) - 13) & 0xFFFFFFFD) != 0)
  {
LABEL_4:
    v7 = +[NSMutableDictionary dictionary];
    [v7 setObject:@"RemoteAttached == NO" forKeyedSubscript:@"Notes"];
    v6 = [sub_100008250() errorWithDomain:? code:? userInfo:?];

    goto LABEL_5;
  }

  HIDWORD(v13) = 64;
  v14 = 64;
  v12 = [(USBCPDAccess *)self LocalIECSReadReg:&v16 bufferLength:64 registerAddress:95 returnedBufferLength:&v13 + 4];
  if (v12)
  {
    v6 = v12;
    v8 = 1;
  }

  else
  {
    if (!v16)
    {
      goto LABEL_4;
    }

    HIDWORD(v13) = 64;
    v14 = 64;
    LOBYTE(v13) = 0;
    v5 = [(USBCAcePDAccess *)self IECSReadReg:1 buffer:&v16 bufferLength:64 registerAddress:94 returnedBufferLength:&v13 + 4 canRetry:0 canRecover:v13];
    if (v5)
    {
LABEL_2:
      v6 = v5;
LABEL_5:
      v8 = 0;
      goto LABEL_6;
    }

    if (HIDWORD(v13) >= 0x12)
    {
      v6 = 0;
      v8 = BYTE1(v17) & 1;
    }

    else
    {
      v8 = 0;
      v6 = 0;
    }
  }

LABEL_6:
  if (mode)
  {
    *mode = v8;
  }

  if (v6)
  {
    v9 = +[NSMutableDictionary dictionary];
    [v9 setObject:v6 forKeyedSubscript:@"Previous Error Response"];
    v10 = [sub_100008250() errorWithDomain:? code:? userInfo:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end