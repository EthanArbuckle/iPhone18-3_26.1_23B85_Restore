@interface CSSpeakerRecognitionProxy
- (CSSpeakerRecognitionProxy)initWithDelegate:(id)a3;
- (CSSpeakerRecognitionProxyProtocol)delegate;
- (void)dealloc;
- (void)didFinishSpeakerRecognition:(id)a3;
- (void)didReceiveSpeakerRecognitionScoreCard:(id)a3;
- (void)invalidateXPCConnection;
- (void)startXPCConnection;
@end

@implementation CSSpeakerRecognitionProxy

- (CSSpeakerRecognitionProxyProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didFinishSpeakerRecognition:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[CSSpeakerRecognitionProxy didFinishSpeakerRecognition:]";
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v12, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 didFinishSpeakerRecognition:v4];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveSpeakerRecognitionScoreCard:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[CSSpeakerRecognitionProxy didReceiveSpeakerRecognitionScoreCard:]";
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v12, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 didReceiveSpeakerRecognitionScoreCard:v4];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(CSSpeakerRecognitionProxy *)self invalidateXPCConnection];
  v3.receiver = self;
  v3.super_class = CSSpeakerRecognitionProxy;
  [(CSSpeakerRecognitionProxy *)&v3 dealloc];
}

- (void)invalidateXPCConnection
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSSpeakerRecognitionProxy invalidateXPCConnection]";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  [(CSSSRXPCClient *)self->_ssrXPCClient invalidate];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)startXPCConnection
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSSpeakerRecognitionProxy startXPCConnection]";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  [(CSSSRXPCClient *)self->_ssrXPCClient startXPCConnection];
  v4 = *MEMORY[0x277D85DE8];
}

- (CSSpeakerRecognitionProxy)initWithDelegate:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CSSpeakerRecognitionProxy;
  v5 = [(CSSpeakerRecognitionProxy *)&v12 init];
  if (v5 && (v6 = objc_alloc_init(CSSSRXPCClient), ssrXPCClient = v5->_ssrXPCClient, v5->_ssrXPCClient = v6, ssrXPCClient, [(CSSSRXPCClient *)v5->_ssrXPCClient setDelegate:v5], objc_storeWeak(&v5->_delegate, v4), !v5->_ssrXPCClient))
  {
    v9 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = "[CSSpeakerRecognitionProxy initWithDelegate:]";
      _os_log_error_impl(&dword_222E4D000, v9, OS_LOG_TYPE_ERROR, "%s ERR: Failed to establish XPC connection!", buf, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

@end