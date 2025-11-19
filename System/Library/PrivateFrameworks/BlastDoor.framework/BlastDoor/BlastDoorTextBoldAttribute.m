@interface BlastDoorTextBoldAttribute
- (BlastDoorTextBoldAttribute)init;
- (_NSRange)range;
@end

@implementation BlastDoorTextBoldAttribute

- (_NSRange)range
{
  v2 = sub_21454F43C(self, a2, &OBJC_IVAR___BlastDoorTextBoldAttribute_textBoldAttribute);
  result.length = v3;
  result.location = v2;
  return result;
}

- (BlastDoorTextBoldAttribute)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end