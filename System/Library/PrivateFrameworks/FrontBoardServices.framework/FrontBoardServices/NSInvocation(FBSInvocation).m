@interface NSInvocation(FBSInvocation)
- (char)fbs_getObjectForValue:()FBSInvocation atIndex:;
@end

@implementation NSInvocation(FBSInvocation)

- (char)fbs_getObjectForValue:()FBSInvocation atIndex:
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  *aSelector = 0u;
  v28 = 0u;
  [a1 getArgument:aSelector atIndex:a4];
  v8 = [v7 type];
  if (v8 > 0x3Fu)
  {
    if (v8 == 66)
    {
      v16 = MEMORY[0x1E695E4D0];
      if (!LOBYTE(aSelector[0]))
      {
        v16 = MEMORY[0x1E695E4C0];
      }

      v14 = *v16;
      goto LABEL_21;
    }

    if (v8 == 64)
    {
      v11 = aSelector[0];
      v12 = [a1 methodSignature];
      v13 = [v12 _classForObjectAtArgumentIndex:a4];

      if (!v13)
      {
        [NSInvocation(FBSInvocation) fbs_getObjectForValue:a2 atIndex:?];
      }

      v14 = v11;
      if (v14)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v20 = MEMORY[0x1E696AEC0];
          v21 = [v14 classForCoder];
          if (!v21)
          {
            v21 = objc_opt_class();
          }

          v22 = NSStringFromClass(v21);
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          v25 = [v20 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"object", v22, v24];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [NSInvocation(FBSInvocation) fbs_getObjectForValue:a2 atIndex:?];
          }

          [v25 UTF8String];
          _bs_set_crash_log_message();
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    if (v8 == 35)
    {
      v10 = NSStringFromClass(aSelector[0]);
      goto LABEL_17;
    }

    if (v8 == 58)
    {
      v10 = NSStringFromSelector(aSelector[0]);
LABEL_17:
      v14 = v10;
      goto LABEL_21;
    }
  }

  v15 = v8 & 0xDF;
  if (v15 <= 0x4B)
  {
    if (v15 == 67)
    {
      v10 = [MEMORY[0x1E696AD98] numberWithChar:SLOBYTE(aSelector[0])];
      goto LABEL_17;
    }

    if (v15 == 73)
    {
      v10 = [MEMORY[0x1E696AD98] numberWithInt:LODWORD(aSelector[0])];
      goto LABEL_17;
    }
  }

  else
  {
    switch(v15)
    {
      case 'L':
        v10 = [MEMORY[0x1E696AD98] numberWithLong:aSelector[0]];
        goto LABEL_17;
      case 'Q':
        v10 = [MEMORY[0x1E696AD98] numberWithLongLong:aSelector[0]];
        goto LABEL_17;
      case 'S':
        v10 = [MEMORY[0x1E696AD98] numberWithShort:SLOWORD(aSelector[0])];
        goto LABEL_17;
    }
  }

  if (v8 <= 0x65u)
  {
    if (v8 == 42)
    {
      v10 = [MEMORY[0x1E696AEC0] bs_stringWithUTF8String:aSelector[0]];
      goto LABEL_17;
    }

    if (v8 == 100)
    {
      v10 = [MEMORY[0x1E696AD98] numberWithDouble:*aSelector];
      goto LABEL_17;
    }

LABEL_47:
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"parameter type is not supported", v7];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [NSInvocation(FBSInvocation) fbs_getObjectForValue:a2 atIndex:?];
    }

    [v26 UTF8String];
    _bs_set_crash_log_message();
  }

  if (v8 != 123)
  {
    if (v8 == 102)
    {
      LODWORD(v9) = aSelector[0];
      v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
      goto LABEL_17;
    }

    goto LABEL_47;
  }

  if ([v7 size] >= 0x81)
  {
    [NSInvocation(FBSInvocation) fbs_getObjectForValue:v7 atIndex:a2];
  }

  v18 = MEMORY[0x1E696B098];
  v19 = [v7 encoding];
  v14 = [v18 valueWithBytes:aSelector objCType:{objc_msgSend(v19, "UTF8String")}];

LABEL_21:

  return v14;
}

- (void)fbs_getObjectForValue:()FBSInvocation atIndex:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, 2u);
}

- (void)fbs_getObjectForValue:()FBSInvocation atIndex:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"expected != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)fbs_getObjectForValue:()FBSInvocation atIndex:.cold.3(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"struct is too large: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

- (void)fbs_getObjectForValue:()FBSInvocation atIndex:.cold.4(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, 2u);
}

@end