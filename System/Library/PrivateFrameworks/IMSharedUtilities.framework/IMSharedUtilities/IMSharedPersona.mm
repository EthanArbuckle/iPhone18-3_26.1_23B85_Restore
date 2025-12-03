@interface IMSharedPersona
+ (id)personaFromDictionaryRepresentation:(id)representation;
- (IMSharedPersona)initWithCoder:(id)coder;
- (IMSharedPersona)initWithSenderID:(id)d suggestedDisplayName:(id)name;
- (NSDictionary)dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMSharedPersona

+ (id)personaFromDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  if ([representationCopy count])
  {
    v4 = [representationCopy _stringForKey:@"h"];
    v5 = [representationCopy _stringForKey:@"n"];
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

- (IMSharedPersona)initWithSenderID:(id)d suggestedDisplayName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = IMSharedPersona;
  v9 = [(IMSharedPersona *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_senderID, d);
    if ([nameCopy length])
    {
      objc_storeStrong(&v10->_suggestedDisplayName, name);
    }
  }

  return v10;
}

- (NSDictionary)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setValue:self->_senderID forKey:@"h"];
  if ([(NSString *)self->_suggestedDisplayName length])
  {
    [dictionary setValue:self->_suggestedDisplayName forKey:@"n"];
  }

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [IMSharedPersona alloc];
  senderID = self->_senderID;
  suggestedDisplayName = self->_suggestedDisplayName;

  return [(IMSharedPersona *)v4 initWithSenderID:senderID suggestedDisplayName:suggestedDisplayName];
}

- (IMSharedPersona)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestedName"];

  if (v5)
  {
    self = [(IMSharedPersona *)self initWithSenderID:v5 suggestedDisplayName:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_senderID forKey:@"senderID"];
  if ([(NSString *)self->_suggestedDisplayName length])
  {
    [coderCopy encodeObject:self->_suggestedDisplayName forKey:@"suggestedName"];
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_senderID withName:@"senderID"];
  [v3 appendString:self->_suggestedDisplayName withName:@"suggestedDisplayName" skipIfEmpty:1];
  build = [v3 build];

  return build;
}

@end