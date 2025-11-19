@interface _DYAOTImage
- (NSData)aotImageKey;
- (_DYAOTImage)init;
- (unint64_t)aotAddress;
- (unint64_t)aotSize;
- (unint64_t)x86Address;
@end

@implementation _DYAOTImage

- (unint64_t)x86Address
{
  v2 = self;
  v6 = sub_1AE4E2A60(1919181176, v3, v4, v5);

  return v6;
}

- (unint64_t)aotAddress
{
  v2 = self;
  v6 = sub_1AE4E2A60(1919181153, v3, v4, v5);

  return v6;
}

- (unint64_t)aotSize
{
  v2 = self;
  v6 = sub_1AE4E2B8C(v2, v3, v4, v5);

  return v6;
}

- (NSData)aotImageKey
{
  v2 = self;
  v6 = sub_1AE4E2CF0(v2, v3, v4, v5);
  v8 = v7;

  v9 = sub_1AE4EAA70();
  sub_1AE4A41E8(v6, v8);

  return v9;
}

- (_DYAOTImage)init
{
  *(&self->super.isa + OBJC_IVAR____DYAOTImage_impl) = 0;
  result = sub_1AE4EB140();
  __break(1u);
  return result;
}

@end