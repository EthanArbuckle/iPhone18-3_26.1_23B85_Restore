@interface MBDriveOperation
+ (id)stringForType:(int)type;
- (MBDriveOperation)initWithType:(int)type count:(int64_t)count size:(int64_t)size duration:(double)duration;
- (id)description;
@end

@implementation MBDriveOperation

+ (id)stringForType:(int)type
{
  if (type > 6)
  {
    return 0;
  }

  else
  {
    return off_1003BFC28[type];
  }
}

- (MBDriveOperation)initWithType:(int)type count:(int64_t)count size:(int64_t)size duration:(double)duration
{
  countCopy = count;
  if (count < -1)
  {
    v13 = 112;
  }

  else
  {
    if (count < 0x80000000)
    {
      goto LABEL_3;
    }

    v13 = 113;
  }

  v14 = +[NSAssertionHandler currentHandler];
  [v14 handleFailureInMethod:a2 object:self file:@"MBDriveOperation.m" lineNumber:v13 description:@"Invalid count"];

LABEL_3:
  if (size <= -2)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"MBDriveOperation.m" lineNumber:114 description:@"Invalid size"];
  }

  if (duration < 0.0)
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MBDriveOperation.m" lineNumber:115 description:@"Negative duration"];
  }

  v17.receiver = self;
  v17.super_class = MBDriveOperation;
  result = [(MBDriveOperation *)&v17 init];
  if (result)
  {
    result->_type = type;
    result->_count = countCopy;
    result->_size = size;
    result->_duration = duration;
  }

  return result;
}

- (id)description
{
  v3 = [MBDriveOperation stringForType:self->_type];
  v4 = [NSString stringWithFormat:@"[MBDriveOperation type=%@ count=%ld size=%lld duration=%0.3f]", v3, self->_count, self->_size, *&self->_duration];

  return v4;
}

@end