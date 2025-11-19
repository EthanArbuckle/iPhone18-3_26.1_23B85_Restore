@interface CPLCloudKitAcceptSharedScopeTask
- (CPLCloudKitAcceptSharedScopeTask)initWithController:(id)a3 scope:(id)a4 completionHandler:(id)a5;
- (void)_acceptShareWithMetadata:(id)a3 currentUserID:(id)a4 completionHandler:(id)a5;
- (void)_acceptShareWithURL:(id)a3 currentUserID:(id)a4 completionHandler:(id)a5;
- (void)_fetchMetadataForShareURL:(id)a3 currentUserID:(id)a4 completion:(id)a5;
- (void)_updateScopeAndFlagsWithCKRecord:(id)a3 currentUserID:(id)a4;
- (void)_updateScopeParticipantsWithCKShare:(id)a3 currentUserID:(id)a4;
- (void)runOperations;
@end

@implementation CPLCloudKitAcceptSharedScopeTask

- (CPLCloudKitAcceptSharedScopeTask)initWithController:(id)a3 scope:(id)a4 completionHandler:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = CPLCloudKitAcceptSharedScopeTask;
  v11 = [(CPLCloudKitTransportTask *)&v16 initWithController:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_scope, a4);
    v13 = [v10 copy];
    completionHandler = v12->_completionHandler;
    v12->_completionHandler = v13;
  }

  return v12;
}

- (void)runOperations
{
  v14 = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v14];
  v4 = v14;
  if ((v3 & 1) == 0)
  {
    (*(self->_completionHandler + 2))();
    goto LABEL_12;
  }

  if (![(CPLScopeChange *)self->_scope scopeType])
  {
    completionHandler = self->_completionHandler;
    v9 = [(CPLScopeChange *)self->_scope scopeIdentifier];
    [CPLErrors cplErrorWithCode:38 description:@"Scope %@ is unknown", v9];
    v10 = LABEL_9:;
    (*(completionHandler + 2))(completionHandler, 0, 0, 0, v10);

    goto LABEL_12;
  }

  if (![(CPLScopeChange *)self->_scope canAcceptShareWithCloudKit])
  {
    completionHandler = self->_completionHandler;
    v9 = [(CPLScopeChange *)self->_scope scopeIdentifier];
    [CPLErrors cplErrorWithCode:38 description:@"Scope %@ can't be accepted by this user", v9];
    goto LABEL_9;
  }

  v5 = [(CPLScopeChange *)self->_scope share];
  v6 = [v5 URL];
  v7 = v6;
  if (v6)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10004DD14;
    v12[3] = &unk_100273B50;
    v12[4] = self;
    v13 = v6;
    [(CPLCloudKitTransportTask *)self getUserRecordIDFetchIfNecessaryWithCompletionHandler:v12];
  }

  else
  {
    v11 = [CPLErrors cplErrorWithCode:50 description:@"Missing share URL in %@", self->_scope];
    (*(self->_completionHandler + 2))();
  }

LABEL_12:
}

- (void)_updateScopeAndFlagsWithCKRecord:(id)a3 currentUserID:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (v11)
  {
    identification = self->_identification;
    if (!identification)
    {
      sub_10019B41C(self, a2);
    }

    v9 = [(CPLCloudKitZoneIdentification *)identification updatedScopeChangeFromScopeChange:self->_scope currentUserID:v7 withCKRecord:v11];
    if (v9)
    {
      objc_storeStrong(&self->_scope, v9);
    }

    v10 = [(CPLCloudKitZoneIdentification *)self->_identification updatedFlagsFromCKRecord:v11];
    if (v10)
    {
      objc_storeStrong(&self->_flags, v10);
    }
  }
}

- (void)_updateScopeParticipantsWithCKShare:(id)a3 currentUserID:(id)a4
{
  if (a3)
  {
    scope = self->_scope;
    v7 = a4;
    v8 = a3;
    v9 = [(CPLScopeChange *)scope copy];
    v10 = [v8 participants];

    v11 = [CPLShareParticipant shareParticipantsFromCKShareParticipants:v10 currentUserID:v7];

    v12 = [v9 share];
    [v12 setParticipants:v11];

    v13 = self->_scope;
    self->_scope = v9;
  }
}

- (void)_acceptShareWithURL:(id)a3 currentUserID:(id)a4 completionHandler:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004E2F8;
  v10[3] = &unk_100274680;
  v11 = a4;
  v12 = a5;
  v10[4] = self;
  v8 = v11;
  v9 = v12;
  [(CPLCloudKitAcceptSharedScopeTask *)self _fetchMetadataForShareURL:a3 currentUserID:v8 completion:v10];
}

- (void)_fetchMetadataForShareURL:(id)a3 currentUserID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v31 = 0;
  v11 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v31];
  v12 = v31;
  if (v11)
  {
    v13 = [CKFetchShareMetadataOperation alloc];
    v32 = v8;
    v14 = [NSArray arrayWithObjects:&v32 count:1];
    v15 = [v13 initWithShareURLs:v14];

    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = sub_100004410;
    v29[4] = sub_1000052EC;
    v30 = 0;
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = sub_100004410;
    v27[4] = sub_1000052EC;
    v28 = 0;
    [v15 setShouldFetchRootRecord:1];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10004E694;
    v26[3] = &unk_1002746A8;
    v26[4] = self;
    v26[5] = v27;
    v26[6] = v29;
    [v15 setPerShareMetadataBlock:v26];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_10004E728;
    v19 = &unk_1002746F8;
    v20 = self;
    v24 = v27;
    v25 = v29;
    v23 = v10;
    v21 = v8;
    v22 = v9;
    [v15 setFetchShareMetadataCompletionBlock:&v16];
    [(CPLCloudKitTransportTask *)self launchOperation:v15 type:0 withContext:0, v16, v17, v18, v19, v20];

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(v29, 8);
  }

  else
  {
    (*(v10 + 2))(v10, 0, v12);
  }
}

- (void)_acceptShareWithMetadata:(id)a3 currentUserID:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19 = 0;
  v12 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v19];
  v13 = v19;
  if (v12)
  {
    identification = self->_identification;
    if (!identification)
    {
      sub_10019B7CC(self, a2);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10004F050;
    v15[3] = &unk_100274798;
    v18 = v11;
    v15[4] = self;
    v16 = v9;
    v17 = v10;
    [(CPLCloudKitZoneIdentification *)identification validateAcceptSharedScopeTask:self completionHandler:v15];
  }

  else
  {
    (*(v11 + 2))(v11, v13);
  }
}

@end