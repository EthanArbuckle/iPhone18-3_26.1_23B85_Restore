@interface IMSharedEmergencyInfo
+ (id)infoFromDictionary:(id)dictionary isStewieTranscriptSharingMessage:(BOOL *)message;
- (IMSharedEmergencyInfo)initWithCoder:(id)coder;
- (IMSharedEmergencyInfo)initWithStewieUserPersona:(id)persona stewieUserPersona:(id)userPersona conversationID:(id)d messageType:(int64_t)type;
- (NSDictionary)dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMSharedEmergencyInfo

+ (id)infoFromDictionary:(id)dictionary isStewieTranscriptSharingMessage:(BOOL *)message
{
  dictionaryCopy = dictionary;
  v6 = dictionaryCopy;
  if (message)
  {
    *message = 0;
  }

  v7 = [dictionaryCopy _dictionaryForKey:@"eufo"];
  if (v7)
  {
  }

  else
  {
    v8 = [v6 _dictionaryForKey:@"prsna"];

    if (!v8)
    {
      v20 = 0;
      goto LABEL_21;
    }
  }

  if (message)
  {
    *message = 1;
  }

  v9 = [v6 _dictionaryForKey:@"eufo"];
  v10 = [IMSharedPersona personaFromDictionaryRepresentation:v9];

  v11 = [v6 _dictionaryForKey:@"prsna"];
  v12 = [IMSharedPersona personaFromDictionaryRepresentation:v11];

  v13 = [v6 _dictionaryForKey:@"eufo"];
  v14 = [v13 _stringForKey:@"cid"];

  v15 = [v6 _dictionaryForKey:@"eufo"];
  v16 = [v15 _stringForKey:@"t"];

  if (([v16 isEqualToString:@"message"] & 1) == 0)
  {
    if ([v16 isEqualToString:@"information"])
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    if (message)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v17 = 1;
  if (!message)
  {
LABEL_15:
    v18 = [v6 _stringForKey:@"cid"];

    v14 = v18;
  }

LABEL_16:
  v19 = [[IMSharedEmergencyInfo alloc] initWithStewieUserPersona:v10 stewieUserPersona:v12 conversationID:v14 messageType:v17];
  v20 = v19;
  if ((v12 != 0) != (v10 != 0))
  {

    v20 = 0;
  }

  if (!v14)
  {

    v20 = 0;
  }

LABEL_21:

  return v20;
}

- (IMSharedEmergencyInfo)initWithStewieUserPersona:(id)persona stewieUserPersona:(id)userPersona conversationID:(id)d messageType:(int64_t)type
{
  personaCopy = persona;
  userPersonaCopy = userPersona;
  dCopy = d;
  v17.receiver = self;
  v17.super_class = IMSharedEmergencyInfo;
  v14 = [(IMSharedEmergencyInfo *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_emergencyUserPersona, persona);
    objc_storeStrong(&v15->_senderPersona, userPersona);
    objc_storeStrong(&v15->_conversationID, d);
    v15->_messageType = type;
  }

  return v15;
}

- (NSDictionary)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionaryRepresentation = [(IMSharedPersona *)self->_emergencyUserPersona dictionaryRepresentation];
  [dictionary setValue:dictionaryRepresentation forKey:@"eufo"];

  dictionaryRepresentation2 = [(IMSharedPersona *)self->_senderPersona dictionaryRepresentation];
  [dictionary setValue:dictionaryRepresentation2 forKey:@"prsna"];

  [dictionary setValue:self->_conversationID forKey:@"cid"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_messageType];
  [dictionary setValue:v6 forKey:@"t"];

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [IMSharedEmergencyInfo alloc];
  emergencyUserPersona = self->_emergencyUserPersona;
  senderPersona = self->_senderPersona;
  conversationID = self->_conversationID;
  messageType = self->_messageType;

  return [(IMSharedEmergencyInfo *)v4 initWithStewieUserPersona:emergencyUserPersona stewieUserPersona:senderPersona conversationID:conversationID messageType:messageType];
}

- (IMSharedEmergencyInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eufo"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"prsna"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cid"];
  v8 = [coderCopy decodeIntegerForKey:@"t"];

  v9 = [(IMSharedEmergencyInfo *)self initWithStewieUserPersona:v5 stewieUserPersona:v6 conversationID:v7 messageType:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  emergencyUserPersona = self->_emergencyUserPersona;
  coderCopy = coder;
  [coderCopy encodeObject:emergencyUserPersona forKey:@"eufo"];
  [coderCopy encodeObject:self->_senderPersona forKey:@"prsna"];
  [coderCopy encodeObject:self->_conversationID forKey:@"cid"];
  [coderCopy encodeInteger:self->_messageType forKey:@"t"];
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_conversationID withName:@"ConversationID"];
  v4 = [v3 appendInteger:self->_messageType withName:@"messageType"];
  v5 = [v3 appendObject:self->_emergencyUserPersona withName:@"emergencyUserPersona"];
  v6 = [v3 appendObject:self->_senderPersona withName:@"senderPersona"];
  build = [v3 build];

  return build;
}

@end