@interface ICASCollaborationAccessReason
- (ICASCollaborationAccessReason)initWithCollaborationAccessReason:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASCollaborationAccessReason

- (ICASCollaborationAccessReason)initWithCollaborationAccessReason:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASCollaborationAccessReason;
  result = [(ICASCollaborationAccessReason *)&v5 init];
  if (result)
  {
    result->_collaborationAccessReason = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASCollaborationAccessReason *)self collaborationAccessReason];
  if ((v3 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF4F8[v3 - 1];
  }
}

@end