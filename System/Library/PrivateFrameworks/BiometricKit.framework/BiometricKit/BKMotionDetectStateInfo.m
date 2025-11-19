@interface BKMotionDetectStateInfo
- (BKMotionDetectStateInfo)initWithMotionMatrix:(id)a3 motionDetectState:(id)a4;
@end

@implementation BKMotionDetectStateInfo

- (BKMotionDetectStateInfo)initWithMotionMatrix:(id)a3 motionDetectState:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = BKMotionDetectStateInfo;
  v9 = [(BKMotionDetectStateInfo *)&v16 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

  objc_storeStrong(&v9->_motionMatrix, a3);
  v10->_motionDetectState = 0;
  v11 = [v8 unsignedIntValue];
  if (v11 == 2)
  {
    v12 = 2;
    goto LABEL_8;
  }

  if (v11 == 1)
  {
    v12 = 1;
LABEL_8:
    v10->_motionDetectState = v12;
    goto LABEL_9;
  }

  if (v11)
  {
    if (__osLog)
    {
      v15 = __osLog;
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v18 = "0";
      v19 = 2048;
      v20 = 0;
      v21 = 2080;
      v22 = &unk_1C82F52EE;
      v23 = 2080;
      v24 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevicePearl.m";
      v25 = 1024;
      v26 = 326;
      _os_log_impl(&dword_1C82AD000, v15, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }
  }

  else
  {
    v10->_motionDetectState = 0;
  }

LABEL_9:

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

@end