@interface DNDMutableAppAction
- (void)setAction:(id)a3;
@end

@implementation DNDMutableAppAction

- (void)setAction:(id)a3
{
  v10 = a3;
  if (([(LNAction *)self->super._rawAction isEqual:?]& 1) == 0)
  {
    v4 = [v10 copy];
    rawAction = self->super._rawAction;
    self->super._rawAction = v4;

    v6 = [v10 identifier];
    v7 = [v6 copy];
    identifier = self->super._identifier;
    self->super._identifier = v7;

    encodedAction = self->super._encodedAction;
    self->super._encodedAction = 0;
  }
}

@end