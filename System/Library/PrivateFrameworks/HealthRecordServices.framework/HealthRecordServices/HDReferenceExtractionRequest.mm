@interface HDReferenceExtractionRequest
- (HDReferenceExtractionRequest)initWithCoder:(id)coder;
- (HDReferenceExtractionRequest)initWithResources:(id)resources FHIRResourceData:(id)data serverBaseURL:(id)l;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDReferenceExtractionRequest

- (void)encodeWithCoder:(id)coder
{
  resources = self->_resources;
  coderCopy = coder;
  [coderCopy encodeObject:resources forKey:@"Resources"];
  [coderCopy encodeObject:self->_FHIRResourceData forKey:@"FHIRResourceData"];
  [coderCopy encodeObject:self->_serverBaseURL forKey:@"ServerBaseURL"];
  [coderCopy encodeObject:self->_FHIRRelease forKey:@"FHIRRelease"];
}

- (HDReferenceExtractionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"Resources"];
  v7 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"FHIRResourceData"];
  v9 = [v6 count];
  if (v9 + [v8 count])
  {
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ServerBaseURL"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FHIRRelease"];
    v13 = v12;
    if (v11 && v12)
    {
      v19.receiver = self;
      v19.super_class = HDReferenceExtractionRequest;
      v14 = [(HDReferenceExtractionRequest *)&v19 init];
      v15 = v14;
      if (v14)
      {
        objc_storeStrong(&v14->_resources, v6);
        objc_storeStrong(&v15->_FHIRResourceData, v8);
        objc_storeStrong(&v15->_serverBaseURL, v11);
        v16 = HKFHIRReleaseFromNSString();
        FHIRRelease = v15->_FHIRRelease;
        v15->_FHIRRelease = v16;
      }

      self = v15;
      selfCopy = self;
    }

    else
    {
      [coderCopy hrs_failWithCocoaValueNotFoundError];
      selfCopy = 0;
    }
  }

  else
  {
    [coderCopy hrs_failWithCocoaInvalidValueError];
    selfCopy = 0;
  }

  return selfCopy;
}

- (HDReferenceExtractionRequest)initWithResources:(id)resources FHIRResourceData:(id)data serverBaseURL:(id)l
{
  resourcesCopy = resources;
  dataCopy = data;
  lCopy = l;
  v11 = [resourcesCopy count];
  if (v11 + [dataCopy count])
  {
    v13 = [resourcesCopy hk_mapToSet:&__block_literal_global_7];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [MEMORY[0x277CBEB98] set];
    }

    v16 = v15;

    v17 = [dataCopy hk_mapToSet:&__block_literal_global_311];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [MEMORY[0x277CBEB98] set];
    }

    v20 = v19;

    v21 = [v16 setByAddingObjectsFromSet:v20];
    if ([v21 count] <= 1)
    {
      v32.receiver = self;
      v32.super_class = HDReferenceExtractionRequest;
      v22 = [(HDReferenceExtractionRequest *)&v32 init];
      if (v22)
      {
        v23 = [resourcesCopy copy];
        resources = v22->_resources;
        v22->_resources = v23;

        v25 = [dataCopy copy];
        FHIRResourceData = v22->_FHIRResourceData;
        v22->_FHIRResourceData = v25;

        v27 = [lCopy copy];
        serverBaseURL = v22->_serverBaseURL;
        v22->_serverBaseURL = v27;

        anyObject = [v21 anyObject];
        FHIRRelease = v22->_FHIRRelease;
        v22->_FHIRRelease = anyObject;
      }

      self = v22;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

id __81__HDReferenceExtractionRequest_initWithResources_FHIRResourceData_serverBaseURL___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 FHIRVersion];
  v3 = [v2 FHIRRelease];

  return v3;
}

id __81__HDReferenceExtractionRequest_initWithResources_FHIRResourceData_serverBaseURL___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 FHIRVersion];
  v3 = [v2 FHIRRelease];

  return v3;
}

@end