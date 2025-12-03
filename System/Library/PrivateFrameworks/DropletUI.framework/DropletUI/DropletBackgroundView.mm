@interface DropletBackgroundView
- (void)layoutSubviews;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation DropletBackgroundView

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if (key)
  {
    if (sub_249ED6C70() == 0xD000000000000020 && 0x8000000249ED96E0 == v5 || (sub_249ED6ED0() & 1) != 0)
    {
      selfCopy = self;
      sub_249ED1618();
    }

    else
    {
    }
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_249ED0E18();
}

@end