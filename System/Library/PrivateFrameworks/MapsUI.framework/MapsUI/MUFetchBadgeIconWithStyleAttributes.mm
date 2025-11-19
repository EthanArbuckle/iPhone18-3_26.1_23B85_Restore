@interface MUFetchBadgeIconWithStyleAttributes
@end

@implementation MUFetchBadgeIconWithStyleAttributes

void ___MUFetchBadgeIconWithStyleAttributes_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696F220] imageForStyle:*(a1 + 32) size:*(a1 + 56) forScale:0 format:*(a1 + 72) transparent:0 transitMode:0 isCarplay:*(a1 + 64)];
  v3 = v2;
  if (*(a1 + 72) == 1)
  {
    v4 = [v2 imageWithRenderingMode:2];

    v3 = v4;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___MUFetchBadgeIconWithStyleAttributes_block_invoke_2;
  v8[3] = &unk_1E821A618;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

@end