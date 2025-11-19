@interface BMStreams
+ (BMAlarmStream)alarmStream;
+ (BMAppClipLaunchStream)appClipLaunch;
+ (BMAppLaunchStream)appLaunch;
+ (BMAskToBuyStream)askToBuyStream;
+ (BMBacklightStream)backlightStream;
+ (BMCarPlayStream)carPlayStream;
+ (BMContextualActionsStream)contextualActions;
+ (BMCoreDuetStream)coreDuetStream;
+ (BMCoreDuetStream)coreDuetSystemStream;
+ (BMDeviceMetadataStream)deviceMetadataStream;
+ (BMDiscoverabilitySignalStream)discoverabilitySignal;
+ (BMDoNotDisturbWhileDrivingStream)doNotDisturbWhileDrivingStream;
+ (BMFindMyLocationChangeStream)findMyLocationChangeStream;
+ (BMGameControllerStream)gameControllerStream;
+ (BMGroupActivitySessionStream)groupActivitySessionStream;
+ (BMHealthKitWorkoutStream)healthKitWorkoutStream;
+ (BMHomeKitClientAccessoryControlStream)homeKitClientAccessoryControlStream;
+ (BMHomeKitClientActionSetStream)homeKitClientActionSetStream;
+ (BMHomeKitClientMediaAccessoryControlStream)homeKitClientMediaAccessoryControlStream;
+ (BMIntentStream)intent;
+ (BMMediaUsageStream)mediaUsage;
+ (BMMindfulnessSessionStream)mindfulnessStream;
+ (BMNotificationStream)notificationStream;
+ (BMNowPlayingStream)nowPlayingStream;
+ (BMPOICategoryStream)poiCategory;
+ (BMPostSiriEngagementStream)postSiriEngagementStream;
+ (BMReadMessageStream)readMessageStream;
+ (BMSchoolTimeStream)schoolTimeStream;
+ (BMScreenRecordingStream)screenRecordingStream;
+ (BMScreenSharingStream)screenSharingStream;
+ (BMScreenTimeRequestStream)screenTimeRequestStream;
+ (BMSemanticLocationStream)semanticLocationStream;
+ (BMSiriExecutionStream)siriExecutionStream;
+ (BMSiriIntentEventsStream)siriIntentEventsStream;
+ (BMSiriUIStream)siriUIStream;
+ (BMSleepModeStream)sleepModeStream;
+ (BMSoundDetectionStream)soundDetection;
+ (BMTextInputSessionStream)textInputSessionStream;
+ (BMUserFocusActivityStream)userFocusActivity;
+ (BMUserFocusComputedModeStream)userFocusComputedMode;
+ (BMUserStatusChangeStream)userStatusChangeStream;
@end

@implementation BMStreams

+ (BMDiscoverabilitySignalStream)discoverabilitySignal
{
  v2 = objc_alloc_init(BMDiscoverabilitySignalStream);

  return v2;
}

+ (BMSleepModeStream)sleepModeStream
{
  v2 = objc_alloc_init(BMSleepModeStream);

  return v2;
}

+ (BMAppLaunchStream)appLaunch
{
  v2 = objc_alloc_init(BMAppLaunchStream);

  return v2;
}

+ (BMMediaUsageStream)mediaUsage
{
  v2 = objc_alloc_init(BMMediaUsageStream);

  return v2;
}

+ (BMAppClipLaunchStream)appClipLaunch
{
  v2 = objc_alloc_init(BMAppClipLaunchStream);

  return v2;
}

+ (BMIntentStream)intent
{
  v2 = objc_alloc_init(BMIntentStream);

  return v2;
}

+ (BMPOICategoryStream)poiCategory
{
  v2 = objc_alloc_init(BMPOICategoryStream);

  return v2;
}

+ (BMContextualActionsStream)contextualActions
{
  v2 = objc_alloc_init(BMContextualActionsStream);

  return v2;
}

+ (BMUserFocusComputedModeStream)userFocusComputedMode
{
  v2 = objc_alloc_init(BMUserFocusComputedModeStream);

  return v2;
}

+ (BMUserFocusActivityStream)userFocusActivity
{
  v2 = objc_alloc_init(BMUserFocusActivityStream);

  return v2;
}

+ (BMCarPlayStream)carPlayStream
{
  v2 = objc_alloc_init(BMCarPlayStream);

  return v2;
}

+ (BMDoNotDisturbWhileDrivingStream)doNotDisturbWhileDrivingStream
{
  v2 = objc_alloc_init(BMDoNotDisturbWhileDrivingStream);

  return v2;
}

+ (BMHomeKitClientAccessoryControlStream)homeKitClientAccessoryControlStream
{
  v2 = objc_alloc_init(BMHomeKitClientAccessoryControlStream);

  return v2;
}

