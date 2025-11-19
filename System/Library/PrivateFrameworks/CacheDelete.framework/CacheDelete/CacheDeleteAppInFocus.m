@interface CacheDeleteAppInFocus
+ (void)subscribeToAppInFocusStreamBeginning:(id)a3 callback:(id)a4;
@end

@implementation CacheDeleteAppInFocus

+ (void)subscribeToAppInFocusStreamBeginning:(id)a3 callback:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (BiomeLibraryLibraryCore())
  {
    if (qword_1ED76A0E8 != -1)
    {
      dispatch_once(&qword_1ED76A0E8, &__block_literal_global_10);
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v7 = off_1ED76A108;
    v27 = off_1ED76A108;
    if (!off_1ED76A108)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __getBiomeLibrarySymbolLoc_block_invoke;
      v23[3] = &unk_1E7F03180;
      v23[4] = &v24;
      __getBiomeLibrarySymbolLoc_block_invoke(v23);
      v7 = v25[3];
    }

    _Block_object_dispose(&v24, 8);
    if (!v7)
    {
      dlerror();
      v19 = abort_report_np();
      _Block_object_dispose(&v24, 8);
      _Unwind_Resume(v19);
    }

    v8 = v7();
    v9 = [v8 App];
    v10 = [v9 InFocus];

    v11 = objc_autoreleasePoolPush();
    v12 = objc_opt_new();
    v13 = [_MergedGlobals_8 alloc];
    v14 = [MEMORY[0x1E695DF00] date];
    v15 = [v13 initWithStartDate:v14 endDate:v5 maxEvents:0 lastN:0 reversed:1];

    v16 = [v10 publisherWithOptions:v15];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __71__CacheDeleteAppInFocus_subscribeToAppInFocusStreamBeginning_callback___block_invoke_3;
    v20[3] = &unk_1E7F03140;
    v21 = v12;
    v22 = v6;
    v17 = v12;
    v18 = [v16 sinkWithCompletion:&__block_literal_global_36_0 receiveInput:v20];

    objc_autoreleasePoolPop(v11);
  }
}

void __71__CacheDeleteAppInFocus_subscribeToAppInFocusStreamBeginning_callback___block_invoke()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2050000000;
  v0 = qword_1ED76A100;
  v5 = qword_1ED76A100;
  if (!qword_1ED76A100)
  {
    BiomeLibraryLibraryCore();
    v3[3] = objc_getClass("BMPublisherOptions");
    qword_1ED76A100 = v3[3];
    v0 = v3[3];
  }

  v1 = v0;
  _Block_object_dispose(&v2, 8);
  _MergedGlobals_8 = v0;
}

void __71__CacheDeleteAppInFocus_subscribeToAppInFocusStreamBeginning_callback___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 state];
  v4 = [v2 error];

  NSLog(&cfstr_Subscribetoapp.isa, v3, v4);
}

void __71__CacheDeleteAppInFocus_subscribeToAppInFocusStreamBeginning_callback___block_invoke_3(uint64_t a1, void *a2)
{
  v21 = a2;
  v3 = [v21 eventBody];
  v4 = [v3 bundleID];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v21 eventBody];
    v7 = [v6 bundleID];
    LOBYTE(v5) = [v5 containsObject:v7];

    if ((v5 & 1) == 0)
    {
      if (*(a1 + 40))
      {
        v8 = [v21 eventBody];
        v9 = [v8 starting];

        if ((v9 & 1) == 0)
        {
          v10 = *(a1 + 32);
          v11 = [v21 eventBody];
          v12 = [v11 bundleID];
          [v10 addObject:v12];

          (*(*(a1 + 40) + 16))();
        }
      }

      else
      {
        v13 = MEMORY[0x1E695DF00];
        [v21 timestamp];
        v14 = [v13 dateWithTimeIntervalSinceReferenceDate:?];
        v15 = [v21 eventBody];
        if ([v15 starting])
        {
          v16 = "Entering";
        }

        else
        {
          v16 = " Leaving";
        }

        v17 = [v21 eventBody];
        v18 = [v17 bundleID];
        v19 = [v21 eventBody];
        v20 = [v19 launchReason];
        NSLog(&cfstr_DSubscribetoap.isa, 153, v14, v16, v18, v20);
      }
    }
  }
}

@end