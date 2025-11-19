@interface BLTSettingSyncServer
- (BLTSettingSyncServer)init;
- (BLTSettingSyncingClient)delegate;
- (void)handleRemoveSectionRequest:(id)a3;
- (void)handleSetNotificationsAlertLevelRequest:(id)a3;
- (void)handleSetNotificationsCriticalAlertRequest:(id)a3;
- (void)handleSetNotificationsGroupingRequest:(id)a3;
- (void)handleSetNotificationsSoundRequest:(id)a3;
- (void)handleSetRemoteGlobalSettingsRequest:(id)a3;
- (void)handleSetRemoteGlobalSpokenSettingEnabledRequest:(id)a3;
- (void)handleSetSectionInfoRequest:(id)a3;
- (void)handleSetSectionSubtypeParametersIconRequest:(id)a3;
- (void)handleSetSectionSubtypeParametersIconResponse:(id)a3;
- (void)registerProtobufHandlers;
- (void)remoteGlobalSettingsSyncServer:(id)a3 sendChangeset:(id)a4;
- (void)removeSectionInfoSentCacheForSectionID:(id)a3;
- (void)removeSectionWithSectionID:(id)a3 sent:(id)a4;
- (void)sendSpooledRequestsNowWithSent:(id)a3 withAcknowledgement:(id)a4;
- (void)setSectionInfo:(id)a3 completion:(id)a4;
- (void)setSectionInfo:(id)a3 withSent:(id)a4 withAcknowledgement:(id)a5 keypaths:(id)a6 spoolToFile:(BOOL)a7;
- (void)setSectionSubtypeParametersIcon:(id)a3 forSectionID:(id)a4 forSubtypeID:(int64_t)a5;
- (void)setSectionSubtypeParametersIcon:(id)a3 forSectionID:(id)a4 forSubtypeID:(int64_t)a5 withQueue:(id)a6 withSent:(id)a7 withAcknowledgement:(id)a8 spoolToFile:(BOOL)a9;
@end

@implementation BLTSettingSyncServer

- (BLTSettingSyncServer)init
{
  v2 = [(BLTRemoteObject *)self initWithServiceName:@"com.apple.private.alloy.bulletindistributor.settings" idsQueueName:"com.apple.bulletindistributor.settingsync"];
  if (v2)
  {
    v3 = [MEMORY[0x277D2BCC8] activePairedDeviceSupportsFileSettingSync];
    v4 = off_278D30E28;
    if (!v3)
    {
      v4 = off_278D30E30;
    }

    v5 = objc_alloc_init(*v4);
    settingSendSerializer = v2->_settingSendSerializer;
    v2->_settingSendSerializer = v5;

    [(BLTSettingsSendSerializerPassthrough *)v2->_settingSendSerializer setDelegate:v2];
    v7 = [MEMORY[0x277D2BCF8] sharedInstance];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __28__BLTSettingSyncServer_init__block_invoke;
    v9[3] = &unk_278D317C0;
    v10 = v2;
    [v7 waitForPairingStorePathPairingID:v9];
  }

  return v2;
}

void __28__BLTSettingSyncServer_init__block_invoke(uint64_t a1, void *a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 stringByAppendingPathComponent:@"BulletinDistributor"];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v21 = *MEMORY[0x277CCA1B0];
    v22[0] = *MEMORY[0x277CCA1B8];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v20 = 0;
    v9 = [v7 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:v8 error:&v20];
    v6 = v20;

    if ((v9 & 1) == 0)
    {
      v10 = blt_settings_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __28__BLTSettingSyncServer_init__block_invoke_cold_1(v3, v10);
      }
    }
  }

  v11 = [v3 stringByAppendingPathComponent:@"PreviouslySentSettingSyncMessageStore.plist"];
  v12 = [[BLTPreviouslySentMessageStore alloc] initWithMessageStorePath:v11];
  v13 = *(a1 + 32);
  v14 = *(v13 + 168);
  *(v13 + 168) = v12;

  v15 = [v3 stringByAppendingPathComponent:@"PreviouslySentSectionSubtypeParameterIconsMessageStore.plist"];

  v16 = [[BLTPreviouslySentMessageStore alloc] initWithMessageStorePath:v15];
  v17 = *(a1 + 32);
  v18 = *(v17 + 176);
  *(v17 + 176) = v16;

  v19 = *MEMORY[0x277D85DE8];
}

