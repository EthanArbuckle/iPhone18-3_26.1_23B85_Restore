@interface MSPReceiverETAController
- (BOOL)_allowMessageWithState:(id)a3 forGroup:(id)a4 fromID:(id)a5;
- (BOOL)_cleanUpNecessaryForGroup:(id)a3;
- (BOOL)subscribeToUpdatesToSharedTrip:(id)a3 error:(id *)a4;
- (BOOL)unsubscribeFromUpdatesToSharedTrip:(id)a3 error:(id *)a4;
- (MSPReceiverETAController)initWithRelay:(id)a3;
- (MSPReceiverETAControllerDelegate)delegate;
- (NSArray)allTrips;
- (void)_cleanGroup:(id)a3;
- (void)_cleanupIfNecessary;
- (void)_resolveContactIfNeeded:(id)a3 fromId:(id)a4 completion:(id)a5;
- (void)_showOrUpdateNotificationIfNeeded:(id)a3;
- (void)_updateData:(id)a3 forGroup:(id)a4 fromID:(id)a5;
- (void)_updateDelegateWithUpdateState:(id)a3 to:(id)a4 freshAvailable:(BOOL)a5;
- (void)blockSharedTrip:(id)a3;
- (void)cleanTimer;
- (void)clearBlockedTripIdentifiers;
- (void)dealloc;
- (void)groupSessionEnded:(id)a3;
- (void)purgeExpiredBlockedTripIdentifiers;
- (void)relay:(id)a3 receiveData:(id)a4 info:(id)a5 fromID:(id)a6;
- (void)relay:(id)a3 sharingClosed:(id)a4;
- (void)storageController:(id)a3 updatedSharedTripGroupStorage:(id)a4;
- (void)updateContacts;
@end

@implementation MSPReceiverETAController

- (NSArray)allTrips
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_idsRelay);
  v4 = [WeakRetained storageController];
  [v4 initialiseStoredSessionsIfNeeded];

  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableOrderedSet count](self->_orderedNavStateIdentifiers, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_orderedNavStateIdentifiers;
  v7 = [(NSMutableOrderedSet *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_sharedNavStates objectForKeyedSubscript:*(*(&v15 + 1) + 8 * i), v15];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableOrderedSet *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (MSPReceiverETAController)initWithRelay:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = MSPReceiverETAController;
  v5 = [(MSPReceiverETAController *)&v22 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_idsRelay, v4);
    v7 = +[MSPSharedTripBlocklist sharedInstance];
    blockedList = v6->_blockedList;
    v6->_blockedList = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sharedSessions = v6->_sharedSessions;
    v6->_sharedSessions = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sharedNavStates = v6->_sharedNavStates;
    v6->_sharedNavStates = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    waitingNavStates = v6->_waitingNavStates;
    v6->_waitingNavStates = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB40]);
    orderedNavStateIdentifiers = v6->_orderedNavStateIdentifiers;
    v6->_orderedNavStateIdentifiers = v15;

    v17 = [v4 storageController];
    [v17 setDelegate:v6];

    [v4 setDelegate:v6];
    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 addObserver:v6 selector:sel_updateContacts name:*MEMORY[0x277CBD140] object:0];
  }

  v19 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *v21 = 0;
    _os_log_impl(&dword_25813A000, v19, OS_LOG_TYPE_DEBUG, "MSPReceiverETAController initialized", v21, 2u);
  }

  return v6;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v7 = "[MSPReceiverETAController dealloc]";
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEBUG, "[Receiver] %{private}s", buf, 0xCu);
  }

  [(NSTimer *)self->_cleanupTimer invalidate];
  v5.receiver = self;
  v5.super_class = MSPReceiverETAController;
  [(MSPReceiverETAController *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)cleanTimer
{
  [(NSTimer *)self->_cleanupTimer invalidate];
  cleanupTimer = self->_cleanupTimer;
  self->_cleanupTimer = 0;
}

- (BOOL)subscribeToUpdatesToSharedTrip:(id)a3 error:(id *)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 138412290;
    *&v25[4] = v6;
    _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEFAULT, "MSPReceiverETAController subscribeToUpdatesToSharedTrip sharedTripIdentifier: %@", v25, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_idsRelay);
  v9 = [WeakRetained storageController];
  v10 = [v9 groupSessionInfoForKey:v6];

  if ([v10 hasState])
  {
    v11 = [v10 state];
    if ([v11 closed])
    {

      goto LABEL_7;
    }

    v12 = [v10 state];
    v13 = [v12 arrived];

    if (v13)
    {
LABEL_7:
      if (a4)
      {
        v26[0] = *MEMORY[0x277CCA068];
        *v25 = @"Trip already ended";
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v26 count:1];
        v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:18 userInfo:v14];

        v16 = v15;
        v17 = 0;
        *a4 = v15;
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_13;
    }
  }

  v18 = [(NSMutableDictionary *)self->_sharedSessions objectForKeyedSubscript:v6];
  if (!v18)
  {
    v18 = [WeakRetained groupSessionForIdentifier:v6];
    [(NSMutableDictionary *)self->_sharedSessions setObject:v18 forKeyedSubscript:v6];
    if (!self->_transaction)
    {
      v19 = os_transaction_create();
      transaction = self->_transaction;
      self->_transaction = v19;
    }
  }

  v21 = [v10 receivingHandle];
  v22 = [v10 receivingAccountIdentifier];
  v17 = [v18 joinLiveModeFromHandle:v21 fromAccountID:v22 error:a4];

