@interface HKClinicalAccountLoginCompletionState
+ (id)completionStateWithError:(id)a3;
- (HKClinicalAccountLoginCompletionState)initWithAccount:(id)a3 alternateCredentialPersistentID:(id)a4 wasRelogin:(BOOL)a5 error:(id)a6;
- (HKClinicalAccountLoginCompletionState)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKClinicalAccountLoginCompletionState

- (HKClinicalAccountLoginCompletionState)initWithAccount:(id)a3 alternateCredentialPersistentID:(id)a4 wasRelogin:(BOOL)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = HKClinicalAccountLoginCompletionState;
  v13 = [(HKClinicalAccountLoginCompletionState *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    account = v13->_account;
    v13->_account = v14;

    v16 = [v11 copy];
    alternateCredentialPersistentID = v13->_alternateCredentialPersistentID;
    v13->_alternateCredentialPersistentID = v16;

    v13->_wasRelogin = a5;
    v18 = [v12 copy];
    error = v13->_error;
    v13->_error = v18;
  }

  return v13;
}

+ (id)completionStateWithError:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithAccount:0 alternateCredentialPersistentID:0 wasRelogin:0 error:v4];

  return v5;
}

- (HKClinicalAccountLoginCompletionState)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"wasRelogin"])
  {
    v14.receiver = self;
    v14.super_class = HKClinicalAccountLoginCompletionState;
    v5 = [(HKClinicalAccountLoginCompletionState *)&v14 init];
    if (v5)
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"account"];
      account = v5->_account;
      v5->_account = v6;

      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialPersistentID"];
      alternateCredentialPersistentID = v5->_alternateCredentialPersistentID;
      v5->_alternateCredentialPersistentID = v8;

      v5->_wasRelogin = [v4 decodeBoolForKey:@"wasRelogin"];
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
      error = v5->_error;
      v5->_error = v10;
    }

    self = v5;
    v12 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  account = self->_account;
  v5 = a3;
  [v5 encodeObject:account forKey:@"account"];
  [v5 encodeObject:self->_alternateCredentialPersistentID forKey:@"credentialPersistentID"];
  [v5 encodeBool:self->_wasRelogin forKey:@"wasRelogin"];
  [v5 encodeObject:self->_error forKey:@"error"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HKClinicalAccount *)self->_account identifier];
  alternateCredentialPersistentID = self->_alternateCredentialPersistentID;
  wasRelogin = self->_wasRelogin;
  v8 = HKStringFromBool();
  v9 = [v3 stringWithFormat:@"<%@ %p> account: %@, alternate credential: %@, was relogin: %@, error: %@", v4, self, v5, alternateCredentialPersistentID, v8, self->_error];

  return v9;
}

@end