@interface HDFHIRRefreshTokenTask
- (HDFHIRRefreshTokenTask)initWithSession:(id)a3 credential:(id)a4 completion:(id)a5;
- (id)errorForRequest:(id)a3 response:(id)a4 data:(id)a5;
- (void)createURLRequestWithCompletion:(id)a3;
- (void)handleError:(id)a3 endState:(id)a4;
- (void)handleResponse:(id)a3 JSONData:(id)a4 endState:(id)a5;
@end

@implementation HDFHIRRefreshTokenTask

- (HDFHIRRefreshTokenTask)initWithSession:(id)a3 credential:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = HDFHIRRefreshTokenTask;
  v10 = [(HDFHIRRequestTask *)&v16 initWithSession:a3];
  if (v10)
  {
    v11 = [v8 copy];
    credential = v10->_credential;
    v10->_credential = v11;

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

  v7 = [v6 authorizationSchemaForType:3];
  v8 = [v6 connection];
  v9 = [v8 authentication];
  v10 = [v9 clientID];

  v11 = [v6 connection];
  v12 = [v11 authentication];
  v13 = [v12 clientSecret];

  if (v10 && v13)
  {
    v14 = [(HKFHIRCredential *)self->_credential refreshToken];
    v15 = v14;
    if (v14)
    {
      v29[0] = HKFHIREndpointSchemaVariableRefreshToken;
      v29[1] = HKFHIREndpointSchemaVariableClientID;
      v30[0] = v14;
      v30[1] = v10;
      v29[2] = HKFHIREndpointSchemaVariableClientSecret;
      v30[2] = v13;
      v16 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];
      v26 = 0;
      v17 = [v7 createRequestWithBindings:v16 queryMode:0 error:&v26];
      v18 = v26;
    }

    else
    {
      v22 = [(HDFHIRRefreshTokenTask *)self credential];
      v23 = [NSString stringWithFormat:@"no refresh token for credential %@", v22];

      v24 = HRSPrivateErrorDomain;
      v27 = NSLocalizedDescriptionKey;
      v28 = v23;
      v25 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v18 = [NSError errorWithDomain:v24 code:1 userInfo:v25];

      v17 = 0;
      v16 = 0;
    }

    v4[2](v4, v17, v18);
  }

  else
  {
    v19 = HKStringFromBool();
    v20 = HKStringFromBool();
    v21 = [NSError hk_error:3 format:@"Need both clientID and clientSecret, have id: %@, secret: %@", v19, v20];
    v4[2](v4, 0, v21);
  }
}

- (void)handleResponse:(id)a3 JSONData:(id)a4 endState:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(HDFHIRRefreshTokenTask *)self credential];
  if (![v7 length])
  {
    v11 = [NSError hk_error:3 description:@"no JSON data"];
    v20 = 0;
    goto LABEL_17;
  }

  v42 = 0;
  v10 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v42];
  v11 = v42;
  if (v10)
  {
    objc_opt_class();
    v41[1] = v11;
    v12 = HKSafeObject();
    v13 = v11;

    if (v12)
    {
      v37 = v8;
      v39 = v10;
      v14 = [(HDFHIRRequestTask *)self session];
      [v14 specification];
      v16 = v15 = v12;
      v17 = [v16 connection];
      v18 = [v17 gateway];
      v19 = [v18 baseURL];

      v40 = v15;
      v41[0] = v13;
      v38 = v19;
      v20 = [HDFHIRAuthResponse authResponseFromServerResponseDictionary:v15 baseURL:v19 previousCredential:v9 error:v41];
      v11 = v41[0];

      v21 = [v20 patientID];
      v22 = [v9 patientID];
      v23 = v22;
      if (v21 != v22)
      {
        v24 = [v9 patientID];
        if (v24)
        {
          v25 = v24;
          v26 = [v20 patientID];
          [v9 patientID];
          v27 = v36 = v9;
          v35 = [v26 isEqualToString:v27];

          v9 = v36;
          v10 = v39;
          v8 = v37;
          if (v35)
          {
            goto LABEL_15;
          }
        }

        else
        {

          v10 = v39;
          v8 = v37;
        }

        _HKInitializeLogging();
        v28 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v9;
          v30 = v28;
          v31 = objc_opt_class();
          *buf = 138543362;
          v44 = v31;
          v32 = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ received different patient ID, ignoring and updating patient ID", buf, 0xCu);

          v9 = v29;
        }

        goto LABEL_15;
      }

      v10 = v39;
      v8 = v37;
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
    [(HDFHIRRefreshTokenTask *)self handleError:v11 endState:v8];
  }

  else
  {
    [(HDFHIRRefreshTokenTask *)self completionHandler];
    v34 = v33 = v9;
    (v34)[2](v34, v20, v8, 0);

    v9 = v33;
  }
}

- (void)handleError:(id)a3 endState:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    sub_10000C0D4(a2, self);
  }

  v12 = v7;
  v9 = [NSArray arrayWithObjects:&v12 count:1];
  v10 = [NSError hrs_accumulatedErrorWithAuthorizationFailures:v9 resourceFetchFailures:0 otherErrors:0];

  v11 = [(HDFHIRRefreshTokenTask *)self completionHandler];
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