@interface HDFHIRCredentialResult
- (BOOL)shouldRefresh;
- (HKFHIRCredential)credential;
- (id)_initWithCredential:(id)credential authResponse:(id)response;
- (id)_initWithWrappedCredential:(id)credential authResponse:(id)response refreshError:(id)error;
- (id)_resultWithAuthResponse:(id)response;
- (id)_resultWithRefreshError:(id)error;
- (id)asRefreshResultWithEndStates:(id)states;
- (id)assembleUpdatedCredential;
- (void)invalidate;
@end

@implementation HDFHIRCredentialResult

- (id)_initWithCredential:(id)credential authResponse:(id)response
{
  responseCopy = response;
  credentialCopy = credential;
  v8 = [[_HDWrappedFHIRCredential alloc] _initWithCredential:credentialCopy];

  v9 = [(HDFHIRCredentialResult *)self _initWithWrappedCredential:v8 authResponse:responseCopy refreshError:0];
  return v9;
}

- (id)_initWithWrappedCredential:(id)credential authResponse:(id)response refreshError:(id)error
{
  credentialCopy = credential;
  responseCopy = response;
  errorCopy = error;
  v19.receiver = self;
  v19.super_class = HDFHIRCredentialResult;
  v12 = [(HDFHIRCredentialResult *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_wrappedCredential, credential);
    v14 = [responseCopy copy];
    authResponse = v13->_authResponse;
    v13->_authResponse = v14;

    v16 = [errorCopy copy];
    refreshError = v13->_refreshError;
    v13->_refreshError = v16;
  }

  return v13;
}

- (id)_resultWithAuthResponse:(id)response
{
  responseCopy = response;
  v5 = [objc_alloc(objc_opt_class()) _initWithWrappedCredential:self->_wrappedCredential authResponse:responseCopy refreshError:0];

  return v5;
}

- (id)_resultWithRefreshError:(id)error
{
  errorCopy = error;
  v5 = [objc_alloc(objc_opt_class()) _initWithWrappedCredential:self->_wrappedCredential authResponse:self->_authResponse refreshError:errorCopy];

  return v5;
}

- (BOOL)shouldRefresh
{
  credential = [(HDFHIRCredentialResult *)self credential];
  refreshError = [(HDFHIRCredentialResult *)self refreshError];
  hk_OAuth2_isAccessDeniedError = [refreshError hk_OAuth2_isAccessDeniedError];

  if (hk_OAuth2_isAccessDeniedError)
  {
    isInvalidated = 0;
  }

  else if ([credential isExpired])
  {
    isInvalidated = 1;
  }

  else
  {
    wrappedCredential = [(HDFHIRCredentialResult *)self wrappedCredential];
    isInvalidated = [wrappedCredential isInvalidated];
  }

  return isInvalidated;
}

- (void)invalidate
{
  wrappedCredential = [(HDFHIRCredentialResult *)self wrappedCredential];
  [wrappedCredential setInvalidated:1];
}

- (HKFHIRCredential)credential
{
  refreshedCredential = [(_HDWrappedFHIRCredential *)self->_wrappedCredential refreshedCredential];
  v4 = refreshedCredential;
  if (refreshedCredential)
  {
    originalCredential = refreshedCredential;
  }

  else
  {
    originalCredential = [(_HDWrappedFHIRCredential *)self->_wrappedCredential originalCredential];
  }

  v6 = originalCredential;

  return v6;
}

- (id)asRefreshResultWithEndStates:(id)states
{
  statesCopy = states;
  v5 = [HKFHIRCredentialRefreshResult alloc];
  credential = [(HDFHIRCredentialResult *)self credential];
  v7 = [v5 initWithCredential:credential authResponse:self->_authResponse endStates:statesCopy error:self->_refreshError];

  return v7;
}

- (id)assembleUpdatedCredential
{
  v23 = [HKFHIRCredential alloc];
  authResponse = [(HDFHIRCredentialResult *)self authResponse];
  accessToken = [authResponse accessToken];
  accessToken2 = accessToken;
  if (!accessToken)
  {
    credential = [(HDFHIRCredentialResult *)self credential];
    accessToken2 = [credential accessToken];
  }

  authResponse2 = [(HDFHIRCredentialResult *)self authResponse];
  refreshToken = [authResponse2 refreshToken];
  refreshToken2 = refreshToken;
  if (!refreshToken)
  {
    credential2 = [(HDFHIRCredentialResult *)self credential];
    refreshToken2 = [credential2 refreshToken];
  }

  authResponse3 = [(HDFHIRCredentialResult *)self authResponse];
  patientID = [authResponse3 patientID];
  patientID2 = patientID;
  if (!patientID)
  {
    credential3 = [(HDFHIRCredentialResult *)self credential];
    patientID2 = [credential3 patientID];
  }

  v25 = refreshToken;
  authResponse4 = [(HDFHIRCredentialResult *)self authResponse];
  expiration = [authResponse4 expiration];
  expiration2 = expiration;
  if (!expiration)
  {
    credential4 = [(HDFHIRCredentialResult *)self credential];
    expiration2 = [credential4 expiration];
  }

  credential5 = [(HDFHIRCredentialResult *)self credential];
  requestedScopeString = [credential5 requestedScopeString];
  authResponse5 = [(HDFHIRCredentialResult *)self authResponse];
  scope = [authResponse5 scope];
  if (scope)
  {
    v12 = [v23 initWithAccessToken:accessToken2 refreshToken:refreshToken2 patientID:patientID2 expiration:expiration2 requestedScopeString:requestedScopeString scopeString:scope];
  }

  else
  {
    credential6 = [(HDFHIRCredentialResult *)self credential];
    [credential6 scopeString];
    v14 = v20 = accessToken;
    v12 = [v23 initWithAccessToken:accessToken2 refreshToken:refreshToken2 patientID:patientID2 expiration:expiration2 requestedScopeString:requestedScopeString scopeString:v14];

    accessToken = v20;
  }

  if (!expiration)
  {
  }

  if (!patientID)
  {
  }

  if (!v25)
  {
  }

  if (!accessToken)
  {
  }

  return v12;
}

@end