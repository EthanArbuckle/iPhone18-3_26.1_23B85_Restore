@interface CPLCloudKitAcceptSharedScopeTask
- (CPLCloudKitAcceptSharedScopeTask)initWithController:(id)controller scope:(id)scope completionHandler:(id)handler;
- (void)_acceptShareWithMetadata:(id)metadata currentUserID:(id)d completionHandler:(id)handler;
- (void)_acceptShareWithURL:(id)l currentUserID:(id)d completionHandler:(id)handler;
- (void)_fetchMetadataForShareURL:(id)l currentUserID:(id)d completion:(id)completion;
- (void)_updateScopeAndFlagsWithCKRecord:(id)record currentUserID:(id)d;
- (void)_updateScopeParticipantsWithCKShare:(id)share currentUserID:(id)d;
- (void)runOperations;
@end

@implementation CPLCloudKitAcceptSharedScopeTask

- (CPLCloudKitAcceptSharedScopeTask)initWithController:(id)controller scope:(id)scope completionHandler:(id)handler
{
  scopeCopy = scope;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = CPLCloudKitAcceptSharedScopeTask;
  v11 = [(CPLCloudKitTransportTask *)&v16 initWithController:controller];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_scope, scope);
    v13 = [handlerCopy copy];
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
    scopeIdentifier = [(CPLScopeChange *)self->_scope scopeIdentifier];
    [CPLErrors cplErrorWithCode:38 description:@"Scope %@ is unknown", scopeIdentifier];
    v10 = LABEL_9:;
    (*(completionHandler + 2))(completionHandler, 0, 0, 0, v10);

    goto LABEL_12;
  }

  if (![(CPLScopeChange *)self->_scope canAcceptShareWithCloudKit])
  {
    completionHandler = self->_completionHandler;
    scopeIdentifier = [(CPLScopeChange *)self->_scope scopeIdentifier];
    [CPLErrors cplErrorWithCode:38 description:@"Scope %@ can't be accepted by this user", scopeIdentifier];
    goto LABEL_9;
  }

  share = [(CPLScopeChange *)self->_scope share];
  v6 = [share URL];
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

- (void)_updateScopeAndFlagsWithCKRecord:(id)record currentUserID:(id)d
{
  recordCopy = record;
  dCopy = d;
  if (recordCopy)
  {
    identification = self->_identification;
    if (!identification)
    {
      sub_10019B41C(self, a2);
    }

    v9 = [(CPLCloudKitZoneIdentification *)identification updatedScopeChangeFromScopeChange:self->_scope currentUserID:dCopy withCKRecord:recordCopy];
    if (v9)
    {
      objc_storeStrong(&self->_scope, v9);
    }

    v10 = [(CPLCloudKitZoneIdentification *)self->_identification updatedFlagsFromCKRecord:recordCopy];
    if (v10)
    {
      objc_storeStrong(&self->_flags, v10);
    }
  }
}

- (void)_updateScopeParticipantsWithCKShare:(id)share currentUserID:(id)d
{
  if (share)
  {
    scope = self->_scope;
    dCopy = d;
    shareCopy = share;
    v9 = [(CPLScopeChange *)scope copy];
    participants = [shareCopy participants];

    v11 = [CPLShareParticipant shareParticipantsFromCKShareParticipants:participants currentUserID:dCopy];

    share = [v9 share];
    [share setParticipants:v11];

    v13 = self->_scope;
    self->_scope = v9;
  }
}

- (void)_acceptShareWithURL:(id)l currentUserID:(id)d completionHandler:(id)handler
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004E2F8;
  v10[3] = &unk_100274680;
  dCopy = d;
  handlerCopy = handler;
  v10[4] = self;
  v8 = dCopy;
  v9 = handlerCopy;
  [(CPLCloudKitAcceptSharedScopeTask *)self _fetchMetadataForShareURL:l currentUserID:v8 completion:v10];
}

- (void)_fetchMetadataForShareURL:(id)l currentUserID:(id)d completion:(id)completion
{
  lCopy = l;
  dCopy = d;
  completionCopy = completion;
  v31 = 0;
  v11 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v31];
  v12 = v31;
  if (v11)
  {
    v13 = [CKFetchShareMetadataOperation alloc];
    v32 = lCopy;
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
    selfCopy = self;
    v24 = v27;
    v25 = v29;
    v23 = completionCopy;
    v21 = lCopy;
    v22 = dCopy;
    [v15 setFetchShareMetadataCompletionBlock:&v16];
    [(CPLCloudKitTransportTask *)self launchOperation:v15 type:0 withContext:0, v16, v17, v18, v19, selfCopy];

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(v29, 8);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, v12);
  }
}

- (void)_acceptShareWithMetadata:(id)metadata currentUserID:(id)d completionHandler:(id)handler
{
  metadataCopy = metadata;
  dCopy = d;
  handlerCopy = handler;
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
    v18 = handlerCopy;
    v15[4] = self;
    v16 = metadataCopy;
    v17 = dCopy;
    [(CPLCloudKitZoneIdentification *)identification validateAcceptSharedScopeTask:self completionHandler:v15];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, v13);
  }
}

@end