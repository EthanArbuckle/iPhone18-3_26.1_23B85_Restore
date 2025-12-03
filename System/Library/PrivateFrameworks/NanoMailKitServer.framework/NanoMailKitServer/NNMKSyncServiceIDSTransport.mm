@interface NNMKSyncServiceIDSTransport
- (NNMKSyncServiceIDSTransport)initWithServiceName:(id)name queue:(id)queue delegate:(id)delegate;
- (NNMKSyncServiceTransportDelegate)delegate;
- (double)_timeIntervalFromTimeoutCategory:(unint64_t)category;
- (id)sendResourceAtURL:(id)l metadata:(id)metadata priority:(unint64_t)priority timeoutCategory:(unint64_t)category;
- (unint64_t)_connectivityState;
- (void)_handleConnectivityChange;
- (void)dealloc;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)serviceSpaceDidBecomeAvailable:(id)available;
@end

@implementation NNMKSyncServiceIDSTransport

- (NNMKSyncServiceIDSTransport)initWithServiceName:(id)name queue:(id)queue delegate:(id)delegate
{
  nameCopy = name;
  queueCopy = queue;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = NNMKSyncServiceIDSTransport;
  v12 = [(NNMKSyncServiceIDSTransport *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, delegateCopy);
    objc_storeStrong(&v13->_serviceName, name);
    v14 = [objc_alloc(MEMORY[0x277D18778]) initWithService:nameCopy];
    idsService = v13->_idsService;
    v13->_idsService = v14;

    [(IDSService *)v13->_idsService addDelegate:v13 queue:queueCopy];
    v13->_connectivityState = [(NNMKSyncServiceIDSTransport *)v13 _connectivityState];
  }

  return v13;
}

