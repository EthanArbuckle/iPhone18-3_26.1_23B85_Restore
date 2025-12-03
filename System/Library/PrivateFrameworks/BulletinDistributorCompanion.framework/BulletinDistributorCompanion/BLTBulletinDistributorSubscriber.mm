@interface BLTBulletinDistributorSubscriber
- (BLTBulletinDistributorSubscriber)initWithClient:(id)client;
- (BLTBulletinDistributorSubscriberDelegate)delegate;
- (BLTBulletinDistributorSubscriberDeviceDelegate)deviceDelegate;
- (NSSet)sectionIDs;
- (void)_connectIfNecessary;
- (void)getWillNanoPresentNotificationForSectionID:(id)d completion:(id)completion;
- (void)getWillNanoPresentNotificationForSectionID:(id)d subsectionIDs:(id)ds completion:(id)completion;
- (void)pingWithBulletin:(id)bulletin ack:(id)ack;
- (void)pingWithRecordID:(id)d forSectionID:(id)iD;
- (void)sendBulletinSummary:(id)summary;
- (void)subscribeToSectionID:(id)d forFullBulletins:(BOOL)bulletins withAck:(BOOL)ack ackAllowedOnLocalConnection:(BOOL)connection;
- (void)subscribeWithMachServiceName:(id)name;
- (void)unsubscribeFromSectionID:(id)d;
@end

@implementation BLTBulletinDistributorSubscriber

- (BLTBulletinDistributorSubscriber)initWithClient:(id)client
{
  clientCopy = client;
  v14.receiver = self;
  v14.super_class = BLTBulletinDistributorSubscriber;
  v6 = [(BLTBulletinDistributorSubscriber *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_client, client);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    subscriptions = v7->_subscriptions;
    v7->_subscriptions = dictionary;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.bulletindistributor.subscriber", v10);
    queue = v7->_queue;
    v7->_queue = v11;
  }

  return v7;
}

- (NSSet)sectionIDs
{
  dispatch_assert_queue_not_V2(self->_queue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__BLTBulletinDistributorSubscriber_sectionIDs__block_invoke;
  v6[3] = &unk_278D31650;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __46__BLTBulletinDistributorSubscriber_sectionIDs__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB98];
  v6 = [*(*(a1 + 32) + 8) allKeys];
  v3 = [v2 setWithArray:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)subscribeToSectionID:(id)d forFullBulletins:(BOOL)bulletins withAck:(BOOL)ack ackAllowedOnLocalConnection:(BOOL)connection
{
  dCopy = d;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__BLTBulletinDistributorSubscriber_subscribeToSectionID_forFullBulletins_withAck_ackAllowedOnLocalConnection___block_invoke;
  block[3] = &unk_278D31678;
  bulletinsCopy = bulletins;
  ackCopy = ack;
  connectionCopy = connection;
  block[4] = self;
  v14 = dCopy;
  v12 = dCopy;
  dispatch_async(queue, block);
}

void __110__BLTBulletinDistributorSubscriber_subscribeToSectionID_forFullBulletins_withAck_ackAllowedOnLocalConnection___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(BLTBulletinDistributorSubscriptionInfo);
  [(BLTBulletinDistributorSubscriptionInfo *)v2 setFullBulletins:*(a1 + 48)];
  [(BLTBulletinDistributorSubscriptionInfo *)v2 setAck:*(a1 + 49)];
  [(BLTBulletinDistributorSubscriptionInfo *)v2 setAckAllowedOnLocalConnection:*(a1 + 50)];
  [*(*(a1 + 32) + 8) setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (void)unsubscribeFromSectionID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__BLTBulletinDistributorSubscriber_unsubscribeFromSectionID___block_invoke;
  v7[3] = &unk_278D31400;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (void)pingWithBulletin:(id)bulletin ack:(id)ack
{
  bulletinCopy = bulletin;
  ackCopy = ack;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__BLTBulletinDistributorSubscriber_pingWithBulletin_ack___block_invoke;
  block[3] = &unk_278D316A0;
  block[4] = self;
  v12 = bulletinCopy;
  v13 = ackCopy;
  v9 = ackCopy;
  v10 = bulletinCopy;
  dispatch_async(queue, block);
}

void __57__BLTBulletinDistributorSubscriber_pingWithBulletin_ack___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) sectionID];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (!v4)
  {
    return;
  }

  [*(a1 + 32) _connectIfNecessary];
  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = [v6 remoteObjectProxy];
  }

  else
  {
    v7 = *(v5 + 48);
  }

  v17 = v7;
  v8 = *(*(a1 + 32) + 8);
  v9 = [*(a1 + 40) sectionID];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = MEMORY[0x245D067A0](*(a1 + 48));
  if (!*(a1 + 48) || [v10 ack] && ((objc_msgSend(v10, "ackAllowedOnLocalConnection") & 1) != 0 || (objc_msgSend(*(a1 + 32), "deviceDelegate"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isLocallyConnectedToRemote"), v12, (v13 & 1) == 0)))
  {
    if ([v10 fullBulletins])
    {
      if (!v11)
      {
        goto LABEL_15;
      }

      [v17 pingWithBulletin:*(a1 + 40) ack:v11];
    }

    else
    {
      if (!v11)
      {
LABEL_18:
        v11 = [*(a1 + 40) recordID];
        v16 = [*(a1 + 40) sectionID];
        [v17 pingWithRecordID:v11 forSectionID:v16];

        goto LABEL_19;
      }

      v14 = [*(a1 + 40) recordID];
      v15 = [*(a1 + 40) sectionID];
      [v17 pingWithRecordID:v14 forSectionID:v15 ack:v11];
    }

LABEL_19:

    goto LABEL_20;
  }

  (*(*(a1 + 48) + 16))();

  if (([v10 fullBulletins] & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  [v17 pingWithBulletin:*(a1 + 40)];
LABEL_20:
}

- (void)pingWithRecordID:(id)d forSectionID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__BLTBulletinDistributorSubscriber_pingWithRecordID_forSectionID___block_invoke;
  block[3] = &unk_278D316C8;
  block[4] = self;
  v12 = iDCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = iDCopy;
  dispatch_async(queue, block);
}

void __66__BLTBulletinDistributorSubscriber_pingWithRecordID_forSectionID___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];

  if (v2)
  {
    [*(a1 + 32) _connectIfNecessary];
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    if (v4)
    {
      v5 = [v4 remoteObjectProxy];
    }

    else
    {
      v5 = *(v3 + 48);
    }

    v6 = v5;
    [v5 pingWithRecordID:*(a1 + 48) forSectionID:*(a1 + 40)];
  }
}

- (void)getWillNanoPresentNotificationForSectionID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__BLTBulletinDistributorSubscriber_getWillNanoPresentNotificationForSectionID_completion___block_invoke;
  block[3] = &unk_278D316A0;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(v8, block);
}

void __90__BLTBulletinDistributorSubscriber_getWillNanoPresentNotificationForSectionID_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceDelegate];
  [v2 getWillNanoPresentNotificationForSectionID:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)getWillNanoPresentNotificationForSectionID:(id)d subsectionIDs:(id)ds completion:(id)completion
{
  dCopy = d;
  dsCopy = ds;
  completionCopy = completion;
  v11 = BLTWorkQueue();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __104__BLTBulletinDistributorSubscriber_getWillNanoPresentNotificationForSectionID_subsectionIDs_completion___block_invoke;
  v15[3] = &unk_278D316F0;
  v15[4] = self;
  v16 = dCopy;
  v17 = dsCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = dsCopy;
  v14 = dCopy;
  dispatch_async(v11, v15);
}

