@interface HMFActivityInvalidate
@end

@implementation HMFActivityInvalidate

void ____HMFActivityInvalidate_block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = mach_continuous_time();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 96);
  }

  else
  {
    v4 = 0;
  }

  *info = 0;
  mach_timebase_info(info);
  v5 = *info;
  v6 = *&info[4];
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = ((v2 - v4) * v5 / v6) / 1000000000.0;
    v11 = HMFGetLogIdentifier(v8);
    *info = 138543618;
    *&info[4] = v11;
    v28 = 2048;
    v29 = v10;
    _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Invalidated after %fs", info, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = *(a1 + 32);
  if ((*(v12 + 80) & 4) != 0)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
  }

  else
  {
    v13 = [v12 parent];
    v14 = [*(a1 + 32) shortDescription];
    [v13 markWithFormat:@"Stopped child activity: %@", v14];

    v12 = *(a1 + 32);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    if (!v12)
    {
      v15 = 0;
      goto LABEL_10;
    }
  }

  v15 = *(v12 + 88);
LABEL_10:
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      v20 = 0;
      do
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v22 + 1) + 8 * v20++) invalidate];
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v18);
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end