@interface CCDonateServicePriors
- (CCDonateServicePriors)initWithCoder:(id)coder;
- (CCDonateServicePriors)initWithVersion:(unint64_t)version instanceCount:(unint64_t)count donationDate:(id)date fullSetDonationDate:(id)donationDate revisionToken:(id)token options:(unsigned __int16)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CCDonateServicePriors

- (CCDonateServicePriors)initWithVersion:(unint64_t)version instanceCount:(unint64_t)count donationDate:(id)date fullSetDonationDate:(id)donationDate revisionToken:(id)token options:(unsigned __int16)options
{
  dateCopy = date;
  donationDateCopy = donationDate;
  tokenCopy = token;
  v21.receiver = self;
  v21.super_class = CCDonateServicePriors;
  v18 = [(CCDonateServicePriors *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_version = version;
    v18->_instanceCount = count;
    objc_storeStrong(&v18->_donationDate, date);
    objc_storeStrong(&v19->_fullSetDonationDate, donationDate);
    objc_storeStrong(&v19->_revisionToken, token);
    v19->_options = options;
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:self->_version forKey:@"v"];
  [coderCopy encodeInteger:self->_instanceCount forKey:@"c"];
  donationDate = self->_donationDate;
  if (donationDate)
  {
    [coderCopy encodeObject:donationDate forKey:@"d"];
  }

  fullSetDonationDate = self->_fullSetDonationDate;
  if (fullSetDonationDate)
  {
    [coderCopy encodeObject:fullSetDonationDate forKey:@"f"];
  }

  revisionToken = self->_revisionToken;
  v7 = coderCopy;
  if (revisionToken)
  {
    [coderCopy encodeObject:revisionToken forKey:@"r"];
    v7 = coderCopy;
  }

  [v7 encodeInt32:self->_options forKey:@"o"];
}

- (CCDonateServicePriors)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"v"];
  v6 = [coderCopy decodeIntegerForKey:@"c"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"d"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"f"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"r"];
  v10 = [coderCopy decodeInt32ForKey:@"o"];

  v11 = [(CCDonateServicePriors *)self initWithVersion:v5 instanceCount:v6 donationDate:v7 fullSetDonationDate:v8 revisionToken:v9 options:v10];
  return v11;
}

@end