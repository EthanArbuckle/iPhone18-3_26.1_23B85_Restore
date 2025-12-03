@interface _CPFeedback
- (BOOL)isEqual:(id)equal;
- (_CPFeedback)init;
- (_CPFeedback)initWithFacade:(id)facade;
- (void)writeTo:(id)to;
@end

@implementation _CPFeedback

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

- (_CPFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v8.receiver = self;
  v8.super_class = _CPFeedback;
  v5 = [(_CPFeedback *)&v8 init];
  if (v5)
  {
    -[_CPFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    v6 = v5;
  }

  return v5;
}

@end