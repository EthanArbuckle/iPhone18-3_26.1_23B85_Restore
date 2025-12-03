@interface IDSGroupSessionUnicastConnector
+ (id)extractDictionaryFromDataBlobFrom:(id)from error:(id *)error;
+ (void)requestNWConnectionToVirtualParticipant:(unint64_t)participant forSession:(id)session completionHandler:(id)handler;
+ (void)requestNWConnectionWithDataBlob:(id)blob completionHandler:(id)handler;
- (BOOL)isEqual:(id)equal;
- (IDSGroupSessionUnicastConnector)initWithCoder:(id)coder;
- (IDSGroupSessionUnicastConnector)initWithGroupSessionID:(id)d participantID:(unint64_t)iD dataMode:(int64_t)mode;
- (IDSGroupSessionUnicastConnector)initWithGroupSessionIDAlias:(id)alias participantIDAlias:(unint64_t)dAlias salt:(id)salt dataMode:(int64_t)mode;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)listenForIncomingConnection:(id)connection;
- (void)requestDataBlob:(id)blob;
@end

@implementation IDSGroupSessionUnicastConnector

- (IDSGroupSessionUnicastConnector)initWithGroupSessionID:(id)d participantID:(unint64_t)iD dataMode:(int64_t)mode
{
  v8 = MEMORY[0x1E695DEF0];
  dCopy = d;
  data = [v8 data];
  v11 = [(IDSGroupSessionUnicastConnector *)self initWithGroupSessionIDAlias:dCopy participantIDAlias:iD salt:data dataMode:mode];

  return v11;
}

- (IDSGroupSessionUnicastConnector)initWithGroupSessionIDAlias:(id)alias participantIDAlias:(unint64_t)dAlias salt:(id)salt dataMode:(int64_t)mode
{
  aliasCopy = alias;
  saltCopy = salt;
  v23.receiver = self;
  v23.super_class = IDSGroupSessionUnicastConnector;
  v12 = [(IDSGroupSessionUnicastConnector *)&v23 init];
  if (v12)
  {
    v13 = [aliasCopy copy];
    groupSessionIDAlias = v12->_groupSessionIDAlias;
    v12->_groupSessionIDAlias = v13;

    v12->_participantIDAlias = dAlias;
    v15 = [saltCopy copy];
    salt = v12->_salt;
    v12->_salt = v15;

    connectionReadyCallback = v12->_connectionReadyCallback;
    v12->_dataMode = mode;
    v12->_connectionReadyCallback = 0;

    cachedConnection = v12->_cachedConnection;
    v12->_cachedConnection = 0;

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("IDSGroupSessionUnicastConnector", v19);
    queue = v12->_queue;
    v12->_queue = v20;
  }

  return v12;
}

