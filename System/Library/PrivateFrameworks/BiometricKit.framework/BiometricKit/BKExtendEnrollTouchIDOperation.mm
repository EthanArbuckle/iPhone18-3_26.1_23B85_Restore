@interface BKExtendEnrollTouchIDOperation
- (void)homeButtonPressed:(unint64_t)pressed;
- (void)matchResult:(id)result details:(id)details client:(unint64_t)client;
@end

@implementation BKExtendEnrollTouchIDOperation

void __58__BKExtendEnrollTouchIDOperation_startBioOperation_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = [BKErrorHelper errorWithOSStatus:a2];
    (*(v2 + 16))(v2, 0, v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 1, 0);
  }
}

- (void)matchResult:(id)result details:(id)details client:(unint64_t)client
{
  v27 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  detailsCopy = details;
  kdebug_trace();
  v10 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    *v24 = resultCopy;
    *&v24[8] = 2112;
    *&v24[10] = resultCopy;
    *&v24[18] = 2048;
    *&v24[20] = detailsCopy;
    v25 = 2048;
    clientCopy = client;
    _os_log_impl(&dword_1C82AD000, v11, OS_LOG_TYPE_DEFAULT, "BKExtendEnrollTouchIDOperation::matchResult:withDictionary:client: %p(%@), %p, %llu\n", buf, 0x2Au);
  }

  delegate = [(BKOperation *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    if (__osLog)
    {
      v14 = __osLog;
    }

    else
    {
      v14 = v10;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      delegate2 = [(BKOperation *)self delegate];
      delegate3 = [(BKOperation *)self delegate];
      *buf = 67109634;
      *v24 = resultCopy != 0;
      *&v24[4] = 2048;
      *&v24[6] = delegate2;
      *&v24[14] = 2112;
      *&v24[16] = delegate3;
      _os_log_impl(&dword_1C82AD000, v15, OS_LOG_TYPE_DEFAULT, "BKExtendEnrollTouchIDOperation::matchResult:client: hasUpdated:%d => delegate:%p(%@)\n", buf, 0x1Cu);
    }

    dispatchQueue = [(BKOperation *)self dispatchQueue];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __61__BKExtendEnrollTouchIDOperation_matchResult_details_client___block_invoke;
    v21[3] = &unk_1E8304280;
    v21[4] = self;
    v22 = resultCopy != 0;
    dispatch_async(dispatchQueue, v21);
  }

  if (__osLogTrace)
  {
    v19 = __osLogTrace;
  }

  else
  {
    v19 = v10;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v19, OS_LOG_TYPE_DEFAULT, "BKExtendEnrollTouchIDOperation::matchResult:withDictionary:client: -> void\n", buf, 2u);
  }

  kdebug_trace();

  v20 = *MEMORY[0x1E69E9840];
}

void __61__BKExtendEnrollTouchIDOperation_matchResult_details_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 extendEnroll:*(a1 + 32) hasUpdated:*(a1 + 40)];
}

void __55__BKExtendEnrollTouchIDOperation_statusMessage_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 fingerprintCaptureOperation:*(a1 + 32) encounteredCaptureError:*(a1 + 40)];
}

- (void)homeButtonPressed:(unint64_t)pressed
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    pressedCopy = pressed;
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKExtendEnrollTouchIDOperation::homeButtonPressed: clientID:%llu\n", buf, 0xCu);
  }

  delegate = [(BKOperation *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    if (__osLog)
    {
      v9 = __osLog;
    }

    else
    {
      v9 = v5;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      delegate2 = [(BKOperation *)self delegate];
      delegate3 = [(BKOperation *)self delegate];
      *buf = 134218242;
      pressedCopy = delegate2;
      v19 = 2112;
      v20 = delegate3;
      _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKExtendEnrollTouchIDOperation::homeButtonPressed: homeButtonPressedInEnrollOperation => delegate:%p(%@)\n", buf, 0x16u);
    }

    dispatchQueue = [(BKOperation *)self dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__BKExtendEnrollTouchIDOperation_homeButtonPressed___block_invoke;
    block[3] = &unk_1E8303E78;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }

  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v5;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v14, OS_LOG_TYPE_DEFAULT, "BKExtendEnrollTouchIDOperation::homeButtonPressed: -> void\n", buf, 2u);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __52__BKExtendEnrollTouchIDOperation_homeButtonPressed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 touchIDButtonPressedInOperation:*(a1 + 32)];
}

@end