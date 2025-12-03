@interface HDFHIREndpointSchema
+ (BOOL)_queryItemsShouldIncludeParameterItem:(id)item queryMode:(int64_t)mode;
+ (BOOL)_validateAuthValue:(id)value error:(id *)error;
+ (BOOL)_validateMethodValue:(id)value error:(id *)error;
+ (BOOL)_validateMinCompatibleAPIVersion:(id)version error:(id *)error;
+ (BOOL)_validateNameValue:(id)value error:(id *)error;
+ (BOOL)_validateParameterArray:(id)array error:(id *)error;
+ (BOOL)_validateParameterItem:(id)item error:(id *)error;
+ (BOOL)_validateQueryMode:(id)mode error:(id *)error;
+ (BOOL)_validateRootKey:(id)key value:(id)value error:(id *)error;
+ (BOOL)_validateURLValue:(id)value error:(id *)error;
+ (BOOL)validateDefinition:(id)definition error:(id *)error;
+ (BOOL)validateName:(id)name error:(id *)error;
+ (id)_percentEncodedQueryStringFromQueryItems:(id)items additionalEncodableCharacters:(id)characters;
+ (id)_queryItemsFromParametersArray:(id)array bindings:(id)bindings queryMode:(int64_t)mode error:(id *)error;
+ (id)_valueForParameterItem:(id)item bindings:(id)bindings error:(id *)error;
+ (id)schemaWithDefinition:(id)definition authenticationInformation:(id)information error:(id *)error;
- (BOOL)_addHTTPBodyToRequest:(id)request bindings:(id)bindings queryMode:(int64_t)mode error:(id *)error;
- (BOOL)_applyAuthToRequest:(id)request credential:(id)credential error:(id *)error;
- (BOOL)_applyHeadersToRequest:(id)request bindings:(id)bindings queryMode:(int64_t)mode error:(id *)error;
- (BOOL)isEnabled;
- (HDFHIREndpointSchema)init;
- (HDFHIREndpointSchema)initWithDefinition:(id)definition authenticationInformation:(id)information;
- (NSArray)bodyParameters;
- (NSArray)headerParameters;
- (NSArray)queryParameters;
- (NSString)method;
- (NSString)name;
- (NSURL)baseURL;
- (id)_URLWithBindings:(id)bindings queryMode:(int64_t)mode error:(id *)error;
- (id)_bindingsWithCredential:(id)credential;
- (id)_createRequestWithCredential:(id)credential bindings:(id)bindings orFullURL:(id)l queryMode:(int64_t)mode error:(id *)error;
- (id)currentScopeStringWithError:(id *)error;
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

- (HDFHIREndpointSchema)initWithDefinition:(id)definition authenticationInformation:(id)information
{
  definitionCopy = definition;
  informationCopy = information;
  v14.receiver = self;
  v14.super_class = HDFHIREndpointSchema;
  v8 = [(HDFHIREndpointSchema *)&v14 init];
  if (v8)
  {
    v9 = [definitionCopy copy];
    definition = v8->_definition;
    v8->_definition = v9;

    v11 = [informationCopy copy];
    authenticationInformation = v8->_authenticationInformation;
    v8->_authenticationInformation = v11;
  }

  return v8;
}

