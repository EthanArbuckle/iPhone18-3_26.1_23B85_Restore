@interface LACBiomeEvaluationDonationHelper
+ (id)sharedInstance;
- (LACBiomeEvaluationDonationHelper)init;
- (id)_mechanismWithState:(id)state;
- (void)donateEvent:(id)event;
@end

@implementation LACBiomeEvaluationDonationHelper

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_22 != -1)
  {
    +[LACBiomeEvaluationDonationHelper sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_20;

  return v3;
}

uint64_t __50__LACBiomeEvaluationDonationHelper_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance_20;
  sharedInstance_sharedInstance_20 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (LACBiomeEvaluationDonationHelper)init
{
  v23.receiver = self;
  v23.super_class = LACBiomeEvaluationDonationHelper;
  v2 = [(LACBiomeEvaluationDonationHelper *)&v23 init];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (!BiomeLibraryLibraryCore() || !getBiomeLibrarySymbolLoc())
  {
    v11 = LACLogBiome();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(LACBiomeEvaluationDonationHelper *)v11 init:v12];
    }

    v10 = 0;
    goto LABEL_10;
  }

  BiomeLibrarySymbolLoc = getBiomeLibrarySymbolLoc();
  if (BiomeLibrarySymbolLoc)
  {
    v4 = BiomeLibrarySymbolLoc();
    localAuthentication = [v4 LocalAuthentication];
    interactive = [localAuthentication Interactive];
    evaluations = [interactive Evaluations];
    source = [evaluations source];
    laSource = v2->_laSource;
    v2->_laSource = source;

LABEL_6:
    v10 = v2;
LABEL_10:

    return v10;
  }

  v20 = +[LACSharingManager isSharingError:];
  [(LACBiomeEvaluationDonationHelper *)v20 donateEvent:v21, v22];
  return result;
}

- (void)donateEvent:(id)event
{
  v36 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v5 = getBMLocalAuthenticationEvaluationsClass_softClass;
  v32 = getBMLocalAuthenticationEvaluationsClass_softClass;
  if (!getBMLocalAuthenticationEvaluationsClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getBMLocalAuthenticationEvaluationsClass_block_invoke;
    v34 = &unk_1E7A955D8;
    v35 = &v29;
    BiomeLibraryLibraryCore();
    Class = objc_getClass("BMLocalAuthenticationEvaluations");
    *(v35[1] + 24) = Class;
    getBMLocalAuthenticationEvaluationsClass_softClass = *(v35[1] + 24);
    v5 = v30[3];
  }

  v7 = v5;
  _Block_object_dispose(&v29, 8);
  v8 = LACLogBiome();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      laSource = self->_laSource;
      *buf = 138412546;
      *&buf[4] = eventCopy;
      *&buf[12] = 2112;
      *&buf[14] = laSource;
      _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "Donating %@ to %@", buf, 0x16u);
    }

    v11 = self->_laSource;
    v12 = [v5 alloc];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(eventCopy, "policy")}];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(eventCopy, "errorCode")}];
    biometry = [eventCopy biometry];
    v15 = [(LACBiomeEvaluationDonationHelper *)self _mechanismWithState:biometry];
    passcode = [eventCopy passcode];
    v17 = [(LACBiomeEvaluationDonationHelper *)self _mechanismWithState:passcode];
    dtoState = [eventCopy dtoState];
    LODWORD(v28) = [eventCopy ratchetState];
    v19 = [v12 initWithPolicy:v9 result:v13 biometry:v15 passcode:v17 ratchetState:dtoState callerBundleId:0 ratchetArmingState:v28];
    [(BMSource *)v11 sendEvent:v19];
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(LACBiomeEvaluationDonationHelper *)v9 donateEvent:v20, v21, v22, v23, v24, v25, v26];
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (id)_mechanismWithState:(id)state
{
  stateCopy = state;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v4 = getBMLocalAuthenticationEvaluationsMechanismClass_softClass;
  v24 = getBMLocalAuthenticationEvaluationsMechanismClass_softClass;
  if (!getBMLocalAuthenticationEvaluationsMechanismClass_softClass)
  {
    BiomeLibraryLibraryCore();
    v22[3] = objc_getClass("BMLocalAuthenticationEvaluationsMechanism");
    getBMLocalAuthenticationEvaluationsMechanismClass_softClass = v22[3];
    v4 = v22[3];
  }

  v5 = v4;
  _Block_object_dispose(&v21, 8);
  if (v4)
  {
    v6 = [v4 alloc];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(stateCopy, "available")}];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(stateCopy, "started")}];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(stateCopy, "success")}];
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(stateCopy, "lockout")}];
    if ([stateCopy generation])
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(stateCopy, "generation")}];
      v12 = [v6 initWithAvailable:v7 started:v8 success:v9 lockout:v10 generation:v11];
    }

    else
    {
      v12 = [v6 initWithAvailable:v7 started:v8 success:v9 lockout:v10 generation:0];
    }
  }

  else
  {
    v7 = LACLogBiome();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(LACBiomeEvaluationDonationHelper *)v7 donateEvent:v13, v14, v15, v16, v17, v18, v19];
    }

    v12 = 0;
  }

  return v12;
}

@end