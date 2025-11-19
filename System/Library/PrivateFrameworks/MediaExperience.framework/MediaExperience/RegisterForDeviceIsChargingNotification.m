@interface RegisterForDeviceIsChargingNotification
@end

@implementation RegisterForDeviceIsChargingNotification

void __cmsmdevicestate_RegisterForDeviceIsChargingNotification_block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E696CD60];
  v3 = IONotificationPortCreate(*MEMORY[0x1E696CD60]);
  qword_1EB75D378 = v3;
  if (v3)
  {
    IONotificationPortSetDispatchQueue(v3, *(a1 + 32));
    v4 = IOServiceMatching("IOPMPowerSource");
    MatchingService = IOServiceGetMatchingService(v2, v4);
    if (!IOServiceAddInterestNotification(qword_1EB75D378, MatchingService, "IOGeneralInterest", cmsmdeviceState_BatteryStateChanged, 0, &dword_1EB75D374))
    {
      CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"ExternalConnected", *MEMORY[0x1E695E480], 0);
      v7 = *MEMORY[0x1E695E4D0];
      byte_1EB75D370 = FigCFEqual();
      if (CFProperty)
      {

        CFRelease(CFProperty);
      }
    }
  }
}

@end