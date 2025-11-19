@interface NSError(IOReturn)
+ (id)errorWithIOReturn:()IOReturn;
@end

@implementation NSError(IOReturn)

+ (id)errorWithIOReturn:()IOReturn
{
  v14[50] = *MEMORY[0x277D85DE8];
  v13[0] = &unk_28419A000;
  v13[1] = &unk_28419A018;
  v14[0] = @"success";
  v14[1] = @"general error";
  v13[2] = &unk_28419A030;
  v13[3] = &unk_28419A048;
  v14[2] = @"memory allocation error";
  v14[3] = @"resource shortage";
  v13[4] = &unk_28419A060;
  v13[5] = &unk_28419A078;
  v14[4] = @"Mach IPC failure";
  v14[5] = @"no such device";
  v13[6] = &unk_28419A090;
  v13[7] = &unk_28419A0A8;
  v14[6] = @"privilege violation";
  v14[7] = @"invalid argument";
  v13[8] = &unk_28419A0C0;
  v13[9] = &unk_28419A0D8;
  v14[8] = @"device is read locked";
  v14[9] = @"device is write locked";
  v13[10] = &unk_28419A0F0;
  v13[11] = &unk_28419A108;
  v14[10] = @"device is exclusive access";
  v14[11] = @"bad IPC message ID";
  v13[12] = &unk_28419A120;
  v13[13] = &unk_28419A138;
  v14[12] = @"unsupported function";
  v14[13] = @"virtual memory error";
  v13[14] = &unk_28419A150;
  v13[15] = &unk_28419A168;
  v14[14] = @"internal driver error";
  v14[15] = @"I/O error";
  v13[16] = &unk_28419A180;
  v13[17] = &unk_28419A198;
  v14[16] = @"cannot acquire lock";
  v14[17] = @"device is not open";
  v13[18] = &unk_28419A1B0;
  v13[19] = &unk_28419A1C8;
  v14[18] = @"device is not readable";
  v14[19] = @"device is not writeable";
  v13[20] = &unk_28419A1E0;
  v13[21] = &unk_28419A1F8;
  v14[20] = @"alignment error";
  v14[21] = @"media error";
  v13[22] = &unk_28419A210;
  v13[23] = &unk_28419A228;
  v14[22] = @"device is still open";
  v14[23] = @"rld failure";
  v13[24] = &unk_28419A240;
  v13[25] = &unk_28419A258;
  v14[24] = @"DMA failure";
  v14[25] = @"device is busy";
  v13[26] = &unk_28419A270;
  v13[27] = &unk_28419A288;
  v14[26] = @"I/O timeout";
  v14[27] = @"device is offline";
  v13[28] = &unk_28419A2A0;
  v13[29] = &unk_28419A2B8;
  v14[28] = @"device is not ready";
  v14[29] = @"device/channel is not attached";
  v13[30] = &unk_28419A2D0;
  v13[31] = &unk_28419A2E8;
  v14[30] = @"no DMA channels available";
  v14[31] = @"no space for data";
  v13[32] = &unk_28419A300;
  v13[33] = &unk_28419A318;
  v14[32] = @"device port already exists";
  v14[33] = @"cannot wire physical memory";
  v13[34] = &unk_28419A330;
  v13[35] = &unk_28419A348;
  v14[34] = @"no interrupt attached";
  v14[35] = @"no DMA frames enqueued";
  v13[36] = &unk_28419A360;
  v13[37] = &unk_28419A378;
  v14[36] = @"message is too large";
  v14[37] = @"operation is not permitted";
  v13[38] = &unk_28419A390;
  v13[39] = &unk_28419A3A8;
  v14[38] = @"device is without power";
  v14[39] = @"media is not present";
  v13[40] = &unk_28419A3C0;
  v13[41] = &unk_28419A3D8;
  v14[40] = @"media is not formatted";
  v14[41] = @"unsupported mode";
  v13[42] = &unk_28419A3F0;
  v13[43] = &unk_28419A408;
  v14[42] = @"data underrun";
  v14[43] = @"data overrun";
  v13[44] = &unk_28419A420;
  v13[45] = &unk_28419A438;
  v14[44] = @"device error";
  v14[45] = @"no completion routine";
  v13[46] = &unk_28419A450;
  v13[47] = &unk_28419A468;
  v14[46] = @"operation was aborted";
  v14[47] = @"bus bandwidth would be exceeded";
  v13[48] = &unk_28419A480;
  v13[49] = &unk_28419A498;
  v14[48] = @"device is not responding";
  v14[49] = @"unanticipated driver error";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:50];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x unknown", a3];
  }

  v11 = *MEMORY[0x277CCA450];
  v12 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HIDFramework" code:a3 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end