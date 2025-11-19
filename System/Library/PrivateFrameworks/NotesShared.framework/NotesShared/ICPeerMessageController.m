@interface ICPeerMessageController
- (ICPeerMessageController)init;
- (ICPeerMessageControllerDelegate)delegate;
- (id)deviceRequestsForUUID:(id)a3;
- (id)sendMessage:(void *)a3 toDevices:(id)a4;
- (id)sendMessage:(void *)a3 toSource:(id)a4 completionBlock:(id)a5;
- (id)sendMessage:(void *)a3 toSources:(id)a4;
- (id)sendNote:(id)a3 toDevices:(id)a4;
- (void)disconnectedFromSource:(id)a3;
- (void)handleKeepAliveMessage:(const void *)a3 fromDevice:(id)a4;
- (void)handleMessage:(id)a3 fromSource:(id)a4;
- (void)handleNoteMessage:(const void *)a3 fromDevice:(id)a4 data:(id)a5;
- (void)handleRequestNoteMessage:(const void *)a3 fromDevice:(id)a4;
- (void)requestNote:(id)a3 from:(id)a4;
- (void)sendKeepAlive;
- (void)sendMediaURL:(id)a3 toSource:(id)a4;
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

- (id)deviceRequestsForUUID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_deviceRequests objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NSMutableDictionary *)self->_deviceRequests setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

- (void)requestNote:(id)a3 from:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.notes", "networking");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 UUIDString];
    v10 = v9;
    v11 = @"(null)";
    if (v7)
    {
      v11 = v7;
    }

    *buf = 138412546;
    v20 = v9;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_214D51000, v8, OS_LOG_TYPE_INFO, "<< Request note %@ from %@.", buf, 0x16u);
  }

  v12 = peernetworking::PeerNetworkMessage::PeerNetworkMessage(buf);
  v23 |= 1u;
  v25 = 7;
  v18 = 0uLL;
  [v6 getUUIDBytes:{&v18, v12}];
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
  if (v7)
  {
    v17 = v7;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(ICPeerMessageController *)self sendMessage:buf toDevices:v15];
  if (v7)
  {
  }

  peernetworking::PeerNetworkMessage::~PeerNetworkMessage(buf);
}

- (id)sendNote:(id)a3 toDevices:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 && ![v7 count])
  {
    v18 = 0;
  }

  else
  {
    v9 = os_log_create("com.apple.notes", "networking");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v6 identifier];
      *buf = 138412290;
      v22 = v10;
      _os_log_impl(&dword_214D51000, v9, OS_LOG_TYPE_INFO, "<< Send note %@.", buf, 0xCu);
    }

    v11 = peernetworking::PeerNetworkMessage::PeerNetworkMessage(buf);
    v23 |= 1u;
    v25 = 7;
    v20 = 0uLL;
    v12 = [v6 uuid];
    [v12 getUUIDBytes:&v20];

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
    v15 = [v6 document];
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

    [v15 saveToArchive:v17];

    v18 = [(ICPeerMessageController *)self sendMessage:buf toDevices:v8];
    peernetworking::PeerNetworkMessage::~PeerNetworkMessage(buf);
  }

  return v18;
}

- (void)sendMediaURL:(id)a3 toSource:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.notes", "networking");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 identifier];
    *buf = 138412290;
    v30 = v9;
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

  v12 = [v6 identifier];
  v13 = v12;
  v14 = [v12 UTF8String];
  *(v11 + 32) |= 1u;
  if (!google::protobuf::internal::empty_string_)
  {
    __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
  }

  v15 = v14;
  v16 = *(v11 + 40);
  if (v16 == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  std::string::__assign_external(v16, v15);

  v17 = MEMORY[0x277CBEA90];
  v18 = [v6 mediaURL];
  v19 = [v17 dataWithContentsOfURL:v18];

  v31 |= 0x800u;
  v20 = v32;
  if (!v32)
  {
    operator new();
  }

  v21 = v19;
  v22 = [v19 bytes];
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

  std::string::__assign_external(v25, v22, v24);
  v28 = v7;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v27 = [(ICPeerMessageController *)self sendMessage:buf toSources:v26];

  peernetworking::PeerNetworkMessage::~PeerNetworkMessage(buf);
}

- (void)disconnectedFromSource:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_sourceToDevices objectForKeyedSubscript:v4];
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
    [(NSMutableDictionary *)self->_sourceToDevices removeObjectForKey:v4];
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

  v4 = [(NSMutableDictionary *)self->_deviceUUIDToSource allValues];
  v5 = [(ICPeerMessageController *)self sendMessage:v6 toSources:v4];

  peernetworking::PeerNetworkMessage::~PeerNetworkMessage(v6);
}

