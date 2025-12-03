@interface ICASClickContext
- (ICASClickContext)initWithClickContext:(int64_t)context;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASClickContext

- (ICASClickContext)initWithClickContext:(int64_t)context
{
  v5.receiver = self;
  v5.super_class = ICASClickContext;
  result = [(ICASClickContext *)&v5 init];
  if (result)
  {
    result->_clickContext = context;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  clickContext = [(ICASClickContext *)self clickContext];
  if ((clickContext - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF4A0[clickContext - 1];
  }
}

@end