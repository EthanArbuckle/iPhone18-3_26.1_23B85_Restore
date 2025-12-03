@interface CSAttendingStartHintInfo
- (CSAttendingStartHintInfo)initWithOrigin:(unint64_t)origin reason:(unint64_t)reason recordContext:(id)context rootRequestId:(id)id mhUUID:(id)d;
- (id)_reasonString;
- (id)description;
@end

@implementation CSAttendingStartHintInfo

- (id)description
{
  v3 = +[NSMutableString string];
  v7.receiver = self;
  v7.super_class = CSAttendingStartHintInfo;
  v4 = [(CSAttendingHintInfo *)&v7 description];
  [v3 appendFormat:@"%@", v4];
  _reasonString = [(CSAttendingStartHintInfo *)self _reasonString];
  [v3 appendFormat:@"[reason: %@]", _reasonString];

  [v3 appendFormat:@"[recordContext: %@]", self->_recordContext];
  [v3 appendFormat:@"[rootRequestId: %@]", self->_rootRequestId];
  [v3 appendFormat:@"[mhUUID: %@]", self->_mhUUID];

  return v3;
}

- (id)_reasonString
{
  reason = self->_reason;
  v3 = @"Unknown";
  if (reason == 2)
  {
    v3 = @"UI Requested";
  }

  if (reason == 1)
  {
    return @"ClientStoppedRecording";
  }

  else
  {
    return v3;
  }
}

- (CSAttendingStartHintInfo)initWithOrigin:(unint64_t)origin reason:(unint64_t)reason recordContext:(id)context rootRequestId:(id)id mhUUID:(id)d
{
  contextCopy = context;
  idCopy = id;
  dCopy = d;
  v19.receiver = self;
  v19.super_class = CSAttendingStartHintInfo;
  v16 = [(CSAttendingHintInfo *)&v19 initWithOrigin:origin];
  v17 = v16;
  if (v16)
  {
    v16->_reason = reason;
    objc_storeStrong(&v16->_recordContext, context);
    objc_storeStrong(&v17->_rootRequestId, id);
    objc_storeStrong(&v17->_mhUUID, d);
  }

  return v17;
}

@end