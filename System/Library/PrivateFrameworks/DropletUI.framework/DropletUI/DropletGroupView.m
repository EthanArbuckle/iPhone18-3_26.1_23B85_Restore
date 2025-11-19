@interface DropletGroupView
- (void)layoutSubviews;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation DropletGroupView

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if (a4)
  {
    v6 = sub_249ED6C70();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v10 = self;
  sub_249EB769C(v6, v8);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_249EB4FD8();
}

@end