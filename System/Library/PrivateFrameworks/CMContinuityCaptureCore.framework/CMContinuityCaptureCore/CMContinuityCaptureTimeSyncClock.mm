@interface CMContinuityCaptureTimeSyncClock
- (CMContinuityCaptureTimeSyncClock)initWithClock:(id)clock;
- (CMContinuityCaptureTimeSyncClock)initWithClockIdentifier:(unint64_t)identifier;
- (void)dealloc;
- (void)didBeginClockGrandmasterChangeWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port forClock:(id)clock;
- (void)didChangeLockStateTo:(int)to forClock:(id)clock;
- (void)didEndClockGrandmasterChangeWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port forClock:(id)clock;
@end

@implementation CMContinuityCaptureTimeSyncClock

- (CMContinuityCaptureTimeSyncClock)initWithClockIdentifier:(unint64_t)identifier
{
  v4 = [objc_alloc(MEMORY[0x277D714D8]) initWithClockIdentifier:identifier];
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

- (void)didChangeLockStateTo:(int)to forClock:(id)clock
{
  clockCopy = clock;
  v7 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543874;
    selfCopy = self;
    v10 = 2048;
    clockIdentifier = [clockCopy clockIdentifier];
    v12 = 1024;
    toCopy = to;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ clock %lld changed lock state to %d", &v8, 0x1Cu);
  }
}

- (void)didBeginClockGrandmasterChangeWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port forClock:(id)clock
{
  clockCopy = clock;
  v8 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543874;
    selfCopy = self;
    v11 = 2048;
    clockIdentifier = [clockCopy clockIdentifier];
    v13 = 2048;
    dCopy = d;
    _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ clock %lld will change grandmaster to %lld", &v9, 0x20u);
  }
}

- (void)didEndClockGrandmasterChangeWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port forClock:(id)clock
{
  clockCopy = clock;
  v8 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543874;
    selfCopy = self;
    v11 = 2048;
    clockIdentifier = [clockCopy clockIdentifier];
    v13 = 2048;
    dCopy = d;
    _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ clock %lld did change grandmaster to %lld", &v9, 0x20u);
  }
}

- (CMContinuityCaptureTimeSyncClock)initWithClock:(id)clock
{
  clockCopy = clock;
  v14.receiver = self;
  v14.super_class = CMContinuityCaptureTimeSyncClock;
  v6 = [(CMContinuityCaptureTimeSyncClock *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ptpClock, clock);
    [(TSgPTPClock *)v7->_ptpClock addClient:v7];
    clockIdentifier = [clockCopy clockIdentifier];
    v9 = [MEMORY[0x277D714D0] timeSyncAudioClockDeviceUIDForClockIdentifier:clockIdentifier];
    clockDeviceUID = v7->_clockDeviceUID;
    v7->_clockDeviceUID = v9;

    if (!v7->_ptpClock || !v7->_clockDeviceUID)
    {
      v12 = 0;
      goto LABEL_6;
    }

    v11 = *MEMORY[0x277D714F8];
    v7->_clockIdentifier = clockIdentifier;
    v7->_grandMasterIdentifier = v11;
  }

  v12 = v7;
LABEL_6:

  return v12;
}

@end