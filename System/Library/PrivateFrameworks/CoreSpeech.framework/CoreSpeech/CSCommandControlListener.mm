@interface CSCommandControlListener
- (CSCommandControlListener)init;
- (CSCommandControlListenerDelegate)delegate;
- (void)CSXPCClient:(id)a3 didDisconnect:(BOOL)a4;
- (void)_startRequestWithCompletion:(id)a3;
- (void)audioStreamProvider:(id)a3 audioBufferAvailable:(id)a4;
- (void)audioStreamProvider:(id)a3 didStopStreamUnexpectedly:(int64_t)a4;
- (void)startListenWithOption:(id)a3 completion:(id)a4;
- (void)stopListenWithCompletion:(id)a3;
@end

@implementation CSCommandControlListener

- (CSCommandControlListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)CSXPCClient:(id)a3 didDisconnect:(BOOL)a4
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CSCommandControlListener_CSXPCClient_didDisconnect___block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __54__CSCommandControlListener_CSXPCClient_didDisconnect___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D015D8];
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 audioStream];
    v14 = 136315394;
    v15 = "[CSCommandControlListener CSXPCClient:didDisconnect:]_block_invoke";
    v16 = 1026;
    v17 = [v6 isStreaming];
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s Received xpc disconnection, audioStream is streaming = %{public}d", &v14, 0x12u);
  }

  v7 = [*(a1 + 32) audioStream];
  v8 = [v7 isStreaming];

  if (v8)
  {
    v9 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[CSCommandControlListener CSXPCClient:didDisconnect:]_block_invoke";
      _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_DEFAULT, "%s Calling didStopUnexpectedly", &v14, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained((*(a1 + 32) + 8));
      [v12 commandControlListener:*(a1 + 32) didStopUnexpectedly:1];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)audioStreamProvider:(id)a3 audioBufferAvailable:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__CSCommandControlListener_audioStreamProvider_audioBufferAvailable___block_invoke;
  v8[3] = &unk_2784C6FA8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __69__CSCommandControlListener_audioStreamProvider_audioBufferAvailable___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = objc_opt_respondsToSelector();

  v8 = objc_loadWeakRetained((*(a1 + 32) + 8));
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) dataForChannel:0];
    [v8 commandControlListener:v4 hasLPCMBufferAvailable:v5 hostTime:{objc_msgSend(*(a1 + 40), "hostTime")}];
  }

  else
  {
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      return;
    }

    v8 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v7 = *(a1 + 32);
    v5 = [*(a1 + 40) dataForChannel:0];
    [v8 commandControlListener:v7 hasLPCMBufferAvailable:v5];
  }
}

- (void)audioStreamProvider:(id)a3 didStopStreamUnexpectedly:(int64_t)a4
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__CSCommandControlListener_audioStreamProvider_didStopStreamUnexpectedly___block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __74__CSCommandControlListener_audioStreamProvider_didStopStreamUnexpectedly___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSCommandControlListener audioStreamProvider:didStopStreamUnexpectedly:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s Calling didStopUnexpectedly", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v5 commandControlListener:*(a1 + 32) didStopUnexpectedly:1];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)stopListenWithCompletion:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSCommandControlListener stopListenWithCompletion:]";
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s Stopping stopListenWithCompletion", buf, 0xCu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__CSCommandControlListener_stopListenWithCompletion___block_invoke;
  v13[3] = &unk_2784C6E20;
  v14 = v4;
  v6 = v4;
  v7 = MEMORY[0x223DD26C0](v13);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__CSCommandControlListener_stopListenWithCompletion___block_invoke_8;
  block[3] = &unk_2784C6E98;
  block[4] = self;
  v12 = v7;
  v9 = v7;
  dispatch_async(queue, block);

  v10 = *MEMORY[0x277D85DE8];
}

