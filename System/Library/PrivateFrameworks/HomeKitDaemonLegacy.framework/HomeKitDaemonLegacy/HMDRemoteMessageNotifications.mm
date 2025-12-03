@interface HMDRemoteMessageNotifications
+ (BOOL)messageExpectsNotificationResponse:(id)response;
+ (void)initialize;
- (HMDRemoteMessageNotifications)init;
- (id)_notificationPayloadsForDevice:(id)device;
- (id)description;
- (id)notificationPayloadWithIdentifier:(id)identifier device:(id)device;
- (void)addNotificationPayload:(id)payload identifier:(id)identifier device:(id)device;
- (void)clearNotificationsForDevice:(id)device;
- (void)removeNotificationPayloadWithIdentifier:(id)identifier device:(id)device;
@end

@implementation HMDRemoteMessageNotifications

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  sessionNotificationPayloads = [(HMDRemoteMessageNotifications *)self sessionNotificationPayloads];
  v4 = [v2 stringWithFormat:@"Session notifications: %@", sessionNotificationPayloads];

  return v4;
}

- (void)clearNotificationsForDevice:(id)device
{
  deviceCopy = device;
  os_unfair_lock_lock_with_options();
  sessionNotificationPayloads = [(HMDRemoteMessageNotifications *)self sessionNotificationPayloads];
  [sessionNotificationPayloads removeObjectForKey:deviceCopy];

  os_unfair_lock_unlock(&self->_lock.lock);
}

- (id)notificationPayloadWithIdentifier:(id)identifier device:(id)device
{
  identifierCopy = identifier;
  deviceCopy = device;
  os_unfair_lock_lock_with_options();
  v8 = [(HMDRemoteMessageNotifications *)self _notificationPayloadsForDevice:deviceCopy];
  v9 = [v8 objectForKeyedSubscript:identifierCopy];

  os_unfair_lock_unlock(&self->_lock.lock);

  return v9;
}

- (void)removeNotificationPayloadWithIdentifier:(id)identifier device:(id)device
{
  identifierCopy = identifier;
  deviceCopy = device;
  os_unfair_lock_lock_with_options();
  v7 = [(HMDRemoteMessageNotifications *)self _notificationPayloadsForDevice:deviceCopy];
  [v7 removeObjectForKey:identifierCopy];

  os_unfair_lock_unlock(&self->_lock.lock);
}

- (void)addNotificationPayload:(id)payload identifier:(id)identifier device:(id)device
{
  payloadCopy = payload;
  identifierCopy = identifier;
  deviceCopy = device;
  os_unfair_lock_lock_with_options();
  v10 = [(HMDRemoteMessageNotifications *)self _notificationPayloadsForDevice:deviceCopy];
  [v10 setObject:payloadCopy forKeyedSubscript:identifierCopy];

  os_unfair_lock_unlock(&self->_lock.lock);
}

- (id)_notificationPayloadsForDevice:(id)device
{
  deviceCopy = device;
  sessionNotificationPayloads = [(HMDRemoteMessageNotifications *)self sessionNotificationPayloads];
  dictionary = [sessionNotificationPayloads objectForKey:deviceCopy];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sessionNotificationPayloads2 = [(HMDRemoteMessageNotifications *)self sessionNotificationPayloads];
    [sessionNotificationPayloads2 setObject:dictionary forKey:deviceCopy];
  }

  return dictionary;
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
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    sessionNotificationPayloads = v3->_sessionNotificationPayloads;
    v3->_sessionNotificationPayloads = strongToStrongObjectsMapTable;
  }

  return v3;
}

+ (BOOL)messageExpectsNotificationResponse:(id)response
{
  responseCopy = response;
  messagesWithNotificationResponses = [self messagesWithNotificationResponses];
  name = [responseCopy name];

  LOBYTE(responseCopy) = [messagesWithNotificationResponses containsObject:name];
  return responseCopy;
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