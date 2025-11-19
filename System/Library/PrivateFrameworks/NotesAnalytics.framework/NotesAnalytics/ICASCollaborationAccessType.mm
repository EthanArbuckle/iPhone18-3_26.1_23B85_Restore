@interface ICASCollaborationAccessType
- (ICASCollaborationAccessType)initWithCollaborationAccessType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASCollaborationAccessType

- (ICASCollaborationAccessType)initWithCollaborationAccessType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASCollaborationAccessType;
  result = [(ICASCollaborationAccessType *)&v5 init];
  if (result)
  {
    result->_collaborationAccessType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASCollaborationAccessType *)self collaborationAccessType];
  if ((v3 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF210[v3 - 1];
  }
}

@end