LABEL_13:
  v23 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)unsubscribeFromUpdatesToSharedTrip:(id)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 138412290;
    *&v17[4] = v6;
    _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEFAULT, "MSPReceiverETAController unsubscribeFromUpdatesToSharedTrip sharedTripIdentifier: %@", v17, 0xCu);
  }

  v8 = [(NSMutableDictionary *)self->_sharedSessions objectForKeyedSubscript:v6];
  v9 = v8;
  if (!v8)
  {
    if (a4)
    {
      v18[0] = *MEMORY[0x277CCA068];
      *v17 = @"Invalid trip ID";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v18 count:1];
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:17 userInfo:v12];

      v14 = v13;
      v11 = 0;
      *a4 = v13;
      goto LABEL_11;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  if (![v8 leaveLiveModeIfNeeded:a4])
  {
    goto LABEL_10;
  }

  [(NSMutableDictionary *)self->_sharedSessions setObject:0 forKeyedSubscript:v6];
  if (![(NSMutableDictionary *)self->_sharedSessions count])
  {
    transaction = self->_transaction;
    self->_transaction = 0;
  }

  v11 = 1;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)blockSharedTrip:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v4;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "MSPReceiverETAController blockSharedTrip identifier: %@", buf, 0xCu);
  }

  [(MSPReceiverETAController *)self unsubscribeFromUpdatesToSharedTrip:v4 error:0];
  [(MSPSharedTripBlocklist *)self->_blockedList blockIdentifier:v4];
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    blockedList = self->_blockedList;
    *buf = 138412290;
    v26 = blockedList;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "MSPReceiverETAController blockSharedTrip _blockedList: %@", buf, 0xCu);
  }

  v8 = [(NSMutableDictionary *)self->_sharedNavStates allValues];
  v9 = [v8 copy];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = self->_blockedList;
        v17 = [v15 groupIdentifier];
        LODWORD(v16) = [(MSPSharedTripBlocklist *)v16 containsIdentifier:v17];

        if (v16)
        {
          v18 = [v15 groupIdentifier];
          [(MSPReceiverETAController *)self _cleanGroup:v18];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)clearBlockedTripIdentifiers
{
  v3 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "MSPReceiverETAController clear blocked trip identifiers", v4, 2u);
  }

  [(MSPSharedTripBlocklist *)self->_blockedList clearBlockedIdentifiers];
}

- (void)purgeExpiredBlockedTripIdentifiers
{
  v3 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "MSPReceiverETAController purge expired blocked trip identifiers", v4, 2u);
  }

  [(MSPSharedTripBlocklist *)self->_blockedList purgeExpiredIdentifiers];
}

- (void)_showOrUpdateNotificationIfNeeded:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (GEOConfigGetBOOL())
  {
    v5 = [(NSMutableDictionary *)self->_sharedNavStates objectForKeyedSubscript:v4];
    if ([v5 hasClosed] && objc_msgSend(v5, "closed"))
    {
      v6 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 138412290;
        v31 = v4;
        v7 = "[SR] _showOrUpdateNotification trip closed id %@";
LABEL_10:
        _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, v7, &v30, 0xCu);
        goto LABEL_31;
      }

      goto LABEL_31;
    }

    if ([v5 hasMuted] && objc_msgSend(v5, "muted"))
    {
      v6 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 138412290;
        v31 = v4;
        v7 = "[SR] _showOrUpdateNotification trip muted id %@";
        goto LABEL_10;
      }

