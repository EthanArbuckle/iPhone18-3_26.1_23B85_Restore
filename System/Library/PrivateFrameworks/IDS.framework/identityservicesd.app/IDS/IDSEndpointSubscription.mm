@interface IDSEndpointSubscription
- (IDSEndpointSubscription)initWithServiceIdentifier:(id)identifier localURI:(id)i subscribedURIs:(id)is queue:(id)queue;
- (id)description;
- (id)resolvedEndpoints;
- (void)_noteSourceDidDiscoverEndpointMap:(id)map forLocalURI:(id)i;
- (void)_registerEndpointQueryCompletionBlock;
- (void)_signalDidUpdateEndpoints;
- (void)dealloc;
- (void)initializeWithCompletion:(id)completion;
@end

@implementation IDSEndpointSubscription

- (IDSEndpointSubscription)initWithServiceIdentifier:(id)identifier localURI:(id)i subscribedURIs:(id)is queue:(id)queue
{
  identifierCopy = identifier;
  iCopy = i;
  isCopy = is;
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = IDSEndpointSubscription;
  v15 = [(IDSEndpointSubscription *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, queue);
    objc_storeStrong(&v16->_serviceIdentifier, identifier);
    objc_storeStrong(&v16->_localURI, i);
    objc_storeStrong(&v16->_subscribedURIs, is);
    v17 = objc_alloc_init(NSMutableDictionary);
    endpointMap = v16->_endpointMap;
    v16->_endpointMap = v17;

    v19 = +[NSString stringGUID];
    peerIDManagerToken = v16->_peerIDManagerToken;
    v16->_peerIDManagerToken = v19;
  }

  return v16;
}

- (void)dealloc
{
  v3 = +[IDSPeerIDManager sharedInstance];
  [v3 removeEndpointQueryCompletionBlockForToken:self->_peerIDManagerToken];

  v4.receiver = self;
  v4.super_class = IDSEndpointSubscription;
  [(IDSEndpointSubscription *)&v4 dealloc];
}

- (id)description
{
  v3 = objc_opt_class();
  serviceIdentifier = [(IDSEndpointSubscription *)self serviceIdentifier];
  localURI = [(IDSEndpointSubscription *)self localURI];
  subscribedURIs = [(IDSEndpointSubscription *)self subscribedURIs];
  v7 = [NSString stringWithFormat:@"<%@: %p serviceIdentifier: %@, localURI: %@, subscribedURIs: %@>", v3, self, serviceIdentifier, localURI, subscribedURIs];

  return v7;
}

- (void)initializeWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(IDSEndpointSubscription *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[IDSFoundationLog query];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Initializing endpoint subscription {self: %@}", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  peerIDManager = [(IDSEndpointSubscription *)self peerIDManager];
  subscribedURIs = [(IDSEndpointSubscription *)self subscribedURIs];
  serviceIdentifier = [(IDSEndpointSubscription *)self serviceIdentifier];
  localURI = [(IDSEndpointSubscription *)self localURI];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100323508;
  v13[3] = &unk_100BD74A0;
  objc_copyWeak(&v15, buf);
  v13[4] = self;
  v11 = completionCopy;
  v14 = v11;
  queue2 = [(IDSEndpointSubscription *)self queue];
  [peerIDManager endpointsForURIs:subscribedURIs serviceIdentifier:serviceIdentifier localURI:localURI completion:v13 queue:queue2];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (id)resolvedEndpoints
{
  queue = [(IDSEndpointSubscription *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  endpointMap = [(IDSEndpointSubscription *)self endpointMap];
  allValues = [endpointMap allValues];

  v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        [v4 addObjectsFromArray:*(*(&v12 + 1) + 8 * i)];
      }

      v8 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v4;
}

- (void)_registerEndpointQueryCompletionBlock
{
  queue = [(IDSEndpointSubscription *)self queue];
  dispatch_assert_queue_V2(queue);

  objc_initWeak(&location, self);
  peerIDManager = [(IDSEndpointSubscription *)self peerIDManager];
  objc_copyWeak(&v8, &location);
  v5 = [(IDSEndpointSubscription *)self peerIDManagerToken:_NSConcreteStackBlock];
  queue2 = [(IDSEndpointSubscription *)self queue];
  [peerIDManager addEndpointQueryCompletionBlock:&v7 forToken:v5 queue:queue2];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_noteSourceDidDiscoverEndpointMap:(id)map forLocalURI:(id)i
{
  mapCopy = map;
  iCopy = i;
  queue = [(IDSEndpointSubscription *)self queue];
  dispatch_assert_queue_V2(queue);

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = mapCopy;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (!v10)
  {

    goto LABEL_23;
  }

  v11 = v10;
  v22 = 0;
  v12 = *v24;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v24 != v12)
      {
        objc_enumerationMutation(v9);
      }

      if (iCopy)
      {
        v14 = *(*(&v23 + 1) + 8 * i);
        if (v14)
        {
          localURI = [(IDSEndpointSubscription *)self localURI];
          if ([iCopy isEqual:localURI])
          {
            subscribedURIs = [(IDSEndpointSubscription *)self subscribedURIs];
            v17 = [subscribedURIs containsObject:v14];

            if (!v17)
            {
              continue;
            }

            localURI = [v9 objectForKeyedSubscript:v14];
            v18 = localURI;
            if (!localURI)
            {
              v18 = objc_alloc_init(NSArray);
              v21 = v18;
            }

            endpointMap = [(IDSEndpointSubscription *)self endpointMap];
            [endpointMap setObject:v18 forKeyedSubscript:v14];

            if (!localURI)
            {
            }

            v22 = 1;
          }
        }
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v23 objects:v33 count:16];
  }

  while (v11);

  if (v22)
  {
    v20 = +[IDSFoundationLog query];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy = self;
      v29 = 2112;
      v30 = iCopy;
      v31 = 2112;
      v32 = v9;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Endpoints subscription source did discover relevant endpoints {self: %@, localURI: %@@, endpointMap: %@}", buf, 0x20u);
    }

    [(IDSEndpointSubscription *)self _signalDidUpdateEndpoints];
  }

LABEL_23:
}

- (void)_signalDidUpdateEndpoints
{
  queue = [(IDSEndpointSubscription *)self queue];
  dispatch_assert_queue_V2(queue);

  resolvedEndpointsDidUpdateHandler = [(IDSEndpointSubscription *)self resolvedEndpointsDidUpdateHandler];

  if (resolvedEndpointsDidUpdateHandler)
  {
    resolvedEndpointsDidUpdateHandler2 = [(IDSEndpointSubscription *)self resolvedEndpointsDidUpdateHandler];
    resolvedEndpoints = [(IDSEndpointSubscription *)self resolvedEndpoints];
    resolvedEndpointsDidUpdateHandler2[2](resolvedEndpointsDidUpdateHandler2, resolvedEndpoints);
  }
}

@end