@interface NTKFaceSupportNotificationPresentationEvent
- (NSDictionary)ntkfs_analyticsJSONRepresentation;
- (NTKFaceSupportNotificationPresentationEvent)initWithBundleIdentifier:(id)a3 status:(int64_t)a4 artworkUsed:(int64_t)a5 delayFromServerPush:(double)a6 delayFromBundleUnlock:(double)a7 schedulingErrorCode:(int64_t)a8 optOutSources:(int64_t)a9;
@end

@implementation NTKFaceSupportNotificationPresentationEvent

- (NTKFaceSupportNotificationPresentationEvent)initWithBundleIdentifier:(id)a3 status:(int64_t)a4 artworkUsed:(int64_t)a5 delayFromServerPush:(double)a6 delayFromBundleUnlock:(double)a7 schedulingErrorCode:(int64_t)a8 optOutSources:(int64_t)a9
{
  v16 = a3;
  v17 = 0;
  if ([v16 length] && (a4 - 5) >= 0xFFFFFFFFFFFFFFFCLL && a6 > 0.0 && a7 > 0.0 && a9 <= 3)
  {
    v22.receiver = self;
    v22.super_class = NTKFaceSupportNotificationPresentationEvent;
    v18 = [(NTKFaceSupportNotificationPresentationEvent *)&v22 init];
    if (v18)
    {
      v19 = [v16 copy];
      bundleIdentifier = v18->_bundleIdentifier;
      v18->_bundleIdentifier = v19;

      v18->_status = a4;
      v18->_artworkUsed = a5;
      v18->_delayFromServerPush = a6;
      v18->_delayFromBundleUnlock = a7;
      v18->_schedulingErrorCode = a8;
      v18->_optOutSources = a9;
    }

    self = v18;
    v17 = self;
  }

  return v17;
}

- (NSDictionary)ntkfs_analyticsJSONRepresentation
{
  v21[7] = *MEMORY[0x277D85DE8];
  v3 = [(NTKFaceSupportNotificationPresentationEvent *)self bundleIdentifier];
  v4 = [(NTKFaceSupportNotificationPresentationEvent *)self status];
  v5 = [(NTKFaceSupportNotificationPresentationEvent *)self artworkUsed];
  [(NTKFaceSupportNotificationPresentationEvent *)self delayFromServerPush];
  v7 = v6;
  [(NTKFaceSupportNotificationPresentationEvent *)self delayFromBundleUnlock];
  v9 = v8;
  v10 = [(NTKFaceSupportNotificationPresentationEvent *)self schedulingErrorCode];
  v11 = [(NTKFaceSupportNotificationPresentationEvent *)self optOutSources];
  v21[0] = v3;
  v20[0] = @"bundle_identifier";
  v20[1] = @"status";
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
  v21[1] = v12;
  v20[2] = @"artwork_used";
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  v21[2] = v13;
  v20[3] = @"delay_from_server_push";
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  v21[3] = v14;
  v20[4] = @"delay_from_bundle_unlock";
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  v21[4] = v15;
  v20[5] = @"scheduling_error_code";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
  v21[5] = v16;
  v20[6] = @"opt_out_sources";
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
  v21[6] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:7];

  return v18;
}

@end