@interface CSSiriAcousticFingerprinter
- (CSSiriAcousticFingerprinter)init;
- (CSSiriAcousticFingerprinterDelegate)delegate;
- (id)_connection;
- (id)_convertPCMDataForFingerprinting:(id)a3;
- (id)_service;
- (id)_serviceWithErrorHandler:(id)a3;
- (void)_cleanUpConnection;
- (void)_configureWithCurrentASBD;
- (void)_connectionInterrupted;
- (void)_connectionInvalidated;
- (void)appendPCMData:(id)a3;
- (void)dealloc;
- (void)flush;
- (void)reset;
- (void)setASBD:(AudioStreamBasicDescription *)a3;
- (void)setFingerprintInterval:(double)a3;
@end

@implementation CSSiriAcousticFingerprinter

- (CSSiriAcousticFingerprinterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)reset
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CSSiriAcousticFingerprinter_reset__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __36__CSSiriAcousticFingerprinter_reset__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[4])
  {
    v3 = [v2 _service];
    [v3 reset];
    [*(a1 + 32) _configureWithCurrentASBD];
    *(*(a1 + 32) + 32) = 0;
  }
}

- (void)flush
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CSSiriAcousticFingerprinter_flush__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __36__CSSiriAcousticFingerprinter_flush__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32) / *(v2 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__CSSiriAcousticFingerprinter_flush__block_invoke_2;
  v6[3] = &unk_2784C5FB8;
  v6[4] = v2;
  *&v6[5] = v3;
  v4 = [v2 _serviceWithErrorHandler:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__CSSiriAcousticFingerprinter_flush__block_invoke_62;
  v5[3] = &unk_2784C5FE0;
  v5[4] = *(a1 + 32);
  *&v5[5] = v3;
  [v4 getSignature:v5];
}

void __36__CSSiriAcousticFingerprinter_flush__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[CSSiriAcousticFingerprinter flush]_block_invoke_2";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_222E4D000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained acousticFingerprinter:*(a1 + 32) hasFingerprint:0 duration:*(a1 + 40)];

  v6 = *MEMORY[0x277D85DE8];
}

void __36__CSSiriAcousticFingerprinter_flush__block_invoke_62(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 24));
  [WeakRetained acousticFingerprinter:*(a1 + 32) hasFingerprint:v4 duration:*(a1 + 40)];
}

- (void)appendPCMData:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__CSSiriAcousticFingerprinter_appendPCMData___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __45__CSSiriAcousticFingerprinter_appendPCMData___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) length] / *(*(a1 + 40) + 64);
  v3 = [*(a1 + 40) _convertPCMDataForFingerprinting:*(a1 + 32)];
  v4 = [*(a1 + 40) _service];
  [v4 appendAcousticData:v3 sampleCount:v2 sampleRate:ASXSampleRateFromInt(*(*(a1 + 40) + 48))];

  *(*(a1 + 40) + 32) += v2;
  v5 = *(a1 + 40);
  if (v5[4] > v5[5])
  {
    *(*(a1 + 40) + 40) += [v5 _samplesPerInterval];
    v6 = *(a1 + 40);
    v7 = *(v6 + 32) / *(v6 + 48);
    v8 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v14 = "[CSSiriAcousticFingerprinter appendPCMData:]_block_invoke";
      v15 = 2048;
      v16 = v7;
      _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, "%s Getting signature for duration %lf", buf, 0x16u);
      v6 = *(a1 + 40);
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __45__CSSiriAcousticFingerprinter_appendPCMData___block_invoke_58;
    v12[3] = &unk_2784C5FB8;
    v12[4] = v6;
    *&v12[5] = v7;
    v9 = [v6 _serviceWithErrorHandler:v12];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __45__CSSiriAcousticFingerprinter_appendPCMData___block_invoke_60;
    v11[3] = &unk_2784C5FE0;
    v11[4] = *(a1 + 40);
    *&v11[5] = v7;
    [v9 getSignature:v11];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __45__CSSiriAcousticFingerprinter_appendPCMData___block_invoke_58(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[CSSiriAcousticFingerprinter appendPCMData:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_222E4D000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained acousticFingerprinter:*(a1 + 32) hasFingerprint:0 duration:*(a1 + 40)];

  v6 = *MEMORY[0x277D85DE8];
}

