@interface FMInternalOwnerAccount
- (FMInternalOwnerAccount)initWithAccount:(id)account;
- (id)description;
@end

@implementation FMInternalOwnerAccount

- (FMInternalOwnerAccount)initWithAccount:(id)account
{
  accountCopy = account;
  v15.receiver = self;
  v15.super_class = FMInternalOwnerAccount;
  v5 = [(FMInternalOwnerAccount *)&v15 init];
  if (v5)
  {
    aa_personID = [accountCopy aa_personID];
    personId = v5->_personId;
    v5->_personId = aa_personID;

    aa_firstName = [accountCopy aa_firstName];
    firstName = v5->_firstName;
    v5->_firstName = aa_firstName;

    aa_lastName = [accountCopy aa_lastName];
    lastName = v5->_lastName;
    v5->_lastName = aa_lastName;

    username = [accountCopy username];
    username = v5->_username;
    v5->_username = username;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  username = [(FMInternalOwnerAccount *)self username];
  personId = [(FMInternalOwnerAccount *)self personId];
  v7 = [v3 stringWithFormat:@"<%@: %p %@[%@]>", v4, self, username, personId];

  return v7;
}

@end