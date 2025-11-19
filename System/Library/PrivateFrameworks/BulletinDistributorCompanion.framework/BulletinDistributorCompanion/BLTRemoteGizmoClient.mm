@interface BLTRemoteGizmoClient
- (BLTCompanionServer)server;
- (BLTRemoteGizmoClient)init;
- (void)_handleSyncStateChanged:(id)a3;
- (void)_pingPairedDeviceWithRetry:(unint64_t)a3;
- (void)addBulletinSummary:(id)a3;
- (void)cancelBulletinWithPublisherMatchID:(id)a3 universalSectionID:(id)a4 feed:(unint64_t)a5 withTimeout:(id)a6;
- (void)dealloc;
- (void)handleAcknowledgeActionRequest:(id)a3;
- (void)handleDidPlayLightsAndSirensReply:(id)a3;
- (void)handleDismissActionRequest:(id)a3;
- (void)handleHandlePairedDeviceReady:(id)a3;
- (void)handleLaunchSessionActionRequest:(id)a3;
- (void)handleRemoveBulletinRequest:(id)a3;
- (void)handleShouldSuppressLightsAndSirensNowRequest:(id)a3;
- (void)handleSnoozeActionRequest:(id)a3;
- (void)handleSupplementaryActionRequest:(id)a3;
- (void)handleWillSendLightsAndSirensRequest:(id)a3;
- (void)registerProtobufHandlers;
- (void)removeBulletinWithPublisherBulletinID:(id)a3 recordID:(id)a4 sectionID:(id)a5 withTimeout:(id)a6;
- (void)setLastKnownConnectionStatus:(unint64_t)a3;
- (void)updateBulletinList:(id)a3;
@end

@implementation BLTRemoteGizmoClient

- (BLTRemoteGizmoClient)init
{
  v2 = [(BLTRemoteObject *)self initWithServiceName:@"com.apple.private.alloy.bulletindistributor" idsQueueName:"com.apple.bulletindistributor.ids"];
  v3 = v2;
  if (v2)
  {
    [(BLTRemoteObject *)v2 setPairedDeviceReady:0];
    v4 = [MEMORY[0x277D2BCC8] activePairedDeviceSupportsFileBulletinAdd];
    v5 = off_278D30AB0;
    if (!v4)
    {
      v5 = off_278D30AC8;
    }

    v6 = objc_alloc_init(*v5);
    bulletinSendQueue = v3->_bulletinSendQueue;
    v3->_bulletinSendQueue = v6;

    [(BLTBulletinSendQueuePassthrough *)v3->_bulletinSendQueue setDelegate:v3];
    [(BLTRemoteGizmoClient *)v3 _pingPairedDevice];
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v3 selector:sel__handleSyncStateChanged_ name:@"BLTPairedSyncStateChanged" object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = BLTRemoteGizmoClient;
  [(BLTRemoteObject *)&v4 dealloc];
}

- (void)registerProtobufHandlers
{
  [(BLTRemoteObject *)self setProtobufAction:sel_handleAcknowledgeActionRequest_ forIncomingRequestsOfType:5];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleSnoozeActionRequest_ forIncomingRequestsOfType:6];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleDismissActionRequest_ forIncomingRequestsOfType:8];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleSupplementaryActionRequest_ forIncomingRequestsOfType:7];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleLaunchSessionActionRequest_ forIncomingRequestsOfType:26];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleDidPlayLightsAndSirensReply_ forIncomingRequestsOfType:9];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleRemoveBulletinRequest_ forIncomingRequestsOfType:10];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleShouldSuppressLightsAndSirensNowRequest_ forIncomingRequestsOfType:16];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleHandlePairedDeviceReady_ forIncomingRequestsOfType:17];

  [(BLTRemoteObject *)self setProtobufAction:sel_handleWillSendLightsAndSirensRequest_ forIncomingRequestsOfType:18];
}

- (void)_handleSyncStateChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [v5 becameTrafficUnrestricted:v4];

  if (v6)
  {
    bulletinSendQueue = self->_bulletinSendQueue;

    [(BLTBulletinSendQueuePassthrough *)bulletinSendQueue sendNow];
  }
}

- (void)addBulletinSummary:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setBulletin:v4];

  [(BLTRemoteObject *)self sendRequest:v5 type:3];
}

