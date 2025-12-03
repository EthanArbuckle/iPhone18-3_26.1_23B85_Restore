@interface FCCMoveModeContent
- (FCCMoveModeContent)initWithNotificationType:(int64_t)type nextActivityMoveMode:(int64_t)mode nextActivityMoveModeStartDate:(id)date delay:(double)delay;
- (FCCMoveModeContent)initWithTransportData:(id)data;
- (id)transportData;
@end

@implementation FCCMoveModeContent

- (FCCMoveModeContent)initWithNotificationType:(int64_t)type nextActivityMoveMode:(int64_t)mode nextActivityMoveModeStartDate:(id)date delay:(double)delay
{
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = FCCMoveModeContent;
  v12 = [(FCCMoveModeContent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_notificationType = type;
    v12->_nextActivityMoveMode = mode;
    objc_storeStrong(&v12->_nextActivityMoveModeStartDate, date);
    v13->_delay = delay;
  }

  return v13;
}

- (FCCMoveModeContent)initWithTransportData:(id)data
{
  dataCopy = data;
  v5 = [[FCCMoveModeProtobuf alloc] initWithData:dataCopy];

  notificationType = [(FCCMoveModeProtobuf *)v5 notificationType];
  nextActivityMoveMode = [(FCCMoveModeProtobuf *)v5 nextActivityMoveMode];
  v8 = MEMORY[0x277CBEAA8];
  [(FCCMoveModeProtobuf *)v5 nextActivityMoveModeStartDate];
  v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
  v10 = [(FCCMoveModeContent *)self initWithNotificationType:notificationType nextActivityMoveMode:nextActivityMoveMode nextActivityMoveModeStartDate:v9 delay:[(FCCMoveModeProtobuf *)v5 delay]];

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
  data = [(FCCMoveModeProtobuf *)v3 data];

  return data;
}

@end