LABEL_31:

      goto LABEL_32;
    }

    v6 = [(NSMutableDictionary *)self->_sharedSessions objectForKeyedSubscript:v4];
    if ([v6 inLiveMode])
    {
      WeakRetained = MSPGetSharedTripLog();
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 138412290;
        v31 = v4;
        _os_log_impl(&dword_25813A000, WeakRetained, OS_LOG_TYPE_DEFAULT, "[SR] _showOrUpdateNotification while in live mode %@", &v30, 0xCu);
      }

      goto LABEL_30;
    }

    WeakRetained = objc_loadWeakRetained(&self->_idsRelay);
    v9 = [WeakRetained storageController];
    v10 = [v9 receivingRulesForIdentifier:v4];

    if (v10)
    {
      v11 = [v5 destinationWaypointInfo];
      if (v11)
      {
        v12 = v11;
        v13 = [v5 etaInfo];
        if (v13)
        {
          v14 = v13;
          v15 = [v5 senderInfo];
          v16 = [v15 localName];

          if (v16)
          {
            v17 = [v5 etaInfo];
            [v17 etaTimestamp];
            v19 = v18;
            [v5 updatedTimestamp];
            [v10 didReceiveUpdateWithETA:v19 lastUpdated:v20];

            v21 = [v10 currentlyNecessaryNotificationTypeForState:v5];
            v22 = MSPGetSharedTripLog();
            v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
            if (v21)
            {
              if (v23)
              {
                v24 = [v5 mspDescription];
                v25 = MSPSharedTripNotificationTypeAsString(v21);
                v30 = 138412802;
                v31 = v4;
                v32 = 2112;
                v33 = v24;
                v34 = 2114;
                v35 = v25;
                _os_log_impl(&dword_25813A000, v22, OS_LOG_TYPE_DEFAULT, "[SR] _showOrUpdateNotification id %@ state %@ notificationType: %{public}@", &v30, 0x20u);
              }

              mapsNotificationCenter = self->_mapsNotificationCenter;
              v27 = [v5 data];
              [(MDNotificationCenter *)mapsNotificationCenter showSharedTripNotification:v4 ofType:v21 forState:v27];

              [v10 didPostNotificationType:v21 forState:v5];
            }

            else
            {
              if (v23)
              {
                LOWORD(v30) = 0;
                _os_log_impl(&dword_25813A000, v22, OS_LOG_TYPE_DEFAULT, "[SR] _showOrUpdateNotification not showing notification as type is none", &v30, 2u);
              }
            }

            v28 = [WeakRetained storageController];
            [v28 receivingRulesTouched];
LABEL_29:

LABEL_30:
            goto LABEL_31;
          }
        }

        else
        {
        }
      }
    }

    v28 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 138412546;
      v31 = v10;
      v32 = 2112;
      v33 = v5;
      _os_log_impl(&dword_25813A000, v28, OS_LOG_TYPE_DEFAULT, "[SR] _showOrUpdateNotification skipping notification, rules: %@ currentState: %@", &v30, 0x16u);
    }

    goto LABEL_29;
  }

LABEL_32:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_resolveContactIfNeeded:(id)a3 fromId:(id)a4 completion:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  sharedNavStates = self->_sharedNavStates;
  v11 = a4;
  v12 = [(NSMutableDictionary *)sharedNavStates objectForKeyedSubscript:v8];
  v13 = [v11 componentsSeparatedByString:@":"];

  v14 = [v13 lastObject];
  v15 = [v12 senderInfo];
  [v15 setFromIdentifier:v14];

  v16 = [v12 senderInfo];
  v17 = [v16 hasLocalName];

  if (v17)
  {
    v9[2](v9);
  }

  else
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __70__MSPReceiverETAController__resolveContactIfNeeded_fromId_completion___block_invoke;
    v31[3] = &unk_279865EF8;
    v18 = v12;
    v32 = v18;
    v19 = v14;
    v33 = v19;
    v20 = MEMORY[0x259C7AD60](v31);
    v21 = [MEMORY[0x277CBDAB8] _maps_isAuthorized];
    v22 = MSPGetSharedTripLog();
    v23 = v22;
    if (v21)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v24 = [v18 mspDescription];
        *buf = 138478339;
        v35 = v19;
        v36 = 2112;
        v37 = v8;
        v38 = 2112;
        v39 = v24;
        _os_log_impl(&dword_25813A000, v23, OS_LOG_TYPE_INFO, "[SR] _resolveContact %{private}@ (id %@ state %@)", buf, 0x20u);
      }

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __70__MSPReceiverETAController__resolveContactIfNeeded_fromId_completion___block_invoke_22;
      v27[3] = &unk_279865F20;
      v28 = v18;
      v29 = v20;
      v30 = v9;
      [MSPContact contactWithAccountIdentifier:v19 completion:v27];
    }

    else
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v25 = [v18 mspDescription];
        *buf = 138478339;
        v35 = v19;
        v36 = 2112;
        v37 = v8;
        v38 = 2112;
        v39 = v25;
        _os_log_impl(&dword_25813A000, v23, OS_LOG_TYPE_ERROR, "[SR] _resolveContact [not authorized for Contacts access] %{private}@ (id %@ state %@)", buf, 0x20u);
      }

      v20[2](v20);
      v9[2](v9);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __70__MSPReceiverETAController__resolveContactIfNeeded_fromId_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) senderInfo];
  v3 = [v2 fromDisplayName];
  v4 = [v3 length];

  if (v4)
  {
    v8 = [*(a1 + 32) senderInfo];
    v5 = [v8 fromDisplayName];
    v6 = [*(a1 + 32) senderInfo];
    [v6 setLocalName:v5];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) senderInfo];
    [v8 setLocalName:v7];
  }
}

