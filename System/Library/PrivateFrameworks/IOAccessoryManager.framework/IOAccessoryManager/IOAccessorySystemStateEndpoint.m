@interface IOAccessorySystemStateEndpoint
- (IOAccessorySystemStateEndpoint)initWithService:(unsigned int)a3;
- (void)dealloc;
- (void)notifyBootComplete;
- (void)notifyUserActive:(BOOL)a3;
- (void)notifyUserPresent:(BOOL)a3;
@end

@implementation IOAccessorySystemStateEndpoint

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    IOServiceClose(connection);
    self->_connection = 0;
  }

  service = self->_service;
  if (service)
  {
    IOObjectRelease(service);
    self->_service = 0;
  }

  v5.receiver = self;
  v5.super_class = IOAccessorySystemStateEndpoint;
  [(IOAccessorySystemStateEndpoint *)&v5 dealloc];
}

- (void)notifyBootComplete
{
  v7 = *MEMORY[0x277D85DE8];
  mach_error_string(a1);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)notifyUserActive:(BOOL)a3
{
  input = a3;
  v3 = IOConnectCallMethod(self->_connection, 1u, &input, 1u, 0, 0, 0, 0, 0, 0);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IOAccessorySystemStateEndpoint notifyUserActive:v4];
    }
  }
}

- (void)notifyUserPresent:(BOOL)a3
{
  input = a3;
  v3 = IOConnectCallMethod(self->_connection, 2u, &input, 1u, 0, 0, 0, 0, 0, 0);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IOAccessorySystemStateEndpoint notifyUserPresent:v4];
    }
  }
}

- (IOAccessorySystemStateEndpoint)initWithService:(unsigned int)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = IOAccessorySystemStateEndpoint;
  v4 = [(IOAccessorySystemStateEndpoint *)&v12 init];
  v5 = v4;
  v6 = 0;
  if (a3 && v4)
  {
    v4->_service = a3;
    IOObjectRetain(a3);
    v7 = IOServiceOpen(a3, *MEMORY[0x277D85F48], 0, v5 + 3);
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v11 = mach_error_string(v8);
        *buf = 136315394;
        v14 = "[IOAccessorySystemStateEndpoint initWithService:]";
        v15 = 2080;
        v16 = v11;
        _os_log_error_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s unable to open service (%s)", buf, 0x16u);
      }

      v6 = 0;
    }

    else
    {
      v6 = v5;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)notifyUserActive:(mach_error_t)a1 .cold.1(mach_error_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  mach_error_string(a1);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)notifyUserPresent:(mach_error_t)a1 .cold.1(mach_error_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  mach_error_string(a1);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

@end