+ (BMHomeKitClientMediaAccessoryControlStream)homeKitClientMediaAccessoryControlStream
{
  v2 = objc_alloc_init(BMHomeKitClientMediaAccessoryControlStream);

  return v2;
}

+ (BMHomeKitClientActionSetStream)homeKitClientActionSetStream
{
  v2 = objc_alloc_init(BMHomeKitClientActionSetStream);

  return v2;
}

+ (BMAlarmStream)alarmStream
{
  v2 = objc_alloc_init(BMAlarmStream);

  return v2;
}

+ (BMScreenRecordingStream)screenRecordingStream
{
  v2 = objc_alloc_init(BMScreenRecordingStream);

  return v2;
}

+ (BMScreenSharingStream)screenSharingStream
{
  v2 = objc_alloc_init(BMScreenSharingStream);

  return v2;
}

+ (BMNowPlayingStream)nowPlayingStream
{
  v2 = objc_alloc_init(BMNowPlayingStream);

  return v2;
}

+ (BMNotificationStream)notificationStream
{
  v2 = objc_alloc_init(BMNotificationStream);

  return v2;
}

+ (BMGroupActivitySessionStream)groupActivitySessionStream
{
  v2 = objc_alloc_init(BMGroupActivitySessionStream);

  return v2;
}

+ (BMSemanticLocationStream)semanticLocationStream
{
  v2 = objc_alloc_init(BMSemanticLocationStream);

  return v2;
}

+ (BMBacklightStream)backlightStream
{
  v2 = objc_alloc_init(BMBacklightStream);

  return v2;
}

+ (BMHealthKitWorkoutStream)healthKitWorkoutStream
{
  v2 = objc_alloc_init(BMHealthKitWorkoutStream);

  return v2;
}

+ (BMAskToBuyStream)askToBuyStream
{
  v2 = objc_alloc_init(BMAskToBuyStream);

  return v2;
}

+ (BMFindMyLocationChangeStream)findMyLocationChangeStream
{
  v2 = objc_alloc_init(BMFindMyLocationChangeStream);

  return v2;
}

+ (BMSoundDetectionStream)soundDetection
{
  v2 = objc_alloc_init(BMSoundDetectionStream);

  return v2;
}

+ (BMUserStatusChangeStream)userStatusChangeStream
{
  v2 = objc_alloc_init(BMUserStatusChangeStream);

  return v2;
}

+ (BMTextInputSessionStream)textInputSessionStream
{
  v2 = objc_alloc_init(BMTextInputSessionStream);

  return v2;
}

+ (BMScreenTimeRequestStream)screenTimeRequestStream
{
  v2 = objc_alloc_init(BMScreenTimeRequestStream);

  return v2;
}

+ (BMDeviceMetadataStream)deviceMetadataStream
{
  v2 = objc_alloc_init(BMDeviceMetadataStream);

  return v2;
}

+ (BMSchoolTimeStream)schoolTimeStream
{
  v2 = objc_alloc_init(BMSchoolTimeStream);

  return v2;
}

+ (BMMindfulnessSessionStream)mindfulnessStream
{
  v2 = objc_alloc_init(BMMindfulnessSessionStream);

  return v2;
}

+ (BMSiriIntentEventsStream)siriIntentEventsStream
{
  v2 = objc_alloc_init(BMSiriIntentEventsStream);

  return v2;
}

+ (BMGameControllerStream)gameControllerStream
{
  v2 = objc_alloc_init(BMGameControllerStream);

  return v2;
}

+ (BMSiriUIStream)siriUIStream
{
  v2 = objc_alloc_init(BMSiriUIStream);

  return v2;
}

+ (BMReadMessageStream)readMessageStream
{
  v2 = objc_alloc_init(BMReadMessageStream);

  return v2;
}

+ (BMSiriExecutionStream)siriExecutionStream
{
  v2 = objc_alloc_init(BMSiriExecutionStream);

  return v2;
}

+ (BMPostSiriEngagementStream)postSiriEngagementStream
{
  v2 = objc_alloc_init(BMPostSiriEngagementStream);

  return v2;
}

+ (BMCoreDuetStream)coreDuetStream
{
  v2 = [BMCoreDuetStream alloc];
  v3 = [get_DKKnowledgeStoreClass_0() userKnowledgeStore];
  v4 = [get_CDClientContextClass_0() userContext];
  v5 = [(BMCoreDuetStream *)v2 initWithKnowledgeStore:v3 clientContext:v4 identifier:@"CoreDuetStream"];

  return v5;
}

+ (BMCoreDuetStream)coreDuetSystemStream
{
  v2 = [BMCoreDuetStream alloc];
  v3 = [get_DKKnowledgeStoreClass_0() knowledgeStore];
  v4 = [get_CDClientContextClass_0() userContext];
  v5 = [(BMCoreDuetStream *)v2 initWithKnowledgeStore:v3 clientContext:v4 identifier:@"CoreDuetSystemStream"];

  return v5;
}

@end