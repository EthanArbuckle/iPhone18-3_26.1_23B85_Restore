@interface IMCloudKitSyncProgress
- (IMCloudKitSyncProgress)init;
- (IMCloudKitSyncProgress)initWithType:(int64_t)type syncState:(id)state syncStatistics:(id)statistics;
- (NSArray)errors;
- (NSString)actionLabel;
- (NSString)percentCompleteString;
- (NSString)userMessageLabel;
- (double)percentComplete;
- (double)remainingItems;
@end

@implementation IMCloudKitSyncProgress

- (NSString)userMessageLabel
{
  if (*(&self->type + OBJC_IVAR___IMCloudKitSyncProgress_descriptor))
  {
    v2 = *(&self->syncStatistics + OBJC_IVAR___IMCloudKitSyncProgress_descriptor);
    v3 = *(&self->type + OBJC_IVAR___IMCloudKitSyncProgress_descriptor);

    v4 = sub_1A84E5D8C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)actionLabel
{
  if (*&self->descriptor[OBJC_IVAR___IMCloudKitSyncProgress_descriptor + 8])
  {
    v2 = *&self->descriptor[OBJC_IVAR___IMCloudKitSyncProgress_descriptor];
    v3 = *&self->descriptor[OBJC_IVAR___IMCloudKitSyncProgress_descriptor + 8];

    v4 = sub_1A84E5D8C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)percentComplete
{
  selfCopy = self;
  [(IMCloudKitSyncProgress *)selfCopy progressBarMax];
  if (v3 == 0.0)
  {

    return 1.0;
  }

  else
  {
    [(IMCloudKitSyncProgress *)selfCopy progressBarValue];
    v6 = v5;
    [(IMCloudKitSyncProgress *)selfCopy progressBarMax];
    v8 = v7;

    return v6 / v8;
  }
}

- (double)remainingItems
{
  selfCopy = self;
  [(IMCloudKitSyncProgress *)selfCopy progressBarMax];
  v4 = v3;
  [(IMCloudKitSyncProgress *)selfCopy progressBarValue];
  v6 = v5;

  return v4 - v6;
}

- (NSString)percentCompleteString
{
  sub_1A8244B68(0, &qword_1EB2E8050, 0x1E696ADA0);
  selfCopy = self;
  MEMORY[0x1AC56ACF0]([(IMCloudKitSyncProgress *)selfCopy percentComplete]);
  v5 = v4;

  if (v5)
  {
    v6 = sub_1A84E5D8C();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)errors
{
  selfCopy = self;
  syncState = [(IMCloudKitSyncProgress *)selfCopy syncState];
  if (syncState && (v4 = syncState, v5 = [(IMCloudKitSyncState *)syncState errors], v4, v5))
  {
    sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
    sub_1A84E5FFC();

    v6 = sub_1A84E5FEC();

    v7 = v6;
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (IMCloudKitSyncProgress)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (IMCloudKitSyncProgress)initWithType:(int64_t)type syncState:(id)state syncStatistics:(id)statistics
{
  v8 = objc_allocWithZone(IMCloudKitSyncProgress);
  stateCopy = state;
  statisticsCopy = statistics;
  v11 = sub_1A847094C(type, state, statistics);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

@end