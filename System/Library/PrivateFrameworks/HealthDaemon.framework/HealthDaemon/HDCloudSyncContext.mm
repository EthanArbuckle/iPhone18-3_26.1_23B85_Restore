@interface HDCloudSyncContext
+ (id)contextForFastPush;
- (BOOL)isEquivalent:(id)a3;
- (HDCloudSyncContext)init;
- (id)description;
- (id)initForPurpose:(int64_t)a3 options:(unint64_t)a4 reason:(int64_t)a5 backgroundTask:(id)a6;
- (id)subContextByAddingOptions:(unint64_t)a3;
- (id)subContextByRemovingOptions:(unint64_t)a3;
@end

@implementation HDCloudSyncContext

- (HDCloudSyncContext)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)initForPurpose:(int64_t)a3 options:(unint64_t)a4 reason:(int64_t)a5 backgroundTask:(id)a6
{
  v11 = a6;
  v19.receiver = self;
  v19.super_class = HDCloudSyncContext;
  v12 = [(HDCloudSyncContext *)&v19 init];
  if (v12)
  {
    v13 = [MEMORY[0x277CCAD78] UUID];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    v15 = [(NSUUID *)v12->_identifier UUIDString];
    v16 = [v15 substringToIndex:4];
    shortIdentifier = v12->_shortIdentifier;
    v12->_shortIdentifier = v16;

    v12->_purpose = a3;
    v12->_options = a4;
    v12->_reason = a5;
    objc_storeStrong(&v12->_backgroundTask, a6);
  }

  return v12;
}

+ (id)contextForFastPush
{
  v2 = objc_alloc(MEMORY[0x277CCD140]);
  v3 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:1];
  v4 = [v2 initWithChangesSyncRequest:v3];

  v5 = [[HDCloudSyncContext alloc] initForPurpose:0 options:128 reason:32];
  [v5 setSyncRequest:v4];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  options = self->_options;
  v5 = HKCloudSyncOptionsToString();
  v6 = [(HDCloudSyncContext *)self syncRequest];
  v7 = [v3 stringWithFormat:@"Options: %@, \n Request: %@", v5, v6];

  backgroundTask = self->_backgroundTask;
  v9 = MEMORY[0x277CCACA8];
  shortIdentifier = self->_shortIdentifier;
  reason = self->_reason;
  v12 = HKCloudSyncReasonToString();
  v13 = v12;
  if (backgroundTask)
  {
    v14 = [(HDBackgroundSystemTask *)self->_backgroundTask identifier];
    v15 = [v9 stringWithFormat:@"<%@ %@ (%@) %@>", shortIdentifier, v13, v7, v14];
  }

  else
  {
    v15 = [v9 stringWithFormat:@"<%@ %@ (%@)>", shortIdentifier, v12, v7];
  }

  return v15;
}

- (id)subContextByAddingOptions:(unint64_t)a3
{
  v4 = [objc_alloc(objc_opt_class()) initForPurpose:self->_purpose options:self->_options | a3 reason:self->_reason backgroundTask:self->_backgroundTask];
  v5 = [(NSUUID *)self->_identifier copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSString *)self->_shortIdentifier copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(NSDate *)self->_unitTest_syncDateOverride copy];
  v10 = v4[8];
  v4[8] = v9;

  v11 = [(HKCloudSyncRequest *)self->_syncRequest copy];
  v12 = v4[6];
  v4[6] = v11;

  return v4;
}

- (id)subContextByRemovingOptions:(unint64_t)a3
{
  v4 = [objc_alloc(objc_opt_class()) initForPurpose:self->_purpose options:self->_options & ~a3 reason:self->_reason backgroundTask:self->_backgroundTask];
  v5 = [(NSUUID *)self->_identifier copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSString *)self->_shortIdentifier copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(NSDate *)self->_unitTest_syncDateOverride copy];
  v10 = v4[8];
  v4[8] = v9;

  v11 = [(HKCloudSyncRequest *)self->_syncRequest copy];
  v12 = v4[6];
  v4[6] = v11;

  return v4;
}

- (BOOL)isEquivalent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_purpose == *(v4 + 24) && self->_reason == *(v4 + 5) && self->_backgroundTask == *(v4 + 7))
  {
    syncRequest = self->_syncRequest;
    if (syncRequest)
    {
      v6 = [(HKCloudSyncRequest *)syncRequest isEquivalent:v5[6]];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end