+ (id)schemaWithDefinition:(id)definition authenticationInformation:(id)information error:(id *)error
{
  definitionCopy = definition;
  informationCopy = information;
  if (objc_opt_class() == self)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"HDFHIREndpointSchema.m" lineNumber:84 description:{@"Attempting to instantiate abstract class: %@", self}];
  }

  if ([self validateDefinition:definitionCopy error:error])
  {
    v12 = [[self alloc] initWithDefinition:definitionCopy authenticationInformation:informationCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_createRequestWithCredential:(id)credential bindings:(id)bindings orFullURL:(id)l queryMode:(int64_t)mode error:(id *)error
{
  credentialCopy = credential;
  bindingsCopy = bindings;
  lCopy = l;
  if (![(HDFHIREndpointSchema *)self isEnabled])
  {
    name = [(HDFHIREndpointSchema *)self name];
    [NSError hk_assignError:error code:3 format:@"Endpoint %@ not enabled", name];
    v19 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v15 = &__NSDictionary0__struct;
  if (bindingsCopy)
  {
    v15 = bindingsCopy;
  }

  v16 = v15;

  v17 = [(HDFHIREndpointSchema *)self _bindingsWithCredential:credentialCopy];
  bindingsCopy = [v16 hk_dictionaryByAddingEntriesFromDictionary:v17];

  if (lCopy)
  {
    name = lCopy;
    goto LABEL_8;
  }

  name = [(HDFHIREndpointSchema *)self _URLWithBindings:bindingsCopy queryMode:mode error:error];
  if (name)
  {
LABEL_8:
    v20 = [[NSMutableURLRequest alloc] initWithURL:name];
    [v20 setAttribution:1];
    method = [(HDFHIREndpointSchema *)self method];
    [v20 setHTTPMethod:method];

    if ([(HDFHIREndpointSchema *)self _applyAuthToRequest:v20 credential:credentialCopy error:error]&& [(HDFHIREndpointSchema *)self _applyHeadersToRequest:v20 bindings:bindingsCopy queryMode:mode error:error]&& [(HDFHIREndpointSchema *)self _addHTTPBodyToRequest:v20 bindings:bindingsCopy queryMode:mode error:error])
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

- (BOOL)_applyAuthToRequest:(id)request credential:(id)credential error:(id *)error
{
  requestCopy = request;
  credentialCopy = credential;
  authType = [(HDFHIREndpointSchema *)self authType];
  switch(authType)
  {
    case 0:
      name = [(HDFHIREndpointSchema *)self name];
      v25 = name;
      v23 = @"Encountered unexpected auth type for endpoint %@";
      goto LABEL_15;
    case 2:
      if (credentialCopy)
      {
        name = [credentialCopy accessToken];
        if (name)
        {
          v22 = [[NSString alloc] initWithFormat:@"Bearer %@", name];
          [requestCopy setValue:v22 forHTTPHeaderField:@"Authorization"];

          v21 = 1;
LABEL_17:

          goto LABEL_18;
        }

        [NSError hk_assignError:error code:3 format:@"Credential %@ does not have an access token", credentialCopy];
LABEL_16:
        v21 = 0;
        goto LABEL_17;
      }

      name = [(HDFHIREndpointSchema *)self name];
      v25 = name;
      v23 = @"Endpoint %@ requires a credential for a Bearer auth request";
LABEL_15:
      [NSError hk_assignError:error code:3 format:v23, v25];
      goto LABEL_16;
    case 1:
      name = self->_authenticationInformation;
      clientID = [(HKFHIRServerAuthenticationInformation *)name clientID];
      if (clientID && (v13 = clientID, [(HKFHIRServerAuthenticationInformation *)name clientSecret], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14))
      {
        clientID2 = [(HKFHIRServerAuthenticationInformation *)name clientID];
        clientSecret = [(HKFHIRServerAuthenticationInformation *)name clientSecret];
        name2 = [NSString stringWithFormat:@"%@:%@", clientID2, clientSecret];

        v18 = [name2 dataUsingEncoding:4];
        v19 = [v18 base64EncodedStringWithOptions:0];
        v20 = [NSString stringWithFormat:@"Basic %@", v19];
        [requestCopy setValue:v20 forHTTPHeaderField:@"Authorization"];

        v21 = 1;
      }

      else
      {
        name2 = [(HDFHIREndpointSchema *)self name];
        [NSError hk_assignError:error code:3 format:@"Endpoint %@ requires clientID and clientSecret for a Basic auth request", name2];
        v21 = 0;
      }

      goto LABEL_17;
  }

  v21 = 1;
LABEL_18:

  return v21;
}

- (BOOL)_applyHeadersToRequest:(id)request bindings:(id)bindings queryMode:(int64_t)mode error:(id *)error
{
  requestCopy = request;
  bindingsCopy = bindings;
  headerParameters = [(HDFHIREndpointSchema *)self headerParameters];
  if (headerParameters)
  {
    v13 = [objc_opt_class() _queryItemsFromParametersArray:headerParameters bindings:bindingsCopy queryMode:mode error:error];
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
          value = [v18 value];
          name = [v18 name];
          [requestCopy addValue:value forHTTPHeaderField:name];
        }

        v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }
  }

  return 1;
}

- (BOOL)_addHTTPBodyToRequest:(id)request bindings:(id)bindings queryMode:(int64_t)mode error:(id *)error
{
  requestCopy = request;
  bindingsCopy = bindings;
  bodyParameters = [(HDFHIREndpointSchema *)self bodyParameters];
  if (bodyParameters)
  {
    v13 = [objc_opt_class() _queryItemsFromParametersArray:bodyParameters bindings:bindingsCopy queryMode:mode error:error];
    if (v13)
    {
      v14 = [objc_opt_class() _percentEncodedQueryStringFromQueryItems:v13 additionalEncodableCharacters:@"+/"];
      v15 = [v14 dataUsingEncoding:4];
      v16 = v15 != 0;
      if (v15)
      {
        [requestCopy setHTTPBody:v15];
      }

      else
      {
        [NSError hk_assignError:error code:100 format:@"Unable to serialize HTTP body string: %@", v14];
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

- (id)_bindingsWithCredential:(id)credential
{
  credentialCopy = credential;
  v4 = objc_alloc_init(NSMutableDictionary);
  if (credentialCopy)
  {
    patientID = [credentialCopy patientID];
    [v4 setObject:patientID forKeyedSubscript:HKFHIREndpointSchemaVariablePatient];
  }

  return v4;
}

- (id)_URLWithBindings:(id)bindings queryMode:(int64_t)mode error:(id *)error
{
  bindingsCopy = bindings;
  baseURL = [(HDFHIREndpointSchema *)self baseURL];
  if (baseURL)
  {
    queryParameters = [(HDFHIREndpointSchema *)self queryParameters];
    if (queryParameters)
    {
      v11 = [objc_opt_class() _queryItemsFromParametersArray:queryParameters bindings:bindingsCopy queryMode:mode error:error];
      if (v11)
      {
        v12 = [objc_opt_class() _percentEncodedQueryStringFromQueryItems:v11 additionalEncodableCharacters:@"+/"];
        v13 = [NSString alloc];
        absoluteString = [baseURL absoluteString];
        v15 = [v13 initWithFormat:@"%@?%@", absoluteString, v12];

        v16 = [[NSURL alloc] initWithString:v15];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          [NSError hk_assignError:error code:100 format:@"Unable to create URL from URL string: %@", v15];
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = baseURL;
    }
  }

  else
  {
    queryParameters = [(HDFHIREndpointSchema *)self name];
    [NSError hk_assignError:error code:100 format:@"Unable to determine base URL for endpoint %@", queryParameters];
    v17 = 0;
  }

  return v17;
}

+ (BOOL)validateDefinition:(id)definition error:(id *)error
{
  definitionCopy = definition;
  objc_opt_class();
  v7 = HKSafeObject();
  v8 = v7;
  if (v7)
  {
    allKeys = [v7 allKeys];
    _requiredRootKeys = [self _requiredRootKeys];
    if ([allKeys hk_containsObjectsInArray:_requiredRootKeys])
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v11 = allKeys;
      v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v25;
        v22 = allKeys;
        v23 = definitionCopy;
        v21 = _requiredRootKeys;
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
            v19 = [self _validateRootKey:v17 value:v18 error:error];

            if (!v19)
            {
              LOBYTE(v17) = 0;
LABEL_17:
              allKeys = v22;
              definitionCopy = v23;
              _requiredRootKeys = v21;
              goto LABEL_18;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
          LOBYTE(v17) = 1;
          allKeys = v22;
          definitionCopy = v23;
          _requiredRootKeys = v21;
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
      [NSError hk_assignError:error code:3 format:@"Endpoint schema definition missing required key in %@. Got: %@", _requiredRootKeys, allKeys];
      LOBYTE(v17) = 0;
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  return v17;
}

+ (BOOL)_validateRootKey:(id)key value:(id)value error:(id *)error
{
  keyCopy = key;
  valueCopy = value;
  if ([keyCopy isEqualToString:@"auth"])
  {
    v10 = [self _validateAuthValue:valueCopy error:error];
    goto LABEL_8;
  }

  if (![keyCopy isEqualToString:@"enabled"])
  {
    if (![keyCopy isEqualToString:@"form"] && !objc_msgSend(keyCopy, "isEqualToString:", @"headers"))
    {
      if ([keyCopy isEqualToString:@"method"])
      {
        v10 = [self _validateMethodValue:valueCopy error:error];
        goto LABEL_8;
      }

      if ([keyCopy isEqualToString:@"name"])
      {
        v10 = [self _validateNameValue:valueCopy error:error];
        goto LABEL_8;
      }

      if (![keyCopy isEqualToString:@"query"])
      {
        if ([keyCopy isEqualToString:@"url"])
        {
          v10 = [self _validateURLValue:valueCopy error:error];
        }

        else
        {
          if (![keyCopy isEqualToString:@"minCompatibleApiVersion"])
          {
            v12 = 1;
            goto LABEL_9;
          }

          v10 = [self _validateMinCompatibleAPIVersion:valueCopy error:error];
        }

        goto LABEL_8;
      }
    }

    v10 = [self _validateParameterArray:valueCopy error:error];
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

+ (BOOL)_validateMinCompatibleAPIVersion:(id)version error:(id *)error
{
  versionCopy = version;
  objc_opt_class();
  v6 = HKSafeObject();

  if (!v6)
  {
    goto LABEL_5;
  }

  integerValue = [v6 integerValue];
  if (integerValue <= 0)
  {
    [NSError hk_assignError:error code:3 format:@"Invalid minCompatibleApiVersion: %ld", integerValue];
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:

  return v8;
}

+ (BOOL)_validateAuthValue:(id)value error:(id *)error
{
  valueCopy = value;
  objc_opt_class();
  v6 = HKSafeObject();

  if (!v6)
  {
    goto LABEL_5;
  }

  if (!sub_1000062D4(v6))
  {
    [NSError hk_assignError:error code:3 format:@"Invalid auth value: %@", v6];
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:

  return v7;
}

+ (BOOL)_validateMethodValue:(id)value error:(id *)error
{
  valueCopy = value;
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
      [NSError hk_assignError:error code:3 format:@"Invalid method value: %@", v6];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)_validateNameValue:(id)value error:(id *)error
{
  valueCopy = value;
  objc_opt_class();
  v7 = HKSafeObject();

  if (v7)
  {
    v8 = [self validateName:v7 error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)_validateParameterArray:(id)array error:(id *)error
{
  arrayCopy = array;
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

          if (![self _validateParameterItem:*(*(&v16 + 1) + 8 * i) error:{error, v16}])
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

+ (BOOL)_validateParameterItem:(id)item error:(id *)error
{
  itemCopy = item;
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
        v13 = !v18 || [self _validateQueryMode:v18 error:error];

        goto LABEL_15;
      }

      [NSError hk_assignError:error code:3 format:@"Parameter array item must have exactly one of 'literal', 'variable': %@", v7];
    }

    v13 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

+ (BOOL)_validateQueryMode:(id)mode error:(id *)error
{
  modeCopy = mode;
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

+ (BOOL)_validateURLValue:(id)value error:(id *)error
{
  valueCopy = value;
  objc_opt_class();
  v6 = HKSafeObject();

  if (v6)
  {
    v7 = [[NSURL alloc] initWithString:v6];
    v8 = v7 != 0;
    if (!v7)
    {
      [NSError hk_assignError:error code:3 format:@"Invalid URL specified: %@", v6];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_percentEncodedQueryStringFromQueryItems:(id)items additionalEncodableCharacters:(id)characters
{
  charactersCopy = &stru_100019270;
  if (characters)
  {
    charactersCopy = characters;
  }

  v6 = charactersCopy;
  itemsCopy = items;
  v8 = objc_alloc_init(NSURLComponents);
  [v8 setQueryItems:itemsCopy];

  v9 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  v10 = [v9 mutableCopy];

  [v10 removeCharactersInString:v6];
  query = [v8 query];
  v12 = [query stringByAddingPercentEncodingWithAllowedCharacters:v10];

  return v12;
}

+ (id)_queryItemsFromParametersArray:(id)array bindings:(id)bindings queryMode:(int64_t)mode error:(id *)error
{
  errorCopy = error;
  arrayCopy = array;
  bindingsCopy = bindings;
  v10 = objc_alloc_init(NSMutableArray);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = arrayCopy;
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
        if ([self _queryItemsShouldIncludeParameterItem:v16 queryMode:{mode, errorCopy}])
        {
          v17 = [v16 objectForKeyedSubscript:@"param"];
          v18 = [self _valueForParameterItem:v16 bindings:bindingsCopy error:errorCopy];
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

+ (id)_valueForParameterItem:(id)item bindings:(id)bindings error:(id *)error
{
  itemCopy = item;
  bindingsCopy = bindings;
  v9 = [itemCopy objectForKeyedSubscript:@"literal"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [itemCopy objectForKeyedSubscript:@"variable"];
    v11 = [bindingsCopy objectForKeyedSubscript:v12];
    if (!v11)
    {
      [NSError hk_assignError:error code:3 format:@"Unbound variable: %@", v12];
    }
  }

  return v11;
}

+ (BOOL)_queryItemsShouldIncludeParameterItem:(id)item queryMode:(int64_t)mode
{
  if (!mode)
  {
    return 1;
  }

  v4 = [item objectForKeyedSubscript:@"mode"];
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
  definition = [(HDFHIREndpointSchema *)self definition];
  v3 = [definition objectForKey:@"auth"];

  v4 = sub_1000062D4(v3);
  return v4;
}

- (NSURL)baseURL
{
  definition = [(HDFHIREndpointSchema *)self definition];
  v3 = [definition objectForKey:@"url"];

  v4 = [NSURL URLWithString:v3];

  return v4;
}

- (NSArray)bodyParameters
{
  definition = [(HDFHIREndpointSchema *)self definition];
  v3 = [definition objectForKey:@"form"];

  return v3;
}

- (BOOL)isEnabled
{
  definition = [(HDFHIREndpointSchema *)self definition];
  v3 = [definition objectForKey:@"enabled"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (int64_t)minCompatibleAPIVersion
{
  definition = [(HDFHIREndpointSchema *)self definition];
  v3 = [definition objectForKey:@"minCompatibleApiVersion"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (NSArray)headerParameters
{
  definition = [(HDFHIREndpointSchema *)self definition];
  v3 = [definition objectForKey:@"headers"];

  return v3;
}

- (NSString)method
{
  definition = [(HDFHIREndpointSchema *)self definition];
  v3 = [definition objectForKey:@"method"];

  return v3;
}

- (NSString)name
{
  definition = [(HDFHIREndpointSchema *)self definition];
  v3 = [definition objectForKey:@"name"];

  return v3;
}

- (NSArray)queryParameters
{
  definition = [(HDFHIREndpointSchema *)self definition];
  v3 = [definition objectForKey:@"query"];

  return v3;
}

- (id)currentScopeStringWithError:(id *)error
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
            [NSError hk_assignError:error code:100 format:@"Scope parameter item did not have a literal key-value pair %@", v8];
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

  [NSError hk_assignError:error code:118 format:@"Unable to find scope query parameter"];
  v12 = 0;
LABEL_14:

  return v12;
}

+ (BOOL)validateName:(id)name error:(id *)error
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end