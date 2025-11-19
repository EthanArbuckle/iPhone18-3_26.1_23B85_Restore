@interface CAMLibrarySelectionTestHarness
- (CAMLibrarySelectionTestHarness)initWithTestName:(id)a3 librarySelectionController:(id)a4;
- (void)startTesting;
@end

@implementation CAMLibrarySelectionTestHarness

- (CAMLibrarySelectionTestHarness)initWithTestName:(id)a3 librarySelectionController:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CAMLibrarySelectionTestHarness;
  v8 = [(CAMPerformanceTestHarness *)&v11 initWithTestName:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_librarySelectionController, a4);
  }

  return v9;
}

- (void)startTesting
{
  v3 = [(CAMLibrarySelectionTestHarness *)self librarySelectionController];
  if (!v3)
  {
    v8 = @"Missing LibrarySelectionController";
LABEL_6:
    [(CAMPerformanceTestHarness *)self failedTestWithReason:v8];
    goto LABEL_7;
  }

  v4 = +[CAMCaptureCapabilities capabilities];
  v5 = [v4 peopleProximityDetectionSupported];

  if ((v5 & 1) == 0)
  {
    v8 = @"Device Proximity not allowed";
    goto LABEL_6;
  }

  v6 = [(CAMLibrarySelectionTestHarness *)self librarySelectionController];
  [v6 stopAndClearAcquiredSignals];

  v7 = dispatch_time(0, 10000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CAMLibrarySelectionTestHarness_startTesting__block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_after(v7, MEMORY[0x1E69E96A0], block);
LABEL_7:
}

void __46__CAMLibrarySelectionTestHarness_startTesting__block_invoke(uint64_t a1)
{
  v7.receiver = *(a1 + 32);
  v7.super_class = CAMLibrarySelectionTestHarness;
  objc_msgSendSuper2(&v7, sel_startTesting);
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = 0;
  v2 = [*(a1 + 32) librarySelectionController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__CAMLibrarySelectionTestHarness_startTesting__block_invoke_2;
  v4[3] = &unk_1E76F8988;
  v4[4] = *(a1 + 32);
  v4[5] = v5;
  [v2 ppt_installChangeHandler:v4];

  v3 = [*(a1 + 32) librarySelectionController];
  [v3 startAcquiringSignals];

  _Block_object_dispose(v5, 8);
}

void __46__CAMLibrarySelectionTestHarness_startTesting__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 acquiredSignalResults];
  v4 = [v3 identitiesInProximity];
  v5 = [v4 count];

  if (v5)
  {
    v6 = *(*(a1 + 40) + 8);
    if ((*(v6 + 24) & 1) == 0)
    {
      *(v6 + 24) = 1;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __46__CAMLibrarySelectionTestHarness_startTesting__block_invoke_3;
      block[3] = &unk_1E76F77B0;
      block[4] = *(a1 + 32);
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

@end