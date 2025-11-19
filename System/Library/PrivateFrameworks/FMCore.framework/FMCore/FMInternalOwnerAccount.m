@interface FMInternalOwnerAccount
- (FMInternalOwnerAccount)initWithAccount:(id)a3;
- (id)description;
@end

@implementation FMInternalOwnerAccount

- (FMInternalOwnerAccount)initWithAccount:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = FMInternalOwnerAccount;
  v5 = [(FMInternalOwnerAccount *)&v15 init];
  if (v5)
  {
    v6 = [v4 aa_personID];
    personId = v5->_personId;
    v5->_personId = v6;

    v8 = [v4 aa_firstName];
    firstName = v5->_firstName;
    v5->_firstName = v8;

    v10 = [v4 aa_lastName];
    lastName = v5->_lastName;
    v5->_lastName = v10;

    v12 = [v4 username];
    username = v5->_username;
    v5->_username = v12;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(FMInternalOwnerAccount *)self username];
  v6 = [(FMInternalOwnerAccount *)self personId];
  v7 = [v3 stringWithFormat:@"<%@: %p %@[%@]>", v4, self, v5, v6];

  return v7;
}

@end