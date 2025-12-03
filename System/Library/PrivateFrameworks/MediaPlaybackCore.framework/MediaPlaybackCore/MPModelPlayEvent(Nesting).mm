@interface MPModelPlayEvent(Nesting)
+ (id)mpc_playEventWithModelObject:()Nesting nestedPlayEvent:featureName:;
- (id)mpc_nestedPlayEvent;
- (void)mpc_setNestedPlayEvent:()Nesting;
@end

@implementation MPModelPlayEvent(Nesting)

- (void)mpc_setNestedPlayEvent:()Nesting
{
  value = a3;
  if (objc_opt_respondsToSelector())
  {
    [self setNestedPlayEvent:value];
  }

  else
  {
    objc_setAssociatedObject(self, _NestedPlayEvent, value, 1);
  }
}

- (id)mpc_nestedPlayEvent
{
  if (objc_opt_respondsToSelector())
  {
    [self nestedPlayEvent];
  }

  else
  {
    objc_getAssociatedObject(self, _NestedPlayEvent);
  }
  v2 = ;

  return v2;
}

+ (id)mpc_playEventWithModelObject:()Nesting nestedPlayEvent:featureName:
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  if (objc_opt_respondsToSelector())
  {
    v11 = [self playEventWithModelObject:v10 nestedPlayEvent:v8 featureName:v9];
  }

  else
  {
    v11 = [self playEventWithModelObject:v10 featureName:v9];

    [v11 mpc_setNestedPlayEvent:v8];
  }

  return v11;
}

@end