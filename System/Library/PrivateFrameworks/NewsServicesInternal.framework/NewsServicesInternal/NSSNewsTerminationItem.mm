@interface NSSNewsTerminationItem
- (NSSNewsTerminationItem)init;
- (NSSNewsTerminationItem)initWithProcessType:(unint64_t)a3 bundleID:(id)a4;
@end

@implementation NSSNewsTerminationItem

- (NSSNewsTerminationItem)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NSSNewsTerminationItem init]";
    v10 = 2080;
    v11 = "NSSNewsTermination.m";
    v12 = 1024;
    v13 = 36;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF0A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NSSNewsTerminationItem init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NSSNewsTerminationItem)initWithProcessType:(unint64_t)a3 bundleID:(id)a4
{
  v6 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSSNewsTerminationItem initWithProcessType:bundleID:];
  }

  v12.receiver = self;
  v12.super_class = NSSNewsTerminationItem;
  v7 = [(NSSNewsTerminationItem *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_processType = a3;
    v9 = [v6 copy];
    bundleID = v8->_bundleID;
    v8->_bundleID = v9;
  }

  return v8;
}

- (void)initWithProcessType:bundleID:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "bundleID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end