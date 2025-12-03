@interface IDSGroupSessionParticipantUpdate
- (IDSGroupSessionParticipantUpdate)initWithDictionaryRepresentation:(id)representation;
- (IDSGroupSessionParticipantUpdate)initWithGroupUUID:(id)d isInitiator:(BOOL)initiator participantIdentifier:(unint64_t)identifier participantDestinationID:(id)iD participantUpdateType:(unint64_t)type participantUpdateSubtype:(unint64_t)subtype fromServer:(BOOL)server serverDate:(id)self0 participantData:(id)self1 clientContextData:(id)self2 members:(id)self3 participantIDs:(id)self4 relaySessionID:(id)self5;
- (IDSGroupSessionParticipantUpdate)initWithGroupUUID:(id)d isInitiator:(BOOL)initiator participantIdentifier:(unint64_t)identifier participantDestinationURI:(id)i participantUpdateType:(unint64_t)type participantUpdateSubtype:(unint64_t)subtype fromServer:(BOOL)server serverDate:(id)self0 participantData:(id)self1 clientContextData:(id)self2 members:(id)self3 participantIDs:(id)self4 relaySessionID:(id)self5;
- (id)debugDescription;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation IDSGroupSessionParticipantUpdate

- (IDSGroupSessionParticipantUpdate)initWithGroupUUID:(id)d isInitiator:(BOOL)initiator participantIdentifier:(unint64_t)identifier participantDestinationID:(id)iD participantUpdateType:(unint64_t)type participantUpdateSubtype:(unint64_t)subtype fromServer:(BOOL)server serverDate:(id)self0 participantData:(id)self1 clientContextData:(id)self2 members:(id)self3 participantIDs:(id)self4 relaySessionID:(id)self5
{
  initiatorCopy = initiator;
  sessionIDCopy = sessionID;
  dsCopy = ds;
  membersCopy = members;
  contextDataCopy = contextData;
  dataCopy = data;
  dateCopy = date;
  dCopy = d;
  v24 = [IDSURI URIWithPrefixedURI:iD];
  LOBYTE(v27) = server;
  v25 = [(IDSGroupSessionParticipantUpdate *)self initWithGroupUUID:dCopy isInitiator:initiatorCopy participantIdentifier:identifier participantDestinationURI:v24 participantUpdateType:type participantUpdateSubtype:subtype fromServer:v27 serverDate:dateCopy participantData:dataCopy clientContextData:contextDataCopy members:membersCopy participantIDs:dsCopy relaySessionID:sessionIDCopy];

  return v25;
}

- (IDSGroupSessionParticipantUpdate)initWithGroupUUID:(id)d isInitiator:(BOOL)initiator participantIdentifier:(unint64_t)identifier participantDestinationURI:(id)i participantUpdateType:(unint64_t)type participantUpdateSubtype:(unint64_t)subtype fromServer:(BOOL)server serverDate:(id)self0 participantData:(id)self1 clientContextData:(id)self2 members:(id)self3 participantIDs:(id)self4 relaySessionID:(id)self5
{
  dCopy = d;
  iCopy = i;
  iCopy2 = i;
  dateCopy = date;
  dataCopy = data;
  contextDataCopy = contextData;
  membersCopy = members;
  dsCopy = ds;
  iDCopy = iD;
  v34.receiver = self;
  v34.super_class = IDSGroupSessionParticipantUpdate;
  v23 = [(IDSGroupSessionParticipantUpdate *)&v34 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_groupUUID, d);
    v24->_isInitiator = initiator;
    v24->_participantIdentifier = identifier;
    objc_storeStrong(&v24->_participantDestinationURI, iCopy);
    v24->_participantUpdateType = type;
    v24->_participantUpdateSubtype = subtype;
    v24->_fromServer = server;
    objc_storeStrong(&v24->_serverDate, date);
    objc_storeStrong(&v24->_participantData, data);
    objc_storeStrong(&v24->_clientContextData, contextData);
    objc_storeStrong(&v24->_members, members);
    objc_storeStrong(&v24->_participantIDs, ds);
    objc_storeStrong(&v24->_relaySessionID, iD);
  }

  return v24;
}

