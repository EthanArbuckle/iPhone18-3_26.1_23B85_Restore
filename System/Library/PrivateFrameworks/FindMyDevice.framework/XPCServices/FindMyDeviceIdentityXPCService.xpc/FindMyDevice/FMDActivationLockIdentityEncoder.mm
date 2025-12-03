@interface FMDActivationLockIdentityEncoder
- (FMDActivationLockIdentityEncoder)initWithCertificateDataSource:(id)source signatureDataSource:(id)dataSource;
- (id)_compressData:(id)data;
- (void)identityForActivationLockRequest:(id)request completion:(id)completion;
@end

@implementation FMDActivationLockIdentityEncoder

- (FMDActivationLockIdentityEncoder)initWithCertificateDataSource:(id)source signatureDataSource:(id)dataSource
{
  sourceCopy = source;
  dataSourceCopy = dataSource;
  v12.receiver = self;
  v12.super_class = FMDActivationLockIdentityEncoder;
  v9 = [(FMDActivationLockIdentityEncoder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_certificateDataSource, source);
    objc_storeStrong(&v10->_signatureDataSource, dataSource);
  }

  return v10;
}

- (void)identityForActivationLockRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = sub_100001AC8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FMDActivationLockIdentityEncoder identityForActivationLockData:completion:", buf, 2u);
  }

  certificateDataSource = [(FMDActivationLockIdentityEncoder *)self certificateDataSource];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000025B0;
  v12[3] = &unk_10000CF70;
  v12[4] = self;
  v13 = requestCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = requestCopy;
  [certificateDataSource activationLockCertificatesWithRequest:v11 completion:v12];
}

- (id)_compressData:(id)data
{
  dataCopy = data;
  v4 = sub_100001AC8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = [dataCopy length];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attempting to compress %ld bytes", &v12, 0xCu);
  }

  v5 = 2 * [dataCopy length];
  v6 = [NSMutableData dataWithLength:v5];
  v7 = compression_encode_buffer([v6 mutableBytes], v5, objc_msgSend(dataCopy, "bytes"), objc_msgSend(dataCopy, "length"), 0, COMPRESSION_ZLIB);
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