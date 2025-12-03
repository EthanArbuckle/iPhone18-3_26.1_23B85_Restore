@interface GKVoiceChatSessionMessage
- (GKVoiceChatSessionMessage)init;
- (GKVoiceChatSessionMessage)initWithBytes:(const void *)bytes length:(unint64_t)length;
- (GKVoiceChatSessionMessage)initWithPayload:(id)payload conferenceID:(unsigned int)d subtype:(unsigned int)subtype;
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

- (GKVoiceChatSessionMessage)initWithBytes:(const void *)bytes length:(unint64_t)length
{
  v10.receiver = self;
  v10.super_class = GKVoiceChatSessionMessage;
  v6 = [GKOOBMessage initWithBytes:sel_initWithBytes_length_ length:?];
  v7 = v6;
  if (v6)
  {
    if (bytes)
    {
      if (length <= 0xB)
      {
        [GKVoiceChatSessionMessage initWithBytes:length:];
      }

      else
      {
        v6->super._type = bswap32(*bytes) >> 16;
        v6->_conferenceID = *(bytes + 1);
        v6->_subtype = bswap32(*(bytes + 2));
        v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:bytes length:length];
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

- (GKVoiceChatSessionMessage)initWithPayload:(id)payload conferenceID:(unsigned int)d subtype:(unsigned int)subtype
{
  v14.receiver = self;
  v14.super_class = GKVoiceChatSessionMessage;
  v8 = [(GKVoiceChatSessionMessage *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->super._type = 1600;
    v8->_conferenceID = d;
    v8->_subtype = subtype;
    v13[0] = -1431655766;
    conferenceID = v8->_conferenceID;
    LOWORD(v13[0]) = 16390;
    v13[1] = conferenceID;
    v13[2] = bswap32(subtype);
    v11 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:v13 length:12];
    [(NSData *)v11 appendData:payload];
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
  bytes = [(NSData *)self->_data bytes];
  v5 = [(NSData *)self->_data length]- 12;

  return [v3 dataWithBytes:bytes + 12 length:v5];
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