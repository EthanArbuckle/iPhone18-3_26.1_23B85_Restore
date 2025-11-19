@interface HKClinicalAccount
- (BOOL)isEqual:(id)a3;
- (HKClinicalAccount)init;
- (HKClinicalAccount)initWithCoder:(id)a3;
- (HKClinicalAccount)initWithIdentifier:(id)a3 state:(int64_t)a4 userEnabled:(BOOL)a5 lastFetchDate:(id)a6 lastFullFetchDate:(id)a7 lastFailedFetchDate:(id)a8 failedFetchAttemptsCount:(id)a9 clinicalSharingStatus:(id)a10 hasClinicalSharingScopes:(BOOL)a11 provenance:(id)a12;
- (HKClinicalGatewayReference)newerAvailableGateway;
- (NSString)description;
- (NSString)subtitle;
- (NSString)title;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKClinicalAccount

- (HKClinicalAccount)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalAccount)initWithIdentifier:(id)a3 state:(int64_t)a4 userEnabled:(BOOL)a5 lastFetchDate:(id)a6 lastFullFetchDate:(id)a7 lastFailedFetchDate:(id)a8 failedFetchAttemptsCount:(id)a9 clinicalSharingStatus:(id)a10 hasClinicalSharingScopes:(BOOL)a11 provenance:(id)a12
{
  v18 = a3;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a12;
  v42.receiver = self;
  v42.super_class = HKClinicalAccount;
  v25 = [(HKClinicalAccount *)&v42 init];
  if (v25)
  {
    v26 = [v18 copy];
    identifier = v25->_identifier;
    v25->_identifier = v26;

    v25->_state = a4;
    v25->_userEnabled = a5;
    v28 = HKDateMax();
    v29 = [v28 copy];
    lastFetchDate = v25->_lastFetchDate;
    v25->_lastFetchDate = v29;

    v31 = [v20 copy];
    lastFullFetchDate = v25->_lastFullFetchDate;
    v25->_lastFullFetchDate = v31;

    v33 = [v21 copy];
    lastFailedFetchDate = v25->_lastFailedFetchDate;
    v25->_lastFailedFetchDate = v33;

    v35 = [v22 copy];
    failedFetchAttemptsCount = v25->_failedFetchAttemptsCount;
    v25->_failedFetchAttemptsCount = v35;

    v37 = [v23 copy];
    clinicalSharingStatus = v25->_clinicalSharingStatus;
    v25->_clinicalSharingStatus = v37;

    v25->_hasClinicalSharingScopes = a11;
    v39 = [v24 copy];
    provenance = v25->_provenance;
    v25->_provenance = v39;
  }

  return v25;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSUUID *)self->_identifier UUIDString];
  v7 = @"true";
  if (self->_userEnabled)
  {
    v8 = @"true";
  }

  else
  {
    v8 = @"false";
  }

  v15 = *&self->_state;
  v14 = *&self->_lastFullFetchDate;
  failedFetchAttemptsCount = self->_failedFetchAttemptsCount;
  v10 = [(HKClinicalSharingStatus *)self->_clinicalSharingStatus description];
  if (!self->_hasClinicalSharingScopes)
  {
    v7 = @"false";
  }

  v11 = [(HKClinicalAccountProvenance *)self->_provenance description];
  v12 = [v3 stringWithFormat:@"<%@ %p identifier: %@; isUserEnabled: %@; state: %ld; lastFetchDate: %@; lastFullFetchDate: %@; lastFailedFetchDate: %@; failedFetchAttemptsCount: %@; clinicalSharingStatus: %@ ; hasClinicalSharingScopes: %@; provenance: %@;>", v5, self, v6, v8, v15, v14, failedFetchAttemptsCount, v10, v7, v11];;

  return v12;
}

- (HKClinicalGatewayReference)newerAvailableGateway
{
  v2 = [(HKClinicalAccountProvenance *)self->_provenance gateway];
  v3 = [v2 newerSupportedGatewayVersion];

  return v3;
}

- (NSString)title
{
  v3 = [(HKClinicalAccountProvenance *)self->_provenance type];
  provenance = self->_provenance;
  if (v3 == 1)
  {
    v5 = [(HKClinicalAccountProvenance *)provenance signedClinicalDataIssuer];
    v6 = [v5 title];
  }

  else
  {
    v6 = [(HKClinicalAccountProvenance *)provenance title];
  }

  return v6;
}

- (NSString)subtitle
{
  v3 = [(HKClinicalAccountProvenance *)self->_provenance type];
  provenance = self->_provenance;
  if (v3 == 1)
  {
    v5 = [(HKClinicalAccountProvenance *)provenance signedClinicalDataIssuer];
    v6 = [v5 subtitle];
  }

  else
  {
    v6 = [(HKClinicalAccountProvenance *)provenance subtitle];
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [(HKClinicalAccount *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(HKClinicalAccount *)v4 identifier];
      v6 = [(HKClinicalAccount *)self identifier];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  provenance = self->_provenance;
  v5 = a3;
  [v5 encodeObject:provenance forKey:@"provenance"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_lastFetchDate forKey:@"lastFetchDate"];
  [v5 encodeObject:self->_lastFullFetchDate forKey:@"lastFullFetchDate"];
  [v5 encodeObject:self->_lastFailedFetchDate forKey:@"lastFailedFetchDate"];
  [v5 encodeObject:self->_failedFetchAttemptsCount forKey:@"failedFetchAttemptsCount"];
  [v5 encodeObject:self->_clinicalSharingStatus forKey:@"clinicalSharingStatus"];
  [v5 encodeBool:self->_hasClinicalSharingScopes forKey:@"hasClinicalSharingScopes"];
  [v5 encodeInteger:self->_state forKey:@"state"];
  [v5 encodeBool:self->_userEnabled forKey:@"userEnabled"];
}

- (HKClinicalAccount)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provenance"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clinicalSharingStatus"];
  v8 = v7;
  if (v6)
  {
    v9 = v5 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9 || v7 == 0;
  if (!v10 && [v4 containsValueForKey:@"state"] && objc_msgSend(v4, "containsValueForKey:", @"userEnabled") && (objc_msgSend(v4, "containsValueForKey:", @"hasClinicalSharingScopes") & 1) != 0)
  {
    v20 = [v4 decodeIntegerForKey:@"state"];
    v19 = [v4 decodeBoolForKey:@"userEnabled"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastFetchDate"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastFullFetchDate"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastFailedFetchDate"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"failedFetchAttemptsCount"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clinicalSharingStatus"];
    LOBYTE(v18) = [v4 decodeBoolForKey:@"hasClinicalSharingScopes"];
    self = [(HKClinicalAccount *)self initWithIdentifier:v6 state:v20 userEnabled:v19 lastFetchDate:v11 lastFullFetchDate:v12 lastFailedFetchDate:v13 failedFetchAttemptsCount:v14 clinicalSharingStatus:v15 hasClinicalSharingScopes:v18 provenance:v5];

    v16 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v16 = 0;
  }

  return v16;
}

@end