@interface RingerIsOnChangeCallback
@end

@implementation RingerIsOnChangeCallback

uint64_t __cmsmdevicestate_RingerIsOnChangeCallback_block_invoke()
{
  v0 = +[MXSessionManager sharedInstance];
  v1 = byte_1EB75D361 == 0;

  return [(MXSessionManager *)v0 updateSilentModeState:v1 untilTime:0 withReason:@"MXSessionManager update from SB notification" forClientType:1 updateForStartup:0];
}

@end