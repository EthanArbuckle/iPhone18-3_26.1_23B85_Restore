@interface GKVoiceChatSessionMessage
- (GKVoiceChatSessionMessage)init;
- (GKVoiceChatSessionMessage)initWithBytes:(const void *)a3 length:(unint64_t)a4;
- (GKVoiceChatSessionMessage)initWithPayload:(id)a3 conferenceID:(unsigned int)a4 subtype:(unsigned int)a5;
- (id)payload;
- (void)dealloc;
@end

@implementation GKVoiceChatSessionMessage

- (GKVoiceChatSessionMessage)init
{
  v3.receiver = self;
  v3.super_class = GKVoiceChatSessionMessage;
  result = [(GKVoiceChatSessionMessage *)&v3 init];
  if (result)
  {
    result->super._type = 1600;
    result->_data = 0;
  }

  return result;
}

- (GKVoiceChatSessionMessage)initWithBytes:(const void *)a3 length:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = GKVoiceChatSessionMessage;
  v6 = [GKOOBMessage initWithBytes:sel_initWithBytes_length_ length:?];
  v7 = v6;
  if (v6)
  {
    if (a3)
    {
      if (a4 <= 0xB)
      {
        [GKVoiceChatSessionMessage initWithBytes:length:];
      }

      else
      {
        v6->super._type = bswap32(*a3) >> 16;
        v6->_conferenceID = *(a3 + 1);
        v6->_subtype = bswap32(*(a3 + 2));
        v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a3 length:a4];
        v7->_data = v8;
        if (v8)
        {
          return v7;
        }

        [GKVoiceChatSessionMessage initWithBytes:length:];
      }
    }

    else
    {
      [GKVoiceChatSessionMessage initWithBytes:length:];
    }

    return 0;
  }

  return v7;
}

- (GKVoiceChatSessionMessage)initWithPayload:(id)a3 conferenceID:(unsigned int)a4 subtype:(unsigned int)a5
{
  v14.receiver = self;
  v14.super_class = GKVoiceChatSessionMessage;
  v8 = [(GKVoiceChatSessionMessage *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->super._type = 1600;
    v8->_conferenceID = a4;
    v8->_subtype = a5;
    v13[0] = -1431655766;
    conferenceID = v8->_conferenceID;
    LOWORD(v13[0]) = 16390;
    v13[1] = conferenceID;
    v13[2] = bswap32(a5);
    v11 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:v13 length:12];
    [(NSData *)v11 appendData:a3];
    v9->_data = v11;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GKVoiceChatSessionMessage;
  [(GKVoiceChatSessionMessage *)&v3 dealloc];
}

- (id)payload
{
  v3 = MEMORY[0x277CBEA90];
  v4 = [(NSData *)self->_data bytes];
  v5 = [(NSData *)self->_data length]- 12;

  return [v3 dataWithBytes:v4 + 12 length:v5];
}

- (void)initWithBytes:length:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_22_1();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_1_4(&dword_24E50C000, v1, v2, " [%s] %s:%d Failed to allocate data buffer", v3, v4, v5, v6, v7);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)initWithBytes:length:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_22_1();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_1_4(&dword_24E50C000, v1, v2, " [%s] %s:%d Size is too small", v3, v4, v5, v6, v7);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)initWithBytes:length:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_22_1();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_1_4(&dword_24E50C000, v1, v2, " [%s] %s:%d Buffer is NULL", v3, v4, v5, v6, v7);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

@end