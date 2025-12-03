@interface NSKeyedUnarchiver(Secure)
+ (id)secureUnarchiveObjectOfClasses:()Secure withData:;
+ (id)secureUnarchiveObjectOfClasses:()Secure withFile:;
@end

@implementation NSKeyedUnarchiver(Secure)

+ (id)secureUnarchiveObjectOfClasses:()Secure withFile:
{
  v6 = a3;
  v7 = a4;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [defaultManager fileExistsAtPath:v7];

  if (v9)
  {
    v17 = 0;
    v10 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v7 options:0 error:&v17];
    v11 = v17;
    if (v11)
    {
      v12 = psd_log();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

      if (v13)
      {
        v14 = psd_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [(NSKeyedUnarchiver(Secure) *)v7 secureUnarchiveObjectOfClasses:v11 withFile:v14];
        }
      }

      v15 = 0;
    }

    else
    {
      v15 = [self secureUnarchiveObjectOfClasses:v6 withData:v10];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)secureUnarchiveObjectOfClasses:()Secure withData:
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [[self alloc] initForReadingFromData:v7 error:0];
  v9 = [v8 decodeObjectOfClasses:v6 forKey:*MEMORY[0x277CCA308]];
  [v8 finishDecoding];
  v10 = v9;

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (void)secureUnarchiveObjectOfClasses:()Secure withFile:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 psy_safeDescription];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_25DF25000, a3, OS_LOG_TYPE_ERROR, "Failed to read data from file %{public}@ with error %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)secureUnarchiveObjectOfClasses:()Secure withData:.cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_25DF25000, log, OS_LOG_TYPE_ERROR, "Failed to unarchive data of type %{public}@ with exception %{public}@", buf, 0x16u);
}

@end