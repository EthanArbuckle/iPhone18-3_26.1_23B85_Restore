@interface FCResource
- (BOOL)isEqual:(id)a3;
- (BOOL)isOnDisk;
- (FCContentArchive)contentArchive;
- (FCContentManifest)contentManifest;
- (FCResource)initWithPermanentURLForResourceID:(id)a3 cacheLifetimeHint:(int64_t)a4 contentContext:(id)a5;
- (FCResource)initWithRecord:(id)a3 interestToken:(id)a4 assetManager:(id)a5;
- (FCResource)initWithResourceID:(id)a3 assetHandle:(id)a4 fetchDate:(id)a5;
- (NSURL)fileURL;
- (unint64_t)hash;
@end

@implementation FCResource

- (NSURL)fileURL
{
  v2 = [(FCResource *)self assetHandle];
  v3 = [v2 fileURL];

  return v3;
}

- (FCResource)initWithResourceID:(id)a3 assetHandle:(id)a4 fetchDate:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    objc_storeStrong(&v12->_resourceID, a3);
    objc_storeStrong(&v13->_assetHandle, a4);
    objc_storeStrong(&v13->_fetchDate, a5);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (FCResource)initWithRecord:(id)a3 interestToken:(id)a4 assetManager:(id)a5
{
  v24 = self;
  v8 = a3;
  v26 = a4;
  v9 = a5;
  v10 = [v8 base];
  v11 = [v10 identifier];

  v12 = [v8 url];
  if (v12)
  {
    v13 = [v8 base];
    v14 = [v13 cacheLifetimeHint];
    if (v14 == 2)
    {
      v15 = 2;
    }

    else
    {
      v15 = v14 == 1;
    }

    v16 = [v9 assetHandleForCKAssetURLString:v12 lifetimeHint:{v15, v24, v26}];
  }

  else
  {
    v16 = 0;
  }

  v17 = MEMORY[0x1E695DF00];
  v18 = [v8 base];
  v19 = [v18 fetchDate];
  v20 = [v17 dateWithPBDate:v19];

  v21 = [v25 initWithResourceID:v11 assetHandle:v16 fetchDate:v20];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong((v21 + 32), a3);
    objc_storeStrong(&v22->_interestToken, a4);
  }

  return v22;
}

- (FCResource)initWithPermanentURLForResourceID:(id)a3 cacheLifetimeHint:(int64_t)a4 contentContext:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [v8 assetManager];
  v11 = [v8 internalContentContext];

  v12 = [v11 contentDatabase];
  v13 = [v10 assetHandleForRecordID:v9 field:3 lifetimeHint:a4 contentDatabase:v12];

  v14 = [(FCResource *)self initWithResourceID:v9 assetHandle:v13 fetchDate:0];
  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
    v7 = [(FCResource *)self resourceID];
    v8 = [v6 resourceID];
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(FCResource *)self resourceID];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isOnDisk
{
  v2 = [(FCResource *)self assetHandle];
  v3 = [v2 dataProvider];
  v4 = v3 != 0;

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