@interface CAFControlTypes
+ (NSDictionary)controlNameByType;
+ (NSDictionary)controlTypeByName;
+ (id)controlNameFor:(id)for;
+ (id)controlNameForType:(id)type;
@end

@implementation CAFControlTypes

+ (NSDictionary)controlTypeByName
{
  if (controlTypeByName_onceToken != -1)
  {
    +[CAFControlTypes controlTypeByName];
  }

  v3 = controlTypeByName__controlTypeByName;

  return v3;
}

void __36__CAFControlTypes_controlTypeByName__block_invoke()
{
  v4[31] = *MEMORY[0x277D85DE8];
  v3[0] = @"BeginSeekBackward";
  v3[1] = @"BeginSeekForward";
  v4[0] = @"0x000000000F000038";
  v4[1] = @"0x000000000F000037";
  v3[2] = @"ChangeMediaSource";
  v3[3] = @"ConnectDevice";
  v4[2] = @"0x000000000F00004D";
  v4[3] = @"0x000000003600001A";
  v3[4] = @"DisconnectDevice";
  v3[5] = @"EndSeek";
  v4[4] = @"0x000000003600001B";
  v4[5] = @"0x000000000F000039";
  v3[6] = @"ForgetDevice";
  v3[7] = @"GetImageArchive";
  v4[6] = @"0x000000003600001C";
  v4[7] = @"0x0000000048000008";
  v3[8] = @"JumpBackward";
  v3[9] = @"JumpForward";
  v4[8] = @"0x000000000F00004A";
  v4[9] = @"0x000000000F000040";
  v3[10] = @"NextItem";
  v3[11] = @"Pause";
  v4[10] = @"0x000000000F000035";
  v4[11] = @"0x000000000F000033";
  v3[12] = @"Play";
  v3[13] = @"PreviousItem";
  v4[12] = @"0x000000000F000032";
  v4[13] = @"0x000000000F000036";
  v3[14] = @"Reset";
  v3[15] = @"SetArtistSongNotification";
  v4[14] = @"0x0000000030000062";
  v4[15] = @"0x000000000F00004E";
  v3[16] = @"Stop";
  v3[17] = @"TestAccEventNoParams";
  v4[16] = @"0x000000000F000034";
  v4[17] = @"0x00000000FF000032";
  v3[18] = @"TestAccEventWithParams";
  v3[19] = @"TestAccRequestNoParams";
  v4[18] = @"0x00000000FF000033";
  v4[19] = @"0x00000000FF00002E";
  v3[20] = @"TestAccRequestWithReqAndResParams";
  v3[21] = @"TestAccRequestWithReqParams";
  v4[20] = @"0x00000000FF000031";
  v4[21] = @"0x00000000FF00002F";
  v3[22] = @"TestAccRequestWithResParams";
  v3[23] = @"TestDevEventNoParams";
  v4[22] = @"0x00000000FF000030";
  v4[23] = @"0x00000000FF00002C";
  v3[24] = @"TestDevEventWithParams";
  v3[25] = @"TestDevRequestNoParams";
  v4[24] = @"0x00000000FF00002D";
  v4[25] = @"0x00000000FF000028";
  v3[26] = @"TestDevRequestWithReqAndResParams";
  v3[27] = @"TestDevRequestWithReqParams";
  v4[26] = @"0x00000000FF00002B";
  v4[27] = @"0x00000000FF000029";
  v3[28] = @"TestDevRequestWithResParams";
  v3[29] = @"TuneToFrequency";
  v4[28] = @"0x00000000FF00002A";
  v4[29] = @"0x000000000F00004C";
  v3[30] = @"TuneToIdentifier";
  v4[30] = @"0x000000000F00004B";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:31];
  v1 = controlTypeByName__controlTypeByName;
  controlTypeByName__controlTypeByName = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (NSDictionary)controlNameByType
{
  if (controlNameByType_onceToken != -1)
  {
    +[CAFControlTypes controlNameByType];
  }

  v3 = controlNameByType__controlNameByType;

  return v3;
}

