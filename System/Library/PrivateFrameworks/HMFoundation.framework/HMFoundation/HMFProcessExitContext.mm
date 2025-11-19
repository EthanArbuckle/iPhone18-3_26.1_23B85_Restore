@interface HMFProcessExitContext
+ (BOOL)onceCompareAndSetTimestamp:(id)a3 toStoredValueWithKey:(id)a4 inStore:(id)a5;
+ (id)lastExitContext;
- (HMFProcessExitContext)initWithRBSProcessExitContext:(id)a3 processName:(id)a4 userDefaultsStore:(id)a5 resetStoreReadToken:(BOOL)a6;
- (HMFProcessExitContext)initWithUserDefaultsStore:(id)a3 processLastRecordedExitTimeKey:(id)a4 resetStoreReadToken:(BOOL)a5 timestamp:(id)a6 osReasonDomain:(int64_t)a7 osReasonCode:(unint64_t)a8 isCrash:(BOOL)a9 isJetsam:(BOOL)a10 errorRepresentation:(id)a11;
@end

@implementation HMFProcessExitContext

+ (id)lastExitContext
{
  v2 = [MEMORY[0x277D46F48] currentProcess];
  v3 = [v2 lastExitContext];

  v4 = [HMFProcessExitContext alloc];
  v5 = [MEMORY[0x277D46F48] currentProcess];
  v6 = [v5 name];
  v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v8 = [(HMFProcessExitContext *)v4 initWithRBSProcessExitContext:v3 processName:v6 userDefaultsStore:v7 resetStoreReadToken:0];

  return v8;
}

+ (BOOL)onceCompareAndSetTimestamp:(id)a3 toStoredValueWithKey:(id)a4 inStore:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__HMFProcessExitContext_onceCompareAndSetTimestamp_toStoredValueWithKey_inStore___block_invoke;
  block[3] = &unk_2786E73A0;
  v17 = v9;
  v18 = v8;
  v19 = v7;
  v10 = qword_280AFC5E8;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  if (v10 != -1)
  {
    dispatch_once(&qword_280AFC5E8, block);
  }

  v14 = _MergedGlobals_61;

  return v14;
}

void __81__HMFProcessExitContext_onceCompareAndSetTimestamp_toStoredValueWithKey_inStore___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  if (v2 && [v2 isEqualToDate:*(a1 + 48)])
  {
    _MergedGlobals_61 = 1;
  }

  [*(a1 + 32) setObject:*(a1 + 48) forKey:*(a1 + 40)];
}

- (HMFProcessExitContext)initWithRBSProcessExitContext:(id)a3 processName:(id)a4 userDefaultsStore:(id)a5 resetStoreReadToken:(BOOL)a6
{
  if (a3)
  {
    v8 = a3;
    v25 = a6;
    v9 = a5;
    v10 = v8;
    v24 = [@"HMFProcessExitContextLast_" stringByAppendingString:a4];
    v23 = [v10 timestamp];
    v26 = [v10 status];
    v22 = [v26 domain];
    v11 = [v10 status];
    v12 = [v11 code];
    v13 = [v10 status];
    LOBYTE(v8) = [v13 isCrash];
    v14 = [v10 status];
    v15 = [v14 isJetsam];
    v16 = [v10 status];

    v17 = [v16 error];
    BYTE1(v21) = v15;
    LOBYTE(v21) = v8;
    v18 = [(HMFProcessExitContext *)self initWithUserDefaultsStore:v9 processLastRecordedExitTimeKey:v24 resetStoreReadToken:v25 timestamp:v23 osReasonDomain:v22 osReasonCode:v12 isCrash:v21 isJetsam:v17 errorRepresentation:?];

    self = v18;
    v19 = self;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (HMFProcessExitContext)initWithUserDefaultsStore:(id)a3 processLastRecordedExitTimeKey:(id)a4 resetStoreReadToken:(BOOL)a5 timestamp:(id)a6 osReasonDomain:(int64_t)a7 osReasonCode:(unint64_t)a8 isCrash:(BOOL)a9 isJetsam:(BOOL)a10 errorRepresentation:(id)a11
{
  v14 = a5;
  v17 = a3;
  v18 = a4;
  v19 = a6;
  v20 = a11;
  v23.receiver = self;
  v23.super_class = HMFProcessExitContext;
  v21 = [(HMFProcessExitContext *)&v23 init];
  if (v21)
  {
    if (v14)
    {
      qword_280AFC5E8 = 0;
    }

    if (v18)
    {
      v21->_isStale = [objc_opt_class() onceCompareAndSetTimestamp:v19 toStoredValueWithKey:v18 inStore:v17];
    }

    objc_storeStrong(&v21->_timestamp, a6);
    v21->_isCrash = a9;
    v21->_OSReasonDomain = a7;
    v21->_OSReasonCode = a8;
    if (a9)
    {
      v21->_crashReasonCode = [v20 code];
    }

    v21->_isJetsam = a10;
    if (a10)
    {
      v21->_jetsamReasonCode = [v20 code];
    }

    objc_storeStrong(&v21->_errorRepresentation, a11);
  }

  return v21;
}

@end