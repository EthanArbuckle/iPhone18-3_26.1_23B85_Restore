@interface CMContinuityCaptureTimeSyncClock
- (CMContinuityCaptureTimeSyncClock)initWithClock:(id)a3;
- (CMContinuityCaptureTimeSyncClock)initWithClockIdentifier:(unint64_t)a3;
- (void)dealloc;
- (void)didBeginClockGrandmasterChangeWithGrandmasterID:(unint64_t)a3 localPort:(unsigned __int16)a4 forClock:(id)a5;
- (void)didChangeLockStateTo:(int)a3 forClock:(id)a4;
- (void)didEndClockGrandmasterChangeWithGrandmasterID:(unint64_t)a3 localPort:(unsigned __int16)a4 forClock:(id)a5;
@end

@implementation CMContinuityCaptureTimeSyncClock

- (CMContinuityCaptureTimeSyncClock)initWithClockIdentifier:(unint64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277D714D8]) initWithClockIdentifier:a3];
  v5 = [(CMContinuityCaptureTimeSyncClock *)self initWithClock:v4];

  return v5;
}

- (void)dealloc
{
  [(TSgPTPClock *)self->_ptpClock removeClient:self];
  [(CMContinuityCaptureTimeSyncClock *)self stopEmittingHeartBeatSignposts];
  v3.receiver = self;
  v3.super_class = CMContinuityCaptureTimeSyncClock;
  [(CMContinuityCaptureTimeSyncClock *)&v3 dealloc];
}

- (void)didChangeLockStateTo:(int)a3 forClock:(id)a4
{
  v6 = a4;
  v7 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543874;
    v9 = self;
    v10 = 2048;
    v11 = [v6 clockIdentifier];
    v12 = 1024;
    v13 = a3;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ clock %lld changed lock state to %d", &v8, 0x1Cu);
  }
}

- (void)didBeginClockGrandmasterChangeWithGrandmasterID:(unint64_t)a3 localPort:(unsigned __int16)a4 forClock:(id)a5
{
  v7 = a5;
  v8 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543874;
    v10 = self;
    v11 = 2048;
    v12 = [v7 clockIdentifier];
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ clock %lld will change grandmaster to %lld", &v9, 0x20u);
  }
}

- (void)didEndClockGrandmasterChangeWithGrandmasterID:(unint64_t)a3 localPort:(unsigned __int16)a4 forClock:(id)a5
{
  v7 = a5;
  v8 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543874;
    v10 = self;
    v11 = 2048;
    v12 = [v7 clockIdentifier];
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ clock %lld did change grandmaster to %lld", &v9, 0x20u);
  }
}

- (CMContinuityCaptureTimeSyncClock)initWithClock:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = CMContinuityCaptureTimeSyncClock;
  v6 = [(CMContinuityCaptureTimeSyncClock *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ptpClock, a3);
    [(TSgPTPClock *)v7->_ptpClock addClient:v7];
    v8 = [v5 clockIdentifier];
    v9 = [MEMORY[0x277D714D0] timeSyncAudioClockDeviceUIDForClockIdentifier:v8];
    clockDeviceUID = v7->_clockDeviceUID;
    v7->_clockDeviceUID = v9;

    if (!v7->_ptpClock || !v7->_clockDeviceUID)
    {
      v12 = 0;
      goto LABEL_6;
    }

    v11 = *MEMORY[0x277D714F8];
    v7->_clockIdentifier = v8;
    v7->_grandMasterIdentifier = v11;
  }

  v12 = v7;
LABEL_6:

  return v12;
}

@end