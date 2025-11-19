@interface MADErrorDescriptor
- (MADErrorDescriptor)initWithErrorCode:(unint64_t)a3 count:(unint64_t)a4 errorLine:(unint64_t)a5;
- (int64_t)compareByCount:(id)a3;
@end

@implementation MADErrorDescriptor

- (MADErrorDescriptor)initWithErrorCode:(unint64_t)a3 count:(unint64_t)a4 errorLine:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = MADErrorDescriptor;
  result = [(MADErrorDescriptor *)&v9 init];
  if (result)
  {
    result->_errorCode = a3;
    result->_count = a4;
    result->_errorLine = a5;
  }

  return result;
}

- (int64_t)compareByCount:(id)a3
{
  v4 = a3;
  count = self->_count;
  if (count < [v4 count])
  {
    goto LABEL_2;
  }

  v7 = self->_count;
  if (v7 > [v4 count])
  {
    v6 = -1;
    goto LABEL_9;
  }

  errorCode = self->_errorCode;
  if (errorCode < [v4 errorCode])
  {
LABEL_2:
    v6 = 1;
  }

  else
  {
    v9 = self->_errorCode;
    if (v9 <= [v4 errorCode])
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