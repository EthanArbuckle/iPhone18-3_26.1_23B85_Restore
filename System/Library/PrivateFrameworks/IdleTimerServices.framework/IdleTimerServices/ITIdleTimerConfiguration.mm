@interface ITIdleTimerConfiguration
+ (id)configurationToDisableIdleTimer;
- (ITIdleTimerConfiguration)initWithBSXPCCoder:(id)coder;
- (ITIdleTimerConfiguration)initWithConfiguration:(id)configuration;
- (id)_copyWithNewIdentifier;
- (id)_uniquedReason:(id)reason;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation ITIdleTimerConfiguration

- (ITIdleTimerConfiguration)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = ITIdleTimerConfiguration;
  v5 = [(ITIdleTimerConfiguration *)&v12 init];
  if (v5)
  {
    _identifier = [configurationCopy _identifier];
    identifier = v5->_identifier;
    v5->_identifier = _identifier;

    v5->_disablesTimer = [configurationCopy disablesTimer];
    v5->_idleEventMask = [configurationCopy _idleEventMask];
    _idleEventHandlerBlock = [configurationCopy _idleEventHandlerBlock];
    v9 = [_idleEventHandlerBlock copy];
    idleEventHandlerBlock = v5->_idleEventHandlerBlock;
    v5->_idleEventHandlerBlock = v9;
  }

  return v5;
}

+ (id)configurationToDisableIdleTimer
{
  v2 = objc_alloc_init(self);
  [v2 setDisablesTimer:1];

  return v2;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(ITIdleTimerConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = v3;
  if (self->_disablesTimer)
  {
    v5 = [v3 appendObject:self->_identifier withName:@"identifier"];
    v6 = [v4 appendBool:self->_disablesTimer withName:@"disablesTimer"];
    v7 = [v4 appendUnsignedInteger:self->_idleEventMask withName:@"idleEventMask"];
  }

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(ITIdleTimerConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithConfiguration:self];
}

- (ITIdleTimerConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ITIdleTimerConfiguration;
  v5 = [(ITIdleTimerConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_disablesTimer = [coderCopy decodeBoolForKey:@"disablesIdleTimer"];
    v5->_idleEventMask = [coderCopy decodeUInt64ForKey:@"idleEventMask"];
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  if (coder)
  {
    identifier = self->_identifier;
    coderCopy = coder;
    [coderCopy encodeObject:identifier forKey:@"identifier"];
    [coderCopy encodeBool:self->_disablesTimer forKey:@"disablesIdleTimer"];
    [coderCopy encodeUInt64:self->_idleEventMask forKey:@"idleEventMask"];
  }
}

- (id)_copyWithNewIdentifier
{
  v2 = [(ITIdleTimerConfiguration *)self copy];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v5 = v2[2];
  v2[2] = uUIDString;

  return v2;
}

- (id)_uniquedReason:(id)reason
{
  v4 = MEMORY[0x277CCACA8];
  reasonCopy = reason;
  _identifier = [(ITIdleTimerConfiguration *)self _identifier];
  v7 = [v4 stringWithFormat:@"%@-%@", reasonCopy, _identifier];

  return v7;
}

@end