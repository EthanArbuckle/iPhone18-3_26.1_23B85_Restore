@interface BRShareSettingsSeparator
- (BRShareSettingsSeparator)initWithFrame:(CGRect)a3;
@end

@implementation BRShareSettingsSeparator

- (BRShareSettingsSeparator)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = BRShareSettingsSeparator;
  v3 = [(BRShareSettingsSeparator *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor separatorColor];
    [(BRShareSettingsSeparator *)v3 setBackgroundColor:v4];

    [(BRShareSettingsSeparator *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = +[UIScreen mainScreen];
    [v5 scale];
    v7 = 1.0 / v6;

    v8 = [(BRShareSettingsSeparator *)v3 heightAnchor];
    v9 = [v8 constraintEqualToConstant:v7];
    [v9 setActive:1];
  }

  return v3;
}

@end