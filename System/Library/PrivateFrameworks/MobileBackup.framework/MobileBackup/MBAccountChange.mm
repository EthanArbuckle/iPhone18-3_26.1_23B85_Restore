@interface MBAccountChange
- (MBAccountChange)initWithAccountIdentifier:(id)identifier personaIdentifier:(id)personaIdentifier isPrimaryAccount:(BOOL)account changeType:(int64_t)type;
- (MBAccountChange)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MBAccountChange

- (MBAccountChange)initWithAccountIdentifier:(id)identifier personaIdentifier:(id)personaIdentifier isPrimaryAccount:(BOOL)account changeType:(int64_t)type
{
  identifierCopy = identifier;
  personaIdentifierCopy = personaIdentifier;
  v16.receiver = self;
  v16.super_class = MBAccountChange;
  v13 = [(MBAccountChange *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_accountIdentifier, identifier);
    objc_storeStrong(&v14->_personaIdentifier, personaIdentifier);
    v14->_isPrimaryAccount = account;
    v14->_changeType = type;
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  accountIdentifier = self->_accountIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:accountIdentifier forKey:@"accountIdentifier"];
  [coderCopy encodeObject:self->_personaIdentifier forKey:@"personaIdentifier"];
  [coderCopy encodeBool:self->_isPrimaryAccount forKey:@"isPrimaryAccount"];
  [coderCopy encodeInteger:self->_changeType forKey:@"changeType"];
}

- (MBAccountChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MBAccountChange;
  v5 = [(MBAccountChange *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v8 = [coderCopy decodeObjectForKey:@"personaIdentifier"];
    personaIdentifier = v5->_personaIdentifier;
    v5->_personaIdentifier = v8;

    v5->_isPrimaryAccount = [coderCopy decodeBoolForKey:@"isPrimaryAccount"];
    v5->_changeType = [coderCopy decodeIntegerForKey:@"changeType"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%s: %p; accountIdentifier=%@, personaIdentifier=%@, isPrimaryAccount=%d, changeType=%ld>", class_getName(v4), self, self->_accountIdentifier, self->_personaIdentifier, self->_isPrimaryAccount, self->_changeType];
}

@end