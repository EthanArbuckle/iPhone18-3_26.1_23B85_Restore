@interface NUImage
@end

@implementation NUImage

void __26___NUImage__purgeableCopy__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a1 + 40;
  objc_storeStrong((*(a1 + 32) + 48), *(*(a1 + 40) + 48));
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(*v2 + 56);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = v8;
        if (v8)
        {
          [v8 incrementUseCount];
        }

        [*(*(a1 + 32) + 56) replacePointerAtIndex:v5 withPointer:{v9, v10}];

        ++v5;
        ++v7;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void __28___NUImage_endAccessRegion___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 24);
  if (v2)
  {
    [v2 bounds];
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
    memset(v11, 0, sizeof(v11));
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28___NUImage_endAccessRegion___block_invoke_2;
  v8[3] = &unk_1E810B528;
  v6 = v5;
  v7 = *(a1 + 32);
  v9 = v6;
  v10 = v7;
  [v4 enumerateTilesForWritingInRect:v11 withBlock:v8];
}

void __28___NUImage_endAccessRegion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v3)
  {
    [v3 frameRect];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  if ([v5 intersectsRect:v10])
  {
    v6 = [v4 index];
    --*(*(*(a1 + 40) + 72) + v6);
    v7 = *(a1 + 40);
    if (!*(v7[9] + v6))
    {
      v8 = [v7 _tileAtIndex:?];
      v9 = v8;
      if (v8)
      {
        [v8 decrementAccessCount];
      }
    }
  }
}

void __30___NUImage_beginAccessRegion___block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(v3 + 24);
  if (v2)
  {
    [v2 bounds];
    v5 = a1[5];
  }

  else
  {
    v5 = 0;
    memset(v12, 0, sizeof(v12));
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __30___NUImage_beginAccessRegion___block_invoke_2;
  v8[3] = &unk_1E810B4D8;
  v6 = v5;
  v7 = a1[4];
  v9 = v6;
  v10 = v7;
  v11 = a1[6];
  [v4 enumerateTilesForWritingInRect:v12 withBlock:v8];
}

void __30___NUImage_beginAccessRegion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v3)
  {
    [v3 frameRect];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  if ([v5 intersectsRect:&v13])
  {
    v6 = [v4 index];
    v7 = *(*(a1 + 40) + 72);
    v8 = *(v7 + v6);
    *(v7 + v6) = v8 + 1;
    if (!v8)
    {
      v9 = [*(a1 + 40) _tileAtIndex:v6];
      v10 = v9;
      if (v9 && ([v9 incrementAccessCount] & 1) == 0)
      {
        v11 = [*(a1 + 40) validRegion];
        if (v4)
        {
          [v4 frameRect];
        }

        else
        {
          v13 = 0u;
          v14 = 0u;
        }

        v12 = [v11 regionByRemovingRect:&v13];
        [*(a1 + 40) setValidRegion:v12];

        *(*(*(a1 + 48) + 8) + 24) = 0;
      }
    }
  }
}

void __34___NUImage_writeRegion_withBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  v7 = *(a1 + 32);
  if (v5)
  {
    [v5 frameRect];
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  if ([v7 intersectsRect:v17])
  {
    v8 = [v6 index];
    v9 = *(a1 + 40);
    v10 = *(v9 + 16);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __34___NUImage_writeRegion_withBlock___block_invoke_2;
    v11[3] = &unk_1E810B4B0;
    v11[4] = v9;
    v15 = v8;
    v12 = v6;
    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    v16 = a3;
    dispatch_sync(v10, v11);
  }
}

void __34___NUImage_writeRegion_withBlock___block_invoke_5(uint64_t a1)
{
  v3 = [*(a1 + 32) validRegion];
  v2 = [v3 regionByAddingRegion:*(a1 + 40)];
  [*(a1 + 32) setValidRegion:v2];
}

