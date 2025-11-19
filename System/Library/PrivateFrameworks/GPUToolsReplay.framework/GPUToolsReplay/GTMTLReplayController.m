@interface GTMTLReplayController
@end

@implementation GTMTLReplayController

void __GTMTLReplayController_init_block_invoke(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v17[4] = *MEMORY[0x277D85DE8];
  if ((qword_27F09CF70 >> a2))
  {
    v16[0] = @"GTErrorKeyFile";
    v7 = MEMORY[0x277CCACA8];
    v8 = a5;
    v9 = [v7 stringWithUTF8String:a3];
    v17[0] = v9;
    v16[1] = @"GTErrorKeyLine";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a4];
    v11 = *MEMORY[0x277CCA450];
    v17[1] = v10;
    v17[2] = @"The replayer encountered a Metal validation layer error.";
    v12 = *MEMORY[0x277CCA470];
    v16[2] = v11;
    v16[3] = v12;
    v17[3] = v8;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];

    v14 = MakeNSError(200, v13);

    GTMTLReplay_handleNSError(v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end