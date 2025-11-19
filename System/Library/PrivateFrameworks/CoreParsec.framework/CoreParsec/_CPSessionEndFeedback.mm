@interface _CPSessionEndFeedback
- (BOOL)isEqual:(id)a3;
- (_CPSessionEndFeedback)init;
- (void)writeTo:(id)a3;
@end

@implementation _CPSessionEndFeedback

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (timestamp = self->_timestamp, timestamp == objc_msgSend(v4, "timestamp")))
  {
    reason = self->_reason;
    v7 = reason == [v4 reason];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if ([(_CPSessionEndFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPSessionEndFeedback *)self reason])
  {
    reason = self->_reason;
    PBDataWriterWriteInt32Field();
  }
}

- (_CPSessionEndFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPSessionEndFeedback;
  v2 = [(_CPSessionEndFeedback *)&v5 init];
  if (v2)
  {
    [(_CPSessionEndFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

@end