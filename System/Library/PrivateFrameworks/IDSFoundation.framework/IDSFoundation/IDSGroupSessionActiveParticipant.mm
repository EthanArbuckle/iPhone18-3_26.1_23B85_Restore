@interface IDSGroupSessionActiveParticipant
- (IDSGroupSessionActiveParticipant)initWithDictionaryRepresentation:(id)representation;
- (IDSGroupSessionActiveParticipant)initWithGroupUUID:(id)d participantIdentifier:(unint64_t)identifier isKnown:(BOOL)known participantURI:(id)i pushToken:(id)token;
- (IDSGroupSessionActiveParticipant)initWithGroupUUID:(id)d participantIdentifier:(unint64_t)identifier isKnown:(BOOL)known participantURIObject:(id)object pushTokenObject:(id)tokenObject;
- (IDSPushToken)participantPushTokenObject;
- (NSData)participantPushToken;
- (id)debugDescription;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation IDSGroupSessionActiveParticipant

- (IDSGroupSessionActiveParticipant)initWithGroupUUID:(id)d participantIdentifier:(unint64_t)identifier isKnown:(BOOL)known participantURI:(id)i pushToken:(id)token
{
  knownCopy = known;
  dCopy = d;
  iCopy = i;
  tokenCopy = token;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {

    tokenCopy = 0;
  }

  if (iCopy)
  {
    v16 = [IDSURI URIWithPrefixedURI:iCopy];
    if (tokenCopy)
    {
LABEL_5:
      v17 = [IDSPushToken pushTokenWithData:tokenCopy];
      goto LABEL_8;
    }
  }

  else
  {
    v16 = 0;
    if (tokenCopy)
    {
      goto LABEL_5;
    }
  }

  v17 = 0;
LABEL_8:
  v18 = [(IDSGroupSessionActiveParticipant *)self initWithGroupUUID:dCopy participantIdentifier:identifier isKnown:knownCopy participantURIObject:v16 pushTokenObject:v17];
  if (tokenCopy)
  {
  }

  if (iCopy)
  {
  }

  if (v18)
  {
    v18->_givenNSNullToken = isKindOfClass & 1;
  }

  return v18;
}

- (IDSGroupSessionActiveParticipant)initWithGroupUUID:(id)d participantIdentifier:(unint64_t)identifier isKnown:(BOOL)known participantURIObject:(id)object pushTokenObject:(id)tokenObject
{
  dCopy = d;
  objectCopy = object;
  tokenObjectCopy = tokenObject;
  v19.receiver = self;
  v19.super_class = IDSGroupSessionActiveParticipant;
  v16 = [(IDSGroupSessionActiveParticipant *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_groupUUID, d);
    v17->_participantIdentifier = identifier;
    objc_storeStrong(&v17->_participantURIObject, object);
    v17->_isKnown = known;
    objc_storeStrong(&v17->_participantPushTokenObject, tokenObject);
  }

  return v17;
}

- (IDSGroupSessionActiveParticipant)initWithDictionaryRepresentation:(id)representation
{
  v4 = MEMORY[0x1E696AFB0];
  representationCopy = representation;
  v6 = [v4 alloc];
  v7 = [representationCopy objectForKeyedSubscript:@"IDSGroupSessionActiveParticipantGroupUUIDKey"];
  v8 = [v6 initWithUUIDString:v7];
  v9 = [representationCopy objectForKeyedSubscript:@"IDSGroupSessionActiveParticipantIdentifierKey"];
  unsignedLongLongValue = [v9 unsignedLongLongValue];
  v11 = [representationCopy objectForKeyedSubscript:@"IDSGroupSessionActiveParticipantIdentifierKey"];
  bOOLValue = [v11 BOOLValue];
  v13 = [representationCopy objectForKeyedSubscript:@"IDSGroupSessionActiveParticipantURIKey"];
  v14 = [representationCopy objectForKeyedSubscript:@"IDSGroupSessionActiveParticipantPushTokenKey"];

  v15 = [(IDSGroupSessionActiveParticipant *)self initWithGroupUUID:v8 participantIdentifier:unsignedLongLongValue isKnown:bOOLValue participantURI:v13 pushToken:v14];
  return v15;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  groupUUID = [(IDSGroupSessionActiveParticipant *)self groupUUID];
  uUIDString = [groupUUID UUIDString];
  [v3 setObject:uUIDString forKeyedSubscript:@"IDSGroupSessionActiveParticipantGroupUUIDKey"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSGroupSessionActiveParticipant participantIdentifier](self, "participantIdentifier")}];
  [v3 setObject:v6 forKeyedSubscript:@"IDSGroupSessionActiveParticipantIdentifierKey"];

  participantURI = [(IDSGroupSessionActiveParticipant *)self participantURI];
  [v3 setObject:participantURI forKeyedSubscript:@"IDSGroupSessionActiveParticipantURIKey"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSGroupSessionActiveParticipant isKnown](self, "isKnown")}];
  [v3 setObject:v8 forKeyedSubscript:@"IDSGroupSessionActiveParticipantIsKnown"];

  participantPushToken = [(IDSGroupSessionActiveParticipant *)self participantPushToken];
  [v3 setObject:participantPushToken forKeyedSubscript:@"IDSGroupSessionActiveParticipantPushTokenKey"];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  groupUUID = [(IDSGroupSessionActiveParticipant *)self groupUUID];
  participantIdentifier = [(IDSGroupSessionActiveParticipant *)self participantIdentifier];
  participantURIObject = self->_participantURIObject;
  participantPushTokenObject = self->_participantPushTokenObject;
  isKnown = [(IDSGroupSessionActiveParticipant *)self isKnown];
  v10 = @"NO";
  if (isKnown)
  {
    v10 = @"YES";
  }

  v11 = [v3 stringWithFormat:@"<%@: %p groupUUID: %@, participantIdentifier: %llu, participantURI: %@, participantPushToken: %@, isKnown: %@>", v4, self, groupUUID, participantIdentifier, participantURIObject, participantPushTokenObject, v10];

  return v11;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  groupUUID = [(IDSGroupSessionActiveParticipant *)self groupUUID];
  participantIdentifier = [(IDSGroupSessionActiveParticipant *)self participantIdentifier];
  v7 = [(IDSURI *)self->_participantURIObject debugDescription];
  v8 = [(IDSPushToken *)self->_participantPushTokenObject debugDescription];
  isKnown = [(IDSGroupSessionActiveParticipant *)self isKnown];
  v10 = @"NO";
  if (isKnown)
  {
    v10 = @"YES";
  }

  v11 = [v3 stringWithFormat:@"%@: %p {\n\tgroupUUID: %@\n\tparticipantIdentifier: %lu\n\tparticipantURI: %@\n\tparticipantPushToken: %@\n\tisKnown: %@}", v4, self, groupUUID, participantIdentifier, v7, v8, v10];

  return v11;
}

- (IDSPushToken)participantPushTokenObject
{
  if (self->_givenNSNullToken)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  else
  {
    null = self->_participantPushTokenObject;
  }

  return null;
}

- (NSData)participantPushToken
{
  if (self->_givenNSNullToken)
  {
    [MEMORY[0x1E695DFB0] null];
  }

  else
  {
    [(IDSPushToken *)self->_participantPushTokenObject rawToken];
  }
  v2 = ;

  return v2;
}

@end