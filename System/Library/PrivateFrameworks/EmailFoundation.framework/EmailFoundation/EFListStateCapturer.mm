@interface EFListStateCapturer
- (EFListStateCapturer)initWithTitle:(id)a3 itemName:(id)a4 headLimit:(unint64_t)a5 tailLimit:(unint64_t)a6 delegate:(id)a7;
- (void)dealloc;
@end

@implementation EFListStateCapturer

- (void)dealloc
{
  v3 = [(EFListStateCapturer *)self stateCaptureCancelable];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = EFListStateCapturer;
  [(EFListStateCapturer *)&v4 dealloc];
}

- (EFListStateCapturer)initWithTitle:(id)a3 itemName:(id)a4 headLimit:(unint64_t)a5 tailLimit:(unint64_t)a6 delegate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v30.receiver = self;
  v30.super_class = EFListStateCapturer;
  v15 = [(EFListStateCapturer *)&v30 init];
  if (v15)
  {
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_attr_make_with_qos_class(v16, QOS_CLASS_BACKGROUND, 0);
    v18 = dispatch_queue_create("com.apple.email.EFListStateCapturer.stateCaptureQueue", v17);
    stateCaptureQueue = v15->_stateCaptureQueue;
    v15->_stateCaptureQueue = v18;

    objc_initWeak(&location, v15);
    objc_initWeak(&from, v14);
    v20 = v15->_stateCaptureQueue;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __75__EFListStateCapturer_initWithTitle_itemName_headLimit_tailLimit_delegate___block_invoke;
    v24[3] = &unk_1E8248D18;
    objc_copyWeak(&v26, &location);
    objc_copyWeak(v27, &from);
    v27[1] = a5;
    v27[2] = a6;
    v25 = v13;
    v21 = EFLogRegisterStateCaptureBlock(v20, v12, 4, v24);
    stateCaptureCancelable = v15->_stateCaptureCancelable;
    v15->_stateCaptureCancelable = v21;

    objc_destroyWeak(v27);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v15;
}

id __75__EFListStateCapturer_initWithTitle_itemName_headLimit_tailLimit_delegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 48));
    if (v3)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v5 = [v3 labelForStateCapture];
      [v4 setObject:v5 forKeyedSubscript:@" Label"];

      v20 = 0;
      v6 = [v3 itemsForStateCaptureWithErrorString:&v20];
      v7 = v20;
      if (v6)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __75__EFListStateCapturer_initWithTitle_itemName_headLimit_tailLimit_delegate___block_invoke_2;
        aBlock[3] = &unk_1E8248CF0;
        v19 = v3;
        v8 = _Block_copy(aBlock);
        v9 = [v6 count];
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
        [v4 setObject:v10 forKeyedSubscript:@"Count"];

        if (v9 <= *(a1 + 64) + *(a1 + 56))
        {
          v11 = v8[2](v8, v6);
          [v4 setObject:v11 forKeyedSubscript:*(a1 + 32)];
        }

        else
        {
          v11 = [v6 subarrayWithRange:0];
          v17 = [v6 subarrayWithRange:v9 - *(a1 + 64)];
          v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"First %@", *(a1 + 32)];
          v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Last %@", *(a1 + 32)];
          v14 = v8[2](v8, v11);
          [v4 setObject:v14 forKeyedSubscript:v12];

          v15 = v8[2](v8, v17);
          [v4 setObject:v15 forKeyedSubscript:v13];
        }
      }

      else
      {
        [v4 setObject:v7 forKeyedSubscript:@"Error"];
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __75__EFListStateCapturer_initWithTitle_itemName_headLimit_tailLimit_delegate___block_invoke_2(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__EFListStateCapturer_initWithTitle_itemName_headLimit_tailLimit_delegate___block_invoke_3;
  v5[3] = &unk_1E8248CC8;
  v6 = *(a1 + 32);
  v3 = [a2 ef_compactMap:v5];

  return v3;
}

id __75__EFListStateCapturer_initWithTitle_itemName_headLimit_tailLimit_delegate___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) descriptionForItem:a2];

  return v2;
}

@end