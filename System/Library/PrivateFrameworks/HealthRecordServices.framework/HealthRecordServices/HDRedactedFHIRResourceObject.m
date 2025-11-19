@interface HDRedactedFHIRResourceObject
+ (id)resourceObjectWithFHIRJSONObject:(id)a3 redactedJSONObject:(id)a4 error:(id *)a5;
- (HDRedactedFHIRResourceObject)initWithCoder:(id)a3;
- (id)_initWithResourceType:(id)a3 sourceURL:(id)a4 FHIRVersion:(id)a5 JSONObject:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDRedactedFHIRResourceObject

- (id)_initWithResourceType:(id)a3 sourceURL:(id)a4 FHIRVersion:(id)a5 JSONObject:(id)a6
{
  v10 = a3;
  v15.receiver = self;
  v15.super_class = HDRedactedFHIRResourceObject;
  v11 = [(HDFHIRJSONObject *)&v15 initWithJSONObject:a6 sourceURL:a4 FHIRVersion:a5];
  if (v11)
  {
    v12 = [v10 copy];
    resourceType = v11->_resourceType;
    v11->_resourceType = v12;
  }

  return v11;
}

+ (id)resourceObjectWithFHIRJSONObject:(id)a3 redactedJSONObject:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 detectedResourceType];
  if (v10)
  {
    v11 = [v9 hk_safeStringForKeyPath:@"id" error:a5];
    if (v11)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 description:@"Redacted FHIR resource cannot contain id in JSON"];
      v12 = 0;
    }

    else
    {
      v13 = [a1 alloc];
      v14 = [v8 sourceURL];
      v15 = [v8 FHIRVersion];
      v12 = [v13 _initWithResourceType:v10 sourceURL:v14 FHIRVersion:v15 JSONObject:v9];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HDRedactedFHIRResourceObject;
  v4 = a3;
  [(HDFHIRJSONObject *)&v6 encodeWithCoder:v4];
  v5 = [(HDRedactedFHIRResourceObject *)self resourceType:v6.receiver];
  [v4 encodeObject:v5 forKey:@"ResourceType"];
}

- (HDRedactedFHIRResourceObject)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ResourceType"];
  if (v5)
  {
    v9.receiver = self;
    v9.super_class = HDRedactedFHIRResourceObject;
    v6 = [(HDFHIRJSONObject *)&v9 initWithCoder:v4];

    if (v6)
    {
      objc_storeStrong(&v6->_resourceType, v5);
    }

    self = v6;
    v7 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];

    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  resourceType = self->_resourceType;
  v7 = [(HDFHIRJSONObject *)self FHIRVersion];
  v8 = [v3 stringWithFormat:@"<%@: %@, %@>", v5, resourceType, v7];

  return v8;
}

@end