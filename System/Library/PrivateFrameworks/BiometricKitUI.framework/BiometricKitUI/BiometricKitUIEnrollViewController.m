@interface BiometricKitUIEnrollViewController
- (BiometricKitUIEnrollResultDelegate)delegate;
- (id)propertyForKey:(id)a3;
- (void)setProperty:(id)a3 forKey:(id)a4;
@end

@implementation BiometricKitUIEnrollViewController

- (void)setProperty:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_properties)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    properties = self->_properties;
    self->_properties = v8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [BiometricKitUIEnrollViewController setProperty:forKey:];
  }

  [(NSMutableDictionary *)self->_properties setValue:v6 forKey:v7];
}

- (id)propertyForKey:(id)a3
{
  v4 = a3;
  properties = self->_properties;
  if (properties)
  {
    v6 = [(NSMutableDictionary *)properties valueForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [BiometricKitUIEnrollViewController propertyForKey:];
  }

  return v6;
}

- (BiometricKitUIEnrollResultDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setProperty:forKey:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_241B0A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "BiometricKitUI: Set new property key: %@ value: %@", v1, 0x16u);
  v0 = *MEMORY[0x277D85DE8];
}

- (void)propertyForKey:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_241B0A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "BiometricKitUI: Property value: %@ of key: %@", v1, 0x16u);
  v0 = *MEMORY[0x277D85DE8];
}

@end