- (void)registerProtobufHandlers
{
  [(BLTRemoteObject *)self setProtobufAction:sel_handleSetSectionInfoRequest_ forIncomingRequestsOfType:13];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleSetSectionSubtypeParametersIconRequest_ forIncomingRequestsOfType:14];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleRemoveSectionRequest_ forIncomingRequestsOfType:19];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleSetNotificationsAlertLevelRequest_ forIncomingRequestsOfType:20];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleSetNotificationsGroupingRequest_ forIncomingRequestsOfType:21];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleSetNotificationsSoundRequest_ forIncomingRequestsOfType:22];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleSetNotificationsCriticalAlertRequest_ forIncomingRequestsOfType:23];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleSetRemoteGlobalSpokenSettingEnabledRequest_ forIncomingRequestsOfType:24];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleSetRemoteGlobalSettingsRequest_ forIncomingRequestsOfType:25];
  [(BLTRemoteObject *)self setProtobufAction:sel_handleSetSectionInfoResponse_ forIncomingResponsesOfType:13];

  [(BLTRemoteObject *)self setProtobufAction:sel_handleSetSectionSubtypeParametersIconResponse_ forIncomingResponsesOfType:14];
}

- (void)setSectionInfo:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  __assert_rtn("[BLTSettingSyncServer setSectionInfo:completion:]", "BLTSettingSyncServer.m", 144, "0");
}

- (void)setSectionInfo:(id)a3 withSent:(id)a4 withAcknowledgement:(id)a5 keypaths:(id)a6 spoolToFile:(BOOL)a7
{
  HIDWORD(v41) = a7;
  location[2] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v49 = a4;
  v47 = a5;
  v44 = a6;
  context = objc_autoreleasePoolPush();
  v12 = objc_alloc_init(BLTPBSetSectionInfoRequest);
  [(BLTPBSetSectionInfoRequest *)v12 setSectionInfo:v11];
  v13 = v12;
  v52 = [v11 icon];
  v48 = [v52 data];
  v14 = [v11 sectionID];
  v51 = [v14 stringByAppendingString:@".setSectionInfoIconsOnly"];

  v50 = [(BLTPreviouslySentMessageStore *)self->_sectionInfoPreviouslySentMessageStore messageDigestForUnsentMessage:v48 messageKey:v51];
  v15 = objc_alloc_init(BLTPBSetSectionInfoRequest);
  v16 = v11;
  v17 = v16;
  v18 = v16;
  if (v52)
  {
    v18 = [v16 copy];

    [v18 setIcon:0];
    [v18 setIconsStripped:1];
  }

  v43 = v17;
  [(BLTPBSetSectionInfoRequest *)v15 setSectionInfo:v18];
  v19 = [(BLTPBSetSectionInfoRequest *)v13 sectionInfo];
  v20 = [v19 sectionID];
  v21 = [v20 stringByAppendingString:@".setSectionInfoWithoutIcons"];

  sectionInfoPreviouslySentMessageStore = self->_sectionInfoPreviouslySentMessageStore;
  v23 = [(BLTPBSetSectionInfoRequest *)v15 data];
  v46 = [(BLTPreviouslySentMessageStore *)sectionInfoPreviouslySentMessageStore messageDigestForUnsentMessage:v23 messageKey:v21];

  if (v50)
  {
    if (v13)
    {
      v24 = MEMORY[0x277CCACA8];
      v25 = [(BLTPBSetSectionInfoRequest *)v13 sectionInfo];
      v26 = [v25 sectionID];
      v42 = [v24 stringWithFormat:@"setSectionInfoWithIcons:%@", v26];

      v27 = MEMORY[0x277CCACA8];
      v28 = [(BLTPBSetSectionInfoRequest *)v13 sectionInfo];
      v29 = [v28 sectionID];
      v30 = [v27 stringWithFormat:@"%@.setSectionInfo.withIcons", v29];
      v31 = v13;
LABEL_9:

      objc_initWeak(location, self);
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __89__BLTSettingSyncServer_setSectionInfo_withSent_withAcknowledgement_keypaths_spoolToFile___block_invoke;
      v55[3] = &unk_278D33040;
      objc_copyWeak(&v61, location);
      v56 = v50;
      v57 = v51;
      v58 = v46;
      v59 = v21;
      v60 = v47;
      v36 = MEMORY[0x245D067A0](v55);
      settingSendSerializer = self->_settingSendSerializer;
      v38 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __89__BLTSettingSyncServer_setSectionInfo_withSent_withAcknowledgement_keypaths_spoolToFile___block_invoke_2;
      v53[3] = &unk_278D31A20;
      v54 = v49;
      LOBYTE(v41) = BYTE4(v41);
      [(BLTSettingsSendSerializerPassthrough *)settingSendSerializer sendRequest:v31 type:13 withTimeout:v38 withDescription:v42 onlyOneFor:v30 didSend:v53 andResponse:v36 spoolToFile:v41];

      objc_destroyWeak(&v61);
      objc_destroyWeak(location);

      goto LABEL_18;
    }
  }

  else if (v46)
  {
    v31 = v15;

    if (v31)
    {
      v32 = MEMORY[0x277CCACA8];
      v33 = [(BLTPBSetSectionInfoRequest *)v13 sectionInfo];
      v34 = [v33 sectionID];
      v42 = [v32 stringWithFormat:@"setSectionInfoWithoutIcons:%@", v34];

      v35 = MEMORY[0x277CCACA8];
      v28 = [(BLTPBSetSectionInfoRequest *)v13 sectionInfo];
      v29 = [v28 sectionID];
      v30 = [v35 stringWithFormat:@"%@.setSectionInfo.withoutIcons", v29];
      goto LABEL_9;
    }
  }

  else
  {
  }

  v39 = blt_settings_log();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(location[0]) = 138412290;
    *(location + 4) = v21;
    _os_log_impl(&dword_241FB3000, v39, OS_LOG_TYPE_DEFAULT, "Not sending %@ because already sent", location, 0xCu);
  }

  if (v49)
  {
    (*(v49 + 2))(v49, 1, 0);
  }

  if (v47)
  {
    v47[2]();
  }

  v31 = 0;
