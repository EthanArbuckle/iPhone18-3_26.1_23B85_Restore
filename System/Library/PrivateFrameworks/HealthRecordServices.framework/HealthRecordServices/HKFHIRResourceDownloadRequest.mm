@interface HKFHIRResourceDownloadRequest
- (BOOL)isEqual:(id)a3;
- (HKFHIRResourceDownloadRequest)initWithCoder:(id)a3;
- (HKFHIRResourceDownloadRequest)initWithResourceType:(id)a3 resourceSchemaDefinition:(id)a4 fullRequestURL:(id)a5 context:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKFHIRResourceDownloadRequest

- (HKFHIRResourceDownloadRequest)initWithResourceType:(id)a3 resourceSchemaDefinition:(id)a4 fullRequestURL:(id)a5 context:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = HKFHIRResourceDownloadRequest;
  v14 = [(HKFHIRResourceDownloadRequest *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    resourceType = v14->_resourceType;
    v14->_resourceType = v15;

    v17 = [v11 copy];
    resourceSchemaDefinition = v14->_resourceSchemaDefinition;
    v14->_resourceSchemaDefinition = v17;

    v19 = [v12 copy];
    fullRequestURL = v14->_fullRequestURL;
    v14->_fullRequestURL = v19;

    v21 = [v13 copy];
    context = v14->_context;
    v14->_context = v21;
  }

  return v14;
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

    resourceType = self->_resourceType;
    v9 = [(HKFHIRResourceDownloadRequest *)v7 resourceType];
    if (resourceType != v9)
    {
      v10 = [(HKFHIRResourceDownloadRequest *)v7 resourceType];
      if (!v10)
      {
        LOBYTE(v13) = 0;
        goto LABEL_41;
      }

      v3 = v10;
      v11 = self->_resourceType;
      v12 = [(HKFHIRResourceDownloadRequest *)v7 resourceType];
      if (![(NSString *)v11 isEqualToString:v12])
      {
        LOBYTE(v13) = 0;
LABEL_40:

        goto LABEL_41;
      }

      v41 = v12;
    }

    resourceSchemaDefinition = self->_resourceSchemaDefinition;
    v15 = [(HKFHIRResourceDownloadRequest *)v7 resourceSchemaDefinition];
    v42 = resourceSchemaDefinition;
    if (resourceSchemaDefinition != v15)
    {
      v16 = [(HKFHIRResourceDownloadRequest *)v7 resourceSchemaDefinition];
      if (!v16)
      {
        LOBYTE(v13) = 0;
        goto LABEL_38;
      }

      v17 = v16;
      v18 = self->_resourceSchemaDefinition;
      v13 = [(HKFHIRResourceDownloadRequest *)v7 resourceSchemaDefinition];
      if (([(NSDictionary *)v18 isEqual:v13]& 1) == 0)
      {

        LOBYTE(v13) = 0;
        goto LABEL_39;
      }

      v38 = v13;
      v39 = v17;
    }

    fullRequestURL = self->_fullRequestURL;
    v40 = [(HKFHIRResourceDownloadRequest *)v7 fullRequestURL];
    if (fullRequestURL == v40)
    {
      v37 = v3;
    }

    else
    {
      v13 = [(HKFHIRResourceDownloadRequest *)v7 fullRequestURL];
      if (!v13)
      {
        v31 = v38;
        v32 = v39;
        v30 = v40;
        goto LABEL_30;
      }

      v20 = self->_fullRequestURL;
      v21 = [(HKFHIRResourceDownloadRequest *)v7 fullRequestURL];
      v22 = v20;
      v23 = v21;
      if (([(NSURL *)v22 isEqual:v21]& 1) == 0)
      {

        LOBYTE(v13) = 0;
        v29 = v42 == v15;
        goto LABEL_33;
      }

      v34 = v23;
      v36 = v13;
      v37 = v3;
    }

    context = self->_context;
    v25 = [(HKFHIRResourceDownloadRequest *)v7 context];
    LOBYTE(v13) = context == v25;
    if (context != v25)
    {
      v26 = [(HKFHIRResourceDownloadRequest *)v7 context];
      if (v26)
      {
        v27 = v26;
        v13 = self->_context;
        v28 = [(HKFHIRResourceDownloadRequest *)v7 context];
        LOBYTE(v13) = [v13 isEqual:v28];

        if (fullRequestURL != v40)
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
        if (resourceType != v9)
        {
          goto LABEL_40;
        }

LABEL_41:

        goto LABEL_42;
      }
    }

    v30 = v40;
    if (fullRequestURL == v40)
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
  resourceType = self->_resourceType;
  fullRequestURL = self->_fullRequestURL;
  v8 = HKStringFromBool();
  v9 = [v3 stringWithFormat:@"<%@ %p, resource type: %@, has full request URL: %@>", v5, self, resourceType, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  resourceType = self->_resourceType;
  v5 = a3;
  [v5 encodeObject:resourceType forKey:@"resourceType"];
  [v5 encodeObject:self->_resourceSchemaDefinition forKey:@"resourceSchemaDefinition"];
  [v5 encodeObject:self->_fullRequestURL forKey:@"fullRequestURL"];
  [v5 encodeObject:self->_context forKey:@"context"];
}

- (HKFHIRResourceDownloadRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resourceType"];
  v6 = [MEMORY[0x277CCAAA0] hk_JSONObjectSecureCodingClasses];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"resourceSchemaDefinition"];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullRequestURL"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
  v10 = v9;
  if (v5)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v12 = 0;
  }

  else
  {
    self = [(HKFHIRResourceDownloadRequest *)self initWithResourceType:v5 resourceSchemaDefinition:v7 fullRequestURL:v8 context:v9];
    v12 = self;
  }

  return v12;
}

@end