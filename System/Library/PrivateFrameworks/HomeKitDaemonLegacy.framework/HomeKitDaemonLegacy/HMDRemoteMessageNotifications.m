@interface HMDRemoteMessageNotifications
+ (BOOL)messageExpectsNotificationResponse:(id)a3;
+ (void)initialize;
- (HMDRemoteMessageNotifications)init;
- (id)_notificationPayloadsForDevice:(id)a3;
- (id)description;
- (id)notificationPayloadWithIdentifier:(id)a3 device:(id)a4;
- (void)addNotificationPayload:(id)a3 identifier:(id)a4 device:(id)a5;
- (void)clearNotificationsForDevice:(id)a3;
- (void)removeNotificationPayloadWithIdentifier:(id)a3 device:(id)a4;
@end

@implementation HMDRemoteMessageNotifications

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDRemoteMessageNotifications *)self sessionNotificationPayloads];
  v4 = [v2 stringWithFormat:@"Session notifications: %@", v3];

  return v4;
}

- (void)clearNotificationsForDevice:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMDRemoteMessageNotifications *)self sessionNotificationPayloads];
  [v4 removeObjectForKey:v5];

  os_unfair_lock_unlock(&self->_lock.lock);
}

- (id)notificationPayloadWithIdentifier:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  v8 = [(HMDRemoteMessageNotifications *)self _notificationPayloadsForDevice:v7];
  v9 = [v8 objectForKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_lock.lock);

  return v9;
}

- (void)removeNotificationPayloadWithIdentifier:(id)a3 device:(id)a4
{
  v8 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  v7 = [(HMDRemoteMessageNotifications *)self _notificationPayloadsForDevice:v6];
  [v7 removeObjectForKey:v8];

  os_unfair_lock_unlock(&self->_lock.lock);
}

- (void)addNotificationPayload:(id)a3 identifier:(id)a4 device:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  os_unfair_lock_lock_with_options();
  v10 = [(HMDRemoteMessageNotifications *)self _notificationPayloadsForDevice:v9];
  [v10 setObject:v11 forKeyedSubscript:v8];

  os_unfair_lock_unlock(&self->_lock.lock);
}

- (id)_notificationPayloadsForDevice:(id)a3
{
  v4 = a3;
  v5 = [(HMDRemoteMessageNotifications *)self sessionNotificationPayloads];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v7 = [(HMDRemoteMessageNotifications *)self sessionNotificationPayloads];
    [v7 setObject:v6 forKey:v4];
  }

  return v6;
}

- (HMDRemoteMessageNotifications)init
{
  v7.receiver = self;
  v7.super_class = HMDRemoteMessageNotifications;
  v2 = [(HMDRemoteMessageNotifications *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock.lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    sessionNotificationPayloads = v3->_sessionNotificationPayloads;
    v3->_sessionNotificationPayloads = v4;
  }

  return v3;
}

+ (BOOL)messageExpectsNotificationResponse:(id)a3
{
  v4 = a3;
  v5 = [a1 messagesWithNotificationResponses];
  v6 = [v4 name];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

+ (void)initialize
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"kCharacteristicWriteRequestKey";
  v5[1] = @"kCharacteristicReadRequestKey";
  v5[2] = @"kMultipleCharacteristicWriteRequestKey";
  v5[3] = @"kMultipleCharacteristicReadRequestKey";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v3 = _messagesWithNotificationResponses;
  _messagesWithNotificationResponses = v2;

  v4 = *MEMORY[0x277D85DE8];
}

@end