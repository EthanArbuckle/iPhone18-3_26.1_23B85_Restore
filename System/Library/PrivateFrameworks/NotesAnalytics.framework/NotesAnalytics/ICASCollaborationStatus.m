@interface ICASCollaborationStatus
- (ICASCollaborationStatus)initWithCollaborationStatus:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASCollaborationStatus

- (ICASCollaborationStatus)initWithCollaborationStatus:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASCollaborationStatus;
  result = [(ICASCollaborationStatus *)&v5 init];
  if (result)
  {
    result->_collaborationStatus = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASCollaborationStatus *)self collaborationStatus];
  if ((v3 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF8D8[v3 - 1];
  }
}

@end