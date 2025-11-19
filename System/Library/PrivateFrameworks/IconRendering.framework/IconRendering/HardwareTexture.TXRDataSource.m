@interface HardwareTexture.TXRDataSource
- (_TtCC13IconRendering15HardwareTextureP33_087535AF78BBB9411A15E8D8E24641C313TXRDataSource)init;
- (id)provideImageInfoAtLevel:(unint64_t)a3 element:(unint64_t)a4 face:(unint64_t)a5;
- (id)provideTextureInfo;
@end

@implementation HardwareTexture.TXRDataSource

- (id)provideImageInfoAtLevel:(unint64_t)a3 element:(unint64_t)a4 face:(unint64_t)a5
{
  v5 = self;
  v6 = sub_1B161625C();

  return v6;
}

- (id)provideTextureInfo
{
  v2 = self;
  v3 = sub_1B1615850();

  return v3;
}

- (_TtCC13IconRendering15HardwareTextureP33_087535AF78BBB9411A15E8D8E24641C313TXRDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end