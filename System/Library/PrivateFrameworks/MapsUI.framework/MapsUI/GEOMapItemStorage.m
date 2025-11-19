@interface GEOMapItemStorage
@end

@implementation GEOMapItemStorage

void __73__GEOMapItemStorage_MUPlaceTileViewModel___fetchHikeSnapshot_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v8 = v5;
  if (v5)
  {
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"figure.walk"];
    (*(v6 + 16))(v6, v7, v8, 0);
  }

  else
  {
    (*(v6 + 16))(v6, a3, 0, 0);
  }
}

void __78__GEOMapItemStorage_MUPlaceTileViewModel__fetchImageTilewWithSize_completion___block_invoke(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (!a2 || a5)
  {
    v10 = *(a1 + 32);
    v11 = *(*(a1 + 32) + 16);

    v11();
  }

  else
  {
    v8 = *(a1 + 56);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __78__GEOMapItemStorage_MUPlaceTileViewModel__fetchImageTilewWithSize_completion___block_invoke_2;
    v12[3] = &unk_1E821A030;
    v9 = *(a1 + 32);
    v13 = 0;
    v14 = v9;
    v15 = a3;
    [MapsUIUtilities resizeImageIfNeeded:a2 toFrameSize:v12 displayScale:*(a1 + 40) completion:*(a1 + 48), v8];
  }
}

@end