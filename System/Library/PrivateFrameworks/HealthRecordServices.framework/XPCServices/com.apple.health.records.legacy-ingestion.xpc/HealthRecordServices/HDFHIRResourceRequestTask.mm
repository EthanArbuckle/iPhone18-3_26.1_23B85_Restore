@interface HDFHIRResourceRequestTask
- (HDFHIRResourceRequestTask)initWithCredentialedSession:(id)a3 resourceSchema:(id)a4 requestURL:(id)a5 completion:(id)a6;
- (id)createURLRequestWithCredentialResult:(id)a3 error:(id *)a4;
- (id)resourceType;
- (void)handleError:(id)a3 endState:(id)a4;
@end

@implementation HDFHIRResourceRequestTask

- (HDFHIRResourceRequestTask)initWithCredentialedSession:(id)a3 resourceSchema:(id)a4 requestURL:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = HDFHIRResourceRequestTask;
  v13 = [(HDFHIRCredentialedRequestTask *)&v21 initWithCredentialedSession:a3];
  if (v13)
  {
    v14 = [v10 copy];
    resourceSchema = v13->_resourceSchema;
    v13->_resourceSchema = v14;

    v16 = [v11 copy];
    requestURL = v13->_requestURL;
    v13->_requestURL = v16;

    v18 = [v12 copy];
    queryCompletion = v13->_queryCompletion;
    v13->_queryCompletion = v18;
  }

  return v13;
}

- (id)resourceType
{
  v2 = [(HDFHIRResourceRequestTask *)self resourceSchema];
  v3 = [v2 name];

  return v3;
}

- (id)createURLRequestWithCredentialResult:(id)a3 error:(id *)a4
{
  resourceSchema = self->_resourceSchema;
  v7 = [a3 credential];
  v8 = [(HDFHIREndpointSchema *)resourceSchema createRequestWithCredential:v7 requestURL:self->_requestURL error:a4];

  return v8;
}

- (void)handleError:(id)a3 endState:(id)a4
{
  v11 = a3;
  v7 = a4;
  v8 = v11;
  v9 = v7;
  if (!v11)
  {
    sub_10000C650(a2, self);
    v8 = 0;
  }

  v10 = [NSError hrs_authorizationOrResourceFetchErrorFromError:v8];
  (*(self->_queryCompletion + 2))();
}

@end