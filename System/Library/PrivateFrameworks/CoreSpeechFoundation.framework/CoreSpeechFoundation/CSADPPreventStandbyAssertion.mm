@interface CSADPPreventStandbyAssertion
- (CSADPPreventStandbyAssertion)initWithName:(id)a3 clientQueue:(id)a4;
- (OS_dispatch_queue)clientQueue;
- (void)_setupADPAssertion:(id)a3;
- (void)dealloc;
@end

@implementation CSADPPreventStandbyAssertion

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_adpAssertion)
  {
    ADPAssertionDestroy();
    self->_adpAssertion = 0;
  }

  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSADPPreventStandbyAssertion dealloc]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Destroyed ADP assertion for darwinOS", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = CSADPPreventStandbyAssertion;
  [(CSADPPreventStandbyAssertion *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (OS_dispatch_queue)clientQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_clientQueue);

  return WeakRetained;
}

- (void)_setupADPAssertion:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_adpAssertion)
  {
    ADPAssertionDestroy();
    self->_adpAssertion = 0;
  }

  self->_adpAssertion = ADPAssertionCreateWithDispatchQueue();
  objc_initWeak(&location, self);
  adpAssertion = self->_adpAssertion;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  ADPAssertionSetCancelHandler();
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[CSADPPreventStandbyAssertion _setupADPAssertion:]";
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Taking ADP assertion %{public}@ for darwinOS", buf, 0x16u);
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  v8 = *MEMORY[0x1E69E9840];
}

void __51__CSADPPreventStandbyAssertion__setupADPAssertion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained clientQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__CSADPPreventStandbyAssertion__setupADPAssertion___block_invoke_2;
  v5[3] = &unk_1E865C970;
  v6 = *(a1 + 32);
  v7 = WeakRetained;
  v4 = WeakRetained;
  dispatch_async(v3, v5);
}

uint64_t __51__CSADPPreventStandbyAssertion__setupADPAssertion___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[CSADPPreventStandbyAssertion _setupADPAssertion:]_block_invoke_2";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s appledisplayplatformd is lost, reset ADP assertion for %{public}@", &v6, 0x16u);
  }

  result = [*(a1 + 40) _setupADPAssertion:*(a1 + 32)];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (CSADPPreventStandbyAssertion)initWithName:(id)a3 clientQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (+[CSUtils deviceRequirePreventStandbyAssertion])
  {
    v13.receiver = self;
    v13.super_class = CSADPPreventStandbyAssertion;
    v9 = [(CSADPPreventStandbyAssertion *)&v13 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_name, a3);
      objc_storeWeak(p_isa + 3, v8);
      [p_isa _setupADPAssertion:v7];
    }

    self = p_isa;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end