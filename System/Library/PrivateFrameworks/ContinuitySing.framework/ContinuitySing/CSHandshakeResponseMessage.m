@interface CSHandshakeResponseMessage
+ (id)requiredParameters;
- (CSHandshakeResponseMessage)initWithMessage:(id)a3;
- (CSHandshakeResponseMessage)initWithMicrophoneActivation:(BOOL)a3;
- (id)dictionaryRepresentation;
@end

@implementation CSHandshakeResponseMessage

- (CSHandshakeResponseMessage)initWithMicrophoneActivation:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = CSHandshakeResponseMessage;
  v4 = [(CSHandshakeResponseMessage *)&v10 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAC38] processInfo];
    v6 = v5;
    if (v5)
    {
      [v5 operatingSystemVersion];
    }

    else
    {
      v8 = 0uLL;
      v9 = 0;
    }

    *(v4 + 5) = v9;
    *(v4 + 24) = v8;

    *(v4 + 2) = 0x3FF51EB851EB851FLL;
    v4[8] = a3;
  }

  return v4;
}

- (CSHandshakeResponseMessage)initWithMessage:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CSHandshakeResponseMessage;
  v5 = [(CSMessage *)&v13 initWithMessage:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"OSMajorVersion"];
    v7 = [v4 objectForKeyedSubscript:@"OSMinorVersion"];
    v8 = [v4 objectForKeyedSubscript:@"OSPatchVersion"];
    v9 = [v4 objectForKeyedSubscript:@"ProtocolVersion"];
    v10 = [v4 objectForKeyedSubscript:@"ShouldActivateMicrophone"];
    v5->_operatingSystemVersion.majorVersion = [v6 integerValue];
    v5->_operatingSystemVersion.minorVersion = [v7 integerValue];
    v5->_operatingSystemVersion.patchVersion = [v8 integerValue];
    [v9 doubleValue];
    v5->_protocolVersion = v11;
    v5->_shouldActivateMicrophone = [v10 BOOLValue];
  }

  return v5;
}

+ (id)requiredParameters
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CSHandshakeResponseMessage;
  v2 = objc_msgSendSuper2(&v5, sel_requiredParameters);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"OSMajorVersion"];
  [v3 addObject:@"OSMinorVersion"];
  [v3 addObject:@"OSPatchVersion"];
  [v3 addObject:@"ProtocolVersion"];

  return v3;
}

- (id)dictionaryRepresentation
{
  v11.receiver = self;
  v11.super_class = CSHandshakeResponseMessage;
  v3 = [(CSMessage *)&v11 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_operatingSystemVersion.majorVersion];
  [v4 setObject:v5 forKeyedSubscript:@"OSMajorVersion"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_operatingSystemVersion.minorVersion];
  [v4 setObject:v6 forKeyedSubscript:@"OSMinorVersion"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_operatingSystemVersion.patchVersion];
  [v4 setObject:v7 forKeyedSubscript:@"OSPatchVersion"];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_protocolVersion];
  [v4 setObject:v8 forKeyedSubscript:@"ProtocolVersion"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldActivateMicrophone];
  [v4 setObject:v9 forKeyedSubscript:@"ShouldActivateMicrophone"];

  return v4;
}

@end