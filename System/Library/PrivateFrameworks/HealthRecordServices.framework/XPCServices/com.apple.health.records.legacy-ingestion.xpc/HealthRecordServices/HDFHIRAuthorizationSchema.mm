@interface HDFHIRAuthorizationSchema
+ (BOOL)validateName:(id)a3 error:(id *)a4;
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
  v2 = [(HDFHIREndpointSchema *)&v5 name];
  v3 = sub_1000049E8(v2);

  return v3;
}

- (id)name
{
  v2 = [(HDFHIRAuthorizationSchema *)self authorizationEndpointType];
  if ((v2 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_100018620[v2 - 1];
  }
}

- (id)queryParameters
{
  v33.receiver = self;
  v33.super_class = HDFHIRAuthorizationSchema;
  obj = [(HDFHIREndpointSchema *)&v33 queryParameters];
  v3 = [(HDFHIRAuthorizationSchema *)self name];
  if (sub_1000049E8(v3) != 2)
  {
    goto LABEL_31;
  }

  v4 = [(HDFHIREndpointSchema *)self authenticationInformation];
  [v4 PKCEAlgorithm];
  IsSupported = HKFHIRServerAuthenticationPKCEAlgorithmIsSupported();

  if (IsSupported)
  {
    v26 = self;
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

        v3 = objc_alloc_init(NSMutableArray);
        if ((v28 & 1) == 0)
        {
          v36[0] = @"param";
          v36[1] = @"variable";
          v37[0] = HKFHIRAuthorizationSchemaParameterNamePKCEChallenge;
          v37[1] = HKFHIREndpointSchemaVariablePKCEChallenge;
          v20 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
          [v3 addObject:v20];
        }

        if ((v28 & 0x100000000) == 0)
        {
          v35[0] = HKFHIRAuthorizationSchemaParameterNamePKCEMethod;
          v34[0] = @"param";
          v34[1] = @"literal";
          v21 = [(HDFHIREndpointSchema *)v26 authenticationInformation];
          [v21 PKCEAlgorithm];
          v22 = NSStringFromHKFHIRServerAuthenticationPKCEAlgorithm();
          v35[1] = v22;
          v23 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
          [v3 addObject:v23];
        }

        if ([v3 count])
        {
          v24 = [obj arrayByAddingObjectsFromArray:v3];

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
  v3 = [(HDFHIREndpointSchema *)&v24 bodyParameters];
  v4 = [(HDFHIRAuthorizationSchema *)self name];
  if (sub_1000049E8(v4) != 1)
  {
    goto LABEL_20;
  }

  v5 = [(HDFHIREndpointSchema *)self authenticationInformation];
  [v5 PKCEAlgorithm];
  IsSupported = HKFHIRServerAuthenticationPKCEAlgorithmIsSupported();

  if (!IsSupported)
  {
    goto LABEL_21;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = v3;
  v7 = [v3 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (!v7)
  {

    v11 = HKFHIRAuthorizationSchemaParameterNamePKCEVerifier;
LABEL_19:
    v25[0] = @"param";
    v25[1] = @"variable";
    v26[0] = v11;
    v26[1] = HKFHIREndpointSchemaVariablePKCEVerifier;
    v4 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2, v20];
    v18 = [v3 arrayByAddingObject:v4];

    v3 = v18;
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
        objc_enumerationMutation(v3);
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

    v8 = [v3 countByEnumeratingWithState:&v20 objects:v27 count:16];
  }

  while (v8);

  if ((v9 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_21:

  return v3;
}

+ (BOOL)validateName:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = sub_1000049E8(v5);
  if (!v6)
  {
    [NSError hk_assignError:a4 code:3 format:@"Invalid name: %@", v5];
  }

  return v6 != 0;
}

@end