@interface BlastDoorTextUnderlineAttribute
- (BlastDoorTextUnderlineAttribute)init;
- (_NSRange)range;
@end

@implementation BlastDoorTextUnderlineAttribute

- (_NSRange)range
{
  v2 = sub_21454F43C(self, a2, &OBJC_IVAR___BlastDoorTextUnderlineAttribute_textUnderlineAttribute);
  result.length = v3;
  result.location = v2;
  return result;
}

- (BlastDoorTextUnderlineAttribute)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end