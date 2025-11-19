@interface DNDMutableSystemAction
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation DNDMutableSystemAction

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDSystemAction allocWithZone:a3];
  action = self->super._action;
  reverseAction = self->super._reverseAction;
  enabled = self->super._enabled;

  return [(DNDSystemAction *)v4 initWithAction:action reverseAction:reverseAction enabled:enabled];
}

@end