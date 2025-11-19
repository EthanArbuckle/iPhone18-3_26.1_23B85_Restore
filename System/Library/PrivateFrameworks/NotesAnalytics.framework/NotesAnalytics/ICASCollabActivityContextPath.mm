@interface ICASCollabActivityContextPath
- (ICASCollabActivityContextPath)initWithCollabActivityContextPath:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASCollabActivityContextPath

- (ICASCollabActivityContextPath)initWithCollabActivityContextPath:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASCollabActivityContextPath;
  result = [(ICASCollabActivityContextPath *)&v5 init];
  if (result)
  {
    result->_collabActivityContextPath = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASCollabActivityContextPath *)self collabActivityContextPath];
  if ((v3 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF9D0[v3 - 1];
  }
}

@end