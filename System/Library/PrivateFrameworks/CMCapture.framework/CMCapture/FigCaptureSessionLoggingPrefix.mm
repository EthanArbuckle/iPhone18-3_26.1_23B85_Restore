@interface FigCaptureSessionLoggingPrefix
- (char)initWithClientAuditToken:(uint64_t)token captureSession:;
- (id)description;
- (void)_updateLoggingPrefix;
- (void)dealloc;
@end

@implementation FigCaptureSessionLoggingPrefix

- (id)description
{
  pthread_rwlock_rdlock(&self->_stringValueLock);
  v3 = self->_stringValue;
  pthread_rwlock_unlock(&self->_stringValueLock);

  return v3;
}

- (void)_updateLoggingPrefix
{
  if (self->_clientPIDUsedForLoggingPrefix != self->_clientPID)
  {
    v10 = v2;
    v11 = v3;
    v5 = *&self->_clientAuditToken.val[4];
    v9[0] = *self->_clientAuditToken.val;
    v9[1] = v5;
    v6 = FigCaptureCopyClientCodeSigningIdentifier(v9);
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%p[%d][%@]>", self->_captureSession, self->_clientPID, v6];

    pthread_rwlock_wrlock(&self->_stringValueLock);
    stringValue = self->_stringValue;
    self->_stringValue = v7;
    pthread_rwlock_unlock(&self->_stringValueLock);
    self->_clientPIDUsedForLoggingPrefix = self->_clientPID;
  }
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->_stringValueLock);

  v3.receiver = self;
  v3.super_class = FigCaptureSessionLoggingPrefix;
  [(FigCaptureSessionLoggingPrefix *)&v3 dealloc];
}

- (char)initWithClientAuditToken:(uint64_t)token captureSession:
{
  if (!self)
  {
    return 0;
  }

  v10.receiver = self;
  v10.super_class = FigCaptureSessionLoggingPrefix;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  v6 = v5;
  if (v5)
  {
    *(v5 + 6) = token;
    pthread_rwlock_init((v5 + 56), 0);
    v8 = *a2;
    v9 = a2[1];
    *(v6 + 8) = *a2;
    *(v6 + 24) = v9;
    v11[0] = v8;
    v11[1] = v9;
    *(v6 + 10) = FigCaptureGetPIDFromAuditToken(v11);
    [v6 _updateLoggingPrefix];
    [v6 _updateLoggingPrefix];
  }

  return v6;
}

@end