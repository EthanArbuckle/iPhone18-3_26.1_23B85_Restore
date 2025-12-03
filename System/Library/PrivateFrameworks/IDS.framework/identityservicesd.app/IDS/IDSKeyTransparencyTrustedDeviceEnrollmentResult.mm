@interface IDSKeyTransparencyTrustedDeviceEnrollmentResult
- (IDSKeyTransparencyTrustedDeviceEnrollmentResult)initWithEligibleServiceIdentifiers:(id)identifiers signatures:(id)signatures;
- (id)description;
@end

@implementation IDSKeyTransparencyTrustedDeviceEnrollmentResult

- (IDSKeyTransparencyTrustedDeviceEnrollmentResult)initWithEligibleServiceIdentifiers:(id)identifiers signatures:(id)signatures
{
  identifiersCopy = identifiers;
  signaturesCopy = signatures;
  v12.receiver = self;
  v12.super_class = IDSKeyTransparencyTrustedDeviceEnrollmentResult;
  v8 = [(IDSKeyTransparencyTrustedDeviceEnrollmentResult *)&v12 init];
  if (v8)
  {
    v9 = [identifiersCopy copy];
    eligibleServiceIdentifiers = v8->_eligibleServiceIdentifiers;
    v8->_eligibleServiceIdentifiers = v9;

    objc_storeStrong(&v8->_signatures, signatures);
  }

  return v8;
}

- (id)description
{
  v3 = objc_opt_class();
  eligibleServiceIdentifiers = [(IDSKeyTransparencyTrustedDeviceEnrollmentResult *)self eligibleServiceIdentifiers];
  v5 = [eligibleServiceIdentifiers count];
  signatures = [(IDSKeyTransparencyTrustedDeviceEnrollmentResult *)self signatures];
  serviceSignatures = [signatures serviceSignatures];
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p eligibleServiceIdentifiers.count: %lu, serviceSignatures.count: %lu>", v3, self, v5, [serviceSignatures count]);

  return v8;
}

@end