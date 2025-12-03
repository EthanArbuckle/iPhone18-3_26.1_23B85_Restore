@interface BRShareSettingsSeparator
- (BRShareSettingsSeparator)initWithFrame:(CGRect)frame;
@end

@implementation BRShareSettingsSeparator

- (BRShareSettingsSeparator)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = BRShareSettingsSeparator;
  v3 = [(BRShareSettingsSeparator *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor separatorColor];
    [(BRShareSettingsSeparator *)v3 setBackgroundColor:v4];

    [(BRShareSettingsSeparator *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = +[UIScreen mainScreen];
    [v5 scale];
    v7 = 1.0 / v6;

    heightAnchor = [(BRShareSettingsSeparator *)v3 heightAnchor];
    v9 = [heightAnchor constraintEqualToConstant:v7];
    [v9 setActive:1];
  }

  return v3;
}

@end