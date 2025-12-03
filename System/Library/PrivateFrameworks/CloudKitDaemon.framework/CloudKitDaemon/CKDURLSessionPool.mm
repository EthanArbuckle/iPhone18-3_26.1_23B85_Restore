@interface CKDURLSessionPool
+ (id)sharedURLSessionPool;
- (id)initInternal;
- (int)backgroundSessionConnectionPoolLimit;
- (void)_updateBackgroundSessionConnectionPoolLimit;
@end

@implementation CKDURLSessionPool

+ (id)sharedURLSessionPool
{
  if (qword_280D585C0 != -1)
  {
    dispatch_once(&qword_280D585C0, &unk_28385E6C0);
  }

  v3 = qword_280D585B8;

  return v3;
}

- (int)backgroundSessionConnectionPoolLimit
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  backgroundSessionConnectionPoolLimit = selfCopy->_backgroundSessionConnectionPoolLimit;
  objc_sync_exit(selfCopy);

  return backgroundSessionConnectionPoolLimit;
}

- (id)initInternal
{
  v7.receiver = self;
  v7.super_class = CKDURLSessionPool;
  v2 = [(CKDURLSessionPool *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend__updateBackgroundSessionConnectionPoolLimit(v2, v3, v4);
  }

  return v5;
}

- (void)_updateBackgroundSessionConnectionPoolLimit
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], a2, v2);
  v6 = objc_msgSend_backgroundSessionConnectionPoolLimitWithDefaultValue_(v4, v5, 6);

  if (v6)
  {
    v9 = objc_msgSend_scheduler(MEMORY[0x277D06A28], v7, v8);
    v11 = objc_msgSend_groupWithName_maxConcurrent_(MEMORY[0x277D06A08], v10, @"com.apple.cloudkit.BackgroundConnectionPool", v6);
    objc_msgSend_createActivityGroup_(v9, v12, v11);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_backgroundSessionConnectionPoolLimit = v6;
  objc_sync_exit(selfCopy);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v14 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v16[0] = 67109378;
    v16[1] = v6;
    v17 = 2114;
    v18 = @"com.apple.cloudkit.BackgroundConnectionPool";
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Updated the connection pool limit (%d) for %{public}@", v16, 0x12u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end