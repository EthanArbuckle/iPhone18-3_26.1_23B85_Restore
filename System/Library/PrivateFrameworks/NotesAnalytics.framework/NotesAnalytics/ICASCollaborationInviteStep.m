@interface ICASCollaborationInviteStep
- (ICASCollaborationInviteStep)initWithCollaborationInviteStep:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASCollaborationInviteStep

- (ICASCollaborationInviteStep)initWithCollaborationInviteStep:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASCollaborationInviteStep;
  result = [(ICASCollaborationInviteStep *)&v5 init];
  if (result)
  {
    result->_collaborationInviteStep = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASCollaborationInviteStep *)self collaborationInviteStep];
  if ((v3 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF0E8[v3 - 1];
  }
}

@end