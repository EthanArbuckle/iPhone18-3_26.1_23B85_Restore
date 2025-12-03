@interface IAPSessionBasic
- (BOOL)bufferToAppHasSpaceAvailable;
- (BOOL)closeDataPipes;
- (BOOL)isPacketAvailable;
- (EAPacket)consumeNextOutPacket;
- (unint64_t)_sessionPacketsFromAppBytesFree;
- (unsigned)sendBytesToApp:(const char *)app length:(int)length;
- (void)_openPipeFromApp;
- (void)_openPipeToApp;
- (void)_readSessionDataFromAppThread;
- (void)_sessionBufferToAppHasSpaceAvailable;
- (void)_writeSessionDataFromAccThread;
- (void)dealloc;
- (void)recycleOutPacket:(EAPacket *)packet;
- (void)shuttingDownSession;
@end

@implementation IAPSessionBasic

- (void)shuttingDownSession
{
  if (((self + 16) & 7) == 0 && ((self + 24) & 3) == 0 && ((self + 30) & 1) == 0)
  {
    sub_1000DDE90(3u, @"%s:%s clientID=%@ connectionID=0x%x protocolID=%d sessionID=%d", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPSession.mm", "[IAPSessionBasic shuttingDownSession]", self->super._client, self->super._connectionID, self->super._protocolID, self->super._sessionID);
    v3 = sub_10004AB10();
    if (v3)
    {
      if ((v3 & 7) == 0)
      {
        sub_10004B0D4(v3, self->super._connectionID, self->super._sessionID);
        p_sessionPacketsFromAppCondition = &self->_sessionPacketsFromAppCondition;
        if ((&self->_sessionPacketsFromAppCondition & 7) == 0)
        {
          [(NSCondition *)*p_sessionPacketsFromAppCondition lock];
          p_numberOfSessionPacketsFromApp = &self->_numberOfSessionPacketsFromApp;
          if ((&self->_numberOfSessionPacketsFromApp & 3) == 0)
          {
            p_sessionPacketsFromApp = &self->_sessionPacketsFromApp;
            v7 = (&self->_sessionPacketsFromApp & 7) == 0;
            if (*p_numberOfSessionPacketsFromApp)
            {
              v8 = 0;
              while (v7)
              {
                v9 = *p_sessionPacketsFromApp;
                v10 = ~*p_sessionPacketsFromApp;
                if (8 * v8 > v10)
                {
                  goto LABEL_29;
                }

                v11 = &v9[8 * v8];
                if (!v9 || (v11 & 7) != 0)
                {
                  break;
                }

                v13 = *v11;
                if (*v11)
                {
                  if ((v13 & 7) != 0)
                  {
                    break;
                  }

                  (*(*v13 + 8))(v13);
                  v9 = *p_sessionPacketsFromApp;
                  v10 = ~*p_sessionPacketsFromApp;
                }

                if (8 * v8 > v10)
                {
                  goto LABEL_29;
                }

                if (!v9)
                {
                  break;
                }

                v14 = &v9[8 * v8];
                if ((v14 & 7) != 0)
                {
                  break;
                }

                *v14 = 0;
                ++v8;
                p_sessionPacketsFromApp = &self->_sessionPacketsFromApp;
                v7 = (&self->_sessionPacketsFromApp & 7) == 0;
                if (v8 >= *p_numberOfSessionPacketsFromApp)
                {
                  goto LABEL_24;
                }
              }
            }

            else
            {
LABEL_24:
              if (v7)
              {
                free(*p_sessionPacketsFromApp);
                *p_sessionPacketsFromApp = 0;
                [(NSCondition *)*p_sessionPacketsFromAppCondition unlock];

                *p_sessionPacketsFromAppCondition = 0;
                p_sessionDataFromAccCondition = &self->_sessionDataFromAccCondition;
                if ((&self->_sessionDataFromAccCondition & 7) == 0)
                {
                  [(NSCondition *)*p_sessionDataFromAccCondition lock];
                  p_sessionDataFromAcc = &self->_sessionDataFromAcc;
                  if ((&self->_sessionDataFromAcc & 7) == 0)
                  {

                    *p_sessionDataFromAcc = 0;
                    [(NSCondition *)*p_sessionDataFromAccCondition unlock];

                    *p_sessionDataFromAccCondition = 0;
                    v17.receiver = self;
                    v17.super_class = IAPSessionBasic;
                    [(IAPSession *)&v17 shuttingDownSession];
                    return;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  __break(0x5516u);
LABEL_29:
  __break(0x5513u);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IAPSessionBasic;
  [(IAPSession *)&v2 dealloc];
}

- (void)_openPipeToApp
{
  if ((self + 30))
  {
    goto LABEL_16;
  }

  if (((self + 24) & 3) != 0)
  {
    goto LABEL_16;
  }

  sub_1000DDE90(3u, @"SUCCESS - %s:%s - %d session=%d for connectionID=0x%x opened pipe to app", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPSession.mm", "[IAPSessionBasic _openPipeToApp]", 526, self->super._sessionID, self->super._connectionID);
  if (!self)
  {
    goto LABEL_16;
  }

  p_sessionDataFromAccThread = &self->_sessionDataFromAccThread;
  if ((&self->_sessionDataFromAccThread & 7) != 0)
  {
    goto LABEL_16;
  }

  if (*p_sessionDataFromAccThread)
  {
    NSLog(@"ERROR - %s:%s - %d session thread should be nil", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPSession.mm", "[IAPSessionBasic _openPipeToApp]", 529);
  }

  self->_openPipeToAppCompleted = 1;
  openPipeFromAppCompleted = self->_openPipeFromAppCompleted;
  if (openPipeFromAppCompleted >= 2)
  {
    goto LABEL_17;
  }

  if ((openPipeFromAppCompleted & 1) == 0)
  {
    return;
  }

  v5 = [[NSThread alloc] initWithTarget:self selector:"_writeSessionDataFromAccThread" object:0];
  *p_sessionDataFromAccThread = v5;
  [(NSThread *)v5 start];
  v6 = sub_10004AB10();
  if (!v6 || (v6 & 7) != 0 || (sub_10004B064(v6, self->super._connectionID, self->super._sessionID, self->super._protocolID), v7 = [[NSThread alloc] initWithTarget:self selector:"_readSessionDataFromAppThread" object:0], (&self->_sessionPacketsFromAppThread & 7) != 0))
  {
LABEL_16:
    __break(0x5516u);
LABEL_17:
    __break(0x550Au);
    return;
  }

  self->_sessionPacketsFromAppThread = v7;

  [(NSThread *)v7 start];
}

- (void)_openPipeFromApp
{
  if ((self + 30))
  {
    goto LABEL_16;
  }

  if (((self + 24) & 3) != 0)
  {
    goto LABEL_16;
  }

  sub_1000DDE90(3u, @"SUCCESS - %s:%s - %d session=%d for connectionID=0x%x opened pipe from app", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPSession.mm", "[IAPSessionBasic _openPipeFromApp]", 550, self->super._sessionID, self->super._connectionID);
  if (!self)
  {
    goto LABEL_16;
  }

  p_sessionPacketsFromAppThread = &self->_sessionPacketsFromAppThread;
  if ((&self->_sessionPacketsFromAppThread & 7) != 0)
  {
    goto LABEL_16;
  }

  if (*p_sessionPacketsFromAppThread)
  {
    NSLog(@"ERROR - %s:%s - %d session thread should be nil", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPSession.mm", "[IAPSessionBasic _openPipeFromApp]", 553);
  }

  self->_openPipeFromAppCompleted = 1;
  openPipeToAppCompleted = self->_openPipeToAppCompleted;
  if (openPipeToAppCompleted >= 2)
  {
    goto LABEL_17;
  }

  if ((openPipeToAppCompleted & 1) == 0)
  {
    return;
  }

  v5 = [[NSThread alloc] initWithTarget:self selector:"_writeSessionDataFromAccThread" object:0];
  if ((&self->_sessionDataFromAccThread & 7) != 0 || (self->_sessionDataFromAccThread = v5, [(NSThread *)v5 start], (v6 = sub_10004AB10()) == 0) || (v6 & 7) != 0)
  {
LABEL_16:
    __break(0x5516u);
LABEL_17:
    __break(0x550Au);
    return;
  }

  sub_10004B064(v6, self->super._connectionID, self->super._sessionID, self->super._protocolID);
  v7 = [[NSThread alloc] initWithTarget:self selector:"_readSessionDataFromAppThread" object:0];
  *p_sessionPacketsFromAppThread = v7;

  [(NSThread *)v7 start];
}

- (BOOL)closeDataPipes
{
  v14.receiver = self;
  v14.super_class = IAPSessionBasic;
  result = [(IAPSession *)&v14 closeDataPipes];
  if (!self)
  {
    goto LABEL_15;
  }

  p_sessionPacketsFromAppCondition = &self->_sessionPacketsFromAppCondition;
  if ((&self->_sessionPacketsFromAppCondition & 7) != 0)
  {
    goto LABEL_15;
  }

  result = [(NSCondition *)*p_sessionPacketsFromAppCondition lock];
  p_sessionPacketsFromAppThread = &self->_sessionPacketsFromAppThread;
  if ((&self->_sessionPacketsFromAppThread & 7) != 0)
  {
    goto LABEL_15;
  }

  [(NSThread *)*p_sessionPacketsFromAppThread cancel];
  [(NSCondition *)*p_sessionPacketsFromAppCondition signal];
  [(NSCondition *)*p_sessionPacketsFromAppCondition unlock];
  v6 = 1;
  v7 = 5000;
  do
  {
    result = [(NSThread *)*p_sessionPacketsFromAppThread isFinished];
    if (result)
    {
      break;
    }

    result = usleep(0x3E8u);
    v6 = (v6 + 1);
    --v7;
  }

  while (v7);
  p_sessionID = &self->super._sessionID;
  if (((self + 30) & 1) != 0 || (p_connectionID = &self->super._connectionID, (&self->super._connectionID & 3) != 0) || (sub_1000DDE90(3u, @"%s:%d session=%d connectionID=0x%x _sessionPacketsFromAppThread finished (iterationLimit %d)", "[IAPSessionBasic closeDataPipes]", 588, self->super._sessionID, self->super._connectionID, v6), *p_sessionPacketsFromAppThread, *p_sessionPacketsFromAppThread = 0, p_sessionDataFromAccCondition = &self->_sessionDataFromAccCondition, (&self->_sessionDataFromAccCondition & 7) != 0) || (result = [(NSCondition *)*p_sessionDataFromAccCondition lock], p_sessionDataFromAccThread = &self->_sessionDataFromAccThread, (p_sessionDataFromAccThread & 7) != 0))
  {
LABEL_15:
    __break(0x5516u);
  }

  else
  {
    [(NSThread *)*p_sessionDataFromAccThread cancel];
    [(NSCondition *)*p_sessionDataFromAccCondition signal];
    [(NSCondition *)*p_sessionDataFromAccCondition unlock];
    v12 = 1;
    v13 = 5000;
    do
    {
      if ([(NSThread *)*p_sessionDataFromAccThread isFinished])
      {
        break;
      }

      usleep(0x3E8u);
      v12 = (v12 + 1);
      --v13;
    }

    while (v13);
    sub_1000DDE90(3u, @"%s:%d session=%d connectionID=0x%x _sessionDataFromAccThread finished (iterationLimit %d)", "[IAPSessionBasic closeDataPipes]", 601, *p_sessionID, *p_connectionID, v12);

    *p_sessionDataFromAccThread = 0;
    return 1;
  }

  return result;
}

- (BOOL)isPacketAvailable
{
  if (!self)
  {
    goto LABEL_17;
  }

  selfCopy = self;
  p_sessionPacketsFromAppCondition = &self->_sessionPacketsFromAppCondition;
  if ((&self->_sessionPacketsFromAppCondition & 7) != 0)
  {
    goto LABEL_17;
  }

  LOBYTE(self) = [(NSCondition *)*p_sessionPacketsFromAppCondition lock];
  if ((&selfCopy->_sessionPacketsFromApp & 7) != 0 || (&selfCopy->_sessionPacketsFromAppReady & 3) != 0)
  {
    goto LABEL_17;
  }

  sessionPacketsFromApp = selfCopy->_sessionPacketsFromApp;
  sessionPacketsFromAppReady = selfCopy->_sessionPacketsFromAppReady;
  if (__CFADD__(sessionPacketsFromApp, 8 * sessionPacketsFromAppReady))
  {
LABEL_18:
    __break(0x5513u);
    return self;
  }

  v6 = &sessionPacketsFromApp[sessionPacketsFromAppReady];
  if (!sessionPacketsFromApp || (v6 & 7) != 0)
  {
LABEL_17:
    __break(0x5516u);
    goto LABEL_18;
  }

  self = *v6;
  if (!*v6)
  {
    goto LABEL_15;
  }

  if ((self & 7) != 0)
  {
    goto LABEL_17;
  }

  if (sub_1000B940C(self))
  {
    v8 = 1;
  }

  else
  {
LABEL_15:
    v8 = 0;
    selfCopy->_hasSessionPacketFromAppNotificationBeenPosted = 0;
  }

  [(NSCondition *)*p_sessionPacketsFromAppCondition unlock];
  LOBYTE(self) = v8;
  return self;
}

- (EAPacket)consumeNextOutPacket
{
  if (!self)
  {
    goto LABEL_37;
  }

  selfCopy = self;
  p_var14 = &self->var14;
  if ((&self->var14 & 7) != 0)
  {
    goto LABEL_37;
  }

  self = [*p_var14 lock];
  if ((&selfCopy->var18 & 7) != 0)
  {
    goto LABEL_37;
  }

  *&selfCopy->var18 = 0xFFFFFFFFLL;
  p_var15 = &selfCopy->var15;
  if ((&selfCopy->var15 & 7) != 0)
  {
    goto LABEL_37;
  }

  v5 = &selfCopy->var16 + 1;
  if (((&selfCopy->var16 + 4) & 3) != 0)
  {
    goto LABEL_37;
  }

  v6 = *p_var15;
  v7 = *v5;
  if (__CFADD__(*p_var15, 8 * v7))
  {
    goto LABEL_38;
  }

  v8 = &v6[8 * v7];
  if (v6)
  {
    v9 = (v8 & 7) == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    goto LABEL_37;
  }

  self = *v8;
  if (!*v8)
  {
    goto LABEL_31;
  }

  if ((self & 7) != 0)
  {
    goto LABEL_37;
  }

  self = sub_1000B940C(self);
  if (!self)
  {
LABEL_31:
    v13 = 0;
    LOBYTE(selfCopy->var28) = 0;
LABEL_36:
    [*p_var14 unlock];
    return v13;
  }

  v10 = *p_var15;
  v11 = *v5;
  if (__CFADD__(*p_var15, 8 * v11))
  {
    goto LABEL_38;
  }

  if (!v10)
  {
    goto LABEL_37;
  }

  v12 = &v10[8 * v11];
  if ((v12 & 7) != 0)
  {
    goto LABEL_37;
  }

  v13 = *v12;
  v21 = -21846;
  if ((selfCopy + 30))
  {
    goto LABEL_37;
  }

  v21 = bswap32(HIWORD(selfCopy->var3)) >> 16;
  if ((v13 & 7) != 0 || v13 == 0)
  {
    goto LABEL_37;
  }

  self = sub_1000B8FA0(v13, &v21, 2uLL);
  v15 = *p_var15;
  v16 = *v5;
  if (__CFADD__(*p_var15, 8 * v16))
  {
LABEL_38:
    __break(0x5513u);
    goto LABEL_39;
  }

  if (!v15)
  {
    goto LABEL_37;
  }

  v17 = &v15[8 * v16];
  if ((v17 & 7) != 0)
  {
    goto LABEL_37;
  }

  *v17 = 0;
  p_var16 = &selfCopy->var16;
  if ((&selfCopy->var16 & 3) != 0)
  {
    goto LABEL_37;
  }

  v19 = v16 + 1;
  if (v16 == *p_var16)
  {
    if (v16 != -1)
    {
      if (((&selfCopy[1].var1 + 4) & 3) == 0)
      {
        v20 = HIDWORD(selfCopy[1].var1) & v19;
        *p_var16 = v20;
LABEL_35:
        *v5 = v20;
        goto LABEL_36;
      }

      goto LABEL_37;
    }
  }

  else if (v16 != -1)
  {
    if (((&selfCopy[1].var1 + 4) & 3) == 0)
    {
      v20 = HIDWORD(selfCopy[1].var1) & v19;
      goto LABEL_35;
    }

LABEL_37:
    __break(0x5516u);
    goto LABEL_38;
  }

LABEL_39:
  __break(0x5500u);
  return self;
}

- (void)recycleOutPacket:(EAPacket *)packet
{
  if (!self)
  {
    goto LABEL_24;
  }

  p_sessionPacketsFromAppCondition = &self->_sessionPacketsFromAppCondition;
  if ((&self->_sessionPacketsFromAppCondition & 7) != 0)
  {
    goto LABEL_24;
  }

  [(NSCondition *)*p_sessionPacketsFromAppCondition lock];
  if (!packet || (packet & 7) != 0)
  {
    goto LABEL_24;
  }

  if ((packet->var25 & 4) == 0)
  {
    sub_1000E1D34();
  }

  if ((&self->_sessionPacketsBytesRemainingCached & 7) != 0)
  {
    goto LABEL_24;
  }

  self->_sessionPacketsBytesRemainingCached = 0xFFFFFFFFLL;
  p_sessionPacketsFromApp = &self->_sessionPacketsFromApp;
  if ((&self->_sessionPacketsFromApp & 7) != 0)
  {
    goto LABEL_24;
  }

  p_sessionPacketsFromAppTail = &self->_sessionPacketsFromAppTail;
  if ((&self->_sessionPacketsFromAppTail & 3) != 0)
  {
    goto LABEL_24;
  }

  v8 = *p_sessionPacketsFromApp;
  v9 = *p_sessionPacketsFromAppTail;
  if (__CFADD__(*p_sessionPacketsFromApp, 8 * v9))
  {
    goto LABEL_25;
  }

  if (!v8 || (v10 = &v8[v9], (v10 & 7) != 0))
  {
LABEL_24:
    __break(0x5516u);
    goto LABEL_25;
  }

  if (!*v10)
  {
    sub_1000B94C8(packet);
    v11 = *p_sessionPacketsFromApp;
    v12 = *p_sessionPacketsFromAppTail;
    if (!__CFADD__(*p_sessionPacketsFromApp, 8 * v12))
    {
      if (v11)
      {
        v13 = &v11[v12];
        if ((v13 & 7) == 0)
        {
          *v13 = packet;
          v14 = __CFADD__(v12, 1);
          v15 = v12 + 1;
          if (v14)
          {
LABEL_26:
            __break(0x5500u);
            return;
          }

          if ((&self->_numberOfSessionPacketsFromAppMask & 3) == 0)
          {
            *p_sessionPacketsFromAppTail = self->_numberOfSessionPacketsFromAppMask & v15;
            goto LABEL_20;
          }
        }
      }

      goto LABEL_24;
    }

LABEL_25:
    __break(0x5513u);
    goto LABEL_26;
  }

  NSLog(@"ERROR - %s::%s - %d replacing unused buffer", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPSession.mm", "[IAPSessionBasic recycleOutPacket:]", 667);
LABEL_20:
  [(NSCondition *)*p_sessionPacketsFromAppCondition signal];
  v16 = *p_sessionPacketsFromAppCondition;

  [(NSCondition *)v16 unlock];
}

- (BOOL)bufferToAppHasSpaceAvailable
{
  p_sock = &self->super._sock;
  if ((&self->super._sock & 3) != 0)
  {
    goto LABEL_11;
  }

  if (*p_sock != -1)
  {
    selfCopy = self;
    p_sessionDataFromAccCondition = &self->_sessionDataFromAccCondition;
    if ((&self->_sessionDataFromAccCondition & 7) == 0)
    {
      LOBYTE(self) = [(NSCondition *)*p_sessionDataFromAccCondition lock];
      if (*p_sock == -1)
      {
        v5 = 0;
        goto LABEL_9;
      }

      if ((&selfCopy->_sessionDataFromAcc & 7) == 0)
      {
        v5 = [(NSMutableData *)selfCopy->_sessionDataFromAcc length]< 0x40000;
LABEL_9:
        [(NSCondition *)*p_sessionDataFromAccCondition unlock];
        goto LABEL_10;
      }
    }

LABEL_11:
    __break(0x5516u);
    return self;
  }

  v5 = 0;
LABEL_10:
  LOBYTE(self) = v5;
  return self;
}

- (unsigned)sendBytesToApp:(const char *)app length:(int)length
{
  if ((&self->super._sock & 3) != 0)
  {
    goto LABEL_15;
  }

  if (self->super._sock != -1)
  {
    selfCopy = self;
    LODWORD(self) = [(IAPSessionBasic *)self bufferToAppHasSpaceAvailable];
    if (!self)
    {
      length = 0;
LABEL_12:
      if ((&selfCopy->super._client & 7) == 0)
      {
        [(IAPEAClient *)selfCopy->super._client takeProcessAssertion:@"external-accessory.incoming-packet"];
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    p_sessionDataFromAccCondition = &selfCopy->_sessionDataFromAccCondition;
    if ((&selfCopy->_sessionDataFromAccCondition & 7) == 0)
    {
      LODWORD(self) = [*p_sessionDataFromAccCondition lock];
      p_sessionDataFromAcc = &selfCopy->_sessionDataFromAcc;
      if ((&selfCopy->_sessionDataFromAcc & 7) == 0)
      {
        self = [*p_sessionDataFromAcc length];
        if (__CFADD__(self, length))
        {
LABEL_16:
          __break(0x5500u);
LABEL_17:
          __break(0x5515u);
          return self;
        }

        if (self + length > 0x40000)
        {
          LODWORD(self) = [*p_sessionDataFromAcc length];
          length = 0x40000 - self;
          if (self > 0x40000)
          {
            goto LABEL_17;
          }
        }

        [*p_sessionDataFromAcc appendBytes:app length:length];
        [*p_sessionDataFromAccCondition signal];
        LODWORD(self) = [*p_sessionDataFromAccCondition unlock];
        goto LABEL_12;
      }
    }

LABEL_15:
    __break(0x5516u);
    goto LABEL_16;
  }

  length = 0;
LABEL_14:
  LODWORD(self) = length;
  return self;
}

- (unint64_t)_sessionPacketsFromAppBytesFree
{
  if (!self)
  {
    goto LABEL_32;
  }

  selfCopy = self;
  v3 = (self + 120);
  if (((self + 120) & 7) != 0)
  {
    goto LABEL_32;
  }

  selfCopy2 = *v3;
  if (*v3 != 0xFFFFFFFF)
  {
    return selfCopy2;
  }

  v5 = (self + 96);
  if (((self + 96) & 7) != 0)
  {
    goto LABEL_32;
  }

  v6 = (self + 104);
  if (((self + 104) & 3) != 0)
  {
    goto LABEL_32;
  }

  v7 = *v5;
  v8 = *v6;
  if (__CFADD__(*v5, 8 * v8))
  {
LABEL_28:
    __break(0x5513u);
LABEL_29:
    selfCopy2 = 0;
    goto LABEL_30;
  }

  v9 = (v7 + 8 * v8);
  if (v7)
  {
    v10 = (v9 & 7) == 0;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    goto LABEL_32;
  }

  self = *v9;
  if (!*v9)
  {
    goto LABEL_29;
  }

  if ((self & 7) != 0)
  {
LABEL_32:
    __break(0x5516u);
    goto LABEL_33;
  }

  self = sub_1000B9424(self);
  selfCopy2 = self;
  if (!self)
  {
LABEL_30:
    *v3 = selfCopy2;
    return selfCopy2;
  }

  if (*v6 != -1)
  {
    v11 = (selfCopy + 172);
    if ((v11 & 3) == 0)
    {
      v12 = *v11 & (*v6 + 1);
      v13 = *v5;
      if (!__CFADD__(*v5, 8 * v12))
      {
        v14 = (v13 + 8 * v12);
        while (v13 && (v14 & 7) == 0)
        {
          self = *v14;
          if (!*v14 || v12 == *v6)
          {
            goto LABEL_30;
          }

          if ((self & 7) != 0)
          {
            goto LABEL_32;
          }

          self = sub_1000B9424(self);
          v15 = __CFADD__(selfCopy2, self);
          selfCopy2 += self;
          if (v15 || v12 == -1)
          {
            goto LABEL_33;
          }

          LODWORD(v12) = *v11 & (v12 + 1);
          v13 = *v5;
          v14 = (*v5 + 8 * v12);
          if (__CFADD__(*v5, 8 * v12))
          {
            goto LABEL_28;
          }
        }

        goto LABEL_32;
      }

      goto LABEL_28;
    }

    goto LABEL_32;
  }

LABEL_33:
  __break(0x5500u);
  return self;
}

- (void)_readSessionDataFromAppThread
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v61.fds_bits[24] = v2;
  *&v61.fds_bits[28] = v2;
  *&v61.fds_bits[16] = v2;
  *&v61.fds_bits[20] = v2;
  *&v61.fds_bits[8] = v2;
  *&v61.fds_bits[12] = v2;
  *v61.fds_bits = v2;
  *&v61.fds_bits[4] = v2;
  if (self)
  {
    p_sessionPacketsFromAppThread = &self->_sessionPacketsFromAppThread;
    if ((&self->_sessionPacketsFromAppThread & 7) == 0)
    {
      if ([(NSThread *)*p_sessionPacketsFromAppThread isCancelled])
      {
        return;
      }

      p_sock = &self->super._sock;
      p_connectionID = &self->super._connectionID;
      v56 = &self->super._connectionID & 3;
      p_sessionID = &self->super._sessionID;
      while ((&self->super._sock & 3) == 0)
      {
        if (*p_sock == -1)
        {
          return;
        }

        v6 = objc_autoreleasePoolPush();
        memset(&v61, 0, sizeof(v61));
        v7 = *p_sock;
        if (__darwin_check_fd_set_overflow(*p_sock, &v61, 0))
        {
          v8 = v7 >> 5;
          if (~&v61 < 4 * v8)
          {
            goto LABEL_108;
          }

          v61.fds_bits[v8] |= 1 << v7;
        }

        if (__OFADD__(*p_sock, 1))
        {
          goto LABEL_107;
        }

        v9 = select(*p_sock + 1, &v61, 0, 0, 0);
        if (![(NSThread *)*p_sessionPacketsFromAppThread isCancelled])
        {
          if (v9 == 1)
          {
            p_sessionPacketsFromAppCondition = &self->_sessionPacketsFromAppCondition;
            if ((&self->_sessionPacketsFromAppCondition & 7) != 0)
            {
              break;
            }

            [(NSCondition *)*p_sessionPacketsFromAppCondition lock];
            if (*p_sock != -1)
            {
              _sessionPacketsFromAppBytesFree = [(IAPSessionBasic *)self _sessionPacketsFromAppBytesFree];
              p_sessionPacketsFromApp = &self->_sessionPacketsFromApp;
              if ((&self->_sessionPacketsFromApp & 7) != 0)
              {
                break;
              }

              p_sessionPacketsFromAppHead = &self->_sessionPacketsFromAppHead;
              if ((&self->_sessionPacketsFromAppHead & 3) != 0)
              {
                break;
              }

              v12 = *p_sessionPacketsFromApp;
              v13 = *p_sessionPacketsFromAppHead;
              if (__CFADD__(*p_sessionPacketsFromApp, 8 * v13))
              {
                goto LABEL_108;
              }

              if (!v12)
              {
                break;
              }

              v14 = &v12[v13];
              if ((v14 & 7) != 0)
              {
                break;
              }

              v15 = *v14;
              if (*v14)
              {
                v16 = _sessionPacketsFromAppBytesFree;
                if (_sessionPacketsFromAppBytesFree >= 0x41)
                {
                  v17 = 0;
                  while ((v15 & 7) == 0)
                  {
                    v18 = sub_1000B9424(v15);
                    if (v18 >= 0x10000)
                    {
                      goto LABEL_109;
                    }

                    v19 = *(v15 + 24);
                    v20 = *(v15 + 128);
                    if (__CFADD__(v19, v20))
                    {
                      goto LABEL_108;
                    }

                    v21 = *p_sock;
                    if (v18 >= 0x2000)
                    {
                      v22 = 0x2000;
                    }

                    else
                    {
                      v22 = v18;
                    }

                    if (v16 >= v22)
                    {
                      v23 = v22;
                    }

                    else
                    {
                      v23 = v16;
                    }

                    v24 = recv(*p_sock, (v19 + v20), v23, 0);
                    v25 = v24;
                    if (v24 == -1)
                    {
                      v26 = __error();
                      if (!v26 || (v26 & 3) != 0)
                      {
                        goto LABEL_106;
                      }

                      v27 = *v26;
                      v28 = __error();
                      v30 = (v28 & 3) == 0 && v28 != 0;
                      if (v27 != 35)
                      {
                        if (!v30)
                        {
                          goto LABEL_106;
                        }

                        sub_1000DDEEC(3u, 3, "ERROR - %s:%s - %d error reading data from pipe (errno=%d)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPSession.mm", "[IAPSessionBasic _readSessionDataFromAppThread]", 793, *v28);
LABEL_79:
                        if ((v17 & 1) == 0)
                        {
                          goto LABEL_103;
                        }

LABEL_80:
                        hasSessionPacketFromAppNotificationBeenPosted = self->_hasSessionPacketFromAppNotificationBeenPosted;
                        if (hasSessionPacketFromAppNotificationBeenPosted > 1)
                        {
                          goto LABEL_111;
                        }

                        if ((hasSessionPacketFromAppNotificationBeenPosted & 1) == 0)
                        {
                          self->_hasSessionPacketFromAppNotificationBeenPosted = 1;
                          v44 = sub_10004AB10();
                          if (!v44 || (v44 & 7) != 0 || v56 || (p_sessionID & 1) != 0)
                          {
                            goto LABEL_106;
                          }

                          sub_10004B11C(v44, *p_connectionID, *p_sessionID);
                        }

                        if ((&self->_sessionPacketsFromAppTail & 3) != 0)
                        {
                          goto LABEL_106;
                        }

                        v45 = *p_sessionPacketsFromAppHead;
                        if (v45 == self->_sessionPacketsFromAppTail)
                        {
                          v46 = *p_sessionPacketsFromApp;
                          v47 = ~*p_sessionPacketsFromApp;
                          if (8 * v45 > v47)
                          {
                            goto LABEL_108;
                          }

                          if (!v46)
                          {
                            goto LABEL_106;
                          }

                          v48 = &v46[v45];
                          if ((v48 & 7) != 0)
                          {
                            goto LABEL_106;
                          }

                          if (*v48)
                          {
                            goto LABEL_103;
                          }

                          if ((p_sessionID & 1) != 0 || v56 || (&self->_sessionPacketsFromAppReady & 3) != 0)
                          {
                            goto LABEL_106;
                          }

                          sessionPacketsFromAppReady = self->_sessionPacketsFromAppReady;
                          v50 = &(*p_sessionPacketsFromApp)[sessionPacketsFromAppReady] + 1 < 0;
                          if (8 * sessionPacketsFromAppReady > v47)
                          {
                            goto LABEL_108;
                          }

                          v51 = &v46[sessionPacketsFromAppReady];
                          if ((v51 & 7) != 0)
                          {
                            goto LABEL_106;
                          }

                          v52 = *v51;
                          if (v52)
                          {
                            if ((v52 & 7) != 0)
                            {
                              goto LABEL_106;
                            }

                            var22 = v52->var22;
                          }

                          else
                          {
                            var22 = 0;
                          }

                          sub_1000DDE90(3u, @"session data from app buffer is full for session=%d and connectionID=0x%x head=%d(%hhx) tail=%d ready=%d(%hhx, payloadLen=%d)", *p_sessionID, self->super._connectionID, v45, 0, v45, sessionPacketsFromAppReady, v52, var22);
                          [(NSCondition *)*p_sessionPacketsFromAppCondition wait];
                        }

                        goto LABEL_103;
                      }

                      if (!v30)
                      {
                        goto LABEL_106;
                      }

                      if (*v28 == 35)
                      {
                        goto LABEL_79;
                      }
                    }

                    else if (!v24)
                    {
                      goto LABEL_79;
                    }

                    v31 = *(v15 + 128);
                    v32 = __OFADD__(v31, v25);
                    v33 = v31 + v25;
                    if (v32)
                    {
                      goto LABEL_107;
                    }

                    if (v33 >= 0x10000)
                    {
                      goto LABEL_109;
                    }

                    *(v15 + 128) = v33;
                    p_sessionPacketsBytesRemainingCached = &self->_sessionPacketsBytesRemainingCached;
                    if ((&self->_sessionPacketsBytesRemainingCached & 7) != 0)
                    {
                      goto LABEL_106;
                    }

                    v35 = *p_sessionPacketsBytesRemainingCached;
                    if (*p_sessionPacketsBytesRemainingCached != 0xFFFFFFFF)
                    {
                      v36 = v35 >= v25;
                      v37 = v35 - v25;
                      if (!v36)
                      {
                        goto LABEL_110;
                      }

                      *p_sessionPacketsBytesRemainingCached = v37;
                    }

                    v36 = v16 >= v25;
                    v16 -= v25;
                    if (!v36)
                    {
                      goto LABEL_110;
                    }

                    if (!sub_1000B9424(v15))
                    {
                      if (*p_sessionPacketsFromAppHead == -1)
                      {
                        goto LABEL_107;
                      }

                      if ((&self->_numberOfSessionPacketsFromAppMask & 3) != 0)
                      {
                        goto LABEL_106;
                      }

                      v38 = self->_numberOfSessionPacketsFromAppMask & (*p_sessionPacketsFromAppHead + 1);
                      *p_sessionPacketsFromAppHead = v38;
                      v39 = *p_sessionPacketsFromApp;
                      if (__CFADD__(*p_sessionPacketsFromApp, 8 * v38))
                      {
                        goto LABEL_108;
                      }

                      if (!v39)
                      {
                        goto LABEL_106;
                      }

                      v40 = &v39[v38];
                      if ((v40 & 7) != 0)
                      {
                        goto LABEL_106;
                      }

                      v41 = self->_hasSessionPacketFromAppNotificationBeenPosted;
                      if (v41 >= 2)
                      {
                        goto LABEL_111;
                      }

                      v15 = *v40;
                      if ((v41 & 1) == 0)
                      {
                        self->_hasSessionPacketFromAppNotificationBeenPosted = 1;
                        v42 = sub_10004AB10();
                        if (!v42 || (v42 & 7) != 0 || v56 || (p_sessionID & 1) != 0)
                        {
                          goto LABEL_106;
                        }

                        sub_10004B11C(v42, *p_connectionID, *p_sessionID);
                      }
                    }

                    if (v15)
                    {
                      v17 = 1;
                      if (v16 > 0x40)
                      {
                        continue;
                      }
                    }

                    goto LABEL_80;
                  }

                  break;
                }
              }
            }

LABEL_103:
            [(NSCondition *)*p_sessionPacketsFromAppCondition unlock];
          }

          else if (v9 == -1)
          {
            if (*p_sock != -1)
            {
              v10 = __error();
              if (!v10 || (v10 & 3) != 0)
              {
                break;
              }

              v54 = *v10;
              syslog(4, "ERROR - %s:%s - %d error waiting for read data, errno = %d");
            }
          }

          else
          {
            syslog(3, "ERROR - %s:%s - %d unknown error waiting for read data, %d");
          }
        }

        objc_autoreleasePoolPop(v6);
        if ([(NSThread *)*p_sessionPacketsFromAppThread isCancelled])
        {
          return;
        }
      }
    }
  }

LABEL_106:
  __break(0x5516u);
LABEL_107:
  __break(0x5500u);
LABEL_108:
  __break(0x5513u);
LABEL_109:
  __break(0x5507u);
LABEL_110:
  __break(0x5515u);
LABEL_111:
  __break(0x550Au);
}

- (void)_writeSessionDataFromAccThread
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v13.fds_bits[24] = v3;
  *&v13.fds_bits[28] = v3;
  *&v13.fds_bits[16] = v3;
  *&v13.fds_bits[20] = v3;
  *&v13.fds_bits[8] = v3;
  *&v13.fds_bits[12] = v3;
  *v13.fds_bits = v3;
  *&v13.fds_bits[4] = v3;
  v4 = dispatch_queue_create("com.apple.iapd.sessionQueue", 0);
  if (self)
  {
    p_sessionDataFromAccCondition = &self->_sessionDataFromAccCondition;
    if ((&self->_sessionDataFromAccCondition & 7) == 0)
    {
      v6 = v4;
      v7 = *p_sessionDataFromAccCondition;
      p_sessionDataFromAccThread = &self->_sessionDataFromAccThread;
      if ((&self->_sessionDataFromAccThread & 7) == 0)
      {
        if ([(NSThread *)*p_sessionDataFromAccThread isCancelled])
        {
LABEL_22:
          if (v6)
          {
LABEL_23:
            dispatch_release(v6);

            return;
          }

LABEL_25:
          __break(0x5510u);
        }

        else
        {
          p_sock = &self->super._sock;
          while ((&self->super._sock & 3) == 0)
          {
            v10 = *p_sock;
            if (v10 == -1)
            {
              goto LABEL_22;
            }

            memset(&v13, 0, sizeof(v13));
            if (__darwin_check_fd_set_overflow(v10, &v13, 0))
            {
              if (~&v13 < 4 * (v10 >> 5))
              {
                goto LABEL_28;
              }

              v13.fds_bits[v10 >> 5] |= 1 << v10;
            }

            if (__OFADD__(*p_sock, 1))
            {
              goto LABEL_27;
            }

            v11 = select(*p_sock + 1, 0, &v13, 0, 0);
            if (v11)
            {
              if (v11 == -1)
              {
                syslog(4, "ERROR - %s:%s - %d select failed\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPSession.mm", "[IAPSessionBasic _writeSessionDataFromAccThread]", 876);
                if (v6)
                {
                  goto LABEL_23;
                }

                goto LABEL_25;
              }

              [(NSCondition *)*p_sessionDataFromAccCondition lock];
              if ((&self->_sessionDataFromAcc & 7) != 0)
              {
                break;
              }

              if ([(NSMutableData *)self->_sessionDataFromAcc length])
              {
                if (!v6)
                {
                  goto LABEL_25;
                }

                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_100012CF8;
                block[3] = &unk_100111C88;
                block[4] = self;
                dispatch_async(v6, block);
              }

              if (![(NSThread *)*p_sessionDataFromAccThread isCancelled])
              {
                [(NSCondition *)*p_sessionDataFromAccCondition wait];
              }

              [(NSCondition *)*p_sessionDataFromAccCondition unlock];
            }

            if ([(NSThread *)*p_sessionDataFromAccThread isCancelled])
            {
              goto LABEL_22;
            }
          }
        }
      }
    }
  }

  __break(0x5516u);
LABEL_27:
  __break(0x5500u);
LABEL_28:
  __break(0x5513u);
}

- (void)_sessionBufferToAppHasSpaceAvailable
{
  if (!self)
  {
    goto LABEL_34;
  }

  p_sessionDataFromAccCondition = &self->_sessionDataFromAccCondition;
  if ((&self->_sessionDataFromAccCondition & 7) != 0)
  {
    goto LABEL_34;
  }

  [(NSCondition *)*p_sessionDataFromAccCondition lock];
  p_sessionDataFromAcc = &self->_sessionDataFromAcc;
  if ((&self->_sessionDataFromAcc & 7) != 0)
  {
    goto LABEL_34;
  }

  v5 = [(NSMutableData *)*p_sessionDataFromAcc length];
  if (![(NSMutableData *)*p_sessionDataFromAcc length])
  {
    v8 = *p_sessionDataFromAccCondition;

    [(NSCondition *)v8 unlock];
    return;
  }

  if ((&self->super._sock & 3) != 0)
  {
    goto LABEL_34;
  }

  v6 = send(self->super._sock, [(NSMutableData *)*p_sessionDataFromAcc bytes], [(NSMutableData *)*p_sessionDataFromAcc length], 0);
  if (v6 == -1)
  {
    v9 = __error();
    if (!v9 || (v9 & 3) != 0)
    {
      goto LABEL_34;
    }

    if (*v9 != 35)
    {
      if ((self + 30))
      {
        goto LABEL_34;
      }

      if ((&self->super._connectionID & 3) != 0)
      {
        goto LABEL_34;
      }

      sessionID = self->super._sessionID;
      connectionID = self->super._connectionID;
      v12 = __error();
      if (!v12 || (v12 & 3) != 0)
      {
        goto LABEL_34;
      }

      syslog(4, "ERROR - %s:%s - %d session=0x%x for connectionID=0x%x failed to write bytes, errno = %d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPSession.mm", "[IAPSessionBasic _sessionBufferToAppHasSpaceAvailable]", 909, sessionID, connectionID, *v12);
    }
  }

  else if (v6 >= 1)
  {
    [(NSMutableData *)*p_sessionDataFromAcc replaceBytesInRange:0 withBytes:v6 length:0, 0];
    v7 = 1;
    goto LABEL_21;
  }

  v7 = 0;
LABEL_21:
  if ([(NSMutableData *)*p_sessionDataFromAcc length])
  {
    [(NSCondition *)*p_sessionDataFromAccCondition signal];
  }

  [(NSCondition *)*p_sessionDataFromAccCondition unlock];
  v13 = v7 ^ 1;
  if (v5 < 0x40000)
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    v14 = sub_10004AB10();
    if (v14 && (v14 & 7) == 0 && (&self->super._connectionID & 3) == 0 && ((self + 30) & 1) == 0)
    {
      v15 = self->super._connectionID;
      v16 = self->super._sessionID;

      sub_10004B164(v14, v15, v16);
      return;
    }

LABEL_34:
    __break(0x5516u);
  }
}

@end