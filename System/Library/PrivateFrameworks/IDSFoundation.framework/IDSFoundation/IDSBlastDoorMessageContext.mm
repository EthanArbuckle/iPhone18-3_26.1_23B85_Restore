@interface IDSBlastDoorMessageContext
- (IDSBlastDoorMessageContext)initWithService:(id)service command:(id)command;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation IDSBlastDoorMessageContext

- (IDSBlastDoorMessageContext)initWithService:(id)service command:(id)command
{
  serviceCopy = service;
  commandCopy = command;
  v12.receiver = self;
  v12.super_class = IDSBlastDoorMessageContext;
  v8 = [(IDSBlastDoorMessageContext *)&v12 init];
  if (v8)
  {
    pushTopic = [serviceCopy pushTopic];
    topic = v8->_topic;
    v8->_topic = pushTopic;

    v8->_isInvitationService = [serviceCopy isInvitationService];
    objc_storeStrong(&v8->_command, command);
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
  topic = [(IDSBlastDoorMessageContext *)self topic];
  command = [(IDSBlastDoorMessageContext *)self command];
  if ([(IDSBlastDoorMessageContext *)self isInvitationService])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [v3 stringWithFormat:@"<IDSBlastDoorMessageContext %p>: topic %@ command %@ isInviationService %@ payloadType %ld", self, topic, command, v6, -[IDSBlastDoorMessageContext payloadType](self, "payloadType")];

  return v7;
}

@end