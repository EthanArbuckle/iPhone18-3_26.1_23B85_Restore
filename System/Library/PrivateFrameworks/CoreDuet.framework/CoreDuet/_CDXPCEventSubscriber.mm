@interface _CDXPCEventSubscriber
- (BOOL)isEqual:(id)a3;
- (NSString)clientIdentifier;
- (_CDXPCEventSubscriber)initWithToken:(unint64_t)a3 descriptor:(id)a4 userID:(unsigned int)a5 streamName:(id)a6;
- (id)description;
@end

@implementation _CDXPCEventSubscriber

- (_CDXPCEventSubscriber)initWithToken:(unint64_t)a3 descriptor:(id)a4 userID:(unsigned int)a5 streamName:(id)a6
{
  v11 = a4;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = _CDXPCEventSubscriber;
  v13 = [(_CDXPCEventSubscriber *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_token = a3;
    objc_storeStrong(&v13->_descriptor, a4);
    v14->_uid = a5;
    objc_storeStrong(&v14->_streamName, a6);
  }

  return v14;
}

- (NSString)clientIdentifier
{
  descriptor = self->_descriptor;
  if (descriptor)
  {
    v3 = xpc_dictionary_get_value(descriptor, "client-identifier");
    v4 = v3;
    if (v3 && MEMORY[0x193B01300](v3) == MEMORY[0x1E69E9F10] && (string_ptr = xpc_string_get_string_ptr(v4)) != 0)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string_ptr];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      token = self->_token;
      v6 = token == [(_CDXPCEventSubscriber *)v4 token];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)description
{
  v3 = self->_descriptor;
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x193B01150](v3);
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    streamName = self->_streamName;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_token];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_uid];
    v11 = [v6 stringWithFormat:@"<<%@: %p>: { streamName=%@, token=%@, uid=%@, descriptor=%s", v7, self, streamName, v9, v10, v5];

    if (v5)
    {
      free(v5);
    }
  }

  else
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v14 = self->_streamName;
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_token];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_uid];
    v11 = [v12 stringWithFormat:@"<<%@: %p>: { streamName=%@, token=%@, uid=%@", v13, self, v14, v15, v16];
  }

  return v11;
}

@end