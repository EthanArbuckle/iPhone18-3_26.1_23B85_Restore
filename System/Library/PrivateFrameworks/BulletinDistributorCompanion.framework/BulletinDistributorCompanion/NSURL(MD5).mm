@interface NSURL(MD5)
- (BOOL)MD5:()MD5;
@end

@implementation NSURL(MD5)

- (BOOL)MD5:()MD5
{
  v15 = 0;
  v4 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:a1 error:&v15];
  v5 = v15;
  if (v4)
  {
    memset(&c, 0, sizeof(c));
    CC_MD5_Init(&c);
    v6 = 0;
    while (1)
    {
      v7 = objc_autoreleasePoolPush();
      v13 = 0;
      v8 = [v4 readDataUpToLength:0x10000 error:&v13];
      v9 = v13;

      v10 = v9 == 0;
      if (v9)
      {
        break;
      }

      CC_MD5_Update(&c, [v8 bytes], objc_msgSend(v8, "length"));
      objc_autoreleasePoolPop(v7);
      v6 = v8;
      if (![v8 length])
      {
        CC_MD5_Final(a3, &c);
        goto LABEL_10;
      }
    }

    v11 = blt_general_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(NSURL(MD5) *)v4 MD5:v9, v11];
    }

    objc_autoreleasePoolPop(v7);
LABEL_10:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)MD5:()MD5 .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_241FB3000, log, OS_LOG_TYPE_FAULT, "[NSData MD5:] call to readDataUpToLength: %@ failed with: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end