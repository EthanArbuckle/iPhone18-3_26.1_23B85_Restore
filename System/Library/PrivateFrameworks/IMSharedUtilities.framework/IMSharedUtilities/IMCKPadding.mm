@interface IMCKPadding
+ (id)_randomDataWithLength:(int64_t)a3;
+ (id)paddingForMessageOfSize:(int64_t)a3;
+ (int64_t)_paddingForType:(int)a3 originalSize:(int64_t)a4 error:(__CFError *)a5;
@end

@implementation IMCKPadding

+ (id)_randomDataWithLength:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:a3];
  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], a3, [v4 mutableBytes]))
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Failed to create random bytes", v7, 2u);
      }
    }

    return 0;
  }

  else
  {

    return v4;
  }
}

+ (int64_t)_paddingForType:(int)a3 originalSize:(int64_t)a4 error:(__CFError *)a5
{
  if (qword_1EB30B460 != -1)
  {
    sub_1A88C515C();
  }

  v8 = off_1EB30B458;
  if (a3 == 3)
  {
    if (off_1EB30B458)
    {
      v9 = 3;
      goto LABEL_11;
    }

    return 0;
  }

  if (a3 != 2)
  {
    if (off_1EB30B458)
    {
      v9 = 1;
      goto LABEL_11;
    }

    return 0;
  }

  if (!off_1EB30B458)
  {
    return 0;
  }

  v9 = 2;
LABEL_11:

  return v8(a4, v9, a5);
}

+ (id)paddingForMessageOfSize:(int64_t)a3
{
  [objc_opt_class() _paddingForType:2 originalSize:a3 error:0];
  v3 = objc_opt_class();

  return MEMORY[0x1EEE66B58](v3, sel__randomDataWithLength_);
}

@end