@interface ClientRequest
- (MediaConversionQueueEntry)requestQueueEntry;
- (NSString)identifier;
- (NSXPCConnection)connection;
- (id)description;
- (void)videoConversionTask:(id)task didUpdateFractionCompleted:(double)completed;
@end

@implementation ClientRequest

- (MediaConversionQueueEntry)requestQueueEntry
{
  WeakRetained = objc_loadWeakRetained(&self->_requestQueueEntry);

  return WeakRetained;
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (NSString)identifier
{
  requestTracker = self->_requestTracker;
  if (!requestTracker)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:145 description:@"Unexpected nil request tracker"];

    requestTracker = self->_requestTracker;
  }

  return [(MediaConversionRequestTracker *)requestTracker requestIdentifier];
}

- (id)description
{
  requestNumber = [(MediaConversionRequestTracker *)self->_requestTracker requestNumber];
  requestIdentifier = [(MediaConversionRequestTracker *)self->_requestTracker requestIdentifier];
  effectivePriority = [(MediaConversionRequestTracker *)self->_requestTracker effectivePriority];
  if (effectivePriority > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_10003D378[effectivePriority];
  }

  v7 = v6;
  v8 = [NSString stringWithFormat:@"<Request #%lu (%p) %@ %@>", requestNumber, self, requestIdentifier, v7];

  return v8;
}

- (void)videoConversionTask:(id)task didUpdateFractionCompleted:(double)completed
{
  if ([(ClientRequest *)self wantsProgress])
  {
    identifier = [(ClientRequest *)self identifier];
    if (!identifier)
    {
      v13 = +[NSAssertionHandler currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:124 description:@"Unexpected missing job identifier"];
    }

    v8 = +[NSMutableDictionary dictionary];
    [v8 setObject:identifier forKeyedSubscript:@"PAMediaConversionServiceJobIdentifierKey"];
    if (__fpclassifyd(completed) != 1)
    {
      v9 = [NSNumber numberWithDouble:completed];
      [v8 setObject:v9 forKeyedSubscript:@"PAMediaConversionServiceProgressKey"];
    }

    connection = [(ClientRequest *)self connection];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000087C0;
    v14[3] = &unk_10003CF50;
    v15 = identifier;
    v11 = identifier;
    v12 = [connection remoteObjectProxyWithErrorHandler:v14];
    [v12 updateProgress:v8];
  }
}

@end