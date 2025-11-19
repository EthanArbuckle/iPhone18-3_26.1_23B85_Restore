@interface IDSGroupSessionUnicastParameter
- (BOOL)isEqual:(id)a3;
- (IDSGroupSessionUnicastParameter)initWithCoder:(id)a3;
- (IDSGroupSessionUnicastParameter)initWithConnectedSocket:(int)a3 dataMode:(int64_t)a4 connectionIndex:(unint64_t)a5;
- (IDSGroupSessionUnicastParameter)initWithGroupSessionID:(id)a3 localParticipantID:(unint64_t)a4 remoteParticipantID:(unint64_t)a5 dataMode:(int64_t)a6 connectionIndex:(unint64_t)a7;
- (IDSGroupSessionUnicastParameter)initWithGroupSessionID:(id)a3 localParticipantID:(unint64_t)a4 remoteParticipantID:(unint64_t)a5 salt:(id)a6 dataMode:(int64_t)a7 connectionIndex:(unint64_t)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_requestNWConnectionforIDSGroupSessionUnicastParameter:(id)a3;
- (void)_setUpNWConnectionforTesting:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSGroupSessionUnicastParameter

- (IDSGroupSessionUnicastParameter)initWithGroupSessionID:(id)a3 localParticipantID:(unint64_t)a4 remoteParticipantID:(unint64_t)a5 dataMode:(int64_t)a6 connectionIndex:(unint64_t)a7
{
  v12 = MEMORY[0x1E695DEF0];
  v13 = a3;
  v14 = [v12 data];
  v15 = [(IDSGroupSessionUnicastParameter *)self initWithGroupSessionID:v13 localParticipantID:a4 remoteParticipantID:a5 salt:v14 dataMode:a6 connectionIndex:a7];

  return v15;
}

- (IDSGroupSessionUnicastParameter)initWithGroupSessionID:(id)a3 localParticipantID:(unint64_t)a4 remoteParticipantID:(unint64_t)a5 salt:(id)a6 dataMode:(int64_t)a7 connectionIndex:(unint64_t)a8
{
  v61 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a6;
  v56.receiver = self;
  v56.super_class = IDSGroupSessionUnicastParameter;
  v17 = [(IDSGroupSessionUnicastParameter *)&v56 init];
  v18 = v17;
  if (!v17)
  {
LABEL_31:
    v23 = v18;
    goto LABEL_32;
  }

  objc_storeStrong(&v17->_groupSessionID, a3);
  v18->_localParticipantID = a4;
  v18->_remoteParticipantID = a5;
  objc_storeStrong(&v18->_salt, a6);
  v18->_connectionIndex = a8;
  v18->_dataMode = a7;
  v18->_socket = -1;
  v19 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
    [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a5];
    v22 = v21 = v15;
    *buf = 138412546;
    v58 = v20;
    v59 = 2112;
    v60 = v22;
    _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "Creating IDSGroupSessionUnicastParameter with local id %@ and remote id %@", buf, 0x16u);

    v15 = v21;
  }

  v23 = 0;
  if (a7 <= 2)
  {
    if (!a7)
    {
      v24 = a8 - 25536;
      v25 = -20536;
      goto LABEL_15;
    }

    if (a7 != 1)
    {
      if (a7 == 2)
      {
        v24 = a8 - 15536;
        v25 = -10536;
LABEL_15:
        v26 = a8 + v25;
LABEL_19:
        if (a4 <= a5)
        {
          v28 = v26;
        }

        else
        {
          v28 = v24;
        }

        if (a4 <= a5)
        {
          v29 = v24;
        }

        else
        {
          v29 = v26;
        }

        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v28];
        host = nw_endpoint_create_host("::", [v30 UTF8String]);
        endpoint = v18->_endpoint;
        v18->_endpoint = host;

        v33 = MEMORY[0x19A8BB9F0]();
        parameters = v18->_parameters;
        v18->_parameters = v33;

        v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v29];
        v36 = nw_endpoint_create_host("::", [v35 UTF8String]);

        v37 = objc_alloc_init(MEMORY[0x1E69A5298]);
        [v37 setMultiplexer:@"groupsession"];
        [v37 setSessionID:v18->_groupSessionID];
        [v37 setParticipantID:v18->_remoteParticipantID];
        [v37 setSalt:v18->_salt];
        v38 = v18->_parameters;
        v39 = [v37 stringRepresentation];
        [v39 UTF8String];
        nw_parameters_set_account_id();

        MEMORY[0x19A8BBA70](v18->_parameters, v36);
        v40 = v18->_parameters;
        nw_parameters_set_indefinite();
        v41 = xpc_array_create(0, 0);
        v42 = xpc_array_create(0, 0);
        v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%u", *MEMORY[0x1E69A4EC8], getuid()];
        xpc_array_set_string(v41, 0xFFFFFFFFFFFFFFFFLL, [v43 UTF8String]);

        xpc_array_set_string(v42, 0xFFFFFFFFFFFFFFFFLL, [*MEMORY[0x1E69A4ED0] UTF8String]);
        if (((1 << a7) & 9) == 0 && ((1 << a7) & 0x12) == 0)
        {
          v44 = nw_parameters_copy_default_protocol_stack(v18->_parameters);
          v55 = v36;
          v45 = v16;
          v46 = v15;
          v47 = sub_195A15A18();
          options = nw_framer_create_options(v47);
          nw_protocol_stack_prepend_application_protocol(v44, options);

          v15 = v46;
          v16 = v45;
          v36 = v55;
        }

        v49 = v18->_parameters;
        nw_parameters_set_data_mode();
        v50 = v18->_parameters;
        nw_parameters_set_required_netagent_classes();
        if ((a7 - 3) <= 2)
        {
          v51 = v18->_parameters;
          v52 = IDSRealTimeContext();
          nw_parameters_set_context();
        }

        goto LABEL_31;
      }

      goto LABEL_32;
    }

    v27 = 30000;
