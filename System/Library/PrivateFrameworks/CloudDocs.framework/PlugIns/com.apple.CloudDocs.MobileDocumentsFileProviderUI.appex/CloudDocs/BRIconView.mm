@interface BRIconView
- (void)setIconVariant:(int)a3;
@end

@implementation BRIconView

- (void)setIconVariant:(int)a3
{
  if (self->_iconVariant != a3)
  {
    v13 = v3;
    v10 = @"HeaderIcon-large";
    if (a3 != 63)
    {
      v10 = 0;
    }

    if (((1 << a3) & 0x1000002) != 0)
    {
      v10 = @"HeaderIcon-regular";
    }

    if (((1 << a3) & 0x100008001) != 0)
    {
      v10 = @"HeaderIcon-compact";
    }

    if (a3 <= 0x3F)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [UIImage imageNamed:v11, v6, v5, v4, v13, v7];
    [(BRIconView *)self setImage:v12];

    LIIconContinuousCornerRadiusForVariant();

    [(BRIconView *)self _setContinuousCornerRadius:?];
  }
}

@end