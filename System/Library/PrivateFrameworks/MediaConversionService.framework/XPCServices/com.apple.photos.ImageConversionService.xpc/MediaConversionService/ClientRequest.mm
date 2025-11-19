@interface ClientRequest
- (MediaConversionQueueEntry)requestQueueEntry;
- (NSString)identifier;
- (NSXPCConnection)connection;
- (id)description;
- (void)videoConversionTask:(id)a3 didUpdateFractionCompleted:(double)a4;
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
  v3 = [(MediaConversionRequestTracker *)self->_requestTracker requestNumber];
  v4 = [(MediaConversionRequestTracker *)self->_requestTracker requestIdentifier];
  v5 = [(MediaConversionRequestTracker *)self->_requestTracker effectivePriority];
  if (v5 > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_10003DAF8[v5];
  }

  v7 = v6;
  v8 = [NSString stringWithFormat:@"<Request #%lu (%p) %@ %@>", v3, self, v4, v7];

  return v8;
}

- (void)videoConversionTask:(id)a3 didUpdateFractionCompleted:(double)a4
{
  if ([(ClientRequest *)self wantsProgress])
  {
    v7 = [(ClientRequest *)self identifier];
    if (!v7)
    {
      v13 = +[NSAssertionHandler currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"PAMediaConversionServiceSharedUtilitiesServiceSide.m" lineNumber:124 description:@"Unexpected missing job identifier"];
    }

    v8 = +[NSMutableDictionary dictionary];
    [v8 setObject:v7 forKeyedSubscript:@"PAMediaConversionServiceJobIdentifierKey"];
    if (__fpclassifyd(a4) != 1)
    {
      v9 = [NSNumber numberWithDouble:a4];
      [v8 setObject:v9 forKeyedSubscript:@"PAMediaConversionServiceProgressKey"];
    }

    v10 = [(ClientRequest *)self connection];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000EA94;
    v14[3] = &unk_10003D5F0;
    v15 = v7;
    v11 = v7;
    v12 = [v10 remoteObjectProxyWithErrorHandler:v14];
    [v12 updateProgress:v8];
  }
}

@end