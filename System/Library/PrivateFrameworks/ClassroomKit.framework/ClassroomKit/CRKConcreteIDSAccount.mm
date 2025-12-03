@interface CRKConcreteIDSAccount
- (CRKConcreteIDSAccount)initWithAccount:(id)account;
- (NSString)description;
- (NSString)loginID;
- (void)account:(id)account isActiveChanged:(BOOL)changed;
- (void)updateIsActive;
- (void)updateWithAccount:(id)account;
@end

@implementation CRKConcreteIDSAccount

- (CRKConcreteIDSAccount)initWithAccount:(id)account
{
  accountCopy = account;
  v8.receiver = self;
  v8.super_class = CRKConcreteIDSAccount;
  v5 = [(CRKConcreteIDSAccount *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CRKConcreteIDSAccount *)v5 updateWithAccount:accountCopy];
  }

  return v6;
}

- (void)updateWithAccount:(id)account
{
  accountCopy = account;
  account = [(CRKConcreteIDSAccount *)self account];

  if (account != accountCopy)
  {
    account2 = [(CRKConcreteIDSAccount *)self account];
    [account2 removeDelegate:self];

    [(CRKConcreteIDSAccount *)self setAccount:accountCopy];
    account3 = [(CRKConcreteIDSAccount *)self account];
    [account3 addDelegate:self queue:MEMORY[0x277D85CD0]];

    [(CRKConcreteIDSAccount *)self updateIsActive];
  }
}

- (void)updateIsActive
{
  isActive = [(CRKConcreteIDSAccount *)self isActive];
  account = [(CRKConcreteIDSAccount *)self account];
  isActive2 = [account isActive];

  if (isActive != isActive2)
  {
    account2 = [(CRKConcreteIDSAccount *)self account];
    -[CRKConcreteIDSAccount setActive:](self, "setActive:", [account2 isActive]);
  }
}

- (NSString)loginID
{
  account = [(CRKConcreteIDSAccount *)self account];
  loginID = [account loginID];

  return loginID;
}

- (void)account:(id)account isActiveChanged:(BOOL)changed
{
  v8 = *MEMORY[0x277D85DE8];
  [(CRKConcreteIDSAccount *)self updateIsActive:account];
  if (_CRKLogASM_onceToken_17 != -1)
  {
    [CRKConcreteIDSAccount account:isActiveChanged:];
  }

  v5 = _CRKLogASM_logObj_17;
  if (os_log_type_enabled(_CRKLogASM_logObj_17, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ : Account activity did change.", &v6, 0xCu);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  loginID = [(CRKConcreteIDSAccount *)self loginID];
  isActive = [(CRKConcreteIDSAccount *)self isActive];
  v7 = @"NO";
  if (isActive)
  {
    v7 = @"YES";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p { loginID = %@, isActive = %@ }>", v4, self, loginID, v7];

  return v8;
}

@end