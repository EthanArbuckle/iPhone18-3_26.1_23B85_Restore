@interface ICCKShareUnknownParticipant
- (ICCKShareUnknownParticipant)initWithParticipantUserID:(id)d;
@end

@implementation ICCKShareUnknownParticipant

- (ICCKShareUnknownParticipant)initWithParticipantUserID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ICCKShareUnknownParticipant;
  v6 = [(ICCKShareUnknownParticipant *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_participantUserID, d);
  }

  return v7;
}

@end