LABEL_18:
    v26 = a8 + v27;
    v24 = a8 + v27;
    goto LABEL_19;
  }

  switch(a7)
  {
    case 3:
      v24 = a8 - 23536;
      v25 = -18536;
      goto LABEL_15;
    case 4:
      v27 = 32000;
      goto LABEL_18;
    case 5:
      v24 = a8 - 13536;
      v25 = -8536;
      goto LABEL_15;
  }

LABEL_32:

  v53 = *MEMORY[0x1E69E9840];
  return v23;
}

- (IDSGroupSessionUnicastParameter)initWithConnectedSocket:(int)a3 dataMode:(int64_t)a4 connectionIndex:(unint64_t)a5
{
  v14.receiver = self;
  v14.super_class = IDSGroupSessionUnicastParameter;
  v8 = [(IDSGroupSessionUnicastParameter *)&v14 init];
  v9 = v8;
  if (v8)
  {
    groupSessionID = v8->_groupSessionID;
    v8->_groupSessionID = 0;

    *&v9->_localParticipantID = xmmword_195B54080;
    v9->_connectionIndex = a5;
    v9->_dataMode = a4;
    v9->_socket = a3;
    endpoint = v9->_endpoint;
    v9->_endpoint = 0;

    parameters = v9->_parameters;
    v9->_parameters = 0;
  }

  return v9;
}

- (void)_requestNWConnectionforIDSGroupSessionUnicastParameter:(id)a3
{
  v10 = a3;
  if ([(IDSGroupSessionUnicastParameter *)self socket]< 1)
  {
    v4 = [(IDSGroupSessionUnicastParameter *)self endpoint];
    v5 = [(IDSGroupSessionUnicastParameter *)self parameters];
    v6 = nw_connection_create(v4, v5);

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

    if (v10)
    {
      v10[2](v10, v6, v7);
    }
  }

  else
  {
    [(IDSGroupSessionUnicastParameter *)self _setUpNWConnectionforTesting:v10];
  }
}

