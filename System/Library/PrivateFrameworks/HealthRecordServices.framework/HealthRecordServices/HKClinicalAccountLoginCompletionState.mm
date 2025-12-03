@interface HKClinicalAccountLoginCompletionState
+ (id)completionStateWithError:(id)error;
- (HKClinicalAccountLoginCompletionState)initWithAccount:(id)account alternateCredentialPersistentID:(id)d wasRelogin:(BOOL)relogin error:(id)error;
- (HKClinicalAccountLoginCompletionState)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKClinicalAccountLoginCompletionState

- (HKClinicalAccountLoginCompletionState)initWithAccount:(id)account alternateCredentialPersistentID:(id)d wasRelogin:(BOOL)relogin error:(id)error
{
  accountCopy = account;
  dCopy = d;
  errorCopy = error;
  v21.receiver = self;
  v21.super_class = HKClinicalAccountLoginCompletionState;
  v13 = [(HKClinicalAccountLoginCompletionState *)&v21 init];
  if (v13)
  {
    v14 = [accountCopy copy];
    account = v13->_account;
    v13->_account = v14;

    v16 = [dCopy copy];
    alternateCredentialPersistentID = v13->_alternateCredentialPersistentID;
    v13->_alternateCredentialPersistentID = v16;

    v13->_wasRelogin = relogin;
    v18 = [errorCopy copy];
    error = v13->_error;
    v13->_error = v18;
  }

  return v13;
}

+ (id)completionStateWithError:(id)error
{
  errorCopy = error;
  v5 = [[self alloc] initWithAccount:0 alternateCredentialPersistentID:0 wasRelogin:0 error:errorCopy];

  return v5;
}

- (HKClinicalAccountLoginCompletionState)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"wasRelogin"])
  {
    v14.receiver = self;
    v14.super_class = HKClinicalAccountLoginCompletionState;
    v5 = [(HKClinicalAccountLoginCompletionState *)&v14 init];
    if (v5)
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"account"];
      account = v5->_account;
      v5->_account = v6;

      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialPersistentID"];
      alternateCredentialPersistentID = v5->_alternateCredentialPersistentID;
      v5->_alternateCredentialPersistentID = v8;

      v5->_wasRelogin = [coderCopy decodeBoolForKey:@"wasRelogin"];
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
      error = v5->_error;
      v5->_error = v10;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  account = self->_account;
  coderCopy = coder;
  [coderCopy encodeObject:account forKey:@"account"];
  [coderCopy encodeObject:self->_alternateCredentialPersistentID forKey:@"credentialPersistentID"];
  [coderCopy encodeBool:self->_wasRelogin forKey:@"wasRelogin"];
  [coderCopy encodeObject:self->_error forKey:@"error"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(HKClinicalAccount *)self->_account identifier];
  alternateCredentialPersistentID = self->_alternateCredentialPersistentID;
  wasRelogin = self->_wasRelogin;
  v8 = HKStringFromBool();
  v9 = [v3 stringWithFormat:@"<%@ %p> account: %@, alternate credential: %@, was relogin: %@, error: %@", v4, self, identifier, alternateCredentialPersistentID, v8, self->_error];

  return v9;
}

@end