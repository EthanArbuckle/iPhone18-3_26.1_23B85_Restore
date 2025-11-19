@interface NSThread(NSThread_TSUAdditions)
+ (__CFString)tsu_currentThreadName;
@end

@implementation NSThread(NSThread_TSUAdditions)

+ (__CFString)tsu_currentThreadName
{
  v33 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACC8] isMainThread];
  v1 = v0;
  v2 = @"MT";
  if (v0)
  {
    v3 = @"MT";
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if ((v1 & 1) == 0 && ([MEMORY[0x277CCABD8] currentQueue], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "name"), v2 = objc_claimAutoreleasedReturnValue(), v5, !v2) || !-[__CFString length](v2, "length"))
  {
    label = dispatch_queue_get_label(0);
    if (label)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithCString:label encoding:1];

      v2 = v7;
    }

    if (!v2)
    {
      goto LABEL_13;
    }
  }

  if (![(__CFString *)v2 length])
  {
LABEL_13:
    v31 = 0u;
    memset(v32, 0, 28);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = pthread_self();
    pthread_getname_np(v8, &v15, 0x12CuLL);
    if (v15)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithCString:&v15 encoding:1];

      v2 = v9;
    }

    if (!v2)
    {
      goto LABEL_23;
    }
  }

  if (![(__CFString *)v2 length:v15])
  {
LABEL_23:
    v10 = [MEMORY[0x277CCACC8] currentThread];
    v11 = [v10 name];

    v2 = v11;
    if (!v11)
    {
      goto LABEL_17;
    }
  }

  if (![(__CFString *)v2 length])
  {
LABEL_17:
    v12 = [MEMORY[0x277CCACC8] currentThread];
    v13 = [v12 description];

    v2 = v13;
  }

  return v2;
}

@end