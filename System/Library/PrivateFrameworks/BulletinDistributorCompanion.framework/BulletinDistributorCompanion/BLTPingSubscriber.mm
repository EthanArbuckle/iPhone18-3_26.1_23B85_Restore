@interface BLTPingSubscriber
- (BLTPingSubscriber)init;
- (BLTPingSubscriber)initWithService:(id)service;
- (id)sectionIDs;
- (id)subscriptionInfos;
- (void)dealloc;
- (void)getWillNanoPresentNotificationForSectionID:(id)d completion:(id)completion;
- (void)getWillNanoPresentNotificationForSectionID:(id)d subsectionIDs:(id)ds completion:(id)completion;
- (void)pingWithBulletin:(id)bulletin ack:(id)ack;
- (void)pingWithRecordID:(id)d forSectionID:(id)iD ack:(id)ack;
- (void)sendBulletinSummary:(id)summary forBulletin:(id)bulletin destinations:(unint64_t)destinations;
- (void)subscribeToSectionID:(id)d withBulletinAckForwardForAnyConnectionHandler:(id)handler;
- (void)subscribeToSectionID:(id)d withBulletinAckForwardHandler:(id)handler;
- (void)subscribeToSectionID:(id)d withBulletinAckHandler:(id)handler;
- (void)subscribeToSectionID:(id)d withBulletinHandler:(id)handler;
- (void)subscribeToSectionID:(id)d withNotificationAckForwardForAnyConnectionHandler:(id)handler;
- (void)subscribeToSectionID:(id)d withNotificationAckForwardHandler:(id)handler;
- (void)subscribeToSectionID:(id)d withNotificationAckHandler:(id)handler;
- (void)subscribeToSectionID:(id)d withNotificationHandler:(id)handler;
- (void)subscribeToSectionID:(id)d withPingAckForwardHandler:(id)handler;
- (void)subscribeToSectionID:(id)d withPingAckHandler:(id)handler;
- (void)subscribeToSectionID:(id)d withPingHandler:(id)handler;
- (void)subscribeWithMachServiceName:(id)name;
- (void)unsubscribeFromSectionID:(id)d;
@end

@implementation BLTPingSubscriber

