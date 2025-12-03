@interface PKPaymentRemoteAssetDownloadRecord
- (BOOL)hasFailedRequiredRemoteAssetDownloads;
- (PKPaymentRemoteAssetDownloadRecord)initWithCoder:(id)coder;
- (id)_init;
- (void)encodeWithCoder:(id)coder;
- (void)removeRemoteCloudStoreAssetForRecordName:(id)name didFail:(BOOL)fail;
- (void)removeRemoteURLAssetForTaskIdentifier:(id)identifier didFail:(BOOL)fail;
- (void)setRemoteCloudStoreAsset:(id)asset forRecordName:(id)name;
- (void)setRemoteURLAsset:(id)asset forTaskIdentifier:(id)identifier;
@end

@implementation PKPaymentRemoteAssetDownloadRecord

- (id)_init
{
  v12.receiver = self;
  v12.super_class = PKPaymentRemoteAssetDownloadRecord;
  _init = [(PKPaymentBackgroundDownloadRecord *)&v12 _init];
  if (_init)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v4 = _init[5];
    _init[5] = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v6 = _init[7];
    _init[7] = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v8 = _init[6];
    _init[6] = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v10 = _init[8];
    _init[8] = v9;
  }

  return _init;
}

- (PKPaymentRemoteAssetDownloadRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = PKPaymentRemoteAssetDownloadRecord;
  v5 = [(PKPaymentBackgroundDownloadRecord *)&v28 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passURL"];
    passURL = v5->_passURL;
    v5->_passURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pushTopic"];
    pushTopic = v5->_pushTopic;
    v5->_pushTopic = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"remoteAssets"];
    remoteAssetsByTaskIdentifier = v5->_remoteAssetsByTaskIdentifier;
    v5->_remoteAssetsByTaskIdentifier = v14;

    v16 = [coderCopy decodeObjectOfClasses:v13 forKey:@"failedRemoteAssets"];
    failedRequiredRemoteAssetDownloadsByTaskIdentifier = v5->_failedRequiredRemoteAssetDownloadsByTaskIdentifier;
    v5->_failedRequiredRemoteAssetDownloadsByTaskIdentifier = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v18 setWithObjects:{v19, v20, v21, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"remoteCloudAssets"];
    remoteAssetsByRecordName = v5->_remoteAssetsByRecordName;
    v5->_remoteAssetsByRecordName = v23;

    v25 = [coderCopy decodeObjectOfClasses:v22 forKey:@"failedRemoteCloudAssets"];
    failedRequiredRemoteAssetDownloadsByRecordName = v5->_failedRequiredRemoteAssetDownloadsByRecordName;
    v5->_failedRequiredRemoteAssetDownloadsByRecordName = v25;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPaymentRemoteAssetDownloadRecord;
  coderCopy = coder;
  [(PKPaymentBackgroundDownloadRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_passURL forKey:{@"passURL", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_pushTopic forKey:@"pushTopic"];
  [coderCopy encodeObject:self->_remoteAssetsByTaskIdentifier forKey:@"remoteAssets"];
  [coderCopy encodeObject:self->_remoteAssetsByRecordName forKey:@"remoteCloudAssets"];
  [coderCopy encodeObject:self->_failedRequiredRemoteAssetDownloadsByTaskIdentifier forKey:@"failedRemoteAssets"];
  [coderCopy encodeObject:self->_failedRequiredRemoteAssetDownloadsByRecordName forKey:@"failedRequiredRemoteCloudAssets"];
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

- (void)setRemoteURLAsset:(id)asset forTaskIdentifier:(id)identifier
{
  remoteAssetsByTaskIdentifier = self->_remoteAssetsByTaskIdentifier;
  identifierCopy = identifier;
  assetCopy = asset;
  v11 = [(NSDictionary *)remoteAssetsByTaskIdentifier mutableCopy];
  [v11 setObject:assetCopy forKey:identifierCopy];

  v9 = [v11 copy];
  v10 = self->_remoteAssetsByTaskIdentifier;
  self->_remoteAssetsByTaskIdentifier = v9;
}

- (void)setRemoteCloudStoreAsset:(id)asset forRecordName:(id)name
{
  remoteAssetsByRecordName = self->_remoteAssetsByRecordName;
  nameCopy = name;
  assetCopy = asset;
  v11 = [(NSDictionary *)remoteAssetsByRecordName mutableCopy];
  [v11 setObject:assetCopy forKey:nameCopy];

  v9 = [v11 copy];
  v10 = self->_remoteAssetsByRecordName;
  self->_remoteAssetsByRecordName = v9;
}

- (void)removeRemoteURLAssetForTaskIdentifier:(id)identifier didFail:(BOOL)fail
{
  failCopy = fail;
  identifierCopy = identifier;
  v6 = [(NSDictionary *)self->_remoteAssetsByTaskIdentifier objectForKeyedSubscript:?];
  v7 = v6;
  if (v6)
  {
    if (failCopy && [v6 isRequired])
    {
      v8 = [(NSDictionary *)self->_failedRequiredRemoteAssetDownloadsByTaskIdentifier mutableCopy];
      [v8 setObject:v7 forKey:identifierCopy];
      v9 = [v8 copy];
      failedRequiredRemoteAssetDownloadsByTaskIdentifier = self->_failedRequiredRemoteAssetDownloadsByTaskIdentifier;
      self->_failedRequiredRemoteAssetDownloadsByTaskIdentifier = v9;
    }

    v11 = [(NSDictionary *)self->_remoteAssetsByTaskIdentifier mutableCopy];
    [v11 removeObjectForKey:identifierCopy];
    v12 = [v11 copy];
    remoteAssetsByTaskIdentifier = self->_remoteAssetsByTaskIdentifier;
    self->_remoteAssetsByTaskIdentifier = v12;
  }
}

- (void)removeRemoteCloudStoreAssetForRecordName:(id)name didFail:(BOOL)fail
{
  failCopy = fail;
  nameCopy = name;
  v6 = [(NSDictionary *)self->_remoteAssetsByRecordName objectForKeyedSubscript:?];
  v7 = v6;
  if (v6)
  {
    if (failCopy && [v6 isRequired])
    {
      v8 = [(NSDictionary *)self->_failedRequiredRemoteAssetDownloadsByRecordName mutableCopy];
      [v8 setObject:v7 forKey:nameCopy];
      v9 = [v8 copy];
      failedRequiredRemoteAssetDownloadsByRecordName = self->_failedRequiredRemoteAssetDownloadsByRecordName;
      self->_failedRequiredRemoteAssetDownloadsByRecordName = v9;
    }

    v11 = [(NSDictionary *)self->_remoteAssetsByRecordName mutableCopy];
    [v11 removeObjectForKey:nameCopy];
    v12 = [v11 copy];
    remoteAssetsByRecordName = self->_remoteAssetsByRecordName;
    self->_remoteAssetsByRecordName = v12;
  }
}

@end