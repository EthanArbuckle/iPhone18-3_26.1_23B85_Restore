@interface _CPConnectionInvalidatedFeedback
- (BOOL)isEqual:(id)equal;
- (_CPConnectionInvalidatedFeedback)init;
- (void)writeTo:(id)to;
@end

@implementation _CPConnectionInvalidatedFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    v6 = timestamp == [equalCopy timestamp];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_CPConnectionInvalidatedFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }
}

- (_CPConnectionInvalidatedFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPConnectionInvalidatedFeedback;
  v2 = [(_CPConnectionInvalidatedFeedback *)&v5 init];
  if (v2)
  {
    [(_CPConnectionInvalidatedFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

@end