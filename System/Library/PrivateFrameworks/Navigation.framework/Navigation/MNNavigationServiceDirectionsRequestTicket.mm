@interface MNNavigationServiceDirectionsRequestTicket
- (MNNavigationServiceDirectionsRequestTicket)initWithProxy:(id)proxy request:(id)request;
- (void)cancel;
- (void)submitWithHandler:(id)handler;
@end

@implementation MNNavigationServiceDirectionsRequestTicket

- (void)cancel
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    requestIdentifier = self->_requestIdentifier;
    v6 = 138412290;
    v7 = requestIdentifier;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "cancelDirectionsRequestWithIdentifier: %@", &v6, 0xCu);
  }

  [(MNNavigationClientProxy *)self->_proxy cancelDirectionsRequestWithIdentifier:self->_requestIdentifier];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)submitWithHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    requestIdentifier = self->_requestIdentifier;
    *buf = 138412290;
    v16 = requestIdentifier;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "requestDirections: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  proxy = self->_proxy;
  request = self->_request;
  v9 = self->_requestIdentifier;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__MNNavigationServiceDirectionsRequestTicket_submitWithHandler___block_invoke;
  v12[3] = &unk_1E842AC48;
  objc_copyWeak(&v14, buf);
  v10 = handlerCopy;
  v13 = v10;
  [(MNNavigationClientProxy *)proxy requestDirections:request withIdentifier:v9 handler:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);

  v11 = *MEMORY[0x1E69E9840];
}

void __64__MNNavigationServiceDirectionsRequestTicket_submitWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [v3 request];
    v6 = WeakRetained[4];
    WeakRetained[4] = v5;

    v7 = [v3 response];
    v8 = WeakRetained[5];
    WeakRetained[5] = v7;

    v9 = [v3 traceRecordingData];
    v10 = WeakRetained[6];
    WeakRetained[6] = v9;
  }

  if (*(a1 + 32))
  {
    v11 = [v3 routeInfos];
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        v17 = 0;
        do
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v23 + 1) + 8 * v17) route];
          [v12 addObject:v18];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    v19 = *(a1 + 32);
    v20 = [v3 error];
    v21 = [v3 directionsError];
    (*(v19 + 16))(v19, v12, v20, v21);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (MNNavigationServiceDirectionsRequestTicket)initWithProxy:(id)proxy request:(id)request
{
  proxyCopy = proxy;
  requestCopy = request;
  v14.receiver = self;
  v14.super_class = MNNavigationServiceDirectionsRequestTicket;
  v9 = [(MNNavigationServiceDirectionsRequestTicket *)&v14 init];
  if (v9)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    requestIdentifier = v9->_requestIdentifier;
    v9->_requestIdentifier = uUID;

    objc_storeStrong(&v9->_proxy, proxy);
    objc_storeStrong(&v9->_request, request);
    v12 = v9;
  }

  return v9;
}

@end