void __34___NUImage_writeRegion_withBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) tileAtIndex:*(a1 + 64)];
  if (!v2)
  {
    v2 = [*(a1 + 32) _createOrCopyTile:0 tileInfo:*(a1 + 40) writeRegion:*(a1 + 48)];
  }

  v3 = [*(a1 + 40) translatedAndClippedRegion:*(a1 + 48)];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __34___NUImage_writeRegion_withBlock___block_invoke_3;
  v17[3] = &unk_1E810B410;
  v21 = *(a1 + 56);
  v4 = v2;
  v18 = v4;
  v5 = v3;
  v19 = v5;
  v6 = *(a1 + 40);
  v7 = *(a1 + 72);
  v20 = v6;
  v22 = v7;
  if ([v4 writeStorageInRegion:v5 block:v17] == 3)
  {
    v8 = [*(a1 + 32) _createOrCopyTile:v4 tileInfo:*(a1 + 40) writeRegion:*(a1 + 48)];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __34___NUImage_writeRegion_withBlock___block_invoke_4;
    v11[3] = &unk_1E810B410;
    v15 = *(a1 + 56);
    v4 = v8;
    v12 = v4;
    v13 = v5;
    v9 = *(a1 + 40);
    v10 = *(a1 + 72);
    v14 = v9;
    v16 = v10;
    [v4 writeStorageInRegion:v13 block:v11];
  }
}

void __51___NUImage__createOrCopyTile_tileInfo_writeRegion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) validRegion];
  v3 = *(a1 + 56);
  v5[0] = *(a1 + 40);
  v5[1] = v3;
  v4 = [v2 regionByRemovingRect:v5];
  [*(a1 + 32) setValidRegion:v4];
}

void __51___NUImage__createOrCopyTile_tileInfo_writeRegion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _tileAtIndex:*(a1 + 72)];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = v2 == v3;
  }

  else
  {
    v4 = 1;
  }

  obj = v2;
  if (v4)
  {
    v5 = *(a1 + 32);
    if (v3)
    {
      if (*(*(v5 + 72) + *(a1 + 72)))
      {
        [v3 decrementAccessCount];
        v3 = *(a1 + 40);
      }

      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v3);
      [*(*(a1 + 32) + 56) replacePointerAtIndex:*(a1 + 72) withPointer:*(a1 + 48)];
      if (!*(*(*(a1 + 32) + 72) + *(a1 + 72)))
      {
        [*(a1 + 48) decrementAccessCount];
      }
    }

    else
    {
      [*(v5 + 56) replacePointerAtIndex:*(a1 + 72) withPointer:*(a1 + 48)];
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 48));
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), obj);
  }
}

void __33___NUImage_readRegion_withBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  v7 = *(a1 + 32);
  if (v5)
  {
    [v5 contentRect];
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  if ([v7 intersectsRect:v18])
  {
    v8 = [*(a1 + 40) tileAtIndex:{objc_msgSend(v6, "index")}];
    v9 = v8;
    if (v8 && [v8 isValid])
    {
      v10 = [v6 translatedAndClippedRegion:*(a1 + 32)];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __33___NUImage_readRegion_withBlock___block_invoke_2;
      v12[3] = &unk_1E810B410;
      v16 = *(a1 + 48);
      v13 = v9;
      v14 = v10;
      v15 = v6;
      v17 = a3;
      v11 = v10;
      [v13 readStorageInRegion:v11 block:v12];
    }
  }
}

uint64_t __24___NUImage_tileAtIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _tileAtIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void __23___NUImage_description__block_invoke(uint64_t a1)
{
  if (*(a1 + 48) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = [*(a1 + 32) _tileAtIndex:v2];
      if (v3)
      {
        v10 = 0u;
        v11 = 0u;
        v4 = [*(a1 + 32) layout];
        v5 = v4;
        if (v4)
        {
          [v4 frameRectForTileAtIndex:v2];
        }

        else
        {
          v10 = 0u;
          v11 = 0u;
        }

        v7 = MEMORY[0x1E696AEC0];
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{origin={%ld, %ld} size={%ld, %ld}}]", v10, v11];
        v9 = [v3 description];
        v6 = [v7 stringWithFormat:@"%@ - %@", v8, v9];
      }

      else
      {
        v6 = @"n/a";
      }

      [*(a1 + 40) addObject:v6];

      ++v2;
    }

    while (v2 < *(a1 + 48));
  }
}

@end