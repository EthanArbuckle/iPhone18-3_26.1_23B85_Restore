@interface ICPeerMessageController
- (ICPeerMessageController)init;
- (ICPeerMessageControllerDelegate)delegate;
- (id)deviceRequestsForUUID:(id)d;
- (id)sendMessage:(void *)message toDevices:(id)devices;
- (id)sendMessage:(void *)message toSource:(id)source completionBlock:(id)block;
- (id)sendMessage:(void *)message toSources:(id)sources;
- (id)sendNote:(id)note toDevices:(id)devices;
- (void)disconnectedFromSource:(id)source;
- (void)handleKeepAliveMessage:(const void *)message fromDevice:(id)device;
- (void)handleMessage:(id)message fromSource:(id)source;
- (void)handleNoteMessage:(const void *)message fromDevice:(id)device data:(id)data;
- (void)handleRequestNoteMessage:(const void *)message fromDevice:(id)device;
- (void)requestNote:(id)note from:(id)from;
- (void)sendKeepAlive;
- (void)sendMediaURL:(id)l toSource:(id)source;
@end

@implementation ICPeerMessageController

- (ICPeerMessageController)init
{
  v10.receiver = self;
  v10.super_class = ICPeerMessageController;
  v2 = [(ICPeerMessageController *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceRequests = v2->_deviceRequests;
    v2->_deviceRequests = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sourceToDevices = v2->_sourceToDevices;
    v2->_sourceToDevices = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceUUIDToSource = v2->_deviceUUIDToSource;
    v2->_deviceUUIDToSource = v7;
  }

  return v2;
}

- (id)deviceRequestsForUUID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_deviceRequests objectForKeyedSubscript:dCopy];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NSMutableDictionary *)self->_deviceRequests setObject:v5 forKeyedSubscript:dCopy];
  }

  return v5;
}

- (void)requestNote:(id)note from:(id)from
{
  v26 = *MEMORY[0x277D85DE8];
  noteCopy = note;
  fromCopy = from;
  v8 = os_log_create("com.apple.notes", "networking");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    uUIDString = [noteCopy UUIDString];
    v10 = uUIDString;
    v11 = @"(null)";
    if (fromCopy)
    {
      v11 = fromCopy;
    }

    *buf = 138412546;
    v20 = uUIDString;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_214D51000, v8, OS_LOG_TYPE_INFO, "<< Request note %@ from %@.", buf, 0x16u);
  }

  v12 = peernetworking::PeerNetworkMessage::PeerNetworkMessage(buf);
  v23 |= 1u;
  v25 = 7;
  v18 = 0uLL;
  [noteCopy getUUIDBytes:{&v18, v12}];
  v23 |= 4u;
  v13 = v24;
  if (!v24)
  {
    operator new();
  }

  *(v24 + 32) |= 1u;
  if (!google::protobuf::internal::empty_string_)
  {
    __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
  }

  v14 = *(v13 + 40);
  if (v14 == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  if (*(v14 + 23) < 0)
  {
    v14[1] = 16;
    v14 = *v14;
  }

  else
  {
    *(v14 + 23) = 16;
  }

  *v14 = v18;
  *(v14 + 16) = 0;
  if (fromCopy)
  {
    v17 = fromCopy;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(ICPeerMessageController *)self sendMessage:buf toDevices:v15];
  if (fromCopy)
  {
  }

  peernetworking::PeerNetworkMessage::~PeerNetworkMessage(buf);
}

