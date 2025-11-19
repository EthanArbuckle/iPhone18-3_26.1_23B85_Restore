@interface OversizeIndex
- (id)init:(unint64_t)a3 msgID:(unsigned int)a4 pidV:(unsigned int)a5 timestamp:(unint64_t)a6;
- (int64_t)compareTimestamp:(id)a3;
@end

@implementation OversizeIndex

- (int64_t)compareTimestamp:(id)a3
{
  v4 = a3;
  v5 = [(OversizeIndex *)self timestamp];
  if (v5 == [v4 timestamp])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(OversizeIndex *)self timestamp];
    if (v7 < [v4 timestamp])
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

- (id)init:(unint64_t)a3 msgID:(unsigned int)a4 pidV:(unsigned int)a5 timestamp:(unint64_t)a6
{
  v11.receiver = self;
  v11.super_class = OversizeIndex;
  result = [(OversizeIndex *)&v11 init];
  if (result)
  {
    *(result + 6) = a5;
    *(result + 7) = a4;
    *(result + 1) = a6;
    *(result + 2) = a3;
  }

  return result;
}

@end