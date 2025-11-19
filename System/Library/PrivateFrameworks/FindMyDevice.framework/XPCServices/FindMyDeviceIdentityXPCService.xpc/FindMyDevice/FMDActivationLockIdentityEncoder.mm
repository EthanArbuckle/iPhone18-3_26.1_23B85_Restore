@interface FMDActivationLockIdentityEncoder
- (FMDActivationLockIdentityEncoder)initWithCertificateDataSource:(id)a3 signatureDataSource:(id)a4;
- (id)_compressData:(id)a3;
- (void)identityForActivationLockRequest:(id)a3 completion:(id)a4;
@end

@implementation FMDActivationLockIdentityEncoder

- (FMDActivationLockIdentityEncoder)initWithCertificateDataSource:(id)a3 signatureDataSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FMDActivationLockIdentityEncoder;
  v9 = [(FMDActivationLockIdentityEncoder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_certificateDataSource, a3);
    objc_storeStrong(&v10->_signatureDataSource, a4);
  }

  return v10;
}

- (void)identityForActivationLockRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100001AC8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FMDActivationLockIdentityEncoder identityForActivationLockData:completion:", buf, 2u);
  }

  v9 = [(FMDActivationLockIdentityEncoder *)self certificateDataSource];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000025B0;
  v12[3] = &unk_10000CF70;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v9 activationLockCertificatesWithRequest:v11 completion:v12];
}

- (id)_compressData:(id)a3
{
  v3 = a3;
  v4 = sub_100001AC8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = [v3 length];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attempting to compress %ld bytes", &v12, 0xCu);
  }

  v5 = 2 * [v3 length];
  v6 = [NSMutableData dataWithLength:v5];
  v7 = compression_encode_buffer([v6 mutableBytes], v5, objc_msgSend(v3, "bytes"), objc_msgSend(v3, "length"), 0, COMPRESSION_ZLIB);
  v8 = sub_100001AC8();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Compressed to %ld bytes", &v12, 0xCu);
    }

    v10 = [v6 subdataWithRange:{0, v7}];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000429C();
    }

    v10 = 0;
  }

  return v10;
}

@end