@interface HDFHIRCredentialResult
- (BOOL)shouldRefresh;
- (HKFHIRCredential)credential;
- (id)_initWithCredential:(id)a3 authResponse:(id)a4;
- (id)_initWithWrappedCredential:(id)a3 authResponse:(id)a4 refreshError:(id)a5;
- (id)_resultWithAuthResponse:(id)a3;
- (id)_resultWithRefreshError:(id)a3;
- (id)asRefreshResultWithEndStates:(id)a3;
- (id)assembleUpdatedCredential;
- (void)invalidate;
@end

@implementation HDFHIRCredentialResult

- (id)_initWithCredential:(id)a3 authResponse:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_HDWrappedFHIRCredential alloc] _initWithCredential:v7];

  v9 = [(HDFHIRCredentialResult *)self _initWithWrappedCredential:v8 authResponse:v6 refreshError:0];
  return v9;
}

- (id)_initWithWrappedCredential:(id)a3 authResponse:(id)a4 refreshError:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = HDFHIRCredentialResult;
  v12 = [(HDFHIRCredentialResult *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_wrappedCredential, a3);
    v14 = [v10 copy];
    authResponse = v13->_authResponse;
    v13->_authResponse = v14;

    v16 = [v11 copy];
    refreshError = v13->_refreshError;
    v13->_refreshError = v16;
  }

  return v13;
}

- (id)_resultWithAuthResponse:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) _initWithWrappedCredential:self->_wrappedCredential authResponse:v4 refreshError:0];

  return v5;
}

- (id)_resultWithRefreshError:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) _initWithWrappedCredential:self->_wrappedCredential authResponse:self->_authResponse refreshError:v4];

  return v5;
}

- (BOOL)shouldRefresh
{
  v3 = [(HDFHIRCredentialResult *)self credential];
  v4 = [(HDFHIRCredentialResult *)self refreshError];
  v5 = [v4 hk_OAuth2_isAccessDeniedError];

  if (v5)
  {
    v6 = 0;
  }

  else if ([v3 isExpired])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(HDFHIRCredentialResult *)self wrappedCredential];
    v6 = [v7 isInvalidated];
  }

  return v6;
}

- (void)invalidate
{
  v2 = [(HDFHIRCredentialResult *)self wrappedCredential];
  [v2 setInvalidated:1];
}

- (HKFHIRCredential)credential
{
  v3 = [(_HDWrappedFHIRCredential *)self->_wrappedCredential refreshedCredential];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(_HDWrappedFHIRCredential *)self->_wrappedCredential originalCredential];
  }

  v6 = v5;

  return v6;
}

- (id)asRefreshResultWithEndStates:(id)a3
{
  v4 = a3;
  v5 = [HKFHIRCredentialRefreshResult alloc];
  v6 = [(HDFHIRCredentialResult *)self credential];
  v7 = [v5 initWithCredential:v6 authResponse:self->_authResponse endStates:v4 error:self->_refreshError];

  return v7;
}

- (id)assembleUpdatedCredential
{
  v23 = [HKFHIRCredential alloc];
  v21 = [(HDFHIRCredentialResult *)self authResponse];
  v3 = [v21 accessToken];
  v29 = v3;
  if (!v3)
  {
    v19 = [(HDFHIRCredentialResult *)self credential];
    v29 = [v19 accessToken];
  }

  v26 = [(HDFHIRCredentialResult *)self authResponse];
  v4 = [v26 refreshToken];
  v28 = v4;
  if (!v4)
  {
    v18 = [(HDFHIRCredentialResult *)self credential];
    v28 = [v18 refreshToken];
  }

  v24 = [(HDFHIRCredentialResult *)self authResponse];
  v5 = [v24 patientID];
  v27 = v5;
  if (!v5)
  {
    v17 = [(HDFHIRCredentialResult *)self credential];
    v27 = [v17 patientID];
  }

  v25 = v4;
  v22 = [(HDFHIRCredentialResult *)self authResponse];
  v6 = [v22 expiration];
  v7 = v6;
  if (!v6)
  {
    v16 = [(HDFHIRCredentialResult *)self credential];
    v7 = [v16 expiration];
  }

  v8 = [(HDFHIRCredentialResult *)self credential];
  v9 = [v8 requestedScopeString];
  v10 = [(HDFHIRCredentialResult *)self authResponse];
  v11 = [v10 scope];
  if (v11)
  {
    v12 = [v23 initWithAccessToken:v29 refreshToken:v28 patientID:v27 expiration:v7 requestedScopeString:v9 scopeString:v11];
  }

  else
  {
    v13 = [(HDFHIRCredentialResult *)self credential];
    [v13 scopeString];
    v14 = v20 = v3;
    v12 = [v23 initWithAccessToken:v29 refreshToken:v28 patientID:v27 expiration:v7 requestedScopeString:v9 scopeString:v14];

    v3 = v20;
  }

  if (!v6)
  {
  }

  if (!v5)
  {
  }

  if (!v25)
  {
  }

  if (!v3)
  {
  }

  return v12;
}

@end