@interface NSDictionary(CKMultiFrameImage)
- (NSObject)ckmfi_numberArrayForKey:()CKMultiFrameImage;
- (id)ckmfi_numberForKey:()CKMultiFrameImage;
@end

@implementation NSDictionary(CKMultiFrameImage)

- (NSObject)ckmfi_numberArrayForKey:()CKMultiFrameImage
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 objectForKey:v4];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v15;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(v6);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v12 = IMLogHandleForCategory();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                [NSDictionary(CKMultiFrameImage) ckmfi_numberArrayForKey:];
              }

              goto LABEL_18;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v11 = v6;
    }

    else
    {
      v6 = IMLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [NSDictionary(CKMultiFrameImage) ckmfi_numberArrayForKey:];
      }

LABEL_18:
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)ckmfi_numberForKey:()CKMultiFrameImage
{
  v4 = a3;
  v5 = [a1 objectForKey:v4];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      goto LABEL_8;
    }

    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(CKMultiFrameImage) ckmfi_numberForKey:];
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (void)ckmfi_numberArrayForKey:()CKMultiFrameImage .cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)ckmfi_numberArrayForKey:()CKMultiFrameImage .cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)ckmfi_numberForKey:()CKMultiFrameImage .cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end