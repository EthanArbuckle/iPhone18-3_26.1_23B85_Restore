@interface USBCPDAccess
- (BOOL)didFailErrorRecovery:(id)recovery;
- (USBCPDAccess)initWithPDController:(id)controller;
- (id)DeviceInAlternateMode:(BOOL *)mode;
- (id)EnterUpdateMode:(id)mode;
- (id)localPollForIdle;
- (id)remotePollForIdle;
@end

@implementation USBCPDAccess

- (USBCPDAccess)initWithPDController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = USBCPDAccess;
  v6 = [(USBCPDAccess *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pdController, controller);
  }

  return v7;
}

- (BOOL)didFailErrorRecovery:(id)recovery
{
  recoveryCopy = recovery;
  v4 = recoveryCopy;
  v5 = 0;
  if (recoveryCopy)
  {
    v6 = recoveryCopy;
    do
    {
      userInfo = [v6 userInfo];
      v5 |= (([v6 code] >> 8) - 51) < 2;
      v8 = [userInfo objectForKeyedSubscript:@"Previous Error Response"];

      v6 = v8;
    }

    while (v8);
  }

  return v5 & 1;
}

- (id)EnterUpdateMode:(id)mode
{
  [(USBCPDAccess *)self doesNotRecognizeSelector:a2];

  return [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:3840 userInfo:0];
}

- (id)DeviceInAlternateMode:(BOOL *)mode
{
  [(USBCPDAccess *)self doesNotRecognizeSelector:a2];

  return [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:3840 userInfo:0];
}

- (id)localPollForIdle
{
  HIDWORD(v14) = 4;
  LOBYTE(v14) = 0;
  v3 = [(USBCPDAccess *)self IECSReadReg:1 buffer:v15 bufferLength:4 registerAddress:8 returnedBufferLength:&v14 + 4 canRetry:0 canRecover:v14];
  if (!v3)
  {
    v9 = 0;
    while (1)
    {
      if (HIDWORD(v14) == 4)
      {
        if (!v15[0])
        {
          v4 = 0;
          goto LABEL_5;
        }

        if (v15[0] == 1145914145)
        {
          v11 = +[NSMutableDictionary dictionary];
          [v11 setObject:@"got nCMD" forKeyedSubscript:@"Notes"];
          v12 = 5633;
LABEL_26:
          v4 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:v12 userInfo:v11];

          goto LABEL_5;
        }

        if (v9 >= 0x10)
        {
          break;
        }
      }

      if (v9 >= 0xA)
      {
        v4 = 0;
LABEL_18:
        usleep(0x2710u);
        if (++v9 == 51)
        {
          if (v4)
          {
            goto LABEL_5;
          }

          v11 = +[NSMutableDictionary dictionary];
          [v11 setObject:0 forKeyedSubscript:@"Previous Error Response"];
          v12 = 5634;
          goto LABEL_26;
        }

        goto LABEL_19;
      }

      usleep(0x3E8u);
      v4 = 0;
      ++v9;
LABEL_19:

      HIDWORD(v14) = 4;
      LOBYTE(v14) = 0;
      v10 = [(USBCPDAccess *)self IECSReadReg:1 buffer:v15 bufferLength:4 registerAddress:8 returnedBufferLength:&v14 + 4 canRetry:0 canRecover:v14];
      if (v10)
      {
        v4 = v10;
        if (v9 <= 0x31)
        {
          goto LABEL_3;
        }

        goto LABEL_5;
      }
    }

    BYTE3(v14) = 1;
    v4 = [(USBCPDAccess *)self DeviceInAlternateMode:&v14 + 3];
    if (BYTE3(v14) != 1)
    {
      v13 = +[NSMutableDictionary dictionary];
      v5 = v13;
      if (v4)
      {
        [v13 setObject:v4 forKeyedSubscript:@"Previous Error Response"];
      }

      [v5 setObject:@"Not in alternate mode" forKeyedSubscript:@"Notes"];
      v6 = 6913;
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  v4 = v3;
LABEL_3:
  v5 = +[NSMutableDictionary dictionary];
  [v5 setObject:v4 forKeyedSubscript:@"Previous Error Response"];
  v6 = 5632;
LABEL_4:
  v7 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:v6 userInfo:v5];

  v4 = v7;
LABEL_5:

  return v4;
}

- (id)remotePollForIdle
{
  v3 = 0;
  v4 = 0;
  memset(v14, 0, sizeof(v14));
  do
  {
    v5 = v4;
    HIDWORD(v12) = 4;
    LOBYTE(v12) = 0;
    v4 = [(USBCPDAccess *)self IECSReadReg:0 buffer:v14 bufferLength:4 registerAddress:8 returnedBufferLength:&v12 + 4 canRetry:0 canRecover:v12];

    if (!v4 && HIDWORD(v12) == 4)
    {
      if (!LODWORD(v14[0]))
      {
        goto LABEL_19;
      }

      if (LODWORD(v14[0]) == 1145914145)
      {
        v7 = +[NSMutableDictionary dictionary];
        [v7 setObject:@"got nCMD" forKeyedSubscript:@"Notes"];
        v8 = 5889;
        goto LABEL_15;
      }
    }

    if (v3 >= 6)
    {
      BYTE3(v12) = 0;
      v6 = [(USBCPDAccess *)self DeviceInAlternateMode:&v12 + 3];

      if (v6)
      {
        goto LABEL_16;
      }

      if ((v12 & 0x1000000) == 0)
      {
        sub_100013574(&v13);
        v6 = v13;
        if (!v13)
        {
          goto LABEL_19;
        }

LABEL_17:
        v9 = +[NSMutableDictionary dictionary];
        [v9 setObject:v6 forKeyedSubscript:@"Previous Error Response"];
        v10 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:5888 userInfo:v9];

        goto LABEL_20;
      }

      v4 = 0;
    }

    usleep(0x2710u);
    usleep(0x3E8u);
    ++v3;
  }

  while (v3 != 51);
  v6 = [(USBCPDAccess *)self LocalExecuteCommand:1414677057];

  usleep(0x4C4B40u);
  if (v6)
  {
    goto LABEL_17;
  }

  v7 = +[NSMutableDictionary dictionary];
  v8 = 5890;
LABEL_15:
  v6 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:v8 userInfo:v7];

LABEL_16:
  if (v6)
  {
    goto LABEL_17;
  }

LABEL_19:
  v10 = 0;
LABEL_20:

  return v10;
}

@end