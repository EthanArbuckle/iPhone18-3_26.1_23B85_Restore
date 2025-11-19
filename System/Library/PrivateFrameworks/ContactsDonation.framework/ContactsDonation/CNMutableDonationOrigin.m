@interface CNMutableDonationOrigin
- (id)copyWithZone:(_NSZone *)a3;
- (void)setBundleIdentifier:(id)a3;
- (void)setClusterIdentifier:(id)a3;
- (void)setDonationDate:(id)a3;
- (void)setDonationIdentifier:(id)a3;
- (void)setExpirationDate:(id)a3;
@end

@implementation CNMutableDonationOrigin

- (void)setBundleIdentifier:(id)a3
{
  if (self->super._bundleIdentifier != a3)
  {
    v5 = [a3 copy];
    bundleIdentifier = self->super._bundleIdentifier;
    self->super._bundleIdentifier = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (void)setDonationIdentifier:(id)a3
{
  if (self->super._donationIdentifier != a3)
  {
    v5 = [a3 copy];
    donationIdentifier = self->super._donationIdentifier;
    self->super._donationIdentifier = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (void)setClusterIdentifier:(id)a3
{
  if (self->super._clusterIdentifier != a3)
  {
    v5 = [a3 copy];
    clusterIdentifier = self->super._clusterIdentifier;
    self->super._clusterIdentifier = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (void)setDonationDate:(id)a3
{
  if (self->super._donationDate != a3)
  {
    v5 = [a3 copy];
    donationDate = self->super._donationDate;
    self->super._donationDate = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (void)setExpirationDate:(id)a3
{
  if (self->super._expirationDate != a3)
  {
    v5 = [a3 copy];
    expirationDate = self->super._expirationDate;
    self->super._expirationDate = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CNDonationOrigin alloc];

  return [(CNDonationOrigin *)v4 initWithDonationOrigin:self];
}

@end