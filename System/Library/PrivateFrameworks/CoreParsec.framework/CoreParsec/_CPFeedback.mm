@interface _CPFeedback
- (BOOL)isEqual:(id)a3;
- (_CPFeedback)init;
- (_CPFeedback)initWithFacade:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPFeedback

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
  if ([(_CPFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }
}

- (_CPFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPFeedback;
  v2 = [(_CPFeedback *)&v5 init];
  if (v2)
  {
    [(_CPFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _CPFeedback;
  v5 = [(_CPFeedback *)&v8 init];
  if (v5)
  {
    -[_CPFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v6 = v5;
  }

  return v5;
}

@end