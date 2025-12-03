@interface MapsUIUtilities
+ (BOOL)isInApplicationContext:(unint64_t)context;
+ (BOOL)isInApplicationContexts:(id)contexts;
+ (BOOL)isParsecProcess;
+ (id)bundleIdentifierForContext:(unint64_t)context;
+ (void)checkDeviceLockStatusWithCompletion:(id)completion;
+ (void)performOnMainIfNecessary:(id)necessary;
+ (void)resizeImageIfNeeded:(id)needed toFrameSize:(CGSize)size displayScale:(double)scale completion:(id)completion;
@end

@implementation MapsUIUtilities

+ (void)resizeImageIfNeeded:(id)needed toFrameSize:(CGSize)size displayScale:(double)scale completion:(id)completion
{
  height = size.height;
  width = size.width;
  neededCopy = needed;
  completionCopy = completion;
  v13 = completionCopy;
  if (neededCopy)
  {
    v14 = width * scale;
    v15 = height * scale;
    [neededCopy size];
    v17 = v16;
    [neededCopy size];
    v19 = v18;
    [neededCopy size];
    if (v17 >= v19)
    {
      v22 = v21 / v15;
    }

    else
    {
      v22 = v20 / v14;
    }

    [neededCopy size];
    v25 = v24;
    [neededCopy size];
    v27 = v26;
    [neededCopy size];
    if (v28 <= v14)
    {
      [neededCopy size];
      if (v29 <= v15)
      {
        (v13)[2](v13, neededCopy);
        goto LABEL_10;
      }
    }

    v30[1] = 3221225472;
    v30[0] = MEMORY[0x1E69E9820];
    v30[2] = __75__MapsUIUtilities_resizeImageIfNeeded_toFrameSize_displayScale_completion___block_invoke_2;
    v30[3] = &unk_1E821B900;
    selfCopy = self;
    v32 = v13;
    v31 = neededCopy;
    [v31 _mapsui_prepareThumbnailOfSize:v30 completionHandler:{v25 / v22, v27 / v22}];

    v23 = v32;
  }

  else
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __75__MapsUIUtilities_resizeImageIfNeeded_toFrameSize_displayScale_completion___block_invoke;
    v34[3] = &unk_1E821B860;
    v35 = completionCopy;
    [self performOnMainIfNecessary:v34];
    v23 = v35;
  }

LABEL_10:
}

void __75__MapsUIUtilities_resizeImageIfNeeded_toFrameSize_displayScale_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__MapsUIUtilities_resizeImageIfNeeded_toFrameSize_displayScale_completion___block_invoke_3;
  v6[3] = &unk_1E821B8D8;
  v4 = *(a1 + 48);
  v9 = *(a1 + 40);
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  [v4 performOnMainIfNecessary:v6];
}

uint64_t __75__MapsUIUtilities_resizeImageIfNeeded_toFrameSize_displayScale_completion___block_invoke_3(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  if (!v3)
  {
    v3 = a1[5];
  }

  return (*(v2 + 16))(v2, v3);
}

+ (void)checkDeviceLockStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    if (checkDeviceLockStatusWithCompletion__onceToken != -1)
    {
      dispatch_once(&checkDeviceLockStatusWithCompletion__onceToken, &__block_literal_global_23834);
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__MapsUIUtilities_checkDeviceLockStatusWithCompletion___block_invoke_2;
    v8[3] = &unk_1E821B8B0;
    selfCopy = self;
    v9 = completionCopy;
    v5 = _Block_copy(v8);
    v6 = v5;
    if (checkDeviceLockStatusWithCompletion__isInSpotlight == 1)
    {
      v7 = dispatch_get_global_queue(25, 0);
      dispatch_async(v7, v6);
    }

    else
    {
      (*(v5 + 2))(v5);
    }
  }
}

void __55__MapsUIUtilities_checkDeviceLockStatusWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) deviceIsLockedAndNeedsPasscode];
  if (checkDeviceLockStatusWithCompletion__isInSpotlight == 1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __55__MapsUIUtilities_checkDeviceLockStatusWithCompletion___block_invoke_3;
    v5[3] = &unk_1E821B888;
    v3 = *(a1 + 40);
    v6 = *(a1 + 32);
    v7 = v2;
    [v3 performOnMainIfNecessary:v5];
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

BOOL __55__MapsUIUtilities_checkDeviceLockStatusWithCompletion___block_invoke()
{
  result = +[MapsUIUtilities isSpotlightProcess];
  checkDeviceLockStatusWithCompletion__isInSpotlight = result;
  return result;
}

+ (id)bundleIdentifierForContext:(unint64_t)context
{
  if (context > 3)
  {
    v4 = @"com.apple.mobilesafari";
    v5 = @"com.apple.datadetectors.DDActionsService";
    v7 = @"com.apple.VisualIntelligenceCamera";
    if (context != 6)
    {
      v7 = 0;
    }

    if (context != 5)
    {
      v5 = v7;
    }

    v6 = context == 4;
    goto LABEL_11;
  }

  if (context != 1)
  {
    v4 = @"com.apple.siri";
    v5 = @"com.apple.Spotlight";
    if (context != 3)
    {
      v5 = 0;
    }

    v6 = context == 2;
LABEL_11:
    if (v6)
    {
      v8 = v4;
    }

    else
    {
      v8 = v5;
    }

    return v8;
  }

  v8 = *MEMORY[0x1E69A1A78];

  return v8;
}

+ (BOOL)isInApplicationContext:(unint64_t)context
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:context];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  LOBYTE(self) = [self isInApplicationContexts:v5];

  v6 = *MEMORY[0x1E69E9840];
  return self;
}

+ (BOOL)isInApplicationContexts:(id)contexts
{
  v22 = *MEMORY[0x1E69E9840];
  contextsCopy = contexts;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = contextsCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [self bundleIdentifierForContext:{objc_msgSend(*(*(&v17 + 1) + 8 * i), "unsignedIntegerValue", v17)}];
        v13 = [bundleIdentifier isEqual:v12];

        if (v13)
        {
          v14 = 1;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (BOOL)isParsecProcess
{
  if ([self isSiriProcess] & 1) != 0 || (objc_msgSend(self, "isSpotlightProcess") & 1) != 0 || (objc_msgSend(self, "isSafariProcess"))
  {
    return 1;
  }

  return [self isDataDetectorsProcess];
}

+ (void)performOnMainIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if (necessaryCopy)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      necessaryCopy[2](necessaryCopy);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __44__MapsUIUtilities_performOnMainIfNecessary___block_invoke;
      block[3] = &unk_1E821B860;
      v5 = necessaryCopy;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

@end