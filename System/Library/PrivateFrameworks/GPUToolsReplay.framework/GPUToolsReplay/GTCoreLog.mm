@interface GTCoreLog
@end

@implementation GTCoreLog

void __GTCoreLog_getLogForTag_block_invoke(uint64_t a1)
{
  v2 = &(&s_tagInfo)[3 * *(a1 + 40)];
  v3 = *(v2 + 16);
  if (v3 == 1)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s.%s.enableLog", *v2, v2[1]];
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong((*(a1 + 32) + 8), v4);
  if (v3)
  {
  }

  v5 = os_log_create(*v2, v2[1]);
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;
}

@end