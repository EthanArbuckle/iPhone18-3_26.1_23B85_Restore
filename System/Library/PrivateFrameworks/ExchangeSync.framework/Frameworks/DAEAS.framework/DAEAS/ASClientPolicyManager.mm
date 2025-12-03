@interface ASClientPolicyManager
- (void)dealloc;
- (void)policyFailedToUpdate;
- (void)policyKeyChanged:(id)changed;
- (void)requestPolicyUpdate;
- (void)setDelegate:(id)delegate;
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

    mEMORY[0x277D037B0] = [MEMORY[0x277D037B0] sharedPowerAssertionManager];
    [mEMORY[0x277D037B0] reattainPowerAssertionsForGroupIdentifier:self->_powerAssertionGroupIdentifier];

    [(ASPolicyManager *)self setUpdatingPolicy:0];
  }

  v6.receiver = self;
  v6.super_class = ASClientPolicyManager;
  [(ASClientPolicyManager *)&v6 dealloc];
}

- (void)policyKeyChanged:(id)changed
{
  if ([(ASPolicyManager *)self updatingPolicy])
  {
    mEMORY[0x277D037B0] = [MEMORY[0x277D037B0] sharedPowerAssertionManager];
    delegate = [(ASPolicyManager *)self delegate];
    accountPersistentUUID = [delegate accountPersistentUUID];
    [mEMORY[0x277D037B0] reattainPowerAssertionsForGroupIdentifier:accountPersistentUUID];

    [(ASPolicyManager *)self setUpdatingPolicy:0];
  }

  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v7, v8))
  {
    *v10 = 0;
    _os_log_impl(&dword_24A0AC000, v7, v8, "received notification of new policy key!", v10, 2u);
  }

  delegate2 = [(ASPolicyManager *)self delegate];
  [delegate2 policyManagerUpdatedPolicy:self];
}

- (void)policyFailedToUpdate
{
  if ([(ASPolicyManager *)self updatingPolicy])
  {
    mEMORY[0x277D037B0] = [MEMORY[0x277D037B0] sharedPowerAssertionManager];
    delegate = [(ASPolicyManager *)self delegate];
    accountPersistentUUID = [delegate accountPersistentUUID];
    [mEMORY[0x277D037B0] reattainPowerAssertionsForGroupIdentifier:accountPersistentUUID];

    [(ASPolicyManager *)self setUpdatingPolicy:0];
  }

  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    *v9 = 0;
    _os_log_impl(&dword_24A0AC000, v6, v7, "failed to update policy key!", v9, 2u);
  }

  delegate2 = [(ASPolicyManager *)self delegate];
  [delegate2 policyManagerFailedToUpdatePolicy:self];
}

- (void)requestPolicyUpdate
{
  if (![(ASPolicyManager *)self updatingPolicy])
  {
    mEMORY[0x277D037B0] = [MEMORY[0x277D037B0] sharedPowerAssertionManager];
    delegate = [(ASPolicyManager *)self delegate];
    accountPersistentUUID = [delegate accountPersistentUUID];
    [mEMORY[0x277D037B0] dropPowerAssertionsForGroupIdentifier:accountPersistentUUID];

    [(ASPolicyManager *)self setUpdatingPolicy:1];
  }

  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    *v11 = 0;
    _os_log_impl(&dword_24A0AC000, v6, v7, "requesting policy update", v11, 2u);
  }

  mEMORY[0x277D07AF0] = [MEMORY[0x277D07AF0] sharedConnection];
  delegate2 = [(ASPolicyManager *)self delegate];
  accountID = [delegate2 accountID];
  [mEMORY[0x277D07AF0] requestPolicyUpdateForAccountID:accountID];
}

- (void)setDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = ASClientPolicyManager;
  delegateCopy = delegate;
  [(ASPolicyManager *)&v6 setDelegate:delegateCopy];
  accountPersistentUUID = [delegateCopy accountPersistentUUID];

  [(ASClientPolicyManager *)self setPowerAssertionGroupIdentifier:accountPersistentUUID];
}

@end