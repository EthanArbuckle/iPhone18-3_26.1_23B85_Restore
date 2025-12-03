@interface HKFHIRResourceDownloadRequestResult
- (BOOL)isEqual:(id)equal;
- (HKFHIRResourceDownloadRequestResult)init;
- (HKFHIRResourceDownloadRequestResult)initWithCoder:(id)coder;
- (HKFHIRResourceDownloadRequestResult)initWithError:(id)error endStates:(id)states refreshResult:(id)result;
- (HKFHIRResourceDownloadRequestResult)initWithResourceBundleData:(id)data endStates:(id)states refreshResult:(id)result;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (HKFHIRResourceDownloadRequestResult)initWithResourceBundleData:(id)data endStates:(id)states refreshResult:(id)result
{
  dataCopy = data;
  statesCopy = states;
  resultCopy = result;
  v19.receiver = self;
  v19.super_class = HKFHIRResourceDownloadRequestResult;
  v11 = [(HKFHIRResourceDownloadRequestResult *)&v19 init];
  if (v11)
  {
    v12 = [dataCopy copy];
    resourceBundleData = v11->_resourceBundleData;
    v11->_resourceBundleData = v12;

    v14 = [statesCopy copy];
    endStates = v11->_endStates;
    v11->_endStates = v14;

    v16 = [resultCopy copy];
    refreshResult = v11->_refreshResult;
    v11->_refreshResult = v16;
  }

  return v11;
}

- (HKFHIRResourceDownloadRequestResult)initWithError:(id)error endStates:(id)states refreshResult:(id)result
{
  errorCopy = error;
  statesCopy = states;
  resultCopy = result;
  v19.receiver = self;
  v19.super_class = HKFHIRResourceDownloadRequestResult;
  v11 = [(HKFHIRResourceDownloadRequestResult *)&v19 init];
  if (v11)
  {
    v12 = [errorCopy copy];
    error = v11->_error;
    v11->_error = v12;

    v14 = [statesCopy copy];
    endStates = v11->_endStates;
    v11->_endStates = v14;

    v16 = [resultCopy copy];
    refreshResult = v11->_refreshResult;
    v11->_refreshResult = v16;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self != equalCopy)
  {
    v7 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      LOBYTE(endStates3) = 0;
LABEL_42:

      goto LABEL_43;
    }

    resourceBundleData = self->_resourceBundleData;
    resourceBundleData = [(HKFHIRResourceDownloadRequestResult *)v7 resourceBundleData];
    if (resourceBundleData != resourceBundleData)
    {
      resourceBundleData2 = [(HKFHIRResourceDownloadRequestResult *)v7 resourceBundleData];
      if (!resourceBundleData2)
      {
        LOBYTE(endStates3) = 0;
        goto LABEL_41;
      }

      v3 = resourceBundleData2;
      v11 = self->_resourceBundleData;
      resourceBundleData3 = [(HKFHIRResourceDownloadRequestResult *)v7 resourceBundleData];
      if (![(NSData *)v11 isEqual:resourceBundleData3])
      {
        LOBYTE(endStates3) = 0;
LABEL_40:

        goto LABEL_41;
      }

      v41 = resourceBundleData3;
    }

    endStates = self->_endStates;
    endStates = [(HKFHIRResourceDownloadRequestResult *)v7 endStates];
    v42 = endStates;
    if (endStates != endStates)
    {
      endStates2 = [(HKFHIRResourceDownloadRequestResult *)v7 endStates];
      if (!endStates2)
      {
        LOBYTE(endStates3) = 0;
        goto LABEL_38;
      }

      v17 = endStates2;
      v18 = self->_endStates;
      endStates3 = [(HKFHIRResourceDownloadRequestResult *)v7 endStates];
      if (![(HKFHIRRequestTaskEndStates *)v18 isEqual:endStates3])
      {

        LOBYTE(endStates3) = 0;
        goto LABEL_39;
      }

      v38 = endStates3;
      v39 = v17;
    }

    refreshResult = self->_refreshResult;
    refreshResult = [(HKFHIRResourceDownloadRequestResult *)v7 refreshResult];
    if (refreshResult == refreshResult)
    {
      v37 = v3;
    }

    else
    {
      endStates3 = [(HKFHIRResourceDownloadRequestResult *)v7 refreshResult];
      if (!endStates3)
      {
        v31 = v38;
        v32 = v39;
        v30 = refreshResult;
        goto LABEL_30;
      }

      v20 = self->_refreshResult;
      refreshResult2 = [(HKFHIRResourceDownloadRequestResult *)v7 refreshResult];
      v22 = v20;
      v23 = refreshResult2;
      if (![(HKFHIRCredentialRefreshResult *)v22 isEqual:refreshResult2])
      {

        LOBYTE(endStates3) = 0;
        v29 = v42 == endStates;
        goto LABEL_33;
      }

      v34 = v23;
      v36 = endStates3;
      v37 = v3;
    }

    error = self->_error;
    error = [(HKFHIRResourceDownloadRequestResult *)v7 error];
    LOBYTE(endStates3) = error == error;
    if (error != error)
    {
      error2 = [(HKFHIRResourceDownloadRequestResult *)v7 error];
      if (error2)
      {
        v27 = error2;
        endStates3 = self->_error;
        error3 = [(HKFHIRResourceDownloadRequestResult *)v7 error];
        LOBYTE(endStates3) = [endStates3 isEqual:error3];

        if (refreshResult != refreshResult)
        {
        }

        v29 = v42 == endStates;
        v3 = v37;
LABEL_33:
        v32 = v39;
        if (!v29)
        {

LABEL_37:
        }

LABEL_38:

LABEL_39:
        resourceBundleData3 = v41;
        if (resourceBundleData != resourceBundleData)
        {
          goto LABEL_40;
        }

LABEL_41:

        goto LABEL_42;
      }
    }

    v30 = refreshResult;
    if (refreshResult == refreshResult)
    {

      v3 = v37;
      v31 = v38;
      v32 = v39;
      if (v42 == endStates)
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

    if (v42 == endStates)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  LOBYTE(endStates3) = 1;
LABEL_43:

  return endStates3;
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

- (void)encodeWithCoder:(id)coder
{
  resourceBundleData = self->_resourceBundleData;
  coderCopy = coder;
  [coderCopy encodeObject:resourceBundleData forKey:@"resourceBundleData"];
  [coderCopy encodeObject:self->_endStates forKey:@"endStates"];
  [coderCopy encodeObject:self->_refreshResult forKey:@"refreshResult"];
  [coderCopy encodeObject:self->_error forKey:@"error"];
}

- (HKFHIRResourceDownloadRequestResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resourceBundleData"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"refreshResult"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endStates"];
  if (v5)
  {
    v9 = [(HKFHIRResourceDownloadRequestResult *)self initWithResourceBundleData:v5 endStates:v8 refreshResult:v7];
  }

  else
  {
    if (!v6)
    {
      [coderCopy hrs_failWithCocoaInvalidValueError];
      selfCopy = 0;
      goto LABEL_6;
    }

    v9 = [(HKFHIRResourceDownloadRequestResult *)self initWithError:v6 endStates:v8 refreshResult:v7];
  }

  self = v9;
  selfCopy = self;
LABEL_6:

  return selfCopy;
}

@end