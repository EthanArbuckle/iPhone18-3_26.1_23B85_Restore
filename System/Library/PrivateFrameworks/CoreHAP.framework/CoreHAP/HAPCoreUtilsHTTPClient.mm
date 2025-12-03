@interface HAPCoreUtilsHTTPClient
- (HAPCoreUtilsHTTPClient)initWithQueue:(id)queue;
- (int)getPeerAddress:(void *)address maxLength:(unint64_t)length outLength:(unint64_t *)outLength;
- (int)sendMessage:(HTTPMessagePrivate *)message;
- (int)setDestination:(const char *)destination port:(int)port;
- (int)setProperty:(__CFString *)property value:(void *)value;
- (unsigned)getClientID;
- (void)dealloc;
- (void)invalidate;
- (void)setConnectionProgressHandler:(void *)handler context:(void *)context;
- (void)setContext:(void *)context;
- (void)setDebugDelegate:(id *)delegate;
- (void)setDelegate:(id *)delegate;
- (void)setDispatchQueue:(id)queue;
- (void)setFlags:(unsigned int)flags mask:(unsigned int)mask;
- (void)setTimeoutInSeconds:(int)seconds;
- (void)setTransportDelegate:(id *)delegate;
@end

@implementation HAPCoreUtilsHTTPClient

- (void)dealloc
{
  [(HAPCoreUtilsHTTPClient *)self invalidate];
  v3.receiver = self;
  v3.super_class = HAPCoreUtilsHTTPClient;
  [(HAPCoreUtilsHTTPClient *)&v3 dealloc];
}

- (unsigned)getClientID
{
  os_unfair_lock_lock_with_options();
  if ([(HAPCoreUtilsHTTPClient *)self isInvalidated])
  {
    ClientID = 0;
  }

  else
  {
    httpClient = self->_httpClient;
    ClientID = HTTPClientGetClientID();
  }

  os_unfair_lock_unlock(&self->_lock);
  return ClientID;
}

- (int)getPeerAddress:(void *)address maxLength:(unint64_t)length outLength:(unint64_t *)outLength
{
  os_unfair_lock_lock_with_options();
  if ([(HAPCoreUtilsHTTPClient *)self isInvalidated])
  {
    PeerAddress = -71148;
  }

  else if (self->_httpClient)
  {
    PeerAddress = HTTPClientGetPeerAddress();
  }

  else
  {
    PeerAddress = -6718;
  }

  os_unfair_lock_unlock(&self->_lock);
  return PeerAddress;
}

- (int)sendMessage:(HTTPMessagePrivate *)message
{
  os_unfair_lock_lock_with_options();
  if ([(HAPCoreUtilsHTTPClient *)self isInvalidated])
  {
    v4 = -71148;
  }

  else
  {
    httpClient = self->_httpClient;
    v4 = HTTPClientSendMessage();
  }

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (void)invalidate
{
  os_unfair_lock_lock_with_options();
  if (![(HAPCoreUtilsHTTPClient *)self isInvalidated])
  {
    if (self->_httpClient)
    {
      HTTPClientInvalidate();
      CFRelease(self->_httpClient);
      self->_httpClient = 0;
    }

    [(HAPCoreUtilsHTTPClient *)self setIsInvalidated:1];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setContext:(void *)context
{
  os_unfair_lock_lock_with_options();
  if (![(HAPCoreUtilsHTTPClient *)self isInvalidated])
  {
    httpClient = self->_httpClient;
    HTTPClientSetClientContext();
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setConnectionProgressHandler:(void *)handler context:(void *)context
{
  os_unfair_lock_lock_with_options();
  if (![(HAPCoreUtilsHTTPClient *)self isInvalidated])
  {
    httpClient = self->_httpClient;
    HTTPClientSetConnectionProgressHandler();
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setDebugDelegate:(id *)delegate
{
  os_unfair_lock_lock_with_options();
  if (![(HAPCoreUtilsHTTPClient *)self isInvalidated])
  {
    httpClient = self->_httpClient;
    HTTPClientSetDebugDelegate();
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setTransportDelegate:(id *)delegate
{
  os_unfair_lock_lock_with_options();
  if (![(HAPCoreUtilsHTTPClient *)self isInvalidated])
  {
    httpClient = self->_httpClient;
    HTTPClientSetTransportDelegate();
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setDelegate:(id *)delegate
{
  os_unfair_lock_lock_with_options();
  if (![(HAPCoreUtilsHTTPClient *)self isInvalidated])
  {
    httpClient = self->_httpClient;
    HTTPClientSetDelegate();
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (int)setDestination:(const char *)destination port:(int)port
{
  os_unfair_lock_lock_with_options();
  if ([(HAPCoreUtilsHTTPClient *)self isInvalidated])
  {
    v5 = -71148;
  }

  else
  {
    httpClient = self->_httpClient;
    v5 = HTTPClientSetDestination();
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (void)setTimeoutInSeconds:(int)seconds
{
  os_unfair_lock_lock_with_options();
  if (![(HAPCoreUtilsHTTPClient *)self isInvalidated])
  {
    httpClient = self->_httpClient;
    HTTPClientSetTimeout();
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setFlags:(unsigned int)flags mask:(unsigned int)mask
{
  os_unfair_lock_lock_with_options();
  if (![(HAPCoreUtilsHTTPClient *)self isInvalidated])
  {
    httpClient = self->_httpClient;
    HTTPClientSetFlags();
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setDispatchQueue:(id)queue
{
  queueCopy = queue;
  os_unfair_lock_lock_with_options();
  if (![(HAPCoreUtilsHTTPClient *)self isInvalidated])
  {
    httpClient = self->_httpClient;
    HTTPClientSetDispatchQueue();
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (int)setProperty:(__CFString *)property value:(void *)value
{
  os_unfair_lock_lock_with_options();
  if ([(HAPCoreUtilsHTTPClient *)self isInvalidated])
  {
    v5 = -71148;
  }

  else
  {
    httpClient = self->_httpClient;
    v5 = _HTTPClientSetProperty();
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (HAPCoreUtilsHTTPClient)initWithQueue:(id)queue
{
  queueCopy = queue;
  v10 = 0;
  if (HTTPClientCreate())
  {
    selfCopy = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HAPCoreUtilsHTTPClient;
    v6 = [(HAPCoreUtilsHTTPClient *)&v9 init];
    v7 = v6;
    if (v6)
    {
      v6->_httpClient = v10;
      [(HAPCoreUtilsHTTPClient *)v6 setDispatchQueue:queueCopy];
      v7->_isInvalidated = 0;
    }

    self = v7;
    selfCopy = self;
  }

  return selfCopy;
}

@end