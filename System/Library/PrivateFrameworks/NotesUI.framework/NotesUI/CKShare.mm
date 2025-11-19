@interface CKShare
@end

@implementation CKShare

uint64_t __35__CKShare_UI__ic_fallbackThumbnail__block_invoke()
{
  ic_fallbackThumbnail_thumbnail = [MEMORY[0x1E69DCAB8] ic_applicationIconImageWithSize:{128.0, 128.0}];

  return MEMORY[0x1EEE66BB8]();
}

void __61__CKShare_UI__ic_updateThumbnailsForObject_share_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 image];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void __61__CKShare_UI__ic_updateThumbnailsForObject_share_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 image];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

uint64_t __61__CKShare_UI__ic_updateThumbnailsForObject_share_completion___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = [*(*(a1[6] + 8) + 40) ic_PNGData];
  [v2 ic_setEncryptedInlineableDataAsset:v3 forKeyPrefix:*MEMORY[0x1E69B7590] approach:0 withObject:0];

  v4 = a1[4];
  v5 = [*(*(a1[7] + 8) + 40) ic_PNGData];
  [v4 ic_setEncryptedInlineableDataAsset:v5 forKeyPrefix:*MEMORY[0x1E69B7588] approach:0 withObject:0];

  result = a1[5];
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

@end