@interface FCResource
- (BOOL)isEqual:(id)equal;
- (BOOL)isOnDisk;
- (FCContentArchive)contentArchive;
- (FCContentManifest)contentManifest;
- (FCResource)initWithPermanentURLForResourceID:(id)d cacheLifetimeHint:(int64_t)hint contentContext:(id)context;
- (FCResource)initWithRecord:(id)record interestToken:(id)token assetManager:(id)manager;
- (FCResource)initWithResourceID:(id)d assetHandle:(id)handle fetchDate:(id)date;
- (NSURL)fileURL;
- (unint64_t)hash;
@end

@implementation FCResource

- (NSURL)fileURL
{
  assetHandle = [(FCResource *)self assetHandle];
  fileURL = [assetHandle fileURL];

  return fileURL;
}

- (FCResource)initWithResourceID:(id)d assetHandle:(id)handle fetchDate:(id)date
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handleCopy = handle;
  dateCopy = date;
  if (!handleCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "assetHandle != nil"];
    *buf = 136315906;
    v19 = "[FCResource initWithResourceID:assetHandle:fetchDate:]";
    v20 = 2080;
    v21 = "FCResource.m";
    v22 = 1024;
    v23 = 44;
    v24 = 2114;
    v25 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v17.receiver = self;
  v17.super_class = FCResource;
  v12 = [(FCResource *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_resourceID, d);
    objc_storeStrong(&v13->_assetHandle, handle);
    objc_storeStrong(&v13->_fetchDate, date);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (FCResource)initWithRecord:(id)record interestToken:(id)token assetManager:(id)manager
{
  selfCopy = self;
  recordCopy = record;
  tokenCopy = token;
  managerCopy = manager;
  base = [recordCopy base];
  identifier = [base identifier];

  v12 = [recordCopy url];
  if (v12)
  {
    base2 = [recordCopy base];
    cacheLifetimeHint = [base2 cacheLifetimeHint];
    if (cacheLifetimeHint == 2)
    {
      v15 = 2;
    }

    else
    {
      v15 = cacheLifetimeHint == 1;
    }

    v16 = [managerCopy assetHandleForCKAssetURLString:v12 lifetimeHint:{v15, selfCopy, tokenCopy}];
  }

  else
  {
    v16 = 0;
  }

  v17 = MEMORY[0x1E695DF00];
  base3 = [recordCopy base];
  fetchDate = [base3 fetchDate];
  v20 = [v17 dateWithPBDate:fetchDate];

  v21 = [v25 initWithResourceID:identifier assetHandle:v16 fetchDate:v20];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong((v21 + 32), record);
    objc_storeStrong(&v22->_interestToken, token);
  }

  return v22;
}

- (FCResource)initWithPermanentURLForResourceID:(id)d cacheLifetimeHint:(int64_t)hint contentContext:(id)context
{
  contextCopy = context;
  dCopy = d;
  assetManager = [contextCopy assetManager];
  internalContentContext = [contextCopy internalContentContext];

  contentDatabase = [internalContentContext contentDatabase];
  v13 = [assetManager assetHandleForRecordID:dCopy field:3 lifetimeHint:hint contentDatabase:contentDatabase];

  v14 = [(FCResource *)self initWithResourceID:dCopy assetHandle:v13 fetchDate:0];
  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    resourceID = [(FCResource *)self resourceID];
    resourceID2 = [v6 resourceID];
    v9 = [resourceID isEqualToString:resourceID2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  resourceID = [(FCResource *)self resourceID];
  v3 = [resourceID hash];

  return v3;
}

- (BOOL)isOnDisk
{
  assetHandle = [(FCResource *)self assetHandle];
  dataProvider = [assetHandle dataProvider];
  v4 = dataProvider != 0;

  return v4;
}

- (FCContentArchive)contentArchive
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__FCResource_contentArchive__block_invoke;
  v5[3] = &unk_1E7C36D40;
  v5[4] = self;
  v2 = [MEMORY[0x1E695DEC8] fc_array:v5];
  v3 = [FCContentArchive archiveWithChildArchives:v2];

  return v3;
}

void __28__FCResource_contentArchive__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 resourceRecord];
  v6 = [FCContentArchive archiveWithRecord:v5];
  [v4 fc_safelyAddObject:v6];

  v8 = [*(a1 + 32) assetHandle];
  v7 = [v8 contentArchive];
  [v4 fc_safelyAddObject:v7];
}

- (FCContentManifest)contentManifest
{
  v3 = [FCContentManifest alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__FCResource_contentManifest__block_invoke;
  v7[3] = &unk_1E7C36D40;
  v7[4] = self;
  v4 = [MEMORY[0x1E695DEC8] fc_array:v7];
  v5 = [(FCContentManifest *)v3 initWithManifests:v4];

  return v5;
}

void __29__FCResource_contentManifest__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 resourceRecord];
  v6 = [v5 base];
  v7 = [v6 contentManifest];
  [v4 fc_safelyAddObject:v7];

  v9 = [*(a1 + 32) assetHandle];
  v8 = [v9 contentManifest];
  [v4 fc_safelyAddObject:v8];
}

@end