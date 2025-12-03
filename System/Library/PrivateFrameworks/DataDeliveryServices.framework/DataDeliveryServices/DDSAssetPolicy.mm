@interface DDSAssetPolicy
+ (id)assetPolicy;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAssetPolicy:(id)policy;
- (DDSAssetPolicy)init;
- (DDSAssetPolicy)initWithCoder:(id)coder;
- (id)dumpDescription;
- (id)stringForAssetDownloadFrequency:(int64_t)frequency;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DDSAssetPolicy

+ (id)assetPolicy
{
  objc_opt_class();
  v2 = [objc_claimAutoreleasedReturnValue() init];

  return v2;
}

- (DDSAssetPolicy)init
{
  v7.receiver = self;
  v7.super_class = DDSAssetPolicy;
  v2 = [(DDSAssetPolicy *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_preferredDownloadFrequency = 0;
    *&v2->_downloadOverCellular = 256;
    v4 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    notificationDownloadTriggers = v3->_notificationDownloadTriggers;
    v3->_notificationDownloadTriggers = v4;
  }

  return v3;
}

- (DDSAssetPolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = DDSAssetPolicy;
  v5 = [(DDSAssetPolicy *)&v35 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_preferredDownloadFrequency);
    v9 = [coderCopy decodeObjectOfClass:v7 forKey:v8];
    v5->_preferredDownloadFrequency = [v9 integerValue];

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_downloadOverCellular);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    v5->_downloadOverCellular = [v12 BOOLValue];

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_downloadWithoutPower);
    v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];
    v5->_downloadWithoutPower = [v15 BOOLValue];

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_downloadCompletionNotification);
    v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];
    downloadCompletionNotification = v5->_downloadCompletionNotification;
    v5->_downloadCompletionNotification = v18;

    v20 = objc_opt_class();
    v21 = NSStringFromSelector(sel_idleUsageEvictionPeriod);
    v22 = [coderCopy decodeObjectOfClass:v20 forKey:v21];
    idleUsageEvictionPeriod = v5->_idleUsageEvictionPeriod;
    v5->_idleUsageEvictionPeriod = v22;

    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = NSStringFromSelector(sel_notificationDownloadTriggers);
    v34 = 0;
    v28 = [coderCopy decodeTopLevelObjectOfClasses:v26 forKey:v27 error:&v34];
    v29 = v34;
    notificationDownloadTriggers = v5->_notificationDownloadTriggers;
    v5->_notificationDownloadTriggers = v28;

    v6 = v5;
    if (v29)
    {
      v31 = DefaultLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [(DDSAssetPolicy *)v5 initWithCoder:v29, v31];
      }

      v6 = 0;
    }
  }

  v32 = v6;

  return v32;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithInteger:{-[DDSAssetPolicy preferredDownloadFrequency](self, "preferredDownloadFrequency")}];
  v7 = NSStringFromSelector(sel_preferredDownloadFrequency);
  [coderCopy encodeObject:v6 forKey:v7];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[DDSAssetPolicy downloadOverCellular](self, "downloadOverCellular")}];
  v9 = NSStringFromSelector(sel_downloadOverCellular);
  [coderCopy encodeObject:v8 forKey:v9];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[DDSAssetPolicy downloadWithoutPower](self, "downloadWithoutPower")}];
  v11 = NSStringFromSelector(sel_downloadWithoutPower);
  [coderCopy encodeObject:v10 forKey:v11];

  notificationDownloadTriggers = [(DDSAssetPolicy *)self notificationDownloadTriggers];
  v13 = NSStringFromSelector(sel_notificationDownloadTriggers);
  [coderCopy encodeObject:notificationDownloadTriggers forKey:v13];

  downloadCompletionNotification = [(DDSAssetPolicy *)self downloadCompletionNotification];
  v15 = NSStringFromSelector(sel_downloadCompletionNotification);
  [coderCopy encodeObject:downloadCompletionNotification forKey:v15];

  idleUsageEvictionPeriod = [(DDSAssetPolicy *)self idleUsageEvictionPeriod];
  v16 = NSStringFromSelector(sel_idleUsageEvictionPeriod);
  [coderCopy encodeObject:idleUsageEvictionPeriod forKey:v16];
}