+ (id)extractDictionaryFromDataBlobFrom:(id)from error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v6 = MEMORY[0x1E696ACD0];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v7 setWithObjects:{v8, v9, v10, objc_opt_class(), 0}];
  v12 = [v6 _strictlyUnarchivedObjectOfClasses:v11 fromData:fromCopy error:error];

  if (v12)
  {
    v13 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v12;
      _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "extractDictionaryFromDataBlobFrom: decoded %@", buf, 0xCu);
    }

    v14 = [v12 objectForKeyedSubscript:@"psk"];
    v15 = [v14 length] == 32;

    if (!v15)
    {
      v16 = objc_alloc(MEMORY[0x1E695DF20]);
      v17 = [v16 initWithObjectsAndKeys:{@"PreSharedKey has Unexpected size.", *MEMORY[0x1E696A578], 0}];
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:42 userInfo:v17];

      v12 = 0;
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)requestDataBlob:(id)blob
{
  blobCopy = blob;
  v5 = MEMORY[0x19A8BB9F0]();
  v6 = xpc_array_create(0, 0);
  v7 = xpc_array_create(0, 0);
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%u", *MEMORY[0x1E69A4EC8], getuid()];
  xpc_array_set_string(v6, 0xFFFFFFFFFFFFFFFFLL, [v8 UTF8String]);

  xpc_array_set_string(v7, 0xFFFFFFFFFFFFFFFFLL, [*MEMORY[0x1E69A4ED0] UTF8String]);
  nw_parameters_set_required_netagent_classes();
  dataMode = self->_dataMode;
  if (dataMode > 5)
  {
    v27 = objc_alloc(MEMORY[0x1E695DF20]);
    v28 = [v27 initWithObjectsAndKeys:{@"Unknown parameter", *MEMORY[0x1E696A578], 0}];
    v29 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:42 userInfo:v28];
    blobCopy[2](blobCopy, 0, v29);
  }

  else
  {
    if (((1 << dataMode) & 9) == 0 && ((1 << dataMode) & 0x12) == 0)
    {
      v10 = nw_parameters_copy_default_protocol_stack(v5);
      v11 = sub_195A15A18();
      options = nw_framer_create_options(v11);
      nw_protocol_stack_prepend_application_protocol(v10, options);

      dataMode = self->_dataMode;
    }

    if (dataMode - 3 <= 2)
    {
      v13 = IDSRealTimeContext();
      nw_parameters_set_context();
    }

    nw_parameters_set_data_mode();
    v14 = objc_alloc_init(MEMORY[0x1E69A5298]);
    [v14 setMultiplexer:@"groupsession"];
    [v14 setSessionID:self->_groupSessionIDAlias];
    [v14 setSalt:self->_salt];
    stringRepresentation = [v14 stringRepresentation];
    [stringRepresentation UTF8String];
    nw_parameters_set_account_id();

    v16 = [MEMORY[0x1E695DF88] dataWithLength:32];
    if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x20uLL, [v16 mutableBytes]))
    {
      v17 = objc_alloc(MEMORY[0x1E695DF20]);
      v18 = [v17 initWithObjectsAndKeys:{@"Unable to create PSK.", *MEMORY[0x1E696A578], 0}];
      v19 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:42 userInfo:v18];
      blobCopy[2](blobCopy, 0, v19);
    }

    else
    {
      v20 = nw_parameters_copy_default_protocol_stack(v5);
      v31 = v6;
      v21 = nw_tls_create_options();
      v30 = v7;
      v22 = v21;
      v23 = dispatch_data_create([v16 bytes], 0x20uLL, 0, 0);
      v24 = dispatch_data_create("IDSToolTestOnlyPSKIdentity", 0x1AuLL, 0, 0);
      sec_protocol_options_add_pre_shared_key(v22, v23, v24);

      nw_protocol_stack_append_application_protocol();
      v25 = nw_listener_create_with_port("0", v5);
      nw_listener_set_queue(v25, self->_queue);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = sub_195A9CF90;
      handler[3] = &unk_1E74415C0;
      v34 = v25;
      selfCopy = self;
      v36 = v16;
      v37 = blobCopy;
      v26 = v25;
      nw_listener_set_state_changed_handler(v26, handler);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = sub_195A9D17C;
      v32[3] = &unk_1E74415E8;
      v32[4] = self;
      nw_listener_set_new_connection_handler(v26, v32);
      nw_listener_start(v26);

      v7 = v30;
      v6 = v31;
    }
  }
}

- (void)listenForIncomingConnection:(id)connection
{
  connectionCopy = connection;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A9D28C;
  v7[3] = &unk_1E743EAA8;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_async(queue, v7);
}

