@interface HDFHIRResourceQueryTask
- (HDFHIRResourceQueryTask)initWithCredentialedSession:(id)a3 resourceSchema:(id)a4 queryMode:(int64_t)a5 bindings:(id)a6 completion:(id)a7;
- (id)createURLRequestWithCredentialResult:(id)a3 error:(id *)a4;
- (id)resourceType;
- (void)handleError:(id)a3 endState:(id)a4;
@end

@implementation HDFHIRResourceQueryTask

- (HDFHIRResourceQueryTask)initWithCredentialedSession:(id)a3 resourceSchema:(id)a4 queryMode:(int64_t)a5 bindings:(id)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v23.receiver = self;
  v23.super_class = HDFHIRResourceQueryTask;
  v15 = [(HDFHIRCredentialedRequestTask *)&v23 initWithCredentialedSession:a3];
  if (v15)
  {
    v16 = [v12 copy];
    resourceSchema = v15->_resourceSchema;
    v15->_resourceSchema = v16;

    v15->_queryMode = a5;
    v18 = [v14 copy];
    queryCompletion = v15->_queryCompletion;
    v15->_queryCompletion = v18;

    v20 = [v13 copy];
    bindings = v15->_bindings;
    v15->_bindings = v20;
  }

  return v15;
}

- (id)resourceType
{
  v2 = [(HDFHIRResourceQueryTask *)self resourceSchema];
  v3 = [v2 name];

  return v3;
}

- (id)createURLRequestWithCredentialResult:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDFHIRResourceQueryTask *)self resourceSchema];
  v8 = [v6 credential];

  v9 = [(HDFHIRResourceQueryTask *)self bindings];
  v10 = [v7 createRequestWithCredential:v8 bindings:v9 queryMode:-[HDFHIRResourceQueryTask queryMode](self error:{"queryMode"), a4}];

  return v10;
}

- (void)handleError:(id)a3 endState:(id)a4
{
  v11 = a3;
  v7 = a4;
  v8 = v11;
  v9 = v7;
  if (!v11)
  {
    sub_10000C6CC(a2, self);
    v8 = 0;
  }

  v10 = [NSError hrs_authorizationOrResourceFetchErrorFromError:v8];
  (*(self->_queryCompletion + 2))();
}

@end