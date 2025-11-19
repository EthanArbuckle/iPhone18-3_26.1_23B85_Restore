@interface HDFHIRCredentialedSession
- (HDFHIRCredentialedSession)initWithSpecification:(id)a3 credentialVendor:(id)a4;
- (id)consumeRefreshResult;
- (void)credentialVendor:(id)a3 refreshCredential:(id)a4 completion:(id)a5;
@end

@implementation HDFHIRCredentialedSession

- (HDFHIRCredentialedSession)initWithSpecification:(id)a3 credentialVendor:(id)a4
{
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HDFHIRCredentialedSession;
  v9 = [(HDFHIRSession *)&v12 initWithSpecification:a3];
  if (v9)
  {
    v10 = [v8 delegate];

    if (v10)
    {
      sub_10000C020(a2, v9);
    }

    [v8 setDelegate:v9];
    objc_storeStrong(&v9->_credentialVendor, a4);
    v9->_refreshLock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

- (id)consumeRefreshResult
{
  os_unfair_lock_lock(&self->_refreshLock);
  v3 = self->_refreshResult;
  refreshResult = self->_refreshResult;
  self->_refreshResult = 0;

  os_unfair_lock_unlock(&self->_refreshLock);

  return v3;
}

- (void)credentialVendor:(id)a3 refreshCredential:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [HDFHIRRefreshTokenTask alloc];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100008814;
  v17[3] = &unk_100018680;
  v10 = v7;
  v18 = v10;
  v19 = self;
  v11 = v8;
  v20 = v11;
  v12 = [(HDFHIRRefreshTokenTask *)v9 initWithSession:self credential:v10 completion:v17];
  _HKInitializeLogging();
  v13 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = objc_opt_class();
    *buf = 138543618;
    v22 = v15;
    v23 = 2114;
    v24 = v12;
    v16 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ is starting %{public}@", buf, 0x16u);
  }

  [(HDFHIRRequestTask *)v12 resume];
}

@end