void __70__MSPReceiverETAController__resolveContactIfNeeded_fromId_completion___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v8 length] && objc_msgSend(v5, "length"))
  {
    v6 = [*(a1 + 32) senderInfo];
    [v6 setLocalName:v8];

    v7 = [*(a1 + 32) senderInfo];
    [v7 setLocalContactIdentifier:v5];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  (*(*(a1 + 48) + 16))();
}

- (void)updateContacts
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(NSMutableDictionary *)self->_sharedNavStates allValues];
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = *v18;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v17 + 1) + 8 * i);
        v7 = [v6 senderInfo];
        [v7 setLocalName:0];

        v8 = [v6 senderInfo];
        [v8 setLocalContactIdentifier:0];

        objc_initWeak(&location, self);
        v9 = [v6 groupIdentifier];
        v10 = [v6 senderInfo];
        v11 = [v10 fromIdentifier];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __42__MSPReceiverETAController_updateContacts__block_invoke;
        v14[3] = &unk_279865F48;
        objc_copyWeak(&v15, &location);
        v14[4] = v6;
        [(MSPReceiverETAController *)self _resolveContactIfNeeded:v9 fromId:v11 completion:v14];

        objc_destroyWeak(&v15);
        objc_destroyWeak(&location);
      }

      v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __42__MSPReceiverETAController_updateContacts__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 10);
    v4 = v7[3];
    v5 = [*(a1 + 32) groupIdentifier];
    v6 = [v4 objectForKeyedSubscript:v5];
    [v3 etaController:v7 didUpdateETAForSharedTrip:v6];

    WeakRetained = v7;
  }
}

- (BOOL)_allowMessageWithState:(id)a3 forGroup:(id)a4 fromID:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  if ([(__CFString *)v7 length])
  {
    if ([(MSPSharedTripBlocklist *)self->_blockedList containsIdentifier:v7])
    {
      v9 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        blockedList = self->_blockedList;
        v34 = 138412546;
        v35 = blockedList;
        v36 = 2112;
        v37 = v7;
        v11 = "[SR] _allowMessageWithState NO blocklist %@ contains identifier %@";
        v12 = v9;
        v13 = OS_LOG_TYPE_DEFAULT;
        v14 = 22;
LABEL_7:
        _os_log_impl(&dword_25813A000, v12, v13, v11, &v34, v14);
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    v9 = [(NSMutableDictionary *)self->_sharedSessions objectForKeyedSubscript:v7];
    if (v9)
    {
      v15 = [(__CFString *)v8 componentsSeparatedByString:@":"];
      v16 = [v15 lastObject];
      if (![v16 length])
      {
LABEL_21:

        goto LABEL_22;
      }

      v17 = [(NSMutableDictionary *)self->_sharedSessions objectForKeyedSubscript:v7];
      v18 = [v17 initiatorIdentifier];
      v19 = [v18 isEqualToString:v8];

      v20 = [(NSMutableDictionary *)self->_sharedSessions objectForKeyedSubscript:v7];
      v21 = [v20 accountIdentifiers];
      v22 = [v21 containsObject:v16];

      if ((v19 & 1) == 0 && (v22 & 1) == 0)
      {
        v23 = MSPGetSharedTripLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v34 = 138412290;
          v35 = v8;
          _os_log_impl(&dword_25813A000, v23, OS_LOG_TYPE_ERROR, "fromID %@", &v34, 0xCu);
        }

        v24 = MSPGetSharedTripLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = [(NSMutableDictionary *)self->_sharedSessions objectForKeyedSubscript:v7];
          v26 = [v25 initiatorIdentifier];
          v34 = 138412290;
          v35 = v26;
          _os_log_impl(&dword_25813A000, v24, OS_LOG_TYPE_ERROR, "initiatorIdentifier %@", &v34, 0xCu);
        }

        v27 = MSPGetSharedTripLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = [(NSMutableDictionary *)self->_sharedSessions objectForKeyedSubscript:v7];
          v29 = [v28 accountIdentifiers];
          v34 = 138412290;
          v35 = v29;
          _os_log_impl(&dword_25813A000, v27, OS_LOG_TYPE_ERROR, "accountIdentifiers %@", &v34, 0xCu);
        }

        v30 = MSPGetSharedTripLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v34 = 138412546;
          v35 = @"NO";
          v36 = 2112;
          v37 = @"NO";
          _os_log_impl(&dword_25813A000, v30, OS_LOG_TYPE_ERROR, "_allowMessageWithState NO senderIsGroupInitiator %@, groupContainsSender %@", &v34, 0x16u);
        }

        goto LABEL_21;
      }
    }

    v31 = 1;
    goto LABEL_23;
  }

  v9 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v34) = 0;
    v11 = "[SR] _allowMessageWithState NO nil group identifier";
    v12 = v9;
    v13 = OS_LOG_TYPE_ERROR;
    v14 = 2;
    goto LABEL_7;
  }

