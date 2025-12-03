@interface ICASCollaborationActionType
- (ICASCollaborationActionType)initWithCollaborationActionType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASCollaborationActionType

- (ICASCollaborationActionType)initWithCollaborationActionType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASCollaborationActionType;
  result = [(ICASCollaborationActionType *)&v5 init];
  if (result)
  {
    result->_collaborationActionType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  collaborationActionType = [(ICASCollaborationActionType *)self collaborationActionType];
  v4 = @"unknown";
  if (collaborationActionType == 1)
  {
    v4 = @"invite";
  }

  if (collaborationActionType == 2)
  {
    return @"uncollaborate";
  }

  else
  {
    return v4;
  }
}

@end