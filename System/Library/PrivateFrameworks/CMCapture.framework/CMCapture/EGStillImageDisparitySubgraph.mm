@interface EGStillImageDisparitySubgraph
+ (void)initialize;
- (EGStillImageDisparitySubgraph)initWithName:(id)name stillImageSettings:(id)settings nodeConfiguration:(id)configuration resourceCoordinator:(id)coordinator delegate:(id)delegate;
- (uint64_t)_build;
- (uint64_t)_processorControllerOutputForType:(uint64_t)result;
- (void)dealloc;
@end

@implementation EGStillImageDisparitySubgraph

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (EGStillImageDisparitySubgraph)initWithName:(id)name stillImageSettings:(id)settings nodeConfiguration:(id)configuration resourceCoordinator:(id)coordinator delegate:(id)delegate
{
  v14.receiver = self;
  v14.super_class = EGStillImageDisparitySubgraph;
  v11 = [(EGGraph *)&v14 initWithName:name];
  if (v11)
  {
    v11->_stillImageSettings = settings;
    v11->_nodeConfiguration = configuration;
    v11->_resourceCoordinator = coordinator;
    v11->_delegate = delegate;
    v11->_processorControllerSourceNodesByType = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11->_softISPProcessingCompleteSubgraphOutputs = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11->_captureCompleteSubgraphOutputs = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = objc_autoreleasePoolPush();
    [(EGStillImageDisparitySubgraph *)v11 _build];
    objc_autoreleasePoolPop(v13);
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageDisparitySubgraph;
  [(EGGraph *)&v3 dealloc];
}

- (uint64_t)_build
{
  if (self)
  {
    v2 = [objc_msgSend(*(self + 112) "captureSettings")];
    v3 = [[EGStillImageSoftISPNode alloc] initWithName:@"SoftISPForDisparityPrimary" stillImageSettings:*(self + 112) nodeConfiguration:*(self + 120) portType:v2 processingMode:3 addGatingInput:0 delegate:*(self + 136)];
    -[EGQueueManagementNode handleAllInputAsyncOnQueue:](v3, "handleAllInputAsyncOnQueue:", [*(self + 128) workerQueue]);
    [self installNode:v3];
    *(self + 80) = [self subgraphInputInstalledFromInternalInput:-[EGStillImageSoftISPNode sbufInput](v3 withName:{"sbufInput"), @"primaryReferenceFrame"}];
    v4 = [(EGStillImageDisparitySubgraph *)self _processorControllerOutputForType:?];
    [(EGStillImageSoftISPNode *)v3 processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v4 toInput:?];
    [*(self + 96) addObject:{objc_msgSend(self, "subgraphOutputInstalledFromInternalOutput:withName:", -[EGStillImageSoftISPNode processingCompleteOutput](v3, "processingCompleteOutput"), @"primarySoftISPProcessingComplete"}];
    v5 = -[EGStillImageSoftISPNode initWithName:stillImageSettings:nodeConfiguration:portType:processingMode:addGatingInput:delegate:]([EGStillImageSoftISPNode alloc], "initWithName:stillImageSettings:nodeConfiguration:portType:processingMode:addGatingInput:delegate:", @"SoftISPForDisparitySecondary", *(self + 112), *(self + 120), [objc_msgSend(objc_msgSend(*(self + 112) "captureSettings")], 3, 0, *(self + 136));
    -[EGQueueManagementNode handleAllInputAsyncOnQueue:](v5, "handleAllInputAsyncOnQueue:", [*(self + 128) workerQueue]);
    [self installNode:v5];
    *(self + 88) = [self subgraphInputInstalledFromInternalInput:-[EGStillImageSoftISPNode sbufInput](v5 withName:{"sbufInput"), @"secondaryReferenceFrame"}];
    v6 = [(EGStillImageDisparitySubgraph *)self _processorControllerOutputForType:?];
    [(EGStillImageSoftISPNode *)v5 processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v6 toInput:?];
    [*(self + 96) addObject:{objc_msgSend(self, "subgraphOutputInstalledFromInternalOutput:withName:", -[EGStillImageSoftISPNode processingCompleteOutput](v5, "processingCompleteOutput"), @"secondarySoftISPProcessingComplete"}];
    v7 = [[EGStillImageStereoDisparityNode alloc] initWithName:@"StereoDisparity" stillImageSettings:*(self + 112) portType:v2 delegate:*(self + 136)];
    -[EGQueueManagementNode handleAllInputAsyncOnQueue:](v7, "handleAllInputAsyncOnQueue:", [*(self + 128) stereoDisparityProcessorControllerQueue]);
    [self installNode:v7];
    [(EGStillImageSoftISPNode *)v3 sbufOutput];
    [OUTLINED_FUNCTION_18_0() primarySbufInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v3 toInput:?];
    [(EGStillImageSoftISPNode *)v5 sbufOutput];
    [OUTLINED_FUNCTION_18_0() secondarySbufInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v3 toInput:?];
    [(EGStillImageDisparitySubgraph *)self _processorControllerOutputForType:?];
    [OUTLINED_FUNCTION_18_0() processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v3 toInput:?];
    v8 = [[EGStillImageSampleBufferEmitterNode alloc] initWithName:@"DisparitySampleBufferEmitter" description:@"Disparity image"];
    [self installNode:v8];
    sbufOutput = [(EGStillImageStereoDisparityNode *)v7 sbufOutput];
    [(EGStillImageSampleBufferEmitterNode *)v8 sbufInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:sbufOutput toInput:?];
    [*(self + 104) addObject:{objc_msgSend(self, "subgraphOutputInstalledFromInternalOutput:", -[EGStillImageSampleBufferEmitterNode captureCompleteOutput](v8, "captureCompleteOutput"))}];
  }

  return 0;
}

- (uint64_t)_processorControllerOutputForType:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = [*(result + 144) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", a2)}];
    if (!v4)
    {
      v5 = [[EGStillImageProcessorControllerSourceNode alloc] initWithType:a2];
      [OUTLINED_FUNCTION_18_0() installNode:0];
      [*(v3 + 144) setObject:0 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", a2)}];
    }

    return [v4 processorControllerOutput];
  }

  return result;
}

@end