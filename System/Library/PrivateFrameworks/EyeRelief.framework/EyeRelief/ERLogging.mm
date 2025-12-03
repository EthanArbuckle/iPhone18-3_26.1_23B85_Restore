@interface ERLogging
+ (void)log:(id)log withType:(unint64_t)type;
@end

@implementation ERLogging

+ (void)log:(id)log withType:(unint64_t)type
{
  v12 = *MEMORY[0x277D85DE8];
  logCopy = log;
  if (log_withType__onceToken != -1)
  {
    +[ERLogging log:withType:];
  }

  v6 = osLogHandle;
  if (type > 2)
  {
    if (type == 3)
    {
      if (os_log_type_enabled(osLogHandle, OS_LOG_TYPE_DEBUG))
      {
        [ERLogging log:logCopy withType:v6];
      }

      goto LABEL_19;
    }

    if (type == 4)
    {
      if (os_log_type_enabled(osLogHandle, OS_LOG_TYPE_FAULT))
      {
        [ERLogging log:logCopy withType:v6];
      }

      goto LABEL_19;
    }
  }

  else
  {
    if (type == 1)
    {
      if (os_log_type_enabled(osLogHandle, OS_LOG_TYPE_ERROR))
      {
        [ERLogging log:logCopy withType:v6];
      }

      goto LABEL_19;
    }

    if (type == 2)
    {
      if (os_log_type_enabled(osLogHandle, OS_LOG_TYPE_INFO))
      {
        v10 = 138543362;
        v11 = logCopy;
        v7 = v6;
        v8 = OS_LOG_TYPE_INFO;
LABEL_14:
        _os_log_impl(&dword_24A2D8000, v7, v8, "%{public}@", &v10, 0xCu);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  if (os_log_type_enabled(osLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = logCopy;
    v7 = v6;
    v8 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_14;
  }

LABEL_19:

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __26__ERLogging_log_withType___block_invoke()
{
  osLogHandle = os_log_create("com.apple.eyerelief", "EyeRelief");

  return MEMORY[0x2821F96F8]();
}

+ (void)log:(uint64_t)a1 withType:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_24A2D8000, a2, OS_LOG_TYPE_FAULT, "%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)log:(uint64_t)a1 withType:(NSObject *)a2 .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_24A2D8000, a2, OS_LOG_TYPE_DEBUG, "%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)log:(uint64_t)a1 withType:(NSObject *)a2 .cold.4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_24A2D8000, a2, OS_LOG_TYPE_ERROR, "%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end