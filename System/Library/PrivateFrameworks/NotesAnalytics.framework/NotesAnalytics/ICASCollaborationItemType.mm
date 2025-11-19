@interface ICASCollaborationItemType
- (ICASCollaborationItemType)initWithCollaborationItemType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASCollaborationItemType

- (ICASCollaborationItemType)initWithCollaborationItemType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASCollaborationItemType;
  result = [(ICASCollaborationItemType *)&v5 init];
  if (result)
  {
    result->_collaborationItemType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASCollaborationItemType *)self collaborationItemType];
  v4 = @"unknown";
  if (v3 == 1)
  {
    v4 = @"note";
  }

  if (v3 == 2)
  {
    return @"folder";
  }

  else
  {
    return v4;
  }
}

@end