@interface DNDMutableModeAssertionInvalidationDetails
- (id)copyWithZone:(_NSZone *)zone;
- (void)setIdentifier:(id)identifier;
@end

@implementation DNDMutableModeAssertionInvalidationDetails

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->super._identifier;
  self->super._identifier = v4;

  MEMORY[0x2821F96F8](v4, identifier);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDModeAssertionInvalidationDetails alloc];

  return [(DNDModeAssertionInvalidationDetails *)v4 _initWithDetails:self];
}

@end