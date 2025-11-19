@interface MSASInvitation
+ (id)MSASPInvitationFromProtocolDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MSASInvitation

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MSASInvitation);
  v5 = [(MSASSharingRelationship *)self GUID];
  [(MSASSharingRelationship *)v4 setGUID:v5];

  v6 = [(MSASSharingRelationship *)self albumGUID];
  [(MSASSharingRelationship *)v4 setAlbumGUID:v6];

  v7 = [(MSASSharingRelationship *)self email];
  [(MSASSharingRelationship *)v4 setEmail:v7];

  v8 = [(MSASSharingRelationship *)self firstName];
  [(MSASSharingRelationship *)v4 setFirstName:v8];

  v9 = [(MSASSharingRelationship *)self lastName];
  [(MSASSharingRelationship *)v4 setLastName:v9];

  v10 = [(MSASSharingRelationship *)self personID];
  [(MSASSharingRelationship *)v4 setPersonID:v10];

  [(MSASSharingRelationship *)v4 setState:[(MSASSharingRelationship *)self state]];
  return v4;
}

+ (id)MSASPInvitationFromProtocolDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MSASInvitation);
  v5 = _setFieldsInSharingRelationship(v4, v3);

  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

@end