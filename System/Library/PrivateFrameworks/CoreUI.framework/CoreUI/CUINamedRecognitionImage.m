@interface CUINamedRecognitionImage
- (CGImage)image;
- (CGSize)physicalSizeInMeters;
- (CUINamedRecognitionImage)initWithName:(id)a3 usingRenditionKey:(id)a4 fromTheme:(unint64_t)a5;
- (int)exifOrientation;
@end

@implementation CUINamedRecognitionImage

- (CUINamedRecognitionImage)initWithName:(id)a3 usingRenditionKey:(id)a4 fromTheme:(unint64_t)a5
{
  v7.receiver = self;
  v7.super_class = CUINamedRecognitionImage;
  v5 = [(CUINamedLookup *)&v7 initWithName:a3 usingRenditionKey:a4 fromTheme:a5];
  if ([(CUIThemeRendition *)[(CUINamedLookup *)v5 _rendition] type]== 1014)
  {

    return 0;
  }

  return v5;
}

- (CGImage)image
{
  v2 = [(CUINamedLookup *)self _rendition];

  return [(CUIThemeRendition *)v2 uncroppedImage];
}

- (CGSize)physicalSizeInMeters
{
  v2 = [(CUINamedLookup *)self _rendition];

  [(CUIThemeRendition *)v2 physicalSizeInMeters];
  result.height = v4;
  result.width = v3;
  return result;
}

- (int)exifOrientation
{
  v2 = [(CUINamedLookup *)self _rendition];

  return [(CUIThemeRendition *)v2 exifOrientation];
}

@end