LABEL_18:

  objc_autoreleasePoolPop(context);
  v40 = *MEMORY[0x277D85DE8];
}

uint64_t __89__BLTSettingSyncServer_setSectionInfo_withSent_withAcknowledgement_keypaths_spoolToFile___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v5 = WeakRetained;
    if (*(a1 + 32))
    {
      v6 = [WeakRetained sectionInfoPreviouslySentMessageStore];
      [v6 recordMessageDigestAsPreviouslySent:*(a1 + 32) messageKey:*(a1 + 40)];
    }

    if (*(a1 + 48))
    {
      v7 = [v5 sectionInfoPreviouslySentMessageStore];
      [v7 recordMessageDigestAsPreviouslySent:*(a1 + 48) messageKey:*(a1 + 56)];
    }

    v3 = v10;
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    v8 = (*(v8 + 16))(v8, v3 != 0);
    v3 = v10;
  }

  return MEMORY[0x2821F96F8](v8, v3);
}

uint64_t __89__BLTSettingSyncServer_setSectionInfo_withSent_withAcknowledgement_keypaths_spoolToFile___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setSectionSubtypeParametersIcon:(id)a3 forSectionID:(id)a4 forSubtypeID:(int64_t)a5
{
  v6 = a3;
  v7 = a4;
  __assert_rtn("[BLTSettingSyncServer setSectionSubtypeParametersIcon:forSectionID:forSubtypeID:]", "BLTSettingSyncServer.m", 258, "0");
}