void __36__CAFControlTypes_controlNameByType__block_invoke()
{
  v4[31] = *MEMORY[0x277D85DE8];
  v3[0] = @"0x000000000F000038";
  v3[1] = @"0x000000000F000037";
  v4[0] = @"BeginSeekBackward";
  v4[1] = @"BeginSeekForward";
  v3[2] = @"0x000000000F00004D";
  v3[3] = @"0x000000003600001A";
  v4[2] = @"ChangeMediaSource";
  v4[3] = @"ConnectDevice";
  v3[4] = @"0x000000003600001B";
  v3[5] = @"0x000000000F000039";
  v4[4] = @"DisconnectDevice";
  v4[5] = @"EndSeek";
  v3[6] = @"0x000000003600001C";
  v3[7] = @"0x0000000048000008";
  v4[6] = @"ForgetDevice";
  v4[7] = @"GetImageArchive";
  v3[8] = @"0x000000000F00004A";
  v3[9] = @"0x000000000F000040";
  v4[8] = @"JumpBackward";
  v4[9] = @"JumpForward";
  v3[10] = @"0x000000000F000035";
  v3[11] = @"0x000000000F000033";
  v4[10] = @"NextItem";
  v4[11] = @"Pause";
  v3[12] = @"0x000000000F000032";
  v3[13] = @"0x000000000F000036";
  v4[12] = @"Play";
  v4[13] = @"PreviousItem";
  v3[14] = @"0x0000000030000062";
  v3[15] = @"0x000000000F00004E";
  v4[14] = @"Reset";
  v4[15] = @"SetArtistSongNotification";
  v3[16] = @"0x000000000F000034";
  v3[17] = @"0x00000000FF000032";
  v4[16] = @"Stop";
  v4[17] = @"TestAccEventNoParams";
  v3[18] = @"0x00000000FF000033";
  v3[19] = @"0x00000000FF00002E";
  v4[18] = @"TestAccEventWithParams";
  v4[19] = @"TestAccRequestNoParams";
  v3[20] = @"0x00000000FF000031";
  v3[21] = @"0x00000000FF00002F";
  v4[20] = @"TestAccRequestWithReqAndResParams";
  v4[21] = @"TestAccRequestWithReqParams";
  v3[22] = @"0x00000000FF000030";
  v3[23] = @"0x00000000FF00002C";
  v4[22] = @"TestAccRequestWithResParams";
  v4[23] = @"TestDevEventNoParams";
  v3[24] = @"0x00000000FF00002D";
  v3[25] = @"0x00000000FF000028";
  v4[24] = @"TestDevEventWithParams";
  v4[25] = @"TestDevRequestNoParams";
  v3[26] = @"0x00000000FF00002B";
  v3[27] = @"0x00000000FF000029";
  v4[26] = @"TestDevRequestWithReqAndResParams";
  v4[27] = @"TestDevRequestWithReqParams";
  v3[28] = @"0x00000000FF00002A";
  v3[29] = @"0x000000000F00004C";
  v4[28] = @"TestDevRequestWithResParams";
  v4[29] = @"TuneToFrequency";
  v3[30] = @"0x000000000F00004B";
  v4[30] = @"TuneToIdentifier";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:31];
  v1 = controlNameByType__controlNameByType;
  controlNameByType__controlNameByType = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)controlNameForType:(id)type
{
  typeCopy = type;
  controlNameByType = [self controlNameByType];
  v6 = [controlNameByType objectForKeyedSubscript:typeCopy];

  if (!v6)
  {
    v6 = typeCopy;
  }

  return v6;
}

+ (id)controlNameFor:(id)for
{
  v4 = [self controlTypeFor:for];
  v5 = [self controlNameForType:v4];

  return v5;
}

@end