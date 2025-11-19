@interface MBMessage
+ (id)_allowedClasses;
+ (id)messageWithName:(id)a3 arguments:(id)a4;
+ (id)messageWithName:(id)a3 arguments:(id)a4 personaIdentifier:(id)a5;
- (MBMessage)initWithName:(id)a3 arguments:(id)a4;
- (NSString)description;
- (id)_initWithXPCObject:(id)a3;
- (id)_xpcObject;
- (void)_xpcObject;
- (void)archiver:(id)a3 didEncodeObject:(id)a4;
- (void)sendReply;
- (void)setError:(id)a3;
- (void)setReply:(id)a3;
- (void)setReplyError:(id)a3;
@end

@implementation MBMessage

- (id)_xpcObject
{
  xpcObject = self->_xpcObject;
  if (!xpcObject)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    v5 = self->_xpcObject;
    self->_xpcObject = v4;

    messageInfo = self->_messageInfo;
    v11 = 0;
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:messageInfo requiringSecureCoding:1 error:&v11];
    v8 = v11;
    if (!v7)
    {
      [(MBMessage *)&self->_messageInfo _xpcObject];
    }

    v9 = xpc_data_create([v7 bytes], objc_msgSend(v7, "length"));
    xpc_dictionary_set_value(self->_xpcObject, "messageInfo", v9);

    xpcObject = self->_xpcObject;
  }

  return xpcObject;
}

+ (id)_allowedClasses
{
  if (_allowedClasses_onceToken != -1)
  {
    +[MBMessage _allowedClasses];
  }

  v3 = _allowedClasses_sAllowedClasses;

  return v3;
}

uint64_t __28__MBMessage__allowedClasses__block_invoke()
{
  v30 = MEMORY[0x1E695DFD8];
  v29 = objc_opt_class();
  v28 = objc_opt_class();
  v27 = objc_opt_class();
  v26 = objc_opt_class();
  v25 = objc_opt_class();
  v24 = objc_opt_class();
  v23 = objc_opt_class();
  v22 = objc_opt_class();
  v21 = objc_opt_class();
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  _allowedClasses_sAllowedClasses = [v30 setWithObjects:{v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v13, v12, v11, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_initWithXPCObject:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = MBMessage;
  v6 = [(MBMessage *)&v22 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_xpcObject, a3);
    length = 0;
    data = xpc_dictionary_get_data(p_isa[2], "messageInfo", &length);
    if (data)
    {
      v9 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:data length:length freeWhenDone:0];
      v10 = 4;
      v11 = 3;
    }

    else
    {
      v12 = xpc_dictionary_get_data(p_isa[2], "replyInfo", &length);
      if (!v12)
      {
        v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"invalid xpc object" userInfo:0];
        objc_exception_throw(v20);
      }

      v9 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v12 length:length freeWhenDone:0];
      v10 = 3;
      v11 = 4;
    }

    v13 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v9 error:0];
    v14 = [objc_opt_class() _allowedClasses];
    v15 = [v13 decodeObjectOfClasses:v14 forKey:*MEMORY[0x1E696A508]];
    v16 = p_isa[v11];
    p_isa[v11] = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18 = p_isa[v10];
    p_isa[v10] = v17;
  }

  return p_isa;
}

+ (id)messageWithName:(id)a3 arguments:(id)a4 personaIdentifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[MBMessage alloc] initWithName:v9 arguments:v8];

  if (v7)
  {
    v11 = [(MBMessage *)v10 messageInfo];
    [v11 setObject:v7 forKeyedSubscript:@"personaIdentifier"];
  }

  return v10;
}

+ (id)messageWithName:(id)a3 arguments:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MBMessage alloc] initWithName:v6 arguments:v5];

  return v7;
}

- (MBMessage)initWithName:(id)a3 arguments:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [MBMessage initWithName:a2 arguments:self];
  }

  v17.receiver = self;
  v17.super_class = MBMessage;
  v9 = [(MBMessage *)&v17 init];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E695DF90]);
    v11 = [v7 copy];
    v12 = [v10 initWithObjectsAndKeys:{v11, @"name", 0}];
    messageInfo = v9->_messageInfo;
    v9->_messageInfo = v12;

    if (v8)
    {
      [(NSMutableDictionary *)v9->_messageInfo setObject:v8 forKeyedSubscript:@"arguments"];
    }

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    replyInfo = v9->_replyInfo;
    v9->_replyInfo = v14;
  }

  return v9;
}

- (void)setError:(id)a3
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_messageInfo setObject:a3 forKeyedSubscript:@"error"];
  }
}

- (void)archiver:(id)a3 didEncodeObject:(id)a4
{
  v4 = a4;
  if (MBIsInternalInstall())
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v6 isEqualToString:@"CKRecordID"];

    if (v7)
    {
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_FAULT, "Improper error sanitizing: CKRecordID leaked", &v15, 2u);
        _MBLog(@"F ", "Improper error sanitizing: CKRecordID leaked", v9, v10, v11, v12, v13, v14, v15);
      }
    }
  }
}

- (void)sendReply
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(MBMessage *)self replyError];
  v4 = xpc_dictionary_get_remote_connection(self->_xpcObject);
  reply = xpc_dictionary_create_reply(self->_xpcObject);
  v6 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v6 setDelegate:self];
  [v6 encodeObject:self->_replyInfo forKey:*MEMORY[0x1E696A508]];
  [v6 finishEncoding];
  v7 = [v6 encodedData];
  v8 = xpc_data_create([v7 bytes], objc_msgSend(v7, "length"));
  xpc_dictionary_set_value(reply, "replyInfo", v8);
  if (v3)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(MBMessage *)self name];
      *buf = 138543618;
      v20 = v10;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_1DEB5D000, v9, OS_LOG_TYPE_DEFAULT, "Sending reply for %{public}@: %@", buf, 0x16u);

      v11 = [(MBMessage *)self name];
      _MBLog(@"Df", "Sending reply for %{public}@: %@", v12, v13, v14, v15, v16, v17, v11);
    }
  }

  xpc_connection_send_message(v4, reply);

  v18 = *MEMORY[0x1E69E9840];
}

- (void)setReply:(id)a3
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_replyInfo setObject:a3 forKeyedSubscript:@"info"];
  }
}

- (void)setReplyError:(id)a3
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_replyInfo setObject:a3 forKeyedSubscript:@"error"];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = MBMessage;
  v4 = [(MBMessage *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ %@", v4, self->_messageInfo];

  return v5;
}

- (void)initWithName:(uint64_t)a1 arguments:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBConnection.m" lineNumber:284 description:@"must provide a name"];
}

- (void)_xpcObject
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *a1;
    *buf = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = a2;
    _os_log_impl(&dword_1DEB5D000, v4, OS_LOG_TYPE_ERROR, "Failed to archive the message (%@): %@", buf, 0x16u);
    _MBLog(@"E ", "Failed to archive the message (%@): %@", v6, v7, v8, v9, v10, v11, *a1);
  }

  __assert_rtn("[MBMessage _xpcObject]", "MBConnection.m", 363, "0");
}

@end