- (void)dealloc
{
  [(IDSService *)self->_idsService removeDelegate:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = NNMKSyncServiceIDSTransport;
  [(NNMKSyncServiceIDSTransport *)&v4 dealloc];
}

- (id)sendResourceAtURL:(id)l metadata:(id)metadata priority:(unint64_t)priority timeoutCategory:(unint64_t)category
{
  v37[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v11 = 200;
  if (priority == 100)
  {
    v11 = 100;
  }

  if (priority == 300)
  {
    v12 = 300;
  }

  else
  {
    v12 = v11;
  }

  idsService = self->_idsService;
  v14 = MEMORY[0x277CBEB98];
  v15 = *MEMORY[0x277D187E8];
  metadataCopy = metadata;
  v17 = [v14 setWithObject:v15];
  v18 = *MEMORY[0x277D18650];
  v36[0] = *MEMORY[0x277D18678];
  v36[1] = v18;
  v37[0] = MEMORY[0x277CBEC38];
  v19 = MEMORY[0x277CCABB0];
  [(NNMKSyncServiceIDSTransport *)self _timeIntervalFromTimeoutCategory:category];
  v20 = [v19 numberWithDouble:?];
  v37[1] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  v28 = 0;
  v29 = 0;
  [(IDSService *)idsService sendResourceAtURL:lCopy metadata:metadataCopy toDestinations:v17 priority:v12 options:v21 identifier:&v29 error:&v28];

  v22 = v29;
  v23 = v28;

  v24 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = self->_serviceName;
    *buf = 138543874;
    v31 = v22;
    v32 = 2114;
    v33 = lCopy;
    v34 = 2114;
    v35 = serviceName;
    _os_log_impl(&dword_25B19F000, v24, OS_LOG_TYPE_DEFAULT, "#IDS sent resource. (IDS Identifier: %{public}@, URL: %{public}@, Service: %{public}@)", buf, 0x20u);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  protobufCopy = protobuf;
  v10 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    outgoingResponseIdentifier = [context outgoingResponseIdentifier];
    type = [protobufCopy type];
    serviceName = self->_serviceName;
    v18 = 138543874;
    v19 = outgoingResponseIdentifier;
    v20 = 1024;
    v21 = type;
    v22 = 2114;
    v23 = serviceName;
    _os_log_impl(&dword_25B19F000, v11, OS_LOG_TYPE_DEFAULT, "#IDS received message. (IDS Identifier: %{public}@, Type: %d, Service: %{public}@)", &v18, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  data = [protobufCopy data];
  [WeakRetained syncServiceTransport:self didReadProtobufData:data type:{objc_msgSend(protobufCopy, "type")}];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  v25 = *MEMORY[0x277D85DE8];
  lCopy = l;
  metadataCopy = metadata;
  v13 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    outgoingResponseIdentifier = [context outgoingResponseIdentifier];
    serviceName = self->_serviceName;
    v19 = 138543874;
    v20 = outgoingResponseIdentifier;
    v21 = 2112;
    v22 = lCopy;
    v23 = 2114;
    v24 = serviceName;
    _os_log_impl(&dword_25B19F000, v14, OS_LOG_TYPE_DEFAULT, "#IDS received resource. (IDS Identifier: %{public}@, URL: %@, Service: %{public}@)", &v19, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncServiceTransport:self didRecieveDataAtURL:lCopy metadata:metadataCopy];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  if (!success)
  {
    errorCopy = error;
    identifierCopy = identifier;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    code = [errorCopy code];

    [WeakRetained syncServiceTransport:self didFailSendingProtobufWithIdentifier:identifierCopy errorCode:code];
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncServiceTransport:self didSendProtobufSuccessfullyWithIdentifier:identifierCopy];
}

- (void)serviceSpaceDidBecomeAvailable:(id)available
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncServiceTransportDidReportSpaceBecameAvailable:self];
}

- (void)_handleConnectivityChange
{
  _connectivityState = [(NNMKSyncServiceIDSTransport *)self _connectivityState];
  if (_connectivityState != self->_connectivityState)
  {
    self->_connectivityState = _connectivityState;
    delegate = [(NNMKSyncServiceIDSTransport *)self delegate];
    [delegate syncServiceTransportDidChangeConnectivity:self];
  }
}

- (unint64_t)_connectivityState
{
  v32 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  devices = [(IDSService *)self->_idsService devices];
  v3 = [devices countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(devices);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        if ([v7 isDefaultPairedDevice])
        {
          v9 = __connected;
          if (v9 != [v7 isConnected] || (v10 = __nearby, v10 != objc_msgSend(v7, "isNearby")) || (v11 = __cloudConnected, v11 != objc_msgSend(v7, "isCloudConnected")))
          {
            __connected = [v7 isConnected];
            __nearby = [v7 isNearby];
            __cloudConnected = [v7 isCloudConnected];
            v12 = qword_28144D620;
            if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
            {
              v13 = v12;
              isConnected = [v7 isConnected];
              isNearby = [v7 isNearby];
              isCloudConnected = [v7 isCloudConnected];
              *buf = 134218496;
              v26 = isConnected;
              v27 = 2048;
              v28 = isNearby;
              v29 = 2048;
              v30 = isCloudConnected;
              _os_log_impl(&dword_25B19F000, v13, OS_LOG_TYPE_DEFAULT, "#Connectivity IDS connectivity state. Connected: %lu, Nearby: %lu, Cloud Connected: %lu", buf, 0x20u);
            }
          }

          isConnected2 = [v7 isConnected];
          isNearby2 = [v7 isNearby];
          if (isConnected2)
          {
            if (isNearby2)
            {
              v8 = 2;
            }

            else if ([v7 isCloudConnected])
            {
              v8 = 4;
            }

            else
            {
              v8 = 3;
            }
          }

          else
          {
            v8 = isNearby2;
          }

          goto LABEL_22;
        }
      }

      v4 = [devices countByEnumeratingWithState:&v21 objects:v31 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_22:

  v19 = *MEMORY[0x277D85DE8];
  return v8;
}

- (double)_timeIntervalFromTimeoutCategory:(unint64_t)category
{
  result = 60.0;
  if (category == 1)
  {
    result = 1800.0;
  }

  if (category == 2)
  {
    return 3600.0;
  }

  return result;
}

- (NNMKSyncServiceTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end