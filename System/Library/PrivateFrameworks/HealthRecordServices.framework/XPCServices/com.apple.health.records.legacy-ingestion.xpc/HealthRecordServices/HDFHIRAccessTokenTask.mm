@interface HDFHIRAccessTokenTask
- (HDFHIRAccessTokenTask)initWithTokenSession:(id)a3 FHIRSession:(id)a4 completion:(id)a5;
- (id)errorForRequest:(id)a3 response:(id)a4 data:(id)a5;
- (void)createURLRequestWithCompletion:(id)a3;
- (void)handleError:(id)a3 endState:(id)a4;
- (void)handleResponse:(id)a3 JSONData:(id)a4 endState:(id)a5;
@end

@implementation HDFHIRAccessTokenTask

- (HDFHIRAccessTokenTask)initWithTokenSession:(id)a3 FHIRSession:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = HDFHIRAccessTokenTask;
  v10 = [(HDFHIRRequestTask *)&v16 initWithSession:a4];
  if (v10)
  {
    v11 = [v8 copy];
    tokenSession = v10->_tokenSession;
    v10->_tokenSession = v11;

    v13 = [v9 copy];
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v13;
  }

  return v10;
}

- (void)createURLRequestWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDFHIRRequestTask *)self session];
  v6 = [v5 specification];

  v7 = [v6 authorizationSchemaForType:1];
  if (v7)
  {
    v31[0] = HKFHIREndpointSchemaVariableCode;
    v28 = v4;
    v27 = [(HKOAuth2TokenSession *)self->_tokenSession code];
    v32[0] = v27;
    v31[1] = HKFHIREndpointSchemaVariableState;
    v26 = [(HKOAuth2TokenSession *)self->_tokenSession state];
    v25 = [v26 UUIDString];
    v32[1] = v25;
    v31[2] = HKFHIREndpointSchemaVariablePKCEVerifier;
    v8 = [(HKOAuth2TokenSession *)self->_tokenSession pkceVerifier];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = &stru_100019270;
    }

    v32[2] = v10;
    v31[3] = HKFHIREndpointSchemaVariableClientID;
    v24 = [v6 connection];
    v11 = [v24 authentication];
    v12 = [v11 clientID];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &stru_100019270;
    }

    v32[3] = v14;
    v31[4] = HKFHIREndpointSchemaVariableClientSecret;
    v15 = [v6 connection];
    v16 = [v15 authentication];
    v17 = [v16 clientSecret];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = &stru_100019270;
    }

    v32[4] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:5];
    v30 = 0;
    v21 = [v7 createRequestWithBindings:v20 queryMode:0 error:&v30];
    v29 = v7;
    v22 = v30;

    (v28)[2](v28, v21, v22);
    v7 = v29;
  }

  else
  {
    v23 = [NSError hk_error:100 format:@"Unable to fetch access token schema from specification %@", v6];
    (*(v4 + 2))(v4, 0, v23);
  }
}

- (void)handleResponse:(id)a3 JSONData:(id)a4 endState:(id)a5
{
  if (a4)
  {
    v22 = 0;
    v8 = a5;
    v9 = [NSJSONSerialization JSONObjectWithData:a4 options:0 error:&v22];
    v10 = v22;
    if (v9)
    {
      objc_opt_class();
      v21[1] = v10;
      v11 = HKSafeObject();
      v12 = v10;

      if (v11)
      {
        v13 = [(HDFHIRRequestTask *)self session];
        v14 = [v13 specification];
        v15 = [v14 connection];
        v16 = [v15 gateway];
        v17 = [v16 baseURL];

        v21[0] = v12;
        v18 = [HDFHIRAuthResponse authResponseFromServerResponseDictionary:v11 baseURL:v17 previousCredential:0 error:v21];
        v10 = v21[0];
      }

      else
      {
        v18 = 0;
        v10 = v12;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v19 = a5;
    v10 = [NSError hk_error:3 description:@"nil JSON data"];
    v18 = 0;
  }

  v20 = [(HDFHIRAccessTokenTask *)self completionHandler];
  (v20)[2](v20, v18, a5, v10);
}

- (void)handleError:(id)a3 endState:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    sub_10000C748(a2, self);
  }

  v12 = v7;
  v9 = [NSArray arrayWithObjects:&v12 count:1];
  v10 = [NSError hrs_accumulatedErrorWithAuthorizationFailures:v9 resourceFetchFailures:0 otherErrors:0];

  v11 = [(HDFHIRAccessTokenTask *)self completionHandler];
  (v11)[2](v11, 0, v8, v10);
}

- (id)errorForRequest:(id)a3 response:(id)a4 data:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HDFHIRRequestTask *)self session];
  v12 = [v11 specification];
  v13 = [v12 errorForAuthorizationRequest:v10 response:v9 data:v8];

  return v13;
}

@end