- (BLTPingSubscriber)initWithService:(id)service
{
  serviceCopy = service;
  v11.receiver = self;
  v11.super_class = BLTPingSubscriber;
  v6 = [(BLTPingSubscriber *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_service, service);
    pthread_mutex_init(&v7->_lock, 0);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    pingHandlers = v7->_pingHandlers;
    v7->_pingHandlers = dictionary;
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
  allKeys = [(NSMutableDictionary *)self->_pingHandlers allKeys];
  v5 = [v3 setWithArray:allKeys];

  pthread_mutex_unlock(&self->_lock);

  return v5;
}

- (id)subscriptionInfos
{
  pthread_mutex_lock(&self->_lock);
  allValues = [(NSMutableDictionary *)self->_pingHandlers allValues];
  pthread_mutex_unlock(&self->_lock);

  return allValues;
}

- (void)unsubscribeFromSectionID:(id)d
{
  dCopy = d;
  pthread_mutex_lock(&self->_lock);
  v4 = [(NSMutableDictionary *)self->_pingHandlers objectForKeyedSubscript:dCopy];

  if (v4)
  {
    [(NSMutableDictionary *)self->_pingHandlers removeObjectForKey:dCopy];
    [(BLTPingService *)self->_service unsubscribeFromSectionID:dCopy];
  }

  pthread_mutex_unlock(&self->_lock);
}

- (void)subscribeToSectionID:(id)d withPingHandler:(id)handler
{
  dCopy = d;
  v7 = MEMORY[0x245D067A0](handler);
  [(BLTPingSubscriber *)self _subscribeToSectionID:dCopy pingHandler:v7 ackType:0 forFullBulletins:0];
}

- (void)subscribeToSectionID:(id)d withPingAckHandler:(id)handler
{
  dCopy = d;
  v7 = MEMORY[0x245D067A0](handler);
  [(BLTPingSubscriber *)self _subscribeToSectionID:dCopy pingHandler:v7 ackType:1 forFullBulletins:0];
}

- (void)subscribeToSectionID:(id)d withPingAckForwardHandler:(id)handler
{
  dCopy = d;
  v7 = MEMORY[0x245D067A0](handler);
  [(BLTPingSubscriber *)self _subscribeToSectionID:dCopy pingHandler:v7 ackType:2 forFullBulletins:0];
}

- (void)subscribeToSectionID:(id)d withBulletinHandler:(id)handler
{
  dCopy = d;
  v7 = MEMORY[0x245D067A0](handler);
  [(BLTPingSubscriber *)self _subscribeToSectionID:dCopy pingHandler:v7 ackType:0 forFullBulletins:1];
}

- (void)subscribeToSectionID:(id)d withBulletinAckHandler:(id)handler
{
  dCopy = d;
  v7 = MEMORY[0x245D067A0](handler);
  [(BLTPingSubscriber *)self _subscribeToSectionID:dCopy pingHandler:v7 ackType:1 forFullBulletins:1];
}

- (void)subscribeToSectionID:(id)d withBulletinAckForwardHandler:(id)handler
{
  dCopy = d;
  v7 = MEMORY[0x245D067A0](handler);
  [(BLTPingSubscriber *)self _subscribeToSectionID:dCopy pingHandler:v7 ackType:2 forFullBulletins:1];
}

- (void)subscribeToSectionID:(id)d withBulletinAckForwardForAnyConnectionHandler:(id)handler
{
  dCopy = d;
  v7 = MEMORY[0x245D067A0](handler);
  [(BLTPingSubscriber *)self _subscribeToSectionID:dCopy pingHandler:v7 ackType:3 forFullBulletins:1];
}

- (void)subscribeToSectionID:(id)d withNotificationHandler:(id)handler
{
  dCopy = d;
  v7 = MEMORY[0x245D067A0](handler);
  [(BLTPingSubscriber *)self _subscribeToSectionID:dCopy pingHandler:v7 ackType:0 forFullBulletins:1 forNotifications:1];
}

- (void)subscribeToSectionID:(id)d withNotificationAckHandler:(id)handler
{
  dCopy = d;
  v7 = MEMORY[0x245D067A0](handler);
  [(BLTPingSubscriber *)self _subscribeToSectionID:dCopy pingHandler:v7 ackType:1 forFullBulletins:1 forNotifications:1];
}

- (void)subscribeToSectionID:(id)d withNotificationAckForwardHandler:(id)handler
{
  dCopy = d;
  v7 = MEMORY[0x245D067A0](handler);
  [(BLTPingSubscriber *)self _subscribeToSectionID:dCopy pingHandler:v7 ackType:2 forFullBulletins:1 forNotifications:1];
}

- (void)subscribeToSectionID:(id)d withNotificationAckForwardForAnyConnectionHandler:(id)handler
{
  dCopy = d;
  v7 = MEMORY[0x245D067A0](handler);
  [(BLTPingSubscriber *)self _subscribeToSectionID:dCopy pingHandler:v7 ackType:3 forFullBulletins:1 forNotifications:1];
}

- (void)pingWithBulletin:(id)bulletin ack:(id)ack
{
  bulletinCopy = bulletin;
  ackCopy = ack;
  pthread_mutex_lock(&self->_lock);
  pingHandlers = self->_pingHandlers;
  sectionID = [bulletinCopy sectionID];
  v9 = [(NSMutableDictionary *)pingHandlers objectForKeyedSubscript:sectionID];

  pthread_mutex_unlock(&self->_lock);
  if (v9)
  {
    [v9 pingWithBulletin:bulletinCopy ack:ackCopy];
  }
}

- (void)pingWithRecordID:(id)d forSectionID:(id)iD ack:(id)ack
{
  dCopy = d;
  iDCopy = iD;
  ackCopy = ack;
  pthread_mutex_lock(&self->_lock);
  v10 = [(NSMutableDictionary *)self->_pingHandlers objectForKeyedSubscript:iDCopy];
  pthread_mutex_unlock(&self->_lock);
  if (v10)
  {
    [v10 pingWithRecordID:dCopy forSectionID:iDCopy ack:ackCopy];
  }
}

- (void)sendBulletinSummary:(id)summary forBulletin:(id)bulletin destinations:(unint64_t)destinations
{
  v38 = *MEMORY[0x277D85DE8];
  summaryCopy = summary;
  bulletinCopy = bulletin;
  v9 = objc_alloc_init(BLTPBBulletinSummary);
  recordID = [bulletinCopy recordID];
  [(BLTPBBulletinSummary *)v9 setRecordID:recordID];

  publisherBulletinID = [bulletinCopy publisherBulletinID];
  [(BLTPBBulletinSummary *)v9 setPublisherBulletinID:publisherBulletinID];

  v28 = bulletinCopy;
  sectionID = [bulletinCopy sectionID];
  [(BLTPBBulletinSummary *)v9 setSectionID:sectionID];

  v30 = v9;
  [(BLTPBBulletinSummary *)v9 setDestinations:destinations];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = summaryCopy;
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
        activePairedDeviceSupportsNSNullPListExtenion = [MEMORY[0x277D2BCC8] activePairedDeviceSupportsNSNullPListExtenion];
        v22 = activePairedDeviceSupportsNSNullPListExtenion;
        if (activePairedDeviceSupportsNSNullPListExtenion)
        {
          v23 = &v32;
        }

        else
        {
          v23 = 0;
        }

        if (activePairedDeviceSupportsNSNullPListExtenion)
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

- (void)getWillNanoPresentNotificationForSectionID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  pthread_mutex_lock(&self->_lock);
  [(BLTPingService *)self->_service getWillNanoPresentNotificationForSectionID:dCopy subsectionIDs:0 completion:completionCopy];

  pthread_mutex_unlock(&self->_lock);
}

- (void)getWillNanoPresentNotificationForSectionID:(id)d subsectionIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  dCopy = d;
  pthread_mutex_lock(&self->_lock);
  [(BLTPingService *)self->_service getWillNanoPresentNotificationForSectionID:dCopy subsectionIDs:dsCopy completion:completionCopy];

  pthread_mutex_unlock(&self->_lock);
}

- (void)subscribeWithMachServiceName:(id)name
{
  nameCopy = name;
  pthread_mutex_lock(&self->_lock);
  [(BLTPingService *)self->_service subscribeWithMachServiceName:nameCopy];

  pthread_mutex_unlock(&self->_lock);
}

@end