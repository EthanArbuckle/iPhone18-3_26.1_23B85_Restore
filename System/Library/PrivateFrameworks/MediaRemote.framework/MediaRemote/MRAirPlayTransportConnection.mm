@interface MRAirPlayTransportConnection
- (BOOL)isValid;
- (MRAirPlayTransportConnection)initWithAPCommunicationChannel:(id)a3;
- (MRAirPlayTransportConnection)initWithOutputContextCommunicationChannel:(id)a3 outputContext:(id)a4;
- (MRAirPlayTransportConnection)initWithOutputDeviceCommunicationChannel:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (id)_init;
- (id)effectiveChannel;
- (unint64_t)_sendTransportData:(id)a3;
- (unint64_t)sendTransportData:(id)a3 options:(id)a4;
- (void)closeWithError:(id)a3;
- (void)communicationChannelDidClose:(id)a3;
- (void)ingestData:(id)a3;
@end

@implementation MRAirPlayTransportConnection

- (id)_init
{
  v10.receiver = self;
  v10.super_class = MRAirPlayTransportConnection;
  v2 = [(MRExternalDeviceTransportConnection *)&v10 initWithDataSource:self];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF00] now];
    dateCreated = v2->_dateCreated;
    v2->_dateCreated = v3;

    v5 = [MROSTransaction alloc];
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.mediaremote.%@.%p", objc_opt_class(), v2];
    v7 = [(MROSTransaction *)v5 initWithName:v6];
    transaction = v2->_transaction;
    v2->_transaction = v7;

    MRRegisterTransaction(v2->_transaction);
  }

  return v2;
}

- (MRAirPlayTransportConnection)initWithAPCommunicationChannel:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(MRAirPlayTransportConnection *)self _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 9, a3);
    v8 = MRLogCategoryConnections();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRAirPlayTransportConnection] Creating new connection with APChannel %@", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (MRAirPlayTransportConnection)initWithOutputContextCommunicationChannel:(id)a3 outputContext:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [(MRAirPlayTransportConnection *)self _init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 10, a3);
    v11 = [v8 outputDevices];
    v12 = [v11 firstObject];

    v13 = [v12 ID];
    [(MRExternalDeviceTransportConnection *)v10 setDestinationOutputDeviceUID:v13];

    v14 = MRLogCategoryConnections();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543874;
      v18 = v8;
      v19 = 2114;
      v20 = v12;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "[MRAirPlayTransportConnection] Creating new connection with outputContext %{public}@ with pilotOutputDevice <%{public}@> with outputContextChannel %{public}@", &v17, 0x20u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (MRAirPlayTransportConnection)initWithOutputDeviceCommunicationChannel:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(MRAirPlayTransportConnection *)self _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 11, a3);
    [(AVOutputDeviceCommunicationChannel *)v7->_outputDeviceCommunicationChannel setDelegate:v7];
    v8 = MRLogCategoryConnections();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRAirPlayTransportConnection] Creating new connection with OutputDeviceChannel %{public}@", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(MRAirPlayTransportConnection *)self effectiveChannel];
  v6 = [v3 initWithFormat:@"<%@:%p %@>\n", v4, self, v5];

  return v6;
}

- (NSString)debugDescription
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(MRAirPlayTransportConnection *)v2 effectiveChannel];
  dateCreated = v2->_dateCreated;
  [(NSDate *)dateCreated timeIntervalSinceNow];
  v8 = v7;
  mostRecentMessageSentDate = v2->_mostRecentMessageSentDate;
  [(NSDate *)mostRecentMessageSentDate timeIntervalSinceNow];
  v11 = v10;
  totalMessagesSentCount = v2->_totalMessagesSentCount;
  totalBytesSentCount = v2->_totalBytesSentCount;
  mostRecentMessageReceivedDate = v2->_mostRecentMessageReceivedDate;
  [(NSDate *)mostRecentMessageReceivedDate timeIntervalSinceNow];
  totalMessagesReceivedCount = v2->_totalMessagesReceivedCount;
  v17 = [v3 initWithFormat:@"<%@:%p {\n  communicationChannel = %@\n  dateCreated = %@ (%lf seconds ago)\n  mostRecentMessageSentDate = %@ (%lf seconds ago)\n  totalMessagesSent = %lu\n  totalBytesSent = %lu\n  mostRecentMessageReceivedDate = %@ (%lf seconds ago)\n  totalMessagesReceived = %lu\n  totalBytesReceived = %lu\n}>", v4, v2, v5, dateCreated, -v8, mostRecentMessageSentDate, -v11, totalMessagesSentCount, totalBytesSentCount, mostRecentMessageReceivedDate, -v16, totalMessagesReceivedCount, v2->_totalBytesReceivedCount];

  objc_sync_exit(v2);

  return v17;
}

