@interface IMDLegacyRecordBridge
+ (uint64_t)schemaVersion;
+ (void)prewarm;
- (IMDLegacyRecordBridge)init;
@end

@implementation IMDLegacyRecordBridge

+ (uint64_t)schemaVersion
{
  if (qword_1EBA50F70 != -1)
  {
    result = swift_once();
  }

  v0 = *(qword_1EBA5DA90 + 16);
  if (v0)
  {
    if (v0 <= *(qword_1EBA5DA88 + 16))
    {
      return *(qword_1EBA5DA88 + 8 * v0 + 24);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

+ (void)prewarm
{
  [self messageRecordDescriptor];

  [self chatRecordDescriptor];
}

- (IMDLegacyRecordBridge)init
{
  v3.receiver = self;
  v3.super_class = IMDLegacyRecordBridge;
  return [(IMDLegacyRecordBridge *)&v3 init];
}

@end