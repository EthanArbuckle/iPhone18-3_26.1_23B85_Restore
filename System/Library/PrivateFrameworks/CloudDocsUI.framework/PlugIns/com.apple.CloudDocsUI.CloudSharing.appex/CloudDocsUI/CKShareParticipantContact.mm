@interface CKShareParticipantContact
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation CKShareParticipantContact

- (unint64_t)hash
{
  participant = [(CKShareParticipantContact *)self participant];
  v3 = [participant hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    participant = [(CKShareParticipantContact *)self participant];
    participant2 = [equalCopy participant];
    v7 = [participant isEqual:participant2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  participant = [(CKShareParticipantContact *)self participant];
  [v4 setParticipant:participant];

  contact = [(CKShareParticipantContact *)self contact];
  [v4 setContact:contact];

  [v4 setFullyLookedUp:{-[CKShareParticipantContact fullyLookedUp](self, "fullyLookedUp")}];
  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  participant = [(CKShareParticipantContact *)self participant];
  userIdentity = [participant userIdentity];
  lookupInfo = [userIdentity lookupInfo];
  emailAddress = [lookupInfo emailAddress];
  phoneNumber = emailAddress;
  if (!emailAddress)
  {
    participant2 = [(CKShareParticipantContact *)self participant];
    userIdentity2 = [participant2 userIdentity];
    lookupInfo2 = [userIdentity2 lookupInfo];
    phoneNumber = [lookupInfo2 phoneNumber];
  }

  participant3 = [(CKShareParticipantContact *)self participant];
  participantID = [participant3 participantID];
  v11 = [NSString stringWithFormat:@"<%@: %p, %@: %@>", v3, self, phoneNumber, participantID];

  if (!emailAddress)
  {
  }

  return v11;
}

@end