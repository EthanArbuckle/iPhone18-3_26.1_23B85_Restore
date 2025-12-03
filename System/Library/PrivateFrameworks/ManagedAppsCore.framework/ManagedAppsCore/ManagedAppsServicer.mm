@interface ManagedAppsServicer
- (void)reportConfigDetailsStateWithCode:(int64_t)code reason:(id)reason :(id)a5;
- (void)setAppConfigWithRecordID:(id)d appConfigRecord:(id)record persona:(id)persona :(id)a6;
- (void)updateAppBundleIDFor:(id)for bundleID:(id)d :(id)a5;
- (void)updateAppCodeIdentityFor:(id)for appCodeIdentity:(id)identity extensionCodeIdentities:(id)identities :(id)a6;
@end

@implementation ManagedAppsServicer

- (void)reportConfigDetailsStateWithCode:(int64_t)code reason:(id)reason :(id)a5
{
  v8 = _Block_copy(a5);
  if (reason)
  {
    v9 = sub_25804A110();
    reason = v10;
  }

  else
  {
    v9 = 0;
  }

  _Block_copy(v8);

  sub_258040318(code, v9, reason, self, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)setAppConfigWithRecordID:(id)d appConfigRecord:(id)record persona:(id)persona :(id)a6
{
  v9 = _Block_copy(a6);
  v10 = sub_25804A110();
  v12 = v11;
  if (persona)
  {
    v13 = sub_25804A110();
    persona = v14;
  }

  else
  {
    v13 = 0;
  }

  _Block_copy(v9);
  recordCopy = record;

  sub_258040840(v10, v12, recordCopy, v13, persona, self, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (void)updateAppBundleIDFor:(id)for bundleID:(id)d :(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_25804A110();
  v9 = v8;
  v10 = sub_25804A110();
  v12 = v11;
  _Block_copy(v6);

  sub_258040B4C(v7, v9, v10, v12, self, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)updateAppCodeIdentityFor:(id)for appCodeIdentity:(id)identity extensionCodeIdentities:(id)identities :(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_25804A110();
  v11 = v10;
  sub_2580432A4(0, &qword_27F915C88, 0x277D034C8);
  v12 = sub_25804A1F0();
  _Block_copy(v8);
  identityCopy = identity;

  sub_258040E50(v9, v11, identityCopy, v12, self, v8);
  _Block_release(v8);
  _Block_release(v8);
}

@end