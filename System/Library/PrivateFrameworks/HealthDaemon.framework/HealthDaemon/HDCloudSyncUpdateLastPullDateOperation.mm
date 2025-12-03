@interface HDCloudSyncUpdateLastPullDateOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDCloudSyncUpdateLastPullDateOperation)initWithCoder:(id)coder;
- (HDCloudSyncUpdateLastPullDateOperation)initWithPullCompleteDate:(id)date lastSuccessfulPullKey:(id)key;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDCloudSyncUpdateLastPullDateOperation

- (HDCloudSyncUpdateLastPullDateOperation)initWithPullCompleteDate:(id)date lastSuccessfulPullKey:(id)key
{
  dateCopy = date;
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = HDCloudSyncUpdateLastPullDateOperation;
  v9 = [(HDCloudSyncUpdateLastPullDateOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pullCompleteDate, date);
    objc_storeStrong(&v10->_lastSuccessfulPullKey, key);
  }

  return v10;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v8 = HDCloudSyncKeyValueDomainWithProfile(profileCopy);
  _HKInitializeLogging();
  v9 = MEMORY[0x277CCC328];
  v10 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Recording successful cloud sync pull", buf, 0xCu);
  }

  pullCompleteDate = self->_pullCompleteDate;
  lastSuccessfulPullKey = self->_lastSuccessfulPullKey;
  v20 = 0;
  v13 = [v8 setDate:pullCompleteDate forKey:lastSuccessfulPullKey error:&v20];
  v14 = v20;
  if (v13)
  {
    cloudSyncManager = [profileCopy cloudSyncManager];
    [(HDCloudSyncUpdateLastPullDateOperation *)cloudSyncManager didCompleteSuccessfulPullWithDate:self->_pullCompleteDate];
  }

  else
  {
    _HKInitializeLogging();
    v16 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy = v14;
      _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "Failed to record successful pull: %{public}@.", buf, 0xCu);
    }

    cloudSyncManager = v14;
    if (cloudSyncManager)
    {
      if (error)
      {
        v17 = cloudSyncManager;
        *error = cloudSyncManager;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

- (HDCloudSyncUpdateLastPullDateOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pullCompleteDate"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastSuccessfulPullKey"];

  v7 = [(HDCloudSyncUpdateLastPullDateOperation *)self initWithPullCompleteDate:v5 lastSuccessfulPullKey:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  pullCompleteDate = self->_pullCompleteDate;
  coderCopy = coder;
  [coderCopy encodeObject:pullCompleteDate forKey:@"pullCompleteDate"];
  [coderCopy encodeObject:self->_lastSuccessfulPullKey forKey:@"lastSuccessfulPullKey"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  pullCompleteDate = self->_pullCompleteDate;
  v7 = [v3 stringWithFormat:@"<%@: %p> { pullCompleteDate: %@, lastSuccessfulPullKey: %@ }", v5, self, pullCompleteDate, self->_lastSuccessfulPullKey];

  return v7;
}

@end