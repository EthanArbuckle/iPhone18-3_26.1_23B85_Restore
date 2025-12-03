@interface ICASCollaborationAccessType
- (ICASCollaborationAccessType)initWithCollaborationAccessType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASCollaborationAccessType

- (ICASCollaborationAccessType)initWithCollaborationAccessType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASCollaborationAccessType;
  result = [(ICASCollaborationAccessType *)&v5 init];
  if (result)
  {
    result->_collaborationAccessType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  collaborationAccessType = [(ICASCollaborationAccessType *)self collaborationAccessType];
  if ((collaborationAccessType - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF210[collaborationAccessType - 1];
  }
}

@end