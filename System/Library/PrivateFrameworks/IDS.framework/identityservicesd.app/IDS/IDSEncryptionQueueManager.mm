@interface IDSEncryptionQueueManager
- (IDSEncryptionQueueManager)init;
- (id)_queueForPriority:(int64_t)priority;
@end

@implementation IDSEncryptionQueueManager

- (IDSEncryptionQueueManager)init
{
  v10.receiver = self;
  v10.super_class = IDSEncryptionQueueManager;
  v2 = [(IDSEncryptionQueueManager *)&v10 init];
  if (v2)
  {
    v3 = [[IDSEncryptionQueue alloc] initWithName:"_IDSEncryptionQueueSync" qosClass:17 specific:"_MessageEncryptionContextSync"];
    syncQueue = v2->_syncQueue;
    v2->_syncQueue = v3;

    v5 = [[IDSEncryptionQueue alloc] initWithName:"_IDSEncryptionQueueDefault" qosClass:21 specific:"_MessageEncryptionContextDefault"];
    defaultQueue = v2->_defaultQueue;
    v2->_defaultQueue = v5;

    v7 = [[IDSEncryptionQueue alloc] initWithName:"_IDSEncryptionQueueUrgent" qosClass:25 specific:"_MessageEncryptionContextUrgent"];
    urgentQueue = v2->_urgentQueue;
    v2->_urgentQueue = v7;
  }

  return v2;
}

- (id)_queueForPriority:(int64_t)priority
{
  v3 = 16;
  if (priority == 100)
  {
    v3 = 8;
  }

  if (priority == 300)
  {
    v3 = 24;
  }

  return *(&self->super.isa + v3);
}

@end