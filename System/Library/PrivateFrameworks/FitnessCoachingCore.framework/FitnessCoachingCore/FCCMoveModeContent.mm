@interface FCCMoveModeContent
- (FCCMoveModeContent)initWithNotificationType:(int64_t)a3 nextActivityMoveMode:(int64_t)a4 nextActivityMoveModeStartDate:(id)a5 delay:(double)a6;
- (FCCMoveModeContent)initWithTransportData:(id)a3;
- (id)transportData;
@end

@implementation FCCMoveModeContent

- (FCCMoveModeContent)initWithNotificationType:(int64_t)a3 nextActivityMoveMode:(int64_t)a4 nextActivityMoveModeStartDate:(id)a5 delay:(double)a6
{
  v11 = a5;
  v15.receiver = self;
  v15.super_class = FCCMoveModeContent;
  v12 = [(FCCMoveModeContent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_notificationType = a3;
    v12->_nextActivityMoveMode = a4;
    objc_storeStrong(&v12->_nextActivityMoveModeStartDate, a5);
    v13->_delay = a6;
  }

  return v13;
}

- (FCCMoveModeContent)initWithTransportData:(id)a3
{
  v4 = a3;
  v5 = [[FCCMoveModeProtobuf alloc] initWithData:v4];

  v6 = [(FCCMoveModeProtobuf *)v5 notificationType];
  v7 = [(FCCMoveModeProtobuf *)v5 nextActivityMoveMode];
  v8 = MEMORY[0x277CBEAA8];
  [(FCCMoveModeProtobuf *)v5 nextActivityMoveModeStartDate];
  v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
  v10 = [(FCCMoveModeContent *)self initWithNotificationType:v6 nextActivityMoveMode:v7 nextActivityMoveModeStartDate:v9 delay:[(FCCMoveModeProtobuf *)v5 delay]];

  return v10;
}

- (id)transportData
{
  v3 = objc_alloc_init(FCCMoveModeProtobuf);
  [(FCCMoveModeProtobuf *)v3 setNotificationType:self->_notificationType];
  [(FCCMoveModeProtobuf *)v3 setNextActivityMoveMode:self->_nextActivityMoveMode];
  [(NSDate *)self->_nextActivityMoveModeStartDate timeIntervalSinceReferenceDate];
  [(FCCMoveModeProtobuf *)v3 setNextActivityMoveModeStartDate:?];
  [(FCCMoveModeProtobuf *)v3 setDelay:self->_delay];
  v4 = [(FCCMoveModeProtobuf *)v3 data];

  return v4;
}

@end