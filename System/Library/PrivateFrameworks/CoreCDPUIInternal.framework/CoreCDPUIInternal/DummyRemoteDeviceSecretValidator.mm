@interface DummyRemoteDeviceSecretValidator
- (DummyRemoteDeviceSecretValidator)initWithExpectedSecret:(id)a3;
- (unint64_t)supportedEscapeOfferMask;
- (void)approveFromAnotherDeviceWithCompletion:(id)a3;
- (void)supportedEscapeOfferMaskCompletion:(id)a3;
- (void)validateRecoveryKey:(id)a3 withCompletion:(id)a4;
- (void)validateSecret:(id)a3 devices:(id)a4 type:(unint64_t)a5 withCompletion:(id)a6;
@end

@implementation DummyRemoteDeviceSecretValidator

- (DummyRemoteDeviceSecretValidator)initWithExpectedSecret:(id)a3
{
  v5 = a3;
  v6 = [(DummyRemoteDeviceSecretValidator *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_expectedString, a3);
  }

  return v7;
}

- (void)validateSecret:(id)a3 devices:(id)a4 type:(unint64_t)a5 withCompletion:(id)a6
{
  v8 = a3;
  v9 = a6;
  v10 = dispatch_time(0, 1500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__DummyRemoteDeviceSecretValidator_validateSecret_devices_type_withCompletion___block_invoke;
  block[3] = &unk_278E2F9B8;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_after(v10, MEMORY[0x277D85CD0], block);
}

void __79__DummyRemoteDeviceSecretValidator_validateSecret_devices_type_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isEqualToString:*(*(a1 + 40) + 24)];
  if ((v2 & 1) == 0)
  {
    ++*(*(a1 + 40) + 32);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(*(a1 + 40) + 32) < 3uLL;
    v5 = _CDPStateError();
    (*(v3 + 16))(v3, v2, v4, v5);
  }
}

- (void)validateRecoveryKey:(id)a3 withCompletion:(id)a4
{
  v4 = a4;
  v5 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__DummyRemoteDeviceSecretValidator_validateRecoveryKey_withCompletion___block_invoke;
  block[3] = &unk_278E2F9E0;
  v8 = v4;
  v6 = v4;
  dispatch_after(v5, MEMORY[0x277D85CD0], block);
}

uint64_t __71__DummyRemoteDeviceSecretValidator_validateRecoveryKey_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0, 0);
  }

  return result;
}

- (void)approveFromAnotherDeviceWithCompletion:(id)a3
{
  v3 = a3;
  v4 = dispatch_time(0, 100000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__DummyRemoteDeviceSecretValidator_approveFromAnotherDeviceWithCompletion___block_invoke;
  block[3] = &unk_278E2F9E0;
  v7 = v3;
  v5 = v3;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

uint64_t __75__DummyRemoteDeviceSecretValidator_approveFromAnotherDeviceWithCompletion___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __75__DummyRemoteDeviceSecretValidator_approveFromAnotherDeviceWithCompletion___block_invoke_cold_1(v2);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (unint64_t)supportedEscapeOfferMask
{
  if (CFPreferencesGetAppBooleanValue(@"OfferRemoteApproval", @"com.apple.corecdp", 0))
  {
    v2 = 20;
  }

  else
  {
    v2 = 16;
  }

  if (CFPreferencesGetAppBooleanValue(@"OfferAccountReset", @"com.apple.corecdp", 0))
  {
    v2 |= 8uLL;
  }

  if (CFPreferencesGetAppBooleanValue(@"OfferRecoveryKey", @"com.apple.corecdp", 0))
  {
    v2 |= 0x20uLL;
  }

  if (CFPreferencesGetAppBooleanValue(@"OfferCustodianRecovery", @"com.apple.corecdp", 0))
  {
    v2 |= 0x40uLL;
  }

  if (CFPreferencesGetAppBooleanValue(@"ContextTypeRepair", @"com.apple.corecdp", 0))
  {
    v2 |= 0x10uLL;
  }

  if (CFPreferencesGetAppIntegerValue(@"NumberOfDevices", @"com.apple.corecdp", 0) == 2)
  {
    return v2 | 2;
  }

  else
  {
    return v2;
  }
}

- (void)supportedEscapeOfferMaskCompletion:(id)a3
{
  v5 = a3;
  (*(a3 + 2))(v5, [(DummyRemoteDeviceSecretValidator *)self supportedEscapeOfferMask]);
}

@end