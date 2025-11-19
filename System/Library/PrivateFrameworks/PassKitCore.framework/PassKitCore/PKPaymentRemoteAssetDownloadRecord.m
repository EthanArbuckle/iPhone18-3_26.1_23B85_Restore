@interface PKPaymentRemoteAssetDownloadRecord
- (BOOL)hasFailedRequiredRemoteAssetDownloads;
- (PKPaymentRemoteAssetDownloadRecord)initWithCoder:(id)a3;
- (id)_init;
- (void)encodeWithCoder:(id)a3;
- (void)removeRemoteCloudStoreAssetForRecordName:(id)a3 didFail:(BOOL)a4;
- (void)removeRemoteURLAssetForTaskIdentifier:(id)a3 didFail:(BOOL)a4;
- (void)setRemoteCloudStoreAsset:(id)a3 forRecordName:(id)a4;
- (void)setRemoteURLAsset:(id)a3 forTaskIdentifier:(id)a4;
@end

@implementation PKPaymentRemoteAssetDownloadRecord

- (id)_init
{
  v12.receiver = self;
  v12.super_class = PKPaymentRemoteAssetDownloadRecord;
  v2 = [(PKPaymentBackgroundDownloadRecord *)&v12 _init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v4 = v2[5];
    v2[5] = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v6 = v2[7];
    v2[7] = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v8 = v2[6];
    v2[6] = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v10 = v2[8];
    v2[8] = v9;
  }

  return v2;
}

- (PKPaymentRemoteAssetDownloadRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = PKPaymentRemoteAssetDownloadRecord;
  v5 = [(PKPaymentBackgroundDownloadRecord *)&v28 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passURL"];
    passURL = v5->_passURL;
    v5->_passURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pushTopic"];
    pushTopic = v5->_pushTopic;
    v5->_pushTopic = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"remoteAssets"];
    remoteAssetsByTaskIdentifier = v5->_remoteAssetsByTaskIdentifier;
    v5->_remoteAssetsByTaskIdentifier = v14;

    v16 = [v4 decodeObjectOfClasses:v13 forKey:@"failedRemoteAssets"];
    failedRequiredRemoteAssetDownloadsByTaskIdentifier = v5->_failedRequiredRemoteAssetDownloadsByTaskIdentifier;
    v5->_failedRequiredRemoteAssetDownloadsByTaskIdentifier = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v18 setWithObjects:{v19, v20, v21, objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"remoteCloudAssets"];
    remoteAssetsByRecordName = v5->_remoteAssetsByRecordName;
    v5->_remoteAssetsByRecordName = v23;

    v25 = [v4 decodeObjectOfClasses:v22 forKey:@"failedRemoteCloudAssets"];
    failedRequiredRemoteAssetDownloadsByRecordName = v5->_failedRequiredRemoteAssetDownloadsByRecordName;
    v5->_failedRequiredRemoteAssetDownloadsByRecordName = v25;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPaymentRemoteAssetDownloadRecord;
  v4 = a3;
  [(PKPaymentBackgroundDownloadRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_passURL forKey:{@"passURL", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_pushTopic forKey:@"pushTopic"];
  [v4 encodeObject:self->_remoteAssetsByTaskIdentifier forKey:@"remoteAssets"];
  [v4 encodeObject:self->_remoteAssetsByRecordName forKey:@"remoteCloudAssets"];
  [v4 encodeObject:self->_failedRequiredRemoteAssetDownloadsByTaskIdentifier forKey:@"failedRemoteAssets"];
  [v4 encodeObject:self->_failedRequiredRemoteAssetDownloadsByRecordName forKey:@"failedRequiredRemoteCloudAssets"];
}

- (BOOL)hasFailedRequiredRemoteAssetDownloads
{
  if (PKAllowPassUpdatesWithMissingRequiredRemoteAssets())
  {
    v3 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKAllowPassUpdatesWithMissingRequiredRemoteAssets enabled", v5, 2u);
    }

    return 0;
  }

  else
  {
    return [(NSDictionary *)self->_failedRequiredRemoteAssetDownloadsByTaskIdentifier count]|| [(NSDictionary *)self->_failedRequiredRemoteAssetDownloadsByRecordName count]!= 0;
  }
}

- (void)setRemoteURLAsset:(id)a3 forTaskIdentifier:(id)a4
{
  remoteAssetsByTaskIdentifier = self->_remoteAssetsByTaskIdentifier;
  v7 = a4;
  v8 = a3;
  v11 = [(NSDictionary *)remoteAssetsByTaskIdentifier mutableCopy];
  [v11 setObject:v8 forKey:v7];

  v9 = [v11 copy];
  v10 = self->_remoteAssetsByTaskIdentifier;
  self->_remoteAssetsByTaskIdentifier = v9;
}

- (void)setRemoteCloudStoreAsset:(id)a3 forRecordName:(id)a4
{
  remoteAssetsByRecordName = self->_remoteAssetsByRecordName;
  v7 = a4;
  v8 = a3;
  v11 = [(NSDictionary *)remoteAssetsByRecordName mutableCopy];
  [v11 setObject:v8 forKey:v7];

  v9 = [v11 copy];
  v10 = self->_remoteAssetsByRecordName;
  self->_remoteAssetsByRecordName = v9;
}

- (void)removeRemoteURLAssetForTaskIdentifier:(id)a3 didFail:(BOOL)a4
{
  v4 = a4;
  v14 = a3;
  v6 = [(NSDictionary *)self->_remoteAssetsByTaskIdentifier objectForKeyedSubscript:?];
  v7 = v6;
  if (v6)
  {
    if (v4 && [v6 isRequired])
    {
      v8 = [(NSDictionary *)self->_failedRequiredRemoteAssetDownloadsByTaskIdentifier mutableCopy];
      [v8 setObject:v7 forKey:v14];
      v9 = [v8 copy];
      failedRequiredRemoteAssetDownloadsByTaskIdentifier = self->_failedRequiredRemoteAssetDownloadsByTaskIdentifier;
      self->_failedRequiredRemoteAssetDownloadsByTaskIdentifier = v9;
    }

    v11 = [(NSDictionary *)self->_remoteAssetsByTaskIdentifier mutableCopy];
    [v11 removeObjectForKey:v14];
    v12 = [v11 copy];
    remoteAssetsByTaskIdentifier = self->_remoteAssetsByTaskIdentifier;
    self->_remoteAssetsByTaskIdentifier = v12;
  }
}

- (void)removeRemoteCloudStoreAssetForRecordName:(id)a3 didFail:(BOOL)a4
{
  v4 = a4;
  v14 = a3;
  v6 = [(NSDictionary *)self->_remoteAssetsByRecordName objectForKeyedSubscript:?];
  v7 = v6;
  if (v6)
  {
    if (v4 && [v6 isRequired])
    {
      v8 = [(NSDictionary *)self->_failedRequiredRemoteAssetDownloadsByRecordName mutableCopy];
      [v8 setObject:v7 forKey:v14];
      v9 = [v8 copy];
      failedRequiredRemoteAssetDownloadsByRecordName = self->_failedRequiredRemoteAssetDownloadsByRecordName;
      self->_failedRequiredRemoteAssetDownloadsByRecordName = v9;
    }

    v11 = [(NSDictionary *)self->_remoteAssetsByRecordName mutableCopy];
    [v11 removeObjectForKey:v14];
    v12 = [v11 copy];
    remoteAssetsByRecordName = self->_remoteAssetsByRecordName;
    self->_remoteAssetsByRecordName = v12;
  }
}

@end