@interface IMWallpaperMetadataColor
- (IMWallpaperMetadataColor)initWithCoder:(id)coder;
- (IMWallpaperMetadataColor)initWithDictionaryRepresentation:(id)representation;
- (IMWallpaperMetadataColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
@end

@implementation IMWallpaperMetadataColor

- (IMWallpaperMetadataColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v14.receiver = self;
  v14.super_class = IMWallpaperMetadataColor;
  v10 = [(IMWallpaperMetadataColor *)&v14 init];
  if (v10)
  {
    v11 = [[IMWallpaperMetadataColor_Impl alloc] initWithRed:red green:green blue:blue alpha:alpha];
    swiftImpl = v10->swiftImpl;
    v10->swiftImpl = v11;
  }

  return v10;
}

- (IMWallpaperMetadataColor)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v9.receiver = self;
  v9.super_class = IMWallpaperMetadataColor;
  v5 = [(IMWallpaperMetadataColor *)&v9 init];
  if (v5)
  {
    v6 = [[IMWallpaperMetadataColor_Impl alloc] initWithDictionaryRepresentation:representationCopy];
    swiftImpl = v5->swiftImpl;
    v5->swiftImpl = v6;
  }

  return v5;
}

- (IMWallpaperMetadataColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = IMWallpaperMetadataColor;
  v5 = [(IMWallpaperMetadataColor *)&v9 init];
  if (v5)
  {
    v6 = [[IMWallpaperMetadataColor_Impl alloc] initWithCoder:coderCopy];
    swiftImpl = v5->swiftImpl;
    v5->swiftImpl = v6;
  }

  return v5;
}

@end