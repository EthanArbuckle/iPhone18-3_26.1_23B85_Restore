@interface CSAttendingWillStartHintInfo
- (CSAttendingWillStartHintInfo)initWithOrigin:(unint64_t)origin rootRequestId:(id)id;
- (id)description;
@end

@implementation CSAttendingWillStartHintInfo

- (id)description
{
  v3 = +[NSMutableString string];
  v6.receiver = self;
  v6.super_class = CSAttendingWillStartHintInfo;
  v4 = [(CSAttendingHintInfo *)&v6 description];
  [v3 appendFormat:@"%@", v4];
  [v3 appendFormat:@"[rootRequestId: %@]", self->_rootRequestId];

  return v3;
}

- (CSAttendingWillStartHintInfo)initWithOrigin:(unint64_t)origin rootRequestId:(id)id
{
  idCopy = id;
  v11.receiver = self;
  v11.super_class = CSAttendingWillStartHintInfo;
  v8 = [(CSAttendingHintInfo *)&v11 initWithOrigin:origin];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_rootRequestId, id);
  }

  return v9;
}

@end