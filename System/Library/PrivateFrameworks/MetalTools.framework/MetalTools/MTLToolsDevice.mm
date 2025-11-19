@interface MTLToolsDevice
+ (id)newTextureDescriptorFromIOSurface:(__IOSurface *)a3;
+ (id)newTextureDescriptorFromIOSurfaceProperties:(id)a3;
+ (id)newUnwrappedMTLRelocations:(id)a3;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapAccelerationStructureSizeAndAlignWithDescriptor:(id)a3;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapAccelerationStructureSizeAndAlignWithSize:(unint64_t)a3;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapBufferSizeAndAlignWithLength:(unint64_t)a3 options:(unint64_t)a4;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapTextureSizeAndAlignWithDescriptor:(id)a3;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)tensorSizeAndAlignWithDescriptor:(id)a3;
- ($85CD2974BE96D4886BB301820D1C36C2)libraryCacheStats;
- ($85CD2974BE96D4886BB301820D1C36C2)pipelineCacheStats;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)accelerationStructureSizesWithDescriptor:(SEL)a3;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)maxThreadsPerThreadgroup;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)sparseTileSizeWithTextureType:(SEL)a3 pixelFormat:(unint64_t)a4 sampleCount:(unint64_t)a5;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)sparseTileSizeWithTextureType:(SEL)a3 pixelFormat:(unint64_t)a4 sampleCount:(unint64_t)a5 sparsePageSize:(unint64_t)a6;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)tileSizeWithSparsePageSize:(SEL)a3 textureType:(int64_t)a4 pixelFormat:(unint64_t)a5 sampleCount:(unint64_t)a6;
- (BOOL)areBarycentricCoordsSupported;
- (BOOL)areGPUAssertionsEnabled;
- (BOOL)areProgrammableSamplePositionsSupported;
- (BOOL)areRasterOrderGroupsSupported;
- (BOOL)areWritableHeapsEnabled;
- (BOOL)copyShaderCacheToPath:(id)a3;
- (BOOL)deviceOrFeatureProfileSupportsFeatureSet:(unint64_t)a3;
- (BOOL)deviceSupportsFeatureSet:(unint64_t)a3;
- (BOOL)hasUnifiedMemory;
- (BOOL)isAnisoSampleFixSupported;
- (BOOL)isBCTextureCompressionSupported;
- (BOOL)isClampToHalfBorderSupported;
- (BOOL)isCompatibleWithAccelerationStructure:(id)a3;
- (BOOL)isCustomBorderColorSupported;
- (BOOL)isDepth24Stencil8PixelFormatSupported;
- (BOOL)isFixedLinePointFillDepthGradientSupported;
- (BOOL)isFloat32FilteringSupported;
- (BOOL)isHeadless;
- (BOOL)isLargeMRTSupported;
- (BOOL)isLowPower;
- (BOOL)isMsaa32bSupported;
- (BOOL)isPlacementHeapSupported;
- (BOOL)isQuadDataSharingSupported;
- (BOOL)isRGB10A2GammaSupported;
- (BOOL)isRTZRoundingSupported;
- (BOOL)isRemovable;
- (BOOL)mapShaderSampleBufferWithBuffer:(id *)a3 capacity:(unint64_t)a4 size:(unint64_t)a5;
- (BOOL)metalAssertionsEnabled;
- (BOOL)requiresBFloat16Emulation;
- (BOOL)requiresLegacyCompilerProcessesCount;
- (BOOL)requiresRaytracingEmulation;
- (BOOL)reserveGPUAddressRange:(_NSRange)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)shaderDebugInfoCaching;
- (BOOL)supportPriorityBand;
- (BOOL)supports2DLinearTexArraySPI;
- (BOOL)supports32BitFloatFiltering;
- (BOOL)supports32BitMSAA;
- (BOOL)supports32bpcMSAATextures;
- (BOOL)supports3DASTCTextures;
- (BOOL)supports3DBCTextures;
- (BOOL)supportsAIRNTBinaryArchiveFunctionPointers;
- (BOOL)supportsAIRNTBinaryArchiveSpecializedFunctions;
- (BOOL)supportsAIRNTBinaryArchiveStitchedFunctions;
- (BOOL)supportsASTCHDRTextureCompression;
- (BOOL)supportsASTCTextureCompression;
- (BOOL)supportsAlphaYUVFormats;
- (BOOL)supportsAnisoSampleFix;
- (BOOL)supportsArgumentBuffers;
- (BOOL)supportsArgumentBuffersTier2;
- (BOOL)supportsArrayOfSamplers;
- (BOOL)supportsArrayOfTextures;
- (BOOL)supportsAtomicFloat;
- (BOOL)supportsAtomicUlongVoidMinMax;
- (BOOL)supportsAtomicWaitNotify;
- (BOOL)supportsBCTextureCompression;
- (BOOL)supportsBGR10A2;
- (BOOL)supportsBaseVertexInstanceDrawing;
- (BOOL)supportsBfloat16Buffers;
- (BOOL)supportsBfloat16Format;
- (BOOL)supportsBinaryArchives;
- (BOOL)supportsBinaryLibraries;
- (BOOL)supportsBlackOrWhiteSamplerBorderColors;
- (BOOL)supportsBufferBoundsChecking;
- (BOOL)supportsBufferPrefetchStatistics;
- (BOOL)supportsBufferWithAddressRanges;
- (BOOL)supportsBufferWithIOSurface;
- (BOOL)supportsBufferlessClientStorageTexture;
- (BOOL)supportsCMPIndirectCommandBuffers;
- (BOOL)supportsColorSpaceConversionMatrixSelection;
- (BOOL)supportsCombinedMSAAStoreAndResolveAction;
- (BOOL)supportsCommandBufferJump;
- (BOOL)supportsCommandQueueBarriers;
- (BOOL)supportsCompressedTextureViewSPI;
- (BOOL)supportsComputeCompressedTextureWrite;
- (BOOL)supportsComputeMemoryBarrier;
- (BOOL)supportsConcurrentComputeDispatch;
- (BOOL)supportsConditionalLoadStore;
- (BOOL)supportsConditionalTileDispatch;
- (BOOL)supportsCounterSampling:(unint64_t)a3;
- (BOOL)supportsCountingOcclusionQuery;
- (BOOL)supportsCustomBorderColor;
- (BOOL)supportsDeadlineProfile;
- (BOOL)supportsDepthBoundsTesting;
- (BOOL)supportsDepthClipMode;
- (BOOL)supportsDepthClipModeClampExtended;
- (BOOL)supportsDeviceCoherency;
- (BOOL)supportsDevicePartitioning;
- (BOOL)supportsDynamicAttributeStride;
- (BOOL)supportsDynamicControlPointCount;
- (BOOL)supportsDynamicLibraries;
- (BOOL)supportsExplicitVisibilityGroups;
- (BOOL)supportsExtendedIndirectRenderCommand;
- (BOOL)supportsExtendedSamplerLODBiasRange;
- (BOOL)supportsExtendedVertexFormats;
- (BOOL)supportsExtendedXR10Formats;
- (BOOL)supportsExtendedYUVFormats;
- (BOOL)supportsFP32TessFactors;
- (BOOL)supportsFP8;
- (BOOL)supportsFamily:(int64_t)a3;
- (BOOL)supportsFastMathInfNaNPropagation;
- (BOOL)supportsFeatureSet:(unint64_t)a3;
- (BOOL)supportsFillTexture;
- (BOOL)supportsFixedLinePointFillDepthGradient;
- (BOOL)supportsFloat16BCubicFiltering;
- (BOOL)supportsFloat16InfNanFiltering;
- (BOOL)supportsForceSeamsOnCubemaps;
- (BOOL)supportsForkJoin;
- (BOOL)supportsFragmentBufferWrites;
- (BOOL)supportsFragmentOnlyEncoders;
- (BOOL)supportsFunctionPointers;
- (BOOL)supportsFunctionPointersFromMesh;
- (BOOL)supportsFunctionPointersFromRender;
- (BOOL)supportsGFXIndirectCommandBuffers;
- (BOOL)supportsGPUStatistics;
- (BOOL)supportsGlobalVariableBindingInDylibs;
- (BOOL)supportsGlobalVariableBindings;
- (BOOL)supportsGlobalVariableRelocation;
- (BOOL)supportsGlobalVariableRelocationCompute;
- (BOOL)supportsGlobalVariableRelocationRender;
- (BOOL)supportsHeapAccelerationStructureAllocation;
- (BOOL)supportsHeapWithAddressRanges;
- (BOOL)supportsIABHashForTools;
- (BOOL)supportsImageBlockSampleCoverageControl;
- (BOOL)supportsImageBlocks;
- (BOOL)supportsIndirectDrawAndDispatch;
- (BOOL)supportsIndirectStageInRegion;
- (BOOL)supportsIndirectTessellation;
- (BOOL)supportsIndirectTextures;
- (BOOL)supportsIndirectWritableTextures;
- (BOOL)supportsInt64;
- (BOOL)supportsInterchangeTiled;
- (BOOL)supportsIntersectionFunctionBuffers;
- (BOOL)supportsInvariantVertexPosition;
- (BOOL)supportsLargeFramebufferConfigs;
- (BOOL)supportsLateEvalEvent;
- (BOOL)supportsLayeredRendering;
- (BOOL)supportsLimitedYUVFormats;
- (BOOL)supportsLinearTexture2DArray;
- (BOOL)supportsLinearTextureFromSharedBuffer;
- (BOOL)supportsLossyCompression;
- (BOOL)supportsMSAADepthResolve;
- (BOOL)supportsMSAADepthResolveFilter;
- (BOOL)supportsMSAAStencilResolve;
- (BOOL)supportsMSAAStencilResolveFilter;
- (BOOL)supportsMTL4CommandAllocator;
- (BOOL)supportsMTL4CommandQueue;
- (BOOL)supportsMTL4Compiler;
- (BOOL)supportsMTL4ComputeCommandEncoder;
- (BOOL)supportsMTL4Counters;
- (BOOL)supportsMTL4LateBoundRenderTargets;
- (BOOL)supportsMTL4PSOSpecialization;
- (BOOL)supportsMTL4PlacementSparse;
- (BOOL)supportsMTL4RenderCommandEncoder;
- (BOOL)supportsMTLTextureViewPools;
- (BOOL)supportsMXU;
- (BOOL)supportsMachineLearningCommandEncoders;
- (BOOL)supportsMemoryOrderAtomics;
- (BOOL)supportsMemorylessRenderTargets;
- (BOOL)supportsMeshRenderDynamicLibraries;
- (BOOL)supportsMeshShaders;
- (BOOL)supportsMeshShadersInICB;
- (BOOL)supportsMipLevelsSmallerThanBlockSize;
- (BOOL)supportsMirrorClampToEdgeSamplerMode;
- (BOOL)supportsMutableTier1ArgumentBuffers;
- (BOOL)supportsNativeHardwareFP16;
- (BOOL)supportsNonPrivateDepthStencilTextures;
- (BOOL)supportsNonPrivateMSAATextures;
- (BOOL)supportsNonSquareTileShaders;
- (BOOL)supportsNonUniformThreadgroupSize;
- (BOOL)supportsNonZeroTextureWriteLOD;
- (BOOL)supportsNorm16BCubicFiltering;
- (BOOL)supportsOpenCLTextureWriteSwizzles;
- (BOOL)supportsPacked32TextureBufferWrites;
- (BOOL)supportsPartialRenderMemoryBarrier;
- (BOOL)supportsPerPlaneCompression;
- (BOOL)supportsPerformanceStateAssertion;
- (BOOL)supportsPipelineLibraries;
- (BOOL)supportsPlacementHeaps;
- (BOOL)supportsPostDepthCoverage;
- (BOOL)supportsPrimitiveMotionBlur;
- (BOOL)supportsPrimitiveRestartOverride;
- (BOOL)supportsPrimitiveType:(unint64_t)a3;
- (BOOL)supportsProgrammableBlending;
- (BOOL)supportsProgrammableSamplePositions;
- (BOOL)supportsPublicXR10Formats;
- (BOOL)supportsPullModelInterpolation;
- (BOOL)supportsQuadGroup;
- (BOOL)supportsQuadReduction;
- (BOOL)supportsQuadShufflesAndBroadcast;
- (BOOL)supportsQueryTextureLOD;
- (BOOL)supportsRGBA10A2Gamma;
- (BOOL)supportsRTZRounding;
- (BOOL)supportsRasterOrderGroups;
- (BOOL)supportsRasterOrderGroupsColorAttachment;
- (BOOL)supportsRasterizationRateMapWithLayerCount:(unint64_t)a3;
- (BOOL)supportsRayTracingAccelerationStructureCPUDeserialization;
- (BOOL)supportsRayTracingBuffersFromTables;
- (BOOL)supportsRayTracingCurves;
- (BOOL)supportsRayTracingDirectIntersectionResultAccess;
- (BOOL)supportsRayTracingExtendedVertexFormats;
- (BOOL)supportsRayTracingGPUTableUpdateBuffers;
- (BOOL)supportsRayTracingICBs;
- (BOOL)supportsRayTracingIndirectInstanceAccelerationStructureBuild;
- (BOOL)supportsRayTracingMatrixLayout;
- (BOOL)supportsRayTracingMultiLevelInstancing;
- (BOOL)supportsRayTracingPerComponentMotionInterpolation;
- (BOOL)supportsRayTracingPerPrimitiveData;
- (BOOL)supportsRayTracingTraversalMetrics;
- (BOOL)supportsRaytracing;
- (BOOL)supportsRaytracingFromRender;
- (BOOL)supportsReadWriteBufferArguments;
- (BOOL)supportsReadWriteTextureArguments;
- (BOOL)supportsReadWriteTextureArgumentsTier2;
- (BOOL)supportsReadWriteTextureCubeArguments;
- (BOOL)supportsRelaxedTextureViewRequirements;
- (BOOL)supportsRenderDynamicLibraries;
- (BOOL)supportsRenderMemoryBarrier;
- (BOOL)supportsRenderPassWithoutRenderTarget;
- (BOOL)supportsRenderTargetTextureRotation;
- (BOOL)supportsRenderTextureWrites;
- (BOOL)supportsRenderToLinearTextures;
- (BOOL)supportsResourceDetachBacking;
- (BOOL)supportsResourceHeaps;
- (BOOL)supportsSIMDGroup;
- (BOOL)supportsSIMDGroupMatrix;
- (BOOL)supportsSIMDReduction;
- (BOOL)supportsSIMDShuffleAndFill;
- (BOOL)supportsSIMDShufflesAndBroadcast;
- (BOOL)supportsSRGBwrites;
- (BOOL)supportsSampleCount:(unint64_t)a3;
- (BOOL)supportsSamplerAddressModeClampToHalfBorder;
- (BOOL)supportsSamplerCompareFunction;
- (BOOL)supportsSamplerReductionMode;
- (BOOL)supportsSeparateDepthStencil;
- (BOOL)supportsSeparateVisibilityAndShadingRate;
- (BOOL)supportsSetThreadgroupPackingDisabled;
- (BOOL)supportsShaderBarycentricCoordinates;
- (BOOL)supportsShaderLODAverage;
- (BOOL)supportsShaderMinLODClamp;
- (BOOL)supportsSharedFunctionTables;
- (BOOL)supportsSharedStorageHeapResources;
- (BOOL)supportsSharedStorageTextures;
- (BOOL)supportsSharedTextureHandles;
- (BOOL)supportsSparseDepthAttachments;
- (BOOL)supportsSparseHeaps;
- (BOOL)supportsSparseTextures;
- (BOOL)supportsStackOverflowErrorCode;
- (BOOL)supportsStatefulDynamicLibraries;
- (BOOL)supportsStencilFeedback;
- (BOOL)supportsStreamingCodecSignaling;
- (BOOL)supportsTLS;
- (BOOL)supportsTensors;
- (BOOL)supportsTessellation;
- (BOOL)supportsTexture2DMultisampleArray;
- (BOOL)supportsTextureAccessPatterns;
- (BOOL)supportsTextureCubeArray;
- (BOOL)supportsTextureOutOfBoundsReads;
- (BOOL)supportsTextureSampleCount:(unint64_t)a3;
- (BOOL)supportsTextureSwizzle;
- (BOOL)supportsTextureWriteRoundingMode:(int64_t)a3;
- (BOOL)supportsTileShaders;
- (BOOL)supportsUnalignedVertexFetch;
- (BOOL)supportsVariableRateRasterization;
- (BOOL)supportsVertexAmplification;
- (BOOL)supportsVertexAmplificationCount:(unint64_t)a3;
- (BOOL)supportsViewportAndScissorArray;
- (BOOL)supportsVirtualSubstreams;
- (BOOL)supportsWritableArrayOfTextures;
- (BOOL)supportsYCBCRFormats;
- (BOOL)supportsYCBCRFormats12;
- (BOOL)supportsYCBCRFormatsPQ;
- (BOOL)supportsYCBCRFormatsXR;
- (BOOL)supportsYCBCRPackedFormats12;
- (BOOL)supportsYCBCRPackedFormatsPQ;
- (BOOL)supportsYCBCRPackedFormatsXR;
- (BOOL)validateDynamicLibraryDescriptor:(id)a3 error:(id *)a4;
- (BOOL)validateDynamicLibraryURL:(id)a3 error:(id *)a4;
- (IndirectArgumentBufferCapabilities)indirectArgumentBufferCapabilities;
- (MTLArchitecture)architecture;
- (MTLGPUBVHBuilder)GPUBVHBuilder;
- (MTLTargetDeviceArchitecture)targetDeviceArchitecture;
- (MTLToolsDevice)initWithBaseObject:(id)a3 parent:(id)a4;
- (NSArray)counterSets;
- (NSDictionary)pluginData;
- (NSString)name;
- (const)limits;
- (const)targetDeviceInfo;
- (float)maxLineWidth;
- (float)maxPointSize;
- (id)_deviceWrapper;
- (id)copyIOSurfaceSharedTextureProperties:(id)a3;
- (id)deserializeInstanceAccelerationStructureFromBytes:(void *)a3 primitiveAccelerationStructures:(id)a4 withDescriptor:(id)a5;
- (id)deserializePrimitiveAccelerationStructureFromBytes:(void *)a3 withDescriptor:(id)a4;
- (id)endCollectingPipelineDescriptors;
- (id)familyName;
- (id)functionHandleWithBinaryFunction:(id)a3;
- (id)functionHandleWithFunction:(id)a3;
- (id)functionHandleWithFunction:(id)a3 resourceIndex:(unint64_t)a4;
- (id)getDepthStencilStateForBaseObject:(id)a3 descriptor:(id)a4;
- (id)getDynamicLibraryForBaseObject:(id)a3;
- (id)getFunctionForBaseObject:(id)a3 library:(id)a4;
- (id)getMostCompatibleArchitecture:(id)a3;
- (id)getSamplerStateForBaseObject:(id)a3 descriptor:(id)a4;
- (id)loadDynamicLibrariesForComputeDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)loadDynamicLibrariesForFunction:(id)a3 insertLibraries:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (id)lookupRecompiledBinaryArchive:(id)a3;
- (id)mtlTensorFromGpuResourceID:(MTLResourceID)a3;
- (id)newAccelerationStructureWithBuffer:(id)a3 offset:(unint64_t)a4;
- (id)newAccelerationStructureWithBuffer:(id)a3 offset:(unint64_t)a4 resourceIndex:(unint64_t)a5;
- (id)newAccelerationStructureWithDescriptor:(id)a3;
- (id)newAccelerationStructureWithSize:(unint64_t)a3;
- (id)newAccelerationStructureWithSize:(unint64_t)a3 resourceIndex:(unint64_t)a4;
- (id)newAccelerationStructureWithSize:(unint64_t)a3 withDescriptor:(id)a4;
- (id)newArchiveWithURL:(id)a3 error:(id *)a4;
- (id)newArgumentEncoderWithArguments:(id)a3;
- (id)newArgumentEncoderWithArguments:(id)a3 structType:(id *)a4;
- (id)newArgumentEncoderWithBufferBinding:(id)a3;
- (id)newArgumentEncoderWithLayout:(id)a3;
- (id)newArgumentTableWithDescriptor:(id)a3 error:(id *)a4;
- (id)newBinaryArchiveWithDescriptor:(id)a3 error:(id *)a4;
- (id)newBinaryLibraryWithOptions:(unint64_t)a3 url:(id)a4 error:(id *)a5;
- (id)newBufferWithBytes:(const void *)a3 length:(unint64_t)a4 options:(unint64_t)a5;
- (id)newBufferWithBytes:(const void *)a3 length:(unint64_t)a4 options:(unint64_t)a5 gpuAddress:(unint64_t)a6;
- (id)newBufferWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 options:(unint64_t)a5 deallocator:(id)a6;
- (id)newBufferWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 options:(unint64_t)a5 gpuAddress:(unint64_t)a6 deallocator:(id)a7;
- (id)newBufferWithDescriptor:(id)a3;
- (id)newBufferWithIOSurface:(__IOSurface *)a3;
- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4;
- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4 gpuAddress:(unint64_t)a5;
- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4 placementSparsePageSize:(int64_t)a5;
- (id)newCommandAllocator;
- (id)newCommandAllocatorWithDescriptor:(id)a3 error:(id *)a4;
- (id)newCommandBuffer;
- (id)newCommandQueue;
- (id)newCommandQueueWithDescriptor:(id)a3;
- (id)newCommandQueueWithMaxCommandBufferCount:(unint64_t)a3;
- (id)newCompilerWithDescriptor:(id)a3 error:(id *)a4;
- (id)newComputePipelineDescriptorWithSerializedData:(id)a3 deserializationContext:(id)a4;
- (id)newComputePipelineStateWithDescriptor:(id)a3 error:(id *)a4;
- (id)newComputePipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (id)newComputePipelineStateWithFunction:(id)a3 error:(id *)a4;
- (id)newComputePipelineStateWithFunction:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (id)newComputePipelineStateWithImageFilterFunctionsSPI:(id)a3 imageFilterFunctionInfo:(id *)a4 error:(id *)a5;
- (id)newCounterHeapWithDescriptor:(id)a3 error:(id *)a4;
- (id)newCounterSampleBufferWithDescriptor:(id)a3 error:(id *)a4;
- (id)newDagStringWithGraphs:(id)a3;
- (id)newDefaultLibrary;
- (id)newDefaultLibraryWithBundle:(id)a3 error:(id *)a4;
- (id)newDepthStencilStateWithDescriptor:(id)a3;
- (id)newDynamicLibrary:(id)a3 computeDescriptor:(id)a4 error:(id *)a5;
- (id)newDynamicLibrary:(id)a3 error:(id *)a4;
- (id)newDynamicLibraryWithDescriptor:(id)a3 error:(id *)a4;
- (id)newDynamicLibraryWithURL:(id)a3 error:(id *)a4;
- (id)newDynamicLibraryWithURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)newEvent;
- (id)newEventWithOptions:(int64_t)a3;
- (id)newFence;
- (id)newFunctionWithGLCoreIR:(void *)a3 functionType:(unint64_t)a4;
- (id)newFunctionWithGLCoreIR:(void *)a3 inputsDescription:(id)a4 functionType:(unint64_t)a5;
- (id)newFunctionWithGLESIR:(void *)a3 functionType:(unint64_t)a4;
- (id)newFunctionWithGLESIR:(void *)a3 inputsDescription:(id)a4 functionType:(unint64_t)a5;
- (id)newFunctionWithGLIR:(void *)a3 functionType:(unint64_t)a4;
- (id)newFunctionWithGLIR:(void *)a3 inputsDescription:(id)a4 functionType:(unint64_t)a5;
- (id)newHeapWithDescriptor:(id)a3;
- (id)newIOCommandQueueWithDescriptor:(id)a3 error:(id *)a4;
- (id)newIOHandleWithURL:(id)a3 compressionType:(int64_t)a4 error:(id *)a5;
- (id)newIOHandleWithURL:(id)a3 error:(id *)a4;
- (id)newIndirectArgumentBufferLayoutWithStructType:(id)a3;
- (id)newIndirectArgumentEncoderWithLayout:(id)a3;
- (id)newIndirectCommandBufferWithDescriptor:(id)a3 maxCommandCount:(unint64_t)a4 options:(unint64_t)a5;
- (id)newIndirectCommandBufferWithDescriptor:(id)a3 maxCount:(unint64_t)a4 options:(unint64_t)a5;
- (id)newIndirectComputeCommandEncoderWithBuffer:(id)a3;
- (id)newIndirectRenderCommandEncoderWithBuffer:(id)a3;
- (id)newIntersectionFunctionTableWithDescriptor:(id)a3;
- (id)newLateEvalEvent;
- (id)newLibraryWithCIFilters:(id)a3 imageFilterFunctionInfo:(id *)a4 error:(id *)a5;
- (id)newLibraryWithDAG:(id)a3 functions:(id)a4 error:(id *)a5;
- (id)newLibraryWithData:(id)a3 error:(id *)a4;
- (id)newLibraryWithFile:(id)a3 error:(id *)a4;
- (id)newLibraryWithMPSGraphPackageURL:(id)a3 name:(id)a4 error:(id *)a5;
- (id)newLibraryWithSource:(id)a3 options:(id)a4 error:(id *)a5;
- (id)newLibraryWithStitchedDescriptor:(id)a3 error:(id *)a4;
- (id)newLibraryWithStitchedDescriptorSPI:(id)a3 error:(id *)a4;
- (id)newLibraryWithURL:(id)a3 error:(id *)a4;
- (id)newLogStateWithDescriptor:(id)a3 error:(id *)a4;
- (id)newMTL4CommandQueue;
- (id)newMTL4CommandQueueWithDescriptor:(id)a3 error:(id *)a4;
- (id)newPerformanceStateAssertion:(int64_t)a3 error:(id *)a4;
- (id)newPipelineDataSetSerializerWithDescriptor:(id)a3;
- (id)newPipelineLibraryWithFilePath:(id)a3 error:(id *)a4;
- (id)newProfileWithExecutionSize:(unint64_t)a3;
- (id)newRasterizationRateMapWithDescriptor:(id)a3;
- (id)newRenderPipelineDescriptorWithSerializedData:(id)a3 deserializationContext:(id)a4;
- (id)newRenderPipelineStateWithDescriptor:(id)a3 error:(id *)a4;
- (id)newRenderPipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (id)newRenderPipelineStateWithMeshDescriptor:(id)a3 error:(id *)a4;
- (id)newRenderPipelineStateWithMeshDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (id)newRenderPipelineStateWithTileDescriptor:(id)a3 error:(id *)a4;
- (id)newRenderPipelineStateWithTileDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (id)newResidencySetWithDescriptor:(id)a3 error:(id *)a4;
- (id)newResourceGroupFromResources:(const void *)a3 count:(unint64_t)a4;
- (id)newSamplerStateWithDescriptor:(id)a3;
- (id)newSharedEvent;
- (id)newSharedEventWithHandle:(id)a3;
- (id)newSharedEventWithOptions:(int64_t)a3;
- (id)newSharedTextureWithDescriptor:(id)a3;
- (id)newSharedTextureWithHandle:(id)a3;
- (id)newSharedTextureWithHandle:(id)a3 withResourceIndex:(unint64_t)a4;
- (id)newStructTypeWithSerializedData:(id)a3;
- (id)newTensorWithDescriptor:(id)a3 error:(id *)a4;
- (id)newTextureViewPoolWithDescriptor:(id)a3 error:(id *)a4;
- (id)newTextureWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 descriptor:(id)a5 deallocator:(id)a6;
- (id)newTextureWithDescriptor:(id)a3;
- (id)newTextureWithDescriptor:(id)a3 iosurface:(__IOSurface *)a4 plane:(unint64_t)a5;
- (id)newTextureWithDescriptor:(id)a3 iosurface:(__IOSurface *)a4 plane:(unint64_t)a5 slice:(unint64_t)a6;
- (id)newUncachedIOHandleWithURL:(id)a3 compressionType:(int64_t)a4 error:(id *)a5;
- (id)newUncachedIOHandleWithURL:(id)a3 error:(id *)a4;
- (id)newUnwrappedMTL4BinaryFunctionDescriptor:(id)a3;
- (id)newUnwrappedMTL4CompilerDescriptor:(id)a3;
- (id)newUnwrappedMTL4CompilerTaskOptions:(id)a3;
- (id)newUnwrappedMTL4FunctionDescriptor:(id)a3;
- (id)newUnwrappedMTL4PipelineDescriptor:(id)a3;
- (id)newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:(id)a3;
- (id)newUnwrappedMTL4RenderPipelineBinaryFunctionsDescriptor:(id)a3;
- (id)newUnwrappedMTL4RenderPipelineDynamicLinkingDescriptor:(id)a3;
- (id)newUnwrappedStaticLinkingDescriptor:(id)a3;
- (id)newVisibleFunctionTableWithDescriptor:(id)a3;
- (id)productName;
- (id)serializeRenderPipelineDescriptor:(id)a3;
- (id)serializeStructType:(id)a3;
- (id)unwrapMTLCommandBufferDescriptor:(id)a3 alwaysCopy:(BOOL)a4;
- (id)unwrapMTLCompileOptions:(id)a3;
- (id)unwrapMTLComputePipelineDescriptor:(id)a3;
- (id)unwrapMTLDynamicLibraryDescriptorSPI:(id)a3;
- (id)unwrapMTLFunctionDescriptor:(id)a3;
- (id)unwrapMTLMeshRenderPipelineDescriptor:(id)a3;
- (id)unwrapMTLRenderPipelineDescriptor:(id)a3;
- (id)unwrapMTLStitchedLibraryDescriptor:(id)a3;
- (id)unwrapMTLTileRenderPipelineDescriptor:(id)a3;
- (id)vendorName;
- (int)llvmVersion;
- (int64_t)currentPerformanceState;
- (int64_t)defaultTextureWriteRoundingMode;
- (unint64_t)argumentBuffersSupport;
- (unint64_t)bufferRobustnessSupport;
- (unint64_t)commandBufferErrorOptions;
- (unint64_t)commandQueueLimit;
- (unint64_t)currentAllocatedSize;
- (unint64_t)currentCommandQueueCount;
- (unint64_t)debugPipelineOptions:(unint64_t)a3 includePipelinePerfStats:(BOOL)a4;
- (unint64_t)dedicatedMemorySize;
- (unint64_t)deviceCreationFlags;
- (unint64_t)deviceLinearReadOnlyTextureAlignmentBytes;
- (unint64_t)deviceLinearTextureAlignmentBytes;
- (unint64_t)doubleFPConfig;
- (unint64_t)featureProfile;
- (unint64_t)getSupportedCommandBufferErrorOptions;
- (unint64_t)halfFPConfig;
- (unint64_t)iosurfaceReadOnlyTextureAlignmentBytes;
- (unint64_t)iosurfaceTextureAlignmentBytes;
- (unint64_t)latestSupportedGenericBVHVersion;
- (unint64_t)linearTextureAlignmentBytes;
- (unint64_t)linearTextureArrayAlignmentBytes;
- (unint64_t)linearTextureArrayAlignmentSlice;
- (unint64_t)maxAccelerationStructureLevels;
- (unint64_t)maxAccelerationStructureTraversalDepth;
- (unint64_t)maxArgumentBufferSamplerCount;
- (unint64_t)maxBufferLength;
- (unint64_t)maxColorAttachments;
- (unint64_t)maxComputeAttributes;
- (unint64_t)maxComputeBuffers;
- (unint64_t)maxComputeInlineDataSize;
- (unint64_t)maxComputeLocalMemorySizes;
- (unint64_t)maxComputeSamplers;
- (unint64_t)maxComputeTextures;
- (unint64_t)maxComputeThreadgroupMemory;
- (unint64_t)maxComputeThreadgroupMemoryAlignmentBytes;
- (unint64_t)maxConstantBufferArguments;
- (unint64_t)maxCustomSamplePositions;
- (unint64_t)maxFenceInstances;
- (unint64_t)maxFragmentBuffers;
- (unint64_t)maxFragmentInlineDataSize;
- (unint64_t)maxFragmentSamplers;
- (unint64_t)maxFragmentTextures;
- (unint64_t)maxFramebufferStorageBits;
- (unint64_t)maxFunctionConstantIndices;
- (unint64_t)maxIOCommandsInFlight;
- (unint64_t)maxIndirectBuffers;
- (unint64_t)maxIndirectSamplers;
- (unint64_t)maxIndirectSamplersPerDevice;
- (unint64_t)maxIndirectTextures;
- (unint64_t)maxInterpolants;
- (unint64_t)maxInterpolatedComponents;
- (unint64_t)maxPredicatedNestingDepth;
- (unint64_t)maxRasterizationRateLayerCount;
- (unint64_t)maxTessellationFactor;
- (unint64_t)maxTextureBufferWidth;
- (unint64_t)maxTextureDepth3D;
- (unint64_t)maxTextureDimensionCube;
- (unint64_t)maxTextureHeight2D;
- (unint64_t)maxTextureHeight3D;
- (unint64_t)maxTextureLayers;
- (unint64_t)maxTextureWidth1D;
- (unint64_t)maxTextureWidth2D;
- (unint64_t)maxTextureWidth3D;
- (unint64_t)maxThreadgroupMemoryLength;
- (unint64_t)maxTileBuffers;
- (unint64_t)maxTileInlineDataSize;
- (unint64_t)maxTileSamplers;
- (unint64_t)maxTileTextures;
- (unint64_t)maxTotalComputeThreadsPerThreadgroup;
- (unint64_t)maxVertexAmplificationCount;
- (unint64_t)maxVertexAmplificationFactor;
- (unint64_t)maxVertexAttributes;
- (unint64_t)maxVertexBuffers;
- (unint64_t)maxVertexInlineDataSize;
- (unint64_t)maxVertexSamplers;
- (unint64_t)maxVertexTextures;
- (unint64_t)maxViewportCount;
- (unint64_t)maxVisibilityQueryOffset;
- (unint64_t)maximumConcurrentCompilationTaskCount;
- (unint64_t)minBufferNoCopyAlignmentBytes;
- (unint64_t)minConstantBufferAlignmentBytes;
- (unint64_t)minLinearTextureAlignmentForPixelFormat:(unint64_t)a3;
- (unint64_t)minTilePixels;
- (unint64_t)minimumLinearTextureAlignmentForPixelFormat:(unint64_t)a3;
- (unint64_t)minimumTextureBufferAlignmentForPixelFormat:(unint64_t)a3;
- (unint64_t)queryTimestampFrequency;
- (unint64_t)readWriteTextureSupport;
- (unint64_t)recommendedMaxWorkingSetSize;
- (unint64_t)registryID;
- (unint64_t)resourcePatchingTypeForResourceType:(unint64_t)a3;
- (unint64_t)samplerReductionModeSupport;
- (unint64_t)sharedMemorySize;
- (unint64_t)singleFPConfig;
- (unint64_t)sizeOfCounterHeapEntry:(int64_t)a3;
- (unint64_t)sparseTexturesSupport;
- (unint64_t)sparseTileSizeInBytes;
- (unint64_t)sparseTileSizeInBytesForSparsePageSize:(int64_t)a3;
- (unsigned)acceleratorPort;
- (unsigned)maximumComputeSubstreams;
- (void)allowLibrariesFromOtherPlatforms;
- (void)convertSparsePixelRegions:(id *)a3 toTileRegions:(id *)a4 withTileSize:(id *)a5 alignmentMode:(unint64_t)a6 numRegions:(unint64_t)a7;
- (void)convertSparseTileRegions:(id *)a3 toPixelRegions:(id *)a4 withTileSize:(id *)a5 numRegions:(unint64_t)a6;
- (void)dealloc;
- (void)deserializeInstanceAccelerationStructure:(id)a3 fromBytes:(const void *)a4 primitiveAccelerationStructures:(id)a5 withDescriptor:(id)a6;
- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBytes:(const void *)a4 withDescriptor:(id)a5;
- (void)getDefaultSamplePositions:(id *)a3 count:(unint64_t)a4;
- (void)getShaderCacheKeys;
- (void)newComputePipelineStateWithDescriptor:(id)a3 completionHandler:(id)a4;
- (void)newComputePipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)newComputePipelineStateWithFunction:(id)a3 completionHandler:(id)a4;
- (void)newComputePipelineStateWithFunction:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)newLibraryWithSource:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)newLibraryWithStitchedDescriptor:(id)a3 completionHandler:(id)a4;
- (void)newRenderPipelineStateWithDescriptor:(id)a3 completionHandler:(id)a4;
- (void)newRenderPipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)newRenderPipelineStateWithMeshDescriptor:(id)a3 completionHandler:(id)a4;
- (void)newRenderPipelineStateWithMeshDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)newRenderPipelineStateWithTileDescriptor:(id)a3 completionHandler:(id)a4;
- (void)newRenderPipelineStateWithTileDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)reserveResourceIndicesForResourceType:(unint64_t)a3 indices:(unint64_t *)a4 indexCount:(unint64_t)a5;
- (void)sampleTimestamps:(unint64_t *)a3 gpuTimestamp:(unint64_t *)a4;
- (void)setCommandBufferErrorOptions:(unint64_t)a3;
- (void)setPluginData:(id)a3;
- (void)setupMPSFunctionTable:(MPSFunctionTable *)a3;
- (void)startCollectingPipelineDescriptors;
- (void)unloadShaderCaches;
- (void)unmapShaderSampleBuffer;
@end