- (void)setSectionSubtypeParametersIcon:(id)a3 forSectionID:(id)a4 forSubtypeID:(int64_t)a5 withQueue:(id)a6 withSent:(id)a7 withAcknowledgement:(id)a8 spoolToFile:(BOOL)a9
{
  location[2] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  queue = a6;
  v36 = a7;
  v37 = a8;
  context = objc_autoreleasePoolPush();
  v17 = objc_alloc_init(BLTPBSetSectionSubtypeParametersIconRequest);
  v33 = v16;
  [(BLTPBSetSectionSubtypeParametersIconRequest *)v17 setSectionID:v16];
  if (a5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(BLTPBSetSectionSubtypeParametersIconRequest *)v17 setSubtypeID:a5];
  }

  [(BLTPBSetSectionSubtypeParametersIconRequest *)v17 setDefaultSubtype:a5 == 0x7FFFFFFFFFFFFFFFLL];
  v31 = v15;
  [(BLTPBSetSectionSubtypeParametersIconRequest *)v17 setIcon:v15];
  v34 = [(BLTPBSetSectionSubtypeParametersIconRequest *)v17 data];
  v18 = MEMORY[0x277CCACA8];
  if (a5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v16, @"default"];
  }

  else
  {
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    v19 = [v18 stringWithFormat:@"%@.%@", v16, v20];
  }

  v21 = [(BLTPreviouslySentMessageStore *)self->_sectionSubtypeParametersIconsPreviouslySentMessageStore messageDigestForUnsentMessage:v34 messageKey:v19];
  if (v21)
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"setSectionSubtypeParametersIcon:%@", v19];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.setSectionSubtypeParametersIcon", v19];
    objc_initWeak(location, self);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __133__BLTSettingSyncServer_setSectionSubtypeParametersIcon_forSectionID_forSubtypeID_withQueue_withSent_withAcknowledgement_spoolToFile___block_invoke;
    v45[3] = &unk_278D33068;
    objc_copyWeak(&v50, location);
    v46 = v21;
    v47 = v19;
    v49 = v37;
    v24 = queue;
    v48 = v24;
    v25 = MEMORY[0x245D067A0](v45);
    settingSendSerializer = self->_settingSendSerializer;
    v27 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __133__BLTSettingSyncServer_setSectionSubtypeParametersIcon_forSectionID_forSubtypeID_withQueue_withSent_withAcknowledgement_spoolToFile___block_invoke_3;
    v42[3] = &unk_278D33090;
    v44 = v36;
    v43 = v24;
    LOBYTE(v30) = a9;
    [(BLTSettingsSendSerializerPassthrough *)settingSendSerializer sendRequest:v17 type:14 withTimeout:v27 withDescription:v22 onlyOneFor:v23 didSend:v42 andResponse:v25 spoolToFile:v30];

    objc_destroyWeak(&v50);
    objc_destroyWeak(location);

LABEL_14:
    goto LABEL_15;
  }

  v28 = blt_settings_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    LODWORD(location[0]) = 138412290;
    *(location + 4) = v19;
    _os_log_impl(&dword_241FB3000, v28, OS_LOG_TYPE_INFO, "Not sending %@ because already sent", location, 0xCu);
  }

  if (v36)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __133__BLTSettingSyncServer_setSectionSubtypeParametersIcon_forSectionID_forSubtypeID_withQueue_withSent_withAcknowledgement_spoolToFile___block_invoke_68;
    block[3] = &unk_278D314F0;
    v41 = v36;
    dispatch_async(queue, block);
  }

  if (v37)
  {
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __133__BLTSettingSyncServer_setSectionSubtypeParametersIcon_forSectionID_forSubtypeID_withQueue_withSent_withAcknowledgement_spoolToFile___block_invoke_2_69;
    v38[3] = &unk_278D314F0;
    v39 = v37;
    dispatch_async(queue, v38);
    v22 = v39;
    goto LABEL_14;
  }

LABEL_15:

  objc_autoreleasePoolPop(context);
  v29 = *MEMORY[0x277D85DE8];
}

void __133__BLTSettingSyncServer_setSectionSubtypeParametersIcon_forSectionID_forSubtypeID_withQueue_withSent_withAcknowledgement_spoolToFile___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = [WeakRetained sectionSubtypeParametersIconsPreviouslySentMessageStore];
    [v6 recordMessageDigestAsPreviouslySent:*(a1 + 32) messageKey:*(a1 + 40)];
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(a1 + 48);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __133__BLTSettingSyncServer_setSectionSubtypeParametersIcon_forSectionID_forSubtypeID_withQueue_withSent_withAcknowledgement_spoolToFile___block_invoke_2;
    v9[3] = &unk_278D31478;
    v11 = v7;
    v10 = v3;
    dispatch_async(v8, v9);
  }
}

