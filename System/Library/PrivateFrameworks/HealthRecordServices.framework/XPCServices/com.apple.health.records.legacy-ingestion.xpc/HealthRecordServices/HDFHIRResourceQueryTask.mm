@interface HDFHIRResourceQueryTask
- (HDFHIRResourceQueryTask)initWithCredentialedSession:(id)session resourceSchema:(id)schema queryMode:(int64_t)mode bindings:(id)bindings completion:(id)completion;
- (id)createURLRequestWithCredentialResult:(id)result error:(id *)error;
- (id)resourceType;
- (void)handleError:(id)error endState:(id)state;
@end

@implementation HDFHIRResourceQueryTask

- (HDFHIRResourceQueryTask)initWithCredentialedSession:(id)session resourceSchema:(id)schema queryMode:(int64_t)mode bindings:(id)bindings completion:(id)completion
{
  schemaCopy = schema;
  bindingsCopy = bindings;
  completionCopy = completion;
  v23.receiver = self;
  v23.super_class = HDFHIRResourceQueryTask;
  v15 = [(HDFHIRCredentialedRequestTask *)&v23 initWithCredentialedSession:session];
  if (v15)
  {
    v16 = [schemaCopy copy];
    resourceSchema = v15->_resourceSchema;
    v15->_resourceSchema = v16;

    v15->_queryMode = mode;
    v18 = [completionCopy copy];
    queryCompletion = v15->_queryCompletion;
    v15->_queryCompletion = v18;

    v20 = [bindingsCopy copy];
    bindings = v15->_bindings;
    v15->_bindings = v20;
  }

  return v15;
}

- (id)resourceType
{
  resourceSchema = [(HDFHIRResourceQueryTask *)self resourceSchema];
  name = [resourceSchema name];

  return name;
}

- (id)createURLRequestWithCredentialResult:(id)result error:(id *)error
{
  resultCopy = result;
  resourceSchema = [(HDFHIRResourceQueryTask *)self resourceSchema];
  credential = [resultCopy credential];

  bindings = [(HDFHIRResourceQueryTask *)self bindings];
  v10 = [resourceSchema createRequestWithCredential:credential bindings:bindings queryMode:-[HDFHIRResourceQueryTask queryMode](self error:{"queryMode"), error}];

  return v10;
}

- (void)handleError:(id)error endState:(id)state
{
  errorCopy = error;
  stateCopy = state;
  v8 = errorCopy;
  v9 = stateCopy;
  if (!errorCopy)
  {
    sub_10000C6CC(a2, self);
    v8 = 0;
  }

  v10 = [NSError hrs_authorizationOrResourceFetchErrorFromError:v8];
  (*(self->_queryCompletion + 2))();
}

@end