@implementation MTLToolsDevice

- (MTLToolsDevice)initWithBaseObject:(id)a3 parent:(id)a4
{
  v7.receiver = self;
  v7.super_class = MTLToolsDevice;
  v4 = [(MTLToolsObject *)&v7 initWithBaseObject:a3 parent:a4];
  v5 = v4;
  if (v4)
  {
    [-[MTLToolsObject baseObject](v4 "baseObject")];
    v5->super._device = v5;
    v5->functionHandleObjectCache = objc_alloc_init(MTLToolsObjectCache);
    v5->dynamicLibraryObjectCache = objc_alloc_init(MTLToolsObjectCache);
    v5->sourceLibraryObjectCache = objc_alloc_init(MTLToolsObjectCache);
    v5->functionObjectCache = objc_alloc_init(MTLToolsObjectCache);
    v5->depthStencilObjectCache = objc_alloc_init(MTLToolsObjectCache);
    v5->samplerObjectCache = objc_alloc_init(MTLToolsObjectCache);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLToolsDevice;
  [(MTLToolsObject *)&v3 dealloc];
}

- (id)newFunctionWithGLCoreIR:(void *)a3 functionType:(unint64_t)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [(MTLToolsObject *)[MTLToolsFunction alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)newFunctionWithGLCoreIR:(void *)a3 inputsDescription:(id)a4 functionType:(unint64_t)a5
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v7 = result;
    v8 = [(MTLToolsObject *)[MTLToolsFunction alloc] initWithBaseObject:result parent:self];

    return v8;
  }

  return result;
}

