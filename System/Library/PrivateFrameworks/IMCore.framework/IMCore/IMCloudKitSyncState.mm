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
- (IMCloudKitSyncState)initWithAccountEnabled:(BOOL)enabled stateDictionary:(id)dictionary;
- (NSArray)errors;
- (NSString)description;
- (NSString)syncStatusText;
- (id)createSyncProgressWithSyncStatistics:(id)statistics;
- (id)syncErrorWithDomain:(id)domain code:(int64_t)code;
@end

@implementation IMCloudKitSyncState

- (IMCloudKitSyncState)initWithAccountEnabled:(BOOL)enabled stateDictionary:(id)dictionary
{
  enabledCopy = enabled;
  if (dictionary)
  {
    v5 = sub_1A84E5D3C();
  }

  else
  {
    v5 = 0;
  }

  return sub_1A825C5D0(enabledCopy, v5);
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
  selfCopy = self;
  v3 = sub_1A83F6024();

  return v3 & 1;
}

- (BOOL)isSyncingPaused
{
  selfCopy = self;
  v3 = sub_1A83F61E4();

  return v3 & 1;
}

- (BOOL)isSyncingEnabled
{
  selfCopy = self;
  v3 = sub_1A83F630C();

  return v3 & 1;
}

- (BOOL)isSyncingAvailable
{
  selfCopy = self;
  v3 = sub_1A83F65D0();

  return v3 & 1;
}

- (BOOL)syncingFailed
{
  selfCopy = self;
  errors = [(IMCloudKitSyncState *)selfCopy errors];
  v4 = errors;
  if (errors)
  {
  }

  return v4 != 0;
}

- (BOOL)canEnableSyncing
{
  selfCopy = self;
  v3 = sub_1A83F6984();

  return v3 & 1;
}

- (BOOL)canStartSyncing
{
  selfCopy = self;
  v3 = sub_1A83F6A30();

  return v3 & 1;
}

- (BOOL)canChangeEnabledSetting
{
  selfCopy = self;
  if ([(IMCloudKitSyncState *)selfCopy isSyncingAvailable]&& [(IMCloudKitSyncState *)selfCopy changingEnabledState]!= 1)
  {
    changingEnabledState = [(IMCloudKitSyncState *)selfCopy changingEnabledState];

    return changingEnabledState != 2;
  }

  else
  {

    return 0;
  }
}

- (BOOL)isSyncEnabledForDisplayOnly
{
  selfCopy = self;
  v3 = sub_1A83F6B64();

  return v3 & 1;
}

- (NSString)syncStatusText
{
  selfCopy = self;
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
  selfCopy = self;
  v4 = [(IMCloudKitSyncState *)selfCopy syncErrorWithDomain:v2 code:3];

  if (v4)
  {
  }

  return v4 != 0;
}

- (id)syncErrorWithDomain:(id)domain code:(int64_t)code
{
  v6 = sub_1A84E5DBC();
  v8 = v7;
  selfCopy = self;
  sub_1A83F7398(v6, v8, code);
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
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_1A8470A54();

  return v3 & 1;
}

- (BOOL)shouldFetchSyncStatistics
{
  selfCopy = self;
  v3 = sub_1A8470B58();

  return v3 & 1;
}

- (BOOL)hasNotSyncedInLastSevenDays
{
  selfCopy = self;
  v3 = sub_1A8470C28();

  return v3;
}

- (id)createSyncProgressWithSyncStatistics:(id)statistics
{
  selfCopy = self;
  statisticsCopy = statistics;
  v6 = sub_1A83FB5F4(selfCopy);
  v7 = sub_1A83FB7A8(v6, selfCopy, statistics);

  return v7;
}

@end