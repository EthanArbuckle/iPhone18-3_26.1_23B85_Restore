@interface ITIdleTimeout
+ (id)timeoutGeneratorUsingIdentifier:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (ITIdleTimeout)init;
- (ITIdleTimeout)initWithDuration:(double)a3 identifier:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation ITIdleTimeout

- (ITIdleTimeout)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ITIdleTimeout.m" lineNumber:20 description:@"wrong initializer"];

  return 0;
}

- (ITIdleTimeout)initWithDuration:(double)a3 identifier:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = ITIdleTimeout;
  result = [(ITIdleTimeout *)&v7 init];
  if (result)
  {
    result->_duration = a3;
    result->_identifier = a4;
  }

  return result;
}

+ (id)timeoutGeneratorUsingIdentifier:(unint64_t)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__ITIdleTimeout_timeoutGeneratorUsingIdentifier___block_invoke;
  v5[3] = &__block_descriptor_40_e23___ITIdleTimeout_16__0d8l;
  v5[4] = a3;
  v3 = MEMORY[0x259C227A0](v5, a2);

  return v3;
}

ITIdleTimeout *__49__ITIdleTimeout_timeoutGeneratorUsingIdentifier___block_invoke(uint64_t a1, double a2)
{
  v2 = [[ITIdleTimeout alloc] initWithDuration:*(a1 + 32) identifier:a2];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = objc_opt_class(), v5 == objc_opt_class()) && v4[2] == self->_identifier)
  {
    v6 = v4[1];
    duration = self->_duration;
    v8 = BSFloatEqualToFloat();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ITIdleTimeout allocWithZone:a3];
  duration = self->_duration;
  identifier = self->_identifier;

  return [(ITIdleTimeout *)v4 initWithDuration:identifier identifier:duration];
}

- (id)succinctDescription
{
  v2 = [(ITIdleTimeout *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendUInt64:self->_identifier withName:@"identifier"];
  v5 = [v3 appendTimeInterval:@"duration" withName:0 decomposeUnits:self->_duration];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(ITIdleTimeout *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end