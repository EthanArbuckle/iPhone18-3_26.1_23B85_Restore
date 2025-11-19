@interface HDFHIRSpecification
+ (HDFHIRSpecification)specificationWithConnectionInformation:(id)a3 error:(id *)a4;
+ (id)endpointSchemasWithConnectionInformation:(id)a3;
- (BOOL)shouldRetryFailedResourceTaskWithError:(id)a3;
- (HDFHIRSpecification)init;
- (HDFHIRSpecification)initWithConnectionInformation:(id)a3;
- (id)authorizationSchemaForType:(int64_t)a3;
- (id)errorForAuthorizationRequest:(id)a3 response:(id)a4 data:(id)a5;
- (id)errorForResourceRequest:(id)a3 response:(id)a4 data:(id)a5;
- (void)_parseEndpointSchemas;
@end

@implementation HDFHIRSpecification

+ (HDFHIRSpecification)specificationWithConnectionInformation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 gateway];
  v8 = [v7 type];

  if (v8 == 1)
  {
    v9 = [[a1 alloc] initWithConnectionInformation:v6];
  }

  else
  {
    v10 = [v6 gateway];
    [NSError hk_assignError:a4 code:3 format:@"Attempting to instantiate FHIR specification for non-FHIR gateway: %@", v10];

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

- (HDFHIRSpecification)initWithConnectionInformation:(id)a3
{
  v5 = a3;
  v6 = [v5 gateway];
  v7 = [v6 type];

  if (v7 != 1)
  {
    sub_10000B404(a2, self);
  }

  v12.receiver = self;
  v12.super_class = HDFHIRSpecification;
  v8 = [(HDFHIRSpecification *)&v12 init];
  if (v8)
  {
    v9 = [v5 copy];
    connection = v8->_connection;
    v8->_connection = v9;

    [(HDFHIRSpecification *)v8 _parseEndpointSchemas];
  }

  return v8;
}

+ (id)endpointSchemasWithConnectionInformation:(id)a3
{
  v3 = a3;
  v30 = objc_alloc_init(NSMutableDictionary);
  v29 = objc_alloc_init(NSMutableArray);
  v4 = [v3 authentication];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v28 = v3;
  v5 = [v3 gateway];
  v6 = [v5 resourceSchemas];

  v7 = [v6 countByEnumeratingWithState:&v37 objects:v44 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v37 + 1) + 8 * v10) definition];
        v36 = 0;
        v12 = [(HDFHIREndpointSchema *)HDFHIRResourceSchema schemaWithDefinition:v11 authenticationInformation:v4 error:&v36];
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
      v8 = [v6 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v8);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = [v28 gateway];
  v16 = [v15 authSchemas];

  v17 = [v16 countByEnumeratingWithState:&v32 objects:v41 count:16];
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
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v32 + 1) + 8 * v20) definition];
        v31 = 0;
        v22 = [(HDFHIREndpointSchema *)HDFHIRAuthorizationSchema schemaWithDefinition:v21 authenticationInformation:v4 error:&v31];
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
      v18 = [v16 countByEnumeratingWithState:&v32 objects:v41 count:16];
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
    v4 = [v3 authorizationSchemas];
    v5 = [v4 copy];
    authorizationSchemas = self->_authorizationSchemas;
    self->_authorizationSchemas = v5;

    v7 = [v11 resourceSchemas];
    v8 = [v7 copy];
    resourceSchemas = self->_resourceSchemas;
    self->_resourceSchemas = v8;
  }

  else
  {
    v10 = self->_authorizationSchemas;
    self->_authorizationSchemas = &__NSDictionary0__struct;

    v7 = self->_resourceSchemas;
    self->_resourceSchemas = &__NSArray0__struct;
  }
}

- (id)authorizationSchemaForType:(int64_t)a3
{
  authorizationSchemas = self->_authorizationSchemas;
  v4 = [NSNumber numberWithInteger:a3];
  v5 = [(NSDictionary *)authorizationSchemas objectForKeyedSubscript:v4];

  return v5;
}

- (BOOL)shouldRetryFailedResourceTaskWithError:(id)a3
{
  v4 = a3;
  if ([v4 hrs_hasAuthorizationFailure])
  {
    if ([v4 hk_OAuth2_isOAuth2Error])
    {
      LOBYTE(self) = [(HDFHIRSpecification *)self shouldRefreshTokenForCredentialedTaskError:v4];
    }

    else
    {
      v5 = [v4 hrs_accumulatedAuthorizationFailures];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100001DF8;
      v8[3] = &unk_100018450;
      v8[4] = self;
      v6 = [v5 hk_filter:v8];

      LOBYTE(self) = [v6 count] != 0;
    }
  }

  else
  {
    LODWORD(self) = [v4 hrs_hasResourceFetchErrorsIndicatingRateLimitation] ^ 1;
  }

  return self;
}

- (id)errorForAuthorizationRequest:(id)a3 response:(id)a4 data:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [NSError hk_OAuth2_errorForRequest:v7 response:v8 data:a5];
  if (!v9)
  {
    v9 = [NSError hk_HTTPErrorRepresentingResponse:v8 request:v7];
  }

  return v9;
}

- (id)errorForResourceRequest:(id)a3 response:(id)a4 data:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [NSError hk_OAuth2_errorForRequest:v8 response:v9 data:a5];
  if (v10 && [(HDFHIRSpecification *)self shouldRetryFailedResourceTaskWithError:v10])
  {
    v11 = v10;
  }

  else
  {
    v11 = [NSError hk_HTTPErrorRepresentingResponse:v9 request:v8];
  }

  v12 = v11;

  return v12;
}

@end