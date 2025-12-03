@interface _CPResultFeedback
- (BOOL)isEqual:(id)equal;
- (_CPResultFeedback)init;
- (_CPResultFeedback)initWithFacade:(id)facade;
- (void)writeTo:(id)to;
@end

@implementation _CPResultFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    if (timestamp == [equalCopy timestamp])
    {
      result = [(_CPResultFeedback *)self result];
      result2 = [equalCopy result];
      v8 = result2;
      if ((result != 0) != (result2 == 0))
      {
        result3 = [(_CPResultFeedback *)self result];
        if (!result3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = result3;
        result4 = [(_CPResultFeedback *)self result];
        result5 = [equalCopy result];
        v13 = [result4 isEqual:result5];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_CPResultFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  result = [(_CPResultFeedback *)self result];

  if (result)
  {
    result2 = [(_CPResultFeedback *)self result];
    PBDataWriterWriteSubmessage();
  }
}

- (_CPResultFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPResultFeedback;
  v2 = [(_CPResultFeedback *)&v5 init];
  if (v2)
  {
    [(_CPResultFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPResultFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v12.receiver = self;
  v12.super_class = _CPResultFeedback;
  v5 = [(_CPResultFeedback *)&v12 init];
  if (v5)
  {
    -[_CPResultFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    result = [facadeCopy result];

    if (result)
    {
      v7 = [_CPSearchResultForFeedback alloc];
      result2 = [facadeCopy result];
      v9 = [(_CPSearchResultForFeedback *)v7 initWithFacade:result2];
      [(_CPResultFeedback *)v5 setResult:v9];
    }

    v10 = v5;
  }

  return v5;
}

@end