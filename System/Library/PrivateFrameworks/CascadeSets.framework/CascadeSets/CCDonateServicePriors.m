@interface CCDonateServicePriors
- (CCDonateServicePriors)initWithCoder:(id)a3;
- (CCDonateServicePriors)initWithVersion:(unint64_t)a3 instanceCount:(unint64_t)a4 donationDate:(id)a5 fullSetDonationDate:(id)a6 revisionToken:(id)a7 options:(unsigned __int16)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CCDonateServicePriors

- (CCDonateServicePriors)initWithVersion:(unint64_t)a3 instanceCount:(unint64_t)a4 donationDate:(id)a5 fullSetDonationDate:(id)a6 revisionToken:(id)a7 options:(unsigned __int16)a8
{
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v21.receiver = self;
  v21.super_class = CCDonateServicePriors;
  v18 = [(CCDonateServicePriors *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_version = a3;
    v18->_instanceCount = a4;
    objc_storeStrong(&v18->_donationDate, a5);
    objc_storeStrong(&v19->_fullSetDonationDate, a6);
    objc_storeStrong(&v19->_revisionToken, a7);
    v19->_options = a8;
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeInt64:self->_version forKey:@"v"];
  [v8 encodeInteger:self->_instanceCount forKey:@"c"];
  donationDate = self->_donationDate;
  if (donationDate)
  {
    [v8 encodeObject:donationDate forKey:@"d"];
  }

  fullSetDonationDate = self->_fullSetDonationDate;
  if (fullSetDonationDate)
  {
    [v8 encodeObject:fullSetDonationDate forKey:@"f"];
  }

  revisionToken = self->_revisionToken;
  v7 = v8;
  if (revisionToken)
  {
    [v8 encodeObject:revisionToken forKey:@"r"];
    v7 = v8;
  }

  [v7 encodeInt32:self->_options forKey:@"o"];
}

- (CCDonateServicePriors)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"v"];
  v6 = [v4 decodeIntegerForKey:@"c"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"d"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"f"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"r"];
  v10 = [v4 decodeInt32ForKey:@"o"];

  v11 = [(CCDonateServicePriors *)self initWithVersion:v5 instanceCount:v6 donationDate:v7 fullSetDonationDate:v8 revisionToken:v9 options:v10];
  return v11;
}

@end