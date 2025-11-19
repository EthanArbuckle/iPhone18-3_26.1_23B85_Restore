@interface BCCloudSyncVersions
- (NSPersistentHistoryToken)historyToken;
- (id)mutableCopy;
- (void)configureFromSyncVersions:(id)a3;
- (void)setHistoryToken:(id)a3;
@end

@implementation BCCloudSyncVersions

- (id)mutableCopy
{
  v2 = [BCMutableCloudSyncVersions alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudSyncVersions_);
}

- (void)configureFromSyncVersions:(id)a3
{
  v4 = a3;
  -[BCCloudSyncVersions setCloudVersion:](self, "setCloudVersion:", [v4 cloudVersion]);
  -[BCCloudSyncVersions setLocalVersion:](self, "setLocalVersion:", [v4 localVersion]);
  -[BCCloudSyncVersions setSyncVersion:](self, "setSyncVersion:", [v4 syncVersion]);
  v5 = [v4 historyToken];
  [(BCCloudSyncVersions *)self setHistoryToken:v5];

  v6 = [v4 historyTokenOffset];

  [(BCCloudSyncVersions *)self setHistoryTokenOffset:v6];
}

- (void)setHistoryToken:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v6 = 0;
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  v7 = 0;
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v7];
  v6 = v7;
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1E47047C0(v6);
    }

    goto LABEL_6;
  }

LABEL_7:
  [(BCCloudSyncVersions *)self setRawHistoryToken:v5];
}

- (NSPersistentHistoryToken)historyToken
{
  v2 = [(BCCloudSyncVersions *)self rawHistoryToken];
  if (v2)
  {
    v8 = 0;
    v3 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v8];
    v4 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v3;
    }

    else
    {
      v6 = BDSCloudKitLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1E4704840(v4, v6);
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end