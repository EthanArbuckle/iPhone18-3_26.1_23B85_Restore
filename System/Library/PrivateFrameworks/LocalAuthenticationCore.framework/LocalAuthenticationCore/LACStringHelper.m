@interface LACStringHelper
+ (id)truncateString:(id)a3 maxLength:(int64_t)a4;
@end

@implementation LACStringHelper

+ (id)truncateString:(id)a3 maxLength:(int64_t)a4
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 length];
      if (v6 >= a4)
      {
        v7 = a4;
      }

      else
      {
        v7 = v6;
      }

      v8 = [v5 rangeOfComposedCharacterSequencesForRange:{0, v7}];
      v10 = [v5 substringWithRange:{v8, v9}];
      goto LABEL_11;
    }

    v11 = LACLogDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [LACStringHelper truncateString:v5 maxLength:v11];
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

+ (void)truncateString:(uint64_t)a1 maxLength:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "Invalid string (%@)", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end