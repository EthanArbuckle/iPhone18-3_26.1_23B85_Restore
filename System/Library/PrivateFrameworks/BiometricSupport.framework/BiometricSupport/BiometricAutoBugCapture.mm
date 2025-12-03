@interface BiometricAutoBugCapture
- (BOOL)sendAutoBugCaptureEvent:(unint64_t)event;
- (BiometricAutoBugCapture)initWithDomain:(id)domain process:(id)process dispatchQueue:(id)queue;
- (id)getSignatureForReason:(unint64_t)reason;
- (id)getSubtypeForReason:(unint64_t)reason;
- (id)getTypeForReason:(unint64_t)reason;
- (void)sendAutoBugCaptureEvent:(unint64_t)event withContext:(id)context replyBlock:(id)block;
- (void)sendSignature:(id)signature withDuration:(double)duration replyBlock:(id)block;
@end

@implementation BiometricAutoBugCapture

- (BiometricAutoBugCapture)initWithDomain:(id)domain process:(id)process dispatchQueue:(id)queue
{
  domainCopy = domain;
  processCopy = process;
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = BiometricAutoBugCapture;
  v12 = [(BiometricAutoBugCapture *)&v22 init];
  if (v12)
  {
    v13 = objc_alloc_init(NSClassFromString(&cfstr_Sdrdiagnosticr.isa));
    reporter = v12->_reporter;
    v12->_reporter = v13;

    if (v12->_reporter)
    {
      objc_storeStrong(&v12->_domain, domain);
      objc_storeStrong(&v12->_process, process);
      objc_storeStrong(&v12->_dispatchQueue, queue);
      v12->_serialLogEnabled = 0;
      v15 = getBootArgs();
      v16 = v15;
      if (v15)
      {
        v17 = [v15 rangeOfString:@"serial="];
        if (v18)
        {
          v19 = v17 + v18;
          if (v17 + v18 < [v16 length])
          {
            v20 = [v16 substringWithRange:{v19, 1}];
            v12->_serialLogEnabled = [v20 BOOLValue];
          }
        }
      }
    }

    else
    {
      [BiometricAutoBugCapture initWithDomain:v12 process:? dispatchQueue:?];
      v12 = 0;
    }
  }

  return v12;
}

- (id)getTypeForReason:(unint64_t)reason
{
  if (reason - 4097 > 5)
  {
    return @"Default";
  }

  else
  {
    return off_2784FA198[reason - 4097];
  }
}

- (id)getSubtypeForReason:(unint64_t)reason
{
  if (reason - 4097 > 5)
  {
    return @"Default";
  }

  else
  {
    return off_2784FA1C8[reason - 4097];
  }
}

- (id)getSignatureForReason:(unint64_t)reason
{
  v5 = [(BiometricAutoBugCapture *)self getTypeForReason:?];
  v6 = [(BiometricAutoBugCapture *)self getSubtypeForReason:reason];
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = [(BiometricAutoBugCapture *)self getSignatureWithType:v5 subtype:v6];
      goto LABEL_4;
    }

    [BiometricAutoBugCapture getSignatureForReason:?];
  }

  else
  {
    [BiometricAutoBugCapture getSignatureForReason:?];
  }

  v8 = v10;
LABEL_4:

  return v8;
}

- (BOOL)sendAutoBugCaptureEvent:(unint64_t)event
{
  v4 = [(BiometricAutoBugCapture *)self getSignatureForReason:event];
  if (v4)
  {
    v5 = [(BiometricAutoBugCapture *)self sendSignature:v4 withDuration:*&DEFAULT_SNAPSHOT_TIME];
  }

  else
  {
    [BiometricAutoBugCapture sendAutoBugCaptureEvent:?];
    v5 = v7;
  }

  return v5;
}

