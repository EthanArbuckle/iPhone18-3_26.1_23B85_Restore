@interface NTKFaceSupportNotificationPresentationEvent
- (NSDictionary)ntkfs_analyticsJSONRepresentation;
- (NTKFaceSupportNotificationPresentationEvent)initWithBundleIdentifier:(id)identifier status:(int64_t)status artworkUsed:(int64_t)used delayFromServerPush:(double)push delayFromBundleUnlock:(double)unlock schedulingErrorCode:(int64_t)code optOutSources:(int64_t)sources;
@end

@implementation NTKFaceSupportNotificationPresentationEvent

- (NTKFaceSupportNotificationPresentationEvent)initWithBundleIdentifier:(id)identifier status:(int64_t)status artworkUsed:(int64_t)used delayFromServerPush:(double)push delayFromBundleUnlock:(double)unlock schedulingErrorCode:(int64_t)code optOutSources:(int64_t)sources
{
  identifierCopy = identifier;
  selfCopy = 0;
  if ([identifierCopy length] && (status - 5) >= 0xFFFFFFFFFFFFFFFCLL && push > 0.0 && unlock > 0.0 && sources <= 3)
  {
    v22.receiver = self;
    v22.super_class = NTKFaceSupportNotificationPresentationEvent;
    v18 = [(NTKFaceSupportNotificationPresentationEvent *)&v22 init];
    if (v18)
    {
      v19 = [identifierCopy copy];
      bundleIdentifier = v18->_bundleIdentifier;
      v18->_bundleIdentifier = v19;

      v18->_status = status;
      v18->_artworkUsed = used;
      v18->_delayFromServerPush = push;
      v18->_delayFromBundleUnlock = unlock;
      v18->_schedulingErrorCode = code;
      v18->_optOutSources = sources;
    }

    self = v18;
    selfCopy = self;
  }

  return selfCopy;
}

- (NSDictionary)ntkfs_analyticsJSONRepresentation
{
  v21[7] = *MEMORY[0x277D85DE8];
  bundleIdentifier = [(NTKFaceSupportNotificationPresentationEvent *)self bundleIdentifier];
  status = [(NTKFaceSupportNotificationPresentationEvent *)self status];
  artworkUsed = [(NTKFaceSupportNotificationPresentationEvent *)self artworkUsed];
  [(NTKFaceSupportNotificationPresentationEvent *)self delayFromServerPush];
  v7 = v6;
  [(NTKFaceSupportNotificationPresentationEvent *)self delayFromBundleUnlock];
  v9 = v8;
  schedulingErrorCode = [(NTKFaceSupportNotificationPresentationEvent *)self schedulingErrorCode];
  optOutSources = [(NTKFaceSupportNotificationPresentationEvent *)self optOutSources];
  v21[0] = bundleIdentifier;
  v20[0] = @"bundle_identifier";
  v20[1] = @"status";
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:status];
  v21[1] = v12;
  v20[2] = @"artwork_used";
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:artworkUsed];
  v21[2] = v13;
  v20[3] = @"delay_from_server_push";
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  v21[3] = v14;
  v20[4] = @"delay_from_bundle_unlock";
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  v21[4] = v15;
  v20[5] = @"scheduling_error_code";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:schedulingErrorCode];
  v21[5] = v16;
  v20[6] = @"opt_out_sources";
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:optOutSources];
  v21[6] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:7];

  return v18;
}

@end