- (void)handleNoteMessage:(const void *)a3 fromDevice:(id)a4 data:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc(MEMORY[0x277CCAD78]);
  v11 = *(a3 + 5);
  if (*(v11 + 23) < 0)
  {
    v11 = *v11;
  }

  v12 = [v10 initWithUUIDBytes:v11];
  v13 = [ICTTMergeableStringVersionedDocument alloc];
  v14 = v13;
  v15 = *(a3 + 6);
  if (!v15)
  {
    v15 = *(peernetworking::Note::default_instance(v13) + 48);
  }

  v16 = [MEMORY[0x277CCAD78] UUID];
  v17 = [(ICTTVersionedDocument *)v14 initWithArchive:v15 replicaID:v16];

  v18 = +[ICNoteContext sharedContext];
  v19 = [v18 managedObjectContext];
  v20 = [ICNote noteWithUUID:v12 context:v19];

  v21 = os_log_create("com.apple.notes", "networking");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [v12 UUIDString];
    *buf = 138412290;
    v36 = v22;
    _os_log_impl(&dword_214D51000, v21, OS_LOG_TYPE_INFO, ">> Handle note message %@", buf, 0xCu);
  }

  v23 = os_log_create("com.apple.notes", "networking");
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
  if (v20)
  {
    if (v24)
    {
      v25 = [v12 UUIDString];
      *buf = 138412290;
      v36 = v25;
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
      [(ICPeerMessageController *)self requestNote:v12 from:v8, v29, v30, v31, v32];
    }
  }

  else
  {
    if (v24)
    {
      v28 = [v12 UUIDString];
      *buf = 138412290;
      v36 = v28;
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

- (void)handleRequestNoteMessage:(const void *)a3 fromDevice:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  v8 = *(a3 + 5);
  if (*(v8 + 23) < 0)
  {
    v8 = *v8;
  }

  v9 = [v7 initWithUUIDBytes:v8];
  v10 = +[ICNoteContext sharedContext];
  v11 = [v10 managedObjectContext];
  v12 = [ICNote noteWithUUID:v9 context:v11];

  v13 = os_log_create("com.apple.notes", "networking");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = v9;
    _os_log_impl(&dword_214D51000, v13, OS_LOG_TYPE_INFO, ">> Peer requested note %@.", buf, 0xCu);
  }

  if (v6)
  {
    v16 = v6;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(ICPeerMessageController *)self sendNote:v12 toDevices:v14];
  if (v6)
  {
  }
}

- (void)handleKeepAliveMessage:(const void *)a3 fromDevice:(id)a4
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = os_log_create("com.apple.notes", "networking");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_INFO, ">> KeepAlive: %@", &v6, 0xCu);
  }
}

- (void)handleMessage:(id)a3 fromSource:(id)a4
{
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_sourceToDevices objectForKeyedSubscript:a4];
  peernetworking::PeerNetworkMessage::PeerNetworkMessage(v10);
  v8 = google::protobuf::MessageLite::ParseFromArray(v10, [v6 bytes], objc_msgSend(v6, "length"));
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

- (id)sendMessage:(void *)a3 toDevices:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v6;
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

  v13 = [(ICPeerMessageController *)self sendMessage:a3 toSources:v7];

  return v13;
}

- (id)sendMessage:(void *)a3 toSources:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:(*(*a3 + 72))(a3)];
  google::protobuf::MessageLite::SerializeToArray(a3, [v7 mutableBytes], objc_msgSend(v7, "length"));
  if ([v6 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v6;
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
          v13 = [(ICPeerMessageController *)self delegate];
          [v13 sendMessage:v7 toSource:v12 error:0];
        }

        v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v14 = [(ICPeerMessageController *)self delegate];
    [v14 sendMessage:v7 toSource:0 error:0];
  }

  return v7;
}

- (id)sendMessage:(void *)a3 toSource:(id)a4 completionBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:(*(*a3 + 72))(a3)];
  google::protobuf::MessageLite::SerializeToArray(a3, [v10 mutableBytes], objc_msgSend(v10, "length"));
  v11 = [(ICPeerMessageController *)self delegate];
  v14 = 0;
  [v11 sendMessage:v10 toSource:v8 error:&v14];
  v12 = v14;

  v9[2](v9, v12);

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