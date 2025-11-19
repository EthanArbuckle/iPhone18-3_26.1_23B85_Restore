@interface MIBUNWMessage
+ (id)sharedFramer;
- (MIBUNWMessage)initWithContent:(id)a3 andContext:(id)a4;
- (MIBUNWMessage)initWithType:(unsigned __int16)a3 andPayload:(id)a4;
- (id)createContent;
- (id)createContentContext;
- (void)createContent;
- (void)dealloc;
@end

@implementation MIBUNWMessage

+ (id)sharedFramer
{
  if (qword_27F9E4638 == -1)
  {
    v3 = _MergedGlobals_1;
  }

  else
  {
    +[MIBUNWMessage sharedFramer];
    v3 = _MergedGlobals_1;
  }

  return v3;
}

uint64_t __29__MIBUNWMessage_sharedFramer__block_invoke()
{
  _MergedGlobals_1 = nw_framer_create_definition("MIBUNWMessageProtocol", 0, &__block_literal_global_4);

  return MEMORY[0x2821F96F8]();
}

uint64_t __29__MIBUNWMessage_sharedFramer__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  input_handler[0] = MEMORY[0x277D85DD0];
  input_handler[1] = 3221225472;
  input_handler[2] = __29__MIBUNWMessage_sharedFramer__block_invoke_3;
  input_handler[3] = &unk_2798EC0B8;
  v3 = v2;
  v9 = v3;
  nw_framer_set_input_handler(v3, input_handler);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__MIBUNWMessage_sharedFramer__block_invoke_5;
  v6[3] = &unk_2798EC0E0;
  v7 = v3;
  v4 = v3;
  nw_framer_set_output_handler(v4, v6);

  return 1;
}

uint64_t __29__MIBUNWMessage_sharedFramer__block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = MEMORY[0x277D85DD0];
  while (1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2810000000;
    v14 = &unk_259B3F65A;
    v15 = 0;
    v16 = 0;
    v4 = *(a1 + 32);
    parse[0] = v3;
    parse[1] = 3221225472;
    parse[2] = __29__MIBUNWMessage_sharedFramer__block_invoke_4;
    parse[3] = &unk_2798EC090;
    parse[4] = &v11;
    parse[5] = 6;
    if (!nw_framer_parse_input(v4, 6uLL, 6uLL, 0, parse))
    {
      break;
    }

    v5 = nw_framer_message_create(*(a1 + 32));
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{*(v12 + 16), v9}];
    nw_framer_message_set_object_value(v5, "MIBUNWMessageType", v6);

    LOBYTE(v6) = nw_framer_deliver_input_no_copy(*(a1 + 32), *(v12 + 34), v5, 1);
    _Block_object_dispose(&v11, 8);
    if ((v6 & 1) == 0)
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  _Block_object_dispose(&v11, 8);
  v7 = 6;
LABEL_6:

  return v7;
}

unint64_t __29__MIBUNWMessage_sharedFramer__block_invoke_4(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  result = *(a1 + 40);
  if (result > a3)
  {
    return 0;
  }

  *(*(*(a1 + 32) + 8) + 32) = bswap32(*a2) >> 16;
  *(*(*(a1 + 32) + 8) + 34) = bswap32(*(a2 + 1));
  return result;
}

void __29__MIBUNWMessage_sharedFramer__block_invoke_5(uint64_t a1, uint64_t a2, void *a3, size_t a4)
{
  v6 = a3;
  v7 = malloc_type_malloc(6uLL, 0x3FA88BD9uLL);
  if (v7)
  {
    v8 = v7;
    v9 = nw_framer_message_copy_object_value(v6, "MIBUNWMessageType");
    *v8 = __rev16([v9 unsignedShortValue]);
    *(v8 + 2) = bswap32(a4);
    v10 = dispatch_data_create(v8, 6uLL, 0, *MEMORY[0x277D85CB0]);
    nw_framer_write_output_data(*(a1 + 32), v10);
    nw_framer_write_output_no_copy(*(a1 + 32), a4);

LABEL_3:
    return;
  }

  if (MIBUOnceToken != -1)
  {
    __29__MIBUNWMessage_sharedFramer__block_invoke_5_cold_1();
  }

  v11 = MIBUConnObj;
  if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_3;
  }

  __29__MIBUNWMessage_sharedFramer__block_invoke_5_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
}

