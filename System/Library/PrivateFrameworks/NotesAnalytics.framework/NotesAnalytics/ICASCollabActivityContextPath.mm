@interface ICASCollabActivityContextPath
- (ICASCollabActivityContextPath)initWithCollabActivityContextPath:(int64_t)path;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASCollabActivityContextPath

- (ICASCollabActivityContextPath)initWithCollabActivityContextPath:(int64_t)path
{
  v5.receiver = self;
  v5.super_class = ICASCollabActivityContextPath;
  result = [(ICASCollabActivityContextPath *)&v5 init];
  if (result)
  {
    result->_collabActivityContextPath = path;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  collabActivityContextPath = [(ICASCollabActivityContextPath *)self collabActivityContextPath];
  if ((collabActivityContextPath - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF9D0[collabActivityContextPath - 1];
  }
}

@end