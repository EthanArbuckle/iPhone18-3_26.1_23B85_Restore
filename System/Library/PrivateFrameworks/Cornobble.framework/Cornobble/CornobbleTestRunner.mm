@interface CornobbleTestRunner
+ (void)performFingerOnGlassScrollTestNamed:(id)named withParameters:(id)parameters completionHandler:(id)handler;
+ (void)performFingerOnGlassScrollWithParameters:(id)parameters;
+ (void)performStandardScrollingTestNamed:(id)named onScrollView:(id)view iterations:(unint64_t)iterations canFlick:(BOOL)flick completionHandler:(id)handler;
+ (void)performStandardScrollingTestNamed:(id)named onScrollView:(id)view iterations:(unint64_t)iterations pages:(unint64_t)pages direction:(int64_t)direction canFlick:(BOOL)flick completionHandler:(id)handler;
+ (void)performTestNamed:(id)named usingComposer:(id)composer completionHandler:(id)handler;
+ (void)performTestNamed:(id)named withEventStream:(id)stream completionHandler:(id)handler;
+ (void)performTestNamed:(id)named withRecapCommandString:(id)string onView:(id)view completionHandler:(id)handler;
+ (void)performTestNamed:(id)named withRecapFile:(id)file onView:(id)view completionHandler:(id)handler;
+ (void)playInteraction:(id)interaction completionHandler:(id)handler;
@end

@implementation CornobbleTestRunner

+ (void)playInteraction:(id)interaction completionHandler:(id)handler
{
  handlerCopy = handler;
  composerBlock = [interaction composerBlock];
  [self performTestNamed:0 usingComposer:composerBlock completionHandler:handlerCopy];
}

+ (void)performStandardScrollingTestNamed:(id)named onScrollView:(id)view iterations:(unint64_t)iterations canFlick:(BOOL)flick completionHandler:(id)handler
{
  flickCopy = flick;
  handlerCopy = handler;
  viewCopy = view;
  namedCopy = named;
  v15 = CRNQuadrantOfContentOffsetFor(viewCopy);
  v16 = [CRNStandardScrollTestParameters parametersForTestName:namedCopy scrollView:viewCopy iterations:iterations direction:CRNOppositeDirectionFrom(v15) preventDismissalGestures:0 canUseFlicks:flickCopy completionHandler:handlerCopy];

  [self performFingerOnGlassScrollWithParameters:v16];
}

+ (void)performStandardScrollingTestNamed:(id)named onScrollView:(id)view iterations:(unint64_t)iterations pages:(unint64_t)pages direction:(int64_t)direction canFlick:(BOOL)flick completionHandler:(id)handler
{
  flickCopy = flick;
  handlerCopy = handler;
  viewCopy = view;
  namedCopy = named;
  superview = [viewCopy superview];
  [viewCopy frame];
  [superview convertRect:0 toView:?];
  v21 = v20;
  v23 = v22;

  v24 = CRNAxisFromScrollDirection(direction);
  handlerCopy = [CRNStandardScrollTestParameters parametersForTestName:namedCopy scrollView:viewCopy iterations:iterations amplitude:direction direction:0 preventDismissalGestures:flickCopy canUseFlicks:CRNSizeAlongAxis(v24 completionHandler:v21, v23) * pages, handlerCopy];

  [self performFingerOnGlassScrollWithParameters:handlerCopy];
}

+ (void)performTestNamed:(id)named withEventStream:(id)stream completionHandler:(id)handler
{
  namedCopy = named;
  streamCopy = stream;
  handlerCopy = handler;
  if (RecapLibraryCore())
  {
    if (namedCopy)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      [mEMORY[0x277D75128] startedTest:namedCopy];
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
    mEMORY[0x277D75128]2 = objc_alloc_init(v11);
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
    v17 = namedCopy;
    v18 = handlerCopy;
    [v14 playEventStream:streamCopy options:mEMORY[0x277D75128]2 completion:v16];
  }

  else
  {
    mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128]2 failedTest:namedCopy withFailure:@"Recap unavaliable"];
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

+ (void)performTestNamed:(id)named usingComposer:(id)composer completionHandler:(id)handler
{
  namedCopy = named;
  composerCopy = composer;
  handlerCopy = handler;
  if (RecapLibraryCore())
  {
    v10 = [getRCPSyntheticEventStreamClass() eventStreamWithEventActions:composerCopy];
  }

  else
  {
    v10 = 0;
  }

  [self performTestNamed:namedCopy withEventStream:v10 completionHandler:handlerCopy];
}

+ (void)performTestNamed:(id)named withRecapFile:(id)file onView:(id)view completionHandler:(id)handler
{
  namedCopy = named;
  fileCopy = file;
  handlerCopy = handler;
  if (RecapLibraryCore())
  {
    v11 = [getRCPSyntheticEventStreamClass() eventStreamWithFileURL:fileCopy error:0];
  }

  else
  {
    v11 = 0;
  }

  [self performTestNamed:namedCopy withEventStream:v11 completionHandler:handlerCopy];
}

+ (void)performTestNamed:(id)named withRecapCommandString:(id)string onView:(id)view completionHandler:(id)handler
{
  namedCopy = named;
  stringCopy = string;
  handlerCopy = handler;
  if (RecapLibraryCore())
  {
    RCPSyntheticEventStreamClass = getRCPSyntheticEventStreamClass();
    v12 = [stringCopy componentsSeparatedByString:@" "];
    v13 = [RCPSyntheticEventStreamClass eventStreamWithCLIArguments:v12];
  }

  else
  {
    v13 = 0;
  }

  [self performTestNamed:namedCopy withEventStream:v13 completionHandler:handlerCopy];
}

+ (void)performFingerOnGlassScrollWithParameters:(id)parameters
{
  parametersCopy = parameters;
  if (RecapLibraryCore())
  {
    testName = [parametersCopy testName];
    eventStream = [parametersCopy eventStream];
    completionHandler = [parametersCopy completionHandler];
    [self performTestNamed:testName withEventStream:eventStream completionHandler:completionHandler];
  }
}

+ (void)performFingerOnGlassScrollTestNamed:(id)named withParameters:(id)parameters completionHandler:(id)handler
{
  v6 = [CRNGroupScrollTestParameters parametersByCombining:parameters testName:named completionHandler:handler];
  [self performFingerOnGlassScrollWithParameters:v6];
}

@end