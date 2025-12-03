@interface OversizeIndex
- (id)init:(unint64_t)init msgID:(unsigned int)d pidV:(unsigned int)v timestamp:(unint64_t)timestamp;
- (int64_t)compareTimestamp:(id)timestamp;
@end

@implementation OversizeIndex

- (int64_t)compareTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  timestamp = [(OversizeIndex *)self timestamp];
  if (timestamp == [timestampCopy timestamp])
  {
    v6 = 0;
  }

  else
  {
    timestamp2 = [(OversizeIndex *)self timestamp];
    if (timestamp2 < [timestampCopy timestamp])
    {
      v6 = -1;
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- (id)init:(unint64_t)init msgID:(unsigned int)d pidV:(unsigned int)v timestamp:(unint64_t)timestamp
{
  v11.receiver = self;
  v11.super_class = OversizeIndex;
  result = [(OversizeIndex *)&v11 init];
  if (result)
  {
    *(result + 6) = v;
    *(result + 7) = d;
    *(result + 1) = timestamp;
    *(result + 2) = init;
  }

  return result;
}

@end