- (id)newFunctionWithGLESIR:(void *)a3 functionType:(unint64_t)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [(MTLToolsObject *)[MTLToolsFunction alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)newLogStateWithDescriptor:(id)a3 error:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 newLogStateWithDescriptor:a3 error:a4];
}

- (id)newFunctionWithGLESIR:(void *)a3 inputsDescription:(id)a4 functionType:(unint64_t)a5
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v7 = result;
    v8 = [(MTLToolsObject *)[MTLToolsFunction alloc] initWithBaseObject:result parent:self];

    return v8;
  }

  return result;
}

- (id)newFunctionWithGLIR:(void *)a3 functionType:(unint64_t)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [(MTLToolsObject *)[MTLToolsFunction alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)newFunctionWithGLIR:(void *)a3 inputsDescription:(id)a4 functionType:(unint64_t)a5
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v7 = result;
    v8 = [(MTLToolsObject *)[MTLToolsFunction alloc] initWithBaseObject:result parent:self];

    return v8;
  }

  return result;
}

- (BOOL)shaderDebugInfoCaching
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 shaderDebugInfoCaching];
}

- (BOOL)mapShaderSampleBufferWithBuffer:(id *)a3 capacity:(unint64_t)a4 size:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  return [v8 mapShaderSampleBufferWithBuffer:a3 capacity:a4 size:a5];
}

- (void)unmapShaderSampleBuffer
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 unmapShaderSampleBuffer];
}

- (BOOL)supportsRaytracing
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRaytracing];
}

- (BOOL)requiresRaytracingEmulation
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 requiresRaytracingEmulation];
}

- (MTLGPUBVHBuilder)GPUBVHBuilder
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 GPUBVHBuilder];
}

- (unint64_t)latestSupportedGenericBVHVersion
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 latestSupportedGenericBVHVersion];
}

- (NSString)name
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 name];
}

- (unint64_t)registryID
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 registryID];
}

- (MTLArchitecture)architecture
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 architecture];
}

- (id)getMostCompatibleArchitecture:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 getMostCompatibleArchitecture:a3];
}

- (id)vendorName
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 vendorName];
}

- (id)familyName
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 familyName];
}

- (id)productName
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 productName];
}

- (const)targetDeviceInfo
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 targetDeviceInfo];
}

- (MTLTargetDeviceArchitecture)targetDeviceArchitecture
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 targetDeviceArchitecture];
}

- (id)loadDynamicLibrariesForComputeDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_new();
    v9 = objc_autoreleasePoolPush();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v7);
          }

          [v8 addObject:{-[MTLToolsDevice getDynamicLibraryForBaseObject:](self, "getDynamicLibraryForBaseObject:", *(*(&v16 + 1) + 8 * v13++))}];
        }

        while (v11 != v13);
        v11 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)loadDynamicLibrariesForFunction:(id)a3 insertLibraries:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a4, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = [a4 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      v15 = 0;
      do
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(a4);
        }

        [v11 addObject:{objc_msgSend(*(*(&v29 + 1) + 8 * v15++), "baseObject")}];
      }

      while (v13 != v15);
      v13 = [a4 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v13);
  }

  v16 = [-[MTLToolsObject baseObject](self "baseObject")];

  if (v16)
  {
    v17 = objc_opt_new();
    v18 = objc_autoreleasePoolPush();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        v22 = 0;
        do
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v16);
          }

          [v17 addObject:{-[MTLToolsDevice getDynamicLibraryForBaseObject:](self, "getDynamicLibraryForBaseObject:", *(*(&v25 + 1) + 8 * v22++))}];
        }

        while (v20 != v22);
        v20 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v20);
    }

    objc_autoreleasePoolPop(v18);
  }

  else
  {
    v17 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)unwrapMTLDynamicLibraryDescriptorSPI:(id)a3
{
  v4 = [a3 copy];
  [v4 setLibrary:{objc_msgSend(objc_msgSend(a3, "library"), "baseObject")}];
  return v4;
}

- (BOOL)validateDynamicLibraryURL:(id)a3 error:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 validateDynamicLibraryURL:a3 error:a4];
}

- (BOOL)areGPUAssertionsEnabled
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 areGPUAssertionsEnabled];
}

- (BOOL)areWritableHeapsEnabled
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 areWritableHeapsEnabled];
}

- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4 gpuAddress:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  return [v8 newBufferWithLength:a3 options:a4 gpuAddress:a5];
}

- (id)newBufferWithBytes:(const void *)a3 length:(unint64_t)a4 options:(unint64_t)a5 gpuAddress:(unint64_t)a6
{
  v10 = [(MTLToolsObject *)self baseObject];

  return [v10 newBufferWithBytes:a3 length:a4 options:a5 gpuAddress:a6];
}

- (id)newBufferWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 options:(unint64_t)a5 gpuAddress:(unint64_t)a6 deallocator:(id)a7
{
  v12 = [(MTLToolsObject *)self baseObject];

  return [v12 newBufferWithBytesNoCopy:a3 length:a4 options:a5 gpuAddress:a6 deallocator:a7];
}

- (BOOL)reserveGPUAddressRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(MTLToolsObject *)self baseObject];

  return [v5 reserveGPUAddressRange:{location, length}];
}

- (id)newBufferWithDescriptor:(id)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [(MTLToolsResource *)[MTLToolsBuffer alloc] initWithBaseObject:result parent:self];

    return v6;
  }

  return result;
}

+ (id)newTextureDescriptorFromIOSurfaceProperties:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = objc_alloc_init(MEMORY[0x277CD7058]);
  [v4 setTextureType:{objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", *MEMORY[0x277CD7148]), "unsignedIntegerValue")}];
  [v4 setPixelFormat:objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", *MEMORY[0x277CD7120]), "unsignedIntegerValue")];
  [v4 setWidth:{objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", *MEMORY[0x277CD7158]), "unsignedIntegerValue")}];
  [v4 setHeight:{objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", *MEMORY[0x277CD7110]), "unsignedIntegerValue")}];
  [v4 setDepth:{objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", *MEMORY[0x277CD7100]), "unsignedIntegerValue")}];
  [v4 setMipmapLevelCount:{objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", *MEMORY[0x277CD7118]), "unsignedIntegerValue")}];
  [v4 setSampleCount:{objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", *MEMORY[0x277CD7130]), "unsignedIntegerValue")}];
  [v4 setArrayLength:{objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", *MEMORY[0x277CD70F8]), "unsignedIntegerValue")}];
  [v4 setResourceOptions:{objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", *MEMORY[0x277CD7128]), "unsignedIntegerValue")}];
  [v4 setUsage:{objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", *MEMORY[0x277CD7150]), "unsignedIntegerValue")}];
  [v4 setSparseSurfaceDefaultValue:{objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", *MEMORY[0x277CD7138]), "unsignedIntegerValue")}];
  [v4 setAllowGPUOptimizedContents:{objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", *MEMORY[0x277CD7108]), "BOOLValue")}];
  [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x277CD7140]), "unsignedIntegerValue"}];
  [v4 setSwizzle:MTLTextureSwizzleKeyToChannels()];
  [v4 setWriteAccessPattern:{objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", *MEMORY[0x277CD7160]), "integerValue")}];
  return v4;
}

+ (id)newTextureDescriptorFromIOSurface:(__IOSurface *)a3
{
  v4 = IOSurfaceCopyValue(a3, *MEMORY[0x277CD29D0]);
  v5 = [a1 newTextureDescriptorFromIOSurfaceProperties:v4];

  return v5;
}

- (id)newSharedTextureWithDescriptor:(id)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [(MTLToolsResource *)[MTLToolsTexture alloc] initWithBaseObject:result parent:self];

    return v6;
  }

  return result;
}

- (id)newSharedTextureWithHandle:(id)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [(MTLToolsResource *)[MTLToolsTexture alloc] initWithBaseObject:result parent:self];

    return v6;
  }

  return result;
}

- (id)newSharedTextureWithHandle:(id)a3 withResourceIndex:(unint64_t)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [(MTLToolsResource *)[MTLToolsTexture alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)copyIOSurfaceSharedTextureProperties:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 copyIOSurfaceSharedTextureProperties:a3];
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)maxThreadsPerThreadgroup
{
  result = [(MTLToolsObject *)self baseObject];
  if (result)
  {

    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result maxThreadsPerThreadgroup];
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (BOOL)isLowPower
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isLowPower];
}

- (BOOL)isHeadless
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isHeadless];
}

- (BOOL)isRemovable
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isRemovable];
}

- (BOOL)hasUnifiedMemory
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 hasUnifiedMemory];
}

- (unint64_t)recommendedMaxWorkingSetSize
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 recommendedMaxWorkingSetSize];
}

- (unint64_t)sharedMemorySize
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 sharedMemorySize];
}

- (unint64_t)dedicatedMemorySize
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 dedicatedMemorySize];
}

- (unint64_t)currentCommandQueueCount
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 currentCommandQueueCount];
}

- (unint64_t)commandQueueLimit
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 commandQueueLimit];
}

- (unint64_t)bufferRobustnessSupport
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 bufferRobustnessSupport];
}

- (BOOL)isDepth24Stencil8PixelFormatSupported
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isDepth24Stencil8PixelFormatSupported];
}

- (void)unloadShaderCaches
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 unloadShaderCaches];
}

- ($85CD2974BE96D4886BB301820D1C36C2)libraryCacheStats
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 libraryCacheStats];
}

- ($85CD2974BE96D4886BB301820D1C36C2)pipelineCacheStats
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 pipelineCacheStats];
}

- (BOOL)copyShaderCacheToPath:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 copyShaderCacheToPath:a3];
}

- (void)getShaderCacheKeys
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getShaderCacheKeys];
}

- (id)newCommandQueue
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v4 = result;
    v5 = [[MTLToolsCommandQueue alloc] initWithBaseObject:result parent:self];

    return v5;
  }

  return result;
}

- (id)newCommandQueueWithMaxCommandBufferCount:(unint64_t)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [[MTLToolsCommandQueue alloc] initWithBaseObject:result parent:self];

    return v6;
  }

  return result;
}

- (id)newCommandQueueWithDescriptor:(id)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [[MTLToolsCommandQueue alloc] initWithBaseObject:result parent:self];

    return v6;
  }

  return result;
}

- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [(MTLToolsResource *)[MTLToolsBuffer alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)newBufferWithBytes:(const void *)a3 length:(unint64_t)a4 options:(unint64_t)a5
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v7 = result;
    v8 = [(MTLToolsResource *)[MTLToolsBuffer alloc] initWithBaseObject:result parent:self];

    return v8;
  }

  return result;
}

- (id)newBufferWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 options:(unint64_t)a5 deallocator:(id)a6
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [(MTLToolsResource *)[MTLToolsBuffer alloc] initWithBaseObject:result parent:self];

    return v9;
  }

  return result;
}

- (id)newIndirectCommandBufferWithDescriptor:(id)a3 maxCount:(unint64_t)a4 options:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  return [v8 newIndirectCommandBufferWithDescriptor:a3 maxCount:a4 options:a5];
}

- (id)newIndirectRenderCommandEncoderWithBuffer:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 newIndirectRenderCommandEncoderWithBuffer:a3];
}

- (id)newIndirectComputeCommandEncoderWithBuffer:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 newIndirectComputeCommandEncoderWithBuffer:a3];
}

- (id)newIndirectCommandBufferWithDescriptor:(id)a3 maxCommandCount:(unint64_t)a4 options:(unint64_t)a5
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v7 = result;
    v8 = [(MTLToolsResource *)[MTLToolsIndirectCommandBuffer alloc] initWithBaseObject:result parent:self];

    return v8;
  }

  return result;
}

- (id)newTextureWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 descriptor:(id)a5 deallocator:(id)a6
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [(MTLToolsResource *)[MTLToolsTexture alloc] initWithBaseObject:result parent:self];

    return v9;
  }

  return result;
}

- (id)newDepthStencilStateWithDescriptor:(id)a3
{
  v5 = [(MTLToolsObject *)self->super._baseObject newDepthStencilStateWithDescriptor:?];
  v6 = [(MTLToolsDevice *)self getDepthStencilStateForBaseObject:v5 descriptor:a3];

  return v6;
}

- (id)newTextureWithDescriptor:(id)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [(MTLToolsResource *)[MTLToolsTexture alloc] initWithBaseObject:result parent:self];

    return v6;
  }

  return result;
}

- (id)newSamplerStateWithDescriptor:(id)a3
{
  v5 = [(MTLToolsObject *)self->super._baseObject newSamplerStateWithDescriptor:?];
  v6 = [(MTLToolsDevice *)self getSamplerStateForBaseObject:v5 descriptor:a3];

  return v6;
}

- (id)newDefaultLibrary
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v4 = result;
    v5 = [(MTLToolsObject *)[MTLToolsLibrary alloc] initWithBaseObject:result parent:self];

    return v5;
  }

  return result;
}

- (id)newDefaultLibraryWithBundle:(id)a3 error:(id *)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [(MTLToolsObject *)[MTLToolsLibrary alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)newLibraryWithFile:(id)a3 error:(id *)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [(MTLToolsObject *)[MTLToolsLibrary alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)newLibraryWithURL:(id)a3 error:(id *)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [(MTLToolsObject *)[MTLToolsLibrary alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)newLibraryWithSource:(id)a3 options:(id)a4 error:(id *)a5
{
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sourceLibraryObjectCache = self->sourceLibraryObjectCache;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__MTLToolsDevice_newLibraryWithSource_options_error___block_invoke;
  v11[3] = &unk_2787B3C20;
  v11[4] = v7;
  v11[5] = self;
  v9 = [(MTLToolsObjectCache *)sourceLibraryObjectCache getCachedObjectForKey:v7 onMiss:v11];

  return v9;
}

uint64_t __53__MTLToolsDevice_newLibraryWithSource_options_error___block_invoke(uint64_t a1)
{
  v2 = [MTLToolsLibrary alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [(MTLToolsObject *)v2 initWithBaseObject:v3 parent:v4];
}

- (id)newLibraryWithData:(id)a3 error:(id *)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [(MTLToolsObject *)[MTLToolsLibrary alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (void)startCollectingPipelineDescriptors
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 startCollectingPipelineDescriptors];
}

- (id)endCollectingPipelineDescriptors
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 endCollectingPipelineDescriptors];
}

- (id)newPipelineLibraryWithFilePath:(id)a3 error:(id *)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [(MTLToolsObject *)[MTLToolsPipelineLibrary alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)serializeRenderPipelineDescriptor:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 serializeRenderPipelineDescriptor:a3];
}

- (id)newRenderPipelineDescriptorWithSerializedData:(id)a3 deserializationContext:(id)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 newRenderPipelineDescriptorWithSerializedData:a3 deserializationContext:a4];
}

- (id)newComputePipelineDescriptorWithSerializedData:(id)a3 deserializationContext:(id)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 newComputePipelineDescriptorWithSerializedData:a3 deserializationContext:a4];
}

- (id)serializeStructType:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 serializeStructType:a3];
}

