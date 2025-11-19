@interface LACCredentialSignpostEvent
+ (LACCredentialSignpostEvent)sharedInstance;
- (id)extractableCredentialFailedReadAttemptWithAge:(id)a3 signingID:(id)a4;
- (id)extractableCredentialFailedWriteAttemptWithSigningID:(id)a3;
- (id)extractableCredentialReadAttemptWithAge:(id)a3 accessAllowed:(BOOL)a4;
- (id)extractableCredentialWriteAttemptWithAccessAllowed:(BOOL)a3;
@end

@implementation LACCredentialSignpostEvent

+ (LACCredentialSignpostEvent)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[LACCredentialSignpostEvent sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __44__LACCredentialSignpostEvent_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(LACCredentialSignpostEvent);

  return MEMORY[0x1EEE66BB8]();
}

- (id)extractableCredentialReadAttemptWithAge:(id)a3 accessAllowed:(BOOL)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__LACCredentialSignpostEvent_extractableCredentialReadAttemptWithAge_accessAllowed___block_invoke;
  v9[3] = &unk_1E7A956B8;
  v10 = v5;
  v11 = a4;
  v6 = v5;
  v7 = __84__LACCredentialSignpostEvent_extractableCredentialReadAttemptWithAge_accessAllowed___block_invoke(v9);

  return v7;
}

LACSignpostEvent *__84__LACCredentialSignpostEvent_extractableCredentialReadAttemptWithAge_accessAllowed___block_invoke(uint64_t a1)
{
  v2 = [LACSignpostEvent alloc];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __84__LACCredentialSignpostEvent_extractableCredentialReadAttemptWithAge_accessAllowed___block_invoke_2;
  v5[3] = &unk_1E7A95690;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v3 = [(LACSignpostEvent *)v2 initWithSendBlock:v5];

  return v3;
}

void __84__LACCredentialSignpostEvent_extractableCredentialReadAttemptWithAge_accessAllowed___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = LACLogCredentials();
  if (os_signpost_enabled(v2))
  {
    v3 = [*(a1 + 32) integerValue];
    v4 = *(a1 + 40);
    v6[0] = 67240448;
    v6[1] = v3;
    v7 = 1026;
    v8 = v4;
    _os_signpost_emit_with_name_impl(&dword_1B0233000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CredentialExtractAge", " enableTelemetry=YES  age=%{public,signpost.telemetry:number1,name=age}d  ok=%{public,signpost.telemetry:number2,name=ok}d ", v6, 0xEu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)extractableCredentialFailedReadAttemptWithAge:(id)a3 signingID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__LACCredentialSignpostEvent_extractableCredentialFailedReadAttemptWithAge_signingID___block_invoke;
  v11[3] = &unk_1E7A95708;
  v12 = v5;
  v13 = v6;
  v7 = v6;
  v8 = v5;
  v9 = __86__LACCredentialSignpostEvent_extractableCredentialFailedReadAttemptWithAge_signingID___block_invoke(v11);

  return v9;
}

LACSignpostEvent *__86__LACCredentialSignpostEvent_extractableCredentialFailedReadAttemptWithAge_signingID___block_invoke(uint64_t a1)
{
  v2 = [LACSignpostEvent alloc];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__LACCredentialSignpostEvent_extractableCredentialFailedReadAttemptWithAge_signingID___block_invoke_2;
  v5[3] = &unk_1E7A956E0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v3 = [(LACSignpostEvent *)v2 initWithSendBlock:v5];

  return v3;
}

void __86__LACCredentialSignpostEvent_extractableCredentialFailedReadAttemptWithAge_signingID___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = LACLogCredentials();
  if (os_signpost_enabled(v2))
  {
    v3 = [*(a1 + 32) integerValue];
    v4 = *(a1 + 40);
    v6[0] = 67240450;
    v6[1] = v3;
    v7 = 2114;
    v8 = v4;
    _os_signpost_emit_with_name_impl(&dword_1B0233000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CredentialExtractFailed", " enableTelemetry=YES  age=%{public,signpost.telemetry:number1,name=age}d  sid=%{public,signpost.telemetry:string1,name=sid}@ ", v6, 0x12u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)extractableCredentialWriteAttemptWithAccessAllowed:(BOOL)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __81__LACCredentialSignpostEvent_extractableCredentialWriteAttemptWithAccessAllowed___block_invoke;
  v5[3] = &__block_descriptor_33_e23___LACSignpostEvent_8__0l;
  v6 = a3;
  v3 = __81__LACCredentialSignpostEvent_extractableCredentialWriteAttemptWithAccessAllowed___block_invoke(v5);

  return v3;
}

LACSignpostEvent *__81__LACCredentialSignpostEvent_extractableCredentialWriteAttemptWithAccessAllowed___block_invoke(uint64_t a1)
{
  v2 = [LACSignpostEvent alloc];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __81__LACCredentialSignpostEvent_extractableCredentialWriteAttemptWithAccessAllowed___block_invoke_2;
  v5[3] = &__block_descriptor_33_e5_v8__0l;
  v6 = *(a1 + 32);
  v3 = [(LACSignpostEvent *)v2 initWithSendBlock:v5];

  return v3;
}

void __81__LACCredentialSignpostEvent_extractableCredentialWriteAttemptWithAccessAllowed___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = LACLogCredentials();
  if (os_signpost_enabled(v2))
  {
    v3 = *(a1 + 32);
    v5[0] = 67240192;
    v5[1] = v3;
    _os_signpost_emit_with_name_impl(&dword_1B0233000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CredentialWriteAttempt", " enableTelemetry=YES  ok=%{public,signpost.telemetry:number1,name=ok}d ", v5, 8u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (id)extractableCredentialFailedWriteAttemptWithSigningID:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__LACCredentialSignpostEvent_extractableCredentialFailedWriteAttemptWithSigningID___block_invoke;
  v7[3] = &unk_1E7A95770;
  v8 = v3;
  v4 = v3;
  v5 = __83__LACCredentialSignpostEvent_extractableCredentialFailedWriteAttemptWithSigningID___block_invoke(v7);

  return v5;
}

LACSignpostEvent *__83__LACCredentialSignpostEvent_extractableCredentialFailedWriteAttemptWithSigningID___block_invoke(uint64_t a1)
{
  v2 = [LACSignpostEvent alloc];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__LACCredentialSignpostEvent_extractableCredentialFailedWriteAttemptWithSigningID___block_invoke_2;
  v5[3] = &unk_1E7A955B0;
  v6 = *(a1 + 32);
  v3 = [(LACSignpostEvent *)v2 initWithSendBlock:v5];

  return v3;
}

void __83__LACCredentialSignpostEvent_extractableCredentialFailedWriteAttemptWithSigningID___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = LACLogCredentials();
  if (os_signpost_enabled(v2))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_signpost_emit_with_name_impl(&dword_1B0233000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CredentialWriteFailed", " enableTelemetry=YES  sid=%{public,signpost.telemetry:string1,name=sid}@ ", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end