+ (void)requestNWConnectionWithDataBlob:(id)blob completionHandler:(id)handler
{
  v67 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v62 = 0;
  v6 = [IDSGroupSessionUnicastConnector extractDictionaryFromDataBlobFrom:blob error:&v62];
  v7 = v62;
  if (v7)
  {
    handlerCopy[2](handlerCopy, 0, v7);
  }

  v58 = handlerCopy;
  v8 = [v6 objectForKeyedSubscript:@"groupSessionIDAlias"];
  v9 = [v6 objectForKeyedSubscript:@"participantIDAlias"];
  v60 = [v6 objectForKeyedSubscript:@"salt"];
  v10 = [v6 objectForKeyedSubscript:@"dataMode"];
  integerValue = [v10 integerValue];

  v59 = [v6 objectForKeyedSubscript:@"psk"];
  v12 = [v6 objectForKeyedSubscript:@"listeningPort"];
  integerValue2 = [v12 integerValue];

  v13 = MEMORY[0x19A8BB9F0]();
  v14 = xpc_array_create(0, 0);
  v15 = xpc_array_create(0, 0);
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%u", *MEMORY[0x1E69A4EC8], getuid()];
  xpc_array_set_string(v14, 0xFFFFFFFFFFFFFFFFLL, [v16 UTF8String]);

  xpc_array_set_string(v15, 0xFFFFFFFFFFFFFFFFLL, [*MEMORY[0x1E69A4ED0] UTF8String]);
  v56 = v15;
  v57 = v14;
  nw_parameters_set_required_netagent_classes();
  if (integerValue > 5)
  {
    v48 = objc_alloc(MEMORY[0x1E695DF20]);
    v24 = [v48 initWithObjectsAndKeys:{@"Unknown parameter", *MEMORY[0x1E696A578], 0}];
    v46 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:42 userInfo:v24];
    v42 = v58;
    (*(v58 + 2))(v58, 0, v46);
  }

  else
  {
    if (((1 << integerValue) & 9) != 0)
    {
      v18 = 0x1E696A000;
      v17 = v60;
    }

    else
    {
      v17 = v60;
      if (((1 << integerValue) & 0x12) == 0)
      {
        v19 = nw_parameters_copy_default_protocol_stack(v13);
        v20 = sub_195A15A18();
        v21 = v9;
        options = nw_framer_create_options(v20);
        nw_protocol_stack_prepend_application_protocol(v19, options);

        v9 = v21;
      }

      v18 = 0x1E696A000uLL;
    }

    if (integerValue - 3 <= 2)
    {
      v23 = IDSRealTimeContext();
      nw_parameters_set_context();
    }

    v52 = v7;
    v53 = v6;
    nw_parameters_set_data_mode();
    v24 = objc_alloc_init(MEMORY[0x1E69A5298]);
    [v24 setMultiplexer:@"groupsession"];
    v51 = v8;
    [v24 setSessionID:v8];
    [MEMORY[0x1E696AE88] scannerWithString:v9];
    v49 = v61 = 0;
    [v49 scanUnsignedLongLong:&v61];
    [v24 setParticipantID:v61];
    v25 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      participantID = [v24 participantID];
      *buf = 134218242;
      v64 = participantID;
      v65 = 2112;
      v66 = v9;
      _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "requestNWConnectionWithDataBlob: decoded participantIDAlias %llu from %@", buf, 0x16u);
    }

    v50 = v9;

    [v24 setSalt:v17];
    stringRepresentation = [v24 stringRepresentation];
    [stringRepresentation UTF8String];
    nw_parameters_set_account_id();

    v28 = [*(v18 + 3776) stringWithFormat:@"%d", integerValue2];
    v29 = v18;
    host = nw_endpoint_create_host("::", [v28 UTF8String]);

    v31 = [*(v29 + 3776) stringWithFormat:@"%d", integerValue2 + 1];
    v32 = nw_endpoint_create_host("::", [v31 UTF8String]);

    v55 = v32;
    MEMORY[0x19A8BBA70](v13, v32);
    v33 = nw_parameters_copy_default_protocol_stack(v13);
    v34 = nw_tls_create_options();
    v35 = v34;
    v36 = dispatch_data_create([v59 bytes], 0x20uLL, 0, 0);
    v37 = dispatch_data_create("IDSToolTestOnlyPSKIdentity", 0x1AuLL, 0, 0);
    sec_protocol_options_add_pre_shared_key(v35, v36, v37);

    nw_protocol_stack_append_application_protocol();
    v38 = v13;
    v39 = host;
    v40 = v38;
    v41 = nw_connection_create(host, v38);
    v42 = v58;
    (*(v58 + 2))(v58, v41, 0);
    v43 = 0;
    if (!v41)
    {
      v44 = objc_alloc(MEMORY[0x1E695DF20]);
      v45 = [v44 initWithObjectsAndKeys:{@"Unable to create nw_connection. The failure was caused due to invalid parameters or not being able to extract the address from the socket.", *MEMORY[0x1E696A578], 0}];
      v43 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:42 userInfo:v45];

      v42 = v58;
    }

    (v42)[2](v42, v41, v43);

    v7 = v52;
    v6 = v53;
    v9 = v50;
    v8 = v51;
    v46 = v49;
    v13 = v40;
  }

  v47 = *MEMORY[0x1E69E9840];
}

