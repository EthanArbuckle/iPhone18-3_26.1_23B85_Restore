@interface DNDMutableAppAction
- (void)setAction:(id)action;
@end

@implementation DNDMutableAppAction

- (void)setAction:(id)action
{
  actionCopy = action;
  if (([(LNAction *)self->super._rawAction isEqual:?]& 1) == 0)
  {
    v4 = [actionCopy copy];
    rawAction = self->super._rawAction;
    self->super._rawAction = v4;

    identifier = [actionCopy identifier];
    v7 = [identifier copy];
    identifier = self->super._identifier;
    self->super._identifier = v7;

    encodedAction = self->super._encodedAction;
    self->super._encodedAction = 0;
  }
}

@end