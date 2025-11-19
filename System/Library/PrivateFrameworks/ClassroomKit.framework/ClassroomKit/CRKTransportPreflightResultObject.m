@interface CRKTransportPreflightResultObject
- (CRKTransportPreflightResultObject)initWithTransport:(id)a3 shouldResetBackoff:(BOOL)a4;
- (id)takeTransport;
- (void)dealloc;
@end

@implementation CRKTransportPreflightResultObject

- (void)dealloc
{
  if (self->_transport)
  {
    if (_CRKLogGeneral_onceToken_25 != -1)
    {
      [CRKTransportPreflightResultObject dealloc];
    }

    v3 = _CRKLogGeneral_logObj_25;
    if (os_log_type_enabled(_CRKLogGeneral_logObj_25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243550000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating transport that was not taken", buf, 2u);
    }

    [CRKTransportInvalidator invalidateTransport:self->_transport];
  }

  v4.receiver = self;
  v4.super_class = CRKTransportPreflightResultObject;
  [(CRKTransportPreflightResultObject *)&v4 dealloc];
}

- (CRKTransportPreflightResultObject)initWithTransport:(id)a3 shouldResetBackoff:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CRKTransportPreflightResultObject;
  v8 = [(CRKTransportPreflightResultObject *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_transport, a3);
    v9->_shouldResetBackoff = a4;
  }

  return v9;
}

- (id)takeTransport
{
  v3 = [(CRKTransportPreflightResultObject *)self transport];
  [(CRKTransportPreflightResultObject *)self setTransport:0];

  return v3;
}

@end