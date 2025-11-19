@interface PKAppleAccountState
- (PKAppleAccountState)initWithAccount:(id)a3;
- (PKAppleAccountState)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAppleAccountState

- (PKAppleAccountState)initWithAccount:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKAppleAccountState;
  v5 = [(PKAppleAccountState *)&v9 init];
  if (v5)
  {
    v6 = [v4 identifier];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_isWalletDataclassEnabled = [v4 isEnabledForDataclass:*MEMORY[0x1E6959700]];
    v5->_isUbiquityDataclassEnabled = [v4 isEnabledForDataclass:*MEMORY[0x1E6959718]];
    v5->_isManaged = [v4 aa_isManagedAppleID];
    v5->_isPrimary = [v4 aa_isAccountClass:*MEMORY[0x1E698B760]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeBool:self->_isWalletDataclassEnabled forKey:@"isWalletDataclassEnabled"];
  [v5 encodeBool:self->_isUbiquityDataclassEnabled forKey:@"isUbiquityDataclassEnabled"];
  [v5 encodeBool:self->_isManaged forKey:@"isManaged"];
  [v5 encodeBool:self->_isPrimary forKey:@"isPrimary"];
}

- (PKAppleAccountState)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKAppleAccountState;
  v5 = [(PKAppleAccountState *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_isWalletDataclassEnabled = [v4 decodeBoolForKey:@"isWalletDataclassEnabled"];
    v5->_isUbiquityDataclassEnabled = [v4 decodeBoolForKey:@"isUbiquityDataclassEnabled"];
    v5->_isManaged = [v4 decodeBoolForKey:@"isManaged"];
    v5->_isPrimary = [v4 decodeBoolForKey:@"isPrimary"];
  }

  return v5;
}

@end