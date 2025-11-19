@interface IDSGroupSessionActiveParticipant
- (IDSGroupSessionActiveParticipant)initWithDictionaryRepresentation:(id)a3;
- (IDSGroupSessionActiveParticipant)initWithGroupUUID:(id)a3 participantIdentifier:(unint64_t)a4 isKnown:(BOOL)a5 participantURI:(id)a6 pushToken:(id)a7;
- (IDSGroupSessionActiveParticipant)initWithGroupUUID:(id)a3 participantIdentifier:(unint64_t)a4 isKnown:(BOOL)a5 participantURIObject:(id)a6 pushTokenObject:(id)a7;
- (IDSPushToken)participantPushTokenObject;
- (NSData)participantPushToken;
- (id)debugDescription;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation IDSGroupSessionActiveParticipant

- (IDSGroupSessionActiveParticipant)initWithGroupUUID:(id)a3 participantIdentifier:(unint64_t)a4 isKnown:(BOOL)a5 participantURI:(id)a6 pushToken:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a6;
  v14 = a7;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {

    v14 = 0;
  }

  if (v13)
  {
    v16 = [IDSURI URIWithPrefixedURI:v13];
    if (v14)
    {
LABEL_5:
      v17 = [IDSPushToken pushTokenWithData:v14];
      goto LABEL_8;
    }
  }

  else
  {
    v16 = 0;
    if (v14)
    {
      goto LABEL_5;
    }
  }

  v17 = 0;
LABEL_8:
  v18 = [(IDSGroupSessionActiveParticipant *)self initWithGroupUUID:v12 participantIdentifier:a4 isKnown:v9 participantURIObject:v16 pushTokenObject:v17];
  if (v14)
  {
  }

  if (v13)
  {
  }

  if (v18)
  {
    v18->_givenNSNullToken = isKindOfClass & 1;
  }

  return v18;
}

- (IDSGroupSessionActiveParticipant)initWithGroupUUID:(id)a3 participantIdentifier:(unint64_t)a4 isKnown:(BOOL)a5 participantURIObject:(id)a6 pushTokenObject:(id)a7
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = IDSGroupSessionActiveParticipant;
  v16 = [(IDSGroupSessionActiveParticipant *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_groupUUID, a3);
    v17->_participantIdentifier = a4;
    objc_storeStrong(&v17->_participantURIObject, a6);
    v17->_isKnown = a5;
    objc_storeStrong(&v17->_participantPushTokenObject, a7);
  }

  return v17;
}

- (IDSGroupSessionActiveParticipant)initWithDictionaryRepresentation:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 objectForKeyedSubscript:@"IDSGroupSessionActiveParticipantGroupUUIDKey"];
  v8 = [v6 initWithUUIDString:v7];
  v9 = [v5 objectForKeyedSubscript:@"IDSGroupSessionActiveParticipantIdentifierKey"];
  v10 = [v9 unsignedLongLongValue];
  v11 = [v5 objectForKeyedSubscript:@"IDSGroupSessionActiveParticipantIdentifierKey"];
  v12 = [v11 BOOLValue];
  v13 = [v5 objectForKeyedSubscript:@"IDSGroupSessionActiveParticipantURIKey"];
  v14 = [v5 objectForKeyedSubscript:@"IDSGroupSessionActiveParticipantPushTokenKey"];

  v15 = [(IDSGroupSessionActiveParticipant *)self initWithGroupUUID:v8 participantIdentifier:v10 isKnown:v12 participantURI:v13 pushToken:v14];
  return v15;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IDSGroupSessionActiveParticipant *)self groupUUID];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKeyedSubscript:@"IDSGroupSessionActiveParticipantGroupUUIDKey"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSGroupSessionActiveParticipant participantIdentifier](self, "participantIdentifier")}];
  [v3 setObject:v6 forKeyedSubscript:@"IDSGroupSessionActiveParticipantIdentifierKey"];

  v7 = [(IDSGroupSessionActiveParticipant *)self participantURI];
  [v3 setObject:v7 forKeyedSubscript:@"IDSGroupSessionActiveParticipantURIKey"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSGroupSessionActiveParticipant isKnown](self, "isKnown")}];
  [v3 setObject:v8 forKeyedSubscript:@"IDSGroupSessionActiveParticipantIsKnown"];

  v9 = [(IDSGroupSessionActiveParticipant *)self participantPushToken];
  [v3 setObject:v9 forKeyedSubscript:@"IDSGroupSessionActiveParticipantPushTokenKey"];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSGroupSessionActiveParticipant *)self groupUUID];
  v6 = [(IDSGroupSessionActiveParticipant *)self participantIdentifier];
  participantURIObject = self->_participantURIObject;
  participantPushTokenObject = self->_participantPushTokenObject;
  v9 = [(IDSGroupSessionActiveParticipant *)self isKnown];
  v10 = @"NO";
  if (v9)
  {
    v10 = @"YES";
  }

  v11 = [v3 stringWithFormat:@"<%@: %p groupUUID: %@, participantIdentifier: %llu, participantURI: %@, participantPushToken: %@, isKnown: %@>", v4, self, v5, v6, participantURIObject, participantPushTokenObject, v10];

  return v11;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSGroupSessionActiveParticipant *)self groupUUID];
  v6 = [(IDSGroupSessionActiveParticipant *)self participantIdentifier];
  v7 = [(IDSURI *)self->_participantURIObject debugDescription];
  v8 = [(IDSPushToken *)self->_participantPushTokenObject debugDescription];
  v9 = [(IDSGroupSessionActiveParticipant *)self isKnown];
  v10 = @"NO";
  if (v9)
  {
    v10 = @"YES";
  }

  v11 = [v3 stringWithFormat:@"%@: %p {\n\tgroupUUID: %@\n\tparticipantIdentifier: %lu\n\tparticipantURI: %@\n\tparticipantPushToken: %@\n\tisKnown: %@}", v4, self, v5, v6, v7, v8, v10];

  return v11;
}

- (IDSPushToken)participantPushTokenObject
{
  if (self->_givenNSNullToken)
  {
    v2 = [MEMORY[0x1E695DFB0] null];
  }

  else
  {
    v2 = self->_participantPushTokenObject;
  }

  return v2;
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