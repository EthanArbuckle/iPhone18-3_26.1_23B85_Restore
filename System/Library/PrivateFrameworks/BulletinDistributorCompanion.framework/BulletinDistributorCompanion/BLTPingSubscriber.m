@interface BLTPingSubscriber
- (BLTPingSubscriber)init;
- (BLTPingSubscriber)initWithService:(id)a3;
- (id)sectionIDs;
- (id)subscriptionInfos;
- (void)dealloc;
- (void)getWillNanoPresentNotificationForSectionID:(id)a3 completion:(id)a4;
- (void)getWillNanoPresentNotificationForSectionID:(id)a3 subsectionIDs:(id)a4 completion:(id)a5;
- (void)pingWithBulletin:(id)a3 ack:(id)a4;
- (void)pingWithRecordID:(id)a3 forSectionID:(id)a4 ack:(id)a5;
- (void)sendBulletinSummary:(id)a3 forBulletin:(id)a4 destinations:(unint64_t)a5;
- (void)subscribeToSectionID:(id)a3 withBulletinAckForwardForAnyConnectionHandler:(id)a4;
- (void)subscribeToSectionID:(id)a3 withBulletinAckForwardHandler:(id)a4;
- (void)subscribeToSectionID:(id)a3 withBulletinAckHandler:(id)a4;
- (void)subscribeToSectionID:(id)a3 withBulletinHandler:(id)a4;
- (void)subscribeToSectionID:(id)a3 withNotificationAckForwardForAnyConnectionHandler:(id)a4;
- (void)subscribeToSectionID:(id)a3 withNotificationAckForwardHandler:(id)a4;
- (void)subscribeToSectionID:(id)a3 withNotificationAckHandler:(id)a4;
- (void)subscribeToSectionID:(id)a3 withNotificationHandler:(id)a4;
- (void)subscribeToSectionID:(id)a3 withPingAckForwardHandler:(id)a4;
- (void)subscribeToSectionID:(id)a3 withPingAckHandler:(id)a4;
- (void)subscribeToSectionID:(id)a3 withPingHandler:(id)a4;
- (void)subscribeWithMachServiceName:(id)a3;
- (void)unsubscribeFromSectionID:(id)a3;
@end

@implementation BLTPingSubscriber

- (BLTPingSubscriber)initWithService:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = BLTPingSubscriber;
  v6 = [(BLTPingSubscriber *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_service, a3);
    pthread_mutex_init(&v7->_lock, 0);
    v8 = [MEMORY[0x277CBEB38] dictionary];
    pingHandlers = v7->_pingHandlers;
    v7->_pingHandlers = v8;
  }

  return v7;
}

- (BLTPingSubscriber)init
{
  v3 = objc_alloc_init(BLTRemotePingSubscriberService);
  v4 = [(BLTPingSubscriber *)self initWithService:v3];
  if (v4)
  {
    [(BLTRemotePingSubscriberService *)v3 setDelegate:v4];
  }

  return v4;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = BLTPingSubscriber;
  [(BLTPingSubscriber *)&v3 dealloc];
}

- (id)sectionIDs
{
  pthread_mutex_lock(&self->_lock);
  v3 = MEMORY[0x277CBEB58];
  v4 = [(NSMutableDictionary *)self->_pingHandlers allKeys];
  v5 = [v3 setWithArray:v4];

  pthread_mutex_unlock(&self->_lock);

  return v5;
}

- (id)subscriptionInfos
{
  pthread_mutex_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_pingHandlers allValues];
  pthread_mutex_unlock(&self->_lock);

  return v3;
}

- (void)unsubscribeFromSectionID:(id)a3
{
  v5 = a3;
  pthread_mutex_lock(&self->_lock);
  v4 = [(NSMutableDictionary *)self->_pingHandlers objectForKeyedSubscript:v5];

  if (v4)
  {
    [(NSMutableDictionary *)self->_pingHandlers removeObjectForKey:v5];
    [(BLTPingService *)self->_service unsubscribeFromSectionID:v5];
  }

  pthread_mutex_unlock(&self->_lock);
}

- (void)subscribeToSectionID:(id)a3 withPingHandler:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x245D067A0](a4);
  [(BLTPingSubscriber *)self _subscribeToSectionID:v6 pingHandler:v7 ackType:0 forFullBulletins:0];
}

- (void)subscribeToSectionID:(id)a3 withPingAckHandler:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x245D067A0](a4);
  [(BLTPingSubscriber *)self _subscribeToSectionID:v6 pingHandler:v7 ackType:1 forFullBulletins:0];
}

- (void)subscribeToSectionID:(id)a3 withPingAckForwardHandler:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x245D067A0](a4);
  [(BLTPingSubscriber *)self _subscribeToSectionID:v6 pingHandler:v7 ackType:2 forFullBulletins:0];
}

- (void)subscribeToSectionID:(id)a3 withBulletinHandler:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x245D067A0](a4);
  [(BLTPingSubscriber *)self _subscribeToSectionID:v6 pingHandler:v7 ackType:0 forFullBulletins:1];
}

- (void)subscribeToSectionID:(id)a3 withBulletinAckHandler:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x245D067A0](a4);
  [(BLTPingSubscriber *)self _subscribeToSectionID:v6 pingHandler:v7 ackType:1 forFullBulletins:1];
}

