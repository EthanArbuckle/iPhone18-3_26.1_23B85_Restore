@interface ManagedAppsServicer
- (void)reportConfigDetailsStateWithCode:(int64_t)a3 reason:(id)a4 :(id)a5;
- (void)setAppConfigWithRecordID:(id)a3 appConfigRecord:(id)a4 persona:(id)a5 :(id)a6;
- (void)updateAppBundleIDFor:(id)a3 bundleID:(id)a4 :(id)a5;
- (void)updateAppCodeIdentityFor:(id)a3 appCodeIdentity:(id)a4 extensionCodeIdentities:(id)a5 :(id)a6;
@end

@implementation ManagedAppsServicer

- (void)reportConfigDetailsStateWithCode:(int64_t)a3 reason:(id)a4 :(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    v9 = sub_25804A110();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  _Block_copy(v8);

  sub_258040318(a3, v9, a4, self, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)setAppConfigWithRecordID:(id)a3 appConfigRecord:(id)a4 persona:(id)a5 :(id)a6
{
  v9 = _Block_copy(a6);
  v10 = sub_25804A110();
  v12 = v11;
  if (a5)
  {
    v13 = sub_25804A110();
    a5 = v14;
  }

  else
  {
    v13 = 0;
  }

  _Block_copy(v9);
  v15 = a4;

  sub_258040840(v10, v12, v15, v13, a5, self, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (void)updateAppBundleIDFor:(id)a3 bundleID:(id)a4 :(id)a5
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

- (void)updateAppCodeIdentityFor:(id)a3 appCodeIdentity:(id)a4 extensionCodeIdentities:(id)a5 :(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_25804A110();
  v11 = v10;
  sub_2580432A4(0, &qword_27F915C88, 0x277D034C8);
  v12 = sub_25804A1F0();
  _Block_copy(v8);
  v13 = a4;

  sub_258040E50(v9, v11, v13, v12, self, v8);
  _Block_release(v8);
  _Block_release(v8);
}

@end