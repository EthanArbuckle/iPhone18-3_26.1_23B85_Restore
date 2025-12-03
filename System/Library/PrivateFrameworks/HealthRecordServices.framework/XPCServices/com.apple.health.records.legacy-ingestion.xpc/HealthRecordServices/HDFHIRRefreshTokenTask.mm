@interface HDFHIRRefreshTokenTask
- (HDFHIRRefreshTokenTask)initWithSession:(id)session credential:(id)credential completion:(id)completion;
- (id)errorForRequest:(id)request response:(id)response data:(id)data;
- (void)createURLRequestWithCompletion:(id)completion;
- (void)handleError:(id)error endState:(id)state;
- (void)handleResponse:(id)response JSONData:(id)data endState:(id)state;
@end

@implementation HDFHIRRefreshTokenTask

- (HDFHIRRefreshTokenTask)initWithSession:(id)session credential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = HDFHIRRefreshTokenTask;
  v10 = [(HDFHIRRequestTask *)&v16 initWithSession:session];
  if (v10)
  {
    v11 = [credentialCopy copy];
    credential = v10->_credential;
    v10->_credential = v11;

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

  v7 = [specification authorizationSchemaForType:3];
  connection = [specification connection];
  authentication = [connection authentication];
  clientID = [authentication clientID];

  connection2 = [specification connection];
  authentication2 = [connection2 authentication];
  clientSecret = [authentication2 clientSecret];

  if (clientID && clientSecret)
  {
    refreshToken = [(HKFHIRCredential *)self->_credential refreshToken];
    v15 = refreshToken;
    if (refreshToken)
    {
      v29[0] = HKFHIREndpointSchemaVariableRefreshToken;
      v29[1] = HKFHIREndpointSchemaVariableClientID;
      v30[0] = refreshToken;
      v30[1] = clientID;
      v29[2] = HKFHIREndpointSchemaVariableClientSecret;
      v30[2] = clientSecret;
      v16 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];
      v26 = 0;
      v17 = [v7 createRequestWithBindings:v16 queryMode:0 error:&v26];
      v18 = v26;
    }

    else
    {
      credential = [(HDFHIRRefreshTokenTask *)self credential];
      v23 = [NSString stringWithFormat:@"no refresh token for credential %@", credential];

      v24 = HRSPrivateErrorDomain;
      v27 = NSLocalizedDescriptionKey;
      v28 = v23;
      v25 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v18 = [NSError errorWithDomain:v24 code:1 userInfo:v25];

      v17 = 0;
      v16 = 0;
    }

    completionCopy[2](completionCopy, v17, v18);
  }

  else
  {
    v19 = HKStringFromBool();
    v20 = HKStringFromBool();
    v21 = [NSError hk_error:3 format:@"Need both clientID and clientSecret, have id: %@, secret: %@", v19, v20];
    completionCopy[2](completionCopy, 0, v21);
  }
}

- (void)handleResponse:(id)response JSONData:(id)data endState:(id)state
{
  dataCopy = data;
  stateCopy = state;
  credential = [(HDFHIRRefreshTokenTask *)self credential];
  if (![dataCopy length])
  {
    v11 = [NSError hk_error:3 description:@"no JSON data"];
    v20 = 0;
    goto LABEL_17;
  }

  v42 = 0;
  v10 = [NSJSONSerialization JSONObjectWithData:dataCopy options:0 error:&v42];
  v11 = v42;
  if (v10)
  {
    objc_opt_class();
    v41[1] = v11;
    v12 = HKSafeObject();
    v13 = v11;

    if (v12)
    {
      v37 = stateCopy;
      v39 = v10;
      session = [(HDFHIRRequestTask *)self session];
      [session specification];
      v16 = v15 = v12;
      connection = [v16 connection];
      gateway = [connection gateway];
      baseURL = [gateway baseURL];

      v40 = v15;
      v41[0] = v13;
      v38 = baseURL;
      v20 = [HDFHIRAuthResponse authResponseFromServerResponseDictionary:v15 baseURL:baseURL previousCredential:credential error:v41];
      v11 = v41[0];

      patientID = [v20 patientID];
      patientID2 = [credential patientID];
      v23 = patientID2;
      if (patientID != patientID2)
      {
        patientID3 = [credential patientID];
        if (patientID3)
        {
          v25 = patientID3;
          patientID4 = [v20 patientID];
          [credential patientID];
          v27 = v36 = credential;
          v35 = [patientID4 isEqualToString:v27];

          credential = v36;
          v10 = v39;
          stateCopy = v37;
          if (v35)
          {
            goto LABEL_15;
          }
        }

        else
        {

          v10 = v39;
          stateCopy = v37;
        }

        _HKInitializeLogging();
        v28 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
        {
          v29 = credential;
          v30 = v28;
          v31 = objc_opt_class();
          *buf = 138543362;
          v44 = v31;
          v32 = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ received different patient ID, ignoring and updating patient ID", buf, 0xCu);

          credential = v29;
        }

        goto LABEL_15;
      }

      v10 = v39;
      stateCopy = v37;
LABEL_15:

      goto LABEL_16;
    }

    v20 = 0;
    v11 = v13;
  }

  else
  {
    v20 = 0;
  }

LABEL_16:

LABEL_17:
  if (v11)
  {
    [(HDFHIRRefreshTokenTask *)self handleError:v11 endState:stateCopy];
  }

  else
  {
    [(HDFHIRRefreshTokenTask *)self completionHandler];
    v34 = v33 = credential;
    (v34)[2](v34, v20, stateCopy, 0);

    credential = v33;
  }
}

- (void)handleError:(id)error endState:(id)state
{
  errorCopy = error;
  stateCopy = state;
  if (!errorCopy)
  {
    sub_10000C0D4(a2, self);
  }

  v12 = errorCopy;
  v9 = [NSArray arrayWithObjects:&v12 count:1];
  v10 = [NSError hrs_accumulatedErrorWithAuthorizationFailures:v9 resourceFetchFailures:0 otherErrors:0];

  completionHandler = [(HDFHIRRefreshTokenTask *)self completionHandler];
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