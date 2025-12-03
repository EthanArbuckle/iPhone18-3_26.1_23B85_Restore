@interface DCPresentmentProposalReaderAnalytics
- (DCPresentmentProposalReaderAnalytics)initWithCoder:(id)coder;
- (DCPresentmentProposalReaderAnalytics)initWithTrusted:(BOOL)trusted untrustedIdentifier:(id)identifier untrustedOrganization:(id)organization untrustedIssuerIdentifier:(id)issuerIdentifier untrustedIssuerOrganization:(id)issuerOrganization;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DCPresentmentProposalReaderAnalytics

- (DCPresentmentProposalReaderAnalytics)initWithTrusted:(BOOL)trusted untrustedIdentifier:(id)identifier untrustedOrganization:(id)organization untrustedIssuerIdentifier:(id)issuerIdentifier untrustedIssuerOrganization:(id)issuerOrganization
{
  identifierCopy = identifier;
  organizationCopy = organization;
  issuerIdentifierCopy = issuerIdentifier;
  issuerOrganizationCopy = issuerOrganization;
  v27.receiver = self;
  v27.super_class = DCPresentmentProposalReaderAnalytics;
  v16 = [(DCPresentmentProposalReaderAnalytics *)&v27 init];
  v17 = v16;
  if (v16)
  {
    v16->_trusted = trusted;
    v18 = [identifierCopy copy];
    untrustedIdentifier = v17->_untrustedIdentifier;
    v17->_untrustedIdentifier = v18;

    v20 = [organizationCopy copy];
    untrustedOrganization = v17->_untrustedOrganization;
    v17->_untrustedOrganization = v20;

    v22 = [issuerIdentifierCopy copy];
    untrustedIssuerIdentifier = v17->_untrustedIssuerIdentifier;
    v17->_untrustedIssuerIdentifier = v22;

    v24 = [issuerOrganizationCopy copy];
    untrustedIssuerOrganization = v17->_untrustedIssuerOrganization;
    v17->_untrustedIssuerOrganization = v24;
  }

  return v17;
}

- (DCPresentmentProposalReaderAnalytics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = DCPresentmentProposalReaderAnalytics;
  v5 = [(DCPresentmentProposalReaderAnalytics *)&v15 init];
  if (v5)
  {
    v5->_trusted = [coderCopy decodeBoolForKey:0x28586D540];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D560];
    untrustedIdentifier = v5->_untrustedIdentifier;
    v5->_untrustedIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D580];
    untrustedOrganization = v5->_untrustedOrganization;
    v5->_untrustedOrganization = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D5A0];
    untrustedIssuerIdentifier = v5->_untrustedIssuerIdentifier;
    v5->_untrustedIssuerIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D5C0];
    untrustedIssuerOrganization = v5->_untrustedIssuerOrganization;
    v5->_untrustedIssuerOrganization = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  trusted = self->_trusted;
  coderCopy = coder;
  [coderCopy encodeBool:trusted forKey:0x28586D540];
  [coderCopy encodeObject:self->_untrustedIdentifier forKey:0x28586D560];
  [coderCopy encodeObject:self->_untrustedOrganization forKey:0x28586D580];
  [coderCopy encodeObject:self->_untrustedIssuerIdentifier forKey:0x28586D5A0];
  [coderCopy encodeObject:self->_untrustedIssuerOrganization forKey:0x28586D5C0];
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

  untrustedIdentifier = [(DCPresentmentProposalReaderAnalytics *)self untrustedIdentifier];
  untrustedOrganization = [(DCPresentmentProposalReaderAnalytics *)self untrustedOrganization];
  untrustedIssuerIdentifier = [(DCPresentmentProposalReaderAnalytics *)self untrustedIssuerIdentifier];
  untrustedIssuerOrganization = [(DCPresentmentProposalReaderAnalytics *)self untrustedIssuerOrganization];
  v11 = [v3 stringWithFormat:@"<%@ %p trusted = %@; untrustedIdentifier = %@; untrustedOrganization = %@; untrustedIssuerIdentifier = %@; untrustedIssuerOrganization = %@>", v5, self, v6, untrustedIdentifier, untrustedOrganization, untrustedIssuerIdentifier, untrustedIssuerOrganization];;

  return v11;
}

@end