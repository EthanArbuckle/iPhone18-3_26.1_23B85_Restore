@interface BlastDoorBaseWritingDirectionAttribute
- (BlastDoorBaseWritingDirectionAttribute)init;
- (_NSRange)range;
- (int64_t)direction;
@end

@implementation BlastDoorBaseWritingDirectionAttribute

- (_NSRange)range
{
  v2 = sub_21454F43C(self, a2, &OBJC_IVAR___BlastDoorBaseWritingDirectionAttribute_baseWritingDirectionAttribute);
  result.length = v3;
  result.location = v2;
  return result;
}

- (int64_t)direction
{
  v2 = *(self + OBJC_IVAR___BlastDoorBaseWritingDirectionAttribute_baseWritingDirectionAttribute + 16);
  if (v2 <= 2)
  {
    return v2 - 1;
  }

  __break(1u);
  return self;
}

- (BlastDoorBaseWritingDirectionAttribute)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end