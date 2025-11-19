@interface ICASClickContext
- (ICASClickContext)initWithClickContext:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASClickContext

- (ICASClickContext)initWithClickContext:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASClickContext;
  result = [(ICASClickContext *)&v5 init];
  if (result)
  {
    result->_clickContext = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASClickContext *)self clickContext];
  if ((v3 - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF4A0[v3 - 1];
  }
}

@end