@interface ManagedAppsDaemonClient
- (void)getCertificateIdentifiers:(id)a3;
- (void)getIdentityIdentifiers:(id)a3;
- (void)getPasswordIdentifiers:(id)a3;
- (void)reportConfigDetailsStateWithCode:(int64_t)a3 reason:(id)a4 :(id)a5;
- (void)setAppConfigWithRecordID:(id)a3 appConfigRecord:(id)a4 persona:(id)a5 :(id)a6;
- (void)updateAppBundleIDFor:(id)a3 bundleID:(id)a4 :(id)a5;
- (void)updateAppCodeIdentityFor:(id)a3 appCodeIdentity:(id)a4 extensionCodeIdentities:(id)a5 :(id)a6;
@end

@implementation ManagedAppsDaemonClient

- (void)getPasswordIdentifiers:(id)a3
{
  v3 = _Block_copy(a3);
  _Block_copy(v3);

  sub_25806F7EC(v4, v3, &unk_28693C598, sub_258078CF8, &block_descriptor_359, &selRef_getPasswordIdentifiers_);
  _Block_release(v3);
}

- (void)getCertificateIdentifiers:(id)a3
{
  v3 = _Block_copy(a3);
  _Block_copy(v3);

  sub_25806F7EC(v4, v3, &unk_28693C4F8, sub_258078CF8, &block_descriptor_345, &selRef_getCertificateIdentifiers_);
  _Block_release(v3);
}

- (void)getIdentityIdentifiers:(id)a3
{
  v3 = _Block_copy(a3);
  _Block_copy(v3);

  sub_25806F7EC(v4, v3, &unk_28693C318, sub_258078478, &block_descriptor_306, &selRef_getIdentityIdentifiers_);
  _Block_release(v3);
}

- (void)reportConfigDetailsStateWithCode:(int64_t)a3 reason:(id)a4 :(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    v9 = sub_25807FCE8();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  _Block_copy(v8);

  sub_25806FDE4(a3, v9, a4, self, v8);
  _Block_release(v8);
}

- (void)setAppConfigWithRecordID:(id)a3 appConfigRecord:(id)a4 persona:(id)a5 :(id)a6
{
  v9 = _Block_copy(a6);
  v10 = sub_25807FCE8();
  v12 = v11;
  if (a5)
  {
    v13 = sub_25807FCE8();
    a5 = v14;
  }

  else
  {
    v13 = 0;
  }

  _Block_copy(v9);
  v15 = a4;

  sub_258072A2C(v10, v12, v15, v13, a5, self, v9);
  _Block_release(v9);
}

- (void)updateAppBundleIDFor:(id)a3 bundleID:(id)a4 :(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_25807FCE8();
  v9 = v8;
  v10 = sub_25807FCE8();
  v12 = v11;
  _Block_copy(v6);

  sub_258072E30(v7, v9, v10, v12, self, v6);
  _Block_release(v6);
}

- (void)updateAppCodeIdentityFor:(id)a3 appCodeIdentity:(id)a4 extensionCodeIdentities:(id)a5 :(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_25807FCE8();
  v11 = v10;
  sub_2580773A4();
  v12 = sub_25807FD88();
  _Block_copy(v8);
  v13 = a4;

  sub_2580731A8(v9, v11, v13, v12, self, v8);
  _Block_release(v8);
}

@end