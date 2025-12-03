@interface CNMutableDonationOrigin
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBundleIdentifier:(id)identifier;
- (void)setClusterIdentifier:(id)identifier;
- (void)setDonationDate:(id)date;
- (void)setDonationIdentifier:(id)identifier;
- (void)setExpirationDate:(id)date;
@end

@implementation CNMutableDonationOrigin

- (void)setBundleIdentifier:(id)identifier
{
  if (self->super._bundleIdentifier != identifier)
  {
    v5 = [identifier copy];
    bundleIdentifier = self->super._bundleIdentifier;
    self->super._bundleIdentifier = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (void)setDonationIdentifier:(id)identifier
{
  if (self->super._donationIdentifier != identifier)
  {
    v5 = [identifier copy];
    donationIdentifier = self->super._donationIdentifier;
    self->super._donationIdentifier = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (void)setClusterIdentifier:(id)identifier
{
  if (self->super._clusterIdentifier != identifier)
  {
    v5 = [identifier copy];
    clusterIdentifier = self->super._clusterIdentifier;
    self->super._clusterIdentifier = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (void)setDonationDate:(id)date
{
  if (self->super._donationDate != date)
  {
    v5 = [date copy];
    donationDate = self->super._donationDate;
    self->super._donationDate = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (void)setExpirationDate:(id)date
{
  if (self->super._expirationDate != date)
  {
    v5 = [date copy];
    expirationDate = self->super._expirationDate;
    self->super._expirationDate = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CNDonationOrigin alloc];

  return [(CNDonationOrigin *)v4 initWithDonationOrigin:self];
}

@end