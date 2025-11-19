@interface SGBannerDividerParameter
- (SGBannerDividerParameter)initWithPosition:(int)a3 color:(id)a4;
@end

@implementation SGBannerDividerParameter

- (SGBannerDividerParameter)initWithPosition:(int)a3 color:(id)a4
{
  v6 = a4;
  v7 = [(SGBannerDividerParameter *)self init];
  v8 = v7;
  if (v7)
  {
    v7->_position = a3;
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = [MEMORY[0x1E69DC888] blackColor];
    }

    color = v8->_color;
    v8->_color = v9;
  }

  return v8;
}

@end