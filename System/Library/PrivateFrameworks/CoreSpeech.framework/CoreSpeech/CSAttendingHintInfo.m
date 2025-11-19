@interface CSAttendingHintInfo
- (CSAttendingHintInfo)initWithOrigin:(unint64_t)a3;
- (id)_originString;
- (id)description;
@end

@implementation CSAttendingHintInfo

- (id)description
{
  v3 = +[NSMutableString string];
  v4 = [(CSAttendingHintInfo *)self _originString];
  [v3 appendFormat:@"[origin: %@]", v4];

  return v3;
}

- (id)_originString
{
  origin = self->_origin;
  v3 = @"Unknown";
  if (origin == 2)
  {
    v3 = @"StatesProvidingProxy";
  }

  if (origin == 1)
  {
    return @"IntuitiveConvRequestHandler";
  }

  else
  {
    return v3;
  }
}

- (CSAttendingHintInfo)initWithOrigin:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = CSAttendingHintInfo;
  result = [(CSAttendingHintInfo *)&v5 init];
  if (result)
  {
    result->_origin = a3;
  }

  return result;
}

@end