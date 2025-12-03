@interface DNDMutableBypassSettings
- (id)copyWithZone:(_NSZone *)zone;
- (void)setImmediateBypassCNGroupIdentifier:(id)identifier;
@end

@implementation DNDMutableBypassSettings

- (void)setImmediateBypassCNGroupIdentifier:(id)identifier
{
  v4 = [identifier copy];
  immediateBypassCNGroupIdentifier = self->super._immediateBypassCNGroupIdentifier;
  self->super._immediateBypassCNGroupIdentifier = v4;

  MEMORY[0x2821F96F8](v4, immediateBypassCNGroupIdentifier);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDBypassSettings alloc];

  return [(DNDBypassSettings *)v4 _initWithSettings:self];
}

@end