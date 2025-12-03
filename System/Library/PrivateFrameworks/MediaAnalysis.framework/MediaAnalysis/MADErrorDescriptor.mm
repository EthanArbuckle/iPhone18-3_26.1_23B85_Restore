@interface MADErrorDescriptor
- (MADErrorDescriptor)initWithErrorCode:(unint64_t)code count:(unint64_t)count errorLine:(unint64_t)line;
- (int64_t)compareByCount:(id)count;
@end

@implementation MADErrorDescriptor

- (MADErrorDescriptor)initWithErrorCode:(unint64_t)code count:(unint64_t)count errorLine:(unint64_t)line
{
  v9.receiver = self;
  v9.super_class = MADErrorDescriptor;
  result = [(MADErrorDescriptor *)&v9 init];
  if (result)
  {
    result->_errorCode = code;
    result->_count = count;
    result->_errorLine = line;
  }

  return result;
}

- (int64_t)compareByCount:(id)count
{
  countCopy = count;
  count = self->_count;
  if (count < [countCopy count])
  {
    goto LABEL_2;
  }

  v7 = self->_count;
  if (v7 > [countCopy count])
  {
    v6 = -1;
    goto LABEL_9;
  }

  errorCode = self->_errorCode;
  if (errorCode < [countCopy errorCode])
  {
LABEL_2:
    v6 = 1;
  }

  else
  {
    v9 = self->_errorCode;
    if (v9 <= [countCopy errorCode])
    {
      v6 = 0;
    }

    else
    {
      v6 = -1;
    }
  }

LABEL_9:

  return v6;
}

@end