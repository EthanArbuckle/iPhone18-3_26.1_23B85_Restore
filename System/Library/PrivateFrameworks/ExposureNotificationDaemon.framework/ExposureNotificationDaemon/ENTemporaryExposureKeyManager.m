@interface ENTemporaryExposureKeyManager
+ (id)temporaryExposureKeyFromRawKey:(id)a3 error:(id *)a4;
- (BOOL)requireKeyReleasePromptForClient:(id)a3;
- (ENTemporaryExposureKeyManager)initWithQueue:(id)a3;
- (ENTemporaryExposureKeyManagerDelegate)delegate;
- (void)resetClientState;
@end

@implementation ENTemporaryExposureKeyManager

- (ENTemporaryExposureKeyManager)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ENTemporaryExposureKeyManager;
  v6 = [(ENTemporaryExposureKeyManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

- (BOOL)requireKeyReleasePromptForClient:(id)a3
{
  nextPromptDate = self->_nextPromptDate;
  if (!nextPromptDate)
  {
    return 1;
  }

  v4 = a3;
  [(NSDate *)nextPromptDate timeIntervalSinceNow];
  v6 = v5;
  v7 = [v4 appAPIVersion];

  return v6 <= 0.0 || v7 > 1;
}

- (void)resetClientState
{
  v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v4 = [v3 isSensitiveLoggingAllowed];

  if (v4 && gLogCategory_ENTemporaryExposureKeyManager <= 50 && (gLogCategory_ENTemporaryExposureKeyManager != -1 || _LogCategory_Initialize()))
  {
    [ENTemporaryExposureKeyManager resetClientState];
  }

  nextPromptDate = self->_nextPromptDate;
  self->_nextPromptDate = 0;

  self->_lastTEKRequestENIN = 0;
  oldestTEK = self->_oldestTEK;
  self->_oldestTEK = 0;
}

+ (id)temporaryExposureKeyFromRawKey:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 length];
  v7 = [v5 bytes];
  if (v6 == 21)
  {
    v8 = v7;
    v9 = objc_alloc_init(MEMORY[0x277CC5D28]);
    v10 = [v5 subdataWithRange:{0, 16}];
    [v9 setKeyData:v10];

    [v9 setRollingStartNumber:*(v8 + 16)];
    [v9 setRollingPeriod:*(v8 + 20)];
  }

  else if (a4)
  {
    ENErrorF();
    *a4 = v9 = 0;
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