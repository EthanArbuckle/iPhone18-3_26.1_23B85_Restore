@interface HDFHIREndpointSchema
+ (BOOL)_queryItemsShouldIncludeParameterItem:(id)a3 queryMode:(int64_t)a4;
+ (BOOL)_validateAuthValue:(id)a3 error:(id *)a4;
+ (BOOL)_validateMethodValue:(id)a3 error:(id *)a4;
+ (BOOL)_validateMinCompatibleAPIVersion:(id)a3 error:(id *)a4;
+ (BOOL)_validateNameValue:(id)a3 error:(id *)a4;
+ (BOOL)_validateParameterArray:(id)a3 error:(id *)a4;
+ (BOOL)_validateParameterItem:(id)a3 error:(id *)a4;
+ (BOOL)_validateQueryMode:(id)a3 error:(id *)a4;
+ (BOOL)_validateRootKey:(id)a3 value:(id)a4 error:(id *)a5;
+ (BOOL)_validateURLValue:(id)a3 error:(id *)a4;
+ (BOOL)validateDefinition:(id)a3 error:(id *)a4;
+ (BOOL)validateName:(id)a3 error:(id *)a4;
+ (id)_percentEncodedQueryStringFromQueryItems:(id)a3 additionalEncodableCharacters:(id)a4;
+ (id)_queryItemsFromParametersArray:(id)a3 bindings:(id)a4 queryMode:(int64_t)a5 error:(id *)a6;
+ (id)_valueForParameterItem:(id)a3 bindings:(id)a4 error:(id *)a5;
+ (id)schemaWithDefinition:(id)a3 authenticationInformation:(id)a4 error:(id *)a5;
- (BOOL)_addHTTPBodyToRequest:(id)a3 bindings:(id)a4 queryMode:(int64_t)a5 error:(id *)a6;
- (BOOL)_applyAuthToRequest:(id)a3 credential:(id)a4 error:(id *)a5;
- (BOOL)_applyHeadersToRequest:(id)a3 bindings:(id)a4 queryMode:(int64_t)a5 error:(id *)a6;
- (BOOL)isEnabled;
- (HDFHIREndpointSchema)init;
- (HDFHIREndpointSchema)initWithDefinition:(id)a3 authenticationInformation:(id)a4;
- (NSArray)bodyParameters;
- (NSArray)headerParameters;
- (NSArray)queryParameters;
- (NSString)method;
- (NSString)name;
- (NSURL)baseURL;
- (id)_URLWithBindings:(id)a3 queryMode:(int64_t)a4 error:(id *)a5;
- (id)_bindingsWithCredential:(id)a3;
- (id)_createRequestWithCredential:(id)a3 bindings:(id)a4 orFullURL:(id)a5 queryMode:(int64_t)a6 error:(id *)a7;
- (id)currentScopeStringWithError:(id *)a3;
- (int64_t)authType;
- (int64_t)minCompatibleAPIVersion;
@end

@implementation HDFHIREndpointSchema

- (HDFHIREndpointSchema)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDFHIREndpointSchema)initWithDefinition:(id)a3 authenticationInformation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HDFHIREndpointSchema;
  v8 = [(HDFHIREndpointSchema *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    definition = v8->_definition;
    v8->_definition = v9;

    v11 = [v7 copy];
    authenticationInformation = v8->_authenticationInformation;
    v8->_authenticationInformation = v11;
  }

  return v8;
}

