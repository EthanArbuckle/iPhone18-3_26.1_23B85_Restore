@interface MXSystemMirroring
@end

@implementation MXSystemMirroring

uint64_t __MXSystemMirroring_IsDefaultRouteAirPlayReceiver_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  MXSystemMirroring_IsDefaultRouteAirPlayReceiver_isSystemMirroringDefaultRouteAirPlayReceiver = result;
  return result;
}

uint64_t __MXSystemMirroring_IsMirroringScreenAudioSeperateFunctionalityAllowed_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  MXSystemMirroring_IsMirroringScreenAudioSeperateFunctionalityAllowed_isMirroringScreenAudioSeperate = result;
  return result;
}

@end