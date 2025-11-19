@interface CKGetCachedGestaltValues
@end

@implementation CKGetCachedGestaltValues

void ___CKGetCachedGestaltValues_block_invoke()
{
  v20 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:0];
  v1 = _CKCachedGestaltValues;
  _CKCachedGestaltValues = v0;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *&buf = @"UniqueDeviceID";
  *(&buf + 1) = @"BuildVersion";
  v17 = @"ProductName";
  v18 = @"ProductType";
  v19 = @"ProductVersion";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&buf count:5];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = MGCopyAnswer();
        if (v8)
        {
          [_CKCachedGestaltValues setObject:v8 forKeyedSubscript:v7];
        }

        else
        {
          if (C2_DEFAULT_LOG_BLOCK_3 != -1)
          {
            ___CKGetCachedGestaltValues_block_invoke_cold_1();
          }

          v9 = C2_DEFAULT_LOG_INTERNAL_3;
          if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_3, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v7;
            _os_log_impl(&dword_242158000, v9, OS_LOG_TYPE_ERROR, "Error getting %@ from MobileGestalt", &buf, 0xCu);
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t ___CKGetCachedGestaltValues_block_invoke_2()
{
  C2_DEFAULT_LOG_INTERNAL_3 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

@end