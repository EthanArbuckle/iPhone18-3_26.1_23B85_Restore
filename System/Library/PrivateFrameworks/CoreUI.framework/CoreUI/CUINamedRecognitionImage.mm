@interface CUINamedRecognitionImage
- (CGImage)image;
- (CGSize)physicalSizeInMeters;
- (CUINamedRecognitionImage)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme;
- (int)exifOrientation;
@end

@implementation CUINamedRecognitionImage

- (CUINamedRecognitionImage)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme
{
  v7.receiver = self;
  v7.super_class = CUINamedRecognitionImage;
  v5 = [(CUINamedLookup *)&v7 initWithName:name usingRenditionKey:key fromTheme:theme];
  if ([(CUIThemeRendition *)[(CUINamedLookup *)v5 _rendition] type]== 1014)
  {

    return 0;
  }

  return v5;
}

- (CGImage)image
{
  _rendition = [(CUINamedLookup *)self _rendition];

  return [(CUIThemeRendition *)_rendition uncroppedImage];
}

- (CGSize)physicalSizeInMeters
{
  _rendition = [(CUINamedLookup *)self _rendition];

  [(CUIThemeRendition *)_rendition physicalSizeInMeters];
  result.height = v4;
  result.width = v3;
  return result;
}

- (int)exifOrientation
{
  _rendition = [(CUINamedLookup *)self _rendition];

  return [(CUIThemeRendition *)_rendition exifOrientation];
}

@end