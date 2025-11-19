@interface CNUIPRLikenessLoadingGroupPlaceholderProvider
- (CGImage)renderCircularImageForSize:(CGSize)a3 scale:(double)a4;
- (CGImage)renderRoundedRectImageForSize:(CGSize)a3 scale:(double)a4;
- (CNUIPRLikenessLoadingGroupPlaceholderProvider)initWithBackgroundStyle:(unint64_t)a3;
@end

@implementation CNUIPRLikenessLoadingGroupPlaceholderProvider

- (CNUIPRLikenessLoadingGroupPlaceholderProvider)initWithBackgroundStyle:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = CNUIPRLikenessLoadingGroupPlaceholderProvider;
  v4 = [(CNUIPRLikenessLoadingPlaceholderProvider *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_backgroundStyle = a3;
    v6 = v4;
  }

  return v5;
}

- (CGImage)renderCircularImageForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v7 = [(CNUIPRLikenessLoadingGroupPlaceholderProvider *)self backgroundStyle];

  return [CNUISnowglobeUtilities circularPlaceholderImageForSize:v7 backgroundStyle:width scale:height, a4];
}

- (CGImage)renderRoundedRectImageForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v7 = [(CNUIPRLikenessLoadingGroupPlaceholderProvider *)self backgroundStyle];

  return [CNUISnowglobeUtilities roundedRectPlaceholderImageForSize:v7 backgroundStyle:width scale:height, a4];
}

@end