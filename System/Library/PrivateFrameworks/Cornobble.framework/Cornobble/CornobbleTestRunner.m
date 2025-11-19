@interface CornobbleTestRunner
+ (void)performFingerOnGlassScrollTestNamed:(id)a3 withParameters:(id)a4 completionHandler:(id)a5;
+ (void)performFingerOnGlassScrollWithParameters:(id)a3;
+ (void)performStandardScrollingTestNamed:(id)a3 onScrollView:(id)a4 iterations:(unint64_t)a5 canFlick:(BOOL)a6 completionHandler:(id)a7;
+ (void)performStandardScrollingTestNamed:(id)a3 onScrollView:(id)a4 iterations:(unint64_t)a5 pages:(unint64_t)a6 direction:(int64_t)a7 canFlick:(BOOL)a8 completionHandler:(id)a9;
+ (void)performTestNamed:(id)a3 usingComposer:(id)a4 completionHandler:(id)a5;
+ (void)performTestNamed:(id)a3 withEventStream:(id)a4 completionHandler:(id)a5;
+ (void)performTestNamed:(id)a3 withRecapCommandString:(id)a4 onView:(id)a5 completionHandler:(id)a6;
+ (void)performTestNamed:(id)a3 withRecapFile:(id)a4 onView:(id)a5 completionHandler:(id)a6;
+ (void)playInteraction:(id)a3 completionHandler:(id)a4;
@end

@implementation CornobbleTestRunner

+ (void)playInteraction:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [a3 composerBlock];
  [a1 performTestNamed:0 usingComposer:v7 completionHandler:v6];
}

+ (void)performStandardScrollingTestNamed:(id)a3 onScrollView:(id)a4 iterations:(unint64_t)a5 canFlick:(BOOL)a6 completionHandler:(id)a7
{
  v7 = a6;
  v12 = a7;
  v13 = a4;
  v14 = a3;
  v15 = CRNQuadrantOfContentOffsetFor(v13);
  v16 = [CRNStandardScrollTestParameters parametersForTestName:v14 scrollView:v13 iterations:a5 direction:CRNOppositeDirectionFrom(v15) preventDismissalGestures:0 canUseFlicks:v7 completionHandler:v12];

  [a1 performFingerOnGlassScrollWithParameters:v16];
}

+ (void)performStandardScrollingTestNamed:(id)a3 onScrollView:(id)a4 iterations:(unint64_t)a5 pages:(unint64_t)a6 direction:(int64_t)a7 canFlick:(BOOL)a8 completionHandler:(id)a9
{
  v9 = a8;
  v16 = a9;
  v17 = a4;
  v18 = a3;
  v19 = [v17 superview];
  [v17 frame];
  [v19 convertRect:0 toView:?];
  v21 = v20;
  v23 = v22;

  v24 = CRNAxisFromScrollDirection(a7);
  v25 = [CRNStandardScrollTestParameters parametersForTestName:v18 scrollView:v17 iterations:a5 amplitude:a7 direction:0 preventDismissalGestures:v9 canUseFlicks:CRNSizeAlongAxis(v24 completionHandler:v21, v23) * a6, v16];

  [a1 performFingerOnGlassScrollWithParameters:v25];
}

+ (void)performTestNamed:(id)a3 withEventStream:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (RecapLibraryCore())
  {
    if (v7)
    {
      v10 = [MEMORY[0x277D75128] sharedApplication];
      [v10 startedTest:v7];
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v11 = getRCPPlayerPlaybackOptionsClass_softClass;
    v27 = getRCPPlayerPlaybackOptionsClass_softClass;
    if (!getRCPPlayerPlaybackOptionsClass_softClass)
    {
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __getRCPPlayerPlaybackOptionsClass_block_invoke;
      v22 = &unk_278EDC538;
      v23 = &v24;
      __getRCPPlayerPlaybackOptionsClass_block_invoke(&v19);
      v11 = v25[3];
    }

    v12 = v11;
    _Block_object_dispose(&v24, 8);
    v13 = objc_alloc_init(v11);
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v14 = getRCPInlinePlayerClass_softClass;
    v27 = getRCPInlinePlayerClass_softClass;
    if (!getRCPInlinePlayerClass_softClass)
    {
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __getRCPInlinePlayerClass_block_invoke;
      v22 = &unk_278EDC538;
      v23 = &v24;
      __getRCPInlinePlayerClass_block_invoke(&v19);
      v14 = v25[3];
    }

    v15 = v14;
    _Block_object_dispose(&v24, 8);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __74__CornobbleTestRunner_performTestNamed_withEventStream_completionHandler___block_invoke;
    v16[3] = &unk_278EDC4D8;
    v17 = v7;
    v18 = v9;
    [v14 playEventStream:v8 options:v13 completion:v16];
  }

  else
  {
    v13 = [MEMORY[0x277D75128] sharedApplication];
    [v13 failedTest:v7 withFailure:@"Recap unavaliable"];
  }
}

uint64_t __74__CornobbleTestRunner_performTestNamed_withEventStream_completionHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x277D75128] sharedApplication];
    [v2 finishedTest:*(a1 + 32) waitForCommit:1 extraResults:0];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

+ (void)performTestNamed:(id)a3 usingComposer:(id)a4 completionHandler:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if (RecapLibraryCore())
  {
    v10 = [getRCPSyntheticEventStreamClass() eventStreamWithEventActions:v8];
  }

  else
  {
    v10 = 0;
  }

  [a1 performTestNamed:v11 withEventStream:v10 completionHandler:v9];
}

+ (void)performTestNamed:(id)a3 withRecapFile:(id)a4 onView:(id)a5 completionHandler:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a6;
  if (RecapLibraryCore())
  {
    v11 = [getRCPSyntheticEventStreamClass() eventStreamWithFileURL:v9 error:0];
  }

  else
  {
    v11 = 0;
  }

  [a1 performTestNamed:v12 withEventStream:v11 completionHandler:v10];
}

+ (void)performTestNamed:(id)a3 withRecapCommandString:(id)a4 onView:(id)a5 completionHandler:(id)a6
{
  v14 = a3;
  v9 = a4;
  v10 = a6;
  if (RecapLibraryCore())
  {
    RCPSyntheticEventStreamClass = getRCPSyntheticEventStreamClass();
    v12 = [v9 componentsSeparatedByString:@" "];
    v13 = [RCPSyntheticEventStreamClass eventStreamWithCLIArguments:v12];
  }

  else
  {
    v13 = 0;
  }

  [a1 performTestNamed:v14 withEventStream:v13 completionHandler:v10];
}

+ (void)performFingerOnGlassScrollWithParameters:(id)a3
{
  v7 = a3;
  if (RecapLibraryCore())
  {
    v4 = [v7 testName];
    v5 = [v7 eventStream];
    v6 = [v7 completionHandler];
    [a1 performTestNamed:v4 withEventStream:v5 completionHandler:v6];
  }
}

+ (void)performFingerOnGlassScrollTestNamed:(id)a3 withParameters:(id)a4 completionHandler:(id)a5
{
  v6 = [CRNGroupScrollTestParameters parametersByCombining:a4 testName:a3 completionHandler:a5];
  [a1 performFingerOnGlassScrollWithParameters:v6];
}

@end