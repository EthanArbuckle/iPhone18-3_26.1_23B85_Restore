@interface DRDataTransferSession
+ (BOOL)_shouldRestrictOpenInPlaceFor:(id)for destinationAuditToken:(id *)token;
- (BOOL)_isRepresentationAllowed:(id)allowed forDestination:(id)destination;
- (BOOL)setDestinationAuditToken:(id *)token;
- (DRDataTransferSession)initWithSourceItemCollection:(id)collection sourceAuditToken:(id *)token dataProviderEndpoint:(id)endpoint filter:(id)filter;
- (DRDataTransferSessionDelegate)delegate;
- (PBItemCollection)destinationItemCollection;
- (id)_copyItemCollectionForDestinationWithFilter:(id)filter;
- (id)_registerRequestFromSourceItem:(id)item typeIdentifier:(id)identifier completionHandler:(id)handler;
- (id)destinationDataProviderEndpoint;
- (void)_setupItem:(id)item forLoadingFromSourceItem:(id)sourceItem destination:(id)destination;
- (void)_transferQueue_scheduleNextTransfer;
- (void)_transferQueue_sendDelegateCallbacksIfNeeded;
- (void)clearDestinationAuditToken;
- (void)dataTransferMonitorBeganTransfers:(id)transfers;
- (void)dataTransferMonitorFinishedTransfers:(id)transfers;
- (void)setDataProviderEndpoint:(id)endpoint auditToken:(id *)token;
- (void)setSourceItemCollection:(id)collection;
- (void)startSendingDelegateCallbacks;
@end

@implementation DRDataTransferSession

- (DRDataTransferSession)initWithSourceItemCollection:(id)collection sourceAuditToken:(id *)token dataProviderEndpoint:(id)endpoint filter:(id)filter
{
  collectionCopy = collection;
  endpointCopy = endpoint;
  filterCopy = filter;
  v30.receiver = self;
  v30.super_class = DRDataTransferSession;
  v14 = [(DRDataTransferSession *)&v30 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sourceItemCollection, collection);
    [(PBItemCollection *)v15->_sourceItemCollection setDataProviderEndpoint:endpointCopy];
    [(PBItemCollection *)v15->_sourceItemCollection establishConnectionToDataProviderCompletionBlock:&stru_100055150];
    v16 = [DRProcessInfo alloc];
    v17 = *&token->var0[4];
    v29[0] = *token->var0;
    v29[1] = v17;
    v18 = [(DRProcessInfo *)v16 initWithAuditToken:v29];
    sourceProcessInfo = v15->_sourceProcessInfo;
    v15->_sourceProcessInfo = v18;

    sub_10000F97C(v15->_sourceItemCollection, v15->_sourceProcessInfo);
    v20 = objc_alloc_init(PBDataTransferMonitor);
    dataTransferMonitor = v15->_dataTransferMonitor;
    v15->_dataTransferMonitor = v20;

    [(PBDataTransferMonitor *)v15->_dataTransferMonitor setDelegate:v15];
    v22 = +[NSMutableArray array];
    transferQueue_requestsQueue = v15->_transferQueue_requestsQueue;
    v15->_transferQueue_requestsQueue = v22;

    v24 = +[NSMutableArray array];
    transferQueue_requestsInProgress = v15->_transferQueue_requestsInProgress;
    v15->_transferQueue_requestsInProgress = v24;

    v26 = objc_retainBlock(filterCopy);
    filter = v15->_filter;
    v15->_filter = v26;
  }

  return v15;
}

- (void)setSourceItemCollection:(id)collection
{
  objc_storeStrong(&self->_sourceItemCollection, collection);
  collectionCopy = collection;
  sub_10000F97C(self->_sourceItemCollection, self->_sourceProcessInfo);
  destinationItemCollection = self->_destinationItemCollection;
  self->_destinationItemCollection = 0;
}

- (BOOL)setDestinationAuditToken:(id *)token
{
  v5 = [DRProcessInfo alloc];
  v6 = *&token->var0[4];
  v11[0] = *token->var0;
  v11[1] = v6;
  v7 = [(DRProcessInfo *)v5 initWithAuditToken:v11];
  destinationProcessInfo = self->_destinationProcessInfo;
  self->_destinationProcessInfo = v7;

  destinationItemCollection = self->_destinationItemCollection;
  self->_destinationItemCollection = 0;

  return 1;
}

- (PBItemCollection)destinationItemCollection
{
  destinationItemCollection = self->_destinationItemCollection;
  if (!destinationItemCollection)
  {
    v4 = [(DRDataTransferSession *)self _copyItemCollectionForDestinationWithFilter:0];
    v5 = self->_destinationItemCollection;
    self->_destinationItemCollection = v4;

    [(PBItemCollection *)self->_destinationItemCollection setDataTransferDelegate:self->_dataTransferMonitor];
    destinationItemCollection = self->_destinationItemCollection;
  }

  return destinationItemCollection;
}

