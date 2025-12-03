@interface MULockScreenCoordinator
- (MULockScreenCoordinator)initWithPasscodeProvider:(id)provider;
- (void)performActionIfSuccessfullyAuthenticated:(id)authenticated;
@end

@implementation MULockScreenCoordinator

- (void)performActionIfSuccessfullyAuthenticated:(id)authenticated
{
  authenticatedCopy = authenticated;
  if (authenticatedCopy)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __68__MULockScreenCoordinator_performActionIfSuccessfullyAuthenticated___block_invoke;
    v5[3] = &unk_1E8219650;
    v6 = authenticatedCopy;
    objc_copyWeak(&v7, &location);
    [MapsUIUtilities checkDeviceLockStatusWithCompletion:v5];
    objc_destroyWeak(&v7);

    objc_destroyWeak(&location);
  }
}

void __68__MULockScreenCoordinator_performActionIfSuccessfullyAuthenticated___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      v5 = *(WeakRetained + 1);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __68__MULockScreenCoordinator_performActionIfSuccessfullyAuthenticated___block_invoke_2;
      v8[3] = &unk_1E821A730;
      v9 = *(a1 + 32);
      (*(v5 + 16))(v5, v8);
    }
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(*(a1 + 32) + 16);

    v7();
  }
}

uint64_t __68__MULockScreenCoordinator_performActionIfSuccessfullyAuthenticated___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (MULockScreenCoordinator)initWithPasscodeProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = MULockScreenCoordinator;
  v5 = [(MULockScreenCoordinator *)&v9 init];
  if (v5)
  {
    v6 = [providerCopy copy];
    passcodeProvider = v5->_passcodeProvider;
    v5->_passcodeProvider = v6;
  }

  return v5;
}

@end