@interface IDSOffGridServiceUpdateMessage
- (IDSOffGridServiceUpdateMessage)initWithCoder:(id)a3;
- (IDSOffGridServiceUpdateMessage)initWithDictionaryMessage:(id)a3;
- (IDSOffGridServiceUpdateMessage)initWithPreferredServiceType:(int64_t)a3 senderURI:(id)a4 recipientURI:(id)a5;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSOffGridServiceUpdateMessage

- (IDSOffGridServiceUpdateMessage)initWithPreferredServiceType:(int64_t)a3 senderURI:(id)a4 recipientURI:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = v10;
  v12 = 0;
  if (v9 && v10)
  {
    v16.receiver = self;
    v16.super_class = IDSOffGridServiceUpdateMessage;
    v13 = [(IDSOffGridServiceUpdateMessage *)&v16 init];
    p_isa = &v13->super.isa;
    if (v13)
    {
      v13->_preferredServiceType = a3;
      objc_storeStrong(&v13->_senderURI, a4);
      objc_storeStrong(p_isa + 2, a5);
    }

    self = p_isa;
    v12 = self;
  }

  return v12;
}

- (IDSOffGridServiceUpdateMessage)initWithDictionaryMessage:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v19.receiver = self;
    v19.super_class = IDSOffGridServiceUpdateMessage;
    v5 = [(IDSOffGridServiceUpdateMessage *)&v19 init];
    if (v5)
    {
      v6 = [v4 objectForKeyedSubscript:@"preferredService"];
      v5->_preferredServiceType = [v6 intValue];

      v7 = MEMORY[0x1E69A5428];
      v8 = [v4 objectForKeyedSubscript:@"senderURI"];
      v9 = [v7 URIWithPrefixedURI:v8];
      senderURI = v5->_senderURI;
      v5->_senderURI = v9;

      v11 = MEMORY[0x1E69A5428];
      v12 = [v4 objectForKeyedSubscript:@"recipientURI"];
      v13 = [v11 URIWithPrefixedURI:v12];
      recipientURI = v5->_recipientURI;
      v5->_recipientURI = v13;

      v15 = [v4 objectForKeyedSubscript:@"expirationDate"];
      expirationDate = v5->_expirationDate;
      v5->_expirationDate = v15;
    }

    self = v5;
    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_preferredServiceType];
  if (v4)
  {
    CFDictionarySetValue(v3, @"preferredService", v4);
  }

  v5 = [(IDSURI *)self->_senderURI prefixedURI];
  if (v5)
  {
    CFDictionarySetValue(v3, @"senderURI", v5);
  }

  v6 = [(IDSURI *)self->_recipientURI prefixedURI];
  if (v6)
  {
    CFDictionarySetValue(v3, @"recipientURI", v6);
  }

  expirationDate = self->_expirationDate;
  if (expirationDate)
  {
    CFDictionarySetValue(v3, @"expirationDate", expirationDate);
  }

  v8 = [(__CFDictionary *)v3 copy];

  return v8;
}

- (IDSOffGridServiceUpdateMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredService"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderURI"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recipientURI"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];

  v9 = -[IDSOffGridServiceUpdateMessage initWithPreferredServiceType:senderURI:recipientURI:]([IDSOffGridServiceUpdateMessage alloc], "initWithPreferredServiceType:senderURI:recipientURI:", [v5 intValue], v6, v7);
  [(IDSOffGridServiceUpdateMessage *)v9 setExpirationDate:v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  preferredServiceType = self->_preferredServiceType;
  v7 = a3;
  v6 = [v4 numberWithInteger:preferredServiceType];
  [v7 encodeObject:v6 forKey:@"preferredService"];

  [v7 encodeObject:self->_senderURI forKey:@"senderURI"];
  [v7 encodeObject:self->_recipientURI forKey:@"recipientURI"];
  [v7 encodeObject:self->_expirationDate forKey:@"expirationDate"];
}

@end