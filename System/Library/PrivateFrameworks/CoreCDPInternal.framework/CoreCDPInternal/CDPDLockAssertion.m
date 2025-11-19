@interface CDPDLockAssertion
+ (id)lockWithError:(id *)a3;
- (void)unlock;
@end

@implementation CDPDLockAssertion

+ (id)lockWithError:(id *)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(CDPDLockAssertion);
  v17[0] = @"MKBAssertionKey";
  v17[1] = @"MKBAssertionTimeout";
  v18[0] = @"RemoteProfile";
  v18[1] = &unk_2858222B8;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v11 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v6 = getMKBDeviceLockAssertionSymbolLoc_ptr;
  v16 = getMKBDeviceLockAssertionSymbolLoc_ptr;
  if (!getMKBDeviceLockAssertionSymbolLoc_ptr)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __getMKBDeviceLockAssertionSymbolLoc_block_invoke;
    v12[3] = &unk_278E259A8;
    v12[4] = &v13;
    __getMKBDeviceLockAssertionSymbolLoc_block_invoke(v12);
    v6 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v6)
  {
    [CDPDBuddyStateObserver eventReceived:eventValue:];
    __break(1u);
  }

  v7 = v6(v5, &v11);
  if (v11)
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CDPDLockAssertion *)&v11 lockWithError:v8];
    }

    if (a3)
    {
      *a3 = v11;
    }

    else
    {
      CFRelease(v11);
    }
  }

  if (v7)
  {
    v4->_assertionRef = v7;
  }

  else
  {

    v4 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)unlock
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(CDPDLockAssertion *)v3 unlock];
  }

  assertionRef = v2->_assertionRef;
  if (assertionRef)
  {
    CFRelease(assertionRef);
    v2->_assertionRef = 0;
  }

  objc_sync_exit(v2);
}

+ (void)lockWithError:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "Failed to take device lock assertion: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end