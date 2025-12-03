@interface CSHandshakeResponseMessage
+ (id)requiredParameters;
- (CSHandshakeResponseMessage)initWithMessage:(id)message;
- (CSHandshakeResponseMessage)initWithMicrophoneActivation:(BOOL)activation;
- (id)dictionaryRepresentation;
@end

@implementation CSHandshakeResponseMessage

- (CSHandshakeResponseMessage)initWithMicrophoneActivation:(BOOL)activation
{
  v10.receiver = self;
  v10.super_class = CSHandshakeResponseMessage;
  v4 = [(CSHandshakeResponseMessage *)&v10 init];
  if (v4)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    v6 = processInfo;
    if (processInfo)
    {
      [processInfo operatingSystemVersion];
    }

    else
    {
      v8 = 0uLL;
      v9 = 0;
    }

    *(v4 + 5) = v9;
    *(v4 + 24) = v8;

    *(v4 + 2) = 0x3FF51EB851EB851FLL;
    v4[8] = activation;
  }

  return v4;
}

- (CSHandshakeResponseMessage)initWithMessage:(id)message
{
  messageCopy = message;
  v13.receiver = self;
  v13.super_class = CSHandshakeResponseMessage;
  v5 = [(CSMessage *)&v13 initWithMessage:messageCopy];
  if (v5)
  {
    v6 = [messageCopy objectForKeyedSubscript:@"OSMajorVersion"];
    v7 = [messageCopy objectForKeyedSubscript:@"OSMinorVersion"];
    v8 = [messageCopy objectForKeyedSubscript:@"OSPatchVersion"];
    v9 = [messageCopy objectForKeyedSubscript:@"ProtocolVersion"];
    v10 = [messageCopy objectForKeyedSubscript:@"ShouldActivateMicrophone"];
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
  v5.receiver = self;
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
  dictionaryRepresentation = [(CSMessage *)&v11 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

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