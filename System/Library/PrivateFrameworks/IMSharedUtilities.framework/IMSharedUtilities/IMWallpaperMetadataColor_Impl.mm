@interface IMWallpaperMetadataColor_Impl
- (IMWallpaperMetadataColor_Impl)init;
- (IMWallpaperMetadataColor_Impl)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMWallpaperMetadataColor_Impl

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A88B7218(v4);
}

- (IMWallpaperMetadataColor_Impl)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_1A88B7E88();

  return v4;
}

- (IMWallpaperMetadataColor_Impl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end