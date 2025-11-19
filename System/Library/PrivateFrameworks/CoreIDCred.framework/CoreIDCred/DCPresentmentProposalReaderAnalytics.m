@interface DCPresentmentProposalReaderAnalytics
- (DCPresentmentProposalReaderAnalytics)initWithCoder:(id)a3;
- (DCPresentmentProposalReaderAnalytics)initWithTrusted:(BOOL)a3 untrustedIdentifier:(id)a4 untrustedOrganization:(id)a5 untrustedIssuerIdentifier:(id)a6 untrustedIssuerOrganization:(id)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DCPresentmentProposalReaderAnalytics

- (DCPresentmentProposalReaderAnalytics)initWithTrusted:(BOOL)a3 untrustedIdentifier:(id)a4 untrustedOrganization:(id)a5 untrustedIssuerIdentifier:(id)a6 untrustedIssuerOrganization:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v27.receiver = self;
  v27.super_class = DCPresentmentProposalReaderAnalytics;
  v16 = [(DCPresentmentProposalReaderAnalytics *)&v27 init];
  v17 = v16;
  if (v16)
  {
    v16->_trusted = a3;
    v18 = [v12 copy];
    untrustedIdentifier = v17->_untrustedIdentifier;
    v17->_untrustedIdentifier = v18;

    v20 = [v13 copy];
    untrustedOrganization = v17->_untrustedOrganization;
    v17->_untrustedOrganization = v20;

    v22 = [v14 copy];
    untrustedIssuerIdentifier = v17->_untrustedIssuerIdentifier;
    v17->_untrustedIssuerIdentifier = v22;

    v24 = [v15 copy];
    untrustedIssuerOrganization = v17->_untrustedIssuerOrganization;
    v17->_untrustedIssuerOrganization = v24;
  }

  return v17;
}

- (DCPresentmentProposalReaderAnalytics)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DCPresentmentProposalReaderAnalytics;
  v5 = [(DCPresentmentProposalReaderAnalytics *)&v15 init];
  if (v5)
  {
    v5->_trusted = [v4 decodeBoolForKey:0x28586D540];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D560];
    untrustedIdentifier = v5->_untrustedIdentifier;
    v5->_untrustedIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D580];
    untrustedOrganization = v5->_untrustedOrganization;
    v5->_untrustedOrganization = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D5A0];
    untrustedIssuerIdentifier = v5->_untrustedIssuerIdentifier;
    v5->_untrustedIssuerIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D5C0];
    untrustedIssuerOrganization = v5->_untrustedIssuerOrganization;
    v5->_untrustedIssuerOrganization = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  trusted = self->_trusted;
  v5 = a3;
  [v5 encodeBool:trusted forKey:0x28586D540];
  [v5 encodeObject:self->_untrustedIdentifier forKey:0x28586D560];
  [v5 encodeObject:self->_untrustedOrganization forKey:0x28586D580];
  [v5 encodeObject:self->_untrustedIssuerIdentifier forKey:0x28586D5A0];
  [v5 encodeObject:self->_untrustedIssuerOrganization forKey:0x28586D5C0];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if ([(DCPresentmentProposalReaderAnalytics *)self isTrusted])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [(DCPresentmentProposalReaderAnalytics *)self untrustedIdentifier];
  v8 = [(DCPresentmentProposalReaderAnalytics *)self untrustedOrganization];
  v9 = [(DCPresentmentProposalReaderAnalytics *)self untrustedIssuerIdentifier];
  v10 = [(DCPresentmentProposalReaderAnalytics *)self untrustedIssuerOrganization];
  v11 = [v3 stringWithFormat:@"<%@ %p trusted = %@; untrustedIdentifier = %@; untrustedOrganization = %@; untrustedIssuerIdentifier = %@; untrustedIssuerOrganization = %@>", v5, self, v6, v7, v8, v9, v10];;

  return v11;
}

@end