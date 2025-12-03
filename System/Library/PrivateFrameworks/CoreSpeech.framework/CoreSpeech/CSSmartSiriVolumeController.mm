@interface CSSmartSiriVolumeController
- (CSSmartSiriVolumeController)init;
- (CSSmartSiriVolumeControllerDelegate)delegate;
- (id)getVolumeForTTSType:(unint64_t)type withContext:(id)context;
- (void)_createSSVClientConnectionIfNeeded;
- (void)didSmartSiriVolumeChangeForReason:(unint64_t)reason;
- (void)setPermanentVolumeOffsetWithDirection:(BOOL)direction;
- (void)setSmartSiriVolumeDirection:(BOOL)direction;
- (void)setSmartSiriVolumePercentage:(float)percentage;
@end

@implementation CSSmartSiriVolumeController

- (CSSmartSiriVolumeControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didSmartSiriVolumeChangeForReason:(unint64_t)reason
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (v6 = WeakRetained, v7 = objc_loadWeakRetained(&self->_delegate), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = *MEMORY[0x277D01598];
    if (os_log_type_enabled(*MEMORY[0x277D01598], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "[CSSmartSiriVolumeController didSmartSiriVolumeChangeForReason:]";
      v15 = 1026;
      reasonCopy2 = reason;
      _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_DEFAULT, "%s Notifying SSV Client on Volume change for reason - %{public}d", &v13, 0x12u);
    }

    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 didTTSVolumeChange:self forReason:reason];
  }

  else
  {
    v11 = *MEMORY[0x277D01598];
    if (os_log_type_enabled(*MEMORY[0x277D01598], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "[CSSmartSiriVolumeController didSmartSiriVolumeChangeForReason:]";
      v15 = 1026;
      reasonCopy2 = reason;
      _os_log_impl(&dword_222E4D000, v11, OS_LOG_TYPE_DEFAULT, "%s Dropped SSV Client notification for Volume change with reason - %{public}d", &v13, 0x12u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_createSSVClientConnectionIfNeeded
{
  v9 = *MEMORY[0x277D85DE8];
  if (!self->_ssvClient)
  {
    v3 = objc_alloc_init(CSSmartSiriVolumeClient);
    ssvClient = self->_ssvClient;
    self->_ssvClient = v3;

    [(CSSmartSiriVolumeClient *)self->_ssvClient setDelegate:self];
    if (!self->_ssvClient)
    {
      v5 = *MEMORY[0x277D01598];
      if (os_log_type_enabled(*MEMORY[0x277D01598], OS_LOG_TYPE_ERROR))
      {
        v7 = 136315138;
        v8 = "[CSSmartSiriVolumeController _createSSVClientConnectionIfNeeded]";
        _os_log_error_impl(&dword_222E4D000, v5, OS_LOG_TYPE_ERROR, "%s SmartSiriVolume not available", &v7, 0xCu);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setPermanentVolumeOffsetWithDirection:(BOOL)direction
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__CSSmartSiriVolumeController_setPermanentVolumeOffsetWithDirection___block_invoke;
  v4[3] = &unk_2784C6390;
  v4[4] = self;
  directionCopy = direction;
  dispatch_async(queue, v4);
}

void *__69__CSSmartSiriVolumeController_setPermanentVolumeOffsetWithDirection___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createSSVClientConnectionIfNeeded];
  result = *(*(a1 + 32) + 24);
  if (result)
  {
    v3 = *(a1 + 40);

    return [result setPermanentVolumeOffsetWithDirection:v3];
  }

  return result;
}

- (void)setSmartSiriVolumeDirection:(BOOL)direction
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__CSSmartSiriVolumeController_setSmartSiriVolumeDirection___block_invoke;
  v4[3] = &unk_2784C6390;
  v4[4] = self;
  directionCopy = direction;
  dispatch_sync(queue, v4);
}

void *__59__CSSmartSiriVolumeController_setSmartSiriVolumeDirection___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createSSVClientConnectionIfNeeded];
  result = *(*(a1 + 32) + 24);
  if (result)
  {
    v3 = *(a1 + 40);

    return [result setSmartSiriVolumeDirection:v3];
  }

  return result;
}

- (void)setSmartSiriVolumePercentage:(float)percentage
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__CSSmartSiriVolumeController_setSmartSiriVolumePercentage___block_invoke;
  v4[3] = &unk_2784C5998;
  v4[4] = self;
  percentageCopy = percentage;
  dispatch_sync(queue, v4);
}

void *__60__CSSmartSiriVolumeController_setSmartSiriVolumePercentage___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createSSVClientConnectionIfNeeded];
  result = *(*(a1 + 32) + 24);
  if (result)
  {
    LODWORD(v2) = *(a1 + 40);

    return [result setSmartSiriVolumePercentage:v2];
  }

  return result;
}

- (id)getVolumeForTTSType:(unint64_t)type withContext:(id)context
{
  contextCopy = context;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__14964;
  v19 = __Block_byref_object_dispose__14965;
  v20 = 0;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__CSSmartSiriVolumeController_getVolumeForTTSType_withContext___block_invoke;
  v11[3] = &unk_2784C4BE0;
  v13 = &v15;
  typeCopy = type;
  v11[4] = self;
  v12 = contextCopy;
  v8 = contextCopy;
  dispatch_sync(queue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __63__CSSmartSiriVolumeController_getVolumeForTTSType_withContext___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _createSSVClientConnectionIfNeeded];
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v3 = [v2 getVolumeForTTSType:*(a1 + 56) withContext:*(a1 + 40)];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *(*(*(a1 + 48) + 8) + 40);
    v7 = *MEMORY[0x277D01598];
    v8 = *MEMORY[0x277D01598];
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v7;
        [v6 volumeEstimate];
        v12 = 136315394;
        v13 = "[CSSmartSiriVolumeController getVolumeForTTSType:withContext:]_block_invoke";
        v14 = 2050;
        v15 = v10;
        _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_DEFAULT, "%s Estimated TTS volume : %{public}f", &v12, 0x16u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[CSSmartSiriVolumeController getVolumeForTTSType:withContext:]_block_invoke";
      _os_log_error_impl(&dword_222E4D000, v7, OS_LOG_TYPE_ERROR, "%s ERR: Failed to get TTS Volume", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (CSSmartSiriVolumeController)init
{
  v6.receiver = self;
  v6.super_class = CSSmartSiriVolumeController;
  v2 = [(CSSmartSiriVolumeController *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.ssv.clientq", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

@end