@interface IDSOffGridDeliveryOptions
- (IDSOffGridDeliveryOptions)init;
- (IDSOffGridDeliveryOptions)initWithCoder:(id)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setDefaultOptionsForTransportType:(int64_t)a3;
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

- (void)setDefaultOptionsForTransportType:(int64_t)a3
{
  if (a3)
  {
    self->_sendMode = 0;
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  command = self->_command;
  v6 = a3;
  v7 = [v4 numberWithInteger:command];
  [v6 encodeObject:v7 forKey:@"command"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_transportType];
  [v6 encodeObject:v8 forKey:@"transport-type"];

  [v6 encodeObject:self->_originalUUID forKey:@"originalUUID"];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_serviceType];
  [v6 encodeObject:v9 forKey:@"service-type"];

  [v6 encodeObject:self->_identifier forKey:@"identifier"];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sendMode];
  [v6 encodeObject:v10 forKey:@"send-mode"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_encryptPayload];
  [v6 encodeObject:v11 forKey:@"encrypt-payload"];
}

- (IDSOffGridDeliveryOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(IDSOffGridDeliveryOptions);
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"command"];
  -[IDSOffGridDeliveryOptions setCommand:](v5, "setCommand:", [v6 intValue]);

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transport-type"];
  -[IDSOffGridDeliveryOptions setTransportType:](v5, "setTransportType:", [v7 intValue]);

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalUUID"];
  [(IDSOffGridDeliveryOptions *)v5 setOriginalUUID:v8];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"service-type"];
  -[IDSOffGridDeliveryOptions setServiceType:](v5, "setServiceType:", [v9 intValue]);

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  [(IDSOffGridDeliveryOptions *)v5 setIdentifier:v10];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"send-mode"];
  -[IDSOffGridDeliveryOptions setSendMode:](v5, "setSendMode:", [v11 intValue]);

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encrypt-payload"];

  -[IDSOffGridDeliveryOptions setEncryptPayload:](v5, "setEncryptPayload:", [v12 BOOLValue]);
  return v5;
}

@end