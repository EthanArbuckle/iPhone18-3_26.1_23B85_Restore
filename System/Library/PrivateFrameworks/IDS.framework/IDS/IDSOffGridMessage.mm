@interface IDSOffGridMessage
- (IDSOffGridMessage)initWithCoder:(id)coder;
- (IDSOffGridMessage)initWithDictionaryMessage:(id)message;
- (IDSOffGridMessage)initWithMessage:(id)message senderURI:(id)i recipientURI:(id)rI;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSOffGridMessage

- (IDSOffGridMessage)initWithMessage:(id)message senderURI:(id)i recipientURI:(id)rI
{
  messageCopy = message;
  iCopy = i;
  rICopy = rI;
  v16.receiver = self;
  v16.super_class = IDSOffGridMessage;
  v12 = [(IDSOffGridMessage *)&v16 init];
  p_isa = &v12->super.isa;
  if (!v12)
  {
    goto LABEL_5;
  }

  v14 = 0;
  if (messageCopy && rICopy)
  {
    objc_storeStrong(&v12->_message, message);
    objc_storeStrong(p_isa + 2, i);
    objc_storeStrong(p_isa + 3, rI);
LABEL_5:
    v14 = p_isa;
  }

  return v14;
}

- (IDSOffGridMessage)initWithDictionaryMessage:(id)message
{
  messageCopy = message;
  if (messageCopy)
  {
    v20.receiver = self;
    v20.super_class = IDSOffGridMessage;
    v5 = [(IDSOffGridMessage *)&v20 init];
    if (v5)
    {
      v6 = [messageCopy objectForKeyedSubscript:@"message"];
      message = v5->_message;
      v5->_message = v6;

      v8 = [messageCopy objectForKeyedSubscript:@"service"];
      service = v5->_service;
      v5->_service = v8;

      v10 = MEMORY[0x1E69A5428];
      v11 = [messageCopy objectForKeyedSubscript:@"senderURI"];
      v12 = [v10 URIWithPrefixedURI:v11 withServiceLoggingHint:v5->_service];
      senderURI = v5->_senderURI;
      v5->_senderURI = v12;

      v14 = MEMORY[0x1E69A5428];
      v15 = [messageCopy objectForKeyedSubscript:@"recipientURI"];
      v16 = [v14 URIWithPrefixedURI:v15 withServiceLoggingHint:v5->_service];
      recipientURI = v5->_recipientURI;
      v5->_recipientURI = v16;
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
  v4 = v3;
  message = self->_message;
  if (message)
  {
    CFDictionarySetValue(v3, @"message", message);
  }

  prefixedURI = [(IDSURI *)self->_senderURI prefixedURI];
  if (prefixedURI)
  {
    CFDictionarySetValue(v4, @"senderURI", prefixedURI);
  }

  prefixedURI2 = [(IDSURI *)self->_recipientURI prefixedURI];
  if (prefixedURI2)
  {
    CFDictionarySetValue(v4, @"recipientURI", prefixedURI2);
  }

  service = self->_service;
  if (service)
  {
    CFDictionarySetValue(v4, @"service", service);
  }

  v9 = [(__CFDictionary *)v4 copy];

  return v9;
}

- (IDSOffGridMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderURI"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipientURI"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"service"];

  v9 = [[IDSOffGridMessage alloc] initWithMessage:v5 senderURI:v6 recipientURI:v7];
  [(IDSOffGridMessage *)v9 setService:v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  message = self->_message;
  coderCopy = coder;
  [coderCopy encodeObject:message forKey:@"message"];
  [coderCopy encodeObject:self->_senderURI forKey:@"senderURI"];
  [coderCopy encodeObject:self->_recipientURI forKey:@"recipientURI"];
  [coderCopy encodeObject:self->_service forKey:@"service"];
}

@end