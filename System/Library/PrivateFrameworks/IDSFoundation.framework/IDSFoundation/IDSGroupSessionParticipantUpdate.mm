@interface IDSGroupSessionParticipantUpdate
- (IDSGroupSessionParticipantUpdate)initWithDictionaryRepresentation:(id)a3;
- (IDSGroupSessionParticipantUpdate)initWithGroupUUID:(id)a3 isInitiator:(BOOL)a4 participantIdentifier:(unint64_t)a5 participantDestinationID:(id)a6 participantUpdateType:(unint64_t)a7 participantUpdateSubtype:(unint64_t)a8 fromServer:(BOOL)a9 serverDate:(id)a10 participantData:(id)a11 clientContextData:(id)a12 members:(id)a13 participantIDs:(id)a14 relaySessionID:(id)a15;
- (IDSGroupSessionParticipantUpdate)initWithGroupUUID:(id)a3 isInitiator:(BOOL)a4 participantIdentifier:(unint64_t)a5 participantDestinationURI:(id)a6 participantUpdateType:(unint64_t)a7 participantUpdateSubtype:(unint64_t)a8 fromServer:(BOOL)a9 serverDate:(id)a10 participantData:(id)a11 clientContextData:(id)a12 members:(id)a13 participantIDs:(id)a14 relaySessionID:(id)a15;
- (id)debugDescription;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation IDSGroupSessionParticipantUpdate

- (IDSGroupSessionParticipantUpdate)initWithGroupUUID:(id)a3 isInitiator:(BOOL)a4 participantIdentifier:(unint64_t)a5 participantDestinationID:(id)a6 participantUpdateType:(unint64_t)a7 participantUpdateSubtype:(unint64_t)a8 fromServer:(BOOL)a9 serverDate:(id)a10 participantData:(id)a11 clientContextData:(id)a12 members:(id)a13 participantIDs:(id)a14 relaySessionID:(id)a15
{
  v29 = a4;
  v17 = a15;
  v18 = a14;
  v19 = a13;
  v20 = a12;
  v21 = a11;
  v22 = a10;
  v23 = a3;
  v24 = [IDSURI URIWithPrefixedURI:a6];
  LOBYTE(v27) = a9;
  v25 = [(IDSGroupSessionParticipantUpdate *)self initWithGroupUUID:v23 isInitiator:v29 participantIdentifier:a5 participantDestinationURI:v24 participantUpdateType:a7 participantUpdateSubtype:a8 fromServer:v27 serverDate:v22 participantData:v21 clientContextData:v20 members:v19 participantIDs:v18 relaySessionID:v17];

  return v25;
}

- (IDSGroupSessionParticipantUpdate)initWithGroupUUID:(id)a3 isInitiator:(BOOL)a4 participantIdentifier:(unint64_t)a5 participantDestinationURI:(id)a6 participantUpdateType:(unint64_t)a7 participantUpdateSubtype:(unint64_t)a8 fromServer:(BOOL)a9 serverDate:(id)a10 participantData:(id)a11 clientContextData:(id)a12 members:(id)a13 participantIDs:(id)a14 relaySessionID:(id)a15
{
  v31 = a3;
  v28 = a6;
  v18 = a6;
  v19 = a10;
  v33 = a11;
  v32 = a12;
  v20 = a13;
  v21 = a14;
  v22 = a15;
  v34.receiver = self;
  v34.super_class = IDSGroupSessionParticipantUpdate;
  v23 = [(IDSGroupSessionParticipantUpdate *)&v34 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_groupUUID, a3);
    v24->_isInitiator = a4;
    v24->_participantIdentifier = a5;
    objc_storeStrong(&v24->_participantDestinationURI, v28);
    v24->_participantUpdateType = a7;
    v24->_participantUpdateSubtype = a8;
    v24->_fromServer = a9;
    objc_storeStrong(&v24->_serverDate, a10);
    objc_storeStrong(&v24->_participantData, a11);
    objc_storeStrong(&v24->_clientContextData, a12);
    objc_storeStrong(&v24->_members, a13);
    objc_storeStrong(&v24->_participantIDs, a14);
    objc_storeStrong(&v24->_relaySessionID, a15);
  }

  return v24;
}