+ (id)schemaWithDefinition:(id)a3 authenticationInformation:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (objc_opt_class() == a1)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"HDFHIREndpointSchema.m" lineNumber:84 description:{@"Attempting to instantiate abstract class: %@", a1}];
  }

  if ([a1 validateDefinition:v9 error:a5])
  {
    v12 = [[a1 alloc] initWithDefinition:v9 authenticationInformation:v10];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_createRequestWithCredential:(id)a3 bindings:(id)a4 orFullURL:(id)a5 queryMode:(int64_t)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (![(HDFHIREndpointSchema *)self isEnabled])
  {
    v18 = [(HDFHIREndpointSchema *)self name];
    [NSError hk_assignError:a7 code:3 format:@"Endpoint %@ not enabled", v18];
    v19 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v15 = &__NSDictionary0__struct;
  if (v13)
  {
    v15 = v13;
  }

  v16 = v15;

  v17 = [(HDFHIREndpointSchema *)self _bindingsWithCredential:v12];
  v13 = [v16 hk_dictionaryByAddingEntriesFromDictionary:v17];

  if (v14)
  {
    v18 = v14;
    goto LABEL_8;
  }

  v18 = [(HDFHIREndpointSchema *)self _URLWithBindings:v13 queryMode:a6 error:a7];
  if (v18)
  {
LABEL_8:
    v20 = [[NSMutableURLRequest alloc] initWithURL:v18];
    [v20 setAttribution:1];
    v21 = [(HDFHIREndpointSchema *)self method];
    [v20 setHTTPMethod:v21];

    if ([(HDFHIREndpointSchema *)self _applyAuthToRequest:v20 credential:v12 error:a7]&& [(HDFHIREndpointSchema *)self _applyHeadersToRequest:v20 bindings:v13 queryMode:a6 error:a7]&& [(HDFHIREndpointSchema *)self _addHTTPBodyToRequest:v20 bindings:v13 queryMode:a6 error:a7])
    {
      v19 = v20;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_14;
  }

  v19 = 0;
LABEL_15:

  return v19;
}

- (BOOL)_applyAuthToRequest:(id)a3 credential:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HDFHIREndpointSchema *)self authType];
  switch(v10)
  {
    case 0:
      v11 = [(HDFHIREndpointSchema *)self name];
      v25 = v11;
      v23 = @"Encountered unexpected auth type for endpoint %@";
      goto LABEL_15;
    case 2:
      if (v9)
      {
        v11 = [v9 accessToken];
        if (v11)
        {
          v22 = [[NSString alloc] initWithFormat:@"Bearer %@", v11];
          [v8 setValue:v22 forHTTPHeaderField:@"Authorization"];

          v21 = 1;
LABEL_17:

          goto LABEL_18;
        }

        [NSError hk_assignError:a5 code:3 format:@"Credential %@ does not have an access token", v9];
LABEL_16:
        v21 = 0;
        goto LABEL_17;
      }

      v11 = [(HDFHIREndpointSchema *)self name];
      v25 = v11;
      v23 = @"Endpoint %@ requires a credential for a Bearer auth request";
LABEL_15:
      [NSError hk_assignError:a5 code:3 format:v23, v25];
      goto LABEL_16;
    case 1:
      v11 = self->_authenticationInformation;
      v12 = [(HKFHIRServerAuthenticationInformation *)v11 clientID];
      if (v12 && (v13 = v12, [(HKFHIRServerAuthenticationInformation *)v11 clientSecret], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14))
      {
        v15 = [(HKFHIRServerAuthenticationInformation *)v11 clientID];
        v16 = [(HKFHIRServerAuthenticationInformation *)v11 clientSecret];
        v17 = [NSString stringWithFormat:@"%@:%@", v15, v16];

        v18 = [v17 dataUsingEncoding:4];
        v19 = [v18 base64EncodedStringWithOptions:0];
        v20 = [NSString stringWithFormat:@"Basic %@", v19];
        [v8 setValue:v20 forHTTPHeaderField:@"Authorization"];

        v21 = 1;
      }

      else
      {
        v17 = [(HDFHIREndpointSchema *)self name];
        [NSError hk_assignError:a5 code:3 format:@"Endpoint %@ requires clientID and clientSecret for a Basic auth request", v17];
        v21 = 0;
      }

      goto LABEL_17;
  }

  v21 = 1;
LABEL_18:

  return v21;
}

- (BOOL)_applyHeadersToRequest:(id)a3 bindings:(id)a4 queryMode:(int64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(HDFHIREndpointSchema *)self headerParameters];
  if (v12)
  {
    v13 = [objc_opt_class() _queryItemsFromParametersArray:v12 bindings:v11 queryMode:a5 error:a6];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v22 + 1) + 8 * i);
          v19 = [v18 value];
          v20 = [v18 name];
          [v10 addValue:v19 forHTTPHeaderField:v20];
        }

        v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }
  }

  return 1;
}

