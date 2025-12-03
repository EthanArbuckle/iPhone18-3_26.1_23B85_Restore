@interface MSASInvitation
+ (id)MSASPInvitationFromProtocolDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MSASInvitation

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MSASInvitation);
  gUID = [(MSASSharingRelationship *)self GUID];
  [(MSASSharingRelationship *)v4 setGUID:gUID];

  albumGUID = [(MSASSharingRelationship *)self albumGUID];
  [(MSASSharingRelationship *)v4 setAlbumGUID:albumGUID];

  email = [(MSASSharingRelationship *)self email];
  [(MSASSharingRelationship *)v4 setEmail:email];

  firstName = [(MSASSharingRelationship *)self firstName];
  [(MSASSharingRelationship *)v4 setFirstName:firstName];

  lastName = [(MSASSharingRelationship *)self lastName];
  [(MSASSharingRelationship *)v4 setLastName:lastName];

  personID = [(MSASSharingRelationship *)self personID];
  [(MSASSharingRelationship *)v4 setPersonID:personID];

  [(MSASSharingRelationship *)v4 setState:[(MSASSharingRelationship *)self state]];
  return v4;
}

+ (id)MSASPInvitationFromProtocolDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(MSASInvitation);
  v5 = _setFieldsInSharingRelationship(v4, dictionaryCopy);

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