- (IDSGroupSessionParticipantUpdate)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"IDSGroupSessionParticipantUpdateMembersKey"];
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
  v29 = [representationCopy objectForKeyedSubscript:@"IDSGroupSessionParticipantUpdateGroupUUIDKey"];
  v25 = [v6 initWithUUIDString:v29];
  v28 = [representationCopy objectForKeyedSubscript:@"IDSGroupSessionParticipantUpdateIsInitiatorKey"];
  bOOLValue = [v28 BOOLValue];
  v27 = [representationCopy objectForKeyedSubscript:@"IDSGroupSessionParticipantUpdateParticipantIdentifierKey"];
  unsignedLongLongValue = [v27 unsignedLongLongValue];
  v20 = [representationCopy objectForKeyedSubscript:@"IDSGroupSessionParticipantUpdateParticipantDestinationIDKey"];
  v26 = [representationCopy objectForKeyedSubscript:@"IDSGroupSessionParticipantUpdateMemberUpdateTypeKey"];
  unsignedIntegerValue = [v26 unsignedIntegerValue];
  v22 = [representationCopy objectForKeyedSubscript:@"IDSGroupSessionParticipantUpdateMemberUpdateSubtypeKey"];
  unsignedIntegerValue2 = [v22 unsignedIntegerValue];
  v7 = [representationCopy objectForKeyedSubscript:@"IDSGroupSessionParticipantUpdateFromServerKey"];
  bOOLValue2 = [v7 BOOLValue];
  v9 = [representationCopy objectForKeyedSubscript:@"IDSGroupSessionParticipantUpdateServerDateKey"];
  v10 = [representationCopy objectForKeyedSubscript:@"IDSGroupSessionParticipantUpdateParticipantDataKey"];
  v11 = [representationCopy objectForKeyedSubscript:@"IDSGroupSessionParticipantUpdateClientContextDataKey"];
  v12 = [representationCopy objectForKeyedSubscript:@"IDSGroupSessionParticipantUpdateParticipantIDsKey"];
  v13 = objc_alloc(MEMORY[0x1E696AFB0]);
  v14 = [representationCopy objectForKeyedSubscript:@"IDSGroupSessionParticipantUpdateRelaySessionUUIDKey"];

  v15 = [v13 initWithUUIDString:v14];
  LOBYTE(v17) = bOOLValue2;
  v24 = [(IDSGroupSessionParticipantUpdate *)self initWithGroupUUID:v25 isInitiator:bOOLValue participantIdentifier:unsignedLongLongValue participantDestinationID:v20 participantUpdateType:unsignedIntegerValue participantUpdateSubtype:unsignedIntegerValue2 fromServer:v17 serverDate:v9 participantData:v10 clientContextData:v11 members:v30 participantIDs:v12 relaySessionID:v15];

  return v24;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  groupUUID = [(IDSGroupSessionParticipantUpdate *)self groupUUID];
  uUIDString = [groupUUID UUIDString];
  [v3 setObject:uUIDString forKeyedSubscript:@"IDSGroupSessionParticipantUpdateGroupUUIDKey"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSGroupSessionParticipantUpdate isInitiator](self, "isInitiator")}];
  [v3 setObject:v6 forKeyedSubscript:@"IDSGroupSessionParticipantUpdateIsInitiatorKey"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSGroupSessionParticipantUpdate participantIdentifier](self, "participantIdentifier")}];
  [v3 setObject:v7 forKeyedSubscript:@"IDSGroupSessionParticipantUpdateParticipantIdentifierKey"];

  participantDestinationID = [(IDSGroupSessionParticipantUpdate *)self participantDestinationID];
  [v3 setObject:participantDestinationID forKeyedSubscript:@"IDSGroupSessionParticipantUpdateParticipantDestinationIDKey"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IDSGroupSessionParticipantUpdate participantUpdateType](self, "participantUpdateType")}];
  [v3 setObject:v9 forKeyedSubscript:@"IDSGroupSessionParticipantUpdateMemberUpdateTypeKey"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IDSGroupSessionParticipantUpdate participantUpdateSubtype](self, "participantUpdateSubtype")}];
  [v3 setObject:v10 forKeyedSubscript:@"IDSGroupSessionParticipantUpdateMemberUpdateSubtypeKey"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSGroupSessionParticipantUpdate fromServer](self, "fromServer")}];
  [v3 setObject:v11 forKeyedSubscript:@"IDSGroupSessionParticipantUpdateFromServerKey"];

  serverDate = [(IDSGroupSessionParticipantUpdate *)self serverDate];
  [v3 setObject:serverDate forKeyedSubscript:@"IDSGroupSessionParticipantUpdateServerDateKey"];

  participantData = [(IDSGroupSessionParticipantUpdate *)self participantData];
  [v3 setObject:participantData forKeyedSubscript:@"IDSGroupSessionParticipantUpdateParticipantDataKey"];

  clientContextData = [(IDSGroupSessionParticipantUpdate *)self clientContextData];
  [v3 setObject:clientContextData forKeyedSubscript:@"IDSGroupSessionParticipantUpdateClientContextDataKey"];

  members = [(IDSGroupSessionParticipantUpdate *)self members];
  v16 = [members __imArrayByApplyingBlock:&unk_1F1AAA120];
  [v3 setObject:v16 forKeyedSubscript:@"IDSGroupSessionParticipantUpdateMembersKey"];

  participantIDs = [(IDSGroupSessionParticipantUpdate *)self participantIDs];
  [v3 setObject:participantIDs forKeyedSubscript:@"IDSGroupSessionParticipantUpdateParticipantIDsKey"];

  relaySessionID = [(IDSGroupSessionParticipantUpdate *)self relaySessionID];
  uUIDString2 = [relaySessionID UUIDString];
  [v3 setObject:uUIDString2 forKeyedSubscript:@"IDSGroupSessionParticipantUpdateRelaySessionUUIDKey"];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  groupUUID = [(IDSGroupSessionParticipantUpdate *)self groupUUID];
  if ([(IDSGroupSessionParticipantUpdate *)self isInitiator])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  participantIdentifier = [(IDSGroupSessionParticipantUpdate *)self participantIdentifier];
  participantDestinationURI = [(IDSGroupSessionParticipantUpdate *)self participantDestinationURI];
  v9 = [v3 stringWithFormat:@"<%@: %p groupUUID: %@, isInitiator: %@, participantIdentifier: %llu, participantDestinationID: %@, participantUpdateType: %lu, participantUpdateSubype: %lu>", v4, self, groupUUID, v6, participantIdentifier, participantDestinationURI, -[IDSGroupSessionParticipantUpdate participantUpdateType](self, "participantUpdateType"), -[IDSGroupSessionParticipantUpdate participantUpdateSubtype](self, "participantUpdateSubtype")];

  return v9;
}

