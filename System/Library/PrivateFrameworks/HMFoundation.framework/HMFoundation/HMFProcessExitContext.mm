@interface HMFProcessExitContext
+ (BOOL)onceCompareAndSetTimestamp:(id)timestamp toStoredValueWithKey:(id)key inStore:(id)store;
+ (id)lastExitContext;
- (HMFProcessExitContext)initWithRBSProcessExitContext:(id)context processName:(id)name userDefaultsStore:(id)store resetStoreReadToken:(BOOL)token;
- (HMFProcessExitContext)initWithUserDefaultsStore:(id)store processLastRecordedExitTimeKey:(id)key resetStoreReadToken:(BOOL)token timestamp:(id)timestamp osReasonDomain:(int64_t)domain osReasonCode:(unint64_t)code isCrash:(BOOL)crash isJetsam:(BOOL)self0 errorRepresentation:(id)self1;
@end

@implementation HMFProcessExitContext

+ (id)lastExitContext
{
  currentProcess = [MEMORY[0x277D46F48] currentProcess];
  lastExitContext = [currentProcess lastExitContext];

  v4 = [HMFProcessExitContext alloc];
  currentProcess2 = [MEMORY[0x277D46F48] currentProcess];
  name = [currentProcess2 name];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v8 = [(HMFProcessExitContext *)v4 initWithRBSProcessExitContext:lastExitContext processName:name userDefaultsStore:standardUserDefaults resetStoreReadToken:0];

  return v8;
}

+ (BOOL)onceCompareAndSetTimestamp:(id)timestamp toStoredValueWithKey:(id)key inStore:(id)store
{
  timestampCopy = timestamp;
  keyCopy = key;
  storeCopy = store;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__HMFProcessExitContext_onceCompareAndSetTimestamp_toStoredValueWithKey_inStore___block_invoke;
  block[3] = &unk_2786E73A0;
  v17 = storeCopy;
  v18 = keyCopy;
  v19 = timestampCopy;
  v10 = qword_280AFC5E8;
  v11 = timestampCopy;
  v12 = keyCopy;
  v13 = storeCopy;
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

- (HMFProcessExitContext)initWithRBSProcessExitContext:(id)context processName:(id)name userDefaultsStore:(id)store resetStoreReadToken:(BOOL)token
{
  if (context)
  {
    contextCopy = context;
    tokenCopy = token;
    storeCopy = store;
    v10 = contextCopy;
    v24 = [@"HMFProcessExitContextLast_" stringByAppendingString:name];
    timestamp = [v10 timestamp];
    status = [v10 status];
    domain = [status domain];
    status2 = [v10 status];
    code = [status2 code];
    status3 = [v10 status];
    LOBYTE(contextCopy) = [status3 isCrash];
    status4 = [v10 status];
    isJetsam = [status4 isJetsam];
    status5 = [v10 status];

    error = [status5 error];
    BYTE1(v21) = isJetsam;
    LOBYTE(v21) = contextCopy;
    v18 = [(HMFProcessExitContext *)self initWithUserDefaultsStore:storeCopy processLastRecordedExitTimeKey:v24 resetStoreReadToken:tokenCopy timestamp:timestamp osReasonDomain:domain osReasonCode:code isCrash:v21 isJetsam:error errorRepresentation:?];

    self = v18;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (HMFProcessExitContext)initWithUserDefaultsStore:(id)store processLastRecordedExitTimeKey:(id)key resetStoreReadToken:(BOOL)token timestamp:(id)timestamp osReasonDomain:(int64_t)domain osReasonCode:(unint64_t)code isCrash:(BOOL)crash isJetsam:(BOOL)self0 errorRepresentation:(id)self1
{
  tokenCopy = token;
  storeCopy = store;
  keyCopy = key;
  timestampCopy = timestamp;
  representationCopy = representation;
  v23.receiver = self;
  v23.super_class = HMFProcessExitContext;
  v21 = [(HMFProcessExitContext *)&v23 init];
  if (v21)
  {
    if (tokenCopy)
    {
      qword_280AFC5E8 = 0;
    }

    if (keyCopy)
    {
      v21->_isStale = [objc_opt_class() onceCompareAndSetTimestamp:timestampCopy toStoredValueWithKey:keyCopy inStore:storeCopy];
    }

    objc_storeStrong(&v21->_timestamp, timestamp);
    v21->_isCrash = crash;
    v21->_OSReasonDomain = domain;
    v21->_OSReasonCode = code;
    if (crash)
    {
      v21->_crashReasonCode = [representationCopy code];
    }

    v21->_isJetsam = jetsam;
    if (jetsam)
    {
      v21->_jetsamReasonCode = [representationCopy code];
    }

    objc_storeStrong(&v21->_errorRepresentation, representation);
  }

  return v21;
}

@end