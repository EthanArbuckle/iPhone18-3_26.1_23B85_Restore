@interface CPLCloudKitRampingRequestTask
- (BOOL)_shouldSkipRampingRequest;
- (CPLCloudKitRampingRequestTask)initWithController:(id)a3 resourceType:(unint64_t)a4 numRequested:(unint64_t)a5 completionHandler:(id)a6;
- (void)runOperations;
@end

@implementation CPLCloudKitRampingRequestTask

- (CPLCloudKitRampingRequestTask)initWithController:(id)a3 resourceType:(unint64_t)a4 numRequested:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a6;
  v16.receiver = self;
  v16.super_class = CPLCloudKitRampingRequestTask;
  v11 = [(CPLCloudKitTransportTask *)&v16 initWithController:a3];
  v12 = v11;
  if (v11)
  {
    v11->_resourceType = a4;
    v11->_numRequested = a5;
    v13 = [v10 copy];
    completionHandler = v12->_completionHandler;
    v12->_completionHandler = v13;

    [(CPLCloudKitTransportTask *)v12 setBoostable:0];
  }

  return v12;
}

- (BOOL)_shouldSkipRampingRequest
{
  if (qword_1002C52E8 != -1)
  {
    sub_1001A2334();
  }

  return byte_1002C52E0;
}

- (void)runOperations
{
  if (![(CPLCloudKitRampingRequestTask *)self _shouldSkipRampingRequest])
  {
    v21 = 0;
    v4 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v21];
    v5 = v21;
    if (v4)
    {
      v6 = [(CPLCloudKitTransportTask *)self controller];
      v7 = [v6 isNetworkConnected];

      if (v7)
      {
        v8 = objc_alloc_init(CPLRampingRequestResource);
        v9 = sub_100084A0C(CPLCloudKitResourceKeys, self->_resourceType);
        v10 = sub_100194210(v9);
        [v8 setResource:v10];

        v11 = [v8 resource];

        if (v11)
        {
          [v8 setNumRequested:self->_numRequested];
          v12 = objc_alloc_init(CPLRampingRequest);
          [v12 addRequest:v8];
          v13 = [[CKCodeOperation alloc] initWithServiceName:@"Ramping" functionName:@"request" responseClass:objc_opt_class()];
          [v13 setRequest:v12];
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_100066A20;
          v20[3] = &unk_100275360;
          v20[4] = self;
          [v13 setCodeOperationCompletionBlock:v20];
          [(CPLCloudKitTransportTask *)self launchOperation:v13 type:1 withContext:0];
        }

        else
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            if (qword_1002C52F0 != -1)
            {
              sub_1001A2348();
            }

            v15 = qword_1002C52F8;
            if (os_log_type_enabled(qword_1002C52F8, OS_LOG_TYPE_ERROR))
            {
              resourceType = self->_resourceType;
              v17 = v15;
              v18 = [CPLResource shortDescriptionForResourceType:resourceType];
              *buf = 138412290;
              v23 = v18;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Trying to ask for a remapping request for an unsupported resource type: %@", buf, 0xCu);
            }
          }

          completionHandler = self->_completionHandler;
          v12 = [CPLErrors incorrectParametersErrorForParameter:@"resourceType"];
          (*(completionHandler + 2))(completionHandler, 0, 0, v12);
        }

        goto LABEL_19;
      }

      v14 = *(self->_completionHandler + 2);
    }

    else
    {
      v14 = *(self->_completionHandler + 2);
    }

    v14();
LABEL_19:

    return;
  }

  v3 = *(self->_completionHandler + 2);

  v3();
}

@end