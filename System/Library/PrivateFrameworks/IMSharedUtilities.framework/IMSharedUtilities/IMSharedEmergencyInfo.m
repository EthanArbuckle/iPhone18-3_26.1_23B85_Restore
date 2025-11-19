@interface IMSharedEmergencyInfo
+ (id)infoFromDictionary:(id)a3 isStewieTranscriptSharingMessage:(BOOL *)a4;
- (IMSharedEmergencyInfo)initWithCoder:(id)a3;
- (IMSharedEmergencyInfo)initWithStewieUserPersona:(id)a3 stewieUserPersona:(id)a4 conversationID:(id)a5 messageType:(int64_t)a6;
- (NSDictionary)dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMSharedEmergencyInfo

+ (id)infoFromDictionary:(id)a3 isStewieTranscriptSharingMessage:(BOOL *)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    *a4 = 0;
  }

  v7 = [v5 _dictionaryForKey:@"eufo"];
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

  if (a4)
  {
    *a4 = 1;
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

    if (a4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v17 = 1;
  if (!a4)
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

- (IMSharedEmergencyInfo)initWithStewieUserPersona:(id)a3 stewieUserPersona:(id)a4 conversationID:(id)a5 messageType:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = IMSharedEmergencyInfo;
  v14 = [(IMSharedEmergencyInfo *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_emergencyUserPersona, a3);
    objc_storeStrong(&v15->_senderPersona, a4);
    objc_storeStrong(&v15->_conversationID, a5);
    v15->_messageType = a6;
  }

  return v15;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(IMSharedPersona *)self->_emergencyUserPersona dictionaryRepresentation];
  [v3 setValue:v4 forKey:@"eufo"];

  v5 = [(IMSharedPersona *)self->_senderPersona dictionaryRepresentation];
  [v3 setValue:v5 forKey:@"prsna"];

  [v3 setValue:self->_conversationID forKey:@"cid"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_messageType];
  [v3 setValue:v6 forKey:@"t"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [IMSharedEmergencyInfo alloc];
  emergencyUserPersona = self->_emergencyUserPersona;
  senderPersona = self->_senderPersona;
  conversationID = self->_conversationID;
  messageType = self->_messageType;

  return [(IMSharedEmergencyInfo *)v4 initWithStewieUserPersona:emergencyUserPersona stewieUserPersona:senderPersona conversationID:conversationID messageType:messageType];
}

- (IMSharedEmergencyInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eufo"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"prsna"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cid"];
  v8 = [v4 decodeIntegerForKey:@"t"];

  v9 = [(IMSharedEmergencyInfo *)self initWithStewieUserPersona:v5 stewieUserPersona:v6 conversationID:v7 messageType:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  emergencyUserPersona = self->_emergencyUserPersona;
  v5 = a3;
  [v5 encodeObject:emergencyUserPersona forKey:@"eufo"];
  [v5 encodeObject:self->_senderPersona forKey:@"prsna"];
  [v5 encodeObject:self->_conversationID forKey:@"cid"];
  [v5 encodeInteger:self->_messageType forKey:@"t"];
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_conversationID withName:@"ConversationID"];
  v4 = [v3 appendInteger:self->_messageType withName:@"messageType"];
  v5 = [v3 appendObject:self->_emergencyUserPersona withName:@"emergencyUserPersona"];
  v6 = [v3 appendObject:self->_senderPersona withName:@"senderPersona"];
  v7 = [v3 build];

  return v7;
}

@end