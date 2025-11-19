@interface HDCloudSyncUpdateLastPullDateOperation
- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (HDCloudSyncUpdateLastPullDateOperation)initWithCoder:(id)a3;
- (HDCloudSyncUpdateLastPullDateOperation)initWithPullCompleteDate:(id)a3 lastSuccessfulPullKey:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDCloudSyncUpdateLastPullDateOperation

- (HDCloudSyncUpdateLastPullDateOperation)initWithPullCompleteDate:(id)a3 lastSuccessfulPullKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HDCloudSyncUpdateLastPullDateOperation;
  v9 = [(HDCloudSyncUpdateLastPullDateOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pullCompleteDate, a3);
    objc_storeStrong(&v10->_lastSuccessfulPullKey, a4);
  }

  return v10;
}

- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = HDCloudSyncKeyValueDomainWithProfile(v7);
  _HKInitializeLogging();
  v9 = MEMORY[0x277CCC328];
  v10 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = self;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Recording successful cloud sync pull", buf, 0xCu);
  }

  pullCompleteDate = self->_pullCompleteDate;
  lastSuccessfulPullKey = self->_lastSuccessfulPullKey;
  v20 = 0;
  v13 = [v8 setDate:pullCompleteDate forKey:lastSuccessfulPullKey error:&v20];
  v14 = v20;
  if (v13)
  {
    v15 = [v7 cloudSyncManager];
    [(HDCloudSyncUpdateLastPullDateOperation *)v15 didCompleteSuccessfulPullWithDate:self->_pullCompleteDate];
  }

  else
  {
    _HKInitializeLogging();
    v16 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v22 = v14;
      _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "Failed to record successful pull: %{public}@.", buf, 0xCu);
    }

    v15 = v14;
    if (v15)
    {
      if (a5)
      {
        v17 = v15;
        *a5 = v15;
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

- (HDCloudSyncUpdateLastPullDateOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pullCompleteDate"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastSuccessfulPullKey"];

  v7 = [(HDCloudSyncUpdateLastPullDateOperation *)self initWithPullCompleteDate:v5 lastSuccessfulPullKey:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  pullCompleteDate = self->_pullCompleteDate;
  v5 = a3;
  [v5 encodeObject:pullCompleteDate forKey:@"pullCompleteDate"];
  [v5 encodeObject:self->_lastSuccessfulPullKey forKey:@"lastSuccessfulPullKey"];
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