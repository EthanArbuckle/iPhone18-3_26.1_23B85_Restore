@interface CAFAccessoryTypes
+ (NSDictionary)accessoryNameByType;
+ (NSDictionary)accessoryTypeByName;
+ (NSSet)stateCaptureValues;
+ (id)accessoryNameFor:(id)a3;
+ (id)accessoryNameForType:(id)a3;
@end

@implementation CAFAccessoryTypes

+ (NSDictionary)accessoryTypeByName
{
  if (accessoryTypeByName_onceToken != -1)
  {
    +[CAFAccessoryTypes accessoryTypeByName];
  }

  v3 = accessoryTypeByName__accessoryTypeByName;

  return v3;
}

void __40__CAFAccessoryTypes_accessoryTypeByName__block_invoke()
{
  v4[34] = *MEMORY[0x277D85DE8];
  v3[0] = @"AudioSettings";
  v3[1] = @"AutomakerApps";
  v4[0] = @"0x0000000002000001";
  v4[1] = @"0x0000000001800001";
  v3[2] = @"AutomakerExteriorCamera";
  v3[3] = @"AutomakerInputStreams";
  v4[2] = @"0x0000000001300001";
  v4[3] = @"0x000000000C000001";
  v3[4] = @"AutomakerNotificationHistory";
  v3[5] = @"AutomakerNotifications";
  v4[4] = @"0x0000000001400001";
  v4[5] = @"0x0000000006000001";
  v3[6] = @"AutomakerOverlays";
  v3[7] = @"AutomakerRequestContent";
  v4[6] = @"0x000000000C000002";
  v4[7] = @"0x0000000001200001";
  v3[8] = @"AutomakerSettings";
  v3[9] = @"Charging";
  v4[8] = @"0x0000000005000001";
  v4[9] = @"0x0000000009000008";
  v3[10] = @"Climate";
  v3[11] = @"Closure";
  v4[10] = @"0x0000000001000001";
  v4[11] = @"0x000000000D000001";
  v3[12] = @"DriveState";
  v3[13] = @"DriverAssistance";
  v4[12] = @"0x0000000009000003";
  v4[13] = @"0x000000000E000001";
  v3[14] = @"ElectricEngine";
  v3[15] = @"EnvironmentalConditions";
  v4[14] = @"0x0000000009000004";
  v4[15] = @"0x0000000001600001";
  v3[16] = @"Fuel";
  v3[17] = @"HighVoltageBattery";
  v4[16] = @"0x0000000009000006";
  v4[17] = @"0x0000000009000007";
  v3[18] = @"Indicators";
  v3[19] = @"InternalCombustionEngine";
  v4[18] = @"0x0000000001900001";
  v4[19] = @"0x0000000009000005";
  v3[20] = @"Lighting";
  v3[21] = @"Media";
  v4[20] = @"0x0000000002100001";
  v4[21] = @"0x0000000003000001";
  v3[22] = @"Navigation";
  v3[23] = @"NowPlayingInformation";
  v4[22] = @"0x000000000E000002";
  v4[23] = @"0x000000000F000001";
  v3[24] = @"PairedDevices";
  v3[25] = @"Seat";
  v4[24] = @"0x000000000B000001";
  v4[25] = @"0x0000000001500001";
  v3[26] = @"StatusIndicators";
  v3[27] = @"TestingUseOnly";
  v4[26] = @"0x0000000005100001";
  v4[27] = @"0x00000000FD000001";
  v3[28] = @"Tire";
  v3[29] = @"TripComputer";
  v4[28] = @"0x000000000A000001";
  v4[29] = @"0x0000000004000001";
  v3[30] = @"UIControl";
  v3[31] = @"VehicleMotion";
  v4[30] = @"0x0000000001100001";
  v4[31] = @"0x0000000009000001";
  v3[32] = @"VehicleResources";
  v3[33] = @"VehicleUnits";
  v4[32] = @"0x0000000001200002";
  v4[33] = @"0x0000000001700001";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:34];
  v1 = accessoryTypeByName__accessoryTypeByName;
  accessoryTypeByName__accessoryTypeByName = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (NSDictionary)accessoryNameByType
{
  if (accessoryNameByType_onceToken != -1)
  {
    +[CAFAccessoryTypes accessoryNameByType];
  }

  v3 = accessoryNameByType__accessoryNameByType;

  return v3;
}

