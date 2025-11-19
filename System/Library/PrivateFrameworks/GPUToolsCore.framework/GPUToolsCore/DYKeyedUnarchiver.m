@interface DYKeyedUnarchiver
+ (NSSet)allClassSet;
+ (NSSet)captureArchiveClassSet;
+ (NSSet)graphicsAPIInfosClassSet;
+ (id)unarchivedObjectOfClass:(Class)a3 fromData:(id)a4 error:(id *)a5;
+ (void)registerClass:(id)a3 withSet:(id)a4;
+ (void)registerRuntimeClass:(id)a3 withSet:(id)a4;
@end

@implementation DYKeyedUnarchiver

+ (NSSet)allClassSet
{
  if (allClassSet_onceToken != -1)
  {
    +[DYKeyedUnarchiver allClassSet];
  }

  return allClassSet__allClassSet;
}

uint64_t __32__DYKeyedUnarchiver_allClassSet__block_invoke()
{
  v17 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  allClassSet__allClassSet = v0;
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v4 count:13];
  [v0 addObjectsFromArray:{v1, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15}];
  [DYKeyedUnarchiver registerClass:@"GTMTLResourceUsageItem" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYMTLDeviceProfile" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYDeviceInfo" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYContextInfo" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYRendererInfo" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYMTLShaderProfilerResult" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYStaticResourcesInfo" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYMTLCommandQueueInfo" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYMTLCaptureScopeInfo" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYCAMetalLayerInfo" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYBreakpoint" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYStaticResourcesInfo" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYIntKeyedDictionary" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYExperiment" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYExperimentOverrideEnable" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYShaderDiassemlyInfo" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYShaderInlineBlockInfo" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYShaderBinaryRangeInfo" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYShaderPerLineSourceInfo" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYShaderAnalyzerResult" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYShaderProfilerShaderInfo" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYShaderProfilerProgramInfo" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYShaderProfilerDrawCallInfo" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYShaderProfilerResult" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"ShaderBinaryInfo" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYAnalyzerFinding" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYMTLResourceUsageItem" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYResource" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLResource" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLVertexAttributes" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLPatchAttributes" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLComputeAttributes" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLMeshAttributes" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLBuffer" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLFramebuffer" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLFramebufferAttachment" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLLibrary" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLFunctionSource" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLSamplerState" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLTexture" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLCounterSampleBuffer" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYGLResourceObject" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYGuestAppArgument" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYGuestAppEnvironment" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYGuestApp" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYInvestigatorCase" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYInvestigatorCaseConfigData" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYInvestigatorRecommendationSection" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYInvestigatorRecommendation" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYInvestigatorRecommendationInfo" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYInvestigatorRecommendationItem" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYInvestigatorStatistics" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYOverviewMeasurementsPerSample" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYInvestigatorDisplayLink" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYInvestigatorConfig" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYGLExpertFinding" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYGLExpertEvidence" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYGLExpertStageTiming" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYGLOverviewMeasurements" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYGLExpertAnalyzerFindingWrapper" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYGLExpertPhase" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYGLExpertConclusion" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYGLExpertConclusionEvidence" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYGLExpertRationale" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYGLExpertRationaleTranslation" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLAnalyzerHeuristic_DeltaGen" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLAnalyzerHeuristic_FrameStatistics" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLAnalyzerHeuristic_Attachments" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLAnalyzerHeuristic_CommandBuffer" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLAnalyzerHeuristic_CoalesceEncoders" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLAnalyzerHeuristic_NextDrawablePass1" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLAnalyzerHeuristic_NextDrawablePass2" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLAnalyzerHeuristic_EmptyEncoder" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLAnalyzerHeuristic_Performance" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLAnalyzerHeuristic_ResourceUsage" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLAnalyzerHeuristic_Shader" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLAnalyzerHeuristic_ShaderProfiler" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLAnalyzerHeuristic_UnusedEncoderOutput" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYPMTLAnalyzerHeuristic_MemoryResourceFindings" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"GTTelemetryRecordObject" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"GTTelemetryLayerObject" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"GTTelemetryQueueObject" withSet:allClassSet__allClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"GTTelemetryDeviceObject" withSet:allClassSet__allClassSet];
  result = [DYKeyedUnarchiver registerRuntimeClass:@"GTTelemetryStatistics" withSet:allClassSet__allClassSet];
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

+ (NSSet)captureArchiveClassSet
{
  if (captureArchiveClassSet_onceToken != -1)
  {
    +[DYKeyedUnarchiver captureArchiveClassSet];
  }

  return captureArchiveClassSet__captureArchiveClassSet;
}

uint64_t __43__DYKeyedUnarchiver_captureArchiveClassSet__block_invoke()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  captureArchiveClassSet__captureArchiveClassSet = v0;
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v4 count:11];
  [v0 addObjectsFromArray:{v1, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13}];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYMTLDeviceProfile" withSet:captureArchiveClassSet__captureArchiveClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYDeviceInfo" withSet:captureArchiveClassSet__captureArchiveClassSet];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYContextInfo" withSet:captureArchiveClassSet__captureArchiveClassSet];
  result = [DYKeyedUnarchiver registerRuntimeClass:@"DYRendererInfo" withSet:captureArchiveClassSet__captureArchiveClassSet];
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

+ (NSSet)graphicsAPIInfosClassSet
{
  if (graphicsAPIInfosClassSet_onceToken != -1)
  {
    +[DYKeyedUnarchiver graphicsAPIInfosClassSet];
  }

  return graphicsAPIInfosClassSet__graphicsAPIInfosClassSet;
}

uint64_t __45__DYKeyedUnarchiver_graphicsAPIInfosClassSet__block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  graphicsAPIInfosClassSet__graphicsAPIInfosClassSet = v0;
  v3[0] = objc_opt_class();
  [v0 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v3, 1)}];
  [DYKeyedUnarchiver registerRuntimeClass:@"DYContextInfo" withSet:graphicsAPIInfosClassSet__graphicsAPIInfosClassSet];
  result = [DYKeyedUnarchiver registerRuntimeClass:@"DYMTLDeviceProfile" withSet:graphicsAPIInfosClassSet__graphicsAPIInfosClassSet];
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)registerClass:(id)a3 withSet:(id)a4
{
  v5 = NSClassFromString(a3);
  if (v5)
  {

    [a4 addObject:v5];
  }
}

+ (void)registerRuntimeClass:(id)a3 withSet:(id)a4
{
  v6 = [a3 rangeOfString:@"DY"];
  v8 = v7;
  v9 = NSClassFromString(a3);
  if (v9)
  {
    v10 = v9;
    if (!v6)
    {
      v11 = [@"DYGT" stringByAppendingString:{objc_msgSend(a3, "substringFromIndex:", v8)}];
      [MEMORY[0x277CCAAC8] setClass:v10 forClassName:v11];
    }

    [a4 addObject:v10];
  }
}

+ (id)unarchivedObjectOfClass:(Class)a3 fromData:(id)a4 error:(id *)a5
{
  v7 = [MEMORY[0x277CBEB98] setWithObjects:{a3, 0}];

  return [DYKeyedUnarchiver unarchivedObjectOfClasses:v7 fromData:a4 error:a5];
}

@end