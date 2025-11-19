@interface CSSpeechModelTrainingXPCManager
- (void)registerXPCActivities;
@end

@implementation CSSpeechModelTrainingXPCManager

- (void)registerXPCActivities
{
  sub_100013D18("com.apple.siri.xpc_activity.speech-phonetic-match-building", XPC_ACTIVITY_CHECK_IN, &stru_10024E460, &stru_10024E480);
  sub_100013D18("com.apple.siri.xpc_activity.speech-uaap-lm", XPC_ACTIVITY_CHECK_IN, &stru_10024E4A0, &stru_10024E4C0);

  sub_100013D18("com.apple.siri.xpc_activity.speech-user-edit", XPC_ACTIVITY_CHECK_IN, &stru_10024E4E0, &stru_10024E500);
}

@end