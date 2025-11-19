@interface MBAccountChange
- (MBAccountChange)initWithAccountIdentifier:(id)a3 personaIdentifier:(id)a4 isPrimaryAccount:(BOOL)a5 changeType:(int64_t)a6;
- (MBAccountChange)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MBAccountChange

- (MBAccountChange)initWithAccountIdentifier:(id)a3 personaIdentifier:(id)a4 isPrimaryAccount:(BOOL)a5 changeType:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = MBAccountChange;
  v13 = [(MBAccountChange *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_accountIdentifier, a3);
    objc_storeStrong(&v14->_personaIdentifier, a4);
    v14->_isPrimaryAccount = a5;
    v14->_changeType = a6;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  accountIdentifier = self->_accountIdentifier;
  v5 = a3;
  [v5 encodeObject:accountIdentifier forKey:@"accountIdentifier"];
  [v5 encodeObject:self->_personaIdentifier forKey:@"personaIdentifier"];
  [v5 encodeBool:self->_isPrimaryAccount forKey:@"isPrimaryAccount"];
  [v5 encodeInteger:self->_changeType forKey:@"changeType"];
}

- (MBAccountChange)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MBAccountChange;
  v5 = [(MBAccountChange *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v8 = [v4 decodeObjectForKey:@"personaIdentifier"];
    personaIdentifier = v5->_personaIdentifier;
    v5->_personaIdentifier = v8;

    v5->_isPrimaryAccount = [v4 decodeBoolForKey:@"isPrimaryAccount"];
    v5->_changeType = [v4 decodeIntegerForKey:@"changeType"];
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