@interface PKMutablePassTileDescriptorState
- (id)copyWithZone:(_NSZone *)zone;
- (void)setEnabled:(unint64_t)enabled;
- (void)setInProgress:(BOOL)progress;
- (void)setStateIdentifier:(id)identifier;
- (void)setStateOverride:(id)override;
- (void)setSupported:(BOOL)supported;
@end

@implementation PKMutablePassTileDescriptorState

- (id)copyWithZone:(_NSZone *)zone
{
  if (!self)
  {
    return 0;
  }

  v4 = [[PKPassTileDescriptorState alloc] initForType:self->super._type];
  [(PKPassTileDescriptorState *)self _copyInto:v4];
  return v4;
}

- (void)setSupported:(BOOL)supported
{
  if (self)
  {
    self->super._supported = supported;
  }
}

- (void)setEnabled:(unint64_t)enabled
{
  if (self)
  {
    self->super._enabled = enabled != 0;
  }
}

- (void)setStateIdentifier:(id)identifier
{
  if (self)
  {
    v4 = [identifier copy];
    stateIdentifier = self->super._stateIdentifier;
    self->super._stateIdentifier = v4;
  }
}

- (void)setStateOverride:(id)override
{
  overrideCopy = override;
  if (self)
  {
    objc_storeStrong(&self->super._stateOverride, override);
  }
}

- (void)setInProgress:(BOOL)progress
{
  if (self)
  {
    self->super._inProgress = progress;
  }
}

@end