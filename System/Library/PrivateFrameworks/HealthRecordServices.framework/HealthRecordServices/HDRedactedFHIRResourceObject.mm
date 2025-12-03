@interface HDRedactedFHIRResourceObject
+ (id)resourceObjectWithFHIRJSONObject:(id)object redactedJSONObject:(id)nObject error:(id *)error;
- (HDRedactedFHIRResourceObject)initWithCoder:(id)coder;
- (id)_initWithResourceType:(id)type sourceURL:(id)l FHIRVersion:(id)version JSONObject:(id)object;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDRedactedFHIRResourceObject

- (id)_initWithResourceType:(id)type sourceURL:(id)l FHIRVersion:(id)version JSONObject:(id)object
{
  typeCopy = type;
  v15.receiver = self;
  v15.super_class = HDRedactedFHIRResourceObject;
  v11 = [(HDFHIRJSONObject *)&v15 initWithJSONObject:object sourceURL:l FHIRVersion:version];
  if (v11)
  {
    v12 = [typeCopy copy];
    resourceType = v11->_resourceType;
    v11->_resourceType = v12;
  }

  return v11;
}

+ (id)resourceObjectWithFHIRJSONObject:(id)object redactedJSONObject:(id)nObject error:(id *)error
{
  objectCopy = object;
  nObjectCopy = nObject;
  detectedResourceType = [objectCopy detectedResourceType];
  if (detectedResourceType)
  {
    v11 = [nObjectCopy hk_safeStringForKeyPath:@"id" error:error];
    if (v11)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"Redacted FHIR resource cannot contain id in JSON"];
      v12 = 0;
    }

    else
    {
      v13 = [self alloc];
      sourceURL = [objectCopy sourceURL];
      fHIRVersion = [objectCopy FHIRVersion];
      v12 = [v13 _initWithResourceType:detectedResourceType sourceURL:sourceURL FHIRVersion:fHIRVersion JSONObject:nObjectCopy];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HDRedactedFHIRResourceObject;
  coderCopy = coder;
  [(HDFHIRJSONObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(HDRedactedFHIRResourceObject *)self resourceType:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"ResourceType"];
}

- (HDRedactedFHIRResourceObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ResourceType"];
  if (v5)
  {
    v9.receiver = self;
    v9.super_class = HDRedactedFHIRResourceObject;
    v6 = [(HDFHIRJSONObject *)&v9 initWithCoder:coderCopy];

    if (v6)
    {
      objc_storeStrong(&v6->_resourceType, v5);
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  resourceType = self->_resourceType;
  fHIRVersion = [(HDFHIRJSONObject *)self FHIRVersion];
  v8 = [v3 stringWithFormat:@"<%@: %@, %@>", v5, resourceType, fHIRVersion];

  return v8;
}

@end