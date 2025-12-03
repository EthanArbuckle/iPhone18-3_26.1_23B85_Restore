@interface HKFHIRResourceDownloadRequest
- (BOOL)isEqual:(id)equal;
- (HKFHIRResourceDownloadRequest)initWithCoder:(id)coder;
- (HKFHIRResourceDownloadRequest)initWithResourceType:(id)type resourceSchemaDefinition:(id)definition fullRequestURL:(id)l context:(id)context;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKFHIRResourceDownloadRequest

- (HKFHIRResourceDownloadRequest)initWithResourceType:(id)type resourceSchemaDefinition:(id)definition fullRequestURL:(id)l context:(id)context
{
  typeCopy = type;
  definitionCopy = definition;
  lCopy = l;
  contextCopy = context;
  v24.receiver = self;
  v24.super_class = HKFHIRResourceDownloadRequest;
  v14 = [(HKFHIRResourceDownloadRequest *)&v24 init];
  if (v14)
  {
    v15 = [typeCopy copy];
    resourceType = v14->_resourceType;
    v14->_resourceType = v15;

    v17 = [definitionCopy copy];
    resourceSchemaDefinition = v14->_resourceSchemaDefinition;
    v14->_resourceSchemaDefinition = v17;

    v19 = [lCopy copy];
    fullRequestURL = v14->_fullRequestURL;
    v14->_fullRequestURL = v19;

    v21 = [contextCopy copy];
    context = v14->_context;
    v14->_context = v21;
  }

  return v14;
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
      LOBYTE(resourceSchemaDefinition3) = 0;
LABEL_42:

      goto LABEL_43;
    }

    resourceType = self->_resourceType;
    resourceType = [(HKFHIRResourceDownloadRequest *)v7 resourceType];
    if (resourceType != resourceType)
    {
      resourceType2 = [(HKFHIRResourceDownloadRequest *)v7 resourceType];
      if (!resourceType2)
      {
        LOBYTE(resourceSchemaDefinition3) = 0;
        goto LABEL_41;
      }

      v3 = resourceType2;
      v11 = self->_resourceType;
      resourceType3 = [(HKFHIRResourceDownloadRequest *)v7 resourceType];
      if (![(NSString *)v11 isEqualToString:resourceType3])
      {
        LOBYTE(resourceSchemaDefinition3) = 0;
LABEL_40:

        goto LABEL_41;
      }

      v41 = resourceType3;
    }

    resourceSchemaDefinition = self->_resourceSchemaDefinition;
    resourceSchemaDefinition = [(HKFHIRResourceDownloadRequest *)v7 resourceSchemaDefinition];
    v42 = resourceSchemaDefinition;
    if (resourceSchemaDefinition != resourceSchemaDefinition)
    {
      resourceSchemaDefinition2 = [(HKFHIRResourceDownloadRequest *)v7 resourceSchemaDefinition];
      if (!resourceSchemaDefinition2)
      {
        LOBYTE(resourceSchemaDefinition3) = 0;
        goto LABEL_38;
      }

      v17 = resourceSchemaDefinition2;
      v18 = self->_resourceSchemaDefinition;
      resourceSchemaDefinition3 = [(HKFHIRResourceDownloadRequest *)v7 resourceSchemaDefinition];
      if (([(NSDictionary *)v18 isEqual:resourceSchemaDefinition3]& 1) == 0)
      {

        LOBYTE(resourceSchemaDefinition3) = 0;
        goto LABEL_39;
      }

      v38 = resourceSchemaDefinition3;
      v39 = v17;
    }

    fullRequestURL = self->_fullRequestURL;
    fullRequestURL = [(HKFHIRResourceDownloadRequest *)v7 fullRequestURL];
    if (fullRequestURL == fullRequestURL)
    {
      v37 = v3;
    }

    else
    {
      resourceSchemaDefinition3 = [(HKFHIRResourceDownloadRequest *)v7 fullRequestURL];
      if (!resourceSchemaDefinition3)
      {
        v31 = v38;
        v32 = v39;
        v30 = fullRequestURL;
        goto LABEL_30;
      }

      v20 = self->_fullRequestURL;
      fullRequestURL2 = [(HKFHIRResourceDownloadRequest *)v7 fullRequestURL];
      v22 = v20;
      v23 = fullRequestURL2;
      if (([(NSURL *)v22 isEqual:fullRequestURL2]& 1) == 0)
      {

        LOBYTE(resourceSchemaDefinition3) = 0;
        v29 = v42 == resourceSchemaDefinition;
        goto LABEL_33;
      }

      v34 = v23;
      v36 = resourceSchemaDefinition3;
      v37 = v3;
    }

    context = self->_context;
    context = [(HKFHIRResourceDownloadRequest *)v7 context];
    LOBYTE(resourceSchemaDefinition3) = context == context;
    if (context != context)
    {
      context2 = [(HKFHIRResourceDownloadRequest *)v7 context];
      if (context2)
      {
        v27 = context2;
        resourceSchemaDefinition3 = self->_context;
        context3 = [(HKFHIRResourceDownloadRequest *)v7 context];
        LOBYTE(resourceSchemaDefinition3) = [resourceSchemaDefinition3 isEqual:context3];

        if (fullRequestURL != fullRequestURL)
        {
        }

        v29 = v42 == resourceSchemaDefinition;
        v3 = v37;
LABEL_33:
        v32 = v39;
        if (!v29)
        {

LABEL_37:
        }

LABEL_38:

LABEL_39:
        resourceType3 = v41;
        if (resourceType != resourceType)
        {
          goto LABEL_40;
        }

LABEL_41:

        goto LABEL_42;
      }
    }

    v30 = fullRequestURL;
    if (fullRequestURL == fullRequestURL)
    {

      v3 = v37;
      v31 = v38;
      v32 = v39;
      if (v42 == resourceSchemaDefinition)
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

    if (v42 == resourceSchemaDefinition)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  LOBYTE(resourceSchemaDefinition3) = 1;
LABEL_43:

  return resourceSchemaDefinition3;
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

- (void)encodeWithCoder:(id)coder
{
  resourceType = self->_resourceType;
  coderCopy = coder;
  [coderCopy encodeObject:resourceType forKey:@"resourceType"];
  [coderCopy encodeObject:self->_resourceSchemaDefinition forKey:@"resourceSchemaDefinition"];
  [coderCopy encodeObject:self->_fullRequestURL forKey:@"fullRequestURL"];
  [coderCopy encodeObject:self->_context forKey:@"context"];
}

- (HKFHIRResourceDownloadRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resourceType"];
  hk_JSONObjectSecureCodingClasses = [MEMORY[0x277CCAAA0] hk_JSONObjectSecureCodingClasses];
  v7 = [coderCopy decodeObjectOfClasses:hk_JSONObjectSecureCodingClasses forKey:@"resourceSchemaDefinition"];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullRequestURL"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
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
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  else
  {
    self = [(HKFHIRResourceDownloadRequest *)self initWithResourceType:v5 resourceSchemaDefinition:v7 fullRequestURL:v8 context:v9];
    selfCopy = self;
  }

  return selfCopy;
}

@end