- (id)sendNote:(id)note toDevices:(id)devices
{
  v26 = *MEMORY[0x277D85DE8];
  noteCopy = note;
  devicesCopy = devices;
  v8 = devicesCopy;
  if (devicesCopy && ![devicesCopy count])
  {
    v18 = 0;
  }

  else
  {
    v9 = os_log_create("com.apple.notes", "networking");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      identifier = [noteCopy identifier];
      *buf = 138412290;
      v22 = identifier;
      _os_log_impl(&dword_214D51000, v9, OS_LOG_TYPE_INFO, "<< Send note %@.", buf, 0xCu);
    }

    v11 = peernetworking::PeerNetworkMessage::PeerNetworkMessage(buf);
    v23 |= 1u;
    v25 = 7;
    v20 = 0uLL;
    uuid = [noteCopy uuid];
    [uuid getUUIDBytes:&v20];

    v23 |= 2u;
    v13 = v24;
    if (!v24)
    {
      operator new();
    }

    *(v24 + 32) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v14 = *(v13 + 40);
    if (v14 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    if (*(v14 + 23) < 0)
    {
      v14[1] = 16;
      v14 = *v14;
    }

    else
    {
      *(v14 + 23) = 16;
    }

    *v14 = v20;
    *(v14 + 16) = 0;
    document = [noteCopy document];
    v23 |= 2u;
    v16 = v24;
    if (!v24)
    {
      operator new();
    }

    *(v24 + 32) |= 2u;
    v17 = *(v16 + 48);
    if (!v17)
    {
      operator new();
    }

    [document saveToArchive:v17];

    v18 = [(ICPeerMessageController *)self sendMessage:buf toDevices:v8];
    peernetworking::PeerNetworkMessage::~PeerNetworkMessage(buf);
  }

  return v18;
}

- (void)sendMediaURL:(id)l toSource:(id)source
{
  v34 = *MEMORY[0x277D85DE8];
  lCopy = l;
  sourceCopy = source;
  v8 = os_log_create("com.apple.notes", "networking");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    identifier = [lCopy identifier];
    *buf = 138412290;
    v30 = identifier;
    _os_log_impl(&dword_214D51000, v8, OS_LOG_TYPE_INFO, "<< Send media %@.", buf, 0xCu);
  }

  v10 = peernetworking::PeerNetworkMessage::PeerNetworkMessage(buf);
  v33 = 7;
  v31 |= 0x801u;
  v11 = v32;
  if (!v32)
  {
    operator new();
  }

  identifier2 = [lCopy identifier];
  v13 = identifier2;
  uTF8String = [identifier2 UTF8String];
  *(v11 + 32) |= 1u;
  if (!google::protobuf::internal::empty_string_)
  {
    __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
  }

  v15 = uTF8String;
  v16 = *(v11 + 40);
  if (v16 == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  std::string::__assign_external(v16, v15);

  v17 = MEMORY[0x277CBEA90];
  mediaURL = [lCopy mediaURL];
  v19 = [v17 dataWithContentsOfURL:mediaURL];

  v31 |= 0x800u;
  v20 = v32;
  if (!v32)
  {
    operator new();
  }

  v21 = v19;
  bytes = [v19 bytes];
  v23 = [v19 length];
  *(v20 + 32) |= 2u;
  if (!google::protobuf::internal::empty_string_)
  {
    __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
  }

  v24 = v23;
  v25 = *(v20 + 48);
  if (v25 == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  std::string::__assign_external(v25, bytes, v24);
  v28 = sourceCopy;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v27 = [(ICPeerMessageController *)self sendMessage:buf toSources:v26];

  peernetworking::PeerNetworkMessage::~PeerNetworkMessage(buf);
}

- (void)disconnectedFromSource:(id)source
{
  v9 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v5 = [(NSMutableDictionary *)self->_sourceToDevices objectForKeyedSubscript:sourceCopy];
  v6 = os_log_create("com.apple.notes", "networking");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_INFO, "-- Disconnected from %@.", &v7, 0xCu);
  }

  if (v5)
  {
    [(NSMutableDictionary *)self->_deviceRequests removeObjectForKey:v5];
    [(NSMutableDictionary *)self->_sourceToDevices removeObjectForKey:sourceCopy];
    [(NSMutableDictionary *)self->_deviceUUIDToSource removeObjectForKey:v5];
  }
}

