@interface UIDocumentPickerAllContainersModel
@end

@implementation UIDocumentPickerAllContainersModel

uint64_t __51___UIDocumentPickerAllContainersModel_updateScopes__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v4 = [*(a1 + 40) shouldEnableContainer:v3];
  v5 = v4;
  if (*(*(a1 + 40) + 120))
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v5 = [MEMORY[0x277CFAE20] canMoveFilesWithoutDownloadingFromContainer:? toContainer:?];
  }

  return v5;
}

@end