- (void)subscribeToSectionID:(id)a3 withBulletinAckForwardHandler:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x245D067A0](a4);
  [(BLTPingSubscriber *)self _subscribeToSectionID:v6 pingHandler:v7 ackType:2 forFullBulletins:1];
}

- (void)subscribeToSectionID:(id)a3 withBulletinAckForwardForAnyConnectionHandler:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x245D067A0](a4);
  [(BLTPingSubscriber *)self _subscribeToSectionID:v6 pingHandler:v7 ackType:3 forFullBulletins:1];
}

- (void)subscribeToSectionID:(id)a3 withNotificationHandler:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x245D067A0](a4);
  [(BLTPingSubscriber *)self _subscribeToSectionID:v6 pingHandler:v7 ackType:0 forFullBulletins:1 forNotifications:1];
}

- (void)subscribeToSectionID:(id)a3 withNotificationAckHandler:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x245D067A0](a4);
  [(BLTPingSubscriber *)self _subscribeToSectionID:v6 pingHandler:v7 ackType:1 forFullBulletins:1 forNotifications:1];
}

- (void)subscribeToSectionID:(id)a3 withNotificationAckForwardHandler:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x245D067A0](a4);
  [(BLTPingSubscriber *)self _subscribeToSectionID:v6 pingHandler:v7 ackType:2 forFullBulletins:1 forNotifications:1];
}

- (void)subscribeToSectionID:(id)a3 withNotificationAckForwardForAnyConnectionHandler:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x245D067A0](a4);
  [(BLTPingSubscriber *)self _subscribeToSectionID:v6 pingHandler:v7 ackType:3 forFullBulletins:1 forNotifications:1];
}

- (void)pingWithBulletin:(id)a3 ack:(id)a4
{
  v10 = a3;
  v6 = a4;
  pthread_mutex_lock(&self->_lock);
  pingHandlers = self->_pingHandlers;
  v8 = [v10 sectionID];
  v9 = [(NSMutableDictionary *)pingHandlers objectForKeyedSubscript:v8];

  pthread_mutex_unlock(&self->_lock);
  if (v9)
  {
    [v9 pingWithBulletin:v10 ack:v6];
  }
}

- (void)pingWithRecordID:(id)a3 forSectionID:(id)a4 ack:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  pthread_mutex_lock(&self->_lock);
  v10 = [(NSMutableDictionary *)self->_pingHandlers objectForKeyedSubscript:v8];
  pthread_mutex_unlock(&self->_lock);
  if (v10)
  {
    [v10 pingWithRecordID:v11 forSectionID:v8 ack:v9];
  }
}

- (void)sendBulletinSummary:(id)a3 forBulletin:(id)a4 destinations:(unint64_t)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(BLTPBBulletinSummary);
  v10 = [v8 recordID];
  [(BLTPBBulletinSummary *)v9 setRecordID:v10];

  v11 = [v8 publisherBulletinID];
  [(BLTPBBulletinSummary *)v9 setPublisherBulletinID:v11];

  v28 = v8;
  v12 = [v8 sectionID];
  [(BLTPBBulletinSummary *)v9 setSectionID:v12];

  v30 = v9;
  [(BLTPBBulletinSummary *)v9 setDestinations:a5];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v34;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v33 + 1) + 8 * i);
        v19 = objc_alloc_init(BLTPBBulletinSummaryKey);
        [(BLTPBBulletinSummaryKey *)v19 setKey:v18];
        v20 = [v13 objectForKeyedSubscript:v18];
        v21 = [MEMORY[0x277D2BCC8] activePairedDeviceSupportsNSNullPListExtenion];
        v22 = v21;
        if (v21)
        {
          v23 = &v32;
        }

        else
        {
          v23 = 0;
        }

        if (v21)
        {
          v32 = 0;
        }

        v31 = 0;
        v24 = [BLTObjectSerializer serializeObject:v20 nulls:v23 error:&v31];
        v25 = 0;
        if (v22)
        {
          v25 = v32;
        }

        v26 = v31;
        [(BLTPBBulletinSummaryKey *)v19 setValue:v24];

        [(BLTPBBulletinSummaryKey *)v19 setValueNulls:v25];
        if (!v26)
        {
          [(BLTPBBulletinSummary *)v30 addKey:v19];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v15);
  }

  pthread_mutex_lock(&self->_lock);
  [(BLTPingService *)self->_service sendBulletinSummary:v30];
  pthread_mutex_unlock(&self->_lock);

  v27 = *MEMORY[0x277D85DE8];
}

- (void)getWillNanoPresentNotificationForSectionID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  pthread_mutex_lock(&self->_lock);
  [(BLTPingService *)self->_service getWillNanoPresentNotificationForSectionID:v7 subsectionIDs:0 completion:v6];

  pthread_mutex_unlock(&self->_lock);
}

- (void)getWillNanoPresentNotificationForSectionID:(id)a3 subsectionIDs:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  pthread_mutex_lock(&self->_lock);
  [(BLTPingService *)self->_service getWillNanoPresentNotificationForSectionID:v10 subsectionIDs:v9 completion:v8];

  pthread_mutex_unlock(&self->_lock);
}

- (void)subscribeWithMachServiceName:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  [(BLTPingService *)self->_service subscribeWithMachServiceName:v4];

  pthread_mutex_unlock(&self->_lock);
}

@end