- (void)ingestData:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MRLogCategoryConnections();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v4;
    v12 = 2114;
    v13 = self;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRAirPlayTransportConnection] Connection received data %@ from %{public}@", &v10, 0x16u);
  }

  v6 = self;
  objc_sync_enter(v6);
  ++v6->_totalMessagesReceivedCount;
  v6->_totalBytesReceivedCount += [v4 length];
  v7 = [MEMORY[0x1E695DF00] now];
  mostRecentMessageReceivedDate = v6->_mostRecentMessageReceivedDate;
  v6->_mostRecentMessageReceivedDate = v7;

  objc_sync_exit(v6);
  [(MRExternalDeviceTransportConnection *)v6 _notifyDelegateDidReceiveData:v4];

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)isValid
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MRAirPlayTransportConnection *)v2 effectiveChannel];
  v4 = v3 != 0;

  objc_sync_exit(v2);
  return v4;
}

- (unint64_t)sendTransportData:(id)a3 options:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(MRAirPlayTransportConnection *)self effectiveChannel];

  if (v8)
  {
    v9 = MRLogCategoryConnections();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v6;
      v18 = 2114;
      v19 = self;
      _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[MRAirPlayTransportConnection] Connection sent data %@ to %{public}@", &v16, 0x16u);
    }

    v10 = self;
    objc_sync_enter(v10);
    ++v10->_totalMessagesSentCount;
    v10->_totalBytesSentCount += [v6 length];
    v11 = [MEMORY[0x1E695DF00] now];
    mostRecentMessageSentDate = v10->_mostRecentMessageSentDate;
    v10->_mostRecentMessageSentDate = v11;

    objc_sync_exit(v10);
    v13 = [(MRAirPlayTransportConnection *)v10 _sendTransportData:v6];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (unint64_t)_sendTransportData:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __51__MRAirPlayTransportConnection__sendTransportData___block_invoke;
  v12 = &unk_1E769D2F8;
  objc_copyWeak(&v13, &location);
  v5 = MEMORY[0x1A58E3570](&v9);
  v6 = self;
  objc_sync_enter(v6);
  [(APReceiverMediaRemoteCommunicationChannel *)v6->_apCommunicationChannel sendData:v4 completionHandler:v5, v9, v10, v11, v12];
  [(AVOutputContextCommunicationChannel *)v6->_outputContextCommunicationChannel sendData:v4 completionHandler:v5];
  [(AVOutputDeviceCommunicationChannel *)v6->_outputDeviceCommunicationChannel sendData:v4 completionHandler:v5];
  objc_sync_exit(v6);

  v7 = [v4 length];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v7;
}

void __51__MRAirPlayTransportConnection__sendTransportData___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = MRLogCategoryConnections();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412546;
      v9 = v3;
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_ERROR, "[MRAirPlayTransportConnection] Connection error %@ sending data to %{public}@", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)closeWithError:(id)a3
{
  v13 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MRAirPlayTransportConnection *)v4 effectiveChannel];

  if (v5)
  {
    if (v4->_apCommunicationChannel)
    {
      v6 = [[MRSetConnectionStateMessage alloc] initWithConnectionState:3];
      [(MRProtocolMessage *)v6 setError:v13];
      v7 = [(MRProtocolMessage *)v6 protobufData];
      v8 = [MEMORY[0x1E69B1438] createHeader:{objc_msgSend(v7, "length")}];
      v9 = objc_alloc_init(MEMORY[0x1E695DF88]);
      [v9 appendData:v8];
      [v9 appendData:v7];
      [(MRAirPlayTransportConnection *)v4 _sendTransportData:v9];
    }

    v4->_channelClosed = 1;
    apCommunicationChannel = v4->_apCommunicationChannel;
    v4->_apCommunicationChannel = 0;

    outputContextCommunicationChannel = v4->_outputContextCommunicationChannel;
    v4->_outputContextCommunicationChannel = 0;

    [(AVOutputDeviceCommunicationChannel *)v4->_outputDeviceCommunicationChannel close];
    [(AVOutputDeviceCommunicationChannel *)v4->_outputDeviceCommunicationChannel setDelegate:0];
    outputDeviceCommunicationChannel = v4->_outputDeviceCommunicationChannel;
    v4->_outputDeviceCommunicationChannel = 0;

    objc_sync_exit(v4);
    [(MRExternalDeviceTransportConnection *)v4 _notifyDelegateDidCloseWithError:v13];
  }

  else
  {
    objc_sync_exit(v4);
  }
}

- (void)communicationChannelDidClose:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:105 description:@"AVOutputDeviceCommunicationChannel.communicationChannelDidClose"];
  [(MRAirPlayTransportConnection *)self closeWithError:v4];
}

- (id)effectiveChannel
{
  v2 = self;
  objc_sync_enter(v2);
  apCommunicationChannel = v2->_apCommunicationChannel;
  if (!apCommunicationChannel)
  {
    apCommunicationChannel = v2->_outputContextCommunicationChannel;
    if (!apCommunicationChannel)
    {
      apCommunicationChannel = v2->_outputDeviceCommunicationChannel;
    }
  }

  v4 = apCommunicationChannel;
  objc_sync_exit(v2);

  return v4;
}

@end