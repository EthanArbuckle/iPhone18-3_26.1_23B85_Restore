@interface MBDriveOperation
+ (id)stringForType:(int)a3;
- (MBDriveOperation)initWithType:(int)a3 count:(int64_t)a4 size:(int64_t)a5 duration:(double)a6;
- (id)description;
@end

@implementation MBDriveOperation

+ (id)stringForType:(int)a3
{
  if (a3 > 6)
  {
    return 0;
  }

  else
  {
    return off_1003BFC28[a3];
  }
}

- (MBDriveOperation)initWithType:(int)a3 count:(int64_t)a4 size:(int64_t)a5 duration:(double)a6
{
  v8 = a4;
  if (a4 < -1)
  {
    v13 = 112;
  }

  else
  {
    if (a4 < 0x80000000)
    {
      goto LABEL_3;
    }

    v13 = 113;
  }

  v14 = +[NSAssertionHandler currentHandler];
  [v14 handleFailureInMethod:a2 object:self file:@"MBDriveOperation.m" lineNumber:v13 description:@"Invalid count"];

LABEL_3:
  if (a5 <= -2)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"MBDriveOperation.m" lineNumber:114 description:@"Invalid size"];
  }

  if (a6 < 0.0)
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MBDriveOperation.m" lineNumber:115 description:@"Negative duration"];
  }

  v17.receiver = self;
  v17.super_class = MBDriveOperation;
  result = [(MBDriveOperation *)&v17 init];
  if (result)
  {
    result->_type = a3;
    result->_count = v8;
    result->_size = a5;
    result->_duration = a6;
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