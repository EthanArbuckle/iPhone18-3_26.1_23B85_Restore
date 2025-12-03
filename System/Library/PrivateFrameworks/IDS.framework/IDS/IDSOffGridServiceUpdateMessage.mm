@interface IDSOffGridServiceUpdateMessage
- (IDSOffGridServiceUpdateMessage)initWithCoder:(id)coder;
- (IDSOffGridServiceUpdateMessage)initWithDictionaryMessage:(id)message;
- (IDSOffGridServiceUpdateMessage)initWithPreferredServiceType:(int64_t)type senderURI:(id)i recipientURI:(id)rI;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSOffGridServiceUpdateMessage

- (IDSOffGridServiceUpdateMessage)initWithPreferredServiceType:(int64_t)type senderURI:(id)i recipientURI:(id)rI
{
  iCopy = i;
  rICopy = rI;
  v11 = rICopy;
  selfCopy = 0;
  if (iCopy && rICopy)
  {
    v16.receiver = self;
    v16.super_class = IDSOffGridServiceUpdateMessage;
    v13 = [(IDSOffGridServiceUpdateMessage *)&v16 init];
    p_isa = &v13->super.isa;
    if (v13)
    {
      v13->_preferredServiceType = type;
      objc_storeStrong(&v13->_senderURI, i);
      objc_storeStrong(p_isa + 2, rI);
    }

    self = p_isa;
    selfCopy = self;
  }

  return selfCopy;
}

- (IDSOffGridServiceUpdateMessage)initWithDictionaryMessage:(id)message
{
  messageCopy = message;
  if (messageCopy)
  {
    v19.receiver = self;
    v19.super_class = IDSOffGridServiceUpdateMessage;
    v5 = [(IDSOffGridServiceUpdateMessage *)&v19 init];
    if (v5)
    {
      v6 = [messageCopy objectForKeyedSubscript:@"preferredService"];
      v5->_preferredServiceType = [v6 intValue];

      v7 = MEMORY[0x1E69A5428];
      v8 = [messageCopy objectForKeyedSubscript:@"senderURI"];
      v9 = [v7 URIWithPrefixedURI:v8];
      senderURI = v5->_senderURI;
      v5->_senderURI = v9;

      v11 = MEMORY[0x1E69A5428];
      v12 = [messageCopy objectForKeyedSubscript:@"recipientURI"];
      v13 = [v11 URIWithPrefixedURI:v12];
      recipientURI = v5->_recipientURI;
      v5->_recipientURI = v13;

      v15 = [messageCopy objectForKeyedSubscript:@"expirationDate"];
      expirationDate = v5->_expirationDate;
      v5->_expirationDate = v15;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_preferredServiceType];
  if (v4)
  {
    CFDictionarySetValue(v3, @"preferredService", v4);
  }

  prefixedURI = [(IDSURI *)self->_senderURI prefixedURI];
  if (prefixedURI)
  {
    CFDictionarySetValue(v3, @"senderURI", prefixedURI);
  }

  prefixedURI2 = [(IDSURI *)self->_recipientURI prefixedURI];
  if (prefixedURI2)
  {
    CFDictionarySetValue(v3, @"recipientURI", prefixedURI2);
  }

  expirationDate = self->_expirationDate;
  if (expirationDate)
  {
    CFDictionarySetValue(v3, @"expirationDate", expirationDate);
  }

  v8 = [(__CFDictionary *)v3 copy];

  return v8;
}

- (IDSOffGridServiceUpdateMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredService"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderURI"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipientURI"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];

  v9 = -[IDSOffGridServiceUpdateMessage initWithPreferredServiceType:senderURI:recipientURI:]([IDSOffGridServiceUpdateMessage alloc], "initWithPreferredServiceType:senderURI:recipientURI:", [v5 intValue], v6, v7);
  [(IDSOffGridServiceUpdateMessage *)v9 setExpirationDate:v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  preferredServiceType = self->_preferredServiceType;
  coderCopy = coder;
  v6 = [v4 numberWithInteger:preferredServiceType];
  [coderCopy encodeObject:v6 forKey:@"preferredService"];

  [coderCopy encodeObject:self->_senderURI forKey:@"senderURI"];
  [coderCopy encodeObject:self->_recipientURI forKey:@"recipientURI"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
}

@end