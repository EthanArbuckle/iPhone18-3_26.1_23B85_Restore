@interface BCCloudSyncVersions
- (NSPersistentHistoryToken)historyToken;
- (id)mutableCopy;
- (void)configureFromSyncVersions:(id)a3;
- (void)setHistoryToken:(id)a3;
@end

@implementation BCCloudSyncVersions

- (id)mutableCopy
{
  v3 = [BCMutableCloudSyncVersions alloc];

  return [(BCMutableCloudSyncVersions *)v3 initWithCloudSyncVersions:self];
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
  v5 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v7];
  v6 = v7;
  if (!v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1001C0428(v6);
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
    v3 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v8];
    v4 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v3;
    }

    else
    {
      v6 = sub_100002660();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1001C04A8(v4, v6);
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