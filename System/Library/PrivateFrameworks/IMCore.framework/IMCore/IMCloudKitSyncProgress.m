@interface IMCloudKitSyncProgress
- (IMCloudKitSyncProgress)init;
- (IMCloudKitSyncProgress)initWithType:(int64_t)a3 syncState:(id)a4 syncStatistics:(id)a5;
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
  v2 = self;
  [(IMCloudKitSyncProgress *)v2 progressBarMax];
  if (v3 == 0.0)
  {

    return 1.0;
  }

  else
  {
    [(IMCloudKitSyncProgress *)v2 progressBarValue];
    v6 = v5;
    [(IMCloudKitSyncProgress *)v2 progressBarMax];
    v8 = v7;

    return v6 / v8;
  }
}

- (double)remainingItems
{
  v2 = self;
  [(IMCloudKitSyncProgress *)v2 progressBarMax];
  v4 = v3;
  [(IMCloudKitSyncProgress *)v2 progressBarValue];
  v6 = v5;

  return v4 - v6;
}

- (NSString)percentCompleteString
{
  sub_1A8244B68(0, &qword_1EB2E8050, 0x1E696ADA0);
  v3 = self;
  MEMORY[0x1AC56ACF0]([(IMCloudKitSyncProgress *)v3 percentComplete]);
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
  v2 = self;
  v3 = [(IMCloudKitSyncProgress *)v2 syncState];
  if (v3 && (v4 = v3, v5 = [(IMCloudKitSyncState *)v3 errors], v4, v5))
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

- (IMCloudKitSyncProgress)initWithType:(int64_t)a3 syncState:(id)a4 syncStatistics:(id)a5
{
  v8 = objc_allocWithZone(IMCloudKitSyncProgress);
  v9 = a4;
  v10 = a5;
  v11 = sub_1A847094C(a3, a4, a5);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

@end