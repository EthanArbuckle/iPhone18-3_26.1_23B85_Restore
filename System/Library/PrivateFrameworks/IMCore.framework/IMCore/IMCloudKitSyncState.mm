@interface IMCloudKitSyncState
- (BOOL)accountNeedsRepair;
- (BOOL)canChangeEnabledSetting;
- (BOOL)canEnableSyncing;
- (BOOL)canStartSyncing;
- (BOOL)hasNotSyncedInLastSevenDays;
- (BOOL)isSyncEnabledForDisplayOnly;
- (BOOL)isSyncing;
- (BOOL)isSyncingAvailable;
- (BOOL)isSyncingEnabled;
- (BOOL)isSyncingPaused;
- (BOOL)shouldFetchSyncStatistics;
- (BOOL)shouldSendSyncProgress;
- (BOOL)syncingFailed;
- (IMCloudKitSyncState)init;
- (IMCloudKitSyncState)initWithAccountEnabled:(BOOL)a3 stateDictionary:(id)a4;
- (NSArray)errors;
- (NSString)description;
- (NSString)syncStatusText;
- (id)createSyncProgressWithSyncStatistics:(id)a3;
- (id)syncErrorWithDomain:(id)a3 code:(int64_t)a4;
@end

@implementation IMCloudKitSyncState

- (IMCloudKitSyncState)initWithAccountEnabled:(BOOL)a3 stateDictionary:(id)a4
{
  v4 = a3;
  if (a4)
  {
    v5 = sub_1A84E5D3C();
  }

  else
  {
    v5 = 0;
  }

  return sub_1A825C5D0(v4, v5);
}

- (NSArray)errors
{
  if (*(self + OBJC_IVAR___IMCloudKitSyncState_errors))
  {
    v2 = *(self + OBJC_IVAR___IMCloudKitSyncState_errors);

    sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
    v3 = sub_1A84E5FEC();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isSyncing
{
  v2 = self;
  v3 = sub_1A83F6024();

  return v3 & 1;
}

- (BOOL)isSyncingPaused
{
  v2 = self;
  v3 = sub_1A83F61E4();

  return v3 & 1;
}

- (BOOL)isSyncingEnabled
{
  v2 = self;
  v3 = sub_1A83F630C();

  return v3 & 1;
}

- (BOOL)isSyncingAvailable
{
  v2 = self;
  v3 = sub_1A83F65D0();

  return v3 & 1;
}

- (BOOL)syncingFailed
{
  v2 = self;
  v3 = [(IMCloudKitSyncState *)v2 errors];
  v4 = v3;
  if (v3)
  {
  }

  return v4 != 0;
}

- (BOOL)canEnableSyncing
{
  v2 = self;
  v3 = sub_1A83F6984();

  return v3 & 1;
}

- (BOOL)canStartSyncing
{
  v2 = self;
  v3 = sub_1A83F6A30();

  return v3 & 1;
}

- (BOOL)canChangeEnabledSetting
{
  v2 = self;
  if ([(IMCloudKitSyncState *)v2 isSyncingAvailable]&& [(IMCloudKitSyncState *)v2 changingEnabledState]!= 1)
  {
    v4 = [(IMCloudKitSyncState *)v2 changingEnabledState];

    return v4 != 2;
  }

  else
  {

    return 0;
  }
}

- (BOOL)isSyncEnabledForDisplayOnly
{
  v2 = self;
  v3 = sub_1A83F6B64();

  return v3 & 1;
}

- (NSString)syncStatusText
{
  v2 = self;
  sub_1A83F6EB0();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1A84E5D8C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)accountNeedsRepair
{
  v2 = *MEMORY[0x1E69A6DD0];
  v3 = self;
  v4 = [(IMCloudKitSyncState *)v3 syncErrorWithDomain:v2 code:3];

  if (v4)
  {
  }

  return v4 != 0;
}

- (id)syncErrorWithDomain:(id)a3 code:(int64_t)a4
{
  v6 = sub_1A84E5DBC();
  v8 = v7;
  v9 = self;
  sub_1A83F7398(v6, v8, a4);
  v11 = v10;

  if (v11)
  {
    v12 = sub_1A84E547C();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NSString)description
{
  v2 = self;
  IMCloudKitSyncState.description.getter();

  v3 = sub_1A84E5D8C();

  return v3;
}

- (IMCloudKitSyncState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)shouldSendSyncProgress
{
  v2 = self;
  v3 = sub_1A8470A54();

  return v3 & 1;
}

- (BOOL)shouldFetchSyncStatistics
{
  v2 = self;
  v3 = sub_1A8470B58();

  return v3 & 1;
}

- (BOOL)hasNotSyncedInLastSevenDays
{
  v2 = self;
  v3 = sub_1A8470C28();

  return v3;
}

- (id)createSyncProgressWithSyncStatistics:(id)a3
{
  v4 = self;
  v5 = a3;
  v6 = sub_1A83FB5F4(v4);
  v7 = sub_1A83FB7A8(v6, v4, a3);

  return v7;
}

@end