- (void)sendKeepAlive
{
  v3 = peernetworking::PeerNetworkMessage::PeerNetworkMessage(v6);
  v9 = 7;
  v7 |= 0x1001u;
  if (!v8)
  {
    operator new();
  }

  allValues = [(NSMutableDictionary *)self->_deviceUUIDToSource allValues];
  v5 = [(ICPeerMessageController *)self sendMessage:v6 toSources:allValues];

  peernetworking::PeerNetworkMessage::~PeerNetworkMessage(v6);
}

- (void)handleNoteMessage:(const void *)message fromDevice:(id)device data:(id)data
{
  v37 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  dataCopy = data;
  v10 = objc_alloc(MEMORY[0x277CCAD78]);
  v11 = *(message + 5);
  if (*(v11 + 23) < 0)
  {
    v11 = *v11;
  }

  v12 = [v10 initWithUUIDBytes:v11];
  v13 = [ICTTMergeableStringVersionedDocument alloc];
  v14 = v13;
  v15 = *(message + 6);
  if (!v15)
  {
    v15 = *(peernetworking::Note::default_instance(v13) + 48);
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  v17 = [(ICTTVersionedDocument *)v14 initWithArchive:v15 replicaID:uUID];

  v18 = +[ICNoteContext sharedContext];
  managedObjectContext = [v18 managedObjectContext];
  v20 = [ICNote noteWithUUID:v12 context:managedObjectContext];

  v21 = os_log_create("com.apple.notes", "networking");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    uUIDString = [v12 UUIDString];
    *buf = 138412290;
    v36 = uUIDString;
    _os_log_impl(&dword_214D51000, v21, OS_LOG_TYPE_INFO, ">> Handle note message %@", buf, 0xCu);
  }

  v23 = os_log_create("com.apple.notes", "networking");
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
  if (v20)
  {
    if (v24)
    {
      uUIDString2 = [v12 UUIDString];
      *buf = 138412290;
      v36 = uUIDString2;
      _os_log_impl(&dword_214D51000, v23, OS_LOG_TYPE_INFO, ">> Note update %@.", buf, 0xCu);
    }

    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __61__ICPeerMessageController_handleNoteMessage_fromDevice_data___block_invoke;
    v32 = &unk_278198048;
    v26 = v20;
    v33 = v26;
    v34 = v17;
    v27 = [v26 performMerge:&v29];

    if (v27)
    {
      if (v27 == 2)
      {
        [v26 setNoteHasChanges:{MEMORY[0x277CBEC38], v29, v30, v31, v32}];
      }
    }

    else
    {
      [(ICPeerMessageController *)self requestNote:v12 from:deviceCopy, v29, v30, v31, v32];
    }
  }

  else
  {
    if (v24)
    {
      uUIDString3 = [v12 UUIDString];
      *buf = 138412290;
      v36 = uUIDString3;
      _os_log_impl(&dword_214D51000, v23, OS_LOG_TYPE_INFO, "   Ignored note update for non-shared/existant note %@.", buf, 0xCu);
    }
  }
}

uint64_t __61__ICPeerMessageController_handleNoteMessage_fromDevice_data___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) document];
  v3 = [v2 mergeWithStringVersionedDocument:*(a1 + 40)];

  return v3;
}

- (void)handleRequestNoteMessage:(const void *)message fromDevice:(id)device
{
  v19 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  v8 = *(message + 5);
  if (*(v8 + 23) < 0)
  {
    v8 = *v8;
  }

  v9 = [v7 initWithUUIDBytes:v8];
  v10 = +[ICNoteContext sharedContext];
  managedObjectContext = [v10 managedObjectContext];
  v12 = [ICNote noteWithUUID:v9 context:managedObjectContext];

  v13 = os_log_create("com.apple.notes", "networking");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = v9;
    _os_log_impl(&dword_214D51000, v13, OS_LOG_TYPE_INFO, ">> Peer requested note %@.", buf, 0xCu);
  }

  if (deviceCopy)
  {
    v16 = deviceCopy;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(ICPeerMessageController *)self sendNote:v12 toDevices:v14];
  if (deviceCopy)
  {
  }
}

