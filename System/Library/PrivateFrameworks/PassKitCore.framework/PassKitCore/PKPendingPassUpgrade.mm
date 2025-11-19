@interface PKPendingPassUpgrade
- (BOOL)upgradeIsComplete;
- (PKPendingPassUpgrade)initWithRequest:(id)a3 completionHandler:(id)a4;
- (void)setAppletDidUpgrade:(BOOL)a3;
- (void)setUpgradedPass:(id)a3;
@end

@implementation PKPendingPassUpgrade

- (PKPendingPassUpgrade)initWithRequest:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PKPendingPassUpgrade *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_upgradeRequest, a3);
    v11 = objc_alloc(MEMORY[0x1E695DF70]);
    v12 = _Block_copy(v8);
    v13 = [v11 initWithObjects:{v12, 0}];
    completionHandlers = v10->_completionHandlers;
    v10->_completionHandlers = v13;

    v10->_requiresAppletUpgrade = 1;
  }

  return v10;
}

- (void)setAppletDidUpgrade:(BOOL)a3
{
  if (self->_appletDidUpgrade)
  {
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Applet did upgrade invoked twice?", v5, 2u);
    }
  }

  self->_appletDidUpgrade = 1;
}

- (void)setUpgradedPass:(id)a3
{
  v4 = a3;
  upgradedPass = self->_upgradedPass;
  if (upgradedPass)
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Pass did upgrade invoked twice?", v7, 2u);
    }

    upgradedPass = self->_upgradedPass;
  }

  self->_upgradedPass = v4;
}

- (BOOL)upgradeIsComplete
{
  if (self->_webRequestFinished)
  {
    if (!self->_upgradePassURL || (upgradedPass = self->_upgradedPass) != 0)
    {
      LOBYTE(upgradedPass) = !self->_requiresAppletUpgrade || self->_appletDidUpgrade;
    }
  }

  else
  {
    LOBYTE(upgradedPass) = 0;
  }

  return upgradedPass & 1;
}

@end