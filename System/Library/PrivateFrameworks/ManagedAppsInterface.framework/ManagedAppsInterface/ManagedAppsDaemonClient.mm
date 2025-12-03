@interface ManagedAppsDaemonClient
- (void)getCertificateIdentifiers:(id)identifiers;
- (void)getIdentityIdentifiers:(id)identifiers;
- (void)getPasswordIdentifiers:(id)identifiers;
- (void)reportConfigDetailsStateWithCode:(int64_t)code reason:(id)reason :(id)a5;
- (void)setAppConfigWithRecordID:(id)d appConfigRecord:(id)record persona:(id)persona :(id)a6;
- (void)updateAppBundleIDFor:(id)for bundleID:(id)d :(id)a5;
- (void)updateAppCodeIdentityFor:(id)for appCodeIdentity:(id)identity extensionCodeIdentities:(id)identities :(id)a6;
@end

@implementation ManagedAppsDaemonClient

- (void)getPasswordIdentifiers:(id)identifiers
{
  v3 = _Block_copy(identifiers);
  _Block_copy(v3);

  sub_25806F7EC(v4, v3, &unk_28693C598, sub_258078CF8, &block_descriptor_359, &selRef_getPasswordIdentifiers_);
  _Block_release(v3);
}

- (void)getCertificateIdentifiers:(id)identifiers
{
  v3 = _Block_copy(identifiers);
  _Block_copy(v3);

  sub_25806F7EC(v4, v3, &unk_28693C4F8, sub_258078CF8, &block_descriptor_345, &selRef_getCertificateIdentifiers_);
  _Block_release(v3);
}

- (void)getIdentityIdentifiers:(id)identifiers
{
  v3 = _Block_copy(identifiers);
  _Block_copy(v3);

  sub_25806F7EC(v4, v3, &unk_28693C318, sub_258078478, &block_descriptor_306, &selRef_getIdentityIdentifiers_);
  _Block_release(v3);
}

- (void)reportConfigDetailsStateWithCode:(int64_t)code reason:(id)reason :(id)a5
{
  v8 = _Block_copy(a5);
  if (reason)
  {
    v9 = sub_25807FCE8();
    reason = v10;
  }

  else
  {
    v9 = 0;
  }

  _Block_copy(v8);

  sub_25806FDE4(code, v9, reason, self, v8);
  _Block_release(v8);
}

- (void)setAppConfigWithRecordID:(id)d appConfigRecord:(id)record persona:(id)persona :(id)a6
{
  v9 = _Block_copy(a6);
  v10 = sub_25807FCE8();
  v12 = v11;
  if (persona)
  {
    v13 = sub_25807FCE8();
    persona = v14;
  }

  else
  {
    v13 = 0;
  }

  _Block_copy(v9);
  recordCopy = record;

  sub_258072A2C(v10, v12, recordCopy, v13, persona, self, v9);
  _Block_release(v9);
}

- (void)updateAppBundleIDFor:(id)for bundleID:(id)d :(id)a5
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

- (void)updateAppCodeIdentityFor:(id)for appCodeIdentity:(id)identity extensionCodeIdentities:(id)identities :(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_25807FCE8();
  v11 = v10;
  sub_2580773A4();
  v12 = sub_25807FD88();
  _Block_copy(v8);
  identityCopy = identity;

  sub_2580731A8(v9, v11, identityCopy, v12, self, v8);
  _Block_release(v8);
}

@end