void __29__MIBUNWMessage_sharedFramer__block_invoke_6()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (MIBUNWMessage)initWithType:(unsigned __int16)a3 andPayload:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = MIBUNWMessage;
  v7 = [(MIBUNWMessage *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = a3;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v6];
    payload = v8->_payload;
    v8->_payload = v9;
  }

  return v8;
}

- (MIBUNWMessage)initWithContent:(id)a3 andContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MIBUNWMessage sharedFramer];
  v9 = nw_content_context_copy_protocol_metadata(v7, v8);

  v10 = nw_framer_message_copy_object_value(v9, "MIBUNWMessageType");
  if (!v10)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNWMessage initWithContent:andContext:];
    }

    v14 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [(MIBUNWMessage *)v14 initWithContent:v15 andContext:v16, v17, v18, v19, v20, v21];
    }

    goto LABEL_16;
  }

  if (!v6)
  {
    v11 = 0;
    goto LABEL_10;
  }

  v25 = 0;
  v11 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:0 error:&v25];
  v12 = v25;
  v13 = v12;
  if (!v11)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNWMessage initWithContent:andContext:];
    }

    v23 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUNWMessage initWithContent:v13 andContext:v23];
    }

LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

LABEL_10:
  self = -[MIBUNWMessage initWithType:andPayload:](self, "initWithType:andPayload:", [v10 unsignedShortValue], v11);

  v22 = self;
LABEL_17:

  return v22;
}

void __44__MIBUNWMessage_initWithContent_andContext___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __44__MIBUNWMessage_initWithContent_andContext___block_invoke_18()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)dealloc
{
  syncSemaphore = self->_syncSemaphore;
  if (syncSemaphore)
  {
    dispatch_semaphore_signal(syncSemaphore);
  }

  v4.receiver = self;
  v4.super_class = MIBUNWMessage;
  [(MIBUNWMessage *)&v4 dealloc];
}

- (id)createContent
{
  payload = self->_payload;
  if (!payload)
  {
    v5 = [MEMORY[0x277CBEA90] data];
    goto LABEL_5;
  }

  v9 = 0;
  v3 = [MEMORY[0x277CCAC58] dataWithPropertyList:payload format:100 options:0 error:&v9];
  v4 = v9;
  v5 = v4;
  if (v3)
  {

    v5 = v3;
LABEL_5:
    v6 = [v5 _createDispatchData];
    goto LABEL_11;
  }

  if (MIBUOnceToken != -1)
  {
    [MIBUNWMessage createContent];
  }

  v7 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    [(MIBUNWMessage *)v5 createContent];
  }

  v6 = 0;
LABEL_11:

  return v6;
}

void __30__MIBUNWMessage_createContent__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (id)createContentContext
{
  v3 = nw_content_context_create("MIBUNWMessageContext");
  v4 = +[MIBUNWMessage sharedFramer];
  message = nw_framer_protocol_create_message(v4);

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[MIBUNWMessage type](self, "type")}];
  nw_framer_message_set_object_value(message, "MIBUNWMessageType", v6);

  nw_content_context_set_metadata_for_protocol(v3, message);

  return v3;
}

- (void)initWithContent:(uint64_t)a1 andContext:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_259B04000, a2, OS_LOG_TYPE_ERROR, "Failed to parse payload data: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)createContent
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_259B04000, a2, OS_LOG_TYPE_ERROR, "Failed to create serialized payload data: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end