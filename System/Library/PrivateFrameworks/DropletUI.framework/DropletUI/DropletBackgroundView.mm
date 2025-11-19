@interface DropletBackgroundView
- (void)layoutSubviews;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation DropletBackgroundView

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if (a4)
  {
    if (sub_249ED6C70() == 0xD000000000000020 && 0x8000000249ED96E0 == v5 || (sub_249ED6ED0() & 1) != 0)
    {
      v6 = self;
      sub_249ED1618();
    }

    else
    {
    }
  }
}

- (void)layoutSubviews
{
  v2 = self;
  sub_249ED0E18();
}

@end