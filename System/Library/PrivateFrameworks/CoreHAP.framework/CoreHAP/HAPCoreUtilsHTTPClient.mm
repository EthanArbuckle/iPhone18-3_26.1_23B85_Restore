@interface HAPCoreUtilsHTTPClient
- (HAPCoreUtilsHTTPClient)initWithQueue:(id)a3;
- (int)getPeerAddress:(void *)a3 maxLength:(unint64_t)a4 outLength:(unint64_t *)a5;
- (int)sendMessage:(HTTPMessagePrivate *)a3;
- (int)setDestination:(const char *)a3 port:(int)a4;
- (int)setProperty:(__CFString *)a3 value:(void *)a4;
- (unsigned)getClientID;
- (void)dealloc;
- (void)invalidate;
- (void)setConnectionProgressHandler:(void *)a3 context:(void *)a4;
- (void)setContext:(void *)a3;
- (void)setDebugDelegate:(id *)a3;
- (void)setDelegate:(id *)a3;
- (void)setDispatchQueue:(id)a3;
- (void)setFlags:(unsigned int)a3 mask:(unsigned int)a4;
- (void)setTimeoutInSeconds:(int)a3;
- (void)setTransportDelegate:(id *)a3;
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

- (int)getPeerAddress:(void *)a3 maxLength:(unint64_t)a4 outLength:(unint64_t *)a5
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

- (int)sendMessage:(HTTPMessagePrivate *)a3
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

- (void)setContext:(void *)a3
{
  os_unfair_lock_lock_with_options();
  if (![(HAPCoreUtilsHTTPClient *)self isInvalidated])
  {
    httpClient = self->_httpClient;
    HTTPClientSetClientContext();
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setConnectionProgressHandler:(void *)a3 context:(void *)a4
{
  os_unfair_lock_lock_with_options();
  if (![(HAPCoreUtilsHTTPClient *)self isInvalidated])
  {
    httpClient = self->_httpClient;
    HTTPClientSetConnectionProgressHandler();
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setDebugDelegate:(id *)a3
{
  os_unfair_lock_lock_with_options();
  if (![(HAPCoreUtilsHTTPClient *)self isInvalidated])
  {
    httpClient = self->_httpClient;
    HTTPClientSetDebugDelegate();
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setTransportDelegate:(id *)a3
{
  os_unfair_lock_lock_with_options();
  if (![(HAPCoreUtilsHTTPClient *)self isInvalidated])
  {
    httpClient = self->_httpClient;
    HTTPClientSetTransportDelegate();
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setDelegate:(id *)a3
{
  os_unfair_lock_lock_with_options();
  if (![(HAPCoreUtilsHTTPClient *)self isInvalidated])
  {
    httpClient = self->_httpClient;
    HTTPClientSetDelegate();
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (int)setDestination:(const char *)a3 port:(int)a4
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

- (void)setTimeoutInSeconds:(int)a3
{
  os_unfair_lock_lock_with_options();
  if (![(HAPCoreUtilsHTTPClient *)self isInvalidated])
  {
    httpClient = self->_httpClient;
    HTTPClientSetTimeout();
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setFlags:(unsigned int)a3 mask:(unsigned int)a4
{
  os_unfair_lock_lock_with_options();
  if (![(HAPCoreUtilsHTTPClient *)self isInvalidated])
  {
    httpClient = self->_httpClient;
    HTTPClientSetFlags();
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setDispatchQueue:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  if (![(HAPCoreUtilsHTTPClient *)self isInvalidated])
  {
    httpClient = self->_httpClient;
    HTTPClientSetDispatchQueue();
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (int)setProperty:(__CFString *)a3 value:(void *)a4
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

- (HAPCoreUtilsHTTPClient)initWithQueue:(id)a3
{
  v4 = a3;
  v10 = 0;
  if (HTTPClientCreate())
  {
    v5 = 0;
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
      [(HAPCoreUtilsHTTPClient *)v6 setDispatchQueue:v4];
      v7->_isInvalidated = 0;
    }

    self = v7;
    v5 = self;
  }

  return v5;
}

@end