- (void)sendAutoBugCaptureEvent:(unint64_t)event withContext:(id)context replyBlock:(id)block
{
  contextCopy = context;
  blockCopy = block;
  v10 = [(BiometricAutoBugCapture *)self getSignatureForReason:event];
  v11 = v10;
  if (v10)
  {
    if (contextCopy)
    {
      [v10 setObject:contextCopy forKeyedSubscript:*MEMORY[0x277D6B1F8]];
    }

    [(BiometricAutoBugCapture *)self sendSignature:v11 withDuration:blockCopy replyBlock:0.0];
  }

  else
  {
    if (__osLog)
    {
      v12 = __osLog;
    }

    else
    {
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_223E00000, v12, OS_LOG_TYPE_ERROR, "Failed to create ABC signature\n", v13, 2u);
    }

    if (blockCopy)
    {
      blockCopy[2](blockCopy, *MEMORY[0x277D6B060]);
    }
  }
}

- (void)sendSignature:(id)signature withDuration:(double)duration replyBlock:(id)block
{
  signatureCopy = signature;
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__BiometricAutoBugCapture_sendSignature_withDuration_replyBlock___block_invoke;
  v13[3] = &unk_2784FA178;
  v13[4] = self;
  v14 = signatureCopy;
  durationCopy = duration;
  v15 = blockCopy;
  v11 = blockCopy;
  v12 = signatureCopy;
  dispatch_async(dispatchQueue, v13);
}

void __65__BiometricAutoBugCapture_sendSignature_withDuration_replyBlock___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = os_transaction_create();
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 40);
  v6 = *(a1 + 56);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__BiometricAutoBugCapture_sendSignature_withDuration_replyBlock___block_invoke_2;
  v11[3] = &unk_2784FA150;
  v12 = v4;
  v13 = *(a1 + 48);
  if (([v5 snapshotWithSignature:v12 duration:0 event:0 payload:v11 reply:v6] & 1) == 0)
  {
    if (__osLog)
    {
      v7 = __osLog;
    }

    else
    {
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_ERROR, "Failed to send auto bug capture signature: %@\n", buf, 0xCu);
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      (*(v9 + 16))(v9, *MEMORY[0x277D6B060]);
    }
  }

  objc_autoreleasePoolPop(v3);
  v10 = *MEMORY[0x277D85DE8];
}

void __65__BiometricAutoBugCapture_sendSignature_withDuration_replyBlock___block_invoke_2(uint64_t a1, void *a2)
{
  *&v23[13] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D6B1A0]];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    if (__osLog)
    {
      v6 = __osLog;
    }

    else
    {
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *MEMORY[0x277D6B190];
      v9 = v6;
      v10 = [v3 objectForKeyedSubscript:v8];
      v20 = 138412546;
      v21 = v7;
      v22 = 2112;
      *v23 = v10;
      _os_log_impl(&dword_223E00000, v9, OS_LOG_TYPE_DEFAULT, "Successfully send auto bug capture signature: %@ with sessionID: %@\n", &v20, 0x16u);
    }

    v11 = *MEMORY[0x277D6B070];
  }

  else
  {
    v12 = [v3 objectForKeyedSubscript:*MEMORY[0x277D6B170]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v12 intValue];
    }

    else
    {
      v11 = *MEMORY[0x277D6B060];
    }

    if (__osLog)
    {
      v13 = __osLog;
    }

    else
    {
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = *MEMORY[0x277D6B178];
      v16 = v13;
      v17 = [v3 objectForKeyedSubscript:v15];
      v20 = 138412802;
      v21 = v14;
      v22 = 1024;
      *v23 = v11;
      v23[2] = 2112;
      *&v23[3] = v17;
      _os_log_impl(&dword_223E00000, v16, OS_LOG_TYPE_DEFAULT, "Dampened auto bug capture signature: %@ with error code: %d reason: %@\n", &v20, 0x1Cu);
    }
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    (*(v18 + 16))(v18, v11);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)initWithDomain:(void *)a1 process:dispatchQueue:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)getSignatureForReason:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  *a1 = 0;
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getSignatureForReason:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  *a1 = 0;
  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendAutoBugCaptureEvent:(_BYTE *)a1 .cold.1(_BYTE *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  *a1 = 0;
  v8 = *MEMORY[0x277D85DE8];
}

@end