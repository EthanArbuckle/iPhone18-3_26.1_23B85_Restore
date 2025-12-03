@interface ICASCollaborationAccessReason
- (ICASCollaborationAccessReason)initWithCollaborationAccessReason:(int64_t)reason;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASCollaborationAccessReason

- (ICASCollaborationAccessReason)initWithCollaborationAccessReason:(int64_t)reason
{
  v5.receiver = self;
  v5.super_class = ICASCollaborationAccessReason;
  result = [(ICASCollaborationAccessReason *)&v5 init];
  if (result)
  {
    result->_collaborationAccessReason = reason;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  collaborationAccessReason = [(ICASCollaborationAccessReason *)self collaborationAccessReason];
  if ((collaborationAccessReason - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF4F8[collaborationAccessReason - 1];
  }
}

@end