LABEL_22:
  v31 = 0;
LABEL_23:

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

- (void)_updateData:(id)a3 forGroup:(id)a4 fromID:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_alloc(MEMORY[0x277D0ED30]) initWithData:v8];
  if ([v11 hasEtaInfo] & 1) != 0 || (objc_msgSend(v11, "hasRouteInfo") & 1) != 0 || (objc_msgSend(v11, "hasDestinationInfo") & 1) != 0 || objc_msgSend(v11, "waypointInfosCount") || (objc_msgSend(v11, "hasSenderInfo"))
  {
    if ([(MSPReceiverETAController *)self _allowMessageWithState:v11 forGroup:v9 fromID:v10])
    {
      [v11 setGroupIdentifier:v9];
      v12 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v11 mspDescription];
        *buf = 138412290;
        v40 = v13;
        _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_DEFAULT, "[SR] processing incoming state %@", buf, 0xCu);
      }

      v14 = [(NSMutableDictionary *)self->_sharedNavStates objectForKeyedSubscript:v9];
      v33 = [v11 copy];
      WeakRetained = objc_loadWeakRetained(&self->_idsRelay);
      v16 = [WeakRetained storageController];
      [v16 updateGroupSessionStorageWithState:v33];

      if (v14)
      {
        [v14 merge:v11];
        v17 = MSPGetSharedTripLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = [v14 mspDescription];
          *buf = 138412290;
          v40 = v18;
          _os_log_impl(&dword_25813A000, v17, OS_LOG_TYPE_INFO, "[SR] merge with existing state %@", buf, 0xCu);
        }

        v19 = v14;
      }

      else
      {
        v25 = v11;
        v26 = [(NSMutableDictionary *)self->_waitingNavStates objectForKeyedSubscript:v9];
        v17 = v26;
        if (v26)
        {
          [v26 merge:v25];
          v19 = v17;

          v27 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = [v19 mspDescription];
            *buf = 138412290;
            v40 = v28;
            _os_log_impl(&dword_25813A000, v27, OS_LOG_TYPE_INFO, "[SR] merge with waiting state %@", buf, 0xCu);
          }
        }

        else
        {
          v19 = v25;
        }

        if (([v19 hasDestinationInfo]& 1) == 0 && ![v19 waypointInfosCount]|| ([v19 hasSenderInfo]& 1) == 0)
        {
          [(NSMutableDictionary *)self->_waitingNavStates setObject:v19 forKeyedSubscript:v9];
          v29 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = [v19 mspDescription];
            *buf = 138412290;
            v40 = v30;
            _os_log_impl(&dword_25813A000, v29, OS_LOG_TYPE_INFO, "[SR] wait state %@", buf, 0xCu);
          }

          goto LABEL_33;
        }

        [(NSMutableDictionary *)self->_waitingNavStates setObject:0 forKeyedSubscript:v9];
        [(NSMutableDictionary *)self->_sharedNavStates setObject:v19 forKeyedSubscript:v9];
        if (([(NSMutableOrderedSet *)self->_orderedNavStateIdentifiers containsObject:v9]& 1) == 0)
        {
          [(NSMutableOrderedSet *)self->_orderedNavStateIdentifiers insertObject:v9 atIndex:0];
        }
      }

      v20 = [MEMORY[0x277CBEAA8] date];
      [v20 timeIntervalSinceReferenceDate];
      [v19 setLocalUpdatedTimestamp:?];

      if ([(MSPReceiverETAController *)self _cleanUpNecessaryForGroup:v9])
      {
        [(MSPReceiverETAController *)self _cleanGroup:v9];
      }

      else
      {
        if (!self->_cleanupTimer)
        {
          v22 = MEMORY[0x277CBEBB8];
          GEOConfigGetDouble();
          v23 = [v22 scheduledTimerWithTimeInterval:self target:sel__cleanupIfNecessary selector:0 userInfo:1 repeats:?];
          cleanupTimer = self->_cleanupTimer;
          self->_cleanupTimer = v23;
        }

        objc_initWeak(buf, self);
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __56__MSPReceiverETAController__updateData_forGroup_fromID___block_invoke;
        v34[3] = &unk_279865F70;
        objc_copyWeak(&v37, buf);
        v35 = v33;
        v19 = v19;
        v36 = v19;
        v38 = v14 == 0;
        [(MSPReceiverETAController *)self _resolveContactIfNeeded:v9 fromId:v10 completion:v34];

        objc_destroyWeak(&v37);
        objc_destroyWeak(buf);
      }

