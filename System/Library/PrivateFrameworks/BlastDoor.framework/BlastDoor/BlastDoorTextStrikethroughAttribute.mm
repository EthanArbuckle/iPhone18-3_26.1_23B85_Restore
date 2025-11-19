@interface BlastDoorTextStrikethroughAttribute
- (BlastDoorTextStrikethroughAttribute)init;
- (_NSRange)range;
@end

@implementation BlastDoorTextStrikethroughAttribute

- (_NSRange)range
{
  v2 = sub_21454F43C(self, a2, &OBJC_IVAR___BlastDoorTextStrikethroughAttribute_textStrikethroughAttribute);
  result.length = v3;
  result.location = v2;
  return result;
}

- (BlastDoorTextStrikethroughAttribute)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end