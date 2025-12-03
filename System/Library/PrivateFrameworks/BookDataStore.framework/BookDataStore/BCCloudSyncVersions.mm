@interface BCCloudSyncVersions
- (NSPersistentHistoryToken)historyToken;
- (id)mutableCopy;
- (void)configureFromSyncVersions:(id)versions;
- (void)setHistoryToken:(id)token;
@end

@implementation BCCloudSyncVersions

- (id)mutableCopy
{
  v2 = [BCMutableCloudSyncVersions alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudSyncVersions_);
}

- (void)configureFromSyncVersions:(id)versions
{
  versionsCopy = versions;
  -[BCCloudSyncVersions setCloudVersion:](self, "setCloudVersion:", [versionsCopy cloudVersion]);
  -[BCCloudSyncVersions setLocalVersion:](self, "setLocalVersion:", [versionsCopy localVersion]);
  -[BCCloudSyncVersions setSyncVersion:](self, "setSyncVersion:", [versionsCopy syncVersion]);
  historyToken = [versionsCopy historyToken];
  [(BCCloudSyncVersions *)self setHistoryToken:historyToken];

  historyTokenOffset = [versionsCopy historyTokenOffset];

  [(BCCloudSyncVersions *)self setHistoryTokenOffset:historyTokenOffset];
}

- (void)setHistoryToken:(id)token
{
  tokenCopy = token;
  if (!tokenCopy)
  {
    v6 = 0;
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  v7 = 0;
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:tokenCopy requiringSecureCoding:1 error:&v7];
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
  rawHistoryToken = [(BCCloudSyncVersions *)self rawHistoryToken];
  if (rawHistoryToken)
  {
    v8 = 0;
    v3 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:rawHistoryToken error:&v8];
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