- (void)clearDestinationAuditToken
{
  destinationProcessInfo = self->_destinationProcessInfo;
  self->_destinationProcessInfo = 0;

  destinationItemCollection = self->_destinationItemCollection;
  self->_destinationItemCollection = 0;
}

- (id)_copyItemCollectionForDestinationWithFilter:(id)filter
{
  filterCopy = filter;
  if (self->_destinationProcessInfo)
  {
    [(PBItemCollection *)self->_sourceItemCollection originatorDataOwner];
    bundleID = [(DRProcessInfo *)self->_sourceProcessInfo bundleID];
    bundleID2 = [(DRProcessInfo *)self->_destinationProcessInfo bundleID];
    v7 = _UIDropAllowedBetweenApps();

    if (v7)
    {
      copyWithDoNothingLoaders = [(PBItemCollection *)self->_sourceItemCollection copyWithDoNothingLoaders];
      items = [(PBItemCollection *)self->_sourceItemCollection items];
      v10 = [items count];

      if (v10)
      {
        v11 = 0;
        do
        {
          items2 = [(PBItemCollection *)self->_sourceItemCollection items];
          v13 = [items2 objectAtIndexedSubscript:v11];

          items3 = [copyWithDoNothingLoaders items];
          v15 = [items3 objectAtIndexedSubscript:v11];

          [(DRDataTransferSession *)self _setupItem:v15 forLoadingFromSourceItem:v13 destination:self->_destinationProcessInfo];
          ++v11;
          items4 = [(PBItemCollection *)self->_sourceItemCollection items];
          v17 = [items4 count];
        }

        while (v11 < v17);
      }
    }

    else
    {
      v18 = [NSMutableArray alloc];
      items5 = [(PBItemCollection *)self->_sourceItemCollection items];
      v20 = [v18 initWithCapacity:{objc_msgSend(items5, "count")}];

      items6 = [(PBItemCollection *)self->_sourceItemCollection items];
      v22 = [items6 count];

      if (v22)
      {
        v23 = 0;
        do
        {
          v24 = objc_alloc_init(PBItem);
          [v20 addObject:v24];

          ++v23;
          items7 = [(PBItemCollection *)self->_sourceItemCollection items];
          v26 = [items7 count];
        }

        while (v23 < v26);
      }

      copyWithDoNothingLoaders = [(PBItemCollection *)self->_sourceItemCollection copyWithItems:v20];
    }
  }

  else
  {
    copyWithDoNothingLoaders = 0;
  }

  return copyWithDoNothingLoaders;
}

- (id)destinationDataProviderEndpoint
{
  [(PBItemCollection *)self->_sourceItemCollection originatorDataOwner];
  bundleID = [(DRProcessInfo *)self->_sourceProcessInfo bundleID];
  bundleID2 = [(DRProcessInfo *)self->_destinationProcessInfo bundleID];
  v5 = _UIDropAllowedBetweenApps();

  if (v5)
  {
    destinationItemCollection = [(DRDataTransferSession *)self destinationItemCollection];
    dataConsumersEndpoint = [destinationItemCollection dataConsumersEndpoint];
  }

  else
  {
    dataConsumersEndpoint = 0;
  }

  return dataConsumersEndpoint;
}

