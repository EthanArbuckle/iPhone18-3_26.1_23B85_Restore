@interface CEKLightingControlItem
+ (id)_defaultOutlineImage;
- (CEKLightingControlItem)initWithType:(int64_t)type;
@end

@implementation CEKLightingControlItem

+ (id)_defaultOutlineImage
{
  if (_defaultOutlineImage_onceToken != -1)
  {
    +[CEKLightingControlItem _defaultOutlineImage];
  }

  v3 = _defaultOutlineImage_kDefaultOutlineImage;

  return v3;
}

void __46__CEKLightingControlItem__defaultOutlineImage__block_invoke()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 scale];
  v2 = v1;

  v10.width = 1.0 / v2 + 31.0 + 2.0 / v2 * 2.0;
  v10.height = v10.width;
  UIGraphicsBeginImageContextWithOptions(v10, 0, v2);
  CurrentContext = UIGraphicsGetCurrentContext();
  v4 = [MEMORY[0x1E69DC888] whiteColor];
  [v4 setStroke];

  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v11.size.width = 1.0 / v2 + 31.0 + 2.0 / v2 * 2.0;
  v11.size.height = v11.size.width;
  v12 = CGRectInset(v11, 2.0 / v2, 2.0 / v2);
  CGContextStrokeEllipseInRect(CurrentContext, v12);
  v5 = UIGraphicsGetImageFromCurrentImageContext();
  v6 = _defaultOutlineImage_kDefaultOutlineImage;
  _defaultOutlineImage_kDefaultOutlineImage = v5;

  v7 = [_defaultOutlineImage_kDefaultOutlineImage imageWithRenderingMode:2];
  v8 = _defaultOutlineImage_kDefaultOutlineImage;
  _defaultOutlineImage_kDefaultOutlineImage = v7;

  UIGraphicsEndImageContext();
}

- (CEKLightingControlItem)initWithType:(int64_t)type
{
  v17.receiver = self;
  v17.super_class = CEKLightingControlItem;
  v4 = [(CEKLightingControlItem *)&v17 init];
  v5 = v4;
  if (v4)
  {
    v4->_lightingType = type;
    v6 = [CEKLightingEffectManager displayNameForLightingType:type];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [CEKLightingEffectManager displayImageForLightingType:type];
    displayImage = v5->_displayImage;
    v5->_displayImage = v8;

    v10 = MEMORY[0x1E69DCAB8];
    v11 = CEKFrameworkBundle();
    v12 = [v10 imageNamed:@"CEKLightingShadow" inBundle:v11];
    displayShadowImage = v5->_displayShadowImage;
    v5->_displayShadowImage = v12;

    if ((type - 2) <= 4)
    {
      _defaultOutlineImage = [objc_opt_class() _defaultOutlineImage];
      displayOutlineImage = v5->_displayOutlineImage;
      v5->_displayOutlineImage = _defaultOutlineImage;
    }
  }

  return v5;
}

@end