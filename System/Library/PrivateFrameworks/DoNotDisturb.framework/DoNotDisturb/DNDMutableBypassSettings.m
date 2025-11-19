@interface DNDMutableBypassSettings
- (id)copyWithZone:(_NSZone *)a3;
- (void)setImmediateBypassCNGroupIdentifier:(id)a3;
@end

@implementation DNDMutableBypassSettings

- (void)setImmediateBypassCNGroupIdentifier:(id)a3
{
  v4 = [a3 copy];
  immediateBypassCNGroupIdentifier = self->super._immediateBypassCNGroupIdentifier;
  self->super._immediateBypassCNGroupIdentifier = v4;

  MEMORY[0x2821F96F8](v4, immediateBypassCNGroupIdentifier);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDBypassSettings alloc];

  return [(DNDBypassSettings *)v4 _initWithSettings:self];
}

@end