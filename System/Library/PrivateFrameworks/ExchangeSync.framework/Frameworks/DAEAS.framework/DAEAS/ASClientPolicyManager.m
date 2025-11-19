@interface ASClientPolicyManager
- (void)dealloc;
- (void)policyFailedToUpdate;
- (void)policyKeyChanged:(id)a3;
- (void)requestPolicyUpdate;
- (void)setDelegate:(id)a3;
@end

@implementation ASClientPolicyManager

- (void)dealloc
{
  if ([(ASPolicyManager *)self updatingPolicy]&& self->_powerAssertionGroupIdentifier)
  {
    v3 = DALoggingwithCategory();
    v4 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v3, v4))
    {
      *buf = 0;
      _os_log_impl(&dword_24A0AC000, v3, v4, "At dealloc time, client policy manager was updating policy.  Reattaining power assertions, just in case", buf, 2u);
    }

    v5 = [MEMORY[0x277D037B0] sharedPowerAssertionManager];
    [v5 reattainPowerAssertionsForGroupIdentifier:self->_powerAssertionGroupIdentifier];

    [(ASPolicyManager *)self setUpdatingPolicy:0];
  }

  v6.receiver = self;
  v6.super_class = ASClientPolicyManager;
  [(ASClientPolicyManager *)&v6 dealloc];
}

- (void)policyKeyChanged:(id)a3
{
  if ([(ASPolicyManager *)self updatingPolicy])
  {
    v4 = [MEMORY[0x277D037B0] sharedPowerAssertionManager];
    v5 = [(ASPolicyManager *)self delegate];
    v6 = [v5 accountPersistentUUID];
    [v4 reattainPowerAssertionsForGroupIdentifier:v6];

    [(ASPolicyManager *)self setUpdatingPolicy:0];
  }

  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v7, v8))
  {
    *v10 = 0;
    _os_log_impl(&dword_24A0AC000, v7, v8, "received notification of new policy key!", v10, 2u);
  }

  v9 = [(ASPolicyManager *)self delegate];
  [v9 policyManagerUpdatedPolicy:self];
}

- (void)policyFailedToUpdate
{
  if ([(ASPolicyManager *)self updatingPolicy])
  {
    v3 = [MEMORY[0x277D037B0] sharedPowerAssertionManager];
    v4 = [(ASPolicyManager *)self delegate];
    v5 = [v4 accountPersistentUUID];
    [v3 reattainPowerAssertionsForGroupIdentifier:v5];

    [(ASPolicyManager *)self setUpdatingPolicy:0];
  }

  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    *v9 = 0;
    _os_log_impl(&dword_24A0AC000, v6, v7, "failed to update policy key!", v9, 2u);
  }

  v8 = [(ASPolicyManager *)self delegate];
  [v8 policyManagerFailedToUpdatePolicy:self];
}

- (void)requestPolicyUpdate
{
  if (![(ASPolicyManager *)self updatingPolicy])
  {
    v3 = [MEMORY[0x277D037B0] sharedPowerAssertionManager];
    v4 = [(ASPolicyManager *)self delegate];
    v5 = [v4 accountPersistentUUID];
    [v3 dropPowerAssertionsForGroupIdentifier:v5];

    [(ASPolicyManager *)self setUpdatingPolicy:1];
  }

  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    *v11 = 0;
    _os_log_impl(&dword_24A0AC000, v6, v7, "requesting policy update", v11, 2u);
  }

  v8 = [MEMORY[0x277D07AF0] sharedConnection];
  v9 = [(ASPolicyManager *)self delegate];
  v10 = [v9 accountID];
  [v8 requestPolicyUpdateForAccountID:v10];
}

- (void)setDelegate:(id)a3
{
  v6.receiver = self;
  v6.super_class = ASClientPolicyManager;
  v4 = a3;
  [(ASPolicyManager *)&v6 setDelegate:v4];
  v5 = [v4 accountPersistentUUID];

  [(ASClientPolicyManager *)self setPowerAssertionGroupIdentifier:v5];
}

@end