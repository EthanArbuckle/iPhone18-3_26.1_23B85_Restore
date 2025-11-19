@interface HFCameraAnalyticsEvent
+ (id)errorCodeForError:(id)a3;
- (HFCameraAnalyticsEvent)init;
- (HFCameraAnalyticsEvent)initWithCameraClip:(id)a3;
- (HMCameraClip)cameraClip;
- (id)sendEventForState:(unint64_t)a3;
@end

@implementation HFCameraAnalyticsEvent

- (HFCameraAnalyticsEvent)init
{
  v6.receiver = self;
  v6.super_class = HFCameraAnalyticsEvent;
  v2 = [(HFCameraAnalyticsEvent *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    startDate = v2->_startDate;
    v2->_startDate = v3;
  }

  return v2;
}

- (HFCameraAnalyticsEvent)initWithCameraClip:(id)a3
{
  v4 = a3;
  v5 = [(HFCameraAnalyticsEvent *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cameraClip, v4);
  }

  return v6;
}

- (id)sendEventForState:(unint64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [(HFCameraAnalyticsEvent *)self cameraClip];

  v5 = HFLogForCategory(6uLL);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (v6)
    {
      v10 = 138412290;
      v11 = self;
LABEL_7:
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, v7, &v10, 0xCu);
    }
  }

  else if (v6)
  {
    v10 = 138412290;
    v11 = self;
    v7 = "Unable to send event for %@";
    goto LABEL_7;
  }

  v8 = *MEMORY[0x277D85DE8];
  return MEMORY[0x277CBEC10];
}

+ (id)errorCodeForError:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  if (a3)
  {
    a3 = [a3 code];
  }

  v4 = [v3 numberWithInteger:a3];

  return v4;
}

- (HMCameraClip)cameraClip
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraClip);

  return WeakRetained;
}

@end