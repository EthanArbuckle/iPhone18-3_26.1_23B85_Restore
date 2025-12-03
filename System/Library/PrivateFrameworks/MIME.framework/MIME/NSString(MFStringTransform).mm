@interface NSString(MFStringTransform)
- (__CFString)mf_applyTransform:()MFStringTransform;
@end

@implementation NSString(MFStringTransform)

- (__CFString)mf_applyTransform:()MFStringTransform
{
  v4 = a3;
  v5 = v4;
  if (!v4 || !*(v4 + 1))
  {
LABEL_8:
    selfCopy = self;
    goto LABEL_9;
  }

  if ([self length])
  {
    if ([self length] < 0xF4241)
    {
      v9 = objc_autoreleasePoolPush();
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __49__NSString_MFStringTransform__mf_applyTransform___block_invoke;
      v13[3] = &unk_1E8455100;
      v14 = v5;
      v10 = withMutableCharactersAndPadding(self, v13);
      v11 = v10;
      if (v10)
      {
        selfCopy2 = v10;
      }

      else
      {
        selfCopy2 = self;
      }

      selfCopy = selfCopy2;

      objc_autoreleasePoolPop(v9);
      goto LABEL_9;
    }

    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [NSString(MFStringTransform) mf_applyTransform:];
    }

    goto LABEL_8;
  }

  selfCopy = &stru_1F4F33820;
LABEL_9:

  return selfCopy;
}

- (void)mf_applyTransform:()MFStringTransform .cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end