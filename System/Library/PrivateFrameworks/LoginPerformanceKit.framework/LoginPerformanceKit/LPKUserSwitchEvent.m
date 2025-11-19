@interface LPKUserSwitchEvent
- (LPKUserSwitchEvent)init;
@end

@implementation LPKUserSwitchEvent

- (LPKUserSwitchEvent)init
{
  v6.receiver = self;
  v6.super_class = LPKUserSwitchEvent;
  v2 = [(LPKUserSwitchEvent *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    signposts = v2->_signposts;
    v2->_signposts = v3;
  }

  return v2;
}

@end