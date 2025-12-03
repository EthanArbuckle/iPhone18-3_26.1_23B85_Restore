@interface CSAttendingHintInfo
- (CSAttendingHintInfo)initWithOrigin:(unint64_t)origin;
- (id)_originString;
- (id)description;
@end

@implementation CSAttendingHintInfo

- (id)description
{
  v3 = +[NSMutableString string];
  _originString = [(CSAttendingHintInfo *)self _originString];
  [v3 appendFormat:@"[origin: %@]", _originString];

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

- (CSAttendingHintInfo)initWithOrigin:(unint64_t)origin
{
  v5.receiver = self;
  v5.super_class = CSAttendingHintInfo;
  result = [(CSAttendingHintInfo *)&v5 init];
  if (result)
  {
    result->_origin = origin;
  }

  return result;
}

@end