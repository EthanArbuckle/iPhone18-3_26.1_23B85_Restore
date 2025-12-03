@interface HKClinicalAccount
- (BOOL)isEqual:(id)equal;
- (HKClinicalAccount)init;
- (HKClinicalAccount)initWithCoder:(id)coder;
- (HKClinicalAccount)initWithIdentifier:(id)identifier state:(int64_t)state userEnabled:(BOOL)enabled lastFetchDate:(id)date lastFullFetchDate:(id)fetchDate lastFailedFetchDate:(id)failedFetchDate failedFetchAttemptsCount:(id)count clinicalSharingStatus:(id)self0 hasClinicalSharingScopes:(BOOL)self1 provenance:(id)self2;
- (HKClinicalGatewayReference)newerAvailableGateway;
- (NSString)description;
- (NSString)subtitle;
- (NSString)title;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (HKClinicalAccount)initWithIdentifier:(id)identifier state:(int64_t)state userEnabled:(BOOL)enabled lastFetchDate:(id)date lastFullFetchDate:(id)fetchDate lastFailedFetchDate:(id)failedFetchDate failedFetchAttemptsCount:(id)count clinicalSharingStatus:(id)self0 hasClinicalSharingScopes:(BOOL)self1 provenance:(id)self2
{
  identifierCopy = identifier;
  dateCopy = date;
  fetchDateCopy = fetchDate;
  failedFetchDateCopy = failedFetchDate;
  countCopy = count;
  statusCopy = status;
  provenanceCopy = provenance;
  v42.receiver = self;
  v42.super_class = HKClinicalAccount;
  v25 = [(HKClinicalAccount *)&v42 init];
  if (v25)
  {
    v26 = [identifierCopy copy];
    identifier = v25->_identifier;
    v25->_identifier = v26;

    v25->_state = state;
    v25->_userEnabled = enabled;
    v28 = HKDateMax();
    v29 = [v28 copy];
    lastFetchDate = v25->_lastFetchDate;
    v25->_lastFetchDate = v29;

    v31 = [fetchDateCopy copy];
    lastFullFetchDate = v25->_lastFullFetchDate;
    v25->_lastFullFetchDate = v31;

    v33 = [failedFetchDateCopy copy];
    lastFailedFetchDate = v25->_lastFailedFetchDate;
    v25->_lastFailedFetchDate = v33;

    v35 = [countCopy copy];
    failedFetchAttemptsCount = v25->_failedFetchAttemptsCount;
    v25->_failedFetchAttemptsCount = v35;

    v37 = [statusCopy copy];
    clinicalSharingStatus = v25->_clinicalSharingStatus;
    v25->_clinicalSharingStatus = v37;

    v25->_hasClinicalSharingScopes = scopes;
    v39 = [provenanceCopy copy];
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
  uUIDString = [(NSUUID *)self->_identifier UUIDString];
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
  v12 = [v3 stringWithFormat:@"<%@ %p identifier: %@; isUserEnabled: %@; state: %ld; lastFetchDate: %@; lastFullFetchDate: %@; lastFailedFetchDate: %@; failedFetchAttemptsCount: %@; clinicalSharingStatus: %@ ; hasClinicalSharingScopes: %@; provenance: %@;>", v5, self, uUIDString, v8, v15, v14, failedFetchAttemptsCount, v10, v7, v11];;

  return v12;
}

- (HKClinicalGatewayReference)newerAvailableGateway
{
  gateway = [(HKClinicalAccountProvenance *)self->_provenance gateway];
  newerSupportedGatewayVersion = [gateway newerSupportedGatewayVersion];

  return newerSupportedGatewayVersion;
}

- (NSString)title
{
  type = [(HKClinicalAccountProvenance *)self->_provenance type];
  provenance = self->_provenance;
  if (type == 1)
  {
    signedClinicalDataIssuer = [(HKClinicalAccountProvenance *)provenance signedClinicalDataIssuer];
    title = [signedClinicalDataIssuer title];
  }

  else
  {
    title = [(HKClinicalAccountProvenance *)provenance title];
  }

  return title;
}

- (NSString)subtitle
{
  type = [(HKClinicalAccountProvenance *)self->_provenance type];
  provenance = self->_provenance;
  if (type == 1)
  {
    signedClinicalDataIssuer = [(HKClinicalAccountProvenance *)provenance signedClinicalDataIssuer];
    subtitle = [signedClinicalDataIssuer subtitle];
  }

  else
  {
    subtitle = [(HKClinicalAccountProvenance *)provenance subtitle];
  }

  return subtitle;
}

- (unint64_t)hash
{
  identifier = [(HKClinicalAccount *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(HKClinicalAccount *)equalCopy identifier];
      identifier2 = [(HKClinicalAccount *)self identifier];
      v7 = [identifier isEqual:identifier2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  provenance = self->_provenance;
  coderCopy = coder;
  [coderCopy encodeObject:provenance forKey:@"provenance"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_lastFetchDate forKey:@"lastFetchDate"];
  [coderCopy encodeObject:self->_lastFullFetchDate forKey:@"lastFullFetchDate"];
  [coderCopy encodeObject:self->_lastFailedFetchDate forKey:@"lastFailedFetchDate"];
  [coderCopy encodeObject:self->_failedFetchAttemptsCount forKey:@"failedFetchAttemptsCount"];
  [coderCopy encodeObject:self->_clinicalSharingStatus forKey:@"clinicalSharingStatus"];
  [coderCopy encodeBool:self->_hasClinicalSharingScopes forKey:@"hasClinicalSharingScopes"];
  [coderCopy encodeInteger:self->_state forKey:@"state"];
  [coderCopy encodeBool:self->_userEnabled forKey:@"userEnabled"];
}

- (HKClinicalAccount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provenance"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clinicalSharingStatus"];
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
  if (!v10 && [coderCopy containsValueForKey:@"state"] && objc_msgSend(coderCopy, "containsValueForKey:", @"userEnabled") && (objc_msgSend(coderCopy, "containsValueForKey:", @"hasClinicalSharingScopes") & 1) != 0)
  {
    v20 = [coderCopy decodeIntegerForKey:@"state"];
    v19 = [coderCopy decodeBoolForKey:@"userEnabled"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastFetchDate"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastFullFetchDate"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastFailedFetchDate"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"failedFetchAttemptsCount"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clinicalSharingStatus"];
    LOBYTE(v18) = [coderCopy decodeBoolForKey:@"hasClinicalSharingScopes"];
    self = [(HKClinicalAccount *)self initWithIdentifier:v6 state:v20 userEnabled:v19 lastFetchDate:v11 lastFullFetchDate:v12 lastFailedFetchDate:v13 failedFetchAttemptsCount:v14 clinicalSharingStatus:v15 hasClinicalSharingScopes:v18 provenance:v5];

    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

@end