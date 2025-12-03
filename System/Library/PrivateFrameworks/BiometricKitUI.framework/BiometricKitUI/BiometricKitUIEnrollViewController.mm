@interface BiometricKitUIEnrollViewController
- (BiometricKitUIEnrollResultDelegate)delegate;
- (id)propertyForKey:(id)key;
- (void)setProperty:(id)property forKey:(id)key;
@end

@implementation BiometricKitUIEnrollViewController

- (void)setProperty:(id)property forKey:(id)key
{
  propertyCopy = property;
  keyCopy = key;
  if (!self->_properties)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    properties = self->_properties;
    self->_properties = dictionary;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [BiometricKitUIEnrollViewController setProperty:forKey:];
  }

  [(NSMutableDictionary *)self->_properties setValue:propertyCopy forKey:keyCopy];
}

- (id)propertyForKey:(id)key
{
  keyCopy = key;
  properties = self->_properties;
  if (properties)
  {
    v6 = [(NSMutableDictionary *)properties valueForKey:keyCopy];
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