+ (void)requestNWConnectionToVirtualParticipant:(unint64_t)participant forSession:(id)session completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = *MEMORY[0x1E6977EB8];
  sessionCopy = session;
  quic_stream = nw_parameters_create_quic_stream();
  v10 = xpc_array_create(0, 0);
  v11 = xpc_array_create(0, 0);
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%u", *MEMORY[0x1E69A4EC8], getuid()];
  xpc_array_set_string(v10, 0xFFFFFFFFFFFFFFFFLL, [v12 UTF8String]);

  xpc_array_set_string(v11, 0xFFFFFFFFFFFFFFFFLL, [*MEMORY[0x1E69A4ED0] UTF8String]);
  nw_parameters_set_required_netagent_classes();
  participant = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", participant];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"groupsession:%@:ids:%@:L", sessionCopy, participant];

  [v14 UTF8String];
  nw_parameters_set_account_id();
  3030 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 3030];
  host = nw_endpoint_create_host("::", [3030 UTF8String]);

  v17 = nw_endpoint_create_host("::", "0");
  MEMORY[0x19A8BBA70](quic_stream, v17);
  v18 = nw_connection_create(host, quic_stream);
  v19 = 0;
  if (!v18)
  {
    v20 = objc_alloc(MEMORY[0x1E695DF20]);
    v21 = [v20 initWithObjectsAndKeys:{@"Unable to create connection to the virtual participant.", *MEMORY[0x1E696A578], 0}];
    v19 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:42 userInfo:v21];
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v18, v19);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      groupSessionIDAlias = [(IDSGroupSessionUnicastConnector *)v5 groupSessionIDAlias];
      groupSessionIDAlias2 = [(IDSGroupSessionUnicastConnector *)self groupSessionIDAlias];
      v8 = [groupSessionIDAlias isEqual:groupSessionIDAlias2];

      if (v8 && (v9 = [(IDSGroupSessionUnicastConnector *)v5 participantIDAlias], v9 == [(IDSGroupSessionUnicastConnector *)self participantIDAlias]))
      {
        dataMode = [(IDSGroupSessionUnicastConnector *)v5 dataMode];
        v11 = dataMode == [(IDSGroupSessionUnicastConnector *)self dataMode];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  groupSessionIDAlias = [(IDSGroupSessionUnicastConnector *)self groupSessionIDAlias];
  v4 = [groupSessionIDAlias hash];
  salt = [(IDSGroupSessionUnicastConnector *)self salt];
  v6 = [salt hash] ^ v4;
  participantIDAlias = [(IDSGroupSessionUnicastConnector *)self participantIDAlias];
  v8 = [(IDSGroupSessionUnicastConnector *)self dataMode]+ participantIDAlias;

  return v6 ^ v8;
}

- (void)encodeWithCoder:(id)coder
{
  groupSessionIDAlias = self->_groupSessionIDAlias;
  coderCopy = coder;
  [coderCopy encodeObject:groupSessionIDAlias forKey:@"groupSessionIDAlias"];
  [coderCopy encodeInt64:self->_participantIDAlias forKey:@"participantIDAlias"];
  [coderCopy encodeObject:self->_salt forKey:@"salt"];
  [coderCopy encodeInt:LODWORD(self->_dataMode) forKey:@"dataMode"];
}

- (IDSGroupSessionUnicastConnector)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupSessionIDAlias"];
  v6 = [coderCopy decodeInt64ForKey:@"participantIDAlias"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"salt"];
  v8 = [coderCopy decodeIntForKey:@"dataMode"];

  v9 = [(IDSGroupSessionUnicastConnector *)self initWithGroupSessionIDAlias:v5 participantIDAlias:v6 salt:v7 dataMode:v8];
  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [IDSGroupSessionUnicastConnector alloc];
  groupSessionIDAlias = self->_groupSessionIDAlias;
  participantIDAlias = self->_participantIDAlias;
  salt = self->_salt;
  dataMode = self->_dataMode;

  return [(IDSGroupSessionUnicastConnector *)v4 initWithGroupSessionIDAlias:groupSessionIDAlias participantIDAlias:participantIDAlias salt:salt dataMode:dataMode];
}

@end