- (BOOL)_addHTTPBodyToRequest:(id)a3 bindings:(id)a4 queryMode:(int64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(HDFHIREndpointSchema *)self bodyParameters];
  if (v12)
  {
    v13 = [objc_opt_class() _queryItemsFromParametersArray:v12 bindings:v11 queryMode:a5 error:a6];
    if (v13)
    {
      v14 = [objc_opt_class() _percentEncodedQueryStringFromQueryItems:v13 additionalEncodableCharacters:@"+/"];
      v15 = [v14 dataUsingEncoding:4];
      v16 = v15 != 0;
      if (v15)
      {
        [v10 setHTTPBody:v15];
      }

      else
      {
        [NSError hk_assignError:a6 code:100 format:@"Unable to serialize HTTP body string: %@", v14];
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (id)_bindingsWithCredential:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  if (v3)
  {
    v5 = [v3 patientID];
    [v4 setObject:v5 forKeyedSubscript:HKFHIREndpointSchemaVariablePatient];
  }

  return v4;
}

- (id)_URLWithBindings:(id)a3 queryMode:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(HDFHIREndpointSchema *)self baseURL];
  if (v9)
  {
    v10 = [(HDFHIREndpointSchema *)self queryParameters];
    if (v10)
    {
      v11 = [objc_opt_class() _queryItemsFromParametersArray:v10 bindings:v8 queryMode:a4 error:a5];
      if (v11)
      {
        v12 = [objc_opt_class() _percentEncodedQueryStringFromQueryItems:v11 additionalEncodableCharacters:@"+/"];
        v13 = [NSString alloc];
        v14 = [v9 absoluteString];
        v15 = [v13 initWithFormat:@"%@?%@", v14, v12];

        v16 = [[NSURL alloc] initWithString:v15];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          [NSError hk_assignError:a5 code:100 format:@"Unable to create URL from URL string: %@", v15];
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = v9;
    }
  }

  else
  {
    v10 = [(HDFHIREndpointSchema *)self name];
    [NSError hk_assignError:a5 code:100 format:@"Unable to determine base URL for endpoint %@", v10];
    v17 = 0;
  }

  return v17;
}

+ (BOOL)validateDefinition:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v7 = HKSafeObject();
  v8 = v7;
  if (v7)
  {
    v9 = [v7 allKeys];
    v10 = [a1 _requiredRootKeys];
    if ([v9 hk_containsObjectsInArray:v10])
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v25;
        v22 = v9;
        v23 = v6;
        v21 = v10;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v25 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v24 + 1) + 8 * i);
            objc_opt_class();
            v17 = HKSafeObject();
            if (!v17)
            {
              goto LABEL_17;
            }

            v18 = [v8 objectForKeyedSubscript:v17];
            v19 = [a1 _validateRootKey:v17 value:v18 error:a4];

            if (!v19)
            {
              LOBYTE(v17) = 0;
LABEL_17:
              v9 = v22;
              v6 = v23;
              v10 = v21;
              goto LABEL_18;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
          LOBYTE(v17) = 1;
          v9 = v22;
          v6 = v23;
          v10 = v21;
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        LOBYTE(v17) = 1;
      }

LABEL_18:
    }

    else
    {
      [NSError hk_assignError:a4 code:3 format:@"Endpoint schema definition missing required key in %@. Got: %@", v10, v9];
      LOBYTE(v17) = 0;
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  return v17;
}

+ (BOOL)_validateRootKey:(id)a3 value:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 isEqualToString:@"auth"])
  {
    v10 = [a1 _validateAuthValue:v9 error:a5];
    goto LABEL_8;
  }

  if (![v8 isEqualToString:@"enabled"])
  {
    if (![v8 isEqualToString:@"form"] && !objc_msgSend(v8, "isEqualToString:", @"headers"))
    {
      if ([v8 isEqualToString:@"method"])
      {
        v10 = [a1 _validateMethodValue:v9 error:a5];
        goto LABEL_8;
      }

      if ([v8 isEqualToString:@"name"])
      {
        v10 = [a1 _validateNameValue:v9 error:a5];
        goto LABEL_8;
      }

      if (![v8 isEqualToString:@"query"])
      {
        if ([v8 isEqualToString:@"url"])
        {
          v10 = [a1 _validateURLValue:v9 error:a5];
        }

        else
        {
          if (![v8 isEqualToString:@"minCompatibleApiVersion"])
          {
            v12 = 1;
            goto LABEL_9;
          }

          v10 = [a1 _validateMinCompatibleAPIVersion:v9 error:a5];
        }

        goto LABEL_8;
      }
    }

    v10 = [a1 _validateParameterArray:v9 error:a5];
LABEL_8:
    v12 = v10;
    goto LABEL_9;
  }

  objc_opt_class();
  v11 = HKSafeObject();
  v12 = v11 != 0;

