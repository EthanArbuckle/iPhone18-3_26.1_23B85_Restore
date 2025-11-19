@interface LBFBitacoraStateTransition
- (LBFBitacoraStateTransition)initWithBitcoraState:(int64_t)a3 previousState:(int64_t)a4 timestamp:(id)a5 timedelta:(double)a6;
@end

@implementation LBFBitacoraStateTransition

- (LBFBitacoraStateTransition)initWithBitcoraState:(int64_t)a3 previousState:(int64_t)a4 timestamp:(id)a5 timedelta:(double)a6
{
  v20 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v17.receiver = self;
  v17.super_class = LBFBitacoraStateTransition;
  v12 = [(LBFBitacoraStateTransition *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_state = a3;
    v12->_previousState = a4;
    objc_storeStrong(&v12->_timestamp, a5);
    v13->_timedelta = a6;
    if (a6 < 0.0)
    {
      v14 = LBFLogContextBitacoraStateTransition;
      if (os_log_type_enabled(LBFLogContextBitacoraStateTransition, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v19 = a3;
        _os_log_impl(&dword_255ED5000, v14, OS_LOG_TYPE_INFO, "trial events are tracked earlier than the bucket %d", buf, 8u);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

@end