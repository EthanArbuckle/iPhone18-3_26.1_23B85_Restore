@interface CPLCloudKitQueryUserDetailsTask
- (CPLCloudKitQueryUserDetailsTask)initWithController:(id)a3 participants:(id)a4 completionHandler:(id)a5;
- (void)queryUserDetailsWithCurrentUserID:(id)a3;
- (void)runOperations;
@end

@implementation CPLCloudKitQueryUserDetailsTask

- (CPLCloudKitQueryUserDetailsTask)initWithController:(id)a3 participants:(id)a4 completionHandler:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = CPLCloudKitQueryUserDetailsTask;
  v11 = [(CPLCloudKitTransportTask *)&v16 initWithController:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_participants, a4);
    v13 = [v10 copy];
    completionHandler = v12->_completionHandler;
    v12->_completionHandler = v13;
  }

  return v12;
}

- (void)runOperations
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000A8140;
  v2[3] = &unk_100274018;
  v2[4] = self;
  [(CPLCloudKitTransportTask *)self getUserRecordIDFetchIfNecessaryWithCompletionHandler:v2];
}

- (void)queryUserDetailsWithCurrentUserID:(id)a3
{
  v26 = a3;
  v27 = self;
  v36 = 0;
  LOBYTE(self) = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v36];
  v25 = v36;
  if ((self & 1) == 0)
  {
    (*(v27->_completionHandler + 2))();
    goto LABEL_26;
  }

  v24 = 272;
  if (!v27->_participants)
  {
    completionHandler = v27->_completionHandler;
    v23 = [CPLErrors incorrectParametersErrorForParameter:@"participants"];
    completionHandler[2](completionHandler, 0, v23);

    goto LABEL_26;
  }

  v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](v27->_participants, "count")}];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = v27->_participants;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = *v33;
  do
  {
    v8 = 0;
    do
    {
      if (*v33 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v32 + 1) + 8 * v8);
      v10 = [v9 email];

      if (v10)
      {
        v11 = [CKUserIdentityLookupInfo alloc];
        v12 = [v9 email];
        v13 = [v11 initWithEmailAddress:v12];
LABEL_14:
        v19 = v13;

        if (!v19)
        {
          goto LABEL_17;
        }

        [v4 addObject:v19];
        goto LABEL_16;
      }

      v14 = [v9 phoneNumber];

      if (v14)
      {
        v15 = [CKUserIdentityLookupInfo alloc];
        v12 = [v9 phoneNumber];
        v13 = [v15 initWithPhoneNumber:v12];
        goto LABEL_14;
      }

      v16 = [v9 userIdentifier];

      if (v16)
      {
        v17 = [CKRecordID alloc];
        v18 = [v9 userIdentifier];
        v12 = [v17 initWithRecordName:v18];

        v13 = [[CKUserIdentityLookupInfo alloc] initWithUserRecordID:v12];
        goto LABEL_14;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v19 = sub_100003B40();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v9;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Missing information to query for user identity for %@", &buf, 0xCu);
        }

LABEL_16:
      }

LABEL_17:
      v8 = v8 + 1;
    }

    while (v6 != v8);
    v20 = [(NSArray *)v5 countByEnumeratingWithState:&v32 objects:v42 count:16];
    v6 = v20;
  }

  while (v20);
LABEL_23:

  *&buf = 0;
  *(&buf + 1) = &buf;
  v38 = 0x3032000000;
  v39 = sub_100004520;
  v40 = sub_100005374;
  v41 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(&v27->super.super.isa + v24), "count")}];
  v21 = [[CKFetchShareParticipantsOperation alloc] initWithUserIdentityLookupInfos:v4];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1001AD4F4;
  v29[3] = &unk_100276BB8;
  v30 = v26;
  p_buf = &buf;
  [v21 setPerShareParticipantCompletionBlock:v29];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000A8668;
  v28[3] = &unk_100276BE0;
  v28[4] = v27;
  v28[5] = &buf;
  [v21 setFetchShareParticipantsCompletionBlock:v28];
  [(CPLCloudKitTransportTask *)v27 launchOperation:v21 type:0 withContext:0];

  _Block_object_dispose(&buf, 8);
LABEL_26:
}

@end