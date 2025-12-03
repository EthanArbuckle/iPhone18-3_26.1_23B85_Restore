@interface BRFileObjectTypeConverter
+ (char)toChar:(unsigned __int8)char;
+ (unsigned)toBRFileObjectIDType:(char)type;
@end

@implementation BRFileObjectTypeConverter

+ (char)toChar:(unsigned __int8)char
{
  if (char >= 5u)
  {
    v4 = brc_bread_crumbs("+[BRFileObjectTypeConverter toChar:]", 34);
    v5 = brc_default_log(0, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      +[BRFileObjectTypeConverter toChar:];
    }

    LOBYTE(v3) = 0;
  }

  else
  {
    return 0x6C6E666174uLL >> (8 * (char & 0x1Fu));
  }

  return v3;
}

+ (unsigned)toBRFileObjectIDType:(char)type
{
  if (type <= 107)
  {
    if (type == 97)
    {
      return 1;
    }

    if (type == 102)
    {
      return 2;
    }
  }

  else
  {
    switch(type)
    {
      case 'l':
        return 4;
      case 'n':
        return 3;
      case 't':
        return 0;
    }
  }

  v4 = brc_bread_crumbs("+[BRFileObjectTypeConverter toBRFileObjectIDType:]", 53);
  v5 = brc_default_log(0, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    +[BRFileObjectTypeConverter toBRFileObjectIDType:];
  }

  return 5;
}

+ (void)toChar:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x12u);
  v4 = *MEMORY[0x1E69E9840];
}

+ (void)toBRFileObjectIDType:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x12u);
  v4 = *MEMORY[0x1E69E9840];
}

@end