- (id)newStructTypeWithSerializedData:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 newStructTypeWithSerializedData:a3];
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapTextureSizeAndAlignWithDescriptor:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  v5 = [v4 heapTextureSizeAndAlignWithDescriptor:a3];
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapBufferSizeAndAlignWithLength:(unint64_t)a3 options:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  v7 = [v6 heapBufferSizeAndAlignWithLength:a3 options:a4];
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (id)newHeapWithDescriptor:(id)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [(MTLToolsObject *)[MTLToolsHeap alloc] initWithBaseObject:result parent:self];

    return v6;
  }

  return result;
}

- (id)newFence
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v4 = result;
    v5 = [(MTLToolsObject *)[MTLToolsFence alloc] initWithBaseObject:result parent:self];

    return v5;
  }

  return result;
}

- (IndirectArgumentBufferCapabilities)indirectArgumentBufferCapabilities
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 indirectArgumentBufferCapabilities];
}

- (NSDictionary)pluginData
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 pluginData];
}

- (void)setPluginData:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setPluginData:a3];
}

- (id)newIndirectArgumentBufferLayoutWithStructType:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 newIndirectArgumentBufferLayoutWithStructType:a3];
}

- (id)newIndirectArgumentEncoderWithLayout:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 newIndirectArgumentEncoderWithLayout:a3];
}

- (id)newArgumentEncoderWithLayout:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 newArgumentEncoderWithLayout:a3];
}

- (id)newArgumentEncoderWithArguments:(id)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [(MTLToolsObject *)[MTLToolsArgumentEncoder alloc] initWithBaseObject:result parent:self];

    return v6;
  }

  return result;
}

- (id)newArgumentEncoderWithArguments:(id)a3 structType:(id *)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [(MTLToolsObject *)[MTLToolsArgumentEncoder alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (unint64_t)maxThreadgroupMemoryLength
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxThreadgroupMemoryLength];
}

- (unint64_t)maxArgumentBufferSamplerCount
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxArgumentBufferSamplerCount];
}

- (id)unwrapMTLRenderPipelineDescriptor:(id)a3
{
  v4 = [a3 copy];
  [v4 setVertexFunction:{objc_msgSend(objc_msgSend(v4, "vertexFunction"), "baseObject")}];
  [v4 setFragmentFunction:{objc_msgSend(objc_msgSend(v4, "fragmentFunction"), "baseObject")}];
  [v4 setPipelineLibrary:{objc_msgSend(objc_msgSend(v4, "pipelineLibrary"), "baseObject")}];
  [v4 setVertexLinkedFunctions:{unwrapLinkedFunctions(objc_msgSend(a3, "vertexLinkedFunctions"))}];
  [v4 setFragmentLinkedFunctions:{unwrapLinkedFunctions(objc_msgSend(a3, "fragmentLinkedFunctions"))}];
  [v4 setMeshLinkedFunctions:{unwrapLinkedFunctions(objc_msgSend(a3, "meshLinkedFunctions"))}];
  [v4 setObjectLinkedFunctions:{unwrapLinkedFunctions(objc_msgSend(a3, "objectLinkedFunctions"))}];
  [v4 setBinaryArchives:{unwrapArray(objc_msgSend(a3, "binaryArchives"))}];
  [v4 setVertexPreloadedLibraries:{unwrapArray(objc_msgSend(a3, "vertexPreloadedLibraries"))}];
  [v4 setFragmentPreloadedLibraries:{unwrapArray(objc_msgSend(a3, "fragmentPreloadedLibraries"))}];
  [v4 setObjectFunction:{objc_msgSend(objc_msgSend(a3, "objectFunction"), "baseObject")}];
  [v4 setMeshFunction:{objc_msgSend(objc_msgSend(a3, "meshFunction"), "baseObject")}];
  [v4 setObjectPreloadedLibraries:{unwrapArray(objc_msgSend(a3, "objectPreloadedLibraries"))}];
  [v4 setMeshPreloadedLibraries:{unwrapArray(objc_msgSend(a3, "meshPreloadedLibraries"))}];

  return v4;
}

- (unint64_t)debugPipelineOptions:(unint64_t)a3 includePipelinePerfStats:(BOOL)a4
{
  v4 = 8454147;
  if (a4)
  {
    v4 = 8716291;
  }

  return v4 | a3;
}

- (id)unwrapMTLComputePipelineDescriptor:(id)a3
{
  v4 = [a3 copy];
  [v4 setComputeFunction:{objc_msgSend(objc_msgSend(v4, "computeFunction"), "baseObject")}];
  [v4 setPipelineLibrary:{objc_msgSend(objc_msgSend(v4, "pipelineLibrary"), "baseObject")}];
  [v4 setLinkedFunctions:{unwrapLinkedFunctions(objc_msgSend(a3, "linkedFunctions"))}];
  [v4 setFunctionPointers:{unwrapArray(objc_msgSend(a3, "functionPointers"))}];
  [v4 setPreloadedLibraries:{unwrapArray(objc_msgSend(a3, "preloadedLibraries"))}];
  [v4 setBinaryArchives:{unwrapArray(objc_msgSend(a3, "binaryArchives"))}];

  return v4;
}

- (id)unwrapMTLTileRenderPipelineDescriptor:(id)a3
{
  v4 = [a3 copy];
  [v4 setTileFunction:{objc_msgSend(objc_msgSend(v4, "tileFunction"), "baseObject")}];
  [v4 setLinkedFunctions:{unwrapLinkedFunctions(objc_msgSend(a3, "linkedFunctions"))}];
  [v4 setPreloadedLibraries:{unwrapArray(objc_msgSend(a3, "preloadedLibraries"))}];
  [v4 setBinaryArchives:{unwrapArray(objc_msgSend(v4, "binaryArchives"))}];

  return v4;
}

- (id)unwrapMTLMeshRenderPipelineDescriptor:(id)a3
{
  v4 = [a3 copy];
  [v4 setObjectFunction:{objc_msgSend(objc_msgSend(a3, "objectFunction"), "baseObject")}];
  [v4 setMeshFunction:{objc_msgSend(objc_msgSend(a3, "meshFunction"), "baseObject")}];
  [v4 setFragmentFunction:{objc_msgSend(objc_msgSend(a3, "fragmentFunction"), "baseObject")}];
  [v4 setPipelineLibrary:{objc_msgSend(objc_msgSend(a3, "pipelineLibrary"), "baseObject")}];
  [v4 setBinaryArchives:{unwrapArray(objc_msgSend(a3, "binaryArchives"))}];
  [v4 setObjectPreloadedLibraries:{unwrapArray(objc_msgSend(a3, "objectPreloadedLibraries"))}];
  [v4 setMeshPreloadedLibraries:{unwrapArray(objc_msgSend(a3, "meshPreloadedLibraries"))}];
  [v4 setFragmentPreloadedLibraries:{unwrapArray(objc_msgSend(a3, "fragmentPreloadedLibraries"))}];
  [v4 setObjectLinkedFunctions:{unwrapLinkedFunctions(objc_msgSend(a3, "objectLinkedFunctions"))}];
  [v4 setMeshLinkedFunctions:{unwrapLinkedFunctions(objc_msgSend(a3, "meshLinkedFunctions"))}];
  [v4 setFragmentLinkedFunctions:{unwrapLinkedFunctions(objc_msgSend(a3, "fragmentLinkedFunctions"))}];

  return v4;
}

- (id)unwrapMTLCompileOptions:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [a3 copy];
  v4 = [v3 libraries];
  if (v4)
  {
    v5 = v4;
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v5);
          }

          [v6 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * v10++), "baseObject")}];
        }

        while (v8 != v10);
        v8 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [v3 setLibraries:v6];
  }

  result = v3;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)unwrapMTLStitchedLibraryDescriptor:(id)a3
{
  v4 = [a3 copy];
  [v4 setFunctions:{unwrapArray(objc_msgSend(a3, "functions"))}];
  [v4 setBinaryArchives:{unwrapArray(objc_msgSend(a3, "binaryArchives"))}];
  return v4;
}

+ (id)newUnwrappedMTLRelocations:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a3, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(a3);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [objc_alloc(MEMORY[0x277CD6CC0]) initWithSymbolName:objc_msgSend(v9 buffer:"symbolName") offset:{objc_msgSend(objc_msgSend(v9, "buffer"), "baseObject"), objc_msgSend(v9, "offset")}];
            [v4 addObject:v10];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v4 addObject:v9];
            }
          }
        }

        v6 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)unwrapMTLFunctionDescriptor:(id)a3
{
  v4 = [a3 copy];
  [v4 setBinaryArchives:{unwrapArray(objc_msgSend(a3, "binaryArchives"))}];
  [v4 setPrivateFunctions:{unwrapArray(objc_msgSend(a3, "privateFunctions"))}];
  return v4;
}

- (id)newRenderPipelineStateWithDescriptor:(id)a3 error:(id *)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTLToolsRenderPipelineState alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)newRenderPipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [[MTLToolsRenderPipelineState alloc] initWithBaseObject:result parent:self];

    return v9;
  }

  return result;
}

- (void)newRenderPipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = [(MTLToolsDevice *)self unwrapMTLRenderPipelineDescriptor:a3];
  v9 = [(MTLToolsObject *)self baseObject];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__MTLToolsDevice_newRenderPipelineStateWithDescriptor_options_completionHandler___block_invoke;
  v10[3] = &unk_2787B3C48;
  v10[4] = self;
  v10[5] = a5;
  [v9 newRenderPipelineStateWithDescriptor:v8 options:a4 completionHandler:v10];
}

void __81__MTLToolsDevice_newRenderPipelineStateWithDescriptor_options_completionHandler___block_invoke(uint64_t a1, MTLToolsRenderPipelineState *a2)
{
  if (a2)
  {
    a2 = [[MTLToolsRenderPipelineState alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
  }

  v3 = a2;
  (*(*(a1 + 40) + 16))();
}

- (void)newRenderPipelineStateWithDescriptor:(id)a3 completionHandler:(id)a4
{
  v6 = [(MTLToolsDevice *)self unwrapMTLRenderPipelineDescriptor:a3];
  v7 = [(MTLToolsObject *)self baseObject];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__MTLToolsDevice_newRenderPipelineStateWithDescriptor_completionHandler___block_invoke;
  v8[3] = &unk_2787B3C70;
  v8[4] = self;
  v8[5] = a4;
  [v7 newRenderPipelineStateWithDescriptor:v6 completionHandler:v8];
}

void __73__MTLToolsDevice_newRenderPipelineStateWithDescriptor_completionHandler___block_invoke(uint64_t a1, MTLToolsRenderPipelineState *a2)
{
  if (a2)
  {
    a2 = [[MTLToolsRenderPipelineState alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
  }

  v3 = a2;
  (*(*(a1 + 40) + 16))();
}

- (id)newComputePipelineStateWithDescriptor:(id)a3 error:(id *)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [(MTLToolsObject *)[MTLToolsComputePipelineState alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)newComputePipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  v8 = [(MTLToolsObject *)[MTLToolsComputePipelineState alloc] initWithBaseObject:v7 parent:self];

  return v8;
}

- (void)newComputePipelineStateWithDescriptor:(id)a3 completionHandler:(id)a4
{
  v6 = [(MTLToolsDevice *)self unwrapMTLComputePipelineDescriptor:a3];
  v7 = [(MTLToolsObject *)self baseObject];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__MTLToolsDevice_newComputePipelineStateWithDescriptor_completionHandler___block_invoke;
  v8[3] = &unk_2787B3C98;
  v8[4] = self;
  v8[5] = a4;
  [v7 newComputePipelineStateWithDescriptor:v6 completionHandler:v8];
}

void __74__MTLToolsDevice_newComputePipelineStateWithDescriptor_completionHandler___block_invoke(uint64_t a1, MTLToolsComputePipelineState *a2)
{
  if (a2)
  {
    a2 = [(MTLToolsObject *)[MTLToolsComputePipelineState alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
  }

  v3 = a2;
  (*(*(a1 + 40) + 16))();
}

- (void)newComputePipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__MTLToolsDevice_newComputePipelineStateWithDescriptor_options_completionHandler___block_invoke;
  v11[3] = &unk_2787B3CC0;
  v11[4] = self;
  v11[5] = a5;
  [v9 newComputePipelineStateWithDescriptor:v10 options:a4 completionHandler:v11];
}

void __82__MTLToolsDevice_newComputePipelineStateWithDescriptor_options_completionHandler___block_invoke(uint64_t a1, MTLToolsComputePipelineState *a2)
{
  if (a2)
  {
    a2 = [(MTLToolsObject *)[MTLToolsComputePipelineState alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
  }

  v3 = a2;
  (*(*(a1 + 40) + 16))();
}

- (id)newComputePipelineStateWithFunction:(id)a3 error:(id *)a4
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];
  v6 = [(MTLToolsObject *)[MTLToolsComputePipelineState alloc] initWithBaseObject:v5 parent:self];

  return v6;
}

- (id)newComputePipelineStateWithFunction:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  v8 = [(MTLToolsObject *)[MTLToolsComputePipelineState alloc] initWithBaseObject:v7 parent:self];

  return v8;
}

- (void)newComputePipelineStateWithFunction:(id)a3 completionHandler:(id)a4
{
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__MTLToolsDevice_newComputePipelineStateWithFunction_completionHandler___block_invoke;
  v9[3] = &unk_2787B3C98;
  v9[4] = self;
  v9[5] = a4;
  [v7 newComputePipelineStateWithFunction:v8 completionHandler:v9];
}

void __72__MTLToolsDevice_newComputePipelineStateWithFunction_completionHandler___block_invoke(uint64_t a1, MTLToolsComputePipelineState *a2)
{
  if (a2)
  {
    a2 = [(MTLToolsObject *)[MTLToolsComputePipelineState alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
  }

  v3 = a2;
  (*(*(a1 + 40) + 16))();
}

- (void)newComputePipelineStateWithFunction:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__MTLToolsDevice_newComputePipelineStateWithFunction_options_completionHandler___block_invoke;
  v11[3] = &unk_2787B3CC0;
  v11[4] = self;
  v11[5] = a5;
  [v9 newComputePipelineStateWithFunction:v10 options:a4 completionHandler:v11];
}

void __80__MTLToolsDevice_newComputePipelineStateWithFunction_options_completionHandler___block_invoke(uint64_t a1, MTLToolsComputePipelineState *a2)
{
  if (a2)
  {
    a2 = [(MTLToolsObject *)[MTLToolsComputePipelineState alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
  }

  v3 = a2;
  (*(*(a1 + 40) + 16))();
}

- (id)newRenderPipelineStateWithTileDescriptor:(id)a3 error:(id *)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTLToolsRenderPipelineState alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)newRenderPipelineStateWithTileDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [[MTLToolsRenderPipelineState alloc] initWithBaseObject:result parent:self];

    return v9;
  }

  return result;
}

- (void)newRenderPipelineStateWithTileDescriptor:(id)a3 completionHandler:(id)a4
{
  v6 = [(MTLToolsDevice *)self unwrapMTLTileRenderPipelineDescriptor:a3];
  v7 = [(MTLToolsObject *)self baseObject];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__MTLToolsDevice_newRenderPipelineStateWithTileDescriptor_completionHandler___block_invoke;
  v8[3] = &unk_2787B3C70;
  v8[4] = self;
  v8[5] = a4;
  [v7 newRenderPipelineStateWithTileDescriptor:v6 completionHandler:v8];
}

void __77__MTLToolsDevice_newRenderPipelineStateWithTileDescriptor_completionHandler___block_invoke(uint64_t a1, MTLToolsRenderPipelineState *a2)
{
  if (a2)
  {
    a2 = [[MTLToolsRenderPipelineState alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
  }

  v3 = a2;
  (*(*(a1 + 40) + 16))();
}

- (void)newRenderPipelineStateWithTileDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = [(MTLToolsDevice *)self unwrapMTLTileRenderPipelineDescriptor:a3];
  v9 = [(MTLToolsObject *)self baseObject];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__MTLToolsDevice_newRenderPipelineStateWithTileDescriptor_options_completionHandler___block_invoke;
  v10[3] = &unk_2787B3C48;
  v10[4] = self;
  v10[5] = a5;
  [v9 newRenderPipelineStateWithTileDescriptor:v8 options:a4 completionHandler:v10];
}

void __85__MTLToolsDevice_newRenderPipelineStateWithTileDescriptor_options_completionHandler___block_invoke(uint64_t a1, MTLToolsRenderPipelineState *a2)
{
  if (a2)
  {
    a2 = [[MTLToolsRenderPipelineState alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
  }

  v3 = a2;
  (*(*(a1 + 40) + 16))();
}

- (id)newRenderPipelineStateWithMeshDescriptor:(id)a3 error:(id *)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTLToolsRenderPipelineState alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)newRenderPipelineStateWithMeshDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [[MTLToolsRenderPipelineState alloc] initWithBaseObject:result parent:self];

    return v9;
  }

  return result;
}

- (void)newRenderPipelineStateWithMeshDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = [(MTLToolsDevice *)self unwrapMTLMeshRenderPipelineDescriptor:a3];
  v9 = [(MTLToolsObject *)self baseObject];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__MTLToolsDevice_newRenderPipelineStateWithMeshDescriptor_options_completionHandler___block_invoke;
  v10[3] = &unk_2787B3C48;
  v10[4] = self;
  v10[5] = a5;
  [v9 newRenderPipelineStateWithMeshDescriptor:v8 options:a4 completionHandler:v10];
}

void __85__MTLToolsDevice_newRenderPipelineStateWithMeshDescriptor_options_completionHandler___block_invoke(uint64_t a1, MTLToolsRenderPipelineState *a2)
{
  if (a2)
  {
    a2 = [[MTLToolsRenderPipelineState alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
  }

  v3 = a2;
  (*(*(a1 + 40) + 16))();
}

- (void)newRenderPipelineStateWithMeshDescriptor:(id)a3 completionHandler:(id)a4
{
  v6 = [(MTLToolsDevice *)self unwrapMTLMeshRenderPipelineDescriptor:a3];
  v7 = [(MTLToolsObject *)self baseObject];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__MTLToolsDevice_newRenderPipelineStateWithMeshDescriptor_completionHandler___block_invoke;
  v8[3] = &unk_2787B3C70;
  v8[4] = self;
  v8[5] = a4;
  [v7 newRenderPipelineStateWithMeshDescriptor:v6 completionHandler:v8];
}

void __77__MTLToolsDevice_newRenderPipelineStateWithMeshDescriptor_completionHandler___block_invoke(uint64_t a1, MTLToolsRenderPipelineState *a2)
{
  if (a2)
  {
    a2 = [[MTLToolsRenderPipelineState alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
  }

  v3 = a2;
  (*(*(a1 + 40) + 16))();
}

- (id)newComputePipelineStateWithImageFilterFunctionsSPI:(id)a3 imageFilterFunctionInfo:(id *)a4 error:(id *)a5
{
  v7 = [(MTLToolsDevice *)self newLibraryWithImageFilterFunctionsSPI:a3 imageFilterFunctionInfo:a4 error:?];
  v8 = [v7 newFunctionWithName:@"ciKernelMain"];
  v9 = [(MTLToolsDevice *)self newComputePipelineStateWithFunction:v8 error:a5];

  return v9;
}

- (id)newLibraryWithDAG:(id)a3 functions:(id)a4 error:(id *)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [a4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(a4);
        }

        [v9 addObject:{objc_msgSend(*(*(&v18 + 1) + 8 * v13++), "baseObject")}];
      }

      while (v11 != v13);
      v11 = [a4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v14 = [-[MTLToolsObject baseObject](self "baseObject")];

  if (v14)
  {
    v15 = [(MTLToolsObject *)[MTLToolsLibrary alloc] initWithBaseObject:v14 parent:self];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)newLibraryWithStitchedDescriptor:(id)a3 error:(id *)a4
{
  v6 = [(MTLToolsDevice *)self unwrapMTLStitchedLibraryDescriptor:a3];
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];

  if (!v7)
  {
    return 0;
  }

  v8 = [(MTLToolsObject *)[MTLToolsLibrary alloc] initWithBaseObject:v7 parent:self];

  return v8;
}

- (void)newLibraryWithStitchedDescriptor:(id)a3 completionHandler:(id)a4
{
  v6 = [(MTLToolsDevice *)self unwrapMTLStitchedLibraryDescriptor:a3];
  v7 = [(MTLToolsObject *)self baseObject];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__MTLToolsDevice_newLibraryWithStitchedDescriptor_completionHandler___block_invoke;
  v8[3] = &unk_2787B3CE8;
  v8[4] = v6;
  v8[5] = self;
  v8[6] = a4;
  [v7 newLibraryWithStitchedDescriptor:v6 completionHandler:v8];
}

void __69__MTLToolsDevice_newLibraryWithStitchedDescriptor_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [(MTLToolsObject *)[MTLToolsLibrary alloc] initWithBaseObject:a2 parent:*(a1 + 40)];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(*(a1 + 48) + 16))();
}

- (id)newLibraryWithStitchedDescriptorSPI:(id)a3 error:(id *)a4
{
  v6 = [(MTLToolsDevice *)self unwrapMTLStitchedLibraryDescriptor:a3];
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];

  if (!v7)
  {
    return 0;
  }

  v8 = [(MTLToolsObject *)[MTLToolsLibrary alloc] initWithBaseObject:v7 parent:self];

  return v8;
}

- (id)newDagStringWithGraphs:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 newDagStringWithGraphs:a3];
}

- (id)newLibraryWithCIFilters:(id)a3 imageFilterFunctionInfo:(id *)a4 error:(id *)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [a3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(a3);
        }

        [v9 addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * v13++), "baseObject")}];
      }

      while (v11 != v13);
      v11 = [a3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v14 = [-[MTLToolsObject originalObject](self "originalObject")];
  if (v14)
  {
    v15 = v14;
    v16 = [(MTLToolsObject *)[MTLToolsLibrary alloc] initWithBaseObject:v14 parent:self];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)newLibraryWithSource:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = [(MTLToolsDevice *)self unwrapMTLCompileOptions:a4];
  v9 = [(MTLToolsObject *)self baseObject];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__MTLToolsDevice_newLibraryWithSource_options_completionHandler___block_invoke;
  v10[3] = &unk_2787B3D10;
  v10[4] = self;
  v10[5] = a5;
  [v9 newLibraryWithSource:a3 options:v8 completionHandler:v10];
}

