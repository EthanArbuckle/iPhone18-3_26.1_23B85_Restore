@interface ICCKShareUnknownParticipant
- (ICCKShareUnknownParticipant)initWithParticipantUserID:(id)a3;
@end

@implementation ICCKShareUnknownParticipant

- (ICCKShareUnknownParticipant)initWithParticipantUserID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICCKShareUnknownParticipant;
  v6 = [(ICCKShareUnknownParticipant *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_participantUserID, a3);
  }

  return v7;
}

@end