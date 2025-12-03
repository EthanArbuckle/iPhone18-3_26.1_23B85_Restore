@interface NSData(hexString)
+ (_BYTE)dataWithHexString:()hexString;
- (id)hexStringRepresentation;
@end

@implementation NSData(hexString)

+ (_BYTE)dataWithHexString:()hexString
{
  v3 = a3;
  v10 = 0;
  if ([v3 length])
  {
    +[NSData(hexString) dataWithHexString:];
LABEL_12:
    v4 = 0;
    goto LABEL_8;
  }

  v4 = malloc_type_malloc([v3 length] >> 1, 0x36DAEAFEuLL);
  if (v4)
  {
    if (![v3 length])
    {
LABEL_7:
      v4 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v4 length:objc_msgSend(v3 freeWhenDone:{"length") >> 1, 1}];
      goto LABEL_8;
    }

    v5 = 0;
    v6 = v4;
    while (1)
    {
      __str[0] = [v3 characterAtIndex:v5];
      __str[1] = [v3 characterAtIndex:v5 + 1];
      v8 = 0;
      *v6 = strtol(__str, &v8, 16);
      if (v8 != &v10)
      {
        break;
      }

      ++v6;
      v5 += 2;
      if (v5 >= [v3 length])
      {
        goto LABEL_7;
      }
    }

    +[NSData(hexString) dataWithHexString:];
    goto LABEL_12;
  }

  [NSData(hexString) dataWithHexString:v3];
LABEL_8:

  return v4;
}

- (id)hexStringRepresentation
{
  v2 = [self length];
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:2 * v2];
  bytes = [self bytes];
  if (v2)
  {
    v5 = bytes;
    do
    {
      v6 = *v5++;
      [v3 appendFormat:@"%02lx", v6];
      --v2;
    }

    while (v2);
  }

  return v3;
}

+ (void)dataWithHexString:()hexString .cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = defaultLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

+ (void)dataWithHexString:()hexString .cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = defaultLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  v1 = *MEMORY[0x277D85DE8];
}

+ (void)dataWithHexString:()hexString .cold.3(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = defaultLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [a1 length];
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end