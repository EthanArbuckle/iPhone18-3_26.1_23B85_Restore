@interface HKFHIRResourceDownloadRequestResult
- (BOOL)isEqual:(id)a3;
- (HKFHIRResourceDownloadRequestResult)init;
- (HKFHIRResourceDownloadRequestResult)initWithCoder:(id)a3;
- (HKFHIRResourceDownloadRequestResult)initWithError:(id)a3 endStates:(id)a4 refreshResult:(id)a5;
- (HKFHIRResourceDownloadRequestResult)initWithResourceBundleData:(id)a3 endStates:(id)a4 refreshResult:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKFHIRResourceDownloadRequestResult

- (HKFHIRResourceDownloadRequestResult)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKFHIRResourceDownloadRequestResult)initWithResourceBundleData:(id)a3 endStates:(id)a4 refreshResult:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HKFHIRResourceDownloadRequestResult;
  v11 = [(HKFHIRResourceDownloadRequestResult *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    resourceBundleData = v11->_resourceBundleData;
    v11->_resourceBundleData = v12;

    v14 = [v9 copy];
    endStates = v11->_endStates;
    v11->_endStates = v14;

    v16 = [v10 copy];
    refreshResult = v11->_refreshResult;
    v11->_refreshResult = v16;
  }

  return v11;
}

- (HKFHIRResourceDownloadRequestResult)initWithError:(id)a3 endStates:(id)a4 refreshResult:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HKFHIRResourceDownloadRequestResult;
  v11 = [(HKFHIRResourceDownloadRequestResult *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    error = v11->_error;
    v11->_error = v12;

    v14 = [v9 copy];
    endStates = v11->_endStates;
    v11->_endStates = v14;

    v16 = [v10 copy];
    refreshResult = v11->_refreshResult;
    v11->_refreshResult = v16;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self != v5)
  {
    v7 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      LOBYTE(v13) = 0;
LABEL_42:

      goto LABEL_43;
    }

    resourceBundleData = self->_resourceBundleData;
    v9 = [(HKFHIRResourceDownloadRequestResult *)v7 resourceBundleData];
    if (resourceBundleData != v9)
    {
      v10 = [(HKFHIRResourceDownloadRequestResult *)v7 resourceBundleData];
      if (!v10)
      {
        LOBYTE(v13) = 0;
        goto LABEL_41;
      }

      v3 = v10;
      v11 = self->_resourceBundleData;
      v12 = [(HKFHIRResourceDownloadRequestResult *)v7 resourceBundleData];
      if (![(NSData *)v11 isEqual:v12])
      {
        LOBYTE(v13) = 0;
LABEL_40:

        goto LABEL_41;
      }

      v41 = v12;
    }

    endStates = self->_endStates;
    v15 = [(HKFHIRResourceDownloadRequestResult *)v7 endStates];
    v42 = endStates;
    if (endStates != v15)
    {
      v16 = [(HKFHIRResourceDownloadRequestResult *)v7 endStates];
      if (!v16)
      {
        LOBYTE(v13) = 0;
        goto LABEL_38;
      }

      v17 = v16;
      v18 = self->_endStates;
      v13 = [(HKFHIRResourceDownloadRequestResult *)v7 endStates];
      if (![(HKFHIRRequestTaskEndStates *)v18 isEqual:v13])
      {

        LOBYTE(v13) = 0;
        goto LABEL_39;
      }

      v38 = v13;
      v39 = v17;
    }

    refreshResult = self->_refreshResult;
    v40 = [(HKFHIRResourceDownloadRequestResult *)v7 refreshResult];
    if (refreshResult == v40)
    {
      v37 = v3;
    }

    else
    {
      v13 = [(HKFHIRResourceDownloadRequestResult *)v7 refreshResult];
      if (!v13)
      {
        v31 = v38;
        v32 = v39;
        v30 = v40;
        goto LABEL_30;
      }

      v20 = self->_refreshResult;
      v21 = [(HKFHIRResourceDownloadRequestResult *)v7 refreshResult];
      v22 = v20;
      v23 = v21;
      if (![(HKFHIRCredentialRefreshResult *)v22 isEqual:v21])
      {

        LOBYTE(v13) = 0;
        v29 = v42 == v15;
        goto LABEL_33;
      }

      v34 = v23;
      v36 = v13;
      v37 = v3;
    }

    error = self->_error;
    v25 = [(HKFHIRResourceDownloadRequestResult *)v7 error];
    LOBYTE(v13) = error == v25;
    if (error != v25)
    {
      v26 = [(HKFHIRResourceDownloadRequestResult *)v7 error];
      if (v26)
      {
        v27 = v26;
        v13 = self->_error;
        v28 = [(HKFHIRResourceDownloadRequestResult *)v7 error];
        LOBYTE(v13) = [v13 isEqual:v28];

        if (refreshResult != v40)
        {
        }

        v29 = v42 == v15;
        v3 = v37;
LABEL_33:
        v32 = v39;
        if (!v29)
        {

LABEL_37:
        }

LABEL_38:

LABEL_39:
        v12 = v41;
        if (resourceBundleData != v9)
        {
          goto LABEL_40;
        }

LABEL_41:

        goto LABEL_42;
      }
    }

    v30 = v40;
    if (refreshResult == v40)
    {

      v3 = v37;
      v31 = v38;
      v32 = v39;
      if (v42 == v15)
      {
        goto LABEL_38;
      }

LABEL_36:

      goto LABEL_37;
    }

    v3 = v37;
    v31 = v38;
    v32 = v39;
LABEL_30:

    if (v42 == v15)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  LOBYTE(v13) = 1;
LABEL_43:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = vcvtd_n_f64_u64([(NSData *)self->_resourceBundleData length], 0xAuLL);
  refreshResult = self->_refreshResult;
  v8 = HKStringFromBool();
  error = self->_error;
  v10 = HKStringFromBool();
  v11 = [v3 stringWithFormat:@"<%@ %p, resource bundle data: %.2f KB, did refresh token: %@ error: %@>", v5, self, *&v6, v8, v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  resourceBundleData = self->_resourceBundleData;
  v5 = a3;
  [v5 encodeObject:resourceBundleData forKey:@"resourceBundleData"];
  [v5 encodeObject:self->_endStates forKey:@"endStates"];
  [v5 encodeObject:self->_refreshResult forKey:@"refreshResult"];
  [v5 encodeObject:self->_error forKey:@"error"];
}

- (HKFHIRResourceDownloadRequestResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resourceBundleData"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"refreshResult"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endStates"];
  if (v5)
  {
    v9 = [(HKFHIRResourceDownloadRequestResult *)self initWithResourceBundleData:v5 endStates:v8 refreshResult:v7];
  }

  else
  {
    if (!v6)
    {
      [v4 hrs_failWithCocoaInvalidValueError];
      v10 = 0;
      goto LABEL_6;
    }

    v9 = [(HKFHIRResourceDownloadRequestResult *)self initWithError:v6 endStates:v8 refreshResult:v7];
  }

  self = v9;
  v10 = self;
LABEL_6:

  return v10;
}

@end