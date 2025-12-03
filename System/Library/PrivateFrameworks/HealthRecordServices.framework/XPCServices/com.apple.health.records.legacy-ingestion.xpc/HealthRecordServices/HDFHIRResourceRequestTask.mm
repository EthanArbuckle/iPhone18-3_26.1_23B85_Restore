@interface HDFHIRResourceRequestTask
- (HDFHIRResourceRequestTask)initWithCredentialedSession:(id)session resourceSchema:(id)schema requestURL:(id)l completion:(id)completion;
- (id)createURLRequestWithCredentialResult:(id)result error:(id *)error;
- (id)resourceType;
- (void)handleError:(id)error endState:(id)state;
@end

@implementation HDFHIRResourceRequestTask

- (HDFHIRResourceRequestTask)initWithCredentialedSession:(id)session resourceSchema:(id)schema requestURL:(id)l completion:(id)completion
{
  schemaCopy = schema;
  lCopy = l;
  completionCopy = completion;
  v21.receiver = self;
  v21.super_class = HDFHIRResourceRequestTask;
  v13 = [(HDFHIRCredentialedRequestTask *)&v21 initWithCredentialedSession:session];
  if (v13)
  {
    v14 = [schemaCopy copy];
    resourceSchema = v13->_resourceSchema;
    v13->_resourceSchema = v14;

    v16 = [lCopy copy];
    requestURL = v13->_requestURL;
    v13->_requestURL = v16;

    v18 = [completionCopy copy];
    queryCompletion = v13->_queryCompletion;
    v13->_queryCompletion = v18;
  }

  return v13;
}

- (id)resourceType
{
  resourceSchema = [(HDFHIRResourceRequestTask *)self resourceSchema];
  name = [resourceSchema name];

  return name;
}

- (id)createURLRequestWithCredentialResult:(id)result error:(id *)error
{
  resourceSchema = self->_resourceSchema;
  credential = [result credential];
  v8 = [(HDFHIREndpointSchema *)resourceSchema createRequestWithCredential:credential requestURL:self->_requestURL error:error];

  return v8;
}

- (void)handleError:(id)error endState:(id)state
{
  errorCopy = error;
  stateCopy = state;
  v8 = errorCopy;
  v9 = stateCopy;
  if (!errorCopy)
  {
    sub_10000C650(a2, self);
    v8 = 0;
  }

  v10 = [NSError hrs_authorizationOrResourceFetchErrorFromError:v8];
  (*(self->_queryCompletion + 2))();
}

@end