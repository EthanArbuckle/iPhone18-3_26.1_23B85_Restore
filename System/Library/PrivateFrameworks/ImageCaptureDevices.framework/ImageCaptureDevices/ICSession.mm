@interface ICSession
- (BOOL)interestedInNotification:(id)notification;
- (ICSession)initWithConnection:(id)connection;
- (int)pid;
- (void)addNotifications:(id)notifications;
- (void)dealloc;
- (void)remNotifications:(id)notifications;
@end

@implementation ICSession

- (ICSession)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v10.receiver = self;
  v10.super_class = ICSession;
  v5 = [(ICSession *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(ICSession *)v5 setConnection:connectionCopy];
    [(ICSession *)v6 setOpenSession:0];
    [(ICSession *)v6 setObjectHandle:0];
    v7 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    notifications = v6->_notifications;
    v6->_notifications = v7;

    v6->_resourceLock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (int)pid
{
  connection = self->_connection;
  if (connection)
  {
    return [(NSXPCConnection *)connection processIdentifier];
  }

  else
  {
    return -1;
  }
}

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
    v4 = self->_connection;
    self->_connection = 0;
  }

  self->_objectHandle = 0;
  v5.receiver = self;
  v5.super_class = ICSession;
  [(ICSession *)&v5 dealloc];
}

- (BOOL)interestedInNotification:(id)notification
{
  notificationCopy = notification;
  os_unfair_lock_lock(&self->_resourceLock);
  v5 = [(NSMutableArray *)self->_notifications containsObject:notificationCopy];

  os_unfair_lock_unlock(&self->_resourceLock);
  return v5;
}

- (void)addNotifications:(id)notifications
{
  notificationsCopy = notifications;
  os_unfair_lock_lock(&self->_resourceLock);
  [(NSMutableArray *)self->_notifications addObjectsFromArray:notificationsCopy];

  os_unfair_lock_unlock(&self->_resourceLock);
}

- (void)remNotifications:(id)notifications
{
  notificationsCopy = notifications;
  os_unfair_lock_lock(&self->_resourceLock);
  [(NSMutableArray *)self->_notifications removeObjectsInArray:notificationsCopy];

  os_unfair_lock_unlock(&self->_resourceLock);
}

@end