LABEL_33:

      goto LABEL_34;
    }

    v19 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v11 mspDescription];
      *buf = 138412290;
      v40 = v21;
      _os_log_impl(&dword_25813A000, v19, OS_LOG_TYPE_DEFAULT, "[SR] discarding message %@", buf, 0xCu);
    }
  }

  else
  {
    v19 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v32 = [v11 mspDescription];
      *buf = 138412290;
      v40 = v32;
      _os_log_impl(&dword_25813A000, v19, OS_LOG_TYPE_ERROR, "[SR] incoming state is missing too many fields: %@", buf, 0xCu);
    }
  }

LABEL_34:

  v31 = *MEMORY[0x277D85DE8];
}

void __56__MSPReceiverETAController__updateData_forGroup_fromID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _updateDelegateWithUpdateState:*(a1 + 32) to:*(a1 + 40) freshAvailable:*(a1 + 56)];
}

- (void)_updateDelegateWithUpdateState:(id)a3 to:(id)a4 freshAvailable:(BOOL)a5
{
  v5 = a5;
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 hasRouteInfo];
  v11 = [v8 hasDestinationInfo];
  v12 = [v8 hasEtaInfo];
  LODWORD(v13) = [v8 arrived];
  v33 = [v8 closed];
  if ([v8 hasMuted] && objc_msgSend(v8, "muted"))
  {
    v14 = MSPGetSharedTripIDSTransportLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v8 mspDescription];
      *buf = 138412290;
      v35 = v15;
      _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_INFO, "[SR] _updateDelegateWithUpdateState update muted %@", buf, 0xCu);
    }
  }

  else
  {
    v16 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v13;
      if (v11)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      v29 = self;
      v18 = v17;
      if (v10)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      v20 = v19;
      if (v12)
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      v31 = v12;
      v22 = v21;
      if (v13)
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      v30 = v10;
      v24 = v23;
      if (v33)
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      v13 = v25;
      *buf = 138413314;
      v35 = v18;
      v36 = 2112;
      v37 = v20;
      v38 = 2112;
      v39 = v22;
      v40 = 2112;
      v41 = v24;
      v42 = 2112;
      v43 = v13;
      _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_DEFAULT, "[SR] update delegate destination %@ route %@ eta %@ arrived %@ closed %@", buf, 0x34u);

      LOBYTE(v13) = v32;
      v10 = v30;

      v12 = v31;
      self = v29;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = WeakRetained;
    if (v5)
    {
      [WeakRetained etaController:self sharedTripDidBecomeAvailable:v9];
    }

    if (v33)
    {
      [v9 stripArrivedOrClosedTrip];
      [v14 etaController:self sharedTripDidClose:v9];
    }

    else if (v13)
    {
      [v9 stripArrivedOrClosedTrip];
      [v14 etaController:self didUpdateReachedDestinationForSharedTrip:v9];
    }

    else
    {
      if (v11)
      {
        [v14 etaController:self didUpdateDestinationForSharedTrip:v9];
      }

      if ((v10 | v12))
      {
        [v9 truncatePointDataForPrivacy];
        [v14 etaController:self didUpdateRouteForSharedTrip:v9];
      }

      if (v12)
      {
        [v14 etaController:self didUpdateETAForSharedTrip:v9];
      }
    }

    v27 = [v9 groupIdentifier];
    [(MSPReceiverETAController *)self _showOrUpdateNotificationIfNeeded:v27];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_cleanupIfNecessary
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSMutableDictionary *)self->_sharedNavStates allKeys];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([(MSPReceiverETAController *)self _cleanUpNecessaryForGroup:v8])
        {
          [(MSPReceiverETAController *)self _cleanGroup:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_cleanUpNecessaryForGroup:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_sharedNavStates objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    if (([v5 hasLocalUpdatedTimestamp] & 1) == 0)
    {
      v8 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v33 = 138412290;
        v34 = v4;
        _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_ERROR, "_cleanUpNecessaryForGroup called for group %@ without update timestamp", &v33, 0xCu);
      }

      goto LABEL_36;
    }

    v7 = MEMORY[0x277CBEAA8];
    [v6 localUpdatedTimestamp];
    v8 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
    [v8 timeIntervalSinceNow];
    v10 = v9;
    GEOConfigGetDouble();
    if (v10 < -v11)
    {
      v12 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 138412290;
        v34 = v4;
        _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_DEFAULT, "_cleanUpNecessaryForGroup cleaning group %@ as abandoned", &v33, 0xCu);
      }

