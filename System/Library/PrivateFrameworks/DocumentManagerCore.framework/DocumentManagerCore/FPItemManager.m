@interface FPItemManager
@end

@implementation FPItemManager

void __80__FPItemManager_DOCUtils__doc_fetchRootNodeForProviderDomain_completionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isDataSeparatedDomain])
  {
    [MEMORY[0x277D04700] dataSeparatedICloudDefaultContainer];
  }

  else
  {
    [MEMORY[0x277D04700] iCloudDefaultContainer];
  }
  v2 = ;
  if (!v2)
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC6300] code:-2001 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__FPItemManager_DOCUtils__doc_fetchRootNodeForProviderDomain_completionHandler___block_invoke_2;
  v4[3] = &unk_278F9B570;
  v5 = *(a1 + 40);
  [v2 fetchFPItem:v4];
}

@end