void __53__CSCommandControlListener_stopListenWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[CSCommandControlListener stopListenWithCompletion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEFAULT, "%s Calling didStop of CSCommandControlListener", &v9, 0xCu);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __53__CSCommandControlListener_stopListenWithCompletion___block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 32) audioStream];

  if (v2)
  {
    v4 = [*(a1 + 32) audioStream];
    [v4 stopAudioStreamWithOption:0 completion:*(a1 + 40)];
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1151 userInfo:0];
    (*(v3 + 16))(v3, 0);
  }
}

- (void)_startRequestWithCompletion:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __56__CSCommandControlListener__startRequestWithCompletion___block_invoke;
  v23[3] = &unk_2784C6E20;
  v5 = v4;
  v24 = v5;
  v6 = MEMORY[0x223DD26C0](v23);
  audioStreamProvider = self->_audioStreamProvider;
  if (audioStreamProvider)
  {
    v8 = MEMORY[0x277D016A0];
    v9 = [MEMORY[0x277D01648] contextForBuiltInVoiceTrigger];
    v10 = [v8 defaultRequestWithContext:v9];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v22 = 0;
    v13 = [(CSAudioStreamProviding *)audioStreamProvider audioStreamWithRequest:v10 streamName:v12 error:&v22];
    v14 = v22;

    if (v13)
    {
      [(CSCommandControlListener *)self setAudioStream:v13];
      [v13 setDelegate:self];
      v15 = [MEMORY[0x277D01678] noAlertOption];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __56__CSCommandControlListener__startRequestWithCompletion___block_invoke_7;
      v20[3] = &unk_2784C6E20;
      v21 = v6;
      [v13 startAudioStreamWithOption:v15 completion:v20];
    }

    else
    {
      v16 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
      {
        v18 = v16;
        v19 = [v14 localizedDescription];
        *buf = 136315394;
        v26 = "[CSCommandControlListener _startRequestWithCompletion:]";
        v27 = 2114;
        v28 = v19;
        _os_log_error_impl(&dword_222E4D000, v18, OS_LOG_TYPE_ERROR, "%s AudioStreamRequest has failed : %{public}@", buf, 0x16u);
      }

      (v6)[2](v6, 0, v14);
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1004 userInfo:0];
    (v6)[2](v6, 0, v14);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __56__CSCommandControlListener__startRequestWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[CSCommandControlListener _startRequestWithCompletion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEFAULT, "%s Calling didStart of CSCommandControlListener", &v9, 0xCu);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)startListenWithOption:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[CSCommandControlListener startListenWithOption:completion:]";
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEFAULT, "%s Start Listening for Command Control", buf, 0xCu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__CSCommandControlListener_startListenWithOption_completion___block_invoke;
  v14[3] = &unk_2784C6E20;
  v15 = v5;
  v7 = v5;
  v8 = MEMORY[0x223DD26C0](v14);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__CSCommandControlListener_startListenWithOption_completion___block_invoke_2;
  block[3] = &unk_2784C6E98;
  block[4] = self;
  v13 = v8;
  v10 = v8;
  dispatch_async(queue, block);

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __61__CSCommandControlListener_startListenWithOption_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __61__CSCommandControlListener_startListenWithOption_completion___block_invoke_2(uint64_t a1)
{
  v2 = [[CSXPCClient alloc] initWithType:1];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(a1 + 32) + 40) setDelegate:?];
  [*(*(a1 + 32) + 40) connect];
  v5 = *(*(a1 + 32) + 40);
  v6 = [MEMORY[0x277D01648] contextForBuiltInVoiceTrigger];
  v12 = 0;
  v7 = [v5 prepareAudioProviderWithContext:v6 clientType:3 error:&v12];
  v8 = v12;

  if (v7)
  {
    objc_storeStrong((*(a1 + 32) + 24), *(*(a1 + 32) + 40));
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    if (v9[3])
    {
      [v9 _startRequestWithCompletion:v10];
    }

    else
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1004 userInfo:0];
      (*(v10 + 16))(v10, 0, v11);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (CSCommandControlListener)init
{
  v6.receiver = self;
  v6.super_class = CSCommandControlListener;
  v2 = [(CSCommandControlListener *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSCommandControlListener", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

@end