void __40__CAFAccessoryTypes_accessoryNameByType__block_invoke()
{
  v4[34] = *MEMORY[0x277D85DE8];
  v3[0] = @"0x0000000002000001";
  v3[1] = @"0x0000000001800001";
  v4[0] = @"AudioSettings";
  v4[1] = @"AutomakerApps";
  v3[2] = @"0x0000000001300001";
  v3[3] = @"0x000000000C000001";
  v4[2] = @"AutomakerExteriorCamera";
  v4[3] = @"AutomakerInputStreams";
  v3[4] = @"0x0000000001400001";
  v3[5] = @"0x0000000006000001";
  v4[4] = @"AutomakerNotificationHistory";
  v4[5] = @"AutomakerNotifications";
  v3[6] = @"0x000000000C000002";
  v3[7] = @"0x0000000001200001";
  v4[6] = @"AutomakerOverlays";
  v4[7] = @"AutomakerRequestContent";
  v3[8] = @"0x0000000005000001";
  v3[9] = @"0x0000000009000008";
  v4[8] = @"AutomakerSettings";
  v4[9] = @"Charging";
  v3[10] = @"0x0000000001000001";
  v3[11] = @"0x000000000D000001";
  v4[10] = @"Climate";
  v4[11] = @"Closure";
  v3[12] = @"0x0000000009000003";
  v3[13] = @"0x000000000E000001";
  v4[12] = @"DriveState";
  v4[13] = @"DriverAssistance";
  v3[14] = @"0x0000000009000004";
  v3[15] = @"0x0000000001600001";
  v4[14] = @"ElectricEngine";
  v4[15] = @"EnvironmentalConditions";
  v3[16] = @"0x0000000009000006";
  v3[17] = @"0x0000000009000007";
  v4[16] = @"Fuel";
  v4[17] = @"HighVoltageBattery";
  v3[18] = @"0x0000000001900001";
  v3[19] = @"0x0000000009000005";
  v4[18] = @"Indicators";
  v4[19] = @"InternalCombustionEngine";
  v3[20] = @"0x0000000002100001";
  v3[21] = @"0x0000000003000001";
  v4[20] = @"Lighting";
  v4[21] = @"Media";
  v3[22] = @"0x000000000E000002";
  v3[23] = @"0x000000000F000001";
  v4[22] = @"Navigation";
  v4[23] = @"NowPlayingInformation";
  v3[24] = @"0x000000000B000001";
  v3[25] = @"0x0000000001500001";
  v4[24] = @"PairedDevices";
  v4[25] = @"Seat";
  v3[26] = @"0x0000000005100001";
  v3[27] = @"0x00000000FD000001";
  v4[26] = @"StatusIndicators";
  v4[27] = @"TestingUseOnly";
  v3[28] = @"0x000000000A000001";
  v3[29] = @"0x0000000004000001";
  v4[28] = @"Tire";
  v4[29] = @"TripComputer";
  v3[30] = @"0x0000000001100001";
  v3[31] = @"0x0000000009000001";
  v4[30] = @"UIControl";
  v4[31] = @"VehicleMotion";
  v3[32] = @"0x0000000001200002";
  v3[33] = @"0x0000000001700001";
  v4[32] = @"VehicleResources";
  v4[33] = @"VehicleUnits";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:34];
  v1 = accessoryNameByType__accessoryNameByType;
  accessoryNameByType__accessoryNameByType = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (NSSet)stateCaptureValues
{
  if (stateCaptureValues_onceToken_1 != -1)
  {
    +[CAFAccessoryTypes stateCaptureValues];
  }

  v3 = stateCaptureValues__stateCaptureValues_1;

  return v3;
}

void __39__CAFAccessoryTypes_stateCaptureValues__block_invoke()
{
  v5[28] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"0x0000000002000001";
  v5[1] = @"0x0000000001300001";
  v5[2] = @"0x000000000C000001";
  v5[3] = @"0x0000000006000001";
  v5[4] = @"0x000000000C000002";
  v5[5] = @"0x0000000001200001";
  v5[6] = @"0x0000000009000008";
  v5[7] = @"0x0000000001000001";
  v5[8] = @"0x000000000D000001";
  v5[9] = @"0x0000000009000003";
  v5[10] = @"0x000000000E000001";
  v5[11] = @"0x0000000009000004";
  v5[12] = @"0x0000000001600001";
  v5[13] = @"0x0000000009000006";
  v5[14] = @"0x0000000009000007";
  v5[15] = @"0x0000000001900001";
  v5[16] = @"0x0000000009000005";
  v5[17] = @"0x0000000002100001";
  v5[18] = @"0x0000000003000001";
  v5[19] = @"0x000000000E000002";
  v5[20] = @"0x000000000F000001";
  v5[21] = @"0x0000000001500001";
  v5[22] = @"0x0000000005100001";
  v5[23] = @"0x000000000A000001";
  v5[24] = @"0x0000000004000001";
  v5[25] = @"0x0000000001100001";
  v5[26] = @"0x0000000009000001";
  v5[27] = @"0x0000000001700001";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:28];
  v2 = [v0 setWithArray:v1];
  v3 = stateCaptureValues__stateCaptureValues_1;
  stateCaptureValues__stateCaptureValues_1 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)accessoryNameForType:(id)a3
{
  v4 = a3;
  v5 = [a1 accessoryNameByType];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v6 = v4;
  }

  return v6;
}

+ (id)accessoryNameFor:(id)a3
{
  v4 = [a1 accessoryTypeFor:a3];
  v5 = [a1 accessoryNameForType:v4];

  return v5;
}

@end