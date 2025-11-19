@interface BlastDoorMentionAttribute
- (BlastDoorMentionAttribute)init;
- (_NSRange)range;
@end

@implementation BlastDoorMentionAttribute

- (_NSRange)range
{
  v2 = sub_21454F43C(self, a2, &OBJC_IVAR___BlastDoorMentionAttribute_mentionAttribute);
  result.length = v3;
  result.location = v2;
  return result;
}

- (BlastDoorMentionAttribute)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end