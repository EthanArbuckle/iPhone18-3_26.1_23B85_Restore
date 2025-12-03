@interface ICASCollaborationType
- (ICASCollaborationType)initWithCollaborationType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASCollaborationType

- (ICASCollaborationType)initWithCollaborationType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASCollaborationType;
  result = [(ICASCollaborationType *)&v5 init];
  if (result)
  {
    result->_collaborationType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  collaborationType = [(ICASCollaborationType *)self collaborationType];
  if ((collaborationType - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF528[collaborationType - 1];
  }
}

@end