+ (BOOL)_shouldRestrictOpenInPlaceFor:(id)for destinationAuditToken:(id *)token
{
  forCopy = for;
  if (forCopy)
  {
    v6 = *&token->var0[4];
    v11[0] = *token->var0;
    v11[1] = v6;
    v7 = sub_100001E3C(v11, 0xD0000u);
    v8 = forCopy;
    v9 = !v7 && FPURLIsLocatedOnRemovableStorage() != 0;
    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_isRepresentationAllowed:(id)allowed forDestination:(id)destination
{
  allowedCopy = allowed;
  destinationCopy = destination;
  if (qword_1000635A8 != -1)
  {
    sub_100030000();
  }

  if (![destinationCopy isAppleProcess] || objc_msgSend(destinationCopy, "isAnotherDevice"))
  {
    v8 = qword_1000635A0;
    typeIdentifier = [allowedCopy typeIdentifier];
    LOBYTE(v8) = [v8 containsObject:typeIdentifier];

    if (v8)
    {
      goto LABEL_11;
    }
  }

  if (self->_filter && (v10 = (-[PBItemCollection originatorDataOwner](self->_sourceItemCollection, "originatorDataOwner") & 0xFFFFFFFFFFFFFFFELL) == 2, filter = self->_filter, [allowedCopy typeIdentifier], v12 = objc_claimAutoreleasedReturnValue(), LODWORD(v10) = filter[2](filter, v12, v10, self->_sourceProcessInfo, destinationCopy), v12, !v10))
  {
LABEL_11:
    v15 = 0;
  }

  else
  {
    visibility = [allowedCopy visibility];
    if (visibility == 1)
    {
      v14 = [destinationCopy isSameTeamAsSource:self->_sourceProcessInfo];
    }

    else
    {
      if (visibility != 3)
      {
        v15 = 1;
        goto LABEL_15;
      }

      v14 = [destinationCopy isSameProcessAsSource:self->_sourceProcessInfo];
    }

    v15 = v14;
  }

LABEL_15:

  return v15;
}

- (void)_setupItem:(id)item forLoadingFromSourceItem:(id)sourceItem destination:(id)destination
{
  itemCopy = item;
  val = sourceItem;
  destinationCopy = destination;
  if (qword_1000635B8 != -1)
  {
    sub_100030014();
  }

  metadata = [val metadata];
  v11 = [metadata mutableCopy];

  if (([destinationCopy isSameTeamAsSource:self->_sourceProcessInfo] & 1) == 0)
  {
    [v11 removeObjectsForKeys:qword_1000635B0];
  }

  v24 = v11;
  [itemCopy setMetadata:v11];
  objc_initWeak(&location, val);
  v26 = +[NSMutableArray array];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  representations = [itemCopy representations];
  v13 = [representations countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v13)
  {
    v14 = *v38;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(representations);
        }

        v16 = *(*(&v37 + 1) + 8 * i);
        typeIdentifier = [v16 typeIdentifier];
        if ([(DRDataTransferSession *)self _isRepresentationAllowed:v16 forDestination:destinationCopy])
        {
          objc_initWeak(&from, self);
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_100010558;
          v31[3] = &unk_100055230;
          objc_copyWeak(&v34, &location);
          v32 = typeIdentifier;
          objc_copyWeak(&v35, &from);
          v33 = destinationCopy;
          [v16 setLoaderBlock:v31];

          objc_destroyWeak(&v35);
          objc_destroyWeak(&v34);
          objc_destroyWeak(&from);
        }

        else
        {
          typeIdentifier2 = [v16 typeIdentifier];
          [v26 addObject:typeIdentifier2];
        }
      }

      v13 = [representations countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v13);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = v26;
  v20 = [v19 countByEnumeratingWithState:&v27 objects:v42 count:16];
  if (v20)
  {
    v21 = *v28;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v27 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          [itemCopy removeRepresentationOfType:v23];
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v27 objects:v42 count:16];
    }

    while (v20);
  }

  objc_destroyWeak(&location);
}

- (id)_registerRequestFromSourceItem:(id)item typeIdentifier:(id)identifier completionHandler:(id)handler
{
  itemCopy = item;
  identifierCopy = identifier;
  handlerCopy = handler;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100010FF0;
  v29 = sub_100011000;
  v30 = 0;
  v11 = DRLogTarget();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    uUID = [itemCopy UUID];
    *buf = 138412546;
    v32 = uUID;
    v33 = 2112;
    v34 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Registering request for item UUID %@, type: %@", buf, 0x16u);
  }

  v13 = sub_100011008();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001104C;
  block[3] = &unk_100055258;
  v20 = itemCopy;
  v21 = identifierCopy;
  v23 = handlerCopy;
  v24 = &v25;
  selfCopy = self;
  v14 = handlerCopy;
  v15 = identifierCopy;
  v16 = itemCopy;
  dispatch_sync(v13, block);

  v17 = v26[5];
  _Block_object_dispose(&v25, 8);

  return v17;
}

- (void)_transferQueue_scheduleNextTransfer
{
  v3 = DRLogTarget();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Checking for transfer requests to schedule.", buf, 2u);
  }

  if (qword_1000635E0 != -1)
  {
    sub_100030064();
  }

  if (byte_1000635E8 == 1)
  {
    v4 = sub_100012200();
  }

  else
  {
    v4 = 3;
  }

  if ([(NSMutableArray *)self->_transferQueue_requestsInProgress count]>= v4)
  {
    v7 = DRLogTarget();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v23 = [(NSMutableArray *)self->_transferQueue_requestsInProgress count];
      *buf = 134217984;
      v39 = v23;
      v24 = "There are already %lu requests in progress. Not scheduling any more.";
      v25 = v7;
      v26 = 12;
LABEL_32:
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, v24, buf, v26);
    }