- (IDSGroupSessionParticipantUpdate)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"IDSGroupSessionParticipantUpdateMembersKey"];
  v31 = v5;
  if (v5)
  {
    v30 = [v5 __imArrayByApplyingBlock:&unk_1F1AAA100];
  }

  else
  {
    v30 = 0;
  }

  v6 = objc_alloc(MEMORY[0x1E696AFB0]);
  v29 = [v4 objectForKeyedSubscript:@"IDSGroupSessionParticipantUpdateGroupUUIDKey"];
  v25 = [v6 initWithUUIDString:v29];
  v28 = [v4 objectForKeyedSubscript:@"IDSGroupSessionParticipantUpdateIsInitiatorKey"];
  v23 = [v28 BOOLValue];
  v27 = [v4 objectForKeyedSubscript:@"IDSGroupSessionParticipantUpdateParticipantIdentifierKey"];
  v21 = [v27 unsignedLongLongValue];
  v20 = [v4 objectForKeyedSubscript:@"IDSGroupSessionParticipantUpdateParticipantDestinationIDKey"];
  v26 = [v4 objectForKeyedSubscript:@"IDSGroupSessionParticipantUpdateMemberUpdateTypeKey"];
  v19 = [v26 unsignedIntegerValue];
  v22 = [v4 objectForKeyedSubscript:@"IDSGroupSessionParticipantUpdateMemberUpdateSubtypeKey"];
  v18 = [v22 unsignedIntegerValue];
  v7 = [v4 objectForKeyedSubscript:@"IDSGroupSessionParticipantUpdateFromServerKey"];
  v8 = [v7 BOOLValue];
  v9 = [v4 objectForKeyedSubscript:@"IDSGroupSessionParticipantUpdateServerDateKey"];
  v10 = [v4 objectForKeyedSubscript:@"IDSGroupSessionParticipantUpdateParticipantDataKey"];
  v11 = [v4 objectForKeyedSubscript:@"IDSGroupSessionParticipantUpdateClientContextDataKey"];
  v12 = [v4 objectForKeyedSubscript:@"IDSGroupSessionParticipantUpdateParticipantIDsKey"];
  v13 = objc_alloc(MEMORY[0x1E696AFB0]);
  v14 = [v4 objectForKeyedSubscript:@"IDSGroupSessionParticipantUpdateRelaySessionUUIDKey"];

  v15 = [v13 initWithUUIDString:v14];
  LOBYTE(v17) = v8;
  v24 = [(IDSGroupSessionParticipantUpdate *)self initWithGroupUUID:v25 isInitiator:v23 participantIdentifier:v21 participantDestinationID:v20 participantUpdateType:v19 participantUpdateSubtype:v18 fromServer:v17 serverDate:v9 participantData:v10 clientContextData:v11 members:v30 participantIDs:v12 relaySessionID:v15];

  return v24;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IDSGroupSessionParticipantUpdate *)self groupUUID];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKeyedSubscript:@"IDSGroupSessionParticipantUpdateGroupUUIDKey"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSGroupSessionParticipantUpdate isInitiator](self, "isInitiator")}];
  [v3 setObject:v6 forKeyedSubscript:@"IDSGroupSessionParticipantUpdateIsInitiatorKey"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSGroupSessionParticipantUpdate participantIdentifier](self, "participantIdentifier")}];
  [v3 setObject:v7 forKeyedSubscript:@"IDSGroupSessionParticipantUpdateParticipantIdentifierKey"];

  v8 = [(IDSGroupSessionParticipantUpdate *)self participantDestinationID];
  [v3 setObject:v8 forKeyedSubscript:@"IDSGroupSessionParticipantUpdateParticipantDestinationIDKey"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IDSGroupSessionParticipantUpdate participantUpdateType](self, "participantUpdateType")}];
  [v3 setObject:v9 forKeyedSubscript:@"IDSGroupSessionParticipantUpdateMemberUpdateTypeKey"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IDSGroupSessionParticipantUpdate participantUpdateSubtype](self, "participantUpdateSubtype")}];
  [v3 setObject:v10 forKeyedSubscript:@"IDSGroupSessionParticipantUpdateMemberUpdateSubtypeKey"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSGroupSessionParticipantUpdate fromServer](self, "fromServer")}];
  [v3 setObject:v11 forKeyedSubscript:@"IDSGroupSessionParticipantUpdateFromServerKey"];

  v12 = [(IDSGroupSessionParticipantUpdate *)self serverDate];
  [v3 setObject:v12 forKeyedSubscript:@"IDSGroupSessionParticipantUpdateServerDateKey"];

  v13 = [(IDSGroupSessionParticipantUpdate *)self participantData];
  [v3 setObject:v13 forKeyedSubscript:@"IDSGroupSessionParticipantUpdateParticipantDataKey"];

  v14 = [(IDSGroupSessionParticipantUpdate *)self clientContextData];
  [v3 setObject:v14 forKeyedSubscript:@"IDSGroupSessionParticipantUpdateClientContextDataKey"];

  v15 = [(IDSGroupSessionParticipantUpdate *)self members];
  v16 = [v15 __imArrayByApplyingBlock:&unk_1F1AAA120];
  [v3 setObject:v16 forKeyedSubscript:@"IDSGroupSessionParticipantUpdateMembersKey"];

  v17 = [(IDSGroupSessionParticipantUpdate *)self participantIDs];
  [v3 setObject:v17 forKeyedSubscript:@"IDSGroupSessionParticipantUpdateParticipantIDsKey"];

  v18 = [(IDSGroupSessionParticipantUpdate *)self relaySessionID];
  v19 = [v18 UUIDString];
  [v3 setObject:v19 forKeyedSubscript:@"IDSGroupSessionParticipantUpdateRelaySessionUUIDKey"];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSGroupSessionParticipantUpdate *)self groupUUID];
  if ([(IDSGroupSessionParticipantUpdate *)self isInitiator])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [(IDSGroupSessionParticipantUpdate *)self participantIdentifier];
  v8 = [(IDSGroupSessionParticipantUpdate *)self participantDestinationURI];
  v9 = [v3 stringWithFormat:@"<%@: %p groupUUID: %@, isInitiator: %@, participantIdentifier: %llu, participantDestinationID: %@, participantUpdateType: %lu, participantUpdateSubype: %lu>", v4, self, v5, v6, v7, v8, -[IDSGroupSessionParticipantUpdate participantUpdateType](self, "participantUpdateType"), -[IDSGroupSessionParticipantUpdate participantUpdateSubtype](self, "participantUpdateSubtype")];

  return v9;
}