void __65__MTLToolsDevice_newLibraryWithSource_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__MTLToolsDevice_newLibraryWithSource_options_completionHandler___block_invoke_2;
  v6[3] = &unk_2787B3C20;
  v6[4] = a2;
  v6[5] = v3;
  v5 = [v4 getCachedObjectForKey:a2 onMiss:v6];
  (*(*(a1 + 40) + 16))();
}

uint64_t __65__MTLToolsDevice_newLibraryWithSource_options_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MTLToolsLibrary alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [(MTLToolsObject *)v2 initWithBaseObject:v3 parent:v4];
}

- (BOOL)deviceSupportsFeatureSet:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 deviceSupportsFeatureSet:a3];
}

- (BOOL)deviceOrFeatureProfileSupportsFeatureSet:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 deviceOrFeatureProfileSupportsFeatureSet:a3];
}

- (BOOL)supportsFeatureSet:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 supportsFeatureSet:a3];
}

- (BOOL)supportsFamily:(int64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 supportsFamily:a3];
}

- (BOOL)supportsTextureSampleCount:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 supportsTextureSampleCount:a3];
}

- (BOOL)supportsSampleCount:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 supportsSampleCount:a3];
}

- (unint64_t)minLinearTextureAlignmentForPixelFormat:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 minLinearTextureAlignmentForPixelFormat:a3];
}

- (unint64_t)minimumLinearTextureAlignmentForPixelFormat:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 minimumLinearTextureAlignmentForPixelFormat:a3];
}

- (unint64_t)minimumTextureBufferAlignmentForPixelFormat:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 minimumTextureBufferAlignmentForPixelFormat:a3];
}

- (BOOL)areProgrammableSamplePositionsSupported
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 areProgrammableSamplePositionsSupported];
}

- (void)getDefaultSamplePositions:(id *)a3 count:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 getDefaultSamplePositions:a3 count:a4];
}

- (BOOL)supportsRasterizationRateMapWithLayerCount:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 supportsRasterizationRateMapWithLayerCount:a3];
}

- (id)newRasterizationRateMapWithDescriptor:(id)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [(MTLToolsObject *)[MTLToolsRasterizationRateMap alloc] initWithBaseObject:result parent:self];

    return v6;
  }

  return result;
}

- (unint64_t)maxRasterizationRateLayerCount
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxRasterizationRateLayerCount];
}

- (id)_deviceWrapper
{
  if (!objc_loadWeak(&self->_deviceWrapper))
  {
    return self;
  }

  Weak = objc_loadWeak(&self->_deviceWrapper);

  return [Weak _deviceWrapper];
}

- (id)newBufferWithIOSurface:(__IOSurface *)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [(MTLToolsResource *)[MTLToolsBuffer alloc] initWithBaseObject:result parent:self];

    return v6;
  }

  return result;
}

- (unint64_t)resourcePatchingTypeForResourceType:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 resourcePatchingTypeForResourceType:a3];
}

- (void)reserveResourceIndicesForResourceType:(unint64_t)a3 indices:(unint64_t *)a4 indexCount:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 reserveResourceIndicesForResourceType:a3 indices:a4 indexCount:a5];
}

- (unint64_t)halfFPConfig
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 halfFPConfig];
}

- (unint64_t)singleFPConfig
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 singleFPConfig];
}

- (unint64_t)doubleFPConfig
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 doubleFPConfig];
}

- (unint64_t)featureProfile
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 featureProfile];
}

- (const)limits
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 limits];
}

- (unsigned)acceleratorPort
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 acceleratorPort];
}

- (BOOL)supportPriorityBand
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportPriorityBand];
}

- (unint64_t)maxFramebufferStorageBits
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxFramebufferStorageBits];
}

- (unint64_t)linearTextureArrayAlignmentBytes
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 linearTextureArrayAlignmentBytes];
}

- (unint64_t)linearTextureArrayAlignmentSlice
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 linearTextureArrayAlignmentSlice];
}

- (unint64_t)maxTileBuffers
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxTileBuffers];
}

- (unint64_t)maxTileTextures
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxTileTextures];
}

- (unint64_t)maxTileSamplers
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxTileSamplers];
}

- (unint64_t)maxTileInlineDataSize
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxTileInlineDataSize];
}

- (unint64_t)minTilePixels
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 minTilePixels];
}

- (unint64_t)maxColorAttachments
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxColorAttachments];
}

- (unint64_t)maxVertexAttributes
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxVertexAttributes];
}

- (unint64_t)maxVertexBuffers
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxVertexBuffers];
}

- (unint64_t)maxVertexTextures
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxVertexTextures];
}

- (unint64_t)maxVertexSamplers
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxVertexSamplers];
}

- (unint64_t)maxVertexInlineDataSize
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxVertexInlineDataSize];
}

- (unint64_t)maxInterpolants
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxInterpolants];
}

- (unint64_t)maxFragmentBuffers
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxFragmentBuffers];
}

- (unint64_t)maxFragmentTextures
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxFragmentTextures];
}

- (unint64_t)maxFragmentSamplers
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxFragmentSamplers];
}

- (unint64_t)maxFragmentInlineDataSize
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxFragmentInlineDataSize];
}

- (unint64_t)maxComputeBuffers
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxComputeBuffers];
}

- (unint64_t)maxComputeTextures
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxComputeTextures];
}

- (unint64_t)maxComputeSamplers
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxComputeSamplers];
}

- (unint64_t)maxComputeInlineDataSize
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxComputeInlineDataSize];
}

- (unint64_t)maxComputeLocalMemorySizes
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxComputeLocalMemorySizes];
}

- (unint64_t)maxTotalComputeThreadsPerThreadgroup
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxTotalComputeThreadsPerThreadgroup];
}

- (unint64_t)maxComputeThreadgroupMemory
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxComputeThreadgroupMemory];
}

- (float)maxLineWidth
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 maxLineWidth];
  return result;
}

- (float)maxPointSize
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 maxPointSize];
  return result;
}

- (unint64_t)maxVisibilityQueryOffset
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxVisibilityQueryOffset];
}

- (unint64_t)minConstantBufferAlignmentBytes
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 minConstantBufferAlignmentBytes];
}

- (unint64_t)minBufferNoCopyAlignmentBytes
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 minBufferNoCopyAlignmentBytes];
}

- (unint64_t)maxTextureWidth1D
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxTextureWidth1D];
}

- (unint64_t)maxTextureWidth2D
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxTextureWidth2D];
}

- (unint64_t)maxTextureHeight2D
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxTextureHeight2D];
}

- (unint64_t)maxTextureWidth3D
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxTextureWidth3D];
}

- (unint64_t)maxTextureHeight3D
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxTextureHeight3D];
}

- (unint64_t)maxTextureDepth3D
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxTextureDepth3D];
}

- (unint64_t)maxTextureDimensionCube
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxTextureDimensionCube];
}

- (unint64_t)maxTextureLayers
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxTextureLayers];
}

- (unint64_t)linearTextureAlignmentBytes
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 linearTextureAlignmentBytes];
}

- (unint64_t)iosurfaceTextureAlignmentBytes
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 iosurfaceTextureAlignmentBytes];
}

- (unint64_t)iosurfaceReadOnlyTextureAlignmentBytes
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 iosurfaceReadOnlyTextureAlignmentBytes];
}

- (unint64_t)deviceLinearTextureAlignmentBytes
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 deviceLinearTextureAlignmentBytes];
}

- (unint64_t)deviceLinearReadOnlyTextureAlignmentBytes
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 deviceLinearReadOnlyTextureAlignmentBytes];
}

- (unint64_t)maxFunctionConstantIndices
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxFunctionConstantIndices];
}

- (unint64_t)maxComputeThreadgroupMemoryAlignmentBytes
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxComputeThreadgroupMemoryAlignmentBytes];
}

- (unint64_t)maxInterpolatedComponents
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxInterpolatedComponents];
}

- (unint64_t)maxTessellationFactor
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxTessellationFactor];
}

- (unint64_t)maxIndirectBuffers
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxIndirectBuffers];
}

- (unint64_t)maxIndirectTextures
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxIndirectTextures];
}

- (unint64_t)maxIndirectSamplers
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxIndirectSamplers];
}

- (unint64_t)maxIndirectSamplersPerDevice
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxIndirectSamplersPerDevice];
}

- (unint64_t)maxFenceInstances
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxFenceInstances];
}

- (unint64_t)maxViewportCount
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxViewportCount];
}

- (unint64_t)maxCustomSamplePositions
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxCustomSamplePositions];
}

- (unint64_t)maxVertexAmplificationFactor
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxVertexAmplificationFactor];
}

- (unint64_t)maxVertexAmplificationCount
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxVertexAmplificationCount];
}

- (unint64_t)maxTextureBufferWidth
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxTextureBufferWidth];
}

- (unint64_t)maxComputeAttributes
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxComputeAttributes];
}

- (unint64_t)maxIOCommandsInFlight
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxIOCommandsInFlight];
}

- (unint64_t)maxPredicatedNestingDepth
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxPredicatedNestingDepth];
}

- (unint64_t)maxAccelerationStructureLevels
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxAccelerationStructureLevels];
}

- (unint64_t)maxConstantBufferArguments
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxConstantBufferArguments];
}

- (unint64_t)maxBufferLength
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxBufferLength];
}

- (unint64_t)readWriteTextureSupport
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 readWriteTextureSupport];
}

- (unint64_t)argumentBuffersSupport
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 argumentBuffersSupport];
}

- (BOOL)areRasterOrderGroupsSupported
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 areRasterOrderGroupsSupported];
}

- (BOOL)isFloat32FilteringSupported
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isFloat32FilteringSupported];
}

- (BOOL)isBCTextureCompressionSupported
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isBCTextureCompressionSupported];
}

- (BOOL)isMsaa32bSupported
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isMsaa32bSupported];
}

- (BOOL)isRGB10A2GammaSupported
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isRGB10A2GammaSupported];
}

- (BOOL)isCustomBorderColorSupported
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isCustomBorderColorSupported];
}

- (BOOL)isClampToHalfBorderSupported
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isClampToHalfBorderSupported];
}

- (BOOL)areBarycentricCoordsSupported
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsShaderBarycentricCoordinates];
}

- (BOOL)isLargeMRTSupported
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isLargeMRTSupported];
}

- (BOOL)isQuadDataSharingSupported
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isQuadDataSharingSupported];
}

- (BOOL)isFixedLinePointFillDepthGradientSupported
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isFixedLinePointFillDepthGradientSupported];
}

- (unint64_t)sparseTexturesSupport
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 sparseTexturesSupport];
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)tileSizeWithSparsePageSize:(SEL)a3 textureType:(int64_t)a4 pixelFormat:(unint64_t)a5 sampleCount:(unint64_t)a6
{
  result = [(MTLToolsObject *)self baseObject];
  if (result)
  {

    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result tileSizeWithSparsePageSize:a4 textureType:a5 pixelFormat:a6 sampleCount:a7];
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)sparseTileSizeWithTextureType:(SEL)a3 pixelFormat:(unint64_t)a4 sampleCount:(unint64_t)a5
{
  result = [(MTLToolsObject *)self baseObject];
  if (result)
  {

    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result sparseTileSizeWithTextureType:a4 pixelFormat:a5 sampleCount:a6];
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)sparseTileSizeWithTextureType:(SEL)a3 pixelFormat:(unint64_t)a4 sampleCount:(unint64_t)a5 sparsePageSize:(unint64_t)a6
{
  result = [(MTLToolsObject *)self baseObject];
  if (result)
  {

    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result sparseTileSizeWithTextureType:a4 pixelFormat:a5 sampleCount:a6 sparsePageSize:a7];
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (unsigned)maximumComputeSubstreams
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maximumComputeSubstreams];
}

- (id)newResourceGroupFromResources:(const void *)a3 count:(unint64_t)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = v16 - ((8 * a4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v7 = a3;
    v8 = a4;
    v9 = (v16 - ((8 * a4 + 15) & 0xFFFFFFFFFFFFFFF0));
    do
    {
      v10 = *v7++;
      *v9++ = [v10 baseObject];
      --v8;
    }

    while (v8);
  }

  v11 = [-[MTLToolsObject baseObject](self baseObject];
  if (v11)
  {
    v12 = v11;
    v13 = [(MTLToolsObject *)[MTLToolsResourceGroupSPI alloc] initWithBaseObject:v11 parent:self];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)metalAssertionsEnabled
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 metalAssertionsEnabled];
}

- (id)newTextureWithDescriptor:(id)a3 iosurface:(__IOSurface *)a4 plane:(unint64_t)a5
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v7 = result;
    v8 = [(MTLToolsResource *)[MTLToolsTexture alloc] initWithBaseObject:result parent:self];

    return v8;
  }

  return result;
}

- (id)newEvent
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v4 = result;
    v5 = [(MTLToolsObject *)[MTLToolsEvent alloc] initWithBaseObject:result parent:self];

    return v5;
  }

  return result;
}

- (id)newEventWithOptions:(int64_t)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [(MTLToolsObject *)[MTLToolsEvent alloc] initWithBaseObject:result parent:self];

    return v6;
  }

  return result;
}

- (id)newSharedEvent
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v3 = result;
    v4 = [(MTLToolsObject *)[MTLToolsSharedEvent alloc] initWithBaseObject:result parent:0];

    return v4;
  }

  return result;
}

- (id)newSharedEventWithOptions:(int64_t)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v4 = result;
    v5 = [(MTLToolsObject *)[MTLToolsSharedEvent alloc] initWithBaseObject:result parent:0];

    return v5;
  }

  return result;
}

- (id)newSharedEventWithHandle:(id)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v4 = result;
    v5 = [(MTLToolsObject *)[MTLToolsSharedEvent alloc] initWithBaseObject:result parent:0];

    return v5;
  }

  return result;
}

