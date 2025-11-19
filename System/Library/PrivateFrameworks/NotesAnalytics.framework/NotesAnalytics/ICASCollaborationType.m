@interface ICASCollaborationType
- (ICASCollaborationType)initWithCollaborationType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASCollaborationType

- (ICASCollaborationType)initWithCollaborationType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASCollaborationType;
  result = [(ICASCollaborationType *)&v5 init];
  if (result)
  {
    result->_collaborationType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASCollaborationType *)self collaborationType];
  if ((v3 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF528[v3 - 1];
  }
}

@end