- (void)handleKeepAliveMessage:(const void *)message fromDevice:(id)device
{
  v8 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = os_log_create("com.apple.notes", "networking");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = deviceCopy;
    _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_INFO, ">> KeepAlive: %@", &v6, 0xCu);
  }
}

- (void)handleMessage:(id)message fromSource:(id)source
{
  messageCopy = message;
  v7 = [(NSMutableDictionary *)self->_sourceToDevices objectForKeyedSubscript:source];
  peernetworking::PeerNetworkMessage::PeerNetworkMessage(v10);
  v8 = google::protobuf::MessageLite::ParseFromArray(v10, [messageCopy bytes], objc_msgSend(messageCopy, "length"));
  if (v15 == 7)
  {
    if ((v11 & 2) != 0)
    {
      if (!v12)
      {
        peernetworking::PeerNetworkMessage::default_instance(v8);
      }

      [ICPeerMessageController handleNoteMessage:"handleNoteMessage:fromDevice:data:" fromDevice:? data:?];
    }

    else if ((v11 & 4) != 0)
    {
      if (!v13)
      {
        peernetworking::PeerNetworkMessage::default_instance(v8);
      }

      [ICPeerMessageController handleRequestNoteMessage:"handleRequestNoteMessage:fromDevice:" fromDevice:?];
    }

    else if ((v11 & 0x1000) != 0)
    {
      if (!v14)
      {
        peernetworking::PeerNetworkMessage::default_instance(v8);
      }

      [ICPeerMessageController handleKeepAliveMessage:"handleKeepAliveMessage:fromDevice:" fromDevice:?];
    }
  }

  else
  {
    v9 = os_log_create("com.apple.notes", "networking");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICPeerMessageController handleMessage:v9 fromSource:?];
    }
  }

  peernetworking::PeerNetworkMessage::~PeerNetworkMessage(v10);
}

- (id)sendMessage:(void *)message toDevices:(id)devices
{
  v20 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = devicesCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [(NSMutableDictionary *)self->_deviceUUIDToSource objectForKeyedSubscript:*(*(&v15 + 1) + 8 * i), v15];
        if (v12)
        {
          [v7 addObject:v12];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [(ICPeerMessageController *)self sendMessage:message toSources:v7];

  return v13;
}

- (id)sendMessage:(void *)message toSources:(id)sources
{
  v21 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:(*(*message + 72))(message)];
  google::protobuf::MessageLite::SerializeToArray(message, [v7 mutableBytes], objc_msgSend(v7, "length"));
  if ([sourcesCopy count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = sourcesCopy;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          delegate = [(ICPeerMessageController *)self delegate];
          [delegate sendMessage:v7 toSource:v12 error:0];
        }

        v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  else
  {
    delegate2 = [(ICPeerMessageController *)self delegate];
    [delegate2 sendMessage:v7 toSource:0 error:0];
  }

  return v7;
}

- (id)sendMessage:(void *)message toSource:(id)source completionBlock:(id)block
{
  sourceCopy = source;
  blockCopy = block;
  v10 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:(*(*message + 72))(message)];
  google::protobuf::MessageLite::SerializeToArray(message, [v10 mutableBytes], objc_msgSend(v10, "length"));
  delegate = [(ICPeerMessageController *)self delegate];
  v14 = 0;
  [delegate sendMessage:v10 toSource:sourceCopy error:&v14];
  v12 = v14;

  blockCopy[2](blockCopy, v12);

  return v10;
}

- (ICPeerMessageControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleNoteMessage:(uint8_t *)buf fromDevice:(os_log_t)log data:.cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "   A+B Merge Fail: %@\n%@", buf, 0x16u);
}

- (void)handleMessage:(int *)a1 fromSource:(NSObject *)a2 .cold.1(int *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3[0] = 67109376;
  v3[1] = v2;
  v4 = 1024;
  v5 = 7;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, ">> Multi-peer protocol version mismatch (%d != %d)", v3, 0xEu);
}

@end