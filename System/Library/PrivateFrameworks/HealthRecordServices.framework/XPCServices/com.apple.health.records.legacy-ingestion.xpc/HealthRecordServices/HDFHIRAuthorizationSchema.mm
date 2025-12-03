@interface HDFHIRAuthorizationSchema
+ (BOOL)validateName:(id)name error:(id *)error;
- (id)bodyParameters;
- (id)name;
- (id)queryParameters;
- (int64_t)authorizationEndpointType;
@end

@implementation HDFHIRAuthorizationSchema

- (int64_t)authorizationEndpointType
{
  v5.receiver = self;
  v5.super_class = HDFHIRAuthorizationSchema;
  name = [(HDFHIREndpointSchema *)&v5 name];
  v3 = sub_1000049E8(name);

  return v3;
}

- (id)name
{
  authorizationEndpointType = [(HDFHIRAuthorizationSchema *)self authorizationEndpointType];
  if ((authorizationEndpointType - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_100018620[authorizationEndpointType - 1];
  }
}

- (id)queryParameters
{
  v33.receiver = self;
  v33.super_class = HDFHIRAuthorizationSchema;
  obj = [(HDFHIREndpointSchema *)&v33 queryParameters];
  name = [(HDFHIRAuthorizationSchema *)self name];
  if (sub_1000049E8(name) != 2)
  {
    goto LABEL_31;
  }

  authenticationInformation = [(HDFHIREndpointSchema *)self authenticationInformation];
  [authenticationInformation PKCEAlgorithm];
  IsSupported = HKFHIRServerAuthenticationPKCEAlgorithmIsSupported();

  if (IsSupported)
  {
    selfCopy = self;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = obj;
    v6 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (!v6)
    {
      v28 = 0;
      goto LABEL_25;
    }

    v7 = v6;
    v28 = 0;
    v8 = *v30;
    v9 = HKFHIRAuthorizationSchemaParameterNamePKCEChallenge;
    v10 = HKFHIRAuthorizationSchemaParameterNamePKCEMethod;
    while (1)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:@"param"];
        v14 = v13;
        if (v13 == v9)
        {
          LOBYTE(v28) = 1;
        }

        else
        {
          if (v9)
          {
            v15 = [v12 objectForKeyedSubscript:@"param"];
            v16 = [v15 isEqualToString:v9];

            if (v16)
            {
              LOBYTE(v28) = 1;
              continue;
            }
          }

          else
          {
          }

          v14 = [v12 objectForKeyedSubscript:@"param"];
          if (v14 == v10 || v10 == 0)
          {
            HIDWORD(v28) |= v14 == v10;
          }

          else
          {
            v18 = [v12 objectForKeyedSubscript:@"param"];
            v19 = [v18 isEqualToString:v10];

            HIDWORD(v28) |= v19;
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (!v7)
      {
LABEL_25:

        name = objc_alloc_init(NSMutableArray);
        if ((v28 & 1) == 0)
        {
          v36[0] = @"param";
          v36[1] = @"variable";
          v37[0] = HKFHIRAuthorizationSchemaParameterNamePKCEChallenge;
          v37[1] = HKFHIREndpointSchemaVariablePKCEChallenge;
          v20 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
          [name addObject:v20];
        }

        if ((v28 & 0x100000000) == 0)
        {
          v35[0] = HKFHIRAuthorizationSchemaParameterNamePKCEMethod;
          v34[0] = @"param";
          v34[1] = @"literal";
          authenticationInformation2 = [(HDFHIREndpointSchema *)selfCopy authenticationInformation];
          [authenticationInformation2 PKCEAlgorithm];
          v22 = NSStringFromHKFHIRServerAuthenticationPKCEAlgorithm();
          v35[1] = v22;
          v23 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
          [name addObject:v23];
        }

        if ([name count])
        {
          v24 = [obj arrayByAddingObjectsFromArray:name];

          obj = v24;
        }

LABEL_31:

        break;
      }
    }
  }

  return obj;
}

- (id)bodyParameters
{
  v24.receiver = self;
  v24.super_class = HDFHIRAuthorizationSchema;
  bodyParameters = [(HDFHIREndpointSchema *)&v24 bodyParameters];
  name = [(HDFHIRAuthorizationSchema *)self name];
  if (sub_1000049E8(name) != 1)
  {
    goto LABEL_20;
  }

  authenticationInformation = [(HDFHIREndpointSchema *)self authenticationInformation];
  [authenticationInformation PKCEAlgorithm];
  IsSupported = HKFHIRServerAuthenticationPKCEAlgorithmIsSupported();

  if (!IsSupported)
  {
    goto LABEL_21;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  bodyParameters = bodyParameters;
  v7 = [bodyParameters countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (!v7)
  {

    v11 = HKFHIRAuthorizationSchemaParameterNamePKCEVerifier;
LABEL_19:
    v25[0] = @"param";
    v25[1] = @"variable";
    v26[0] = v11;
    v26[1] = HKFHIREndpointSchemaVariablePKCEVerifier;
    name = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2, v20];
    v18 = [bodyParameters arrayByAddingObject:name];

    bodyParameters = v18;
LABEL_20:

    goto LABEL_21;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v21;
  v11 = HKFHIRAuthorizationSchemaParameterNamePKCEVerifier;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(bodyParameters);
      }

      v13 = *(*(&v20 + 1) + 8 * i);
      v14 = [v13 objectForKeyedSubscript:{@"param", v20}];
      if (v14 == v11 || v11 == 0)
      {
        v9 |= v14 == v11;
      }

      else
      {
        v16 = [v13 objectForKeyedSubscript:@"param"];
        v17 = [v16 isEqualToString:v11];

        v9 |= v17;
      }
    }

    v8 = [bodyParameters countByEnumeratingWithState:&v20 objects:v27 count:16];
  }

  while (v8);

  if ((v9 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_21:

  return bodyParameters;
}

+ (BOOL)validateName:(id)name error:(id *)error
{
  nameCopy = name;
  v6 = sub_1000049E8(nameCopy);
  if (!v6)
  {
    [NSError hk_assignError:error code:3 format:@"Invalid name: %@", nameCopy];
  }

  return v6 != 0;
}

@end