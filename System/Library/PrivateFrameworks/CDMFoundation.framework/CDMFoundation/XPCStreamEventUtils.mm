@interface XPCStreamEventUtils
+ (id)getXPCEventName:(id)a3;
@end

@implementation XPCStreamEventUtils

+ (id)getXPCEventName:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (MEMORY[0x1E1298A50]() != MEMORY[0x1E69E9E80])
  {
    v4 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
LABEL_3:

      v5 = 0;
      goto LABEL_6;
    }

    v10 = 136315138;
    v11 = "+[XPCStreamEventUtils getXPCEventName:]";
    v9 = "%s [ERR]: Cannot extract name from XPC event of non-dictionary type";
LABEL_12:
    _os_log_error_impl(&dword_1DC287000, v4, OS_LOG_TYPE_ERROR, v9, &v10, 0xCu);
    goto LABEL_3;
  }

  string = xpc_dictionary_get_string(v3, *MEMORY[0x1E69E9E40]);
  if (!string)
  {
    v4 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v10 = 136315138;
    v11 = "+[XPCStreamEventUtils getXPCEventName:]";
    v9 = "%s [ERR]: Cannot extract name from XPC event, since the key is missing";
    goto LABEL_12;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
LABEL_6:

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

@end