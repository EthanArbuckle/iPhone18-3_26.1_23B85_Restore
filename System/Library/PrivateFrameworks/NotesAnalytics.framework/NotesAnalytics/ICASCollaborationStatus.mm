@interface ICASCollaborationStatus
- (ICASCollaborationStatus)initWithCollaborationStatus:(int64_t)status;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASCollaborationStatus

- (ICASCollaborationStatus)initWithCollaborationStatus:(int64_t)status
{
  v5.receiver = self;
  v5.super_class = ICASCollaborationStatus;
  result = [(ICASCollaborationStatus *)&v5 init];
  if (result)
  {
    result->_collaborationStatus = status;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  collaborationStatus = [(ICASCollaborationStatus *)self collaborationStatus];
  if ((collaborationStatus - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF8D8[collaborationStatus - 1];
  }
}

@end