@interface ITIdleTimerConfiguration
+ (id)configurationToDisableIdleTimer;
- (ITIdleTimerConfiguration)initWithBSXPCCoder:(id)a3;
- (ITIdleTimerConfiguration)initWithConfiguration:(id)a3;
- (id)_copyWithNewIdentifier;
- (id)_uniquedReason:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation ITIdleTimerConfiguration

- (ITIdleTimerConfiguration)initWithConfiguration:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ITIdleTimerConfiguration;
  v5 = [(ITIdleTimerConfiguration *)&v12 init];
  if (v5)
  {
    v6 = [v4 _identifier];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_disablesTimer = [v4 disablesTimer];
    v5->_idleEventMask = [v4 _idleEventMask];
    v8 = [v4 _idleEventHandlerBlock];
    v9 = [v8 copy];
    idleEventHandlerBlock = v5->_idleEventHandlerBlock;
    v5->_idleEventHandlerBlock = v9;
  }

  return v5;
}

+ (id)configurationToDisableIdleTimer
{
  v2 = objc_alloc_init(a1);
  [v2 setDisablesTimer:1];

  return v2;
}

- (id)succinctDescription
{
  v2 = [(ITIdleTimerConfiguration *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(ITIdleTimerConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithConfiguration:self];
}

- (ITIdleTimerConfiguration)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ITIdleTimerConfiguration;
  v5 = [(ITIdleTimerConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_disablesTimer = [v4 decodeBoolForKey:@"disablesIdleTimer"];
    v5->_idleEventMask = [v4 decodeUInt64ForKey:@"idleEventMask"];
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  if (a3)
  {
    identifier = self->_identifier;
    v5 = a3;
    [v5 encodeObject:identifier forKey:@"identifier"];
    [v5 encodeBool:self->_disablesTimer forKey:@"disablesIdleTimer"];
    [v5 encodeUInt64:self->_idleEventMask forKey:@"idleEventMask"];
  }
}

- (id)_copyWithNewIdentifier
{
  v2 = [(ITIdleTimerConfiguration *)self copy];
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];
  v5 = v2[2];
  v2[2] = v4;

  return v2;
}

- (id)_uniquedReason:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [(ITIdleTimerConfiguration *)self _identifier];
  v7 = [v4 stringWithFormat:@"%@-%@", v5, v6];

  return v7;
}

@end