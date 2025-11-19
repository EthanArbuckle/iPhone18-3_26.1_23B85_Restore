@interface CRKConcreteIDSAccount
- (CRKConcreteIDSAccount)initWithAccount:(id)a3;
- (NSString)description;
- (NSString)loginID;
- (void)account:(id)a3 isActiveChanged:(BOOL)a4;
- (void)updateIsActive;
- (void)updateWithAccount:(id)a3;
@end

@implementation CRKConcreteIDSAccount

- (CRKConcreteIDSAccount)initWithAccount:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRKConcreteIDSAccount;
  v5 = [(CRKConcreteIDSAccount *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CRKConcreteIDSAccount *)v5 updateWithAccount:v4];
  }

  return v6;
}

- (void)updateWithAccount:(id)a3
{
  v7 = a3;
  v4 = [(CRKConcreteIDSAccount *)self account];

  if (v4 != v7)
  {
    v5 = [(CRKConcreteIDSAccount *)self account];
    [v5 removeDelegate:self];

    [(CRKConcreteIDSAccount *)self setAccount:v7];
    v6 = [(CRKConcreteIDSAccount *)self account];
    [v6 addDelegate:self queue:MEMORY[0x277D85CD0]];

    [(CRKConcreteIDSAccount *)self updateIsActive];
  }
}

- (void)updateIsActive
{
  v3 = [(CRKConcreteIDSAccount *)self isActive];
  v4 = [(CRKConcreteIDSAccount *)self account];
  v5 = [v4 isActive];

  if (v3 != v5)
  {
    v6 = [(CRKConcreteIDSAccount *)self account];
    -[CRKConcreteIDSAccount setActive:](self, "setActive:", [v6 isActive]);
  }
}

- (NSString)loginID
{
  v2 = [(CRKConcreteIDSAccount *)self account];
  v3 = [v2 loginID];

  return v3;
}

- (void)account:(id)a3 isActiveChanged:(BOOL)a4
{
  v8 = *MEMORY[0x277D85DE8];
  [(CRKConcreteIDSAccount *)self updateIsActive:a3];
  if (_CRKLogASM_onceToken_17 != -1)
  {
    [CRKConcreteIDSAccount account:isActiveChanged:];
  }

  v5 = _CRKLogASM_logObj_17;
  if (os_log_type_enabled(_CRKLogASM_logObj_17, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ : Account activity did change.", &v6, 0xCu);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CRKConcreteIDSAccount *)self loginID];
  v6 = [(CRKConcreteIDSAccount *)self isActive];
  v7 = @"NO";
  if (v6)
  {
    v7 = @"YES";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p { loginID = %@, isActive = %@ }>", v4, self, v5, v7];

  return v8;
}

@end