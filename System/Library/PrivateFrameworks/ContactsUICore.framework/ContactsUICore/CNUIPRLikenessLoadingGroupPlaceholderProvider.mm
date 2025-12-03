@interface CNUIPRLikenessLoadingGroupPlaceholderProvider
- (CGImage)renderCircularImageForSize:(CGSize)size scale:(double)scale;
- (CGImage)renderRoundedRectImageForSize:(CGSize)size scale:(double)scale;
- (CNUIPRLikenessLoadingGroupPlaceholderProvider)initWithBackgroundStyle:(unint64_t)style;
@end

@implementation CNUIPRLikenessLoadingGroupPlaceholderProvider

- (CNUIPRLikenessLoadingGroupPlaceholderProvider)initWithBackgroundStyle:(unint64_t)style
{
  v8.receiver = self;
  v8.super_class = CNUIPRLikenessLoadingGroupPlaceholderProvider;
  v4 = [(CNUIPRLikenessLoadingPlaceholderProvider *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_backgroundStyle = style;
    v6 = v4;
  }

  return v5;
}

- (CGImage)renderCircularImageForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  backgroundStyle = [(CNUIPRLikenessLoadingGroupPlaceholderProvider *)self backgroundStyle];

  return [CNUISnowglobeUtilities circularPlaceholderImageForSize:backgroundStyle backgroundStyle:width scale:height, scale];
}

- (CGImage)renderRoundedRectImageForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  backgroundStyle = [(CNUIPRLikenessLoadingGroupPlaceholderProvider *)self backgroundStyle];

  return [CNUISnowglobeUtilities roundedRectPlaceholderImageForSize:backgroundStyle backgroundStyle:width scale:height, scale];
}

@end