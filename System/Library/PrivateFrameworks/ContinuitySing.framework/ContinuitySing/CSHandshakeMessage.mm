@interface CSHandshakeMessage
+ (id)requiredParameters;
+ (id)responseMessageFromDictionary:(id)a3;
- (CSHandshakeMessage)initWithIDSIdentifier:(id)a3 sessionPairingIdentifier:(id)a4 participantInfo:(id)a5;
- (CSHandshakeMessage)initWithMessage:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation CSHandshakeMessage

+ (id)responseMessageFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [[CSHandshakeResponseMessage alloc] initWithMessage:v3];

  return v4;
}

- (CSHandshakeMessage)initWithIDSIdentifier:(id)a3 sessionPairingIdentifier:(id)a4 participantInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = CSHandshakeMessage;
  v11 = [(CSHandshakeMessage *)&v23 init];
  if (v11)
  {
    v12 = [v8 copy];
    v13 = *(v11 + 1);
    *(v11 + 1) = v12;

    v14 = [v9 copy];
    v15 = *(v11 + 2);
    *(v11 + 2) = v14;

    v16 = [v10 copy];
    v17 = *(v11 + 3);
    *(v11 + 3) = v16;

    v18 = [MEMORY[0x277CCAC38] processInfo];
    v19 = v18;
    if (v18)
    {
      [v18 operatingSystemVersion];
    }

    else
    {
      v21 = 0uLL;
      v22 = 0;
    }

    *(v11 + 8) = v22;
    *(v11 + 3) = v21;

    *(v11 + 4) = 0x3FF51EB851EB851FLL;
    *(v11 + 72) = CSMinRequiredTVOSVersion;
    *(v11 + 11) = 0;
    *(v11 + 5) = 0x3FF4CCCCCCCCCCCDLL;
  }

  return v11;
}

- (CSHandshakeMessage)initWithMessage:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = CSHandshakeMessage;
  v5 = [(CSMessage *)&v27 initWithMessage:v4];
  if (v5)
  {
    v25 = [v4 objectForKeyedSubscript:@"IDS_Identifier"];
    v24 = [v4 objectForKeyedSubscript:@"SessionPairingIdentifier"];
    v26 = [v4 objectForKeyedSubscript:@"ParticipantInfo"];
    v23 = [objc_alloc(MEMORY[0x277CF6C40]) initWithDictionary:v26];
    v6 = [v4 objectForKeyedSubscript:@"OSMajorVersion"];
    v7 = [v4 objectForKeyedSubscript:@"OSMinorVersion"];
    v22 = [v4 objectForKeyedSubscript:@"OSPatchVersion"];
    v19 = [v4 objectForKeyedSubscript:@"ProtocolVersion"];
    v21 = [v4 objectForKeyedSubscript:@"OSMajorVersionRequired"];
    v8 = [v4 objectForKeyedSubscript:@"OSMinorVersionRequired"];
    v9 = [v4 objectForKeyedSubscript:@"OSPatchVersionRequired"];
    v20 = [v4 objectForKeyedSubscript:@"RequiredProtocolVersion"];
    v10 = [v25 copy];
    idsIdentifier = v5->_idsIdentifier;
    v5->_idsIdentifier = v10;

    v12 = [v24 copy];
    sessionPairingIdentifier = v5->_sessionPairingIdentifier;
    v5->_sessionPairingIdentifier = v12;

    v14 = [v23 copy];
    participantInfo = v5->_participantInfo;
    v5->_participantInfo = v14;

    v5->_operatingSystemVersion.majorVersion = [v6 integerValue];
    v5->_operatingSystemVersion.minorVersion = [v7 integerValue];
    v5->_operatingSystemVersion.patchVersion = [v22 integerValue];
    [v19 doubleValue];
    v5->_protocolVersion = v16;
    v5->_minimumRequiredOperatingSystemVersion.majorVersion = [v21 integerValue];
    v5->_minimumRequiredOperatingSystemVersion.minorVersion = [v8 integerValue];
    v5->_minimumRequiredOperatingSystemVersion.patchVersion = [v9 integerValue];
    [v20 doubleValue];
    v5->_minimumRequiredProtocolVersion = v17;
  }

  return v5;
}

+ (id)requiredParameters
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CSHandshakeMessage;
  v2 = objc_msgSendSuper2(&v5, sel_requiredParameters);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"IDS_Identifier"];
  [v3 addObject:@"SessionPairingIdentifier"];
  [v3 addObject:@"ParticipantInfo"];
  [v3 addObject:@"OSMajorVersion"];
  [v3 addObject:@"OSMinorVersion"];
  [v3 addObject:@"OSPatchVersion"];
  [v3 addObject:@"ProtocolVersion"];
  [v3 addObject:@"OSMajorVersionRequired"];
  [v3 addObject:@"OSMinorVersionRequired"];
  [v3 addObject:@"OSPatchVersionRequired"];
  [v3 addObject:@"RequiredProtocolVersion"];

  return v3;
}

- (id)dictionaryRepresentation
{
  v17.receiver = self;
  v17.super_class = CSHandshakeMessage;
  v3 = [(CSMessage *)&v17 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [(NSString *)self->_idsIdentifier copy];
  [v4 setObject:v5 forKey:@"IDS_Identifier"];

  v6 = [(NSString *)self->_sessionPairingIdentifier copy];
  [v4 setObject:v6 forKey:@"SessionPairingIdentifier"];

  v7 = [(CMContinuityCaptureParticipantInfo *)self->_participantInfo dictionaryRepresentation];
  [v4 setObject:v7 forKey:@"ParticipantInfo"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_operatingSystemVersion.majorVersion];
  [v4 setObject:v8 forKey:@"OSMajorVersion"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_operatingSystemVersion.minorVersion];
  [v4 setObject:v9 forKey:@"OSMinorVersion"];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->_operatingSystemVersion.patchVersion];
  [v4 setObject:v10 forKey:@"OSPatchVersion"];

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_protocolVersion];
  [v4 setObject:v11 forKey:@"ProtocolVersion"];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minimumRequiredOperatingSystemVersion.majorVersion];
  [v4 setObject:v12 forKey:@"OSMajorVersionRequired"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minimumRequiredOperatingSystemVersion.minorVersion];
  [v4 setObject:v13 forKey:@"OSMinorVersionRequired"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minimumRequiredOperatingSystemVersion.patchVersion];
  [v4 setObject:v14 forKey:@"OSPatchVersionRequired"];

  v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_minimumRequiredProtocolVersion];
  [v4 setObject:v15 forKey:@"RequiredProtocolVersion"];

  return v4;
}

@end