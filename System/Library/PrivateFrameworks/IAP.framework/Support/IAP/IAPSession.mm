@interface IAPSession
- (BOOL)closeDataPipes;
- (BOOL)openPipeFromApp;
- (BOOL)openPipeToApp;
- (id)description;
- (void)_acceptSocketCB:(__CFSocket *)b acceptedSock:(int)sock;
- (void)_registerListenSocket;
- (void)dealloc;
- (void)shuttingDownSession;
@end

@implementation IAPSession

- (void)shuttingDownSession
{
  if (((self + 16) & 7) != 0)
  {
    goto LABEL_29;
  }

  [(IAPEAClient *)self->_client decreaseSessionRefCount];
  if ((&self->_connectionID & 3) != 0)
  {
    goto LABEL_29;
  }

  if ((self + 30))
  {
    goto LABEL_29;
  }

  sub_1000DDE90(3u, @"%s:%s clientID=%@ connectionID=0x%x protocolID=%d sessionID=%d", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPSession.mm", "[IAPSession shuttingDownSession]", self->_client, self->_connectionID, self->_protocolID, self->_sessionID);
  v3 = sub_1000CC7A0();
  if (!v3 || (v3 & 7) != 0)
  {
    goto LABEL_29;
  }

  v4 = (*(*v3 + 96))(v3, self->_connectionID);
  v5 = v4 && (v4 & 7) == 0;
  if (!v5 || (v6 = (*(*v4 + 160))(v4), v7 = [(IAPEAClient *)self->_client bundleId], ((self + 8) & 7) != 0) || (v6 ? (v8 = (v6 & 7) == 0) : (v8 = 0), !v8))
  {
LABEL_29:
    __break(0x5516u);
    goto LABEL_30;
  }

  [IAPDataLogger PowerlogEASession:v7 forAccessory:self->_accessory forProtocolID:self->_protocolID forPortType:(*(*v6 + 208))(v6) isSessionOpen:0];
  isWirelessSession = self->_isWirelessSession;
  if (isWirelessSession >= 2)
  {
LABEL_30:
    __break(0x550Au);
    goto LABEL_31;
  }

  v10 = dword_10012B908;
  if ((isWirelessSession & 1) == 0)
  {
    v10 = dword_10012B908 - 1;
    if (!dword_10012B908)
    {
LABEL_31:
      __break(0x5515u);
      return;
    }

    --dword_10012B908;
  }

  if (!v10 && byte_10012B90C == 1)
  {
    if (IOPMAssertionRelease(dword_10012B910))
    {
      NSLog(@"ERROR - %s:%s - %d couldn't release sleep assertion", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPSession.mm", "[IAPSession shuttingDownSession]", 208);
    }

    else
    {
      byte_10012B90C = 0;

      sub_1000DDE90(3u, @"ea session power assertion released");
    }
  }
}

- (void)dealloc
{
  if (((self + 16) & 7) != 0 || (self->_client, self->_client = 0, ((self + 8) & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {

    self->_accessory = 0;
    v3.receiver = self;
    v3.super_class = IAPSession;
    [(IAPSession *)&v3 dealloc];
  }
}

- (BOOL)openPipeToApp
{
  if ((&self->_sockRef & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (self->_sockRef)
    {
      [(IAPSession *)self _openPipeToApp:v2];
    }

    else
    {
      self->_openPipeToAppAfterAccept = 1;
    }

    LOBYTE(self) = 1;
  }

  return self;
}

- (BOOL)openPipeFromApp
{
  if ((&self->_sockRef & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (self->_sockRef)
    {
      [(IAPSession *)self _openPipeFromApp:v2];
    }

    else
    {
      self->_openPipeFromAppAfterAccept = 1;
    }

    LOBYTE(self) = 1;
  }

  return self;
}

- (BOOL)closeDataPipes
{
  p_listenSockRls = &self->_listenSockRls;
  if ((&self->_listenSockRls & 7) != 0)
  {
    goto LABEL_20;
  }

  selfCopy = self;
  self = *p_listenSockRls;
  if (*p_listenSockRls)
  {
    CFRunLoopSourceInvalidate(self);
    CFRelease(*p_listenSockRls);
    *p_listenSockRls = 0;
  }

  p_listenSockRef = &selfCopy->_listenSockRef;
  if ((&selfCopy->_listenSockRef & 7) != 0)
  {
    goto LABEL_20;
  }

  self = *p_listenSockRef;
  if (*p_listenSockRef)
  {
    CFSocketInvalidate(self);
    CFRelease(*p_listenSockRef);
    *p_listenSockRef = 0;
  }

  p_listenSock = &selfCopy->_listenSock;
  if ((&selfCopy->_listenSock & 3) != 0)
  {
    goto LABEL_20;
  }

  LODWORD(self) = *p_listenSock;
  if ((*p_listenSock & 0x80000000) == 0)
  {
    LOBYTE(self) = close(self);
    *p_listenSock = -1;
  }

  p_sockRls = &selfCopy->_sockRls;
  if ((&selfCopy->_sockRls & 7) != 0)
  {
    goto LABEL_20;
  }

  self = *p_sockRls;
  if (*p_sockRls)
  {
    CFRunLoopSourceInvalidate(self);
    CFRelease(*p_sockRls);
    *p_sockRls = 0;
  }

  p_sockRef = &selfCopy->_sockRef;
  if ((&selfCopy->_sockRef & 7) != 0)
  {
    goto LABEL_20;
  }

  self = *p_sockRef;
  if (*p_sockRef)
  {
    CFSocketInvalidate(self);
    CFRelease(*p_sockRef);
    *p_sockRef = 0;
  }

  p_sock = &selfCopy->_sock;
  if ((p_sock & 3) != 0)
  {
LABEL_20:
    __break(0x5516u);
  }

  else
  {
    if ((*p_sock & 0x80000000) == 0)
    {
      close(*p_sock);
      *p_sock = -1;
    }

    LOBYTE(self) = 1;
  }

  return self;
}

- (void)_registerListenSocket
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __source[14] = v3;
  __source[15] = v3;
  __source[12] = v3;
  __source[13] = v3;
  __source[10] = v3;
  __source[11] = v3;
  __source[8] = v3;
  __source[9] = v3;
  __source[6] = v3;
  __source[7] = v3;
  __source[4] = v3;
  __source[5] = v3;
  __source[2] = v3;
  __source[3] = v3;
  __source[0] = v3;
  __source[1] = v3;
  if (((self + 24) & 3) != 0)
  {
    goto LABEL_11;
  }

  if ((self + 30))
  {
    goto LABEL_11;
  }

  connectionID = self->_connectionID;
  sessionID = self->_sessionID;
  IAPAppToAppSocketPath();
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(&v14[5] + 10) = v6;
  v14[4] = v6;
  v14[5] = v6;
  v14[2] = v6;
  v14[3] = v6;
  v14[0] = v6;
  v14[1] = v6;
  unlink(__source);
  v7 = socket(1, 1, 0);
  p_listenSock = &self->_listenSock;
  if ((&self->_listenSock & 3) != 0)
  {
    goto LABEL_11;
  }

  *p_listenSock = v7;
  memset(v14 + 2, 0, 104);
  LOWORD(v14[0]) = 362;
  strlcpy(v14 + 2, __source, 0x68uLL);
  if (bind(*p_listenSock, v14, 0x6Au))
  {
    NSLog(@"can't bind to ea address");
  }

  if (listen(*p_listenSock, 5))
  {
    NSLog(@"can't listen to socket");
  }

  context.version = 0;
  context.info = self;
  memset(&context.retain, 0, 24);
  v9 = CFSocketCreateWithNative(kCFAllocatorDefault, self->_listenSock, 2uLL, sub_100010FC8, &context);
  if (((self + 40) & 7) != 0 || (self->_listenSockRef = v9, RunLoopSource = CFSocketCreateRunLoopSource(kCFAllocatorDefault, v9, 0), p_listenSockRls = &self->_listenSockRls, (p_listenSockRls & 7) != 0))
  {
LABEL_11:
    __break(0x5516u);
  }

  *p_listenSockRls = RunLoopSource;
  Main = CFRunLoopGetMain();
  CFRunLoopAddSource(Main, *p_listenSockRls, kCFRunLoopDefaultMode);
}

- (void)_acceptSocketCB:(__CFSocket *)b acceptedSock:(int)sock
{
  v12 = 1;
  context.version = 0;
  context.info = self;
  memset(&context.retain, 0, 24);
  if (((self + 56) & 3) != 0)
  {
    goto LABEL_14;
  }

  self->_sock = sock;
  v6 = CFSocketCreateWithNative(0, sock, 9uLL, sub_100010FC8, &context);
  if (((self + 64) & 7) != 0)
  {
    goto LABEL_14;
  }

  self->_sockRef = v6;
  CFSocketDisableCallBacks(v6, 9uLL);
  RunLoopSource = CFSocketCreateRunLoopSource(kCFAllocatorDefault, self->_sockRef, 0);
  if (((self + 72) & 7) != 0)
  {
    goto LABEL_14;
  }

  self->_sockRls = RunLoopSource;
  Main = CFRunLoopGetMain();
  CFRunLoopAddSource(Main, self->_sockRls, kCFRunLoopDefaultMode);
  v11 = 0x20000;
  setsockopt(self->_sock, 0xFFFF, 4097, &v11, 4u);
  setsockopt(self->_sock, 0xFFFF, 4098, &v11, 4u);
  ioctl(sock, 0x8004667EuLL, &v12);
  if (((self + 48) & 7) != 0 || (CFRunLoopSourceInvalidate(self->_listenSockRls), CFRelease(self->_listenSockRls), self->_listenSockRls = 0, ((self + 40) & 7) != 0) || (CFSocketInvalidate(self->_listenSockRef), CFRelease(self->_listenSockRef), self->_listenSockRef = 0, ((self + 32) & 3) != 0))
  {
LABEL_14:
    __break(0x5516u);
LABEL_15:
    __break(0x550Au);
    return;
  }

  close(self->_listenSock);
  self->_listenSock = -1;
  openPipeToAppAfterAccept = self->_openPipeToAppAfterAccept;
  if (openPipeToAppAfterAccept >= 2)
  {
    goto LABEL_15;
  }

  if (openPipeToAppAfterAccept)
  {
    [(IAPSession *)self _openPipeToApp];
    self->_openPipeToAppAfterAccept = 0;
  }

  openPipeFromAppAfterAccept = self->_openPipeFromAppAfterAccept;
  if (openPipeFromAppAfterAccept > 1)
  {
    goto LABEL_15;
  }

  if (openPipeFromAppAfterAccept)
  {
    [(IAPSession *)self _openPipeFromApp];
    self->_openPipeFromAppAfterAccept = 0;
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = IAPSession;
  result = [(IAPSession *)&v4 description];
  if (((self + 16) & 7) == 0 && ((self + 24) & 3) == 0 && ((self + 30) & 1) == 0)
  {
    return [NSString stringWithFormat:@"%@ client=%@ connectionID=%u protocolID=%d sessionID=%d", result, self->_client, self->_connectionID, self->_protocolID, self->_sessionID];
  }

  __break(0x5516u);
  return result;
}

@end