- (void)_setUpNWConnectionforTesting:(id)a3
{
  v12 = a3;
  if ([(IDSGroupSessionUnicastParameter *)self dataMode]&& [(IDSGroupSessionUnicastParameter *)self dataMode]!= 1)
  {
    if ([(IDSGroupSessionUnicastParameter *)self dataMode]== 2)
    {
      secure_tcp = nw_parameters_create_secure_tcp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
      v7 = nw_parameters_copy_default_protocol_stack(secure_tcp);
      v8 = sub_195A15A18();
      options = nw_framer_create_options(v8);
      nw_protocol_stack_prepend_application_protocol(v7, options);

      [(IDSGroupSessionUnicastParameter *)self socket];
      v4 = nw_connection_create_with_connected_socket_and_parameters();

      if (v4)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    [(IDSGroupSessionUnicastParameter *)self socket];
    v4 = nw_connection_create_with_connected_socket();
    if (v4)
    {
LABEL_4:
      v5 = 0;
      goto LABEL_8;
    }
  }

  v10 = objc_alloc(MEMORY[0x1E695DF20]);
  v11 = [v10 initWithObjectsAndKeys:{@"Unable to create nw_connection. The failure was caused due to invalid parameters or not being able to extract the address from the socket.", *MEMORY[0x1E696A578], 0}];
  v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:42 userInfo:v11];

  v4 = 0;
LABEL_8:
  if (v12)
  {
    v12[2](v12, v4, v5);
  }
}

- (void)encodeWithCoder:(id)a3
{
  groupSessionID = self->_groupSessionID;
  v5 = a3;
  [v5 encodeObject:groupSessionID forKey:@"groupSessionID"];
  [v5 encodeInt64:self->_localParticipantID forKey:@"localParticipantID"];
  [v5 encodeInt64:self->_remoteParticipantID forKey:@"remoteParticipantID"];
  [v5 encodeObject:self->_salt forKey:@"salt"];
  [v5 encodeInt64:self->_connectionIndex forKey:@"connectionIndex"];
  [v5 encodeInt:LODWORD(self->_dataMode) forKey:@"dataMode"];
}

- (IDSGroupSessionUnicastParameter)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupSessionID"];
  v6 = [v4 decodeInt64ForKey:@"localParticipantID"];
  v7 = [v4 decodeInt64ForKey:@"remoteParticipantID"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"salt"];
  v9 = [v4 decodeInt64ForKey:@"connectionIndex"];
  v10 = [v4 decodeIntForKey:@"dataMode"];

  v11 = [(IDSGroupSessionUnicastParameter *)self initWithGroupSessionID:v5 localParticipantID:v6 remoteParticipantID:v7 salt:v8 dataMode:v10 connectionIndex:v9];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      groupSessionID = self->_groupSessionID;
      v7 = [(IDSGroupSessionUnicastParameter *)v5 groupSessionID];
      if ([(NSString *)groupSessionID isEqual:v7]&& (localParticipantID = self->_localParticipantID, localParticipantID == [(IDSGroupSessionUnicastParameter *)v5 localParticipantID]) && (remoteParticipantID = self->_remoteParticipantID, remoteParticipantID == [(IDSGroupSessionUnicastParameter *)v5 remoteParticipantID]) && (connectionIndex = self->_connectionIndex, connectionIndex == [(IDSGroupSessionUnicastParameter *)v5 connectionIndex]))
      {
        dataMode = self->_dataMode;
        v12 = dataMode == [(IDSGroupSessionUnicastParameter *)v5 dataMode];
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
  v3 = self->_dataMode + 32 * ([(NSString *)self->_groupSessionID hash]+ 31);
  salt = self->_salt;
  v5 = self->_remoteParticipantID + 32 * (self->_localParticipantID + 32 * (self->_connectionIndex + 32 * v3));
  return [(NSData *)salt hash]+ 32 * v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [IDSGroupSessionUnicastParameter alloc];
  groupSessionID = self->_groupSessionID;
  localParticipantID = self->_localParticipantID;
  remoteParticipantID = self->_remoteParticipantID;
  salt = self->_salt;
  connectionIndex = self->_connectionIndex;
  dataMode = self->_dataMode;

  return [(IDSGroupSessionUnicastParameter *)v4 initWithGroupSessionID:groupSessionID localParticipantID:localParticipantID remoteParticipantID:remoteParticipantID salt:salt dataMode:dataMode connectionIndex:connectionIndex];
}

@end