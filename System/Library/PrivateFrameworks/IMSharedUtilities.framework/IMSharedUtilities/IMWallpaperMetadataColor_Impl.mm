@interface IMWallpaperMetadataColor_Impl
- (IMWallpaperMetadataColor_Impl)init;
- (IMWallpaperMetadataColor_Impl)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMWallpaperMetadataColor_Impl

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1A88B7218(coderCopy);
}

- (IMWallpaperMetadataColor_Impl)initWithCoder:(id)coder
{
  coderCopy = coder;
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