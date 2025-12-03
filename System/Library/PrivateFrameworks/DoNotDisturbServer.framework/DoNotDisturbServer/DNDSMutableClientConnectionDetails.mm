@interface DNDSMutableClientConnectionDetails
- (id)copyWithZone:(_NSZone *)zone;
- (void)setActiveAssertionUpdateClientIdentifiers:(id)identifiers;
- (void)setAssertionUpdateClientIdentifiers:(id)identifiers;
- (void)setInterruptionInvalidationAssertionUUID:(id)d;
@end

@implementation DNDSMutableClientConnectionDetails

- (void)setInterruptionInvalidationAssertionUUID:(id)d
{
  v4 = [d copy];
  interruptionInvalidationAssertionUUID = self->super._interruptionInvalidationAssertionUUID;
  self->super._interruptionInvalidationAssertionUUID = v4;

  MEMORY[0x2821F96F8](v4, interruptionInvalidationAssertionUUID);
}

- (void)setAssertionUpdateClientIdentifiers:(id)identifiers
{
  v4 = [identifiers copy];
  assertionUpdateClientIdentifiers = self->super._assertionUpdateClientIdentifiers;
  self->super._assertionUpdateClientIdentifiers = v4;

  MEMORY[0x2821F96F8](v4, assertionUpdateClientIdentifiers);
}

- (void)setActiveAssertionUpdateClientIdentifiers:(id)identifiers
{
  v4 = [identifiers copy];
  activeAssertionUpdateClientIdentifiers = self->super._activeAssertionUpdateClientIdentifiers;
  self->super._activeAssertionUpdateClientIdentifiers = v4;

  MEMORY[0x2821F96F8](v4, activeAssertionUpdateClientIdentifiers);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSClientConnectionDetails alloc];

  return [(DNDSClientConnectionDetails *)v4 _initWithDetails:self];
}

@end