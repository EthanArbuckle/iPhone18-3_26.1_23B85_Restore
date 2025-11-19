@interface GKOOBMessage
- (GKOOBMessage)initWithBytes:(const void *)a3 length:(unint64_t)a4;
- (GKOOBMessage)initWithMessageType:(unsigned __int16)a3;
@end

@implementation GKOOBMessage

- (GKOOBMessage)initWithMessageType:(unsigned __int16)a3
{
  v5.receiver = self;
  v5.super_class = GKOOBMessage;
  result = [(GKOOBMessage *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (GKOOBMessage)initWithBytes:(const void *)a3 length:(unint64_t)a4
{
  v28 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v19 = v7;
      v20 = 2080;
      v21 = "[GKOOBMessage initWithBytes:length:]";
      v22 = 1024;
      v23 = 25;
      v24 = 2048;
      v25 = a3;
      v26 = 1024;
      v27 = a4;
      _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKOOBMessage initWithBytes (%p, %d)", buf, 0x2Cu);
    }
  }

  v17.receiver = self;
  v17.super_class = GKOOBMessage;
  v9 = [(GKOOBMessage *)&v17 init];
  v10 = v9;
  if (v9)
  {
    if (!a3)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 4)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          [GKOOBMessage initWithBytes:length:];
        }
      }

      goto LABEL_25;
    }

    if (a4 <= 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 4)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          [GKOOBMessage initWithBytes:length:];
        }
      }

LABEL_25:

      v10 = 0;
      goto LABEL_26;
    }

    v11 = bswap32(*a3) >> 16;
    if (![(GKOOBMessage *)v9 _checkType:v11])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x277CE5818];
        v14 = *MEMORY[0x277CE5818];
        if (*MEMORY[0x277CE5808] == 1)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v19 = v12;
            v20 = 2080;
            v21 = "[GKOOBMessage initWithBytes:length:]";
            v22 = 1024;
            v23 = 53;
            v24 = 1024;
            LODWORD(v25) = v11;
            _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKOOBMessage init: Message type mismatch - type = %d", buf, 0x22u);
          }
        }

        else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [(GKOOBMessage *)v12 initWithBytes:v11 length:v13];
        }
      }

      goto LABEL_25;
    }

    if (![(GKOOBMessage *)v10 _checkSize:a4])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 4)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          [GKOOBMessage initWithBytes:length:];
        }
      }

      goto LABEL_25;
    }

    v10->_type = v11;
  }

LABEL_26:
  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)initWithBytes:(os_log_t)log length:.cold.1(uint64_t a1, unsigned __int16 a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "[GKOOBMessage initWithBytes:length:]";
  v8 = 1024;
  v9 = 53;
  v10 = 1024;
  v11 = a2;
  _os_log_debug_impl(&dword_24E50C000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d GKOOBMessage init: Message type mismatch - type = %d", &v4, 0x22u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithBytes:length:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  *&v5[4] = v0;
  *&v5[6] = "[GKOOBMessage initWithBytes:length:]";
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v1, v2, " [%s] %s:%d GKOOBMessage is the wrong size: %u", v4, *v5, "[GKOOBMessage initWithBytes:length:]" >> 16, 46);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithBytes:length:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  *&v5[4] = v0;
  *&v5[6] = "[GKOOBMessage initWithBytes:length:]";
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v1, v2, " [%s] %s:%d GKOOBMessage init: size is too small %d", v4, *v5, "[GKOOBMessage initWithBytes:length:]" >> 16, 36);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithBytes:length:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  v4 = v0;
  v5 = "[GKOOBMessage initWithBytes:length:]";
  v6 = 1024;
  v7 = 30;
  _os_log_error_impl(&dword_24E50C000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d GKOOBMessage init: null buffer", v3, 0x1Cu);
  v2 = *MEMORY[0x277D85DE8];
}

@end