void __45__CSSiriAcousticFingerprinter_appendPCMData___block_invoke_60(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 24));
  [WeakRetained acousticFingerprinter:*(a1 + 32) hasFingerprint:v4 duration:*(a1 + 40)];
}

- (id)_convertPCMDataForFingerprinting:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && self->_fingerprinterConverter)
  {
    v6 = 2 * [v4 length] / self->_sourceASBD.mBytesPerPacket;
    v7 = [v5 length] / self->_sourceASBD.mBytesPerPacket;
    v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v6];
    ioOutputDataPacketSize = v7;
    *&outOutputData.mNumberBuffers = 1;
    outOutputData.mBuffers[0].mNumberChannels = 1;
    outOutputData.mBuffers[0].mDataByteSize = [v8 length];
    outOutputData.mBuffers[0].mData = [v8 mutableBytes];
    fingerprinterConverter = self->_fingerprinterConverter;
    inInputDataProcUserData[0] = MEMORY[0x277D85DD0];
    inInputDataProcUserData[1] = 3221225472;
    inInputDataProcUserData[2] = __64__CSSiriAcousticFingerprinter__convertPCMDataForFingerprinting___block_invoke;
    inInputDataProcUserData[3] = &unk_2784C5F90;
    v17 = v7;
    v16 = v5;
    v10 = AudioConverterFillComplexBuffer(fingerprinterConverter, AudioConverterFillComplexBuffer_BlockInvoke, inInputDataProcUserData, &ioOutputDataPacketSize, &outOutputData, 0);
    [v8 setLength:2 * ioOutputDataPacketSize];
    if (v10)
    {
      v14 = bswap32(v10);
      v11 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v21 = "[CSSiriAcousticFingerprinter _convertPCMDataForFingerprinting:]";
        v22 = 1042;
        v23 = 4;
        v24 = 2082;
        v25 = &v14;
        _os_log_error_impl(&dword_222E4D000, v11, OS_LOG_TYPE_ERROR, "%s Error during conversion for fingerprinter %{public}.4s", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v8 = v4;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t __64__CSSiriAcousticFingerprinter__convertPCMDataForFingerprinting___block_invoke(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a2 = *(a1 + 40);
  *a3 = 1;
  *(a3 + 8) = 1;
  *(a3 + 16) = [*(a1 + 32) bytes];
  *(a3 + 12) = [*(a1 + 32) length];
  return 0;
}

- (void)_configureWithCurrentASBD
{
  v20 = *MEMORY[0x277D85DE8];
  self->_nextFingerprintSampleNumber = [(CSSiriAcousticFingerprinter *)self _samplesPerInterval];
  v3 = MEMORY[0x277CEF0E8];
  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    mSampleRate = self->_sourceASBD.mSampleRate;
    LODWORD(buf.mSampleRate) = 136315394;
    *(&buf.mSampleRate + 4) = "[CSSiriAcousticFingerprinter _configureWithCurrentASBD]";
    LOWORD(buf.mFormatFlags) = 1024;
    *(&buf.mFormatFlags + 2) = mSampleRate;
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s Setting sample rate to %d", &buf, 0x12u);
  }

  v6 = ASXSampleRateFromInt(self->_sourceASBD.mSampleRate);
  v7 = [(CSSiriAcousticFingerprinter *)self _service];
  [v7 setSampleRate:v6];

  fingerprinterConverter = self->_fingerprinterConverter;
  if (fingerprinterConverter)
  {
    AudioConverterDispose(fingerprinterConverter);
    self->_fingerprinterConverter = 0;
  }

  if ([(CSSiriAcousticFingerprinter *)self _needsConversion])
  {
    *&buf.mSampleRate = FingerprinterASBD;
    *&buf.mBytesPerPacket = unk_222FB8580;
    *&buf.mBitsPerChannel = 16;
    buf.mSampleRate = self->_sourceASBD.mSampleRate;
    v9 = AudioConverterNew(&self->_sourceASBD, &buf, &self->_fingerprinterConverter);
    if (v9)
    {
      v12 = bswap32(v9);
      v10 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        *v13 = 136315650;
        v14 = "[CSSiriAcousticFingerprinter _configureWithCurrentASBD]";
        v15 = 1042;
        v16 = 4;
        v17 = 2082;
        v18 = &v12;
        _os_log_error_impl(&dword_222E4D000, v10, OS_LOG_TYPE_ERROR, "%s Could not make Fingerprinter decoder: %{public}.4s", v13, 0x1Cu);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setASBD:(AudioStreamBasicDescription *)a3
{
  if (a3)
  {
    v3 = *&a3->mSampleRate;
    v4 = *&a3->mBytesPerPacket;
    *&self->_sourceASBD.mBitsPerChannel = *&a3->mBitsPerChannel;
    *&self->_sourceASBD.mSampleRate = v3;
    *&self->_sourceASBD.mBytesPerPacket = v4;
    [(CSSiriAcousticFingerprinter *)self _configureWithCurrentASBD];
  }
}

- (void)setFingerprintInterval:(double)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__CSSiriAcousticFingerprinter_setFingerprintInterval___block_invoke;
  v4[3] = &unk_2784C6EC0;
  v4[4] = self;
  *&v4[5] = a3;
  dispatch_async(queue, v4);
}

double __54__CSSiriAcousticFingerprinter_setFingerprintInterval___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 88) = result;
  return result;
}

- (id)_serviceWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(CSSiriAcousticFingerprinter *)self _connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)_service
{
  v2 = [(CSSiriAcousticFingerprinter *)self _connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (void)_cleanUpConnection
{
  asxConnection = self->_asxConnection;
  if (asxConnection)
  {
    [(NSXPCConnection *)asxConnection setExportedObject:0];
    [(NSXPCConnection *)self->_asxConnection invalidate];
    v4 = self->_asxConnection;
    self->_asxConnection = 0;
  }
}

- (void)_connectionInvalidated
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[CSSiriAcousticFingerprinter _connectionInvalidated]";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  [(CSSiriAcousticFingerprinter *)self _cleanUpConnection];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_connectionInterrupted
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[CSSiriAcousticFingerprinter _connectionInterrupted]";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  [(CSSiriAcousticFingerprinter *)self _cleanUpConnection];
  v4 = *MEMORY[0x277D85DE8];
}

- (id)_connection
{
  asxConnection = self->_asxConnection;
  if (!asxConnection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.siri.acousticsignature"];
    v5 = self->_asxConnection;
    self->_asxConnection = v4;

    [(NSXPCConnection *)self->_asxConnection _setQueue:self->_queue];
    v6 = self->_asxConnection;
    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2836A8CB8];
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];

    objc_initWeak(&location, self);
    v8 = self->_asxConnection;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __42__CSSiriAcousticFingerprinter__connection__block_invoke;
    v13[3] = &unk_2784C5F68;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v8 setInterruptionHandler:v13];
    v9 = self->_asxConnection;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__CSSiriAcousticFingerprinter__connection__block_invoke_2;
    v11[3] = &unk_2784C5F68;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)v9 setInvalidationHandler:v11];
    [(NSXPCConnection *)self->_asxConnection resume];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    asxConnection = self->_asxConnection;
  }

  return asxConnection;
}

void __42__CSSiriAcousticFingerprinter__connection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInterrupted];
}

void __42__CSSiriAcousticFingerprinter__connection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInvalidated];
}

- (void)dealloc
{
  fingerprinterConverter = self->_fingerprinterConverter;
  if (fingerprinterConverter)
  {
    AudioConverterDispose(fingerprinterConverter);
  }

  [(CSSiriAcousticFingerprinter *)self _cleanUpConnection];
  v4.receiver = self;
  v4.super_class = CSSiriAcousticFingerprinter;
  [(CSSiriAcousticFingerprinter *)&v4 dealloc];
}

- (CSSiriAcousticFingerprinter)init
{
  v6.receiver = self;
  v6.super_class = CSSiriAcousticFingerprinter;
  v2 = [(CSSiriAcousticFingerprinter *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("ADAcousticFingerprinter", 0);
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    *(v2 + 6) = 0x40CF400000000000;
    *(v2 + 56) = 0u;
    *(v2 + 72) = 0u;
    *(v2 + 11) = 0x3FF0000000000000;
    *(v2 + 5) = [v2 _samplesPerInterval];
  }

  return v2;
}

@end