- (void)cancelBulletinWithPublisherMatchID:(id)a3 universalSectionID:(id)a4 feed:(unint64_t)a5 withTimeout:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v14 = objc_alloc_init(BLTPBCancelBulletinRequest);
  [(BLTPBCancelBulletinRequest *)v14 setPublisherMatchID:v12];

  [(BLTPBCancelBulletinRequest *)v14 setUniversalSectionID:v11];
  [(BLTPBCancelBulletinRequest *)v14 setFeed:a5];
  v13 = [MEMORY[0x277CBEAA8] date];
  [v13 timeIntervalSince1970];
  [(BLTPBCancelBulletinRequest *)v14 setDate:?];

  [(BLTRemoteObject *)self sendRequest:v14 type:4 withTimeout:v10 didSend:0];
}

- (void)removeBulletinWithPublisherBulletinID:(id)a3 recordID:(id)a4 sectionID:(id)a5 withTimeout:(id)a6
{
  bulletinSendQueue = self->_bulletinSendQueue;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  [(BLTBulletinSendQueuePassthrough *)bulletinSendQueue sendNow];
  v16 = objc_alloc_init(BLTPBRemoveBulletinRequest);
  [(BLTPBRemoveBulletinRequest *)v16 setPublisherBulletinID:v14];

  [(BLTPBRemoveBulletinRequest *)v16 setRecordID:v13];
  [(BLTPBRemoveBulletinRequest *)v16 setSectionID:v12];

  v15 = [BLTRemoteRequest remoteRequestWithProtobuf:v16 type:2];
  [v15 setTimeout:v11];

  [v15 setNonWaking:1];
  [(BLTRemoteObject *)self sendRequest:v15];
}

- (void)updateBulletinList:(id)a3
{
  v4 = a3;
  v9 = objc_alloc_init(BLTPBUpdateBulletinListRequest);
  [(BLTPBUpdateBulletinListRequest *)v9 setBulletinList:v4];

  v5 = MEMORY[0x277CCACA8];
  v6 = [(BLTPBUpdateBulletinListRequest *)v9 bulletinList];
  v7 = [v6 sectionBulletinLists];
  v8 = [v5 stringWithFormat:@"BLTPBUpdateBulletinListRequest %lu sections", objc_msgSend(v7, "count")];
  [(BLTRemoteObject *)self sendRequest:v9 type:15 withTimeout:0 withDescription:v8 didSend:0];
}

- (void)setLastKnownConnectionStatus:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = BLTRemoteGizmoClient;
  [(BLTRemoteObject *)&v5 setLastKnownConnectionStatus:?];
  if (a3 == 1)
  {
    [(BLTRemoteGizmoClient *)self _pingPairedDevice];
  }

  else
  {
    [(BLTRemoteObject *)self setPairedDeviceReady:0];
  }
}

- (void)_pingPairedDeviceWithRetry:(unint64_t)a3
{
  if (a3 <= 2 && BLTIsDebugOrInternalBuild() && [(BLTRemoteObject *)self lastKnownConnectionStatus]== 1)
  {
    v5 = objc_alloc_init(BLTPBHandlePairedDeviceReady);
    objc_initWeak(&location, self);
    v6 = [BLTRemoteRequest remoteRequestWithProtobuf:v5 type:17];
    [v6 setAllowCloudDelivery:0];
    [v6 setUniqueID:@"pingRequest"];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__BLTRemoteGizmoClient__pingPairedDeviceWithRetry___block_invoke;
    v7[3] = &unk_278D31A48;
    objc_copyWeak(v8, &location);
    v8[1] = a3;
    [v6 setDidSend:v7];
    [(BLTRemoteObject *)self sendRequest:v6];
    objc_destroyWeak(v8);

    objc_destroyWeak(&location);
  }
}

void __51__BLTRemoteGizmoClient__pingPairedDeviceWithRetry___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _pingPairedDeviceWithRetry:*(a1 + 40) + 1];
  }
}