LABEL_35:

LABEL_36:
      v13 = 1;
LABEL_37:

      goto LABEL_38;
    }

    v14 = [v6 hasArrived] && objc_msgSend(v6, "arrived") && objc_msgSend(v6, "numberOfIntermediateStopsRemaining") == 0;
    if ([v6 hasClosed])
    {
      v15 = [v6 closed];
    }

    else
    {
      v15 = 0;
    }

    v16 = MEMORY[0x277CBEAA8];
    v17 = [v6 etaInfo];
    [v17 etaTimestamp];
    v18 = [v16 dateWithTimeIntervalSinceReferenceDate:?];
    [v18 timeIntervalSinceNow];
    v20 = v19;

    if ([v6 hasClosureReason])
    {
      v21 = [v6 closureReason];
      if (v21 == 1)
      {
        v22 = 0.0;
        v23 = 1;
        goto LABEL_22;
      }

      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    GEOConfigGetDouble();
    v22 = v24;
LABEL_22:
    v13 = 0;
    if (v10 >= -v22 || !((v14 | v15) & 1 | (v20 < 0.0)))
    {
      goto LABEL_37;
    }

    v12 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (v14)
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      v26 = v25;
      if (v15)
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      v28 = v27;
      if (v20 >= 0.0)
      {
        v29 = @"NO";
      }

      else
      {
        v29 = @"YES";
      }

      v30 = v29;
      v33 = 138544898;
      v34 = v4;
      v35 = 2048;
      v36 = v22;
      v37 = 2114;
      v38 = @"YES";
      v39 = 2114;
      v40 = v26;
      v41 = 2114;
      v42 = v28;
      v43 = 2048;
      v44 = v23;
      v45 = 2114;
      v46 = v30;
      _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_DEFAULT, "_cleanUpNecessaryForGroup %{public}@ (updateLongerAgoThanExpiryInterval %#.1lfs %{public}@, arrived %{public}@, closed %{public}@ for reason %lu, etaInPast %{public}@)", &v33, 0x48u);
    }

    goto LABEL_35;
  }

  v13 = 0;
LABEL_38:

  v31 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)_cleanGroup:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MSPGetSharedTripIDSTransportLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[SR] cleanGroup %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_idsRelay);
  v7 = [WeakRetained storageController];
  [v7 removeSession:v4];

  v8 = [(NSMutableDictionary *)self->_sharedNavStates objectForKeyedSubscript:v4];
  [(NSMutableDictionary *)self->_sharedSessions setObject:0 forKeyedSubscript:v4];
  [(NSMutableDictionary *)self->_waitingNavStates setObject:0 forKeyedSubscript:v4];
  [(NSMutableDictionary *)self->_sharedNavStates setObject:0 forKeyedSubscript:v4];
  [(NSMutableOrderedSet *)self->_orderedNavStateIdentifiers removeObject:v4];
  if (v8)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __40__MSPReceiverETAController__cleanGroup___block_invoke;
    v17 = &unk_279865EF8;
    v18 = self;
    v19 = v8;
    dispatch_async(MEMORY[0x277D85CD0], &v14);
  }

  v9 = [(NSMutableDictionary *)self->_sharedNavStates allKeys:v14];
  v10 = [v9 count];

  if (!v10)
  {
    [(NSTimer *)self->_cleanupTimer invalidate];
    cleanupTimer = self->_cleanupTimer;
    self->_cleanupTimer = 0;
  }

  if (![(NSMutableDictionary *)self->_sharedSessions count])
  {
    transaction = self->_transaction;
    self->_transaction = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __40__MSPReceiverETAController__cleanGroup___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  [WeakRetained etaController:*(a1 + 32) sharedTripDidBecomeUnavailable:*(a1 + 40)];
}

