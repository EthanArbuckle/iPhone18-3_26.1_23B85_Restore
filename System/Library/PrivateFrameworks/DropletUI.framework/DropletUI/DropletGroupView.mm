@interface DropletGroupView
- (void)layoutSubviews;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation DropletGroupView

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if (key)
  {
    v6 = sub_249ED6C70();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  settingsCopy = settings;
  selfCopy = self;
  sub_249EB769C(v6, v8);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_249EB4FD8();
}

@end