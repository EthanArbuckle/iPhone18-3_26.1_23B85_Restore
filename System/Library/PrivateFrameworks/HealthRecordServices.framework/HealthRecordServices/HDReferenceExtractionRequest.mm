@interface HDReferenceExtractionRequest
- (HDReferenceExtractionRequest)initWithCoder:(id)a3;
- (HDReferenceExtractionRequest)initWithResources:(id)a3 FHIRResourceData:(id)a4 serverBaseURL:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDReferenceExtractionRequest

- (void)encodeWithCoder:(id)a3
{
  resources = self->_resources;
  v5 = a3;
  [v5 encodeObject:resources forKey:@"Resources"];
  [v5 encodeObject:self->_FHIRResourceData forKey:@"FHIRResourceData"];
  [v5 encodeObject:self->_serverBaseURL forKey:@"ServerBaseURL"];
  [v5 encodeObject:self->_FHIRRelease forKey:@"FHIRRelease"];
}

- (HDReferenceExtractionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"Resources"];
  v7 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"FHIRResourceData"];
  v9 = [v6 count];
  if (v9 + [v8 count])
  {
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ServerBaseURL"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FHIRRelease"];
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
      v10 = self;
    }

    else
    {
      [v4 hrs_failWithCocoaValueNotFoundError];
      v10 = 0;
    }
  }

  else
  {
    [v4 hrs_failWithCocoaInvalidValueError];
    v10 = 0;
  }

  return v10;
}

- (HDReferenceExtractionRequest)initWithResources:(id)a3 FHIRResourceData:(id)a4 serverBaseURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 count];
  if (v11 + [v9 count])
  {
    v13 = [v8 hk_mapToSet:&__block_literal_global_7];
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

    v17 = [v9 hk_mapToSet:&__block_literal_global_311];
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
        v23 = [v8 copy];
        resources = v22->_resources;
        v22->_resources = v23;

        v25 = [v9 copy];
        FHIRResourceData = v22->_FHIRResourceData;
        v22->_FHIRResourceData = v25;

        v27 = [v10 copy];
        serverBaseURL = v22->_serverBaseURL;
        v22->_serverBaseURL = v27;

        v29 = [v21 anyObject];
        FHIRRelease = v22->_FHIRRelease;
        v22->_FHIRRelease = v29;
      }

      self = v22;
      v12 = self;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
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