- (void)relay:(id)a3 receiveData:(id)a4 info:(id)a5 fromID:(id)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MSPGetSharedTripIDSTransportLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v36 = v12;
    _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_INFO, "[SR] receiveData from %@", buf, 0xCu);
  }

  v15 = [v12 objectForKeyedSubscript:@"chunkGroupIDKey"];
  v16 = MEMORY[0x277D85CD0];
  v17 = MEMORY[0x277D85CD0];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v29 = __58__MSPReceiverETAController_relay_receiveData_info_fromID___block_invoke;
  v30 = &unk_279865F98;
  v31 = self;
  v18 = v11;
  v32 = v18;
  v19 = v15;
  v33 = v19;
  v20 = v13;
  v34 = v20;
  v21 = v16;
  v22 = v28;
  label = dispatch_queue_get_label(v16);
  v24 = dispatch_queue_get_label(0);
  if (label == v24 || label && v24 && !strcmp(label, v24))
  {
    v25 = objc_autoreleasePoolPush();
    v29(v22);
    objc_autoreleasePoolPop(v25);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v22);
  }

  v26 = MEMORY[0x277D85CD0];
  v27 = *MEMORY[0x277D85DE8];
}

- (void)relay:(id)a3 sharingClosed:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MSPGetSharedTripIDSTransportLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = v7;
    _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_INFO, "[SR] sharingClosed %@", buf, 0xCu);
  }

  v9 = MEMORY[0x277D85CD0];
  v10 = MEMORY[0x277D85CD0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v20 = __48__MSPReceiverETAController_relay_sharingClosed___block_invoke;
  v21 = &unk_279865EF8;
  v22 = self;
  v11 = v7;
  v23 = v11;
  v12 = v9;
  v13 = v19;
  label = dispatch_queue_get_label(v9);
  v15 = dispatch_queue_get_label(0);
  if (label == v15 || label && v15 && !strcmp(label, v15))
  {
    v16 = objc_autoreleasePoolPush();
    v20(v13);
    objc_autoreleasePoolPop(v16);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v13);
  }

  v17 = MEMORY[0x277D85CD0];
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __48__MSPReceiverETAController_relay_sharingClosed___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _cleanUpNecessaryForGroup:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 _cleanGroup:v4];
  }

  return result;
}

- (void)storageController:(id)a3 updatedSharedTripGroupStorage:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = v5;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "[SR] updatedSharedTripGroupStorage %@", buf, 0xCu);
  }

  v7 = [v5 allKeys];
  v8 = [v7 copy];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = MSPGetSharedTripLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v29 = v13;
          _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_INFO, "[SR] keys %@", buf, 0xCu);
        }

        v15 = [v5 objectForKeyedSubscript:v13];
        v16 = [v15 state];
        v17 = [(NSMutableDictionary *)self->_sharedNavStates objectForKeyedSubscript:v13];

        if (!v17)
        {
          v18 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v29 = v13;
            _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_DEFAULT, "[SR] restore %@", buf, 0xCu);
          }

          v19 = [v16 data];
          v20 = [v15 fromID];
          [(MSPReceiverETAController *)self _updateData:v19 forGroup:v13 fromID:v20];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)groupSessionEnded:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = MEMORY[0x277D85CD0];
  v7 = MEMORY[0x277D85CD0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v16 = __46__MSPReceiverETAController_groupSessionEnded___block_invoke;
  v17 = &unk_279865EF8;
  v18 = self;
  v8 = v5;
  v19 = v8;
  v9 = v6;
  v10 = v15;
  label = dispatch_queue_get_label(v6);
  v12 = dispatch_queue_get_label(0);
  if (label == v12 || label && v12 && !strcmp(label, v12))
  {
    v13 = objc_autoreleasePoolPush();
    v16(v10);
    objc_autoreleasePoolPop(v13);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }

  v14 = MEMORY[0x277D85CD0];
}

uint64_t __46__MSPReceiverETAController_groupSessionEnded___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _cleanUpNecessaryForGroup:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 _cleanGroup:v4];
  }

  return result;
}

- (MSPReceiverETAControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end