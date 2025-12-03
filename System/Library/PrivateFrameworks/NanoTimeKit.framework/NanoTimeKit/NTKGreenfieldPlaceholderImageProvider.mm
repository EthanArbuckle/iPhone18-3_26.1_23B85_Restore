@interface NTKGreenfieldPlaceholderImageProvider
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NTKGreenfieldPlaceholderImageProvider

NTKGreenfieldPlaceholderView *__49__NTKGreenfieldPlaceholderImageProvider_provider__block_invoke(double a1, double a2)
{
  v2 = [[NTKGreenfieldPlaceholderView alloc] initWithFrame:0.0, 0.0, a1, a2];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [v5 progress];
    if (CLKFloatEqualsFloat())
    {
      appIcon = self->_appIcon;
      appIcon = [v5 appIcon];
      v8 = NTKEqualObjects(appIcon, appIcon);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = NTKGreenfieldPlaceholderImageProvider;
  v4 = [(CLKImageProvider *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setProgress:self->_progress];
    [v5 setAppIcon:self->_appIcon];
  }

  return v5;
}

@end