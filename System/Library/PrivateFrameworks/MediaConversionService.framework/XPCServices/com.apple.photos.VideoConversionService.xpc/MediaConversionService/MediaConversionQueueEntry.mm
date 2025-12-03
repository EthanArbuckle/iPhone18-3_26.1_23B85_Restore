@interface MediaConversionQueueEntry
- (BOOL)allRequestsAreBackground;
- (BOOL)allRequestsAreOptional;
- (BOOL)allRequestsHaveRequestPriority:(int64_t)priority;
- (BOOL)clientRequestIsDuplicate:(id)duplicate identicalDestination:(BOOL *)destination;
- (MediaConversionQueueEntry)initWithIdentifier:(id)identifier initialConversionOptions:(id)options;
- (NSArray)clientRequestsSnapshot;
- (id)anyDestinationURLCollection;
- (id)clientRequestForIdentifier:(id)identifier;
- (id)description;
- (id)removeAndReturnClientRequestWithIdentifier:(id)identifier remainingRequestCount:(int64_t *)count;
- (id)requestIdentifiersForConnectionIdentifier:(id)identifier;
- (int64_t)compareProcessingOrderToEntry:(id)entry;
- (void)addClientRequest:(id)request;
- (void)dealloc;
- (void)videoConversionTask:(id)task didUpdateFractionCompleted:(double)completed;
- (void)withLockEnumerateClientRequests:(id)requests;
@end

@implementation MediaConversionQueueEntry

- (BOOL)allRequestsAreBackground
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100008A98;
  v4[3] = &unk_10003D008;
  v4[4] = &v5;
  [(MediaConversionQueueEntry *)self withLockEnumerateClientRequests:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)allRequestsAreOptional
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100008BC8;
  v4[3] = &unk_10003D008;
  v4[4] = &v5;
  [(MediaConversionQueueEntry *)self withLockEnumerateClientRequests:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)allRequestsHaveRequestPriority:(int64_t)priority
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100008CF0;
  v5[3] = &unk_10003D098;
  v5[4] = &v6;
  v5[5] = priority;
  [(MediaConversionQueueEntry *)self withLockEnumerateClientRequests:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)compareProcessingOrderToEntry:(id)entry
{
  entryCopy = entry;
  if (!entryCopy)
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:300 description:{@"Invalid parameter not satisfying: %@", @"otherEntry"}];
  }

  clientRequestsSnapshot = [(MediaConversionQueueEntry *)self clientRequestsSnapshot];
  v7 = [clientRequestsSnapshot sortedArrayUsingComparator:&stru_10003D070];

  clientRequestsSnapshot2 = [entryCopy clientRequestsSnapshot];
  v9 = [clientRequestsSnapshot2 sortedArrayUsingComparator:&stru_10003D070];

  firstObject = [v7 firstObject];
  firstObject2 = [v9 firstObject];
  v12 = firstObject2;
  v13 = 0;
  if (firstObject && firstObject2)
  {
    requestTracker = [firstObject requestTracker];
    requestTracker2 = [v12 requestTracker];
    v13 = [requestTracker compare:requestTracker2];
  }

  return v13;
}

- (NSArray)clientRequestsSnapshot
{
  os_unfair_lock_lock(&self->_queueEntryStateLock);
  v3 = [(NSMutableArray *)self->_clientRequests copy];
  os_unfair_lock_unlock(&self->_queueEntryStateLock);

  return v3;
}

