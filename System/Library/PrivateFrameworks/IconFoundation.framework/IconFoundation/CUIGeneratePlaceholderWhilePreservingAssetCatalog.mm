@interface CUIGeneratePlaceholderWhilePreservingAssetCatalog
@end

@implementation CUIGeneratePlaceholderWhilePreservingAssetCatalog

unsigned __int16 *__CUIGeneratePlaceholderWhilePreservingAssetCatalog_block_invoke(unsigned __int16 *result, unsigned __int16 *a2)
{
  if ((*(*(*(result + 6) + 8) + 24) & 1) == 0)
  {
    v3 = result;
    CUIRenditionKeyValueForAttribute(a2, 1);
    result = CUIRenditionKeyValueForAttribute(a2, 2);
    if (result == 245)
    {
      v4 = [*(v3 + 4) renditionNameForKeyBaseList:a2];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __CUIGeneratePlaceholderWhilePreservingAssetCatalog_block_invoke_2;
      v7[3] = &unk_1E7EE0980;
      v5 = *(v3 + 5);
      v6 = *(v3 + 6);
      v7[4] = v4;
      v7[5] = v6;
      return [v5 enumerateObjectsUsingBlock:v7];
    }
  }

  return result;
}

@end