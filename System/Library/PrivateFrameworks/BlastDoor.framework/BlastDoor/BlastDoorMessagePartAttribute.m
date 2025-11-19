@interface BlastDoorMessagePartAttribute
- (BlastDoorMessagePartAttribute)init;
- (_NSRange)range;
@end

@implementation BlastDoorMessagePartAttribute

- (_NSRange)range
{
  v2 = sub_21454F43C(self, a2, &OBJC_IVAR___BlastDoorMessagePartAttribute_messagePartAttribute);
  result.length = v3;
  result.location = v2;
  return result;
}

- (BlastDoorMessagePartAttribute)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end