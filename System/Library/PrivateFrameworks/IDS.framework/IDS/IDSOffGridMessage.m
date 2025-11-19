@interface IDSOffGridMessage
- (IDSOffGridMessage)initWithCoder:(id)a3;
- (IDSOffGridMessage)initWithDictionaryMessage:(id)a3;
- (IDSOffGridMessage)initWithMessage:(id)a3 senderURI:(id)a4 recipientURI:(id)a5;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSOffGridMessage

- (IDSOffGridMessage)initWithMessage:(id)a3 senderURI:(id)a4 recipientURI:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = IDSOffGridMessage;
  v12 = [(IDSOffGridMessage *)&v16 init];
  p_isa = &v12->super.isa;
  if (!v12)
  {
    goto LABEL_5;
  }

  v14 = 0;
  if (v9 && v11)
  {
    objc_storeStrong(&v12->_message, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
LABEL_5:
    v14 = p_isa;
  }

  return v14;
}

- (IDSOffGridMessage)initWithDictionaryMessage:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v20.receiver = self;
    v20.super_class = IDSOffGridMessage;
    v5 = [(IDSOffGridMessage *)&v20 init];
    if (v5)
    {
      v6 = [v4 objectForKeyedSubscript:@"message"];
      message = v5->_message;
      v5->_message = v6;

      v8 = [v4 objectForKeyedSubscript:@"service"];
      service = v5->_service;
      v5->_service = v8;

      v10 = MEMORY[0x1E69A5428];
      v11 = [v4 objectForKeyedSubscript:@"senderURI"];
      v12 = [v10 URIWithPrefixedURI:v11 withServiceLoggingHint:v5->_service];
      senderURI = v5->_senderURI;
      v5->_senderURI = v12;

      v14 = MEMORY[0x1E69A5428];
      v15 = [v4 objectForKeyedSubscript:@"recipientURI"];
      v16 = [v14 URIWithPrefixedURI:v15 withServiceLoggingHint:v5->_service];
      recipientURI = v5->_recipientURI;
      v5->_recipientURI = v16;
    }

    self = v5;
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
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

  v6 = [(IDSURI *)self->_senderURI prefixedURI];
  if (v6)
  {
    CFDictionarySetValue(v4, @"senderURI", v6);
  }

  v7 = [(IDSURI *)self->_recipientURI prefixedURI];
  if (v7)
  {
    CFDictionarySetValue(v4, @"recipientURI", v7);
  }

  service = self->_service;
  if (service)
  {
    CFDictionarySetValue(v4, @"service", service);
  }

  v9 = [(__CFDictionary *)v4 copy];

  return v9;
}

- (IDSOffGridMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderURI"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recipientURI"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"service"];

  v9 = [[IDSOffGridMessage alloc] initWithMessage:v5 senderURI:v6 recipientURI:v7];
  [(IDSOffGridMessage *)v9 setService:v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  message = self->_message;
  v5 = a3;
  [v5 encodeObject:message forKey:@"message"];
  [v5 encodeObject:self->_senderURI forKey:@"senderURI"];
  [v5 encodeObject:self->_recipientURI forKey:@"recipientURI"];
  [v5 encodeObject:self->_service forKey:@"service"];
}

@end