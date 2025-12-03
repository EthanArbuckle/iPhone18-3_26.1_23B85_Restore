@interface IDSGroupSessionBroadcastParameter
- (BOOL)isEqual:(id)equal;
- (IDSGroupSessionBroadcastParameter)initWithCoder:(id)coder;
- (IDSGroupSessionBroadcastParameter)initWithGroupSessionID:(id)d salt:(id)salt serviceName:(id)name;
- (IDSGroupSessionBroadcastParameter)initWithGroupSessionID:(id)d serviceName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_requestNWConnectionforIDSGroupSessionBroadcastParameter:(id)parameter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSGroupSessionBroadcastParameter

- (IDSGroupSessionBroadcastParameter)initWithGroupSessionID:(id)d serviceName:(id)name
{
  v6 = MEMORY[0x1E695DEF0];
  nameCopy = name;
  dCopy = d;
  data = [v6 data];
  v10 = [(IDSGroupSessionBroadcastParameter *)self initWithGroupSessionID:dCopy salt:data serviceName:nameCopy];

  return v10;
}

- (IDSGroupSessionBroadcastParameter)initWithGroupSessionID:(id)d salt:(id)salt serviceName:(id)name
{
  v35 = *MEMORY[0x1E69E9840];
  dCopy = d;
  nameCopy = name;
  v33.receiver = self;
  v33.super_class = IDSGroupSessionBroadcastParameter;
  v10 = [(IDSGroupSessionBroadcastParameter *)&v33 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_groupSessionID, d);
    objc_storeStrong(&v11->_serviceName, name);
    v12 = [nameCopy dataUsingEncoding:4];
    memset(md, 170, 20);
    CC_SHA1([v12 bytes], objc_msgSend(v12, "length"), md);
    v13 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:20];
    v14 = *[v13 bytes];

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v14];
    host = nw_endpoint_create_host("::", [v15 UTF8String]);
    endpoint = v11->_endpoint;
    v11->_endpoint = host;

    v18 = MEMORY[0x19A8BB9F0]();
    parameters = v11->_parameters;
    v11->_parameters = v18;

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v14];
    v21 = nw_endpoint_create_host("::", [v20 UTF8String]);

    v22 = objc_alloc_init(MEMORY[0x1E69A5298]);
    [v22 setMultiplexer:@"groupsession"];
    [v22 setSessionID:v11->_groupSessionID];
    [v22 setParticipantID:0];
    [v22 setSalt:v11->_salt];
    v23 = v11->_parameters;
    stringRepresentation = [v22 stringRepresentation];
    [stringRepresentation UTF8String];
    nw_parameters_set_account_id();

    MEMORY[0x19A8BBA70](v11->_parameters, v21);
    v25 = v11->_parameters;
    nw_parameters_set_indefinite();
    v26 = xpc_array_create(0, 0);
    v27 = xpc_array_create(0, 0);
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%u", *MEMORY[0x1E69A4EC8], getuid()];
    xpc_array_set_string(v26, 0xFFFFFFFFFFFFFFFFLL, [v28 UTF8String]);

    xpc_array_set_string(v27, 0xFFFFFFFFFFFFFFFFLL, [*MEMORY[0x1E69A4ED0] UTF8String]);
    v29 = v11->_parameters;
    nw_parameters_set_data_mode();
    v30 = v11->_parameters;
    nw_parameters_set_required_netagent_classes();
  }

  v31 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)_requestNWConnectionforIDSGroupSessionBroadcastParameter:(id)parameter
{
  parameterCopy = parameter;
  endpoint = [(IDSGroupSessionBroadcastParameter *)self endpoint];
  parameters = [(IDSGroupSessionBroadcastParameter *)self parameters];
  v6 = nw_connection_create(endpoint, parameters);

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E695DF20]);
    v9 = [v8 initWithObjectsAndKeys:{@"Unable to create nw_connection. The failure was caused due to invalid parameters or not being able to extract the address from the socket.", *MEMORY[0x1E696A578], 0}];
    v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:42 userInfo:v9];
  }

  if (parameterCopy)
  {
    parameterCopy[2](parameterCopy, v6, v7);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      groupSessionID = self->_groupSessionID;
      groupSessionID = [(IDSGroupSessionBroadcastParameter *)v5 groupSessionID];
      if ([(NSString *)groupSessionID isEqual:groupSessionID])
      {
        salt = self->_salt;
        salt = [(IDSGroupSessionBroadcastParameter *)v5 salt];
        if ([(NSData *)salt isEqual:salt])
        {
          serviceName = self->_serviceName;
          serviceName = [(IDSGroupSessionBroadcastParameter *)v5 serviceName];
          v12 = [(NSString *)serviceName isEqual:serviceName];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_groupSessionID hash];
  v4 = [(NSString *)self->_serviceName hash]^ v3;
  return v4 ^ [(NSData *)self->_salt hash];
}

- (void)encodeWithCoder:(id)coder
{
  groupSessionID = self->_groupSessionID;
  coderCopy = coder;
  [coderCopy encodeObject:groupSessionID forKey:@"groupSessionID"];
  [coderCopy encodeObject:self->_salt forKey:@"salt"];
  [coderCopy encodeObject:self->_serviceName forKey:@"serviceName"];
}

- (IDSGroupSessionBroadcastParameter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupSessionID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"salt"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceName"];

  v8 = [(IDSGroupSessionBroadcastParameter *)self initWithGroupSessionID:v5 salt:v6 serviceName:v7];
  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [IDSGroupSessionBroadcastParameter alloc];
  groupSessionID = self->_groupSessionID;
  salt = self->_salt;
  serviceName = self->_serviceName;

  return [(IDSGroupSessionBroadcastParameter *)v4 initWithGroupSessionID:groupSessionID salt:salt serviceName:serviceName];
}

@end