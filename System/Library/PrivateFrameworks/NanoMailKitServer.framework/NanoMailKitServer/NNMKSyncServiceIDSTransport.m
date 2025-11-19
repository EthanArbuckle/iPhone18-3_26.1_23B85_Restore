@interface NNMKSyncServiceIDSTransport
- (NNMKSyncServiceIDSTransport)initWithServiceName:(id)a3 queue:(id)a4 delegate:(id)a5;
- (NNMKSyncServiceTransportDelegate)delegate;
- (double)_timeIntervalFromTimeoutCategory:(unint64_t)a3;
- (id)sendResourceAtURL:(id)a3 metadata:(id)a4 priority:(unint64_t)a5 timeoutCategory:(unint64_t)a6;
- (unint64_t)_connectivityState;
- (void)_handleConnectivityChange;
- (void)dealloc;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)serviceSpaceDidBecomeAvailable:(id)a3;
@end

@implementation NNMKSyncServiceIDSTransport

- (NNMKSyncServiceIDSTransport)initWithServiceName:(id)a3 queue:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = NNMKSyncServiceIDSTransport;
  v12 = [(NNMKSyncServiceIDSTransport *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, v11);
    objc_storeStrong(&v13->_serviceName, a3);
    v14 = [objc_alloc(MEMORY[0x277D18778]) initWithService:v9];
    idsService = v13->_idsService;
    v13->_idsService = v14;

    [(IDSService *)v13->_idsService addDelegate:v13 queue:v10];
    v13->_connectivityState = [(NNMKSyncServiceIDSTransport *)v13 _connectivityState];
  }

  return v13;
}

- (void)dealloc
{
  [(IDSService *)self->_idsService removeDelegate:self];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NNMKSyncServiceIDSTransport;
  [(NNMKSyncServiceIDSTransport *)&v4 dealloc];
}

- (id)sendResourceAtURL:(id)a3 metadata:(id)a4 priority:(unint64_t)a5 timeoutCategory:(unint64_t)a6
{
  v37[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = 200;
  if (a5 == 100)
  {
    v11 = 100;
  }

  if (a5 == 300)
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
  v16 = a4;
  v17 = [v14 setWithObject:v15];
  v18 = *MEMORY[0x277D18650];
  v36[0] = *MEMORY[0x277D18678];
  v36[1] = v18;
  v37[0] = MEMORY[0x277CBEC38];
  v19 = MEMORY[0x277CCABB0];
  [(NNMKSyncServiceIDSTransport *)self _timeIntervalFromTimeoutCategory:a6];
  v20 = [v19 numberWithDouble:?];
  v37[1] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  v28 = 0;
  v29 = 0;
  [(IDSService *)idsService sendResourceAtURL:v10 metadata:v16 toDestinations:v17 priority:v12 options:v21 identifier:&v29 error:&v28];

  v22 = v29;
  v23 = v28;

  v24 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = self->_serviceName;
    *buf = 138543874;
    v31 = v22;
    v32 = 2114;
    v33 = v10;
    v34 = 2114;
    v35 = serviceName;
    _os_log_impl(&dword_25B19F000, v24, OS_LOG_TYPE_DEFAULT, "#IDS sent resource. (IDS Identifier: %{public}@, URL: %{public}@, Service: %{public}@)", buf, 0x20u);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [a7 outgoingResponseIdentifier];
    v13 = [v9 type];
    serviceName = self->_serviceName;
    v18 = 138543874;
    v19 = v12;
    v20 = 1024;
    v21 = v13;
    v22 = 2114;
    v23 = serviceName;
    _os_log_impl(&dword_25B19F000, v11, OS_LOG_TYPE_DEFAULT, "#IDS received message. (IDS Identifier: %{public}@, Type: %d, Service: %{public}@)", &v18, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v16 = [v9 data];
  [WeakRetained syncServiceTransport:self didReadProtobufData:v16 type:{objc_msgSend(v9, "type")}];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8
{
  v25 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = a6;
  v13 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [a8 outgoingResponseIdentifier];
    serviceName = self->_serviceName;
    v19 = 138543874;
    v20 = v15;
    v21 = 2112;
    v22 = v11;
    v23 = 2114;
    v24 = serviceName;
    _os_log_impl(&dword_25B19F000, v14, OS_LOG_TYPE_DEFAULT, "#IDS received resource. (IDS Identifier: %{public}@, URL: %@, Service: %{public}@)", &v19, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncServiceTransport:self didRecieveDataAtURL:v11 metadata:v12];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  if (!a6)
  {
    v10 = a7;
    v11 = a5;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = [v10 code];

    [WeakRetained syncServiceTransport:self didFailSendingProtobufWithIdentifier:v11 errorCode:v12];
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6
{
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncServiceTransport:self didSendProtobufSuccessfullyWithIdentifier:v7];
}

- (void)serviceSpaceDidBecomeAvailable:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncServiceTransportDidReportSpaceBecameAvailable:self];
}

- (void)_handleConnectivityChange
{
  v3 = [(NNMKSyncServiceIDSTransport *)self _connectivityState];
  if (v3 != self->_connectivityState)
  {
    self->_connectivityState = v3;
    v4 = [(NNMKSyncServiceIDSTransport *)self delegate];
    [v4 syncServiceTransportDidChangeConnectivity:self];
  }
}

- (unint64_t)_connectivityState
{
  v32 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = [(IDSService *)self->_idsService devices];
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v31 count:16];
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
          objc_enumerationMutation(v2);
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
              v14 = [v7 isConnected];
              v15 = [v7 isNearby];
              v16 = [v7 isCloudConnected];
              *buf = 134218496;
              v26 = v14;
              v27 = 2048;
              v28 = v15;
              v29 = 2048;
              v30 = v16;
              _os_log_impl(&dword_25B19F000, v13, OS_LOG_TYPE_DEFAULT, "#Connectivity IDS connectivity state. Connected: %lu, Nearby: %lu, Cloud Connected: %lu", buf, 0x20u);
            }
          }

          v17 = [v7 isConnected];
          v18 = [v7 isNearby];
          if (v17)
          {
            if (v18)
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
            v8 = v18;
          }

          goto LABEL_22;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v21 objects:v31 count:16];
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

- (double)_timeIntervalFromTimeoutCategory:(unint64_t)a3
{
  result = 60.0;
  if (a3 == 1)
  {
    result = 1800.0;
  }

  if (a3 == 2)
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