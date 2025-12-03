@interface HDFHIRAccessTokenTask
- (HDFHIRAccessTokenTask)initWithTokenSession:(id)session FHIRSession:(id)rSession completion:(id)completion;
- (id)errorForRequest:(id)request response:(id)response data:(id)data;
- (void)createURLRequestWithCompletion:(id)completion;
- (void)handleError:(id)error endState:(id)state;
- (void)handleResponse:(id)response JSONData:(id)data endState:(id)state;
@end

@implementation HDFHIRAccessTokenTask

- (HDFHIRAccessTokenTask)initWithTokenSession:(id)session FHIRSession:(id)rSession completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = HDFHIRAccessTokenTask;
  v10 = [(HDFHIRRequestTask *)&v16 initWithSession:rSession];
  if (v10)
  {
    v11 = [sessionCopy copy];
    tokenSession = v10->_tokenSession;
    v10->_tokenSession = v11;

    v13 = [completionCopy copy];
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v13;
  }

  return v10;
}

- (void)createURLRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  session = [(HDFHIRRequestTask *)self session];
  specification = [session specification];

  v7 = [specification authorizationSchemaForType:1];
  if (v7)
  {
    v31[0] = HKFHIREndpointSchemaVariableCode;
    v28 = completionCopy;
    code = [(HKOAuth2TokenSession *)self->_tokenSession code];
    v32[0] = code;
    v31[1] = HKFHIREndpointSchemaVariableState;
    state = [(HKOAuth2TokenSession *)self->_tokenSession state];
    uUIDString = [state UUIDString];
    v32[1] = uUIDString;
    v31[2] = HKFHIREndpointSchemaVariablePKCEVerifier;
    pkceVerifier = [(HKOAuth2TokenSession *)self->_tokenSession pkceVerifier];
    v9 = pkceVerifier;
    if (pkceVerifier)
    {
      v10 = pkceVerifier;
    }

    else
    {
      v10 = &stru_100019270;
    }

    v32[2] = v10;
    v31[3] = HKFHIREndpointSchemaVariableClientID;
    connection = [specification connection];
    authentication = [connection authentication];
    clientID = [authentication clientID];
    v13 = clientID;
    if (clientID)
    {
      v14 = clientID;
    }

    else
    {
      v14 = &stru_100019270;
    }

    v32[3] = v14;
    v31[4] = HKFHIREndpointSchemaVariableClientSecret;
    connection2 = [specification connection];
    authentication2 = [connection2 authentication];
    clientSecret = [authentication2 clientSecret];
    v18 = clientSecret;
    if (clientSecret)
    {
      v19 = clientSecret;
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
    v23 = [NSError hk_error:100 format:@"Unable to fetch access token schema from specification %@", specification];
    (*(completionCopy + 2))(completionCopy, 0, v23);
  }
}

- (void)handleResponse:(id)response JSONData:(id)data endState:(id)state
{
  if (data)
  {
    v22 = 0;
    stateCopy = state;
    v9 = [NSJSONSerialization JSONObjectWithData:data options:0 error:&v22];
    v10 = v22;
    if (v9)
    {
      objc_opt_class();
      v21[1] = v10;
      v11 = HKSafeObject();
      v12 = v10;

      if (v11)
      {
        session = [(HDFHIRRequestTask *)self session];
        specification = [session specification];
        connection = [specification connection];
        gateway = [connection gateway];
        baseURL = [gateway baseURL];

        v21[0] = v12;
        v18 = [HDFHIRAuthResponse authResponseFromServerResponseDictionary:v11 baseURL:baseURL previousCredential:0 error:v21];
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
    stateCopy2 = state;
    v10 = [NSError hk_error:3 description:@"nil JSON data"];
    v18 = 0;
  }

  completionHandler = [(HDFHIRAccessTokenTask *)self completionHandler];
  (completionHandler)[2](completionHandler, v18, state, v10);
}

- (void)handleError:(id)error endState:(id)state
{
  errorCopy = error;
  stateCopy = state;
  if (!errorCopy)
  {
    sub_10000C748(a2, self);
  }

  v12 = errorCopy;
  v9 = [NSArray arrayWithObjects:&v12 count:1];
  v10 = [NSError hrs_accumulatedErrorWithAuthorizationFailures:v9 resourceFetchFailures:0 otherErrors:0];

  completionHandler = [(HDFHIRAccessTokenTask *)self completionHandler];
  (completionHandler)[2](completionHandler, 0, stateCopy, v10);
}

- (id)errorForRequest:(id)request response:(id)response data:(id)data
{
  dataCopy = data;
  responseCopy = response;
  requestCopy = request;
  session = [(HDFHIRRequestTask *)self session];
  specification = [session specification];
  v13 = [specification errorForAuthorizationRequest:requestCopy response:responseCopy data:dataCopy];

  return v13;
}

@end