void __133__BLTSettingSyncServer_setSectionSubtypeParametersIcon_forSectionID_forSubtypeID_withQueue_withSent_withAcknowledgement_spoolToFile___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __133__BLTSettingSyncServer_setSectionSubtypeParametersIcon_forSectionID_forSubtypeID_withQueue_withSent_withAcknowledgement_spoolToFile___block_invoke_4;
    block[3] = &unk_278D314C8;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)sendSpooledRequestsNowWithSent:(id)a3 withAcknowledgement:(id)a4
{
  settingSendSerializer = self->_settingSendSerializer;
  v6 = MEMORY[0x277CCABB0];
  v7 = *MEMORY[0x277D18828];
  v8 = a4;
  v9 = a3;
  v10 = [v6 numberWithDouble:v7];
  [(BLTSettingsSendSerializerPassthrough *)settingSendSerializer sendNowWithSent:v9 withAcknowledgement:v8 withTimeout:v10];
}

- (void)removeSectionInfoSentCacheForSectionID:(id)a3
{
  v4 = [a3 stringByAppendingString:@".setSectionInfoWithoutIcons"];
  [(BLTPreviouslySentMessageStore *)self->_sectionInfoPreviouslySentMessageStore removeDigestForKey:v4];
}

- (void)removeSectionWithSectionID:(id)a3 sent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v16 = objc_alloc_init(BLTPBRemoveSectionRequest);
  [(BLTPBRemoveSectionRequest *)v16 setSectionID:v7];
  v8 = [(BLTSettingSyncServer *)self sectionInfoPreviouslySentMessageStore];
  v9 = [v7 stringByAppendingString:@".setSectionInfoIconsOnly"];
  [v8 removeDigestForKey:v9];

  v10 = [(BLTSettingSyncServer *)self sectionInfoPreviouslySentMessageStore];
  v11 = [v7 stringByAppendingString:@".setSectionInfoWithoutIcons"];
  [v10 removeDigestForKey:v11];

  settingSendSerializer = self->_settingSendSerializer;
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.removeSectionRequest", v7];

  LOBYTE(v15) = 0;
  [(BLTSettingsSendSerializerPassthrough *)settingSendSerializer sendRequest:v16 type:19 withTimeout:v13 withDescription:0 onlyOneFor:v14 didSend:v6 andResponse:0 spoolToFile:v15];
}