- (id)debugDescription
{
  v21 = MEMORY[0x1E696AEC0];
  v20 = objc_opt_class();
  groupUUID = [(IDSGroupSessionParticipantUpdate *)self groupUUID];
  relaySessionID = [(IDSGroupSessionParticipantUpdate *)self relaySessionID];
  isInitiator = [(IDSGroupSessionParticipantUpdate *)self isInitiator];
  v4 = @"NO";
  if (isInitiator)
  {
    v4 = @"YES";
  }

  v17 = v4;
  participantIdentifier = [(IDSGroupSessionParticipantUpdate *)self participantIdentifier];
  participantDestinationURI = [(IDSGroupSessionParticipantUpdate *)self participantDestinationURI];
  participantUpdateType = [(IDSGroupSessionParticipantUpdate *)self participantUpdateType];
  participantUpdateSubtype = [(IDSGroupSessionParticipantUpdate *)self participantUpdateSubtype];
  fromServer = [(IDSGroupSessionParticipantUpdate *)self fromServer];
  serverDate = [(IDSGroupSessionParticipantUpdate *)self serverDate];
  participantData = [(IDSGroupSessionParticipantUpdate *)self participantData];
  clientContextData = [(IDSGroupSessionParticipantUpdate *)self clientContextData];
  members = [(IDSGroupSessionParticipantUpdate *)self members];
  participantIDs = [(IDSGroupSessionParticipantUpdate *)self participantIDs];
  v14 = [v21 stringWithFormat:@"%@: %p {\n\tgroupUUID: %@ (relaySessionID: %@)\n\tIsInitiator: %@\n\tparticipantIdentifier: %llu\n\tparticipantDestinationID: %@\n\tparticipantUpdateType: %lu\n\tparticipantUpdateSubtype: %lu\n\tfromServer: %d\n\tserverDate: %@\n\tparticipantData: %@\n\tclientContextData: %@\n\tmembers: %@\n\tparticipantIDs: %@\n}", v20, self, groupUUID, relaySessionID, v17, participantIdentifier, participantDestinationURI, participantUpdateType, participantUpdateSubtype, fromServer, serverDate, participantData, clientContextData, members, participantIDs];

  return v14;
}

@end