LABEL_9:
  return v12;
}

+ (BOOL)_validateMinCompatibleAPIVersion:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = HKSafeObject();

  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [v6 integerValue];
  if (v7 <= 0)
  {
    [NSError hk_assignError:a4 code:3 format:@"Invalid minCompatibleApiVersion: %ld", v7];
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:

  return v8;
}

+ (BOOL)_validateAuthValue:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = HKSafeObject();

  if (!v6)
  {
    goto LABEL_5;
  }

  if (!sub_1000062D4(v6))
  {
    [NSError hk_assignError:a4 code:3 format:@"Invalid auth value: %@", v6];
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:

  return v7;
}

+ (BOOL)_validateMethodValue:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = HKSafeObject();

  if (v6)
  {
    v10[0] = @"GET";
    v10[1] = @"POST";
    v7 = [NSArray arrayWithObjects:v10 count:2];
    v8 = [v7 containsObject:v6];
    if ((v8 & 1) == 0)
    {
      [NSError hk_assignError:a4 code:3 format:@"Invalid method value: %@", v6];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)_validateNameValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v7 = HKSafeObject();

  if (v7)
  {
    v8 = [a1 validateName:v7 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)_validateParameterArray:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v7 = HKSafeObject();
  v8 = v7;
  if (v7)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if (![a1 _validateParameterItem:*(*(&v16 + 1) + 8 * i) error:{a4, v16}])
          {
            v14 = 0;
            goto LABEL_12;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v14 = 1;
LABEL_12:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (BOOL)_validateParameterItem:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v7 = HKSafeObject();

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:@"param"];
    objc_opt_class();
    v9 = HKSafeObject();

    if (v9)
    {
      v10 = [v7 objectForKeyedSubscript:@"literal"];
      if (v10)
      {
        v11 = v10;
        objc_opt_class();
        v12 = HKSafeObject();
      }

      else
      {
        v12 = 0;
      }

      v14 = [v7 objectForKeyedSubscript:@"variable"];
      if (v14)
      {
        v15 = v14;
        objc_opt_class();
        v16 = HKSafeObject();
      }

      else
      {
        v16 = 0;
      }

      if (v16 | v12 && (!v16 || !v12))
      {
        v18 = [v7 objectForKeyedSubscript:@"mode"];
        v13 = !v18 || [a1 _validateQueryMode:v18 error:a4];

        goto LABEL_15;
      }

      [NSError hk_assignError:a4 code:3 format:@"Parameter array item must have exactly one of 'literal', 'variable': %@", v7];
    }

    v13 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

+ (BOOL)_validateQueryMode:(id)a3 error:(id *)a4
{
  v4 = a3;
  objc_opt_class();
  v5 = HKSafeObject();
  v6 = v5;
  if (v5)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          objc_opt_class();
          v13 = HKSafeObject();

          if (!v13)
          {
            v14 = 0;
            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v14 = 1;
LABEL_12:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (BOOL)_validateURLValue:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = HKSafeObject();

  if (v6)
  {
    v7 = [[NSURL alloc] initWithString:v6];
    v8 = v7 != 0;
    if (!v7)
    {
      [NSError hk_assignError:a4 code:3 format:@"Invalid URL specified: %@", v6];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_percentEncodedQueryStringFromQueryItems:(id)a3 additionalEncodableCharacters:(id)a4
{
  v5 = &stru_100019270;
  if (a4)
  {
    v5 = a4;
  }

  v6 = v5;
  v7 = a3;
  v8 = objc_alloc_init(NSURLComponents);
  [v8 setQueryItems:v7];

  v9 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  v10 = [v9 mutableCopy];

  [v10 removeCharactersInString:v6];
  v11 = [v8 query];
  v12 = [v11 stringByAddingPercentEncodingWithAllowedCharacters:v10];

  return v12;
}

+ (id)_queryItemsFromParametersArray:(id)a3 bindings:(id)a4 queryMode:(int64_t)a5 error:(id *)a6
{
  v23 = a6;
  v9 = a3;
  v24 = a4;
  v10 = objc_alloc_init(NSMutableArray);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        if ([a1 _queryItemsShouldIncludeParameterItem:v16 queryMode:{a5, v23}])
        {
          v17 = [v16 objectForKeyedSubscript:@"param"];
          v18 = [a1 _valueForParameterItem:v16 bindings:v24 error:v23];
          if (!v18)
          {

            v21 = 0;
            goto LABEL_13;
          }

          v19 = v18;
          v20 = [[NSURLQueryItem alloc] initWithName:v17 value:v18];
          [v10 addObject:v20];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v21 = v10;
LABEL_13:

  return v21;
}

+ (id)_valueForParameterItem:(id)a3 bindings:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 objectForKeyedSubscript:@"literal"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [v7 objectForKeyedSubscript:@"variable"];
    v11 = [v8 objectForKeyedSubscript:v12];
    if (!v11)
    {
      [NSError hk_assignError:a5 code:3 format:@"Unbound variable: %@", v12];
    }
  }

  return v11;
}

+ (BOOL)_queryItemsShouldIncludeParameterItem:(id)a3 queryMode:(int64_t)a4
{
  if (!a4)
  {
    return 1;
  }

  v4 = [a3 objectForKeyedSubscript:@"mode"];
  if ([v4 count])
  {
    v5 = NSStringFromHKFHIRResourceQueryMode();
    if (v5)
    {
      v6 = [v4 containsObject:v5];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (int64_t)authType
{
  v2 = [(HDFHIREndpointSchema *)self definition];
  v3 = [v2 objectForKey:@"auth"];

  v4 = sub_1000062D4(v3);
  return v4;
}

- (NSURL)baseURL
{
  v2 = [(HDFHIREndpointSchema *)self definition];
  v3 = [v2 objectForKey:@"url"];

  v4 = [NSURL URLWithString:v3];

  return v4;
}

- (NSArray)bodyParameters
{
  v2 = [(HDFHIREndpointSchema *)self definition];
  v3 = [v2 objectForKey:@"form"];

  return v3;
}

- (BOOL)isEnabled
{
  v2 = [(HDFHIREndpointSchema *)self definition];
  v3 = [v2 objectForKey:@"enabled"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (int64_t)minCompatibleAPIVersion
{
  v2 = [(HDFHIREndpointSchema *)self definition];
  v3 = [v2 objectForKey:@"minCompatibleApiVersion"];
  v4 = [v3 integerValue];

  return v4;
}

- (NSArray)headerParameters
{
  v2 = [(HDFHIREndpointSchema *)self definition];
  v3 = [v2 objectForKey:@"headers"];

  return v3;
}

- (NSString)method
{
  v2 = [(HDFHIREndpointSchema *)self definition];
  v3 = [v2 objectForKey:@"method"];

  return v3;
}

- (NSString)name
{
  v2 = [(HDFHIREndpointSchema *)self definition];
  v3 = [v2 objectForKey:@"name"];

  return v3;
}

- (NSArray)queryParameters
{
  v2 = [(HDFHIREndpointSchema *)self definition];
  v3 = [v2 objectForKey:@"query"];

  return v3;
}

- (id)currentScopeStringWithError:(id *)a3
{
  [(HDFHIREndpointSchema *)self queryParameters];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v20 = 0u;
  v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"param"];
        objc_opt_class();
        v10 = HKSafeObject();

        if ([v10 isEqualToString:@"scope"])
        {
          v13 = [v8 objectForKeyedSubscript:@"literal"];
          v12 = v13;
          if (v13)
          {
            v14 = v13;
          }

          else
          {
            [NSError hk_assignError:a3 code:100 format:@"Scope parameter item did not have a literal key-value pair %@", v8];
          }

          v11 = obj;

          goto LABEL_14;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = obj;

  [NSError hk_assignError:a3 code:118 format:@"Unable to find scope query parameter"];
  v12 = 0;
LABEL_14:

  return v12;
}

+ (BOOL)validateName:(id)a3 error:(id *)a4
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end