- (void)handleAcknowledgeActionRequest:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [BLTPBHandleAcknowledgeActionRequest alloc];
  v6 = [v4 data];

  v7 = [(BLTPBHandleAcknowledgeActionRequest *)v5 initWithData:v6];
  v8 = blt_ids_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(PBCodable *)v7 redact];
    *buf = 136315394;
    v33 = "[BLTRemoteGizmoClient handleAcknowledgeActionRequest:]";
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", buf, 0x16u);
  }

  v10 = [(BLTPBHandleAcknowledgeActionRequest *)v7 sectionID];
  v11 = [(BLTPBHandleAcknowledgeActionRequest *)v7 publisherBulletinID];
  if (v11)
  {
    v12 = [BLTBBBulletinKey bulletinKeyWithSectionID:v10 publisherMatchID:v11];
  }

  else
  {
    v13 = [(BLTPBHandleAcknowledgeActionRequest *)v7 recordID];
    v12 = [BLTBBBulletinKey bulletinKeyWithSectionID:v10 publisherMatchID:v13];
  }

  v30 = v12;

  v14 = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v29 = [v14 phonePublisherBulletinIDForGizmoKey:v12];

  v15 = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v16 = [v15 phoneSectionIDForGizmoKey:v12];

  v17 = [BLTActionInfo alloc];
  v18 = [(BLTPBHandleAcknowledgeActionRequest *)v7 recordID];
  [(BLTPBHandleAcknowledgeActionRequest *)v7 actionInfo];
  v19 = v7;
  v20 = v31 = v7;
  v21 = [v20 context];
  v22 = [(BLTPBHandleAcknowledgeActionRequest *)v19 actionInfo];
  [v22 contextNulls];
  v24 = v23 = self;
  v25 = _dictionaryFromPBData(v21, v24);
  v26 = [(BLTActionInfo *)v17 initWithActionType:3 publisherBulletinID:v29 recordID:v18 sectionID:v16 context:v25];

  v27 = [(BLTRemoteGizmoClient *)v23 server];
  [v27 handleAction:v26];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)handleSnoozeActionRequest:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [BLTPBHandleSnoozeActionRequest alloc];
  v6 = [v4 data];

  v7 = [(BLTPBHandleSnoozeActionRequest *)v5 initWithData:v6];
  v8 = blt_ids_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(PBCodable *)v7 redact];
    *buf = 136315394;
    v33 = "[BLTRemoteGizmoClient handleSnoozeActionRequest:]";
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", buf, 0x16u);
  }

  v10 = [(BLTPBHandleSnoozeActionRequest *)v7 sectionID];
  v11 = [(BLTPBHandleSnoozeActionRequest *)v7 publisherBulletinID];
  if (v11)
  {
    v12 = [BLTBBBulletinKey bulletinKeyWithSectionID:v10 publisherMatchID:v11];
  }

  else
  {
    v13 = [(BLTPBHandleSnoozeActionRequest *)v7 recordID];
    v12 = [BLTBBBulletinKey bulletinKeyWithSectionID:v10 publisherMatchID:v13];
  }

  v30 = v12;

  v14 = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v29 = [v14 phonePublisherBulletinIDForGizmoKey:v12];

  v15 = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v16 = [v15 phoneSectionIDForGizmoKey:v12];

  v17 = [BLTActionInfo alloc];
  v18 = [(BLTPBHandleSnoozeActionRequest *)v7 recordID];
  [(BLTPBHandleSnoozeActionRequest *)v7 actionInfo];
  v19 = v7;
  v20 = v31 = v7;
  v21 = [v20 context];
  v22 = [(BLTPBHandleSnoozeActionRequest *)v19 actionInfo];
  [v22 contextNulls];
  v24 = v23 = self;
  v25 = _dictionaryFromPBData(v21, v24);
  v26 = [(BLTActionInfo *)v17 initWithActionType:6 publisherBulletinID:v29 recordID:v18 sectionID:v16 context:v25];

  v27 = [(BLTRemoteGizmoClient *)v23 server];
  [v27 handleAction:v26];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)handleDismissActionRequest:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [BLTPBHandleDismissActionRequest alloc];
  v6 = [v4 data];

  v7 = [(BLTPBHandleDismissActionRequest *)v5 initWithData:v6];
  v8 = blt_ids_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(PBCodable *)v7 redact];
    *buf = 136315394;
    v33 = "[BLTRemoteGizmoClient handleDismissActionRequest:]";
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", buf, 0x16u);
  }

  v10 = [(BLTPBHandleDismissActionRequest *)v7 sectionID];
  v11 = [(BLTPBHandleDismissActionRequest *)v7 publisherBulletinID];
  if (v11)
  {
    v12 = [BLTBBBulletinKey bulletinKeyWithSectionID:v10 publisherMatchID:v11];
  }

  else
  {
    v13 = [(BLTPBHandleDismissActionRequest *)v7 recordID];
    v12 = [BLTBBBulletinKey bulletinKeyWithSectionID:v10 publisherMatchID:v13];
  }

  v30 = v12;

  v14 = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v29 = [v14 phonePublisherBulletinIDForGizmoKey:v12];

  v15 = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v16 = [v15 phoneSectionIDForGizmoKey:v12];

  v17 = [BLTActionInfo alloc];
  v18 = [(BLTPBHandleDismissActionRequest *)v7 recordID];
  [(BLTPBHandleDismissActionRequest *)v7 actionInfo];
  v19 = v7;
  v20 = v31 = v7;
  v21 = [v20 context];
  v22 = [(BLTPBHandleDismissActionRequest *)v19 actionInfo];
  [v22 contextNulls];
  v24 = v23 = self;
  v25 = _dictionaryFromPBData(v21, v24);
  v26 = [(BLTActionInfo *)v17 initWithActionType:8 publisherBulletinID:v29 recordID:v18 sectionID:v16 context:v25];

  v27 = [(BLTRemoteGizmoClient *)v23 server];
  [v27 handleAction:v26];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)handleSupplementaryActionRequest:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [BLTPBHandleSupplementaryActionRequest alloc];
  v6 = [v4 data];

  v7 = [(BLTPBHandleSupplementaryActionRequest *)v5 initWithData:v6];
  v8 = blt_ids_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(PBCodable *)v7 redact];
    *buf = 136315394;
    v34 = "[BLTRemoteGizmoClient handleSupplementaryActionRequest:]";
    v35 = 2112;
    v36 = v9;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", buf, 0x16u);
  }

  v10 = [(BLTPBHandleSupplementaryActionRequest *)v7 sectionID];
  v11 = [(BLTPBHandleSupplementaryActionRequest *)v7 publisherBulletinID];
  if (v11)
  {
    v12 = [BLTBBBulletinKey bulletinKeyWithSectionID:v10 publisherMatchID:v11];
  }

  else
  {
    v13 = [(BLTPBHandleSupplementaryActionRequest *)v7 recordID];
    v12 = [BLTBBBulletinKey bulletinKeyWithSectionID:v10 publisherMatchID:v13];
  }

  v32 = v12;

  v14 = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v31 = [v14 phonePublisherBulletinIDForGizmoKey:v12];

  v15 = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v16 = [v15 phoneSectionIDForGizmoKey:v12];

  v17 = [BLTSupplementaryActionInfo alloc];
  v18 = [(BLTPBHandleSupplementaryActionRequest *)v7 recordID];
  [(BLTPBHandleSupplementaryActionRequest *)v7 actionInfo];
  v19 = v7;
  v20 = v30 = v7;
  v21 = [v20 context];
  v22 = [(BLTPBHandleSupplementaryActionRequest *)v19 actionInfo];
  [v22 contextNulls];
  v24 = v23 = self;
  v25 = _dictionaryFromPBData(v21, v24);
  v26 = [(BLTActionInfo *)v17 initWithActionType:7 publisherBulletinID:v31 recordID:v18 sectionID:v16 context:v25];

  v27 = [(BLTPBHandleSupplementaryActionRequest *)v30 identifier];
  [(BLTSupplementaryActionInfo *)v26 setIdentifier:v27];

  v28 = [(BLTRemoteGizmoClient *)v23 server];
  [v28 handleAction:v26];

  v29 = *MEMORY[0x277D85DE8];
}