- (void)videoConversionTask:(id)task didUpdateFractionCompleted:(double)completed
{
  taskCopy = task;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  clientRequestsSnapshot = [(MediaConversionQueueEntry *)self clientRequestsSnapshot];
  v8 = [clientRequestsSnapshot countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(clientRequestsSnapshot);
        }

        [*(*(&v12 + 1) + 8 * v11) videoConversionTask:taskCopy didUpdateFractionCompleted:completed];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [clientRequestsSnapshot countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (id)requestIdentifiersForConnectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  +[NSMutableArray array];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100009178;
  v10[3] = &unk_10003D030;
  v5 = v11 = identifierCopy;
  v12 = v5;
  v6 = identifierCopy;
  [(MediaConversionQueueEntry *)self withLockEnumerateClientRequests:v10];
  v7 = v12;
  v8 = v5;

  return v5;
}

- (id)anyDestinationURLCollection
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100009318;
  v9 = sub_100009328;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100009330;
  v4[3] = &unk_10003D008;
  v4[4] = &v5;
  [(MediaConversionQueueEntry *)self withLockEnumerateClientRequests:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)clientRequestForIdentifier:(id)identifier
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100009318;
  v14 = sub_100009328;
  v15 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000094CC;
  v7[3] = &unk_10003CFE0;
  identifierCopy = identifier;
  v8 = identifierCopy;
  v9 = &v10;
  [(MediaConversionQueueEntry *)self withLockEnumerateClientRequests:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (id)removeAndReturnClientRequestWithIdentifier:(id)identifier remainingRequestCount:(int64_t *)count
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_queueEntryStateLock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_clientRequests;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        identifier = [v12 identifier];
        v14 = [identifier isEqualToString:identifierCopy];

        if (v14)
        {
          v15 = v12;

          if (v15)
          {
            [(NSMutableArray *)self->_clientRequests removeObject:v15];
            *count = [(NSMutableArray *)self->_clientRequests count];
          }

          goto LABEL_12;
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_12:
  os_unfair_lock_unlock(&self->_queueEntryStateLock);

  return v15;
}

- (BOOL)clientRequestIsDuplicate:(id)duplicate identicalDestination:(BOOL *)destination
{
  duplicateCopy = duplicate;
  os_unfair_lock_lock(&self->_queueEntryStateLock);
  firstObject = [(NSMutableArray *)self->_clientRequests firstObject];
  v8 = firstObject;
  if (firstObject)
  {
    requestTracker = [firstObject requestTracker];
    requestTracker2 = [duplicateCopy requestTracker];
    v11 = [requestTracker isDuplicateOfRequestWithRequestTracker:requestTracker2 identicalDestinationURL:destination];
  }

  else
  {
    v11 = 0;
  }

  os_unfair_lock_unlock(&self->_queueEntryStateLock);

  return v11;
}

- (void)withLockEnumerateClientRequests:(id)requests
{
  requestsCopy = requests;
  os_unfair_lock_lock(&self->_queueEntryStateLock);
  clientRequests = self->_clientRequests;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000989C;
  v7[3] = &unk_10003CF78;
  v8 = requestsCopy;
  v6 = requestsCopy;
  [(NSMutableArray *)clientRequests enumerateObjectsUsingBlock:v7];
  os_unfair_lock_unlock(&self->_queueEntryStateLock);
}

- (void)addClientRequest:(id)request
{
  requestCopy = request;
  if (!requestCopy)
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"clientRequest"}];
  }

  os_unfair_lock_lock(&self->_queueEntryStateLock);
  [(NSMutableArray *)self->_clientRequests addObject:requestCopy];
  [requestCopy setRequestQueueEntry:self];
  os_unfair_lock_unlock(&self->_queueEntryStateLock);
}

- (id)description
{
  os_unfair_lock_lock(&self->_queueEntryStateLock);
  identifier = self->_identifier;
  v4 = [(NSMutableArray *)self->_clientRequests valueForKey:@"description"];
  v5 = [v4 componentsJoinedByString:@" "];
  v6 = [NSString stringWithFormat:@"<MediaConversionQueueEntry %@ (%p) for requests [%@]>", identifier, self, v5];

  os_unfair_lock_unlock(&self->_queueEntryStateLock);

  return v6;
}

- (void)dealloc
{
  if (self->_temporaryFilesParentDirectoryURL)
  {
    v3 = +[NSFileManager defaultManager];
    temporaryFilesParentDirectoryURL = self->_temporaryFilesParentDirectoryURL;
    v9 = 0;
    v5 = [v3 removeItemAtURL:temporaryFilesParentDirectoryURL error:&v9];
    v6 = v9;
    if ((v5 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v7 = self->_temporaryFilesParentDirectoryURL;
      *buf = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v6;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to delete temporary files directory %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v8.receiver = self;
  v8.super_class = MediaConversionQueueEntry;
  [(MediaConversionQueueEntry *)&v8 dealloc];
}

- (MediaConversionQueueEntry)initWithIdentifier:(id)identifier initialConversionOptions:(id)options
{
  identifierCopy = identifier;
  optionsCopy = options;
  v16.receiver = self;
  v16.super_class = MediaConversionQueueEntry;
  v9 = [(MediaConversionQueueEntry *)&v16 init];
  if (v9)
  {
    v10 = +[NSMutableArray array];
    clientRequests = v9->_clientRequests;
    v9->_clientRequests = v10;

    v9->_queueEntryStateLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v9->_initialRequestConversionOptions, options);
    identifierCopy = [NSString stringWithFormat:@"com.apple.photos.media-conversion.queue-entry-%@", identifierCopy];
    [identifierCopy UTF8String];
    v13 = os_transaction_create();
    transaction = v9->_transaction;
    v9->_transaction = v13;
  }

  return v9;
}

@end