void __104__BLTBulletinDistributorSubscriber_getWillNanoPresentNotificationForSectionID_subsectionIDs_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceDelegate];
  [v2 getWillNanoPresentNotificationForSectionID:*(a1 + 40) subsectionIDs:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)sendBulletinSummary:(id)summary
{
  summaryCopy = summary;
  v5 = BLTWorkQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__BLTBulletinDistributorSubscriber_sendBulletinSummary___block_invoke;
  v7[3] = &unk_278D31400;
  v7[4] = self;
  v8 = summaryCopy;
  v6 = summaryCopy;
  dispatch_async(v5, v7);
}

void __56__BLTBulletinDistributorSubscriber_sendBulletinSummary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceDelegate];
  [v2 sendBulletinSummary:*(a1 + 40)];
}

- (void)subscribeWithMachServiceName:(id)name
{
  nameCopy = name;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__BLTBulletinDistributorSubscriber_subscribeWithMachServiceName___block_invoke;
  v7[3] = &unk_278D31400;
  v8 = nameCopy;
  selfCopy = self;
  v6 = nameCopy;
  dispatch_async(queue, v7);
}

void __65__BLTBulletinDistributorSubscriber_subscribeWithMachServiceName___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = blt_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_INFO, "Subscriber updating machServiceName to %@", &v8, 0xCu);
  }

  [*(*(a1 + 40) + 56) invalidate];
  v4 = *(a1 + 40);
  v5 = *(v4 + 56);
  *(v4 + 56) = 0;

  [*(a1 + 40) setMachServiceName:*(a1 + 32)];
  [*(a1 + 40) _connectIfNecessary];
  v6 = [*(a1 + 40) delegate];
  [v6 subscriber:*(a1 + 40) subscribedWithMachServiceName:*(a1 + 32)];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_connectIfNecessary
{
  dispatch_assert_queue_V2(self->_queue);
  machServiceName = [(BLTBulletinDistributorSubscriber *)self machServiceName];

  if (machServiceName)
  {
    if (!self->_connection)
    {
      v4 = objc_alloc(MEMORY[0x277CCAE80]);
      machServiceName2 = [(BLTBulletinDistributorSubscriber *)self machServiceName];
      v6 = [v4 initWithMachServiceName:machServiceName2 options:4096];
      connection = self->_connection;
      self->_connection = v6;

      v8 = self->_connection;
      v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28544E800];
      [(NSXPCConnection *)v8 setExportedInterface:v9];

      v10 = self->_connection;
      v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285454D28];
      [(NSXPCConnection *)v10 setRemoteObjectInterface:v11];

      [(NSXPCConnection *)self->_connection setExportedObject:self];
      [(NSXPCConnection *)self->_connection resume];
      objc_initWeak(&location, self);
      v12 = self->_connection;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __55__BLTBulletinDistributorSubscriber__connectIfNecessary__block_invoke;
      v13[3] = &unk_278D31718;
      objc_copyWeak(&v14, &location);
      [(NSXPCConnection *)v12 setInvalidationHandler:v13];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }
}

void __55__BLTBulletinDistributorSubscriber__connectIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnection:0];
}

- (BLTBulletinDistributorSubscriberDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BLTBulletinDistributorSubscriberDeviceDelegate)deviceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceDelegate);

  return WeakRetained;
}

@end