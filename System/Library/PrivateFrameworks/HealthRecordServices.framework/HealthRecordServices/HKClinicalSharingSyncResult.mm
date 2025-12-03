@interface HKClinicalSharingSyncResult
- (BOOL)isEqual:(id)equal;
- (HKClinicalSharingSyncResult)init;
- (HKClinicalSharingSyncResult)initWithAccountID:(id)d lookupInfo:(id)info error:(id)error;
- (HKClinicalSharingSyncResult)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKClinicalSharingSyncResult

- (HKClinicalSharingSyncResult)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalSharingSyncResult)initWithAccountID:(id)d lookupInfo:(id)info error:(id)error
{
  dCopy = d;
  infoCopy = info;
  errorCopy = error;
  v17.receiver = self;
  v17.super_class = HKClinicalSharingSyncResult;
  v11 = [(HKClinicalSharingSyncResult *)&v17 init];
  if (v11)
  {
    v12 = [dCopy copy];
    accountID = v11->_accountID;
    v11->_accountID = v12;

    v14 = [infoCopy copy];
    lookupInfo = v11->_lookupInfo;
    v11->_lookupInfo = v14;

    objc_storeStrong(&v11->_error, error);
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      LOBYTE(error) = 0;
LABEL_28:

      goto LABEL_29;
    }

    accountID = self->_accountID;
    accountID = [(HKClinicalSharingSyncResult *)v6 accountID];
    if (accountID != accountID)
    {
      accountID2 = [(HKClinicalSharingSyncResult *)v6 accountID];
      if (!accountID2)
      {
        LOBYTE(error) = 0;
        goto LABEL_27;
      }

      v10 = accountID2;
      v11 = self->_accountID;
      accountID3 = [(HKClinicalSharingSyncResult *)v6 accountID];
      if (![(NSUUID *)v11 isEqual:accountID3])
      {
        LOBYTE(error) = 0;
LABEL_26:

        goto LABEL_27;
      }

      v28 = accountID3;
      v29 = v10;
    }

    lookupInfo = self->_lookupInfo;
    lookupInfo = [(HKClinicalSharingSyncResult *)v6 lookupInfo];
    if (lookupInfo != lookupInfo)
    {
      error = [(HKClinicalSharingSyncResult *)v6 lookupInfo];
      if (!error)
      {
        goto LABEL_20;
      }

      v16 = self->_lookupInfo;
      lookupInfo2 = [(HKClinicalSharingSyncResult *)v6 lookupInfo];
      v18 = v16;
      v19 = lookupInfo2;
      if (![(NSString *)v18 isEqualToString:lookupInfo2])
      {

        LOBYTE(error) = 0;
LABEL_25:
        accountID3 = v28;
        v10 = v29;
        if (accountID != accountID)
        {
          goto LABEL_26;
        }

LABEL_27:

        goto LABEL_28;
      }

      v25 = v19;
      v27 = error;
    }

    error = self->_error;
    error = [(HKClinicalSharingSyncResult *)v6 error];
    LOBYTE(error) = error == error;
    if (!error)
    {
      error2 = [(HKClinicalSharingSyncResult *)v6 error];
      if (error2)
      {
        v22 = error2;
        error = self->_error;
        error3 = [(HKClinicalSharingSyncResult *)v6 error];
        LOBYTE(error) = [error isEqual:error3];

        if (lookupInfo != lookupInfo)
        {
        }

        goto LABEL_22;
      }
    }

    if (lookupInfo == lookupInfo)
    {
LABEL_22:

      goto LABEL_25;
    }

LABEL_20:
    accountID3 = v28;

    v10 = v29;
    if (accountID == accountID)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  LOBYTE(error) = 1;
LABEL_29:

  return error;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_accountID hash];
  v4 = [(NSString *)self->_lookupInfo hash]^ v3;
  return v4 ^ [(NSError *)self->_error hash];
}

- (void)encodeWithCoder:(id)coder
{
  accountID = self->_accountID;
  coderCopy = coder;
  [coderCopy encodeObject:accountID forKey:@"accountID"];
  [coderCopy encodeObject:self->_lookupInfo forKey:@"lookupInfo"];
  [coderCopy encodeObject:self->_error forKey:@"error"];
}

- (HKClinicalSharingSyncResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lookupInfo"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    self = [(HKClinicalSharingSyncResult *)self initWithAccountID:v5 lookupInfo:v6 error:v7];

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