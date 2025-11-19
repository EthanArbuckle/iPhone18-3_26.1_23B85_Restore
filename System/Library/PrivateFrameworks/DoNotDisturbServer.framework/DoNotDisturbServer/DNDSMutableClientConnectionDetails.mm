@interface DNDSMutableClientConnectionDetails
- (id)copyWithZone:(_NSZone *)a3;
- (void)setActiveAssertionUpdateClientIdentifiers:(id)a3;
- (void)setAssertionUpdateClientIdentifiers:(id)a3;
- (void)setInterruptionInvalidationAssertionUUID:(id)a3;
@end

@implementation DNDSMutableClientConnectionDetails

- (void)setInterruptionInvalidationAssertionUUID:(id)a3
{
  v4 = [a3 copy];
  interruptionInvalidationAssertionUUID = self->super._interruptionInvalidationAssertionUUID;
  self->super._interruptionInvalidationAssertionUUID = v4;

  MEMORY[0x2821F96F8](v4, interruptionInvalidationAssertionUUID);
}

- (void)setAssertionUpdateClientIdentifiers:(id)a3
{
  v4 = [a3 copy];
  assertionUpdateClientIdentifiers = self->super._assertionUpdateClientIdentifiers;
  self->super._assertionUpdateClientIdentifiers = v4;

  MEMORY[0x2821F96F8](v4, assertionUpdateClientIdentifiers);
}

- (void)setActiveAssertionUpdateClientIdentifiers:(id)a3
{
  v4 = [a3 copy];
  activeAssertionUpdateClientIdentifiers = self->super._activeAssertionUpdateClientIdentifiers;
  self->super._activeAssertionUpdateClientIdentifiers = v4;

  MEMORY[0x2821F96F8](v4, activeAssertionUpdateClientIdentifiers);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDSClientConnectionDetails alloc];

  return [(DNDSClientConnectionDetails *)v4 _initWithDetails:self];
}

@end