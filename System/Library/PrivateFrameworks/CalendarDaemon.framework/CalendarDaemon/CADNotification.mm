@interface CADNotification
- (CADNotification)initWithType:(int)type objectID:(id)d occurrenceDate:(double)date expirationDate:(double)expirationDate;
- (NSArray)expandedNotifications;
- (NSMutableArray)mutableExpandedNotifications;
- (void)addExpandedNotification:(id)notification;
@end

@implementation CADNotification

- (CADNotification)initWithType:(int)type objectID:(id)d occurrenceDate:(double)date expirationDate:(double)expirationDate
{
  dCopy = d;
  v15.receiver = self;
  v15.super_class = CADNotification;
  v12 = [(CADNotification *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_type = type;
    objc_storeStrong(&v12->_objectID, d);
    v13->_occurrenceDate = date;
    v13->_expirationDate = expirationDate;
  }

  return v13;
}

- (NSArray)expandedNotifications
{
  v2 = [(NSMutableArray *)self->_mutableExpandedNotifications copy];

  return v2;
}

- (void)addExpandedNotification:(id)notification
{
  notificationCopy = notification;
  mutableExpandedNotifications = [(CADNotification *)self mutableExpandedNotifications];
  [mutableExpandedNotifications addObject:notificationCopy];
}

- (NSMutableArray)mutableExpandedNotifications
{
  mutableExpandedNotifications = self->_mutableExpandedNotifications;
  if (!mutableExpandedNotifications)
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = self->_mutableExpandedNotifications;
    self->_mutableExpandedNotifications = array;

    mutableExpandedNotifications = self->_mutableExpandedNotifications;
  }

  return mutableExpandedNotifications;
}

@end