- (id)newLateEvalEvent
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v4 = result;
    v5 = [(MTLToolsObject *)[MTLToolsLateEvalEvent alloc] initWithBaseObject:result parent:self];

    return v5;
  }

  return result;
}

- (void)setupMPSFunctionTable:(MPSFunctionTable *)a3
{
  [(MTLToolsObject *)self originalObject];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(MTLToolsObject *)self originalObject];

    [v5 setupMPSFunctionTable:a3];
  }
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (sel_newBufferWithIOSurface_ == a3)
  {
    [(MTLToolsObject *)self baseObject];
    v3 = objc_opt_respondsToSelector();
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MTLToolsDevice;
    v3 = [(MTLToolsDevice *)&v5 respondsToSelector:a3];
  }

  return v3 & 1;
}

- (unint64_t)currentAllocatedSize
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 currentAllocatedSize];
}

- (void)allowLibrariesFromOtherPlatforms
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 allowLibrariesFromOtherPlatforms];
}

- (unint64_t)samplerReductionModeSupport
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 samplerReductionModeSupport];
}

- (unint64_t)sparseTileSizeInBytes
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 sparseTileSizeInBytes];
}

- (unint64_t)sparseTileSizeInBytesForSparsePageSize:(int64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 sparseTileSizeInBytesForSparsePageSize:a3];
}

- (void)convertSparsePixelRegions:(id *)a3 toTileRegions:(id *)a4 withTileSize:(id *)a5 alignmentMode:(unint64_t)a6 numRegions:(unint64_t)a7
{
  v12 = [(MTLToolsObject *)self baseObject];
  v13 = *a5;
  [v12 convertSparsePixelRegions:a3 toTileRegions:a4 withTileSize:&v13 alignmentMode:a6 numRegions:a7];
}

- (void)convertSparseTileRegions:(id *)a3 toPixelRegions:(id *)a4 withTileSize:(id *)a5 numRegions:(unint64_t)a6
{
  v10 = [(MTLToolsObject *)self baseObject];
  v11 = *a5;
  [v10 convertSparseTileRegions:a3 toPixelRegions:a4 withTileSize:&v11 numRegions:a6];
}

- (NSArray)counterSets
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 counterSets];
}

- (void)sampleTimestamps:(unint64_t *)a3 gpuTimestamp:(unint64_t *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 sampleTimestamps:a3 gpuTimestamp:a4];
}

- (BOOL)supportsCounterSampling:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 supportsCounterSampling:a3];
}

- (id)newCounterSampleBufferWithDescriptor:(id)a3 error:(id *)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [(MTLToolsObject *)[MTLToolsCounterSampleBuffer alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (BOOL)isPlacementHeapSupported
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isPlacementHeapSupported];
}

- (unint64_t)commandBufferErrorOptions
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 commandBufferErrorOptions];
}

- (void)setCommandBufferErrorOptions:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setCommandBufferErrorOptions:a3];
}

- (unint64_t)getSupportedCommandBufferErrorOptions
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getSupportedCommandBufferErrorOptions];
}

- (BOOL)supportsPrimitiveType:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 supportsPrimitiveType:a3];
}

- (unint64_t)deviceCreationFlags
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 deviceCreationFlags];
}

- (id)newBinaryArchiveWithDescriptor:(id)a3 error:(id *)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [(MTLToolsObject *)[MTLToolsBinaryArchive alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)newBinaryLibraryWithOptions:(unint64_t)a3 url:(id)a4 error:(id *)a5
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v7 = result;
    v8 = [(MTLToolsObject *)[MTLToolsBinaryArchive alloc] initWithBaseObject:result parent:self];

    return v8;
  }

  return result;
}

- (id)newDynamicLibraryWithURL:(id)a3 error:(id *)a4
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];
  v6 = [(MTLToolsDevice *)self getDynamicLibraryForBaseObject:v5];

  return v6;
}

- (id)newDynamicLibraryWithURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  v7 = [(MTLToolsDevice *)self getDynamicLibraryForBaseObject:v6];

  return v7;
}

- (id)newDynamicLibrary:(id)a3 error:(id *)a4
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];
  v6 = [(MTLToolsDevice *)self getDynamicLibraryForBaseObject:v5];

  return v6;
}

- (id)newDynamicLibrary:(id)a3 computeDescriptor:(id)a4 error:(id *)a5
{
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  v7 = [(MTLToolsDevice *)self getDynamicLibraryForBaseObject:v6];

  return v7;
}

- (BOOL)validateDynamicLibraryDescriptor:(id)a3 error:(id *)a4
{
  v6 = [(MTLToolsDevice *)self unwrapMTLDynamicLibraryDescriptorSPI:a3];
  LOBYTE(a4) = [-[MTLToolsObject baseObject](self "baseObject")];

  return a4;
}

- (id)newDynamicLibraryWithDescriptor:(id)a3 error:(id *)a4
{
  v6 = [(MTLToolsDevice *)self unwrapMTLDynamicLibraryDescriptorSPI:a3];
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];

  return v7;
}

- (BOOL)supportsVertexAmplificationCount:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 supportsVertexAmplificationCount:a3];
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)accelerationStructureSizesWithDescriptor:(SEL)a3
{
  result = [(MTLToolsObject *)self baseObject];
  if (result)
  {

    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result accelerationStructureSizesWithDescriptor:a4];
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (id)newAccelerationStructureWithSize:(unint64_t)a3
{
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  v5 = [[MTLToolsAccelerationStructure alloc] initWithBaseObject:v4 parent:self];

  return v5;
}

- (id)newAccelerationStructureWithDescriptor:(id)a3
{
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  v5 = [[MTLToolsAccelerationStructure alloc] initWithBaseObject:v4 parent:self];

  return v5;
}

- (id)newAccelerationStructureWithSize:(unint64_t)a3 resourceIndex:(unint64_t)a4
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];
  v6 = [[MTLToolsAccelerationStructure alloc] initWithBaseObject:v5 parent:self];

  return v6;
}

- (BOOL)isCompatibleWithAccelerationStructure:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 isCompatibleWithAccelerationStructure:a3];
}

- (id)newAccelerationStructureWithBuffer:(id)a3 offset:(unint64_t)a4
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];
  v6 = [[MTLToolsAccelerationStructure alloc] initWithBaseObject:v5 parent:self];

  return v6;
}

- (id)newAccelerationStructureWithBuffer:(id)a3 offset:(unint64_t)a4 resourceIndex:(unint64_t)a5
{
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  v7 = [[MTLToolsAccelerationStructure alloc] initWithBaseObject:v6 parent:self];

  return v7;
}

- (id)deserializePrimitiveAccelerationStructureFromBytes:(void *)a3 withDescriptor:(id)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTLToolsAccelerationStructure alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)deserializeInstanceAccelerationStructureFromBytes:(void *)a3 primitiveAccelerationStructures:(id)a4 withDescriptor:(id)a5
{
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a4, "count")}];
  if ([a4 count])
  {
    v10 = 0;
    v11 = 1;
    do
    {
      [v9 addObject:{objc_msgSend(objc_msgSend(a4, "objectAtIndexedSubscript:", v10), "baseObject")}];
      v10 = v11;
    }

    while ([a4 count] > v11++);
  }

  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v14 = result;
    v15 = [[MTLToolsAccelerationStructure alloc] initWithBaseObject:result parent:self];

    return v15;
  }

  return result;
}

- (id)newAccelerationStructureWithSize:(unint64_t)a3 withDescriptor:(id)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTLToolsAccelerationStructure alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBytes:(const void *)a4 withDescriptor:(id)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];
  v10 = unwrapAccelerationStructureDescriptor(a5);

  [v8 deserializePrimitiveAccelerationStructure:v9 fromBytes:a4 withDescriptor:v10];
}

- (void)deserializeInstanceAccelerationStructure:(id)a3 fromBytes:(const void *)a4 primitiveAccelerationStructures:(id)a5 withDescriptor:(id)a6
{
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a5, "count")}];
  if ([a5 count])
  {
    v12 = 0;
    v13 = 1;
    do
    {
      [v11 addObject:{objc_msgSend(objc_msgSend(a5, "objectAtIndexedSubscript:", v12), "baseObject")}];
      v12 = v13;
    }

    while ([a5 count] > v13++);
  }

  v15 = [(MTLToolsObject *)self baseObject];
  v16 = [a3 baseObject];
  v17 = unwrapAccelerationStructureDescriptor(a6);

  [v15 deserializeInstanceAccelerationStructure:v16 fromBytes:a4 primitiveAccelerationStructures:v11 withDescriptor:v17];
}

- (BOOL)isRTZRoundingSupported
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isRTZRoundingSupported];
}

- (BOOL)supportsTextureWriteRoundingMode:(int64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 supportsTextureWriteRoundingMode:a3];
}

- (int64_t)defaultTextureWriteRoundingMode
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 defaultTextureWriteRoundingMode];
}

- (BOOL)isAnisoSampleFixSupported
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isAnisoSampleFixSupported];
}

- (id)newVisibleFunctionTableWithDescriptor:(id)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [(MTLToolsResource *)[MTLToolsVisibleFunctionTable alloc] initWithBaseObject:result parent:self];

    return v6;
  }

  return result;
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [(MTLToolsResource *)[MTLToolsIntersectionFunctionTable alloc] initWithBaseObject:result parent:self];

    return v6;
  }

  return result;
}

- (id)newProfileWithExecutionSize:(unint64_t)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [(MTLToolsObject *)[MTLToolsDeadlineProfile alloc] initWithBaseObject:result parent:self];

    return v6;
  }

  return result;
}

- (id)unwrapMTLCommandBufferDescriptor:(id)a3 alwaysCopy:(BOOL)a4
{
  v4 = a4;
  if (![a3 deadlineProfile] && !v4)
  {
    return a3;
  }

  v7 = [a3 copy];
  v8 = [a3 copy];
  v9 = [v8 deadlineProfile];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MTLToolsDevice unwrapMTLCommandBufferDescriptor:alwaysCopy:];
    }
  }

  [v8 setDeadlineProfile:{objc_msgSend(v9, "baseObject")}];

  return v7;
}

- (BOOL)supportsBufferlessClientStorageTexture
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsBufferlessClientStorageTexture];
}

- (BOOL)supportsComputeMemoryBarrier
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsComputeMemoryBarrier];
}

- (BOOL)supportsRenderMemoryBarrier
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRenderMemoryBarrier];
}

- (BOOL)supportsPartialRenderMemoryBarrier
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsPartialRenderMemoryBarrier];
}

- (BOOL)supportsArgumentBuffersTier2
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsArgumentBuffersTier2];
}

- (BOOL)supportsReadWriteTextureArgumentsTier2
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsReadWriteTextureArgumentsTier2];
}

- (BOOL)supportsStreamingCodecSignaling
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsStreamingCodecSignaling];
}

- (BOOL)supportsProgrammableSamplePositions
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsProgrammableSamplePositions];
}

- (BOOL)supportsLargeFramebufferConfigs
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsLargeFramebufferConfigs];
}

- (BOOL)supportsCustomBorderColor
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsCustomBorderColor];
}

- (BOOL)supportsSamplerAddressModeClampToHalfBorder
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsSamplerAddressModeClampToHalfBorder];
}

- (BOOL)supportsBCTextureCompression
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsBCTextureCompression];
}

- (BOOL)supports3DBCTextures
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supports3DBCTextures];
}

- (BOOL)supportsRGBA10A2Gamma
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRGBA10A2Gamma];
}

- (BOOL)supportsBGR10A2
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsBGR10A2];
}

- (BOOL)supportsPrimitiveRestartOverride
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsPrimitiveRestartOverride];
}

- (BOOL)supportsGlobalVariableRelocation
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsGlobalVariableRelocation];
}

- (BOOL)supportsGlobalVariableRelocationRender
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsGlobalVariableRelocationRender];
}

- (BOOL)supportsGlobalVariableRelocationCompute
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsGlobalVariableRelocationCompute];
}

- (BOOL)supportsTLS
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsTLS];
}

- (BOOL)supportsGlobalVariableBindings
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsGlobalVariableBindings];
}

- (BOOL)supportsGlobalVariableBindingInDylibs
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsGlobalVariableBindingInDylibs];
}

- (BOOL)supports32bpcMSAATextures
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supports32bpcMSAATextures];
}

- (BOOL)supports32BitMSAA
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supports32BitMSAA];
}

- (BOOL)supports32BitFloatFiltering
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supports32BitFloatFiltering];
}

- (BOOL)supportsQueryTextureLOD
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsQueryTextureLOD];
}

- (BOOL)supportsVertexAmplification
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsVertexAmplification];
}

- (BOOL)supportsSamplerReductionMode
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsSamplerReductionMode];
}

- (BOOL)supportsPlacementHeaps
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsPlacementHeaps];
}

- (BOOL)supportsOpenCLTextureWriteSwizzles
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsOpenCLTextureWriteSwizzles];
}

- (BOOL)supportsPullModelInterpolation
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsPullModelInterpolation];
}

- (BOOL)supportsInt64
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsInt64];
}

- (BOOL)supportsFixedLinePointFillDepthGradient
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsFixedLinePointFillDepthGradient];
}

- (BOOL)supportsLateEvalEvent
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsLateEvalEvent];
}

- (BOOL)supportsNonZeroTextureWriteLOD
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsNonZeroTextureWriteLOD];
}

- (BOOL)supportsSharedTextureHandles
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsSharedTextureHandles];
}

- (BOOL)supportsBufferPrefetchStatistics
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsBufferPrefetchStatistics];
}

- (BOOL)supportsLimitedYUVFormats
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsLimitedYUVFormats];
}

- (BOOL)supportsNonPrivateDepthStencilTextures
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsNonPrivateDepthStencilTextures];
}

- (BOOL)supportsNonPrivateMSAATextures
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsNonPrivateMSAATextures];
}

- (BOOL)supportsSharedStorageHeapResources
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsSharedStorageHeapResources];
}

- (BOOL)supportsSharedStorageTextures
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsSharedStorageTextures];
}

- (BOOL)supportsLinearTextureFromSharedBuffer
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsLinearTextureFromSharedBuffer];
}

- (BOOL)supportsPipelineLibraries
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsPipelineLibraries];
}

- (BOOL)supportsFragmentOnlyEncoders
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsFragmentOnlyEncoders];
}

- (BOOL)supportsBufferWithIOSurface
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsBufferWithIOSurface];
}

- (BOOL)supportsProgrammableBlending
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsProgrammableBlending];
}

- (BOOL)supportsRenderToLinearTextures
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRenderToLinearTextures];
}

- (BOOL)supportsMemorylessRenderTargets
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsMemorylessRenderTargets];
}

- (BOOL)supportsFastMathInfNaNPropagation
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsFastMathInfNaNPropagation];
}

- (BOOL)supportsInvariantVertexPosition
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsInvariantVertexPosition];
}

- (BOOL)supportsShaderLODAverage
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsShaderLODAverage];
}

- (BOOL)supportsRelaxedTextureViewRequirements
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRelaxedTextureViewRequirements];
}

- (BOOL)supportsSeparateDepthStencil
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsSeparateDepthStencil];
}

- (BOOL)supportsGPUStatistics
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsGPUStatistics];
}

- (BOOL)supportsCompressedTextureViewSPI
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsCompressedTextureViewSPI];
}

- (BOOL)supportsRenderTargetTextureRotation
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRenderTargetTextureRotation];
}

- (BOOL)supportsDynamicControlPointCount
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsDynamicControlPointCount];
}

- (BOOL)supportsIABHashForTools
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsIABHashForTools];
}

- (BOOL)supportsBinaryArchives
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsBinaryArchives];
}

- (BOOL)supportsBinaryLibraries
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsBinaryLibraries];
}

- (BOOL)supportsDeadlineProfile
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsDeadlineProfile];
}

- (BOOL)supportsFillTexture
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsFillTexture];
}

- (BOOL)supportsSetThreadgroupPackingDisabled
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsSetThreadgroupPackingDisabled];
}

- (BOOL)supportsASTCTextureCompression
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsASTCTextureCompression];
}

- (BOOL)supportsExtendedYUVFormats
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsExtendedYUVFormats];
}

- (BOOL)supportsPublicXR10Formats
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsPublicXR10Formats];
}

- (BOOL)supportsSRGBwrites
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsSRGBwrites];
}

- (BOOL)supportsDepthClipMode
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsDepthClipMode];
}

- (BOOL)supportsResourceHeaps
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsResourceHeaps];
}

- (BOOL)supportsArgumentBuffers
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsArgumentBuffers];
}

- (BOOL)supportsPacked32TextureBufferWrites
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsPacked32TextureBufferWrites];
}

- (BOOL)supports3DASTCTextures
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supports3DASTCTextures];
}

- (BOOL)supportsExtendedXR10Formats
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsExtendedXR10Formats];
}

- (BOOL)supportsFragmentBufferWrites
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsFragmentBufferWrites];
}

- (BOOL)supportsCountingOcclusionQuery
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsCountingOcclusionQuery];
}

- (BOOL)supportsBaseVertexInstanceDrawing
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsBaseVertexInstanceDrawing];
}

- (BOOL)supportsIndirectDrawAndDispatch
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsIndirectDrawAndDispatch];
}

- (BOOL)supportsTessellation
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsTessellation];
}

- (BOOL)supportsReadWriteBufferArguments
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsReadWriteBufferArguments];
}

- (BOOL)supportsArrayOfTextures
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsArrayOfTextures];
}

- (BOOL)supportsArrayOfSamplers
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsArrayOfSamplers];
}

- (BOOL)supportsCombinedMSAAStoreAndResolveAction
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsCombinedMSAAStoreAndResolveAction];
}

- (BOOL)supportsMutableTier1ArgumentBuffers
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsMutableTier1ArgumentBuffers];
}

- (BOOL)supportsSamplerCompareFunction
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsSamplerCompareFunction];
}

- (BOOL)supportsMSAADepthResolve
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsMSAADepthResolve];
}

- (BOOL)supportsMSAAStencilResolve
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsMSAAStencilResolve];
}

- (BOOL)supportsMSAADepthResolveFilter
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsMSAADepthResolveFilter];
}

