@interface IDSBlastDoorMessageContext
- (IDSBlastDoorMessageContext)initWithService:(id)a3 command:(id)a4;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation IDSBlastDoorMessageContext

- (IDSBlastDoorMessageContext)initWithService:(id)a3 command:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = IDSBlastDoorMessageContext;
  v8 = [(IDSBlastDoorMessageContext *)&v12 init];
  if (v8)
  {
    v9 = [v6 pushTopic];
    topic = v8->_topic;
    v8->_topic = v9;

    v8->_isInvitationService = [v6 isInvitationService];
    objc_storeStrong(&v8->_command, a4);
  }

  return v8;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = self->_topic;
  if (v4)
  {
    CFDictionarySetValue(v3, @"topic", v4);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E11E5C();
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInvitationService];
  if (v5)
  {
    CFDictionarySetValue(v3, @"is-invitation-service", v5);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E11EE4();
  }

  v6 = self->_command;
  if (v6)
  {
    CFDictionarySetValue(v3, @"command", v6);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E11F6C();
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_payloadType];
  if (v7)
  {
    CFDictionarySetValue(v3, @"payload-type", v7);
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IDSBlastDoorMessageContext *)self topic];
  v5 = [(IDSBlastDoorMessageContext *)self command];
  if ([(IDSBlastDoorMessageContext *)self isInvitationService])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [v3 stringWithFormat:@"<IDSBlastDoorMessageContext %p>: topic %@ command %@ isInviationService %@ payloadType %ld", self, v4, v5, v6, -[IDSBlastDoorMessageContext payloadType](self, "payloadType")];

  return v7;
}

@end