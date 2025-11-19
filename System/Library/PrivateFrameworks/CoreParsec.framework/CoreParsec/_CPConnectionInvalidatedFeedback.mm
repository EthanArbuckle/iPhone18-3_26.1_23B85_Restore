@interface _CPConnectionInvalidatedFeedback
- (BOOL)isEqual:(id)a3;
- (_CPConnectionInvalidatedFeedback)init;
- (void)writeTo:(id)a3;
@end

@implementation _CPConnectionInvalidatedFeedback

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    v6 = timestamp == [v4 timestamp];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
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