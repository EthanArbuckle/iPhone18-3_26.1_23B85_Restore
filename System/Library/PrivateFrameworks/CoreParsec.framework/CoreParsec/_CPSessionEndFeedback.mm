@interface _CPSessionEndFeedback
- (BOOL)isEqual:(id)equal;
- (_CPSessionEndFeedback)init;
- (void)writeTo:(id)to;
@end

@implementation _CPSessionEndFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (timestamp = self->_timestamp, timestamp == objc_msgSend(equalCopy, "timestamp")))
  {
    reason = self->_reason;
    v7 = reason == [equalCopy reason];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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