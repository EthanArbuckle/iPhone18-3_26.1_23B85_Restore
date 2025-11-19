@interface CSAttendingStartHintInfo
- (CSAttendingStartHintInfo)initWithOrigin:(unint64_t)a3 reason:(unint64_t)a4 recordContext:(id)a5 rootRequestId:(id)a6 mhUUID:(id)a7;
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
  v5 = [(CSAttendingStartHintInfo *)self _reasonString];
  [v3 appendFormat:@"[reason: %@]", v5];

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

- (CSAttendingStartHintInfo)initWithOrigin:(unint64_t)a3 reason:(unint64_t)a4 recordContext:(id)a5 rootRequestId:(id)a6 mhUUID:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = CSAttendingStartHintInfo;
  v16 = [(CSAttendingHintInfo *)&v19 initWithOrigin:a3];
  v17 = v16;
  if (v16)
  {
    v16->_reason = a4;
    objc_storeStrong(&v16->_recordContext, a5);
    objc_storeStrong(&v17->_rootRequestId, a6);
    objc_storeStrong(&v17->_mhUUID, a7);
  }

  return v17;
}

@end