- (void)remoteGlobalSettingsSyncServer:(id)a3 sendChangeset:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 blt_protobuf];
  v9 = blt_global_settings_sync_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v17 = self;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "%@ remoteGlobalSettingsSyncServer: %@ sendChangeset: %@", buf, 0x20u);
  }

  settingSendSerializer = self->_settingSendSerializer;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  LOBYTE(v15) = 0;
  [(BLTSettingsSendSerializerPassthrough *)settingSendSerializer sendRequest:v8 type:25 withTimeout:v11 withDescription:0 onlyOneFor:v13 didSend:0 andResponse:0 spoolToFile:v15];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleSetSectionInfoRequest:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [BLTPBSetSectionInfoRequest alloc];
  v6 = [v4 data];
  v7 = [(BLTPBSetSectionInfoRequest *)v5 initWithData:v6];

  v8 = blt_settings_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 136315394;
    v21 = "[BLTSettingSyncServer handleSetSectionInfoRequest:]";
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", buf, 0x16u);
  }

  if ([(BLTPBSetSectionInfoRequest *)v7 keypathsCount])
  {
    v11 = MEMORY[0x277CBEB98];
    v12 = [(BLTPBSetSectionInfoRequest *)v7 keypaths];
    v13 = [v11 setWithArray:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(BLTSettingSyncServer *)self delegate];
  v15 = [(BLTPBSetSectionInfoRequest *)v7 sectionInfo];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __52__BLTSettingSyncServer_handleSetSectionInfoRequest___block_invoke;
  v18[3] = &unk_278D31400;
  v18[4] = self;
  v19 = v4;
  v16 = v4;
  [v14 setSectionInfo:v15 keypaths:v13 completion:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __52__BLTSettingSyncServer_handleSetSectionInfoRequest___block_invoke(uint64_t a1)
{
  v5 = objc_alloc_init(BLTPBSetSectionInfoResponse);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  [v3 sendResponse:v5 type:13 withRequest:v2 withTimeout:v4 withDescription:@"sectionInfo response" onlyOneFor:0 didSend:0];
}

- (void)handleSetSectionSubtypeParametersIconRequest:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [BLTPBSetSectionSubtypeParametersIconRequest alloc];
  v6 = [v4 data];
  v7 = [(BLTPBSetSectionSubtypeParametersIconRequest *)v5 initWithData:v6];

  v8 = blt_settings_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 136315394;
    v19 = "[BLTSettingSyncServer handleSetSectionSubtypeParametersIconRequest:]";
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", buf, 0x16u);
  }

  v11 = [(BLTSettingSyncServer *)self delegate];
  v12 = [(BLTPBSetSectionSubtypeParametersIconRequest *)v7 icon];
  v13 = [(BLTPBSetSectionSubtypeParametersIconRequest *)v7 sectionID];
  if ([(BLTPBSetSectionSubtypeParametersIconRequest *)v7 defaultSubtype])
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = [(BLTPBSetSectionSubtypeParametersIconRequest *)v7 subtypeID];
  }

  [v11 setSectionSubtypeParametersIcon:v12 forSectionID:v13 forSubtypeID:v14];

  v15 = objc_alloc_init(BLTPBSetSectionSubtypeParametersIconResponse);
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  [(BLTRemoteObject *)self sendResponse:v15 type:14 withRequest:v4 withTimeout:v16 withDescription:@"subtypeParemetersIcon response" onlyOneFor:0 didSend:0];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleRemoveSectionRequest:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [BLTPBRemoveSectionRequest alloc];
  v6 = [v4 data];

  v7 = [(BLTPBRemoveSectionRequest *)v5 initWithData:v6];
  v8 = blt_settings_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v14 = 136315394;
    v15 = "[BLTSettingSyncServer handleRemoveSectionRequest:]";
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", &v14, 0x16u);
  }

  v11 = [(BLTSettingSyncServer *)self delegate];
  v12 = [(BLTPBRemoveSectionRequest *)v7 sectionID];
  [v11 removeSectionWithSectionID:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleSetSectionSubtypeParametersIconResponse:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = blt_settings_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

  if (v6)
  {
    v7 = [BLTPBSetSectionSubtypeParametersIconResponse alloc];
    v8 = [v4 data];
    v9 = [(BLTPBSetSectionSubtypeParametersIconResponse *)v7 initWithData:v8];

    v10 = blt_settings_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(PBCodable *)v9 redact];
      v15 = 136315394;
      v16 = "[BLTSettingSyncServer handleSetSectionSubtypeParametersIconResponse:]";
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_241FB3000, v10, OS_LOG_TYPE_DEFAULT, "Received response %s encapsulating %@", &v15, 0x16u);
    }
  }

  v12 = [v4 context];
  v13 = [v12 incomingResponseIdentifier];
  [(BLTSettingSyncServer *)self _handleResponse:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleSetNotificationsAlertLevelRequest:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [BLTPBSetNotificationsAlertLevelRequest alloc];
  v6 = [v4 data];

  v7 = [(BLTPBSetNotificationsAlertLevelRequest *)v5 initWithData:v6];
  v8 = blt_settings_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(PBCodable *)v7 redact];
    v15 = 136315394;
    v16 = "[BLTSettingSyncServer handleSetNotificationsAlertLevelRequest:]";
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", &v15, 0x16u);
  }

  v10 = [(BLTSettingSyncServer *)self delegate];
  v11 = [(BLTPBSetNotificationsAlertLevelRequest *)v7 level]- 1;
  if (v11 < 3)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(BLTPBSetNotificationsAlertLevelRequest *)v7 sectionID];
  [v10 setNotificationsLevel:v12 sectionID:v13 mirror:-[BLTPBSetNotificationsAlertLevelRequest mirror](v7 fromRemote:{"mirror"), 1}];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleSetNotificationsGroupingRequest:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [BLTPBSetNotificationsGroupingRequest alloc];
  v6 = [v4 data];

  v7 = [(BLTPBSetNotificationsGroupingRequest *)v5 initWithData:v6];
  v8 = blt_settings_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(PBCodable *)v7 redact];
    v14 = 136315394;
    v15 = "[BLTSettingSyncServer handleSetNotificationsGroupingRequest:]";
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", &v14, 0x16u);
  }

  v10 = [(BLTSettingSyncServer *)self delegate];
  v11 = [(BLTPBSetNotificationsGroupingRequest *)v7 grouping];
  v12 = [(BLTPBSetNotificationsGroupingRequest *)v7 sectionID];
  [v10 setNotificationsGrouping:v11 sectionID:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleSetNotificationsSoundRequest:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [BLTPBSetNotificationsSoundRequest alloc];
  v6 = [v4 data];

  v7 = [(BLTPBSetNotificationsSoundRequest *)v5 initWithData:v6];
  v8 = blt_settings_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(PBCodable *)v7 redact];
    v14 = 136315394;
    v15 = "[BLTSettingSyncServer handleSetNotificationsSoundRequest:]";
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", &v14, 0x16u);
  }

  v10 = [(BLTSettingSyncServer *)self delegate];
  v11 = [(BLTPBSetNotificationsSoundRequest *)v7 sound];
  v12 = [(BLTPBSetNotificationsSoundRequest *)v7 sectionID];
  [v10 setNotificationsSoundEnabled:v11 sectionID:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleSetNotificationsCriticalAlertRequest:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [BLTPBSetNotificationsCriticalAlertRequest alloc];
  v6 = [v4 data];

  v7 = [(BLTPBSetNotificationsCriticalAlertRequest *)v5 initWithData:v6];
  v8 = blt_settings_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(PBCodable *)v7 redact];
    v14 = 136315394;
    v15 = "[BLTSettingSyncServer handleSetNotificationsCriticalAlertRequest:]";
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", &v14, 0x16u);
  }

  v10 = [(BLTSettingSyncServer *)self delegate];
  v11 = [(BLTPBSetNotificationsCriticalAlertRequest *)v7 criticalAlertSetting];
  v12 = [(BLTPBSetNotificationsCriticalAlertRequest *)v7 sectionID];
  [v10 setNotificationsCriticalAlertEnabled:v11 sectionID:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleSetRemoteGlobalSpokenSettingEnabledRequest:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [BLTPBSetRemoteGlobalSpokenSettingEnabledRequest alloc];
  v6 = [v4 data];

  v7 = [(BLTPBSetRemoteGlobalSpokenSettingEnabledRequest *)v5 initWithData:v6];
  v8 = blt_settings_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(PBCodable *)v7 redact];
    v15 = 136315394;
    v16 = "[BLTSettingSyncServer handleSetRemoteGlobalSpokenSettingEnabledRequest:]";
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", &v15, 0x16u);
  }

  v10 = [(BLTSettingSyncServer *)self delegate];
  v11 = [(BLTPBSetRemoteGlobalSpokenSettingEnabledRequest *)v7 settingEnabled];
  v12 = MEMORY[0x277CBEAA8];
  [(BLTPBSetRemoteGlobalSpokenSettingEnabledRequest *)v7 settingDate];
  v13 = [v12 dateWithTimeIntervalSince1970:?];
  [v10 transportUpdateRemoteGlobalSpokenSettingEnabled:v11 date:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleSetRemoteGlobalSettingsRequest:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [BLTPBSetRemoteGlobalSettingsRequest alloc];
  v6 = [v4 data];

  v7 = [(BLTPBSetRemoteGlobalSettingsRequest *)v5 initWithData:v6];
  v8 = blt_settings_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(PBCodable *)v7 redact];
    v12 = 136315394;
    v13 = "[BLTSettingSyncServer handleSetRemoteGlobalSettingsRequest:]";
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s encapsulating %@", &v12, 0x16u);
  }

  v10 = [(BLTSettingSyncServer *)self delegate];
  [v10 updateGlobalSettings:v7];

  v11 = *MEMORY[0x277D85DE8];
}

- (BLTSettingSyncingClient)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __28__BLTSettingSyncServer_init__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Could not create %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end