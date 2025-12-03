@interface NSSDataContainerDataDestructionItem
- (NSSDataContainerDataDestructionItem)init;
- (NSSDataContainerDataDestructionItem)initWithContainerClass:(unint64_t)class identifier:(const char *)identifier;
@end

@implementation NSSDataContainerDataDestructionItem

- (NSSDataContainerDataDestructionItem)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NSSDataContainerDataDestructionItem init]";
    v10 = 2080;
    v11 = "NSSNewsDataDestruction.m";
    v12 = 1024;
    v13 = 101;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF0A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NSSDataContainerDataDestructionItem init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NSSDataContainerDataDestructionItem)initWithContainerClass:(unint64_t)class identifier:(const char *)identifier
{
  if (!identifier && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSSDataContainerDataDestructionItem initWithContainerClass:identifier:];
  }

  v8.receiver = self;
  v8.super_class = NSSDataContainerDataDestructionItem;
  result = [(NSSDataContainerDataDestructionItem *)&v8 init];
  if (result)
  {
    result->_containerClass = class;
    result->_identifier = identifier;
  }

  return result;
}

- (void)initWithContainerClass:identifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "identifier", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end