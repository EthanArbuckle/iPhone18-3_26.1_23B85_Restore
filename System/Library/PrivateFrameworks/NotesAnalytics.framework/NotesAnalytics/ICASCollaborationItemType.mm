@interface ICASCollaborationItemType
- (ICASCollaborationItemType)initWithCollaborationItemType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASCollaborationItemType

- (ICASCollaborationItemType)initWithCollaborationItemType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASCollaborationItemType;
  result = [(ICASCollaborationItemType *)&v5 init];
  if (result)
  {
    result->_collaborationItemType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  collaborationItemType = [(ICASCollaborationItemType *)self collaborationItemType];
  v4 = @"unknown";
  if (collaborationItemType == 1)
  {
    v4 = @"note";
  }

  if (collaborationItemType == 2)
  {
    return @"folder";
  }

  else
  {
    return v4;
  }
}

@end