- (id)debugDescription
{
  v21 = MEMORY[0x1E696AEC0];
  v20 = objc_opt_class();
  v19 = [(IDSGroupSessionParticipantUpdate *)self groupUUID];
  v18 = [(IDSGroupSessionParticipantUpdate *)self relaySessionID];
  v3 = [(IDSGroupSessionParticipantUpdate *)self isInitiator];
  v4 = @"NO";
  if (v3)
  {
    v4 = @"YES";
  }

  v17 = v4;
  v16 = [(IDSGroupSessionParticipantUpdate *)self participantIdentifier];
  v5 = [(IDSGroupSessionParticipantUpdate *)self participantDestinationURI];
  v6 = [(IDSGroupSessionParticipantUpdate *)self participantUpdateType];
  v7 = [(IDSGroupSessionParticipantUpdate *)self participantUpdateSubtype];
  v8 = [(IDSGroupSessionParticipantUpdate *)self fromServer];
  v9 = [(IDSGroupSessionParticipantUpdate *)self serverDate];
  v10 = [(IDSGroupSessionParticipantUpdate *)self participantData];
  v11 = [(IDSGroupSessionParticipantUpdate *)self clientContextData];
  v12 = [(IDSGroupSessionParticipantUpdate *)self members];
  v13 = [(IDSGroupSessionParticipantUpdate *)self participantIDs];
  v14 = [v21 stringWithFormat:@"%@: %p {\n\tgroupUUID: %@ (relaySessionID: %@)\n\tIsInitiator: %@\n\tparticipantIdentifier: %llu\n\tparticipantDestinationID: %@\n\tparticipantUpdateType: %lu\n\tparticipantUpdateSubtype: %lu\n\tfromServer: %d\n\tserverDate: %@\n\tparticipantData: %@\n\tclientContextData: %@\n\tmembers: %@\n\tparticipantIDs: %@\n}", v20, self, v19, v18, v17, v16, v5, v6, v7, v8, v9, v10, v11, v12, v13];

  return v14;
}

@end