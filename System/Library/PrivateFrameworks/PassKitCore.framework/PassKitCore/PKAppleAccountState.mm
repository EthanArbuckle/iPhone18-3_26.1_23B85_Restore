@interface PKAppleAccountState
- (PKAppleAccountState)initWithAccount:(id)account;
- (PKAppleAccountState)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAppleAccountState

- (PKAppleAccountState)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = PKAppleAccountState;
  v5 = [(PKAppleAccountState *)&v9 init];
  if (v5)
  {
    identifier = [accountCopy identifier];
    identifier = v5->_identifier;
    v5->_identifier = identifier;

    v5->_isWalletDataclassEnabled = [accountCopy isEnabledForDataclass:*MEMORY[0x1E6959700]];
    v5->_isUbiquityDataclassEnabled = [accountCopy isEnabledForDataclass:*MEMORY[0x1E6959718]];
    v5->_isManaged = [accountCopy aa_isManagedAppleID];
    v5->_isPrimary = [accountCopy aa_isAccountClass:*MEMORY[0x1E698B760]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeBool:self->_isWalletDataclassEnabled forKey:@"isWalletDataclassEnabled"];
  [coderCopy encodeBool:self->_isUbiquityDataclassEnabled forKey:@"isUbiquityDataclassEnabled"];
  [coderCopy encodeBool:self->_isManaged forKey:@"isManaged"];
  [coderCopy encodeBool:self->_isPrimary forKey:@"isPrimary"];
}

- (PKAppleAccountState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKAppleAccountState;
  v5 = [(PKAppleAccountState *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_isWalletDataclassEnabled = [coderCopy decodeBoolForKey:@"isWalletDataclassEnabled"];
    v5->_isUbiquityDataclassEnabled = [coderCopy decodeBoolForKey:@"isUbiquityDataclassEnabled"];
    v5->_isManaged = [coderCopy decodeBoolForKey:@"isManaged"];
    v5->_isPrimary = [coderCopy decodeBoolForKey:@"isPrimary"];
  }

  return v5;
}

@end