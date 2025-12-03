@interface ENTemporaryExposureKeyManager
+ (id)temporaryExposureKeyFromRawKey:(id)key error:(id *)error;
- (BOOL)requireKeyReleasePromptForClient:(id)client;
- (ENTemporaryExposureKeyManager)initWithQueue:(id)queue;
- (ENTemporaryExposureKeyManagerDelegate)delegate;
- (void)resetClientState;
@end

@implementation ENTemporaryExposureKeyManager

- (ENTemporaryExposureKeyManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = ENTemporaryExposureKeyManager;
  v6 = [(ENTemporaryExposureKeyManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (BOOL)requireKeyReleasePromptForClient:(id)client
{
  nextPromptDate = self->_nextPromptDate;
  if (!nextPromptDate)
  {
    return 1;
  }

  clientCopy = client;
  [(NSDate *)nextPromptDate timeIntervalSinceNow];
  v6 = v5;
  appAPIVersion = [clientCopy appAPIVersion];

  return v6 <= 0.0 || appAPIVersion > 1;
}

- (void)resetClientState
{
  v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v3 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && gLogCategory_ENTemporaryExposureKeyManager <= 50 && (gLogCategory_ENTemporaryExposureKeyManager != -1 || _LogCategory_Initialize()))
  {
    [ENTemporaryExposureKeyManager resetClientState];
  }

  nextPromptDate = self->_nextPromptDate;
  self->_nextPromptDate = 0;

  self->_lastTEKRequestENIN = 0;
  oldestTEK = self->_oldestTEK;
  self->_oldestTEK = 0;
}

+ (id)temporaryExposureKeyFromRawKey:(id)key error:(id *)error
{
  keyCopy = key;
  v6 = [keyCopy length];
  bytes = [keyCopy bytes];
  if (v6 == 21)
  {
    v8 = bytes;
    v9 = objc_alloc_init(MEMORY[0x277CC5D28]);
    v10 = [keyCopy subdataWithRange:{0, 16}];
    [v9 setKeyData:v10];

    [v9 setRollingStartNumber:*(v8 + 16)];
    [v9 setRollingPeriod:*(v8 + 20)];
  }

  else if (error)
  {
    ENErrorF();
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (ENTemporaryExposureKeyManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end