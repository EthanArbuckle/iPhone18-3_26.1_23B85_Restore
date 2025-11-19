@interface ICASCollaborationActionType
- (ICASCollaborationActionType)initWithCollaborationActionType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASCollaborationActionType

- (ICASCollaborationActionType)initWithCollaborationActionType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASCollaborationActionType;
  result = [(ICASCollaborationActionType *)&v5 init];
  if (result)
  {
    result->_collaborationActionType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASCollaborationActionType *)self collaborationActionType];
  v4 = @"unknown";
  if (v3 == 1)
  {
    v4 = @"invite";
  }

  if (v3 == 2)
  {
    return @"uncollaborate";
  }

  else
  {
    return v4;
  }
}

@end