@interface HKClinicalSharingSyncResult
- (BOOL)isEqual:(id)a3;
- (HKClinicalSharingSyncResult)init;
- (HKClinicalSharingSyncResult)initWithAccountID:(id)a3 lookupInfo:(id)a4 error:(id)a5;
- (HKClinicalSharingSyncResult)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (HKClinicalSharingSyncResult)initWithAccountID:(id)a3 lookupInfo:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = HKClinicalSharingSyncResult;
  v11 = [(HKClinicalSharingSyncResult *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    accountID = v11->_accountID;
    v11->_accountID = v12;

    v14 = [v9 copy];
    lookupInfo = v11->_lookupInfo;
    v11->_lookupInfo = v14;

    objc_storeStrong(&v11->_error, a5);
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      LOBYTE(error) = 0;
LABEL_28:

      goto LABEL_29;
    }

    accountID = self->_accountID;
    v8 = [(HKClinicalSharingSyncResult *)v6 accountID];
    if (accountID != v8)
    {
      v9 = [(HKClinicalSharingSyncResult *)v6 accountID];
      if (!v9)
      {
        LOBYTE(error) = 0;
        goto LABEL_27;
      }

      v10 = v9;
      v11 = self->_accountID;
      v12 = [(HKClinicalSharingSyncResult *)v6 accountID];
      if (![(NSUUID *)v11 isEqual:v12])
      {
        LOBYTE(error) = 0;
LABEL_26:

        goto LABEL_27;
      }

      v28 = v12;
      v29 = v10;
    }

    lookupInfo = self->_lookupInfo;
    v15 = [(HKClinicalSharingSyncResult *)v6 lookupInfo];
    if (lookupInfo != v15)
    {
      error = [(HKClinicalSharingSyncResult *)v6 lookupInfo];
      if (!error)
      {
        goto LABEL_20;
      }

      v16 = self->_lookupInfo;
      v17 = [(HKClinicalSharingSyncResult *)v6 lookupInfo];
      v18 = v16;
      v19 = v17;
      if (![(NSString *)v18 isEqualToString:v17])
      {

        LOBYTE(error) = 0;
LABEL_25:
        v12 = v28;
        v10 = v29;
        if (accountID != v8)
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
    v20 = [(HKClinicalSharingSyncResult *)v6 error];
    LOBYTE(error) = error == v20;
    if (!error)
    {
      v21 = [(HKClinicalSharingSyncResult *)v6 error];
      if (v21)
      {
        v22 = v21;
        error = self->_error;
        v23 = [(HKClinicalSharingSyncResult *)v6 error];
        LOBYTE(error) = [error isEqual:v23];

        if (lookupInfo != v15)
        {
        }

        goto LABEL_22;
      }
    }

    if (lookupInfo == v15)
    {
LABEL_22:

      goto LABEL_25;
    }

LABEL_20:
    v12 = v28;

    v10 = v29;
    if (accountID == v8)
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

- (void)encodeWithCoder:(id)a3
{
  accountID = self->_accountID;
  v5 = a3;
  [v5 encodeObject:accountID forKey:@"accountID"];
  [v5 encodeObject:self->_lookupInfo forKey:@"lookupInfo"];
  [v5 encodeObject:self->_error forKey:@"error"];
}

- (HKClinicalSharingSyncResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lookupInfo"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    self = [(HKClinicalSharingSyncResult *)self initWithAccountID:v5 lookupInfo:v6 error:v7];

    v8 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v8 = 0;
  }

  return v8;
}

@end