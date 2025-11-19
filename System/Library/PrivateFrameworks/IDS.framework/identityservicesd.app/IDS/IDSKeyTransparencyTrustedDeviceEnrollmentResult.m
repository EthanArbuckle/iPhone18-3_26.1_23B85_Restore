@interface IDSKeyTransparencyTrustedDeviceEnrollmentResult
- (IDSKeyTransparencyTrustedDeviceEnrollmentResult)initWithEligibleServiceIdentifiers:(id)a3 signatures:(id)a4;
- (id)description;
@end

@implementation IDSKeyTransparencyTrustedDeviceEnrollmentResult

- (IDSKeyTransparencyTrustedDeviceEnrollmentResult)initWithEligibleServiceIdentifiers:(id)a3 signatures:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = IDSKeyTransparencyTrustedDeviceEnrollmentResult;
  v8 = [(IDSKeyTransparencyTrustedDeviceEnrollmentResult *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    eligibleServiceIdentifiers = v8->_eligibleServiceIdentifiers;
    v8->_eligibleServiceIdentifiers = v9;

    objc_storeStrong(&v8->_signatures, a4);
  }

  return v8;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(IDSKeyTransparencyTrustedDeviceEnrollmentResult *)self eligibleServiceIdentifiers];
  v5 = [v4 count];
  v6 = [(IDSKeyTransparencyTrustedDeviceEnrollmentResult *)self signatures];
  v7 = [v6 serviceSignatures];
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p eligibleServiceIdentifiers.count: %lu, serviceSignatures.count: %lu>", v3, self, v5, [v7 count]);

  return v8;
}

@end