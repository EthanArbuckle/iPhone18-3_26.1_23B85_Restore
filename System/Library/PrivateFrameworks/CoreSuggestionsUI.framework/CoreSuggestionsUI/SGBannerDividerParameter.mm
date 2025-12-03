@interface SGBannerDividerParameter
- (SGBannerDividerParameter)initWithPosition:(int)position color:(id)color;
@end

@implementation SGBannerDividerParameter

- (SGBannerDividerParameter)initWithPosition:(int)position color:(id)color
{
  colorCopy = color;
  v7 = [(SGBannerDividerParameter *)self init];
  v8 = v7;
  if (v7)
  {
    v7->_position = position;
    if (colorCopy)
    {
      blackColor = colorCopy;
    }

    else
    {
      blackColor = [MEMORY[0x1E69DC888] blackColor];
    }

    color = v8->_color;
    v8->_color = blackColor;
  }

  return v8;
}

@end