- (void)handleLaunchSessionActionRequest:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [BLTPBHandleLaunchSessionActionRequest alloc];
  v6 = [v4 data];

  v7 = [(BLTPBHandleLaunchSessionActionRequest *)v5 initWithData:v6];
  v8 = [(BLTPBHandleLaunchSessionActionRequest *)v7 sectionID];
  v9 = [(BLTPBHandleLaunchSessionActionRequest *)v7 publisherBulletinID];
  if (v9)
  {
    v10 = [BLTBBBulletinKey bulletinKeyWithSectionID:v8 publisherMatchID:v9];
  }

  else
  {
    v11 = [(BLTPBHandleLaunchSessionActionRequest *)v7 recordID];
    v10 = [BLTBBBulletinKey bulletinKeyWithSectionID:v8 publisherMatchID:v11];
  }

  v12 = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v13 = [v12 phonePublisherBulletinIDForGizmoKey:v10];

  v14 = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v30 = v10;
  v15 = [v14 phoneSectionIDForGizmoKey:v10];

  v16 = [BLTActionInfo alloc];
  v17 = [(BLTPBHandleLaunchSessionActionRequest *)v7 recordID];
  [(BLTPBHandleLaunchSessionActionRequest *)v7 actionInfo];
  v18 = v29 = self;
  v19 = [v18 context];
  v20 = [(BLTPBHandleLaunchSessionActionRequest *)v7 actionInfo];
  v21 = [v20 contextNulls];
  v22 = _dictionaryFromPBData(v19, v21);
  v23 = [(BLTActionInfo *)v16 initWithActionType:11 publisherBulletinID:v13 recordID:v17 sectionID:v15 context:v22];

  v24 = blt_ids_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [(PBCodable *)v7 redact];
    v26 = [(BLTRemoteGizmoClient *)v29 server];
    *buf = 138412802;
    v32 = v25;
    v33 = 2112;
    v34 = v23;
    v35 = 2112;
    v36 = v26;
    _os_log_impl(&dword_241FB3000, v24, OS_LOG_TYPE_DEFAULT, "handleLaunchSessionActionRequest: Received request: %@ generated actionInfo: %@ sending to: %@", buf, 0x20u);
  }

  v27 = [(BLTRemoteGizmoClient *)v29 server];
  [v27 handleAction:v23];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)handleRemoveBulletinRequest:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [BLTPBRemoveBulletinRequest alloc];
  v6 = [v4 data];

  v7 = [(BLTPBRemoveBulletinRequest *)v5 initWithData:v6];
  v8 = blt_ids_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(PBCodable *)v7 redact];
    v21 = 136315394;
    v22 = "[BLTRemoteGizmoClient handleRemoveBulletinRequest:]";
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", &v21, 0x16u);
  }

  v10 = [(BLTPBRemoveBulletinRequest *)v7 sectionID];
  v11 = [(BLTPBRemoveBulletinRequest *)v7 publisherBulletinID];
  if (v11)
  {
    v12 = [BLTBBBulletinKey bulletinKeyWithSectionID:v10 publisherMatchID:v11];
  }

  else
  {
    v13 = [(BLTPBRemoveBulletinRequest *)v7 recordID];
    v12 = [BLTBBBulletinKey bulletinKeyWithSectionID:v10 publisherMatchID:v13];
  }

  v14 = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v15 = [v14 phonePublisherBulletinIDForGizmoKey:v12];

  v16 = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v17 = [v16 phoneSectionIDForGizmoKey:v12];

  v18 = [(BLTPBRemoveBulletinRequest *)v7 recordID];
  v19 = [(BLTRemoteGizmoClient *)self server];
  [v19 removeBulletinWithPublisherBulletinID:v15 recordID:v18 sectionID:v17];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleDidPlayLightsAndSirensReply:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [BLTPBHandleDidPlayLightsAndSirensReplyRequest alloc];
  v6 = [v4 data];

  v7 = [(BLTPBHandleDidPlayLightsAndSirensReplyRequest *)v5 initWithData:v6];
  v8 = blt_ids_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(PBCodable *)v7 redact];
    v24 = 136315394;
    v25 = "[BLTRemoteGizmoClient handleDidPlayLightsAndSirensReply:]";
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", &v24, 0x16u);
  }

  kdebug_trace();
  v10 = [(BLTPBHandleDidPlayLightsAndSirensReplyRequest *)v7 didPlayLightsAndSirens];
  v11 = [(BLTPBHandleDidPlayLightsAndSirensReplyRequest *)v7 phoneSectionID];
  v12 = [(BLTPBHandleDidPlayLightsAndSirensReplyRequest *)v7 publisherMatchID];
  v13 = [BLTBBBulletinKey bulletinKeyWithSectionID:v11 publisherMatchID:v12];

  v14 = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v15 = [v14 phonePublisherBulletinIDForGizmoKey:v13];

  v16 = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v17 = [v16 phoneSectionIDForGizmoKey:v13];

  v18 = [(BLTPBHandleDidPlayLightsAndSirensReplyRequest *)v7 replyToken];
  v19 = [(BLTRemoteGizmoClient *)self server];
  v20 = MEMORY[0x277CBEAA8];
  [(BLTPBHandleDidPlayLightsAndSirensReplyRequest *)v7 date];
  v21 = [v20 dateWithTimeIntervalSince1970:?];
  v22 = [MEMORY[0x277CBEAA8] date];
  [v19 handleDidPlayLightsAndSirens:v10 forBulletin:v15 inPhoneSection:v17 transmissionDate:v21 receptionDate:v22 replyToken:v18];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleHandlePairedDeviceReady:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [BLTPBHandlePairedDeviceReady alloc];
  v6 = [v4 data];

  v7 = [(BLTPBHandlePairedDeviceReady *)v5 initWithData:v6];
  v8 = blt_ids_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(PBCodable *)v7 redact];
    v11 = 136315394;
    v12 = "[BLTRemoteGizmoClient handleHandlePairedDeviceReady:]";
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", &v11, 0x16u);
  }

  if ([(BLTRemoteObject *)self lastKnownConnectionStatus]== 1)
  {
    [(BLTRemoteObject *)self setPairedDeviceReady:1];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleShouldSuppressLightsAndSirensNowRequest:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [BLTPBShouldSuppressLightsAndSirensNowRequest alloc];
  v6 = [v4 data];
  v7 = [(BLTPBShouldSuppressLightsAndSirensNowRequest *)v5 initWithData:v6];

  v8 = blt_ids_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(PBCodable *)v7 redact];
    *buf = 136315394;
    v15 = "[BLTRemoteGizmoClient handleShouldSuppressLightsAndSirensNowRequest:]";
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", buf, 0x16u);
  }

  v10 = [(BLTRemoteGizmoClient *)self server];
  v11 = [v10 shouldSuppressLightsAndSirensNow];

  v12 = objc_alloc_init(BLTPBShouldSuppressLightsAndSirensNowResponse);
  [(BLTPBShouldSuppressLightsAndSirensNowResponse *)v12 setShouldSuppress:v11];
  [(BLTRemoteObject *)self sendResponse:v12 type:16 withRequest:v4 withTimeout:0 withDescription:0 onlyOneFor:0 didSend:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleWillSendLightsAndSirensRequest:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [BLTPBWillSendLightsAndSirensRequest alloc];
  v6 = [v4 data];
  v7 = [(BLTPBWillSendLightsAndSirensRequest *)v5 initWithData:v6];

  v8 = blt_ids_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(PBCodable *)v7 redact];
    *buf = 136315394;
    v29 = "[BLTRemoteGizmoClient handleWillSendLightsAndSirensRequest:]";
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", buf, 0x16u);
  }

  v10 = [(BLTPBWillSendLightsAndSirensRequest *)v7 sectionID];
  v11 = [(BLTPBWillSendLightsAndSirensRequest *)v7 publisherBulletinID];
  if (v11)
  {
    v12 = [BLTBBBulletinKey bulletinKeyWithSectionID:v10 publisherMatchID:v11];
  }

  else
  {
    v13 = [(BLTPBWillSendLightsAndSirensRequest *)v7 recordID];
    v12 = [BLTBBBulletinKey bulletinKeyWithSectionID:v10 publisherMatchID:v13];
  }

  v14 = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v15 = [v14 phonePublisherBulletinIDForGizmoKey:v12];

  v16 = [(BLTRemoteGizmoClient *)self gizmoLegacyMap];
  v17 = [v16 phoneSectionIDForGizmoKey:v12];

  v18 = [(BLTRemoteGizmoClient *)self server];
  v19 = [(BLTPBWillSendLightsAndSirensRequest *)v7 recordID];
  v20 = [(BLTPBWillSendLightsAndSirensRequest *)v7 systemApp];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __61__BLTRemoteGizmoClient_handleWillSendLightsAndSirensRequest___block_invoke;
  v24[3] = &unk_278D31A70;
  v25 = v7;
  v26 = self;
  v27 = v4;
  v21 = v4;
  v22 = v7;
  [v18 willSendLightsAndSirensWithPublisherBulletinID:v15 recordID:v19 inPhoneSection:v17 systemApp:v20 completion:v24];

  v23 = *MEMORY[0x277D85DE8];
}

void __61__BLTRemoteGizmoClient_handleWillSendLightsAndSirensRequest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(BLTPBWillSendLightsAndSirensResponse);
  [(BLTPBWillSendLightsAndSirensResponse *)v6 setWillSend:a2];
  if ([*(a1 + 32) hasSystemApp])
  {
    [(BLTPBWillSendLightsAndSirensResponse *)v6 setAdditionalWait:a3];
  }

  [*(a1 + 40) sendResponse:v6 type:18 withRequest:*(a1 + 48) withTimeout:0 withDescription:0 onlyOneFor:0 didSend:0];
}

- (BLTCompanionServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

@end