LABEL_33:

    return;
  }

  v5 = (v4 - [(NSMutableArray *)self->_transferQueue_requestsInProgress count]);
  if (v5 > [(NSMutableArray *)self->_transferQueue_requestsQueue count])
  {
    v5 = [(NSMutableArray *)self->_transferQueue_requestsQueue count];
  }

  v6 = DRLogTarget();
  v7 = v6;
  if (!v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v24 = "Nothing to transfer.";
      v25 = v7;
      v26 = 2;
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v39 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Scheduling %lu items...", buf, 0xCu);
  }

  do
  {
    v8 = [(NSMutableArray *)self->_transferQueue_requestsQueue objectAtIndex:0];
    [(NSMutableArray *)self->_transferQueue_requestsQueue removeObjectAtIndex:0];
    typeIdentifier = [v8 typeIdentifier];
    sourceItem = [v8 sourceItem];
    uUID = [sourceItem UUID];

    sourceItem2 = [v8 sourceItem];
    v13 = [sourceItem2 representationConformingToType:typeIdentifier];

    v14 = DRLogTarget();
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v39 = typeIdentifier;
        v40 = 2112;
        v41 = uUID;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Scheduling load for type %@ from item UUID %@", buf, 0x16u);
      }

      [(NSMutableArray *)self->_transferQueue_requestsInProgress addObject:v8];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100011684;
      v33[3] = &unk_100055280;
      v34 = typeIdentifier;
      v35 = uUID;
      v16 = v8;
      v36 = v16;
      selfCopy = self;
      v17 = objc_retainBlock(v33);
      if (qword_1000635E0 != -1)
      {
        sub_10003008C();
      }

      if (byte_1000635E8 == 1 && (v21 = sub_1000123A4(), v21 >= 1.0))
      {
        v22 = v21;
        v18 = [NSProgress discreteProgressWithTotalUnitCount:100];
        v28 = [NSProgress discreteProgressWithTotalUnitCount:vcvtpd_s64_f64(v22 + v22)];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100011880;
        v30[3] = &unk_1000552D0;
        v31 = v28;
        v32 = v17;
        v29 = v28;
        v27 = [v13 loadWithCompletionHandler:v30];
        [v18 addChild:v27 withPendingUnitCount:10];
        [v18 addChild:v29 withPendingUnitCount:90];
      }

      else
      {
        v18 = [v13 loadWithCompletionHandler:v17];
      }

      progress = [v16 progress];
      [progress addChild:v18 withPendingUnitCount:100];

      v15 = v34;
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      typeIdentifier2 = [v8 typeIdentifier];
      *buf = 138412546;
      v39 = typeIdentifier2;
      v40 = 2112;
      v41 = uUID;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Could not find representation for type %@ in item UUID %@", buf, 0x16u);
    }

    --v5;
  }

  while (v5);
}

- (void)_transferQueue_sendDelegateCallbacksIfNeeded
{
  if (self->_transferQueue_canTellDelegateAboutFinishedTransfers)
  {
    v10 = v2;
    v11 = v3;
    if (self->_transferQueue_shouldSendBeganCallback)
    {
      v5 = DRLogTarget();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9[0] = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Data transfer session began.", v9, 2u);
      }

      self->_transferQueue_shouldSendBeganCallback = 0;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100011C30;
      block[3] = &unk_100054B50;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }

    if (self->_transferQueue_shouldSendFinishedCallback)
    {
      v6 = DRLogTarget();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9[0] = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Data transfer session ended.", v9, 2u);
      }

      self->_transferQueue_shouldSendFinishedCallback = 0;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100011CC8;
      v7[3] = &unk_100054B50;
      v7[4] = self;
      dispatch_async(&_dispatch_main_q, v7);
    }
  }
}

- (void)startSendingDelegateCallbacks
{
  v3 = sub_100011008();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011DE8;
  block[3] = &unk_100054B50;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)dataTransferMonitorBeganTransfers:(id)transfers
{
  v4 = sub_100011008();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011ED4;
  block[3] = &unk_100054B50;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)dataTransferMonitorFinishedTransfers:(id)transfers
{
  v4 = sub_100011008();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011F70;
  block[3] = &unk_100054B50;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)setDataProviderEndpoint:(id)endpoint auditToken:(id *)token
{
  [(PBItemCollection *)self->_sourceItemCollection setDataProviderEndpoint:endpoint];
  [(PBItemCollection *)self->_sourceItemCollection establishConnectionToDataProviderCompletionBlock:&stru_1000552F0];
  v6 = [DRProcessInfo alloc];
  v7 = *&token->var0[4];
  v10[0] = *token->var0;
  v10[1] = v7;
  v8 = [(DRProcessInfo *)v6 initWithAuditToken:v10];
  sourceProcessInfo = self->_sourceProcessInfo;
  self->_sourceProcessInfo = v8;
}

- (DRDataTransferSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end