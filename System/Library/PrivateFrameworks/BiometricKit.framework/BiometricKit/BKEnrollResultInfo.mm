@interface BKEnrollResultInfo
- (BKEnrollResultInfo)initWithServerIdentity:(id)identity details:(id)details device:(id)device;
@end

@implementation BKEnrollResultInfo

- (BKEnrollResultInfo)initWithServerIdentity:(id)identity details:(id)details device:(id)device
{
  v28 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  detailsCopy = details;
  deviceCopy = device;
  v11 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v23 = identityCopy;
    v24 = 2112;
    v25 = detailsCopy;
    v26 = 2112;
    v27 = deviceCopy;
    _os_log_impl(&dword_1C82AD000, v12, OS_LOG_TYPE_DEFAULT, "BKEnrollResultInfo::initWithServerIdentity:details:device: %@, %@, %@\n", buf, 0x20u);
  }

  v21.receiver = self;
  v21.super_class = BKEnrollResultInfo;
  v13 = [(BKEnrollResultInfo *)&v21 init];
  if (!v13)
  {
    if (__osLogTrace)
    {
      v18 = __osLogTrace;
    }

    else
    {
      v18 = v11;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = 0;
      _os_log_impl(&dword_1C82AD000, v18, OS_LOG_TYPE_ERROR, "BKEnrollResultInfo::initWithServerIdentity:details: -> %@\n", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v14 = v13;
  if (!identityCopy)
  {
    [BKEnrollResultInfo initWithServerIdentity:v13 details:? device:?];
LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  v15 = [[BKIdentity alloc] initWithServerIdentity:identityCopy device:deviceCopy];
  enrolledIdentity = v14->_enrolledIdentity;
  v14->_enrolledIdentity = v15;

  if (__osLogTrace)
  {
    v17 = __osLogTrace;
  }

  else
  {
    v17 = v11;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v14;
    _os_log_impl(&dword_1C82AD000, v17, OS_LOG_TYPE_DEFAULT, "BKEnrollResultInfo::initWithServerIdentity:details: -> %@\n", buf, 0xCu);
  }

LABEL_19:

  v19 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)initWithServerIdentity:(void *)a1 details:device:.cold.1(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (__osLog)
  {
    v2 = __osLog;
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136316162;
    v5 = "serverIdentity";
    v6 = 2048;
    v7 = 0;
    v8 = 2080;
    v9 = &unk_1C82F52EE;
    v10 = 2080;
    v11 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKOperationDelegate.m";
    v12 = 1024;
    v13 = 41;
    _os_log_impl(&dword_1C82AD000, v2, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v4, 0x30u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

@end