@interface PKMutablePassTileDescriptorState
- (id)copyWithZone:(_NSZone *)a3;
- (void)setEnabled:(unint64_t)a3;
- (void)setInProgress:(BOOL)a3;
- (void)setStateIdentifier:(id)a3;
- (void)setStateOverride:(id)a3;
- (void)setSupported:(BOOL)a3;
@end

@implementation PKMutablePassTileDescriptorState

- (id)copyWithZone:(_NSZone *)a3
{
  if (!self)
  {
    return 0;
  }

  v4 = [[PKPassTileDescriptorState alloc] initForType:self->super._type];
  [(PKPassTileDescriptorState *)self _copyInto:v4];
  return v4;
}

- (void)setSupported:(BOOL)a3
{
  if (self)
  {
    self->super._supported = a3;
  }
}

- (void)setEnabled:(unint64_t)a3
{
  if (self)
  {
    self->super._enabled = a3 != 0;
  }
}

- (void)setStateIdentifier:(id)a3
{
  if (self)
  {
    v4 = [a3 copy];
    stateIdentifier = self->super._stateIdentifier;
    self->super._stateIdentifier = v4;
  }
}

- (void)setStateOverride:(id)a3
{
  v5 = a3;
  if (self)
  {
    objc_storeStrong(&self->super._stateOverride, a3);
  }
}

- (void)setInProgress:(BOOL)a3
{
  if (self)
  {
    self->super._inProgress = a3;
  }
}

@end