@interface IDSEndpointSubscription
- (IDSEndpointSubscription)initWithServiceIdentifier:(id)a3 localURI:(id)a4 subscribedURIs:(id)a5 queue:(id)a6;
- (id)description;
- (id)resolvedEndpoints;
- (void)_noteSourceDidDiscoverEndpointMap:(id)a3 forLocalURI:(id)a4;
- (void)_registerEndpointQueryCompletionBlock;
- (void)_signalDidUpdateEndpoints;
- (void)dealloc;
- (void)initializeWithCompletion:(id)a3;
@end

@implementation IDSEndpointSubscription

- (IDSEndpointSubscription)initWithServiceIdentifier:(id)a3 localURI:(id)a4 subscribedURIs:(id)a5 queue:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = IDSEndpointSubscription;
  v15 = [(IDSEndpointSubscription *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, a6);
    objc_storeStrong(&v16->_serviceIdentifier, a3);
    objc_storeStrong(&v16->_localURI, a4);
    objc_storeStrong(&v16->_subscribedURIs, a5);
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
  v4 = [(IDSEndpointSubscription *)self serviceIdentifier];
  v5 = [(IDSEndpointSubscription *)self localURI];
  v6 = [(IDSEndpointSubscription *)self subscribedURIs];
  v7 = [NSString stringWithFormat:@"<%@: %p serviceIdentifier: %@, localURI: %@, subscribedURIs: %@>", v3, self, v4, v5, v6];

  return v7;
}

- (void)initializeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSEndpointSubscription *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[IDSFoundationLog query];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Initializing endpoint subscription {self: %@}", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v7 = [(IDSEndpointSubscription *)self peerIDManager];
  v8 = [(IDSEndpointSubscription *)self subscribedURIs];
  v9 = [(IDSEndpointSubscription *)self serviceIdentifier];
  v10 = [(IDSEndpointSubscription *)self localURI];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100323508;
  v13[3] = &unk_100BD74A0;
  objc_copyWeak(&v15, buf);
  v13[4] = self;
  v11 = v4;
  v14 = v11;
  v12 = [(IDSEndpointSubscription *)self queue];
  [v7 endpointsForURIs:v8 serviceIdentifier:v9 localURI:v10 completion:v13 queue:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (id)resolvedEndpoints
{
  v3 = [(IDSEndpointSubscription *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(IDSEndpointSubscription *)self endpointMap];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        [v4 addObjectsFromArray:*(*(&v12 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v4;
}

- (void)_registerEndpointQueryCompletionBlock
{
  v3 = [(IDSEndpointSubscription *)self queue];
  dispatch_assert_queue_V2(v3);

  objc_initWeak(&location, self);
  v4 = [(IDSEndpointSubscription *)self peerIDManager];
  objc_copyWeak(&v8, &location);
  v5 = [(IDSEndpointSubscription *)self peerIDManagerToken:_NSConcreteStackBlock];
  v6 = [(IDSEndpointSubscription *)self queue];
  [v4 addEndpointQueryCompletionBlock:&v7 forToken:v5 queue:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_noteSourceDidDiscoverEndpointMap:(id)a3 forLocalURI:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSEndpointSubscription *)self queue];
  dispatch_assert_queue_V2(v8);

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v6;
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

      if (v7)
      {
        v14 = *(*(&v23 + 1) + 8 * i);
        if (v14)
        {
          v15 = [(IDSEndpointSubscription *)self localURI];
          if ([v7 isEqual:v15])
          {
            v16 = [(IDSEndpointSubscription *)self subscribedURIs];
            v17 = [v16 containsObject:v14];

            if (!v17)
            {
              continue;
            }

            v15 = [v9 objectForKeyedSubscript:v14];
            v18 = v15;
            if (!v15)
            {
              v18 = objc_alloc_init(NSArray);
              v21 = v18;
            }

            v19 = [(IDSEndpointSubscription *)self endpointMap];
            [v19 setObject:v18 forKeyedSubscript:v14];

            if (!v15)
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
      v28 = self;
      v29 = 2112;
      v30 = v7;
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
  v3 = [(IDSEndpointSubscription *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(IDSEndpointSubscription *)self resolvedEndpointsDidUpdateHandler];

  if (v4)
  {
    v6 = [(IDSEndpointSubscription *)self resolvedEndpointsDidUpdateHandler];
    v5 = [(IDSEndpointSubscription *)self resolvedEndpoints];
    v6[2](v6, v5);
  }
}

@end