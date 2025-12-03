@interface HFCameraAnalyticsEvent
+ (id)errorCodeForError:(id)error;
- (HFCameraAnalyticsEvent)init;
- (HFCameraAnalyticsEvent)initWithCameraClip:(id)clip;
- (HMCameraClip)cameraClip;
- (id)sendEventForState:(unint64_t)state;
@end

@implementation HFCameraAnalyticsEvent

- (HFCameraAnalyticsEvent)init
{
  v6.receiver = self;
  v6.super_class = HFCameraAnalyticsEvent;
  v2 = [(HFCameraAnalyticsEvent *)&v6 init];
  if (v2)
  {
    date = [MEMORY[0x277CBEAA8] date];
    startDate = v2->_startDate;
    v2->_startDate = date;
  }

  return v2;
}

- (HFCameraAnalyticsEvent)initWithCameraClip:(id)clip
{
  clipCopy = clip;
  v5 = [(HFCameraAnalyticsEvent *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cameraClip, clipCopy);
  }

  return v6;
}

- (id)sendEventForState:(unint64_t)state
{
  v12 = *MEMORY[0x277D85DE8];
  cameraClip = [(HFCameraAnalyticsEvent *)self cameraClip];

  v5 = HFLogForCategory(6uLL);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (cameraClip)
  {
    if (v6)
    {
      v10 = 138412290;
      selfCopy2 = self;
LABEL_7:
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, v7, &v10, 0xCu);
    }
  }

  else if (v6)
  {
    v10 = 138412290;
    selfCopy2 = self;
    v7 = "Unable to send event for %@";
    goto LABEL_7;
  }

  v8 = *MEMORY[0x277D85DE8];
  return MEMORY[0x277CBEC10];
}

+ (id)errorCodeForError:(id)error
{
  v3 = MEMORY[0x277CCABB0];
  if (error)
  {
    error = [error code];
  }

  v4 = [v3 numberWithInteger:error];

  return v4;
}

- (HMCameraClip)cameraClip
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraClip);

  return WeakRetained;
}

@end