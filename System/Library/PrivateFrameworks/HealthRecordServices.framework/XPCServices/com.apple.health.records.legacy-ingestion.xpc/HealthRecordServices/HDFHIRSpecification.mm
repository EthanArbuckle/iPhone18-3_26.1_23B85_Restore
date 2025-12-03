@interface HDFHIRSpecification
+ (HDFHIRSpecification)specificationWithConnectionInformation:(id)information error:(id *)error;
+ (id)endpointSchemasWithConnectionInformation:(id)information;
- (BOOL)shouldRetryFailedResourceTaskWithError:(id)error;
- (HDFHIRSpecification)init;
- (HDFHIRSpecification)initWithConnectionInformation:(id)information;
- (id)authorizationSchemaForType:(int64_t)type;
- (id)errorForAuthorizationRequest:(id)request response:(id)response data:(id)data;
- (id)errorForResourceRequest:(id)request response:(id)response data:(id)data;
- (void)_parseEndpointSchemas;
@end

@implementation HDFHIRSpecification

+ (HDFHIRSpecification)specificationWithConnectionInformation:(id)information error:(id *)error
{
  informationCopy = information;
  gateway = [informationCopy gateway];
  type = [gateway type];

  if (type == 1)
  {
    v9 = [[self alloc] initWithConnectionInformation:informationCopy];
  }

  else
  {
    gateway2 = [informationCopy gateway];
    [NSError hk_assignError:error code:3 format:@"Attempting to instantiate FHIR specification for non-FHIR gateway: %@", gateway2];

    v9 = 0;
  }

  return v9;
}

- (HDFHIRSpecification)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDFHIRSpecification)initWithConnectionInformation:(id)information
{
  informationCopy = information;
  gateway = [informationCopy gateway];
  type = [gateway type];

  if (type != 1)
  {
    sub_10000B404(a2, self);
  }

  v12.receiver = self;
  v12.super_class = HDFHIRSpecification;
  v8 = [(HDFHIRSpecification *)&v12 init];
  if (v8)
  {
    v9 = [informationCopy copy];
    connection = v8->_connection;
    v8->_connection = v9;

    [(HDFHIRSpecification *)v8 _parseEndpointSchemas];
  }

  return v8;
}

+ (id)endpointSchemasWithConnectionInformation:(id)information
{
  informationCopy = information;
  v30 = objc_alloc_init(NSMutableDictionary);
  v29 = objc_alloc_init(NSMutableArray);
  authentication = [informationCopy authentication];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v28 = informationCopy;
  gateway = [informationCopy gateway];
  resourceSchemas = [gateway resourceSchemas];

  v7 = [resourceSchemas countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    do
    {
      v10 = 0;
      do
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(resourceSchemas);
        }

        definition = [*(*(&v37 + 1) + 8 * v10) definition];
        v36 = 0;
        v12 = [(HDFHIREndpointSchema *)HDFHIRResourceSchema schemaWithDefinition:definition authenticationInformation:authentication error:&v36];
        v13 = v36;

        if (v12)
        {
          [v29 addObject:v12];
        }

        else
        {
          _HKInitializeLogging();
          v14 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v43 = v13;
            _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Error instantiating resource schema: %@", buf, 0xCu);
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [resourceSchemas countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v8);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  gateway2 = [v28 gateway];
  authSchemas = [gateway2 authSchemas];

  v17 = [authSchemas countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      v20 = 0;
      do
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(authSchemas);
        }

        definition2 = [*(*(&v32 + 1) + 8 * v20) definition];
        v31 = 0;
        v22 = [(HDFHIREndpointSchema *)HDFHIRAuthorizationSchema schemaWithDefinition:definition2 authenticationInformation:authentication error:&v31];
        v23 = v31;

        if (v22)
        {
          v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v22 authorizationEndpointType]);
          [v30 setObject:v22 forKeyedSubscript:v24];
        }

        else
        {
          _HKInitializeLogging();
          v25 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v43 = v23;
            _os_log_fault_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "Error instantiating auth schema: %@", buf, 0xCu);
          }
        }

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [authSchemas countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v18);
  }

  v26 = objc_alloc_init(HDFHIREndpointSchemaParseResult);
  [(HDFHIREndpointSchemaParseResult *)v26 setAuthorizationSchemas:v30];
  [(HDFHIREndpointSchemaParseResult *)v26 setResourceSchemas:v29];

  return v26;
}

- (void)_parseEndpointSchemas
{
  v3 = [objc_opt_class() endpointSchemasWithConnectionInformation:self->_connection];
  v11 = v3;
  if (v3)
  {
    authorizationSchemas = [v3 authorizationSchemas];
    v5 = [authorizationSchemas copy];
    authorizationSchemas = self->_authorizationSchemas;
    self->_authorizationSchemas = v5;

    resourceSchemas = [v11 resourceSchemas];
    v8 = [resourceSchemas copy];
    resourceSchemas = self->_resourceSchemas;
    self->_resourceSchemas = v8;
  }

  else
  {
    v10 = self->_authorizationSchemas;
    self->_authorizationSchemas = &__NSDictionary0__struct;

    resourceSchemas = self->_resourceSchemas;
    self->_resourceSchemas = &__NSArray0__struct;
  }
}

- (id)authorizationSchemaForType:(int64_t)type
{
  authorizationSchemas = self->_authorizationSchemas;
  v4 = [NSNumber numberWithInteger:type];
  v5 = [(NSDictionary *)authorizationSchemas objectForKeyedSubscript:v4];

  return v5;
}

- (BOOL)shouldRetryFailedResourceTaskWithError:(id)error
{
  errorCopy = error;
  if ([errorCopy hrs_hasAuthorizationFailure])
  {
    if ([errorCopy hk_OAuth2_isOAuth2Error])
    {
      LOBYTE(self) = [(HDFHIRSpecification *)self shouldRefreshTokenForCredentialedTaskError:errorCopy];
    }

    else
    {
      hrs_accumulatedAuthorizationFailures = [errorCopy hrs_accumulatedAuthorizationFailures];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100001DF8;
      v8[3] = &unk_100018450;
      v8[4] = self;
      v6 = [hrs_accumulatedAuthorizationFailures hk_filter:v8];

      LOBYTE(self) = [v6 count] != 0;
    }
  }

  else
  {
    LODWORD(self) = [errorCopy hrs_hasResourceFetchErrorsIndicatingRateLimitation] ^ 1;
  }

  return self;
}

- (id)errorForAuthorizationRequest:(id)request response:(id)response data:(id)data
{
  requestCopy = request;
  responseCopy = response;
  v9 = [NSError hk_OAuth2_errorForRequest:requestCopy response:responseCopy data:data];
  if (!v9)
  {
    v9 = [NSError hk_HTTPErrorRepresentingResponse:responseCopy request:requestCopy];
  }

  return v9;
}

- (id)errorForResourceRequest:(id)request response:(id)response data:(id)data
{
  requestCopy = request;
  responseCopy = response;
  v10 = [NSError hk_OAuth2_errorForRequest:requestCopy response:responseCopy data:data];
  if (v10 && [(HDFHIRSpecification *)self shouldRetryFailedResourceTaskWithError:v10])
  {
    v11 = v10;
  }

  else
  {
    v11 = [NSError hk_HTTPErrorRepresentingResponse:responseCopy request:requestCopy];
  }

  v12 = v11;

  return v12;
}

@end