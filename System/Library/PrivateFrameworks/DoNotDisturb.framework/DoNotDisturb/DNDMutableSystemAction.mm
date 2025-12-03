@interface DNDMutableSystemAction
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation DNDMutableSystemAction

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSystemAction allocWithZone:zone];
  action = self->super._action;
  reverseAction = self->super._reverseAction;
  enabled = self->super._enabled;

  return [(DNDSystemAction *)v4 initWithAction:action reverseAction:reverseAction enabled:enabled];
}

@end