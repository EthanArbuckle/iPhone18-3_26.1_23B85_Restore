@interface IMSharedPersona
+ (id)personaFromDictionaryRepresentation:(id)a3;
- (IMSharedPersona)initWithCoder:(id)a3;
- (IMSharedPersona)initWithSenderID:(id)a3 suggestedDisplayName:(id)a4;
- (NSDictionary)dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMSharedPersona

+ (id)personaFromDictionaryRepresentation:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 _stringForKey:@"h"];
    v5 = [v3 _stringForKey:@"n"];
    if (v4)
    {
      v6 = [[IMSharedPersona alloc] initWithSenderID:v4 suggestedDisplayName:v5];

      v5 = v4;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (IMSharedPersona)initWithSenderID:(id)a3 suggestedDisplayName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IMSharedPersona;
  v9 = [(IMSharedPersona *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_senderID, a3);
    if ([v8 length])
    {
      objc_storeStrong(&v10->_suggestedDisplayName, a4);
    }
  }

  return v10;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setValue:self->_senderID forKey:@"h"];
  if ([(NSString *)self->_suggestedDisplayName length])
  {
    [v3 setValue:self->_suggestedDisplayName forKey:@"n"];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [IMSharedPersona alloc];
  senderID = self->_senderID;
  suggestedDisplayName = self->_suggestedDisplayName;

  return [(IMSharedPersona *)v4 initWithSenderID:senderID suggestedDisplayName:suggestedDisplayName];
}

- (IMSharedPersona)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suggestedName"];

  if (v5)
  {
    self = [(IMSharedPersona *)self initWithSenderID:v5 suggestedDisplayName:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_senderID forKey:@"senderID"];
  if ([(NSString *)self->_suggestedDisplayName length])
  {
    [v4 encodeObject:self->_suggestedDisplayName forKey:@"suggestedName"];
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_senderID withName:@"senderID"];
  [v3 appendString:self->_suggestedDisplayName withName:@"suggestedDisplayName" skipIfEmpty:1];
  v4 = [v3 build];

  return v4;
}

@end