- (id)dumpDescription
{
  v3 = objc_opt_new();
  if (DDS_IS_INTERNAL_INSTALL())
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [(DDSAssetPolicy *)self stringForAssetDownloadFrequency:[(DDSAssetPolicy *)self preferredDownloadFrequency]];
    v6 = [v4 stringWithFormat:@"Frequency: %@", v5];

    v7 = MEMORY[0x1E696AEC0];
    downloadOverCellular = [(DDSAssetPolicy *)self downloadOverCellular];
    v9 = @"5G+Inexpensive";
    if (downloadOverCellular)
    {
      v9 = @"all";
    }

    v10 = [v7 stringWithFormat:@"Cellular: %@", v9];
    v11 = MEMORY[0x1E696AEC0];
    downloadWithoutPower = [(DDSAssetPolicy *)self downloadWithoutPower];
    v13 = @"required";
    if (downloadWithoutPower)
    {
      v13 = @"not required";
    }

    v14 = [v11 stringWithFormat:@"Power: %@", v13];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@, %@", v6, v10, v14];
  }

  else
  {
    v15 = v3;
  }

  return v15;
}

- (id)stringForAssetDownloadFrequency:(int64_t)frequency
{
  v3 = @"Immediate";
  if (frequency == 1)
  {
    v3 = @"Daily";
  }

  if (frequency == 2)
  {
    return @"Weekly";
  }

  else
  {
    return v3;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(DDSAssetPolicy *)self isEqualToAssetPolicy:equalCopy];

  return v5;
}

- (BOOL)isEqualToAssetPolicy:(id)policy
{
  policyCopy = policy;
  notificationDownloadTriggers = [(DDSAssetPolicy *)self notificationDownloadTriggers];
  notificationDownloadTriggers2 = [policyCopy notificationDownloadTriggers];
  if (DDSObjectsAreEqualOrNil(notificationDownloadTriggers, notificationDownloadTriggers2))
  {
    downloadCompletionNotification = [(DDSAssetPolicy *)self downloadCompletionNotification];
    downloadCompletionNotification2 = [policyCopy downloadCompletionNotification];
    if (DDSObjectsAreEqualOrNil(downloadCompletionNotification, downloadCompletionNotification2))
    {
      idleUsageEvictionPeriod = [(DDSAssetPolicy *)self idleUsageEvictionPeriod];
      idleUsageEvictionPeriod2 = [policyCopy idleUsageEvictionPeriod];
      if (DDSObjectsAreEqualOrNil(idleUsageEvictionPeriod, idleUsageEvictionPeriod2) && (v11 = -[DDSAssetPolicy preferredDownloadFrequency](self, "preferredDownloadFrequency"), v11 == [policyCopy preferredDownloadFrequency]) && (v12 = -[DDSAssetPolicy downloadWithoutPower](self, "downloadWithoutPower"), v12 == objc_msgSend(policyCopy, "downloadWithoutPower")))
      {
        downloadOverCellular = [(DDSAssetPolicy *)self downloadOverCellular];
        v13 = downloadOverCellular ^ [policyCopy downloadOverCellular] ^ 1;
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  notificationDownloadTriggers = [(DDSAssetPolicy *)self notificationDownloadTriggers];
  v4 = [notificationDownloadTriggers hash];
  downloadCompletionNotification = [(DDSAssetPolicy *)self downloadCompletionNotification];
  v6 = [downloadCompletionNotification hash] ^ v4;
  idleUsageEvictionPeriod = [(DDSAssetPolicy *)self idleUsageEvictionPeriod];
  v8 = v6 ^ [idleUsageEvictionPeriod hash];
  if ([(DDSAssetPolicy *)self downloadOverCellular])
  {
    v9 = 1231;
  }

  else
  {
    v9 = 1237;
  }

  if ([(DDSAssetPolicy *)self downloadWithoutPower])
  {
    v10 = 1231;
  }

  else
  {
    v10 = 1237;
  }

  v11 = v8 ^ v9 ^ v10;
  preferredDownloadFrequency = [(DDSAssetPolicy *)self preferredDownloadFrequency];

  return v11 ^ preferredDownloadFrequency;
}

- (void)initWithCoder:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 138543618;
  v7 = objc_opt_class();
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_1DF7C6000, a3, OS_LOG_TYPE_ERROR, "Error decoding %{public}@ (%{public}@)", &v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end