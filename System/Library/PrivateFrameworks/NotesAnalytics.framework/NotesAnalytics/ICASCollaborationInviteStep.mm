@interface ICASCollaborationInviteStep
- (ICASCollaborationInviteStep)initWithCollaborationInviteStep:(int64_t)step;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASCollaborationInviteStep

- (ICASCollaborationInviteStep)initWithCollaborationInviteStep:(int64_t)step
{
  v5.receiver = self;
  v5.super_class = ICASCollaborationInviteStep;
  result = [(ICASCollaborationInviteStep *)&v5 init];
  if (result)
  {
    result->_collaborationInviteStep = step;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  collaborationInviteStep = [(ICASCollaborationInviteStep *)self collaborationInviteStep];
  if ((collaborationInviteStep - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF0E8[collaborationInviteStep - 1];
  }
}

@end