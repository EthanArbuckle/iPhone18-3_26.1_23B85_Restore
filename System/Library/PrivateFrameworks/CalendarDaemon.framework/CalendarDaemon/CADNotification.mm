@interface CADNotification
- (CADNotification)initWithType:(int)a3 objectID:(id)a4 occurrenceDate:(double)a5 expirationDate:(double)a6;
- (NSArray)expandedNotifications;
- (NSMutableArray)mutableExpandedNotifications;
- (void)addExpandedNotification:(id)a3;
@end

@implementation CADNotification

- (CADNotification)initWithType:(int)a3 objectID:(id)a4 occurrenceDate:(double)a5 expirationDate:(double)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = CADNotification;
  v12 = [(CADNotification *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_type = a3;
    objc_storeStrong(&v12->_objectID, a4);
    v13->_occurrenceDate = a5;
    v13->_expirationDate = a6;
  }

  return v13;
}

- (NSArray)expandedNotifications
{
  v2 = [(NSMutableArray *)self->_mutableExpandedNotifications copy];

  return v2;
}

- (void)addExpandedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CADNotification *)self mutableExpandedNotifications];
  [v5 addObject:v4];
}

- (NSMutableArray)mutableExpandedNotifications
{
  mutableExpandedNotifications = self->_mutableExpandedNotifications;
  if (!mutableExpandedNotifications)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = self->_mutableExpandedNotifications;
    self->_mutableExpandedNotifications = v4;

    mutableExpandedNotifications = self->_mutableExpandedNotifications;
  }

  return mutableExpandedNotifications;
}

@end