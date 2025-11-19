@interface DisplayCPMSHDRCallbackDCPStage1
@end

@implementation DisplayCPMSHDRCallbackDCPStage1

void ____DisplayCPMSHDRCallbackDCPStage1_block_invoke(void *a1)
{
  v13 = a1;
  v12 = a1;
  *(*(a1[4] + 8) + 24) = __DisplayGetPowerAccumulatorDCP(a1[7], (*(a1[5] + 8) + 24));
  v1 = *(a1[7] + 144);
  block = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = ____DisplayCPMSHDRCallbackDCPStage1_block_invoke_2;
  v7 = &unk_1E867CB70;
  v11 = a1[7];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  dispatch_async(v1, &block);
}

@end