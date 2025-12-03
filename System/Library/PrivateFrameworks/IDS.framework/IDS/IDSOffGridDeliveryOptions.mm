@interface IDSOffGridDeliveryOptions
- (IDSOffGridDeliveryOptions)init;
- (IDSOffGridDeliveryOptions)initWithCoder:(id)coder;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setDefaultOptionsForTransportType:(int64_t)type;
@end

@implementation IDSOffGridDeliveryOptions

- (IDSOffGridDeliveryOptions)init
{
  v3.receiver = self;
  v3.super_class = IDSOffGridDeliveryOptions;
  return [(IDSOffGridDeliveryOptions *)&v3 init];
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_command];
  if (v4)
  {
    CFDictionarySetValue(v3, @"IDSSendMessageOptionCommand", v4);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_transportType];
  if (v5)
  {
    CFDictionarySetValue(v3, @"IDSSendMessageOptionsOffGridDeliveryTransportType", v5);
  }

  originalUUID = self->_originalUUID;
  v7 = IDSGetUUIDData();
  if (v7)
  {
    CFDictionarySetValue(v3, @"IDSSendMessageOptionsOffGridDeliveryOriginalUUID", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_serviceType];
  if (v8)
  {
    CFDictionarySetValue(v3, @"service-type", v8);
  }

  identifier = self->_identifier;
  v10 = IDSGetUUIDData();
  if (v10)
  {
    CFDictionarySetValue(v3, @"IDSSendMessageOptionUUID", v10);
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sendMode];
  if (v11)
  {
    CFDictionarySetValue(v3, @"IDSSendMessageOptionSendModeKey", v11);
  }

  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_encryptPayload];
  if (v12)
  {
    CFDictionarySetValue(v3, @"IDSSendMessageOptionEncryptPayload", v12);
  }

  CFDictionarySetValue(v3, @"IDSSendMessageOptionWantsCertifiedDelivery", MEMORY[0x1E695E118]);
  v13 = [(__CFDictionary *)v3 mutableCopy];

  return v13;
}

- (void)setDefaultOptionsForTransportType:(int64_t)type
{
  if (type)
  {
    self->_sendMode = 0;
  }
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  command = self->_command;
  coderCopy = coder;
  v7 = [v4 numberWithInteger:command];
  [coderCopy encodeObject:v7 forKey:@"command"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_transportType];
  [coderCopy encodeObject:v8 forKey:@"transport-type"];

  [coderCopy encodeObject:self->_originalUUID forKey:@"originalUUID"];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_serviceType];
  [coderCopy encodeObject:v9 forKey:@"service-type"];

  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sendMode];
  [coderCopy encodeObject:v10 forKey:@"send-mode"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_encryptPayload];
  [coderCopy encodeObject:v11 forKey:@"encrypt-payload"];
}

- (IDSOffGridDeliveryOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(IDSOffGridDeliveryOptions);
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"command"];
  -[IDSOffGridDeliveryOptions setCommand:](v5, "setCommand:", [v6 intValue]);

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transport-type"];
  -[IDSOffGridDeliveryOptions setTransportType:](v5, "setTransportType:", [v7 intValue]);

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalUUID"];
  [(IDSOffGridDeliveryOptions *)v5 setOriginalUUID:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"service-type"];
  -[IDSOffGridDeliveryOptions setServiceType:](v5, "setServiceType:", [v9 intValue]);

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  [(IDSOffGridDeliveryOptions *)v5 setIdentifier:v10];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"send-mode"];
  -[IDSOffGridDeliveryOptions setSendMode:](v5, "setSendMode:", [v11 intValue]);

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encrypt-payload"];

  -[IDSOffGridDeliveryOptions setEncryptPayload:](v5, "setEncryptPayload:", [v12 BOOLValue]);
  return v5;
}

@end