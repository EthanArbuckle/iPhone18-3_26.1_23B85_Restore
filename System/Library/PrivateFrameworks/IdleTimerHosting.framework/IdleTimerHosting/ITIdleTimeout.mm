@interface ITIdleTimeout
+ (id)timeoutGeneratorUsingIdentifier:(unint64_t)identifier;
- (BOOL)isEqual:(id)equal;
- (ITIdleTimeout)init;
- (ITIdleTimeout)initWithDuration:(double)duration identifier:(unint64_t)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation ITIdleTimeout

- (ITIdleTimeout)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ITIdleTimeout.m" lineNumber:20 description:@"wrong initializer"];

  return 0;
}

- (ITIdleTimeout)initWithDuration:(double)duration identifier:(unint64_t)identifier
{
  v7.receiver = self;
  v7.super_class = ITIdleTimeout;
  result = [(ITIdleTimeout *)&v7 init];
  if (result)
  {
    result->_duration = duration;
    result->_identifier = identifier;
  }

  return result;
}

+ (id)timeoutGeneratorUsingIdentifier:(unint64_t)identifier
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__ITIdleTimeout_timeoutGeneratorUsingIdentifier___block_invoke;
  v5[3] = &__block_descriptor_40_e23___ITIdleTimeout_16__0d8l;
  v5[4] = identifier;
  v3 = MEMORY[0x259C227A0](v5, a2);

  return v3;
}

ITIdleTimeout *__49__ITIdleTimeout_timeoutGeneratorUsingIdentifier___block_invoke(uint64_t a1, double a2)
{
  v2 = [[ITIdleTimeout alloc] initWithDuration:*(a1 + 32) identifier:a2];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (v5 = objc_opt_class(), v5 == objc_opt_class()) && equalCopy[2] == self->_identifier)
  {
    v6 = equalCopy[1];
    duration = self->_duration;
    v8 = BSFloatEqualToFloat();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ITIdleTimeout allocWithZone:zone];
  duration = self->_duration;
  identifier = self->_identifier;

  return [(ITIdleTimeout *)v4 initWithDuration:identifier identifier:duration];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(ITIdleTimeout *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendUInt64:self->_identifier withName:@"identifier"];
  v5 = [v3 appendTimeInterval:@"duration" withName:0 decomposeUnits:self->_duration];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(ITIdleTimeout *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end