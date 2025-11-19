@interface CKShareParticipantContact
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation CKShareParticipantContact

- (unint64_t)hash
{
  v2 = [(CKShareParticipantContact *)self participant];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CKShareParticipantContact *)self participant];
    v6 = [v4 participant];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(CKShareParticipantContact *)self participant];
  [v4 setParticipant:v5];

  v6 = [(CKShareParticipantContact *)self contact];
  [v4 setContact:v6];

  [v4 setFullyLookedUp:{-[CKShareParticipantContact fullyLookedUp](self, "fullyLookedUp")}];
  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(CKShareParticipantContact *)self participant];
  v5 = [v4 userIdentity];
  v6 = [v5 lookupInfo];
  v7 = [v6 emailAddress];
  v8 = v7;
  if (!v7)
  {
    v15 = [(CKShareParticipantContact *)self participant];
    v14 = [v15 userIdentity];
    v13 = [v14 lookupInfo];
    v8 = [v13 phoneNumber];
  }

  v9 = [(CKShareParticipantContact *)self participant];
  v10 = [v9 participantID];
  v11 = [NSString stringWithFormat:@"<%@: %p, %@: %@>", v3, self, v8, v10];

  if (!v7)
  {
  }

  return v11;
}

@end