- (BOOL)supportsGFXIndirectCommandBuffers
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsGFXIndirectCommandBuffers];
}

- (BOOL)supportsCMPIndirectCommandBuffers
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsCMPIndirectCommandBuffers];
}

- (BOOL)supportsIndirectStageInRegion
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsIndirectStageInRegion];
}

- (BOOL)supportsIndirectTextures
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsIndirectTextures];
}

- (BOOL)supportsNorm16BCubicFiltering
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsNorm16BCubicFiltering];
}

- (BOOL)supportsTextureOutOfBoundsReads
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsTextureOutOfBoundsReads];
}

- (BOOL)supportsTextureSwizzle
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsTextureSwizzle];
}

- (BOOL)supportsAlphaYUVFormats
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsAlphaYUVFormats];
}

- (BOOL)supportsMemoryOrderAtomics
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsMemoryOrderAtomics];
}

- (BOOL)supportsQuadGroup
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsQuadGroup];
}

- (BOOL)supportsRenderTextureWrites
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRenderTextureWrites];
}

- (BOOL)supportsImageBlocks
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsImageBlocks];
}

- (BOOL)supportsTileShaders
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsTileShaders];
}

- (BOOL)supportsImageBlockSampleCoverageControl
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsImageBlockSampleCoverageControl];
}

- (BOOL)supportsNativeHardwareFP16
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsNativeHardwareFP16];
}

- (BOOL)supportsPostDepthCoverage
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsPostDepthCoverage];
}

- (BOOL)supportsMipLevelsSmallerThanBlockSize
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsMipLevelsSmallerThanBlockSize];
}

- (BOOL)supportsNonUniformThreadgroupSize
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsNonUniformThreadgroupSize];
}

- (BOOL)supportsReadWriteTextureArguments
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsReadWriteTextureArguments];
}

- (BOOL)supportsReadWriteTextureCubeArguments
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsReadWriteTextureCubeArguments];
}

- (BOOL)supportsTextureCubeArray
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsTextureCubeArray];
}

- (BOOL)supportsQuadShufflesAndBroadcast
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsQuadShufflesAndBroadcast];
}

- (BOOL)supportsConcurrentComputeDispatch
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsConcurrentComputeDispatch];
}

- (BOOL)supportsRenderPassWithoutRenderTarget
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRenderPassWithoutRenderTarget];
}

- (BOOL)supportsRasterOrderGroups
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRasterOrderGroups];
}

- (BOOL)supportsRasterOrderGroupsColorAttachment
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRasterOrderGroupsColorAttachment];
}

- (BOOL)supportsDynamicAttributeStride
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsDynamicAttributeStride];
}

- (BOOL)supportsLinearTexture2DArray
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsLinearTexture2DArray];
}

- (BOOL)supportsNonSquareTileShaders
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsNonSquareTileShaders];
}

- (BOOL)supportsSeparateVisibilityAndShadingRate
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsSeparateVisibilityAndShadingRate];
}

- (BOOL)supports2DLinearTexArraySPI
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supports2DLinearTexArraySPI];
}

- (BOOL)supportsLayeredRendering
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsLayeredRendering];
}

- (BOOL)supportsViewportAndScissorArray
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsViewportAndScissorArray];
}

- (BOOL)supportsIndirectTessellation
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsIndirectTessellation];
}

- (BOOL)supportsMSAAStencilResolveFilter
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsMSAAStencilResolveFilter];
}

- (BOOL)supportsStencilFeedback
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsStencilFeedback];
}

- (BOOL)supportsFP32TessFactors
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsFP32TessFactors];
}

- (BOOL)supportsUnalignedVertexFetch
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsUnalignedVertexFetch];
}

- (BOOL)supportsExtendedVertexFormats
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsExtendedVertexFormats];
}

- (BOOL)supportsResourceDetachBacking
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsResourceDetachBacking];
}

- (BOOL)supportsBufferWithAddressRanges
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsBufferWithAddressRanges];
}

- (BOOL)supportsHeapWithAddressRanges
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsHeapWithAddressRanges];
}

- (BOOL)supportsSIMDGroup
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsSIMDGroup];
}

- (BOOL)supportsShaderMinLODClamp
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsShaderMinLODClamp];
}

- (BOOL)supportsSIMDShufflesAndBroadcast
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsSIMDShufflesAndBroadcast];
}

- (BOOL)supportsWritableArrayOfTextures
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsWritableArrayOfTextures];
}

- (BOOL)supportsVariableRateRasterization
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsVariableRateRasterization];
}

- (BOOL)supportsYCBCRFormats
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsYCBCRFormats];
}

- (BOOL)supportsYCBCRFormatsPQ
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsYCBCRFormatsPQ];
}

- (BOOL)supportsYCBCRFormats12
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsYCBCRFormats12];
}

- (BOOL)supportsYCBCRFormatsXR
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsYCBCRFormatsXR];
}

- (BOOL)supportsASTCHDRTextureCompression
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsASTCHDRTextureCompression];
}

- (BOOL)supportsSparseTextures
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsSparseTextures];
}

- (BOOL)supportsSparseHeaps
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsSparseHeaps];
}

- (BOOL)supportsIndirectWritableTextures
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsIndirectWritableTextures];
}

- (BOOL)supportsFunctionPointers
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsFunctionPointers];
}

- (BOOL)supportsDynamicLibraries
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsDynamicLibraries];
}

- (BOOL)supportsStatefulDynamicLibraries
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsStatefulDynamicLibraries];
}

- (BOOL)supportsRenderDynamicLibraries
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRenderDynamicLibraries];
}

- (BOOL)supportsFunctionPointersFromRender
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsFunctionPointersFromRender];
}

- (BOOL)supportsSharedFunctionTables
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsSharedFunctionTables];
}

- (BOOL)supportsRaytracingFromRender
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRaytracingFromRender];
}

- (BOOL)supportsPrimitiveMotionBlur
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsPrimitiveMotionBlur];
}

- (BOOL)supportsRayTracingExtendedVertexFormats
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRayTracingExtendedVertexFormats];
}

- (BOOL)supportsHeapAccelerationStructureAllocation
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsHeapAccelerationStructureAllocation];
}

- (BOOL)supportsRayTracingPerPrimitiveData
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRayTracingPerPrimitiveData];
}

- (BOOL)supportsRayTracingTraversalMetrics
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRayTracingTraversalMetrics];
}

- (BOOL)supportsRayTracingBuffersFromTables
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRayTracingBuffersFromTables];
}

- (BOOL)supportsRayTracingAccelerationStructureCPUDeserialization
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRayTracingAccelerationStructureCPUDeserialization];
}

- (BOOL)supportsRayTracingMultiLevelInstancing
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRayTracingMultiLevelInstancing];
}

- (BOOL)supportsRayTracingIndirectInstanceAccelerationStructureBuild
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRayTracingIndirectInstanceAccelerationStructureBuild];
}

- (BOOL)supportsRayTracingGPUTableUpdateBuffers
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRayTracingGPUTableUpdateBuffers];
}

- (BOOL)supportsRayTracingCurves
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRayTracingCurves];
}

- (BOOL)supportsShaderBarycentricCoordinates
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsShaderBarycentricCoordinates];
}

- (BOOL)supportsBlackOrWhiteSamplerBorderColors
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsBlackOrWhiteSamplerBorderColors];
}

- (BOOL)supportsMirrorClampToEdgeSamplerMode
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsMirrorClampToEdgeSamplerMode];
}

- (BOOL)supportsSIMDReduction
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsSIMDReduction];
}

- (BOOL)supportsDepthClipModeClampExtended
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsDepthClipModeClampExtended];
}

- (BOOL)supportsTexture2DMultisampleArray
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsTexture2DMultisampleArray];
}

- (BOOL)supportsForceSeamsOnCubemaps
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsForceSeamsOnCubemaps];
}

- (BOOL)supportsFloat16BCubicFiltering
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsFloat16BCubicFiltering];
}

- (BOOL)supportsFloat16InfNanFiltering
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsFloat16InfNanFiltering];
}

- (BOOL)supportsRTZRounding
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRTZRounding];
}

- (BOOL)supportsAnisoSampleFix
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsAnisoSampleFix];
}

- (BOOL)supportsYCBCRPackedFormatsPQ
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsYCBCRPackedFormatsPQ];
}

- (BOOL)supportsYCBCRPackedFormats12
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsYCBCRPackedFormats12];
}

- (BOOL)supportsYCBCRPackedFormatsXR
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsYCBCRPackedFormatsXR];
}

- (BOOL)supportsBufferBoundsChecking
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsBufferBoundsChecking];
}

- (BOOL)supportsForkJoin
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsForkJoin];
}

- (BOOL)supportsDevicePartitioning
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsDevicePartitioning];
}

- (BOOL)supportsComputeCompressedTextureWrite
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsComputeCompressedTextureWrite];
}

- (BOOL)supportsSIMDGroupMatrix
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsSIMDGroupMatrix];
}

- (BOOL)supportsInterchangeTiled
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsInterchangeTiled];
}

- (BOOL)supportsQuadReduction
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsQuadReduction];
}

- (BOOL)supportsCommandQueueBarriers
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsCommandQueueBarriers];
}

- (BOOL)supportsVirtualSubstreams
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsVirtualSubstreams];
}

- (BOOL)supportsTensors
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsTensors];
}

- (BOOL)supportsMTL4CommandQueue
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsMTL4CommandQueue];
}

- (BOOL)supportsMTL4CommandAllocator
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsMTL4CommandAllocator];
}

- (BOOL)supportsMTL4RenderCommandEncoder
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsMTL4RenderCommandEncoder];
}

- (BOOL)supportsMTL4ComputeCommandEncoder
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsMTL4ComputeCommandEncoder];
}

- (BOOL)supportsMTLTextureViewPools
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsMTLTextureViewPools];
}

- (BOOL)supportsMTL4PlacementSparse
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsMTL4PlacementSparse];
}

- (BOOL)supportsMTL4Compiler
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsMTL4Compiler];
}

- (BOOL)supportsMTL4LateBoundRenderTargets
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsMTL4LateBoundRenderTargets];
}

- (BOOL)supportsMTL4PSOSpecialization
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsMTL4PSOSpecialization];
}

- (BOOL)supportsMachineLearningCommandEncoders
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsMachineLearningCommandEncoders];
}

- (BOOL)supportsMTL4Counters
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsMTL4Counters];
}

- (BOOL)supportsSIMDShuffleAndFill
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsSIMDShuffleAndFill];
}

- (BOOL)supportsBfloat16Format
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsBfloat16Format];
}

- (BOOL)supportsSparseDepthAttachments
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsSparseDepthAttachments];
}

- (BOOL)supportsAtomicUlongVoidMinMax
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsAtomicUlongVoidMinMax];
}

- (BOOL)supportsLossyCompression
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsLossyCompression];
}

- (BOOL)supportsAtomicFloat
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsAtomicFloat];
}

- (BOOL)supportsMeshShaders
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsMeshShaders];
}

- (BOOL)supportsFunctionPointersFromMesh
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsFunctionPointersFromMesh];
}

- (BOOL)supportsMeshShadersInICB
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsMeshShadersInICB];
}

- (BOOL)supportsMeshRenderDynamicLibraries
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsMeshRenderDynamicLibraries];
}

- (BOOL)supportsBfloat16Buffers
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsBfloat16Buffers];
}

- (BOOL)supportsCommandBufferJump
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsCommandBufferJump];
}

- (BOOL)supportsColorSpaceConversionMatrixSelection
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsColorSpaceConversionMatrixSelection];
}

- (BOOL)supportsPerPlaneCompression
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsPerPlaneCompression];
}

- (BOOL)supportsAtomicWaitNotify
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsAtomicWaitNotify];
}

- (BOOL)supportsConditionalLoadStore
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsConditionalLoadStore];
}

- (BOOL)supportsStackOverflowErrorCode
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsStackOverflowErrorCode];
}

- (BOOL)supportsRayTracingICBs
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRayTracingICBs];
}

- (BOOL)supportsPerformanceStateAssertion
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsPerformanceStateAssertion];
}

- (BOOL)supportsAIRNTBinaryArchiveSpecializedFunctions
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsAIRNTBinaryArchiveSpecializedFunctions];
}

- (BOOL)supportsAIRNTBinaryArchiveFunctionPointers
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsAIRNTBinaryArchiveFunctionPointers];
}

- (BOOL)supportsAIRNTBinaryArchiveStitchedFunctions
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsAIRNTBinaryArchiveStitchedFunctions];
}

- (BOOL)supportsExplicitVisibilityGroups
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsExplicitVisibilityGroups];
}

- (BOOL)supportsRayTracingMatrixLayout
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRayTracingMatrixLayout];
}

- (BOOL)supportsRayTracingDirectIntersectionResultAccess
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRayTracingDirectIntersectionResultAccess];
}

- (BOOL)supportsRayTracingPerComponentMotionInterpolation
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRayTracingPerComponentMotionInterpolation];
}

- (BOOL)supportsExtendedSamplerLODBiasRange
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsExtendedSamplerLODBiasRange];
}

- (BOOL)supportsDepthBoundsTesting
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsDepthBoundsTesting];
}

- (BOOL)supportsExtendedIndirectRenderCommand
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsExtendedIndirectRenderCommand];
}

- (BOOL)supportsIntersectionFunctionBuffers
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsIntersectionFunctionBuffers];
}

- (BOOL)supportsMXU
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsMXU];
}

- (BOOL)supportsFP8
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsFP8];
}

- (BOOL)supportsConditionalTileDispatch
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsConditionalTileDispatch];
}

- (BOOL)supportsTextureAccessPatterns
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsTextureAccessPatterns];
}

- (BOOL)supportsDeviceCoherency
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsDeviceCoherency];
}

- (id)getDynamicLibraryForBaseObject:(id)a3
{
  dynamicLibraryObjectCache = self->dynamicLibraryObjectCache;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__MTLToolsDevice_getDynamicLibraryForBaseObject___block_invoke;
  v5[3] = &unk_2787B3BA8;
  v5[4] = a3;
  v5[5] = self;
  return [(MTLToolsObjectCache *)dynamicLibraryObjectCache getCachedObjectForKey:a3 onMiss:v5];
}

uint64_t __49__MTLToolsDevice_getDynamicLibraryForBaseObject___block_invoke(uint64_t a1)
{
  v2 = [MTLToolsDynamicLibrary alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [(MTLToolsObject *)v2 initWithBaseObject:v3 parent:v4];
}

- (id)getFunctionForBaseObject:(id)a3 library:(id)a4
{
  functionObjectCache = self->functionObjectCache;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__MTLToolsDevice_getFunctionForBaseObject_library___block_invoke;
  v6[3] = &unk_2787B3BD0;
  v6[4] = a3;
  v6[5] = a4;
  return [(MTLToolsObjectCache *)functionObjectCache getCachedObjectForKey:a3 onMiss:v6];
}

uint64_t __51__MTLToolsDevice_getFunctionForBaseObject_library___block_invoke(uint64_t a1)
{
  v2 = [MTLToolsFunction alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [(MTLToolsFunction *)v2 initWithFunction:v3 library:v4];
}

- (id)getDepthStencilStateForBaseObject:(id)a3 descriptor:(id)a4
{
  depthStencilObjectCache = self->depthStencilObjectCache;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__MTLToolsDevice_getDepthStencilStateForBaseObject_descriptor___block_invoke;
  v6[3] = &unk_2787B3D38;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = self;
  return [(MTLToolsObjectCache *)depthStencilObjectCache getCachedObjectForKey:a3 onMiss:v6];
}

uint64_t __63__MTLToolsDevice_getDepthStencilStateForBaseObject_descriptor___block_invoke(void *a1)
{
  v2 = [MTLToolsDepthStencilState alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  return [(MTLToolsDepthStencilState *)v2 initWithDepthStencilState:v3 descriptor:v4 device:v5];
}

- (id)getSamplerStateForBaseObject:(id)a3 descriptor:(id)a4
{
  samplerObjectCache = self->samplerObjectCache;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__MTLToolsDevice_getSamplerStateForBaseObject_descriptor___block_invoke;
  v6[3] = &unk_2787B3D60;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = self;
  return [(MTLToolsObjectCache *)samplerObjectCache getCachedObjectForKey:a3 onMiss:v6];
}

uint64_t __58__MTLToolsDevice_getSamplerStateForBaseObject_descriptor___block_invoke(void *a1)
{
  v2 = [MTLToolsSamplerState alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  return [(MTLToolsSamplerState *)v2 initWithSamplerState:v3 descriptor:v4 device:v5];
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapAccelerationStructureSizeAndAlignWithSize:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  v5 = [v4 heapAccelerationStructureSizeAndAlignWithSize:a3];
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapAccelerationStructureSizeAndAlignWithDescriptor:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = unwrapAccelerationStructureDescriptor(a3);

  v6 = [v4 heapAccelerationStructureSizeAndAlignWithDescriptor:v5];
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

- (id)newArgumentEncoderWithBufferBinding:(id)a3
{
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  v5 = [(MTLToolsObject *)[MTLToolsArgumentEncoder alloc] initWithBaseObject:v4 parent:self];

  return v5;
}

- (id)newIOHandleWithURL:(id)a3 error:(id *)a4
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];
  v6 = [[MTLToolsIOHandle alloc] initWithBaseObject:v5 parent:self];

  return v6;
}

- (id)newIOHandleWithURL:(id)a3 compressionType:(int64_t)a4 error:(id *)a5
{
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  v7 = [[MTLToolsIOHandle alloc] initWithBaseObject:v6 parent:self];

  return v7;
}

- (id)newUncachedIOHandleWithURL:(id)a3 error:(id *)a4
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];
  v6 = [[MTLToolsIOHandle alloc] initWithBaseObject:v5 parent:self];

  return v6;
}

- (id)newUncachedIOHandleWithURL:(id)a3 compressionType:(int64_t)a4 error:(id *)a5
{
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  v7 = [[MTLToolsIOHandle alloc] initWithBaseObject:v6 parent:self];

  return v7;
}

- (id)newIOCommandQueueWithDescriptor:(id)a3 error:(id *)a4
{
  v7 = [a3 copy];
  if ([a3 scratchBufferAllocator])
  {
    v8 = -[MTLToolsIOScratchBufferAllocator initWithBaseObject:parent:]([MTLToolsIOScratchBufferAllocator alloc], "initWithBaseObject:parent:", [a3 scratchBufferAllocator], self);
    [v7 setScratchBufferAllocator:v8];
  }

  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  v10 = [[MTLToolsIOCommandQueue alloc] initWithBaseObject:v9 parent:self];

  return v10;
}

- (id)newPerformanceStateAssertion:(int64_t)a3 error:(id *)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [(MTLToolsObject *)[MTLToolsPerformanceStateAssertion alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (int64_t)currentPerformanceState
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 currentPerformanceState];
}

- (id)lookupRecompiledBinaryArchive:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 lookupRecompiledBinaryArchive:a3];
}

- (unint64_t)maximumConcurrentCompilationTaskCount
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maximumConcurrentCompilationTaskCount];
}

- (BOOL)requiresLegacyCompilerProcessesCount
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 requiresLegacyCompilerProcessesCount];
}

- (unint64_t)maxAccelerationStructureTraversalDepth
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 maxAccelerationStructureTraversalDepth];
}

- (BOOL)requiresBFloat16Emulation
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 requiresBFloat16Emulation];
}

- (id)newTextureWithDescriptor:(id)a3 iosurface:(__IOSurface *)a4 plane:(unint64_t)a5 slice:(unint64_t)a6
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [(MTLToolsResource *)[MTLToolsTexture alloc] initWithBaseObject:result parent:self];

    return v9;
  }

  return result;
}

- (id)functionHandleWithFunction:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = MTLFunctionHandleToToolsFunctionHandle(v6, a3, self);
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (id)functionHandleWithFunction:(id)a3 resourceIndex:(unint64_t)a4
{
  v7 = objc_autoreleasePoolPush();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v9 = MTLFunctionHandleToToolsFunctionHandle(v8, a3, self);
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v7);

  return v9;
}

- (id)newResidencySetWithDescriptor:(id)a3 error:(id *)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTLToolsResidencySet alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)newTensorWithDescriptor:(id)a3 error:(id *)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [(MTLToolsResource *)[MTLToolsTensor alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (int)llvmVersion
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 llvmVersion];
}

- (id)newMTL4CommandQueue
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v4 = result;
    v5 = [[MTL4ToolsCommandQueue alloc] initWithBaseObject:result parent:self];

    return v5;
  }

  return result;
}

- (id)newMTL4CommandQueueWithDescriptor:(id)a3 error:(id *)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTL4ToolsCommandQueue alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)newCommandBuffer
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v4 = result;
    v5 = [[MTL4ToolsCommandBuffer alloc] initWithBaseObject:result parent:self];

    return v5;
  }

  return result;
}

- (id)newCommandAllocator
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v4 = result;
    v5 = [[MTL4ToolsCommandAllocator alloc] initWithBaseObject:result parent:self];

    return v5;
  }

  return result;
}

- (id)newCommandAllocatorWithDescriptor:(id)a3 error:(id *)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTL4ToolsCommandAllocator alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)newArgumentTableWithDescriptor:(id)a3 error:(id *)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTL4ToolsArgumentTable alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)newCompilerWithDescriptor:(id)a3 error:(id *)a4
{
  v13 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [(MTLToolsDevice *)self newUnwrappedMTL4CompilerDescriptor:a3];
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];

  if (a4)
  {
    v10 = v13;
  }

  if (v9)
  {
    v11 = [[MTL4ToolsCompiler alloc] initWithBaseObject:v9 parent:self];
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v7);
  if (a4)
  {
    *a4 = v13;
  }

  return v11;
}

- (id)newArchiveWithURL:(id)a3 error:(id *)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTL4ToolsArchive alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)newPipelineDataSetSerializerWithDescriptor:(id)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [[MTL4ToolsPipelineDataSetSerializer alloc] initWithBaseObject:result parent:self];

    return v6;
  }

  return result;
}

- (id)newLibraryWithMPSGraphPackageURL:(id)a3 name:(id)a4 error:(id *)a5
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v7 = result;
    v8 = [(MTLToolsObject *)[MTLToolsLibrary alloc] initWithBaseObject:result parent:self];

    return v8;
  }

  return result;
}

- (id)newTextureViewPoolWithDescriptor:(id)a3 error:(id *)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTLToolsTextureViewPool alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4 placementSparsePageSize:(int64_t)a5
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v7 = result;
    v8 = [(MTLToolsResource *)[MTLToolsBuffer alloc] initWithBaseObject:result parent:self];

    return v8;
  }

  return result;
}

- (id)newCounterHeapWithDescriptor:(id)a3 error:(id *)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTL4ToolsCounterHeap alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)mtlTensorFromGpuResourceID:(MTLResourceID)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = [(MTLToolsResource *)[MTLToolsTensor alloc] initWithBaseObject:v6 parent:self];
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)tensorSizeAndAlignWithDescriptor:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  v5 = [v4 tensorSizeAndAlignWithDescriptor:a3];
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (unint64_t)queryTimestampFrequency
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 queryTimestampFrequency];
}

- (unint64_t)sizeOfCounterHeapEntry:(int64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 sizeOfCounterHeapEntry:a3];
}

- (id)functionHandleWithBinaryFunction:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = MTLFunctionHandleToToolsFunctionHandleWithBinaryFunction(v6, a3, self);
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (id)newUnwrappedMTL4FunctionDescriptor:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a3 copy];
    [v5 setLibrary:{objc_msgSend(objc_msgSend(v5, "library"), "baseObject")}];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [a3 copy];
      v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(v5, "functionDescriptors"), "count")}];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = [v5 functionDescriptors];
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [v6 addObject:{-[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", *(*(&v16 + 1) + 8 * i))}];
          }

          v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v9);
      }

      [v5 setFunctionDescriptors:v6];
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v13 = [a3 copy];
      v5 = v13;
      if (isKindOfClass)
      {
        [v13 setFunctionDescriptor:{-[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", objc_msgSend(v13, "functionDescriptor"))}];
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)newUnwrappedStaticLinkingDescriptor:(id)a3
{
  v3 = a3;
  v54 = *MEMORY[0x277D85DE8];
  v5 = [a3 copy];
  v6 = objc_autoreleasePoolPush();
  if ([objc_msgSend(v3 "functionDescriptors")])
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(v3, "functionDescriptors"), "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v8 = [v3 functionDescriptors];
    v9 = [v8 countByEnumeratingWithState:&v46 objects:v53 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v47;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v47 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 addObject:{-[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", *(*(&v46 + 1) + 8 * i))}];
        }

        v10 = [v8 countByEnumeratingWithState:&v46 objects:v53 count:16];
      }

      while (v10);
    }

    [v5 setFunctionDescriptors:v7];
  }

  if ([objc_msgSend(v3 "privateFunctionDescriptors")])
  {
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(v3, "privateFunctionDescriptors"), "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v14 = [v3 privateFunctionDescriptors];
    v15 = [v14 countByEnumeratingWithState:&v42 objects:v52 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v43;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v43 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [v13 addObject:{-[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", *(*(&v42 + 1) + 8 * j))}];
        }

        v16 = [v14 countByEnumeratingWithState:&v42 objects:v52 count:16];
      }

      while (v16);
    }

    [v5 setPrivateFunctionDescriptors:v13];
  }

  if ([objc_msgSend(v3 "groups")])
  {
    v29 = v6;
    v19 = [MEMORY[0x277CBEB38] dictionary];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = [v3 groups];
    v32 = [obj countByEnumeratingWithState:&v38 objects:v51 count:16];
    if (v32)
    {
      v31 = *v39;
      v33 = v3;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v39 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v38 + 1) + 8 * k);
          if ([objc_msgSend(objc_msgSend(v3 "groups")])
          {
            [v19 setObject:objc_msgSend(MEMORY[0x277CBEB18] forKeyedSubscript:{"arrayWithCapacity:", objc_msgSend(objc_msgSend(objc_msgSend(v33, "groups"), "objectForKeyedSubscript:", v21), "count")), v21}];
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v22 = [objc_msgSend(v33 "groups")];
            v23 = [v22 countByEnumeratingWithState:&v34 objects:v50 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v35;
              do
              {
                for (m = 0; m != v24; ++m)
                {
                  if (*v35 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  [objc_msgSend(v19 objectForKeyedSubscript:{v21), "addObject:", -[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", *(*(&v34 + 1) + 8 * m))}];
                }

                v24 = [v22 countByEnumeratingWithState:&v34 objects:v50 count:16];
              }

              while (v24);
            }
          }

          v3 = v33;
        }

        v32 = [obj countByEnumeratingWithState:&v38 objects:v51 count:16];
      }

      while (v32);
    }

    [v5 setGroups:v19];
    v6 = v29;
  }

  objc_autoreleasePoolPop(v6);
  v27 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)newUnwrappedMTL4RenderPipelineBinaryFunctionsDescriptor:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = [a3 copy];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(a3, "vertexAdditionalBinaryFunctions"), "count")}];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v6 = [a3 vertexAdditionalBinaryFunctions];
  v7 = [v6 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v54;
    do
    {
      v10 = 0;
      do
      {
        if (*v54 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addObject:{objc_msgSend(*(*(&v53 + 1) + 8 * v10++), "baseObject")}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v8);
  }

  [v4 setVertexAdditionalBinaryFunctions:v5];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(a3, "fragmentAdditionalBinaryFunctions"), "count")}];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v12 = [a3 fragmentAdditionalBinaryFunctions];
  v13 = [v12 countByEnumeratingWithState:&v49 objects:v60 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v50;
    do
    {
      v16 = 0;
      do
      {
        if (*v50 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v11 addObject:{objc_msgSend(*(*(&v49 + 1) + 8 * v16++), "baseObject")}];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v49 objects:v60 count:16];
    }

    while (v14);
  }

  [v4 setFragmentAdditionalBinaryFunctions:v11];
  v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(a3, "tileAdditionalBinaryFunctions"), "count")}];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v18 = [a3 tileAdditionalBinaryFunctions];
  v19 = [v18 countByEnumeratingWithState:&v45 objects:v59 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v46;
    do
    {
      v22 = 0;
      do
      {
        if (*v46 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [v17 addObject:{objc_msgSend(*(*(&v45 + 1) + 8 * v22++), "baseObject")}];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v45 objects:v59 count:16];
    }

    while (v20);
  }

  [v4 setTileAdditionalBinaryFunctions:v17];
  v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(a3, "objectAdditionalBinaryFunctions"), "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v24 = [a3 objectAdditionalBinaryFunctions];
  v25 = [v24 countByEnumeratingWithState:&v41 objects:v58 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v42;
    do
    {
      v28 = 0;
      do
      {
        if (*v42 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [v23 addObject:{objc_msgSend(*(*(&v41 + 1) + 8 * v28++), "baseObject")}];
      }

      while (v26 != v28);
      v26 = [v24 countByEnumeratingWithState:&v41 objects:v58 count:16];
    }

    while (v26);
  }

  [v4 setObjectAdditionalBinaryFunctions:v23];
  v29 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(a3, "meshAdditionalBinaryFunctions"), "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v30 = [a3 meshAdditionalBinaryFunctions];
  v31 = [v30 countByEnumeratingWithState:&v37 objects:v57 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v38;
    do
    {
      v34 = 0;
      do
      {
        if (*v38 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [v29 addObject:{objc_msgSend(*(*(&v37 + 1) + 8 * v34++), "baseObject")}];
      }

      while (v32 != v34);
      v32 = [v30 countByEnumeratingWithState:&v37 objects:v57 count:16];
    }

    while (v32);
  }

  [v4 setMeshAdditionalBinaryFunctions:v29];
  v35 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)newUnwrappedMTL4PipelineDescriptor:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [a3 copy];
      v10 = -[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", [v5 tileFunctionDescriptor]);
      [v5 setTileFunctionDescriptor:v10];

      v9 = -[MTLToolsDevice newUnwrappedStaticLinkingDescriptor:](self, "newUnwrappedStaticLinkingDescriptor:", [a3 staticLinkingDescriptor]);
      [v5 setStaticLinkingDescriptor:v9];
      goto LABEL_5;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [a3 copy];
      v11 = -[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", [v5 objectFunctionDescriptor]);
      [v5 setObjectFunctionDescriptor:v11];

      v12 = -[MTLToolsDevice newUnwrappedStaticLinkingDescriptor:](self, "newUnwrappedStaticLinkingDescriptor:", [a3 objectStaticLinkingDescriptor]);
      [v5 setObjectStaticLinkingDescriptor:v12];

      v13 = -[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", [v5 meshFunctionDescriptor]);
      [v5 setMeshFunctionDescriptor:v13];

      v14 = -[MTLToolsDevice newUnwrappedStaticLinkingDescriptor:](self, "newUnwrappedStaticLinkingDescriptor:", [a3 meshStaticLinkingDescriptor]);
      [v5 setMeshStaticLinkingDescriptor:v14];

      v15 = -[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", [v5 fragmentFunctionDescriptor]);
      [v5 setFragmentFunctionDescriptor:v15];

      v16 = -[MTLToolsDevice newUnwrappedStaticLinkingDescriptor:](self, "newUnwrappedStaticLinkingDescriptor:", [a3 fragmentStaticLinkingDescriptor]);
      [v5 setFragmentStaticLinkingDescriptor:v16];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [a3 copy];
        v17 = -[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", [v5 computeFunctionDescriptor]);
        [v5 setComputeFunctionDescriptor:v17];

        v16 = -[MTLToolsDevice newUnwrappedStaticLinkingDescriptor:](self, "newUnwrappedStaticLinkingDescriptor:", [a3 staticLinkingDescriptor]);
        [v5 setStaticLinkingDescriptor:v16];
      }

      else
      {
        v18 = [a3 isMemberOfClass:objc_opt_class()];
        v19 = [a3 copy];
        v5 = v19;
        if (!v18)
        {
LABEL_13:
          [v5 setOptions:{objc_msgSend(a3, "options")}];
          return v5;
        }

        v16 = -[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", [v19 machineLearningFunctionDescriptor]);
        [v5 setMachineLearningFunctionDescriptor:v16];
      }
    }

    goto LABEL_13;
  }

  v5 = [a3 copy];
  v6 = -[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", [v5 vertexFunctionDescriptor]);
  [v5 setVertexFunctionDescriptor:v6];

  v7 = -[MTLToolsDevice newUnwrappedStaticLinkingDescriptor:](self, "newUnwrappedStaticLinkingDescriptor:", [a3 vertexStaticLinkingDescriptor]);
  [v5 setVertexStaticLinkingDescriptor:v7];

  v8 = -[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", [v5 fragmentFunctionDescriptor]);
  [v5 setFragmentFunctionDescriptor:v8];

  v9 = -[MTLToolsDevice newUnwrappedStaticLinkingDescriptor:](self, "newUnwrappedStaticLinkingDescriptor:", [a3 fragmentStaticLinkingDescriptor]);
  [v5 setFragmentStaticLinkingDescriptor:v9];
LABEL_5:

  return v5;
}

- (id)newUnwrappedMTL4CompilerTaskOptions:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [a3 copy];
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(a3, "lookupArchives"), "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [a3 lookupArchives];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * v10++), "baseObject")}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [v4 setLookupArchives:v5];
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)newUnwrappedMTL4BinaryFunctionDescriptor:(id)a3
{
  v4 = [a3 copy];
  [v4 setFunctionDescriptor:{-[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", objc_msgSend(v4, "functionDescriptor"))}];
  return v4;
}

- (id)newUnwrappedMTL4RenderPipelineDynamicLinkingDescriptor:(id)a3
{
  v5 = [a3 copy];
  v6 = -[MTLToolsDevice newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:](self, "newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:", [a3 vertexLinkingDescriptor]);
  [objc_msgSend(v5 "vertexLinkingDescriptor")];
  [objc_msgSend(v5 "vertexLinkingDescriptor")];

  v7 = -[MTLToolsDevice newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:](self, "newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:", [a3 fragmentLinkingDescriptor]);
  [objc_msgSend(v5 "fragmentLinkingDescriptor")];
  [objc_msgSend(v5 "fragmentLinkingDescriptor")];

  v8 = -[MTLToolsDevice newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:](self, "newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:", [a3 tileLinkingDescriptor]);
  [objc_msgSend(v5 "tileLinkingDescriptor")];
  [objc_msgSend(v5 "tileLinkingDescriptor")];

  v9 = -[MTLToolsDevice newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:](self, "newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:", [a3 objectLinkingDescriptor]);
  [objc_msgSend(v5 "objectLinkingDescriptor")];
  [objc_msgSend(v5 "objectLinkingDescriptor")];

  v10 = -[MTLToolsDevice newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:](self, "newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:", [a3 meshLinkingDescriptor]);
  [objc_msgSend(v5 "meshLinkingDescriptor")];
  [objc_msgSend(v5 "meshLinkingDescriptor")];

  return v5;
}

- (id)newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = [a3 copy];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(a3, "preloadedLibraries"), "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [a3 preloadedLibraries];
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addObject:{objc_msgSend(*(*(&v23 + 1) + 8 * v10++), "baseObject")}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  [v4 setPreloadedLibraries:v5];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(a3, "binaryLinkedFunctions"), "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [a3 binaryLinkedFunctions];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v11 addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * v16++), "baseObject")}];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  [v4 setBinaryLinkedFunctions:v11];
  v17 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)newUnwrappedMTL4CompilerDescriptor:(id)a3
{
  v3 = [a3 copy];
  [v3 setPipelineDataSetSerializer:{objc_msgSend(objc_msgSend(v3, "pipelineDataSetSerializer"), "baseObject")}];
  return v3;
}

- (uint64_t)unwrapMTLCommandBufferDescriptor:alwaysCopy:.cold.1()
{
  v0 = objc_opt_class();
  [NSStringFromClass(v0) UTF8String];
  v1 = objc_opt_class();
  [NSStringFromClass(v1) UTF8String];
  return MTLReportFailure();
}

@end