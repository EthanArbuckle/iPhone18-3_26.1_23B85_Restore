@interface CEKLightingFrameCache
- (BOOL)_needsBackgroundFrame;
- (BOOL)_needsForegroundFrames;
- (CEKLightingFrameCache)init;
- (id)_appearanceForLightingType:(int64_t)a3;
- (id)_renderBackgroundFramesForAbsoluteAngles:(id)a3 lightingType:(int64_t)a4 scale:(double)a5;
- (id)_renderForegroundFramesForAbsoluteAngles:(id)a3 scale:(double)a4;
- (id)_renderFrameForAngle:(int64_t)a3 scale:(double)a4 components:(int64_t)a5 appearance:(id)a6;
- (id)backgroundFrameForAngle:(int64_t)a3 lightingType:(int64_t)a4;
- (id)foregroundFrameForAngle:(int64_t)a3;
- (int64_t)angleOfAvailableFrameForAngle:(int64_t)a3;
- (void)preloadBackgroundFrames;
- (void)preloadForegroundFrames;
@end

@implementation CEKLightingFrameCache

- (CEKLightingFrameCache)init
{
  v21[6] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = CEKLightingFrameCache;
  v2 = [(CEKLightingFrameCache *)&v19 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD50] indexSet];
    for (i = 0; i != 20; ++i)
    {
      [v3 addIndex:CEKLightingFrameAbsoluteAngles[i]];
    }

    v5 = [(CEKLightingFrameCache *)v2 angleCount];
    v6 = [v3 copy];
    availableAbsoluteAngles = v2->__availableAbsoluteAngles;
    v2->__availableAbsoluteAngles = v6;

    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v5];
    foregroundFramesByAvailableAngle = v2->__foregroundFramesByAvailableAngle;
    v2->__foregroundFramesByAvailableAngle = v8;

    v20[0] = &unk_1F2FDFE68;
    v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v5];
    v21[0] = v10;
    v20[1] = &unk_1F2FDFE80;
    v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v5];
    v21[1] = v11;
    v20[2] = &unk_1F2FDFE98;
    v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v5];
    v21[2] = v12;
    v20[3] = &unk_1F2FDFEB0;
    v13 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v5];
    v21[3] = v13;
    v20[4] = &unk_1F2FDFEC8;
    v14 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v5];
    v21[4] = v14;
    v20[5] = &unk_1F2FDFEE0;
    v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v5];
    v21[5] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:6];
    backgroundFrameMapsByLightingType = v2->__backgroundFrameMapsByLightingType;
    v2->__backgroundFrameMapsByLightingType = v16;
  }

  return v2;
}

- (void)preloadForegroundFrames
{
  if ([(CEKLightingFrameCache *)self _needsForegroundFrames])
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 scale];
    v5 = v4;

    v6 = [(CEKLightingFrameCache *)self _availableAbsoluteAngles];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v8 = v7;
    objc_initWeak(&location, self);
    v9 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__CEKLightingFrameCache_preloadForegroundFrames__block_invoke;
    block[3] = &unk_1E7CC6B88;
    objc_copyWeak(v13, &location);
    v12 = v6;
    v13[1] = v5;
    v13[2] = v8;
    v10 = v6;
    dispatch_async(v9, block);

    objc_destroyWeak(v13);
    objc_destroyWeak(&location);
  }
}

void __48__CEKLightingFrameCache_preloadForegroundFrames__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _renderForegroundFramesForAbsoluteAngles:*(a1 + 32) scale:*(a1 + 48)];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CEKLightingFrameCache_preloadForegroundFrames__block_invoke_2;
  block[3] = &unk_1E7CC64D8;
  v7[1] = *(a1 + 56);
  objc_copyWeak(v7, (a1 + 40));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v7);
}

void __48__CEKLightingFrameCache_preloadForegroundFrames__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = *(a1 + 48);
  v5 = os_log_create("com.apple.camera", "CameraEditKit");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = v3 - v4;
    _os_log_impl(&dword_1B7E93000, v5, OS_LOG_TYPE_DEFAULT, "Loaded foreground frames for lighting cube in %.2f seconds", &v8, 0xCu);
  }

  v6 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained set_foregroundFramesByAvailableAngle:v6];
}

- (void)preloadBackgroundFrames
{
  if ([(CEKLightingFrameCache *)self _needsForegroundFrames])
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 scale];
    v5 = v4;

    v6 = [(CEKLightingFrameCache *)self _availableAbsoluteAngles];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v8 = v7;
    objc_initWeak(&location, self);
    v9 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__CEKLightingFrameCache_preloadBackgroundFrames__block_invoke;
    block[3] = &unk_1E7CC6B88;
    objc_copyWeak(v13, &location);
    v12 = v6;
    v13[1] = v5;
    v13[2] = v8;
    v10 = v6;
    dispatch_async(v9, block);

    objc_destroyWeak(v13);
    objc_destroyWeak(&location);
  }
}

void __48__CEKLightingFrameCache_preloadBackgroundFrames__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(&unk_1F2FE0248, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [&unk_1F2FE0248 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(&unk_1F2FE0248);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [v7 unsignedIntegerValue];
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        v10 = [WeakRetained _renderBackgroundFramesForAbsoluteAngles:*(a1 + 32) lightingType:v8 scale:*(a1 + 48)];
        [v2 setObject:v10 forKeyedSubscript:v7];
      }

      v4 = [&unk_1F2FE0248 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__CEKLightingFrameCache_preloadBackgroundFrames__block_invoke_2;
  v12[3] = &unk_1E7CC6BB0;
  v15[1] = *(a1 + 56);
  v13 = &unk_1F2FE0248;
  objc_copyWeak(v15, (a1 + 40));
  v14 = v2;
  v11 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v12);

  objc_destroyWeak(v15);
}

void __48__CEKLightingFrameCache_preloadBackgroundFrames__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = *(a1 + 56);
  v5 = os_log_create("com.apple.camera", "CameraEditKit");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) count];
    v9 = 134218240;
    v10 = v6;
    v11 = 2048;
    v12 = v3 - v4;
    _os_log_impl(&dword_1B7E93000, v5, OS_LOG_TYPE_DEFAULT, "Loaded background frames for %lu lighting cubes in %.2f seconds", &v9, 0x16u);
  }

  v7 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained set_backgroundFrameMapsByLightingType:v7];
}

- (int64_t)angleOfAvailableFrameForAngle:(int64_t)a3
{
  v4 = [(CEKLightingFrameCache *)self _availableAbsoluteAngles];
  v5 = v4;
  if (a3 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = -a3;
  }

  v7 = [v4 cek_indexNearestToIndex:v6];
  if (a3 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v7;
  }

  return v8;
}

- (id)foregroundFrameForAngle:(int64_t)a3
{
  v5 = [(CEKLightingFrameCache *)self angleOfAvailableFrameForAngle:?];
  v6 = [(CEKLightingFrameCache *)self _foregroundFramesByAvailableAngle];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v9 = [(CEKLightingFrameCache *)self _appearanceForLightingType:1];
    v10 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v10 scale];
    v8 = [(CEKLightingFrameCache *)self _renderFrameForAngle:a3 scale:48 components:v9 appearance:?];

    if (v8)
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
      [v6 setObject:v8 forKeyedSubscript:v11];
    }
  }

  return v8;
}

- (id)backgroundFrameForAngle:(int64_t)a3 lightingType:(int64_t)a4
{
  v7 = [(CEKLightingFrameCache *)self angleOfAvailableFrameForAngle:?];
  v8 = [(CEKLightingFrameCache *)self _backgroundFrameMapsByLightingType];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  v12 = [v10 objectForKeyedSubscript:v11];

  if (!v12)
  {
    v13 = [(CEKLightingFrameCache *)self _appearanceForLightingType:a4];
    v14 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v14 scale];
    v12 = [(CEKLightingFrameCache *)self _renderFrameForAngle:a3 scale:15 components:v13 appearance:?];

    if (v12)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
      [v10 setObject:v12 forKeyedSubscript:v15];
    }
  }

  return v12;
}

- (BOOL)_needsForegroundFrames
{
  v2 = self;
  v3 = [(CEKLightingFrameCache *)self _foregroundFramesByAvailableAngle];
  v4 = [v3 count];
  LOBYTE(v2) = v4 < [(CEKLightingFrameCache *)v2 angleCount];

  return v2;
}

- (BOOL)_needsBackgroundFrame
{
  v16 = *MEMORY[0x1E69E9840];
  [(CEKLightingFrameCache *)self _backgroundFrameMapsByLightingType];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) count];
        if (v8 < [(CEKLightingFrameCache *)self angleCount])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)_appearanceForLightingType:(int64_t)a3
{
  v3 = 0;
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4:
        v3 = +[CEKLightingCubeStyleGlowing stageAppearance];
        break;
      case 5:
        v3 = +[CEKLightingCubeStyleGlowing stageMonoAppearance];
        break;
      case 6:
        v3 = +[CEKLightingCubeStyleGlowing stageWhiteAppearance];
        break;
    }
  }

  else
  {
    switch(a3)
    {
      case 1:
        v3 = +[CEKLightingCubeStyleGlowing naturalAppearance];
        break;
      case 2:
        v3 = +[CEKLightingCubeStyleGlowing studioAppearance];
        break;
      case 3:
        v3 = +[CEKLightingCubeStyleGlowing contourAppearance];
        break;
    }
  }

  return v3;
}

- (id)_renderForegroundFramesForAbsoluteAngles:(id)a3 scale:(double)a4
{
  v6 = MEMORY[0x1E695DF90];
  v7 = a3;
  v8 = [v6 dictionaryWithCapacity:{2 * objc_msgSend(v7, "count")}];
  v9 = [(CEKLightingFrameCache *)self _appearanceForLightingType:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__CEKLightingFrameCache__renderForegroundFramesForAbsoluteAngles_scale___block_invoke;
  v15[3] = &unk_1E7CC6BD8;
  v18 = a4;
  v19 = 48;
  v15[4] = self;
  v16 = v9;
  v10 = v8;
  v17 = v10;
  v11 = v9;
  [v7 enumerateIndexesUsingBlock:v15];

  v12 = v17;
  v13 = v10;

  return v10;
}

void __72__CEKLightingFrameCache__renderForegroundFramesForAbsoluteAngles_scale___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = [*(a1 + 32) _renderFrameForAngle:a2 scale:*(a1 + 64) components:*(a1 + 40) appearance:*(a1 + 56)];
  v4 = *(a1 + 48);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v4 setObject:v9 forKeyedSubscript:v5];

  v6 = [v9 imageWithHorizontallyFlippedOrientation];
  v7 = *(a1 + 48);
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:-a2];
  [v7 setObject:v6 forKeyedSubscript:v8];
}

- (id)_renderBackgroundFramesForAbsoluteAngles:(id)a3 lightingType:(int64_t)a4 scale:(double)a5
{
  v8 = MEMORY[0x1E695DF90];
  v9 = a3;
  v10 = [v8 dictionaryWithCapacity:{2 * objc_msgSend(v9, "count")}];
  v11 = [(CEKLightingFrameCache *)self _appearanceForLightingType:a4];
  v12 = [(CEKLightingFrameCache *)self _appearanceForLightingType:a4];
  v13 = [(CEKLightingFrameCache *)self _appearanceForLightingType:a4];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __85__CEKLightingFrameCache__renderBackgroundFramesForAbsoluteAngles_lightingType_scale___block_invoke;
  v21[3] = &unk_1E7CC6C00;
  v22 = v11;
  v23 = v13;
  v14 = v10;
  v24 = v14;
  v25 = self;
  v27 = a5;
  v28 = 15;
  v26 = v12;
  v15 = v12;
  v16 = v13;
  v17 = v11;
  [v9 enumerateIndexesUsingBlock:v21];

  v18 = v26;
  v19 = v14;

  return v14;
}

void __85__CEKLightingFrameCache__renderBackgroundFramesForAbsoluteAngles_lightingType_scale___block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = a2 / 90.0;
  v5 = [CEKLightingCubeAppearance appearanceFrom:*(a1 + 32) to:*(a1 + 40) progress:v4];
  v6 = [*(a1 + 56) _renderFrameForAngle:a2 scale:*(a1 + 80) components:v5 appearance:*(a1 + 72)];
  v7 = *(a1 + 48);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v7 setObject:v6 forKeyedSubscript:v8];

  v9 = -a2;
  v13 = [CEKLightingCubeAppearance appearanceFrom:*(a1 + 64) to:*(a1 + 32) progress:-v4];

  v10 = [*(a1 + 56) _renderFrameForAngle:v9 scale:*(a1 + 80) components:v13 appearance:*(a1 + 72)];
  v11 = *(a1 + 48);
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
  [v11 setObject:v10 forKeyedSubscript:v12];
}

- (id)_renderFrameForAngle:(int64_t)a3 scale:(double)a4 components:(int64_t)a5 appearance:(id)a6
{
  v8 = 49.0 - 1.0 / a4;
  v9 = 3.0 - 1.0 / a4;
  v10 = 1.0 / a4 + 1.0;
  v11 = a3 * 3.14159265 / 180.0;
  v12 = a6;
  v13 = [[CEKLightingCube alloc] initWithRotationAngle:v11];
  v14 = [[CEKLightingCubeRenderer alloc] initWithCube:v13 appearance:v12 components:a5];

  v19.width = v8;
  v19.height = v8;
  UIGraphicsBeginImageContextWithOptions(v19, 0, a4);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextTranslateCTM(CurrentContext, v8 * 0.5, v8 * 0.5);
  [(CEKLightingCubeRenderer *)v14 renderInContext:CurrentContext size:v8 scale:v8 cornerRadius:a4 stroke:v9, v10];
  CGContextTranslateCTM(CurrentContext, v8 * -0.5, v8 * -0.5);
  v16 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v16;
}

@end