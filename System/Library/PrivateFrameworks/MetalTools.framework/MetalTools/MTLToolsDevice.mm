@interface MTLToolsDevice
+ (id)newTextureDescriptorFromIOSurface:(__IOSurface *)surface;
+ (id)newTextureDescriptorFromIOSurfaceProperties:(id)properties;
+ (id)newUnwrappedMTLRelocations:(id)relocations;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapAccelerationStructureSizeAndAlignWithDescriptor:(id)descriptor;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapAccelerationStructureSizeAndAlignWithSize:(unint64_t)size;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapBufferSizeAndAlignWithLength:(unint64_t)length options:(unint64_t)options;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapTextureSizeAndAlignWithDescriptor:(id)descriptor;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)tensorSizeAndAlignWithDescriptor:(id)descriptor;
- ($85CD2974BE96D4886BB301820D1C36C2)libraryCacheStats;
- ($85CD2974BE96D4886BB301820D1C36C2)pipelineCacheStats;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)accelerationStructureSizesWithDescriptor:(SEL)descriptor;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)maxThreadsPerThreadgroup;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)sparseTileSizeWithTextureType:(SEL)type pixelFormat:(unint64_t)format sampleCount:(unint64_t)count;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)sparseTileSizeWithTextureType:(SEL)type pixelFormat:(unint64_t)format sampleCount:(unint64_t)count sparsePageSize:(unint64_t)size;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)tileSizeWithSparsePageSize:(SEL)size textureType:(int64_t)type pixelFormat:(unint64_t)format sampleCount:(unint64_t)count;
- (BOOL)areBarycentricCoordsSupported;
- (BOOL)areGPUAssertionsEnabled;
- (BOOL)areProgrammableSamplePositionsSupported;
- (BOOL)areRasterOrderGroupsSupported;
- (BOOL)areWritableHeapsEnabled;
- (BOOL)copyShaderCacheToPath:(id)path;
- (BOOL)deviceOrFeatureProfileSupportsFeatureSet:(unint64_t)set;
- (BOOL)deviceSupportsFeatureSet:(unint64_t)set;
- (BOOL)hasUnifiedMemory;
- (BOOL)isAnisoSampleFixSupported;
- (BOOL)isBCTextureCompressionSupported;
- (BOOL)isClampToHalfBorderSupported;
- (BOOL)isCompatibleWithAccelerationStructure:(id)structure;
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
- (BOOL)mapShaderSampleBufferWithBuffer:(id *)buffer capacity:(unint64_t)capacity size:(unint64_t)size;
- (BOOL)metalAssertionsEnabled;
- (BOOL)requiresBFloat16Emulation;
- (BOOL)requiresLegacyCompilerProcessesCount;
- (BOOL)requiresRaytracingEmulation;
- (BOOL)reserveGPUAddressRange:(_NSRange)range;
- (BOOL)respondsToSelector:(SEL)selector;
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
- (BOOL)supportsCounterSampling:(unint64_t)sampling;
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
- (BOOL)supportsFamily:(int64_t)family;
- (BOOL)supportsFastMathInfNaNPropagation;
- (BOOL)supportsFeatureSet:(unint64_t)set;
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
- (BOOL)supportsPrimitiveType:(unint64_t)type;
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
- (BOOL)supportsRasterizationRateMapWithLayerCount:(unint64_t)count;
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
- (BOOL)supportsSampleCount:(unint64_t)count;
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
- (BOOL)supportsTextureSampleCount:(unint64_t)count;
- (BOOL)supportsTextureSwizzle;
- (BOOL)supportsTextureWriteRoundingMode:(int64_t)mode;
- (BOOL)supportsTileShaders;
- (BOOL)supportsUnalignedVertexFetch;
- (BOOL)supportsVariableRateRasterization;
- (BOOL)supportsVertexAmplification;
- (BOOL)supportsVertexAmplificationCount:(unint64_t)count;
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
- (BOOL)validateDynamicLibraryDescriptor:(id)descriptor error:(id *)error;
- (BOOL)validateDynamicLibraryURL:(id)l error:(id *)error;
- (IndirectArgumentBufferCapabilities)indirectArgumentBufferCapabilities;
- (MTLArchitecture)architecture;
- (MTLGPUBVHBuilder)GPUBVHBuilder;
- (MTLTargetDeviceArchitecture)targetDeviceArchitecture;
- (MTLToolsDevice)initWithBaseObject:(id)object parent:(id)parent;
- (NSArray)counterSets;
- (NSDictionary)pluginData;
- (NSString)name;
- (const)limits;
- (const)targetDeviceInfo;
- (float)maxLineWidth;
- (float)maxPointSize;
- (id)_deviceWrapper;
- (id)copyIOSurfaceSharedTextureProperties:(id)properties;
- (id)deserializeInstanceAccelerationStructureFromBytes:(void *)bytes primitiveAccelerationStructures:(id)structures withDescriptor:(id)descriptor;
- (id)deserializePrimitiveAccelerationStructureFromBytes:(void *)bytes withDescriptor:(id)descriptor;
- (id)endCollectingPipelineDescriptors;
- (id)familyName;
- (id)functionHandleWithBinaryFunction:(id)function;
- (id)functionHandleWithFunction:(id)function;
- (id)functionHandleWithFunction:(id)function resourceIndex:(unint64_t)index;
- (id)getDepthStencilStateForBaseObject:(id)object descriptor:(id)descriptor;
- (id)getDynamicLibraryForBaseObject:(id)object;
- (id)getFunctionForBaseObject:(id)object library:(id)library;
- (id)getMostCompatibleArchitecture:(id)architecture;
- (id)getSamplerStateForBaseObject:(id)object descriptor:(id)descriptor;
- (id)loadDynamicLibrariesForComputeDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (id)loadDynamicLibrariesForFunction:(id)function insertLibraries:(id)libraries options:(unint64_t)options error:(id *)error;
- (id)lookupRecompiledBinaryArchive:(id)archive;
- (id)mtlTensorFromGpuResourceID:(MTLResourceID)d;
- (id)newAccelerationStructureWithBuffer:(id)buffer offset:(unint64_t)offset;
- (id)newAccelerationStructureWithBuffer:(id)buffer offset:(unint64_t)offset resourceIndex:(unint64_t)index;
- (id)newAccelerationStructureWithDescriptor:(id)descriptor;
- (id)newAccelerationStructureWithSize:(unint64_t)size;
- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index;
- (id)newAccelerationStructureWithSize:(unint64_t)size withDescriptor:(id)descriptor;
- (id)newArchiveWithURL:(id)l error:(id *)error;
- (id)newArgumentEncoderWithArguments:(id)arguments;
- (id)newArgumentEncoderWithArguments:(id)arguments structType:(id *)type;
- (id)newArgumentEncoderWithBufferBinding:(id)binding;
- (id)newArgumentEncoderWithLayout:(id)layout;
- (id)newArgumentTableWithDescriptor:(id)descriptor error:(id *)error;
- (id)newBinaryArchiveWithDescriptor:(id)descriptor error:(id *)error;
- (id)newBinaryLibraryWithOptions:(unint64_t)options url:(id)url error:(id *)error;
- (id)newBufferWithBytes:(const void *)bytes length:(unint64_t)length options:(unint64_t)options;
- (id)newBufferWithBytes:(const void *)bytes length:(unint64_t)length options:(unint64_t)options gpuAddress:(unint64_t)address;
- (id)newBufferWithBytesNoCopy:(void *)copy length:(unint64_t)length options:(unint64_t)options deallocator:(id)deallocator;
- (id)newBufferWithBytesNoCopy:(void *)copy length:(unint64_t)length options:(unint64_t)options gpuAddress:(unint64_t)address deallocator:(id)deallocator;
- (id)newBufferWithDescriptor:(id)descriptor;
- (id)newBufferWithIOSurface:(__IOSurface *)surface;
- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options;
- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options gpuAddress:(unint64_t)address;
- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options placementSparsePageSize:(int64_t)size;
- (id)newCommandAllocator;
- (id)newCommandAllocatorWithDescriptor:(id)descriptor error:(id *)error;
- (id)newCommandBuffer;
- (id)newCommandQueue;
- (id)newCommandQueueWithDescriptor:(id)descriptor;
- (id)newCommandQueueWithMaxCommandBufferCount:(unint64_t)count;
- (id)newCompilerWithDescriptor:(id)descriptor error:(id *)error;
- (id)newComputePipelineDescriptorWithSerializedData:(id)data deserializationContext:(id)context;
- (id)newComputePipelineStateWithDescriptor:(id)descriptor error:(id *)error;
- (id)newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newComputePipelineStateWithFunction:(id)function error:(id *)error;
- (id)newComputePipelineStateWithFunction:(id)function options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newComputePipelineStateWithImageFilterFunctionsSPI:(id)i imageFilterFunctionInfo:(id *)info error:(id *)error;
- (id)newCounterHeapWithDescriptor:(id)descriptor error:(id *)error;
- (id)newCounterSampleBufferWithDescriptor:(id)descriptor error:(id *)error;
- (id)newDagStringWithGraphs:(id)graphs;
- (id)newDefaultLibrary;
- (id)newDefaultLibraryWithBundle:(id)bundle error:(id *)error;
- (id)newDepthStencilStateWithDescriptor:(id)descriptor;
- (id)newDynamicLibrary:(id)library computeDescriptor:(id)descriptor error:(id *)error;
- (id)newDynamicLibrary:(id)library error:(id *)error;
- (id)newDynamicLibraryWithDescriptor:(id)descriptor error:(id *)error;
- (id)newDynamicLibraryWithURL:(id)l error:(id *)error;
- (id)newDynamicLibraryWithURL:(id)l options:(unint64_t)options error:(id *)error;
- (id)newEvent;
- (id)newEventWithOptions:(int64_t)options;
- (id)newFence;
- (id)newFunctionWithGLCoreIR:(void *)r functionType:(unint64_t)type;
- (id)newFunctionWithGLCoreIR:(void *)r inputsDescription:(id)description functionType:(unint64_t)type;
- (id)newFunctionWithGLESIR:(void *)r functionType:(unint64_t)type;
- (id)newFunctionWithGLESIR:(void *)r inputsDescription:(id)description functionType:(unint64_t)type;
- (id)newFunctionWithGLIR:(void *)r functionType:(unint64_t)type;
- (id)newFunctionWithGLIR:(void *)r inputsDescription:(id)description functionType:(unint64_t)type;
- (id)newHeapWithDescriptor:(id)descriptor;
- (id)newIOCommandQueueWithDescriptor:(id)descriptor error:(id *)error;
- (id)newIOHandleWithURL:(id)l compressionType:(int64_t)type error:(id *)error;
- (id)newIOHandleWithURL:(id)l error:(id *)error;
- (id)newIndirectArgumentBufferLayoutWithStructType:(id)type;
- (id)newIndirectArgumentEncoderWithLayout:(id)layout;
- (id)newIndirectCommandBufferWithDescriptor:(id)descriptor maxCommandCount:(unint64_t)count options:(unint64_t)options;
- (id)newIndirectCommandBufferWithDescriptor:(id)descriptor maxCount:(unint64_t)count options:(unint64_t)options;
- (id)newIndirectComputeCommandEncoderWithBuffer:(id)buffer;
- (id)newIndirectRenderCommandEncoderWithBuffer:(id)buffer;
- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor;
- (id)newLateEvalEvent;
- (id)newLibraryWithCIFilters:(id)filters imageFilterFunctionInfo:(id *)info error:(id *)error;
- (id)newLibraryWithDAG:(id)g functions:(id)functions error:(id *)error;
- (id)newLibraryWithData:(id)data error:(id *)error;
- (id)newLibraryWithFile:(id)file error:(id *)error;
- (id)newLibraryWithMPSGraphPackageURL:(id)l name:(id)name error:(id *)error;
- (id)newLibraryWithSource:(id)source options:(id)options error:(id *)error;
- (id)newLibraryWithStitchedDescriptor:(id)descriptor error:(id *)error;
- (id)newLibraryWithStitchedDescriptorSPI:(id)i error:(id *)error;
- (id)newLibraryWithURL:(id)l error:(id *)error;
- (id)newLogStateWithDescriptor:(id)descriptor error:(id *)error;
- (id)newMTL4CommandQueue;
- (id)newMTL4CommandQueueWithDescriptor:(id)descriptor error:(id *)error;
- (id)newPerformanceStateAssertion:(int64_t)assertion error:(id *)error;
- (id)newPipelineDataSetSerializerWithDescriptor:(id)descriptor;
- (id)newPipelineLibraryWithFilePath:(id)path error:(id *)error;
- (id)newProfileWithExecutionSize:(unint64_t)size;
- (id)newRasterizationRateMapWithDescriptor:(id)descriptor;
- (id)newRenderPipelineDescriptorWithSerializedData:(id)data deserializationContext:(id)context;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor error:(id *)error;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newRenderPipelineStateWithMeshDescriptor:(id)descriptor error:(id *)error;
- (id)newRenderPipelineStateWithMeshDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newRenderPipelineStateWithTileDescriptor:(id)descriptor error:(id *)error;
- (id)newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newResidencySetWithDescriptor:(id)descriptor error:(id *)error;
- (id)newResourceGroupFromResources:(const void *)resources count:(unint64_t)count;
- (id)newSamplerStateWithDescriptor:(id)descriptor;
- (id)newSharedEvent;
- (id)newSharedEventWithHandle:(id)handle;
- (id)newSharedEventWithOptions:(int64_t)options;
- (id)newSharedTextureWithDescriptor:(id)descriptor;
- (id)newSharedTextureWithHandle:(id)handle;
- (id)newSharedTextureWithHandle:(id)handle withResourceIndex:(unint64_t)index;
- (id)newStructTypeWithSerializedData:(id)data;
- (id)newTensorWithDescriptor:(id)descriptor error:(id *)error;
- (id)newTextureViewPoolWithDescriptor:(id)descriptor error:(id *)error;
- (id)newTextureWithBytesNoCopy:(void *)copy length:(unint64_t)length descriptor:(id)descriptor deallocator:(id)deallocator;
- (id)newTextureWithDescriptor:(id)descriptor;
- (id)newTextureWithDescriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unint64_t)plane;
- (id)newTextureWithDescriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unint64_t)plane slice:(unint64_t)slice;
- (id)newUncachedIOHandleWithURL:(id)l compressionType:(int64_t)type error:(id *)error;
- (id)newUncachedIOHandleWithURL:(id)l error:(id *)error;
- (id)newUnwrappedMTL4BinaryFunctionDescriptor:(id)descriptor;
- (id)newUnwrappedMTL4CompilerDescriptor:(id)descriptor;
- (id)newUnwrappedMTL4CompilerTaskOptions:(id)options;
- (id)newUnwrappedMTL4FunctionDescriptor:(id)descriptor;
- (id)newUnwrappedMTL4PipelineDescriptor:(id)descriptor;
- (id)newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:(id)descriptor;
- (id)newUnwrappedMTL4RenderPipelineBinaryFunctionsDescriptor:(id)descriptor;
- (id)newUnwrappedMTL4RenderPipelineDynamicLinkingDescriptor:(id)descriptor;
- (id)newUnwrappedStaticLinkingDescriptor:(id)descriptor;
- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor;
- (id)productName;
- (id)serializeRenderPipelineDescriptor:(id)descriptor;
- (id)serializeStructType:(id)type;
- (id)unwrapMTLCommandBufferDescriptor:(id)descriptor alwaysCopy:(BOOL)copy;
- (id)unwrapMTLCompileOptions:(id)options;
- (id)unwrapMTLComputePipelineDescriptor:(id)descriptor;
- (id)unwrapMTLDynamicLibraryDescriptorSPI:(id)i;
- (id)unwrapMTLFunctionDescriptor:(id)descriptor;
- (id)unwrapMTLMeshRenderPipelineDescriptor:(id)descriptor;
- (id)unwrapMTLRenderPipelineDescriptor:(id)descriptor;
- (id)unwrapMTLStitchedLibraryDescriptor:(id)descriptor;
- (id)unwrapMTLTileRenderPipelineDescriptor:(id)descriptor;
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
- (unint64_t)debugPipelineOptions:(unint64_t)options includePipelinePerfStats:(BOOL)stats;
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
- (unint64_t)minLinearTextureAlignmentForPixelFormat:(unint64_t)format;
- (unint64_t)minTilePixels;
- (unint64_t)minimumLinearTextureAlignmentForPixelFormat:(unint64_t)format;
- (unint64_t)minimumTextureBufferAlignmentForPixelFormat:(unint64_t)format;
- (unint64_t)queryTimestampFrequency;
- (unint64_t)readWriteTextureSupport;
- (unint64_t)recommendedMaxWorkingSetSize;
- (unint64_t)registryID;
- (unint64_t)resourcePatchingTypeForResourceType:(unint64_t)type;
- (unint64_t)samplerReductionModeSupport;
- (unint64_t)sharedMemorySize;
- (unint64_t)singleFPConfig;
- (unint64_t)sizeOfCounterHeapEntry:(int64_t)entry;
- (unint64_t)sparseTexturesSupport;
- (unint64_t)sparseTileSizeInBytes;
- (unint64_t)sparseTileSizeInBytesForSparsePageSize:(int64_t)size;
- (unsigned)acceleratorPort;
- (unsigned)maximumComputeSubstreams;
- (void)allowLibrariesFromOtherPlatforms;
- (void)convertSparsePixelRegions:(id *)regions toTileRegions:(id *)tileRegions withTileSize:(id *)size alignmentMode:(unint64_t)mode numRegions:(unint64_t)numRegions;
- (void)convertSparseTileRegions:(id *)regions toPixelRegions:(id *)pixelRegions withTileSize:(id *)size numRegions:(unint64_t)numRegions;
- (void)dealloc;
- (void)deserializeInstanceAccelerationStructure:(id)structure fromBytes:(const void *)bytes primitiveAccelerationStructures:(id)structures withDescriptor:(id)descriptor;
- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBytes:(const void *)bytes withDescriptor:(id)descriptor;
- (void)getDefaultSamplePositions:(id *)positions count:(unint64_t)count;
- (void)getShaderCacheKeys;
- (void)newComputePipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler;
- (void)newComputePipelineStateWithFunction:(id)function completionHandler:(id)handler;
- (void)newComputePipelineStateWithFunction:(id)function options:(unint64_t)options completionHandler:(id)handler;
- (void)newLibraryWithSource:(id)source options:(id)options completionHandler:(id)handler;
- (void)newLibraryWithStitchedDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)newRenderPipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)newRenderPipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler;
- (void)newRenderPipelineStateWithMeshDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)newRenderPipelineStateWithMeshDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler;
- (void)newRenderPipelineStateWithTileDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler;
- (void)reserveResourceIndicesForResourceType:(unint64_t)type indices:(unint64_t *)indices indexCount:(unint64_t)count;
- (void)sampleTimestamps:(unint64_t *)timestamps gpuTimestamp:(unint64_t *)timestamp;
- (void)setCommandBufferErrorOptions:(unint64_t)options;
- (void)setPluginData:(id)data;
- (void)setupMPSFunctionTable:(MPSFunctionTable *)table;
- (void)startCollectingPipelineDescriptors;
- (void)unloadShaderCaches;
- (void)unmapShaderSampleBuffer;
@end

@implementation MTLToolsDevice

- (MTLToolsDevice)initWithBaseObject:(id)object parent:(id)parent
{
  v7.receiver = self;
  v7.super_class = MTLToolsDevice;
  v4 = [(MTLToolsObject *)&v7 initWithBaseObject:object parent:parent];
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

- (id)newFunctionWithGLCoreIR:(void *)r functionType:(unint64_t)type
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

- (id)newFunctionWithGLCoreIR:(void *)r inputsDescription:(id)description functionType:(unint64_t)type
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

- (id)newFunctionWithGLESIR:(void *)r functionType:(unint64_t)type
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

- (id)newLogStateWithDescriptor:(id)descriptor error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newLogStateWithDescriptor:descriptor error:error];
}

- (id)newFunctionWithGLESIR:(void *)r inputsDescription:(id)description functionType:(unint64_t)type
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

- (id)newFunctionWithGLIR:(void *)r functionType:(unint64_t)type
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

- (id)newFunctionWithGLIR:(void *)r inputsDescription:(id)description functionType:(unint64_t)type
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
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject shaderDebugInfoCaching];
}

- (BOOL)mapShaderSampleBufferWithBuffer:(id *)buffer capacity:(unint64_t)capacity size:(unint64_t)size
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject mapShaderSampleBufferWithBuffer:buffer capacity:capacity size:size];
}

- (void)unmapShaderSampleBuffer
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject unmapShaderSampleBuffer];
}

- (BOOL)supportsRaytracing
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRaytracing];
}

- (BOOL)requiresRaytracingEmulation
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject requiresRaytracingEmulation];
}

- (MTLGPUBVHBuilder)GPUBVHBuilder
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject GPUBVHBuilder];
}

- (unint64_t)latestSupportedGenericBVHVersion
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject latestSupportedGenericBVHVersion];
}

- (NSString)name
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject name];
}

- (unint64_t)registryID
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject registryID];
}

- (MTLArchitecture)architecture
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject architecture];
}

- (id)getMostCompatibleArchitecture:(id)architecture
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getMostCompatibleArchitecture:architecture];
}

- (id)vendorName
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject vendorName];
}

- (id)familyName
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject familyName];
}

- (id)productName
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject productName];
}

- (const)targetDeviceInfo
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject targetDeviceInfo];
}

- (MTLTargetDeviceArchitecture)targetDeviceArchitecture
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject targetDeviceArchitecture];
}

- (id)loadDynamicLibrariesForComputeDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
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

- (id)loadDynamicLibrariesForFunction:(id)function insertLibraries:(id)libraries options:(unint64_t)options error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(libraries, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = [libraries countByEnumeratingWithState:&v29 objects:v34 count:16];
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
          objc_enumerationMutation(libraries);
        }

        [v11 addObject:{objc_msgSend(*(*(&v29 + 1) + 8 * v15++), "baseObject")}];
      }

      while (v13 != v15);
      v13 = [libraries countByEnumeratingWithState:&v29 objects:v34 count:16];
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

- (id)unwrapMTLDynamicLibraryDescriptorSPI:(id)i
{
  v4 = [i copy];
  [v4 setLibrary:{objc_msgSend(objc_msgSend(i, "library"), "baseObject")}];
  return v4;
}

- (BOOL)validateDynamicLibraryURL:(id)l error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject validateDynamicLibraryURL:l error:error];
}

- (BOOL)areGPUAssertionsEnabled
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject areGPUAssertionsEnabled];
}

- (BOOL)areWritableHeapsEnabled
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject areWritableHeapsEnabled];
}

- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options gpuAddress:(unint64_t)address
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newBufferWithLength:length options:options gpuAddress:address];
}

- (id)newBufferWithBytes:(const void *)bytes length:(unint64_t)length options:(unint64_t)options gpuAddress:(unint64_t)address
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newBufferWithBytes:bytes length:length options:options gpuAddress:address];
}

- (id)newBufferWithBytesNoCopy:(void *)copy length:(unint64_t)length options:(unint64_t)options gpuAddress:(unint64_t)address deallocator:(id)deallocator
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newBufferWithBytesNoCopy:copy length:length options:options gpuAddress:address deallocator:deallocator];
}

- (BOOL)reserveGPUAddressRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject reserveGPUAddressRange:{location, length}];
}

- (id)newBufferWithDescriptor:(id)descriptor
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

+ (id)newTextureDescriptorFromIOSurfaceProperties:(id)properties
{
  if (!properties)
  {
    return 0;
  }

  v4 = objc_alloc_init(MEMORY[0x277CD7058]);
  [v4 setTextureType:{objc_msgSend(objc_msgSend(properties, "objectForKeyedSubscript:", *MEMORY[0x277CD7148]), "unsignedIntegerValue")}];
  [v4 setPixelFormat:objc_msgSend(objc_msgSend(properties, "objectForKeyedSubscript:", *MEMORY[0x277CD7120]), "unsignedIntegerValue")];
  [v4 setWidth:{objc_msgSend(objc_msgSend(properties, "objectForKeyedSubscript:", *MEMORY[0x277CD7158]), "unsignedIntegerValue")}];
  [v4 setHeight:{objc_msgSend(objc_msgSend(properties, "objectForKeyedSubscript:", *MEMORY[0x277CD7110]), "unsignedIntegerValue")}];
  [v4 setDepth:{objc_msgSend(objc_msgSend(properties, "objectForKeyedSubscript:", *MEMORY[0x277CD7100]), "unsignedIntegerValue")}];
  [v4 setMipmapLevelCount:{objc_msgSend(objc_msgSend(properties, "objectForKeyedSubscript:", *MEMORY[0x277CD7118]), "unsignedIntegerValue")}];
  [v4 setSampleCount:{objc_msgSend(objc_msgSend(properties, "objectForKeyedSubscript:", *MEMORY[0x277CD7130]), "unsignedIntegerValue")}];
  [v4 setArrayLength:{objc_msgSend(objc_msgSend(properties, "objectForKeyedSubscript:", *MEMORY[0x277CD70F8]), "unsignedIntegerValue")}];
  [v4 setResourceOptions:{objc_msgSend(objc_msgSend(properties, "objectForKeyedSubscript:", *MEMORY[0x277CD7128]), "unsignedIntegerValue")}];
  [v4 setUsage:{objc_msgSend(objc_msgSend(properties, "objectForKeyedSubscript:", *MEMORY[0x277CD7150]), "unsignedIntegerValue")}];
  [v4 setSparseSurfaceDefaultValue:{objc_msgSend(objc_msgSend(properties, "objectForKeyedSubscript:", *MEMORY[0x277CD7138]), "unsignedIntegerValue")}];
  [v4 setAllowGPUOptimizedContents:{objc_msgSend(objc_msgSend(properties, "objectForKeyedSubscript:", *MEMORY[0x277CD7108]), "BOOLValue")}];
  [objc_msgSend(properties objectForKeyedSubscript:{*MEMORY[0x277CD7140]), "unsignedIntegerValue"}];
  [v4 setSwizzle:MTLTextureSwizzleKeyToChannels()];
  [v4 setWriteAccessPattern:{objc_msgSend(objc_msgSend(properties, "objectForKeyedSubscript:", *MEMORY[0x277CD7160]), "integerValue")}];
  return v4;
}

+ (id)newTextureDescriptorFromIOSurface:(__IOSurface *)surface
{
  v4 = IOSurfaceCopyValue(surface, *MEMORY[0x277CD29D0]);
  v5 = [self newTextureDescriptorFromIOSurfaceProperties:v4];

  return v5;
}

- (id)newSharedTextureWithDescriptor:(id)descriptor
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

- (id)newSharedTextureWithHandle:(id)handle
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

- (id)newSharedTextureWithHandle:(id)handle withResourceIndex:(unint64_t)index
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

- (id)copyIOSurfaceSharedTextureProperties:(id)properties
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject copyIOSurfaceSharedTextureProperties:properties];
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
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isLowPower];
}

- (BOOL)isHeadless
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isHeadless];
}

- (BOOL)isRemovable
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isRemovable];
}

- (BOOL)hasUnifiedMemory
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject hasUnifiedMemory];
}

- (unint64_t)recommendedMaxWorkingSetSize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject recommendedMaxWorkingSetSize];
}

- (unint64_t)sharedMemorySize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject sharedMemorySize];
}

- (unint64_t)dedicatedMemorySize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject dedicatedMemorySize];
}

- (unint64_t)currentCommandQueueCount
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject currentCommandQueueCount];
}

- (unint64_t)commandQueueLimit
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject commandQueueLimit];
}

- (unint64_t)bufferRobustnessSupport
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject bufferRobustnessSupport];
}

- (BOOL)isDepth24Stencil8PixelFormatSupported
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isDepth24Stencil8PixelFormatSupported];
}

- (void)unloadShaderCaches
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject unloadShaderCaches];
}

- ($85CD2974BE96D4886BB301820D1C36C2)libraryCacheStats
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject libraryCacheStats];
}

- ($85CD2974BE96D4886BB301820D1C36C2)pipelineCacheStats
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject pipelineCacheStats];
}

- (BOOL)copyShaderCacheToPath:(id)path
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject copyShaderCacheToPath:path];
}

- (void)getShaderCacheKeys
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getShaderCacheKeys];
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

- (id)newCommandQueueWithMaxCommandBufferCount:(unint64_t)count
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

- (id)newCommandQueueWithDescriptor:(id)descriptor
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

- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options
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

- (id)newBufferWithBytes:(const void *)bytes length:(unint64_t)length options:(unint64_t)options
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

- (id)newBufferWithBytesNoCopy:(void *)copy length:(unint64_t)length options:(unint64_t)options deallocator:(id)deallocator
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

- (id)newIndirectCommandBufferWithDescriptor:(id)descriptor maxCount:(unint64_t)count options:(unint64_t)options
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newIndirectCommandBufferWithDescriptor:descriptor maxCount:count options:options];
}

- (id)newIndirectRenderCommandEncoderWithBuffer:(id)buffer
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newIndirectRenderCommandEncoderWithBuffer:buffer];
}

- (id)newIndirectComputeCommandEncoderWithBuffer:(id)buffer
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newIndirectComputeCommandEncoderWithBuffer:buffer];
}

- (id)newIndirectCommandBufferWithDescriptor:(id)descriptor maxCommandCount:(unint64_t)count options:(unint64_t)options
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

- (id)newTextureWithBytesNoCopy:(void *)copy length:(unint64_t)length descriptor:(id)descriptor deallocator:(id)deallocator
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

- (id)newDepthStencilStateWithDescriptor:(id)descriptor
{
  v5 = [(MTLToolsObject *)self->super._baseObject newDepthStencilStateWithDescriptor:?];
  v6 = [(MTLToolsDevice *)self getDepthStencilStateForBaseObject:v5 descriptor:descriptor];

  return v6;
}

- (id)newTextureWithDescriptor:(id)descriptor
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

- (id)newSamplerStateWithDescriptor:(id)descriptor
{
  v5 = [(MTLToolsObject *)self->super._baseObject newSamplerStateWithDescriptor:?];
  v6 = [(MTLToolsDevice *)self getSamplerStateForBaseObject:v5 descriptor:descriptor];

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

- (id)newDefaultLibraryWithBundle:(id)bundle error:(id *)error
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

- (id)newLibraryWithFile:(id)file error:(id *)error
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

- (id)newLibraryWithURL:(id)l error:(id *)error
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

- (id)newLibraryWithSource:(id)source options:(id)options error:(id *)error
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

- (id)newLibraryWithData:(id)data error:(id *)error
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
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject startCollectingPipelineDescriptors];
}

- (id)endCollectingPipelineDescriptors
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject endCollectingPipelineDescriptors];
}

- (id)newPipelineLibraryWithFilePath:(id)path error:(id *)error
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

- (id)serializeRenderPipelineDescriptor:(id)descriptor
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject serializeRenderPipelineDescriptor:descriptor];
}

- (id)newRenderPipelineDescriptorWithSerializedData:(id)data deserializationContext:(id)context
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newRenderPipelineDescriptorWithSerializedData:data deserializationContext:context];
}

- (id)newComputePipelineDescriptorWithSerializedData:(id)data deserializationContext:(id)context
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newComputePipelineDescriptorWithSerializedData:data deserializationContext:context];
}

- (id)serializeStructType:(id)type
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject serializeStructType:type];
}

- (id)newStructTypeWithSerializedData:(id)data
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newStructTypeWithSerializedData:data];
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapTextureSizeAndAlignWithDescriptor:(id)descriptor
{
  baseObject = [(MTLToolsObject *)self baseObject];

  v5 = [baseObject heapTextureSizeAndAlignWithDescriptor:descriptor];
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapBufferSizeAndAlignWithLength:(unint64_t)length options:(unint64_t)options
{
  baseObject = [(MTLToolsObject *)self baseObject];

  v7 = [baseObject heapBufferSizeAndAlignWithLength:length options:options];
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (id)newHeapWithDescriptor:(id)descriptor
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
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject indirectArgumentBufferCapabilities];
}

- (NSDictionary)pluginData
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject pluginData];
}

- (void)setPluginData:(id)data
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setPluginData:data];
}

- (id)newIndirectArgumentBufferLayoutWithStructType:(id)type
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newIndirectArgumentBufferLayoutWithStructType:type];
}

- (id)newIndirectArgumentEncoderWithLayout:(id)layout
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newIndirectArgumentEncoderWithLayout:layout];
}

- (id)newArgumentEncoderWithLayout:(id)layout
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newArgumentEncoderWithLayout:layout];
}

- (id)newArgumentEncoderWithArguments:(id)arguments
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

- (id)newArgumentEncoderWithArguments:(id)arguments structType:(id *)type
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
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxThreadgroupMemoryLength];
}

- (unint64_t)maxArgumentBufferSamplerCount
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxArgumentBufferSamplerCount];
}

- (id)unwrapMTLRenderPipelineDescriptor:(id)descriptor
{
  v4 = [descriptor copy];
  [v4 setVertexFunction:{objc_msgSend(objc_msgSend(v4, "vertexFunction"), "baseObject")}];
  [v4 setFragmentFunction:{objc_msgSend(objc_msgSend(v4, "fragmentFunction"), "baseObject")}];
  [v4 setPipelineLibrary:{objc_msgSend(objc_msgSend(v4, "pipelineLibrary"), "baseObject")}];
  [v4 setVertexLinkedFunctions:{unwrapLinkedFunctions(objc_msgSend(descriptor, "vertexLinkedFunctions"))}];
  [v4 setFragmentLinkedFunctions:{unwrapLinkedFunctions(objc_msgSend(descriptor, "fragmentLinkedFunctions"))}];
  [v4 setMeshLinkedFunctions:{unwrapLinkedFunctions(objc_msgSend(descriptor, "meshLinkedFunctions"))}];
  [v4 setObjectLinkedFunctions:{unwrapLinkedFunctions(objc_msgSend(descriptor, "objectLinkedFunctions"))}];
  [v4 setBinaryArchives:{unwrapArray(objc_msgSend(descriptor, "binaryArchives"))}];
  [v4 setVertexPreloadedLibraries:{unwrapArray(objc_msgSend(descriptor, "vertexPreloadedLibraries"))}];
  [v4 setFragmentPreloadedLibraries:{unwrapArray(objc_msgSend(descriptor, "fragmentPreloadedLibraries"))}];
  [v4 setObjectFunction:{objc_msgSend(objc_msgSend(descriptor, "objectFunction"), "baseObject")}];
  [v4 setMeshFunction:{objc_msgSend(objc_msgSend(descriptor, "meshFunction"), "baseObject")}];
  [v4 setObjectPreloadedLibraries:{unwrapArray(objc_msgSend(descriptor, "objectPreloadedLibraries"))}];
  [v4 setMeshPreloadedLibraries:{unwrapArray(objc_msgSend(descriptor, "meshPreloadedLibraries"))}];

  return v4;
}

- (unint64_t)debugPipelineOptions:(unint64_t)options includePipelinePerfStats:(BOOL)stats
{
  v4 = 8454147;
  if (stats)
  {
    v4 = 8716291;
  }

  return v4 | options;
}

- (id)unwrapMTLComputePipelineDescriptor:(id)descriptor
{
  v4 = [descriptor copy];
  [v4 setComputeFunction:{objc_msgSend(objc_msgSend(v4, "computeFunction"), "baseObject")}];
  [v4 setPipelineLibrary:{objc_msgSend(objc_msgSend(v4, "pipelineLibrary"), "baseObject")}];
  [v4 setLinkedFunctions:{unwrapLinkedFunctions(objc_msgSend(descriptor, "linkedFunctions"))}];
  [v4 setFunctionPointers:{unwrapArray(objc_msgSend(descriptor, "functionPointers"))}];
  [v4 setPreloadedLibraries:{unwrapArray(objc_msgSend(descriptor, "preloadedLibraries"))}];
  [v4 setBinaryArchives:{unwrapArray(objc_msgSend(descriptor, "binaryArchives"))}];

  return v4;
}

- (id)unwrapMTLTileRenderPipelineDescriptor:(id)descriptor
{
  v4 = [descriptor copy];
  [v4 setTileFunction:{objc_msgSend(objc_msgSend(v4, "tileFunction"), "baseObject")}];
  [v4 setLinkedFunctions:{unwrapLinkedFunctions(objc_msgSend(descriptor, "linkedFunctions"))}];
  [v4 setPreloadedLibraries:{unwrapArray(objc_msgSend(descriptor, "preloadedLibraries"))}];
  [v4 setBinaryArchives:{unwrapArray(objc_msgSend(v4, "binaryArchives"))}];

  return v4;
}

- (id)unwrapMTLMeshRenderPipelineDescriptor:(id)descriptor
{
  v4 = [descriptor copy];
  [v4 setObjectFunction:{objc_msgSend(objc_msgSend(descriptor, "objectFunction"), "baseObject")}];
  [v4 setMeshFunction:{objc_msgSend(objc_msgSend(descriptor, "meshFunction"), "baseObject")}];
  [v4 setFragmentFunction:{objc_msgSend(objc_msgSend(descriptor, "fragmentFunction"), "baseObject")}];
  [v4 setPipelineLibrary:{objc_msgSend(objc_msgSend(descriptor, "pipelineLibrary"), "baseObject")}];
  [v4 setBinaryArchives:{unwrapArray(objc_msgSend(descriptor, "binaryArchives"))}];
  [v4 setObjectPreloadedLibraries:{unwrapArray(objc_msgSend(descriptor, "objectPreloadedLibraries"))}];
  [v4 setMeshPreloadedLibraries:{unwrapArray(objc_msgSend(descriptor, "meshPreloadedLibraries"))}];
  [v4 setFragmentPreloadedLibraries:{unwrapArray(objc_msgSend(descriptor, "fragmentPreloadedLibraries"))}];
  [v4 setObjectLinkedFunctions:{unwrapLinkedFunctions(objc_msgSend(descriptor, "objectLinkedFunctions"))}];
  [v4 setMeshLinkedFunctions:{unwrapLinkedFunctions(objc_msgSend(descriptor, "meshLinkedFunctions"))}];
  [v4 setFragmentLinkedFunctions:{unwrapLinkedFunctions(objc_msgSend(descriptor, "fragmentLinkedFunctions"))}];

  return v4;
}

- (id)unwrapMTLCompileOptions:(id)options
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [options copy];
  libraries = [v3 libraries];
  if (libraries)
  {
    v5 = libraries;
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(libraries, "count")}];
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

- (id)unwrapMTLStitchedLibraryDescriptor:(id)descriptor
{
  v4 = [descriptor copy];
  [v4 setFunctions:{unwrapArray(objc_msgSend(descriptor, "functions"))}];
  [v4 setBinaryArchives:{unwrapArray(objc_msgSend(descriptor, "binaryArchives"))}];
  return v4;
}

+ (id)newUnwrappedMTLRelocations:(id)relocations
{
  v18 = *MEMORY[0x277D85DE8];
  if (relocations)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(relocations, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [relocations countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(relocations);
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

        v6 = [relocations countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)unwrapMTLFunctionDescriptor:(id)descriptor
{
  v4 = [descriptor copy];
  [v4 setBinaryArchives:{unwrapArray(objc_msgSend(descriptor, "binaryArchives"))}];
  [v4 setPrivateFunctions:{unwrapArray(objc_msgSend(descriptor, "privateFunctions"))}];
  return v4;
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor error:(id *)error
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

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error
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

- (void)newRenderPipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  v8 = [(MTLToolsDevice *)self unwrapMTLRenderPipelineDescriptor:descriptor];
  baseObject = [(MTLToolsObject *)self baseObject];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__MTLToolsDevice_newRenderPipelineStateWithDescriptor_options_completionHandler___block_invoke;
  v10[3] = &unk_2787B3C48;
  v10[4] = self;
  v10[5] = handler;
  [baseObject newRenderPipelineStateWithDescriptor:v8 options:options completionHandler:v10];
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

- (void)newRenderPipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  v6 = [(MTLToolsDevice *)self unwrapMTLRenderPipelineDescriptor:descriptor];
  baseObject = [(MTLToolsObject *)self baseObject];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__MTLToolsDevice_newRenderPipelineStateWithDescriptor_completionHandler___block_invoke;
  v8[3] = &unk_2787B3C70;
  v8[4] = self;
  v8[5] = handler;
  [baseObject newRenderPipelineStateWithDescriptor:v6 completionHandler:v8];
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

- (id)newComputePipelineStateWithDescriptor:(id)descriptor error:(id *)error
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

- (id)newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  v8 = [(MTLToolsObject *)[MTLToolsComputePipelineState alloc] initWithBaseObject:v7 parent:self];

  return v8;
}

- (void)newComputePipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  v6 = [(MTLToolsDevice *)self unwrapMTLComputePipelineDescriptor:descriptor];
  baseObject = [(MTLToolsObject *)self baseObject];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__MTLToolsDevice_newComputePipelineStateWithDescriptor_completionHandler___block_invoke;
  v8[3] = &unk_2787B3C98;
  v8[4] = self;
  v8[5] = handler;
  [baseObject newComputePipelineStateWithDescriptor:v6 completionHandler:v8];
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

- (void)newComputePipelineStateWithDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [descriptor baseObject];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__MTLToolsDevice_newComputePipelineStateWithDescriptor_options_completionHandler___block_invoke;
  v11[3] = &unk_2787B3CC0;
  v11[4] = self;
  v11[5] = handler;
  [baseObject newComputePipelineStateWithDescriptor:baseObject2 options:options completionHandler:v11];
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

- (id)newComputePipelineStateWithFunction:(id)function error:(id *)error
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];
  v6 = [(MTLToolsObject *)[MTLToolsComputePipelineState alloc] initWithBaseObject:v5 parent:self];

  return v6;
}

- (id)newComputePipelineStateWithFunction:(id)function options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  v8 = [(MTLToolsObject *)[MTLToolsComputePipelineState alloc] initWithBaseObject:v7 parent:self];

  return v8;
}

- (void)newComputePipelineStateWithFunction:(id)function completionHandler:(id)handler
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [function baseObject];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__MTLToolsDevice_newComputePipelineStateWithFunction_completionHandler___block_invoke;
  v9[3] = &unk_2787B3C98;
  v9[4] = self;
  v9[5] = handler;
  [baseObject newComputePipelineStateWithFunction:baseObject2 completionHandler:v9];
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

- (void)newComputePipelineStateWithFunction:(id)function options:(unint64_t)options completionHandler:(id)handler
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [function baseObject];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__MTLToolsDevice_newComputePipelineStateWithFunction_options_completionHandler___block_invoke;
  v11[3] = &unk_2787B3CC0;
  v11[4] = self;
  v11[5] = handler;
  [baseObject newComputePipelineStateWithFunction:baseObject2 options:options completionHandler:v11];
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

- (id)newRenderPipelineStateWithTileDescriptor:(id)descriptor error:(id *)error
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

- (id)newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error
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

- (void)newRenderPipelineStateWithTileDescriptor:(id)descriptor completionHandler:(id)handler
{
  v6 = [(MTLToolsDevice *)self unwrapMTLTileRenderPipelineDescriptor:descriptor];
  baseObject = [(MTLToolsObject *)self baseObject];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__MTLToolsDevice_newRenderPipelineStateWithTileDescriptor_completionHandler___block_invoke;
  v8[3] = &unk_2787B3C70;
  v8[4] = self;
  v8[5] = handler;
  [baseObject newRenderPipelineStateWithTileDescriptor:v6 completionHandler:v8];
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

- (void)newRenderPipelineStateWithTileDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  v8 = [(MTLToolsDevice *)self unwrapMTLTileRenderPipelineDescriptor:descriptor];
  baseObject = [(MTLToolsObject *)self baseObject];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__MTLToolsDevice_newRenderPipelineStateWithTileDescriptor_options_completionHandler___block_invoke;
  v10[3] = &unk_2787B3C48;
  v10[4] = self;
  v10[5] = handler;
  [baseObject newRenderPipelineStateWithTileDescriptor:v8 options:options completionHandler:v10];
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

- (id)newRenderPipelineStateWithMeshDescriptor:(id)descriptor error:(id *)error
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

- (id)newRenderPipelineStateWithMeshDescriptor:(id)descriptor options:(unint64_t)options reflection:(id *)reflection error:(id *)error
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

- (void)newRenderPipelineStateWithMeshDescriptor:(id)descriptor options:(unint64_t)options completionHandler:(id)handler
{
  v8 = [(MTLToolsDevice *)self unwrapMTLMeshRenderPipelineDescriptor:descriptor];
  baseObject = [(MTLToolsObject *)self baseObject];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__MTLToolsDevice_newRenderPipelineStateWithMeshDescriptor_options_completionHandler___block_invoke;
  v10[3] = &unk_2787B3C48;
  v10[4] = self;
  v10[5] = handler;
  [baseObject newRenderPipelineStateWithMeshDescriptor:v8 options:options completionHandler:v10];
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

- (void)newRenderPipelineStateWithMeshDescriptor:(id)descriptor completionHandler:(id)handler
{
  v6 = [(MTLToolsDevice *)self unwrapMTLMeshRenderPipelineDescriptor:descriptor];
  baseObject = [(MTLToolsObject *)self baseObject];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__MTLToolsDevice_newRenderPipelineStateWithMeshDescriptor_completionHandler___block_invoke;
  v8[3] = &unk_2787B3C70;
  v8[4] = self;
  v8[5] = handler;
  [baseObject newRenderPipelineStateWithMeshDescriptor:v6 completionHandler:v8];
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

- (id)newComputePipelineStateWithImageFilterFunctionsSPI:(id)i imageFilterFunctionInfo:(id *)info error:(id *)error
{
  v7 = [(MTLToolsDevice *)self newLibraryWithImageFilterFunctionsSPI:i imageFilterFunctionInfo:info error:?];
  v8 = [v7 newFunctionWithName:@"ciKernelMain"];
  v9 = [(MTLToolsDevice *)self newComputePipelineStateWithFunction:v8 error:error];

  return v9;
}

- (id)newLibraryWithDAG:(id)g functions:(id)functions error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [functions countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(functions);
        }

        [v9 addObject:{objc_msgSend(*(*(&v18 + 1) + 8 * v13++), "baseObject")}];
      }

      while (v11 != v13);
      v11 = [functions countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (id)newLibraryWithStitchedDescriptor:(id)descriptor error:(id *)error
{
  v6 = [(MTLToolsDevice *)self unwrapMTLStitchedLibraryDescriptor:descriptor];
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];

  if (!v7)
  {
    return 0;
  }

  v8 = [(MTLToolsObject *)[MTLToolsLibrary alloc] initWithBaseObject:v7 parent:self];

  return v8;
}

- (void)newLibraryWithStitchedDescriptor:(id)descriptor completionHandler:(id)handler
{
  v6 = [(MTLToolsDevice *)self unwrapMTLStitchedLibraryDescriptor:descriptor];
  baseObject = [(MTLToolsObject *)self baseObject];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__MTLToolsDevice_newLibraryWithStitchedDescriptor_completionHandler___block_invoke;
  v8[3] = &unk_2787B3CE8;
  v8[4] = v6;
  v8[5] = self;
  v8[6] = handler;
  [baseObject newLibraryWithStitchedDescriptor:v6 completionHandler:v8];
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

- (id)newLibraryWithStitchedDescriptorSPI:(id)i error:(id *)error
{
  v6 = [(MTLToolsDevice *)self unwrapMTLStitchedLibraryDescriptor:i];
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];

  if (!v7)
  {
    return 0;
  }

  v8 = [(MTLToolsObject *)[MTLToolsLibrary alloc] initWithBaseObject:v7 parent:self];

  return v8;
}

- (id)newDagStringWithGraphs:(id)graphs
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newDagStringWithGraphs:graphs];
}

- (id)newLibraryWithCIFilters:(id)filters imageFilterFunctionInfo:(id *)info error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [filters countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(filters);
        }

        [v9 addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * v13++), "baseObject")}];
      }

      while (v11 != v13);
      v11 = [filters countByEnumeratingWithState:&v19 objects:v23 count:16];
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

- (void)newLibraryWithSource:(id)source options:(id)options completionHandler:(id)handler
{
  v8 = [(MTLToolsDevice *)self unwrapMTLCompileOptions:options];
  baseObject = [(MTLToolsObject *)self baseObject];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__MTLToolsDevice_newLibraryWithSource_options_completionHandler___block_invoke;
  v10[3] = &unk_2787B3D10;
  v10[4] = self;
  v10[5] = handler;
  [baseObject newLibraryWithSource:source options:v8 completionHandler:v10];
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

- (BOOL)deviceSupportsFeatureSet:(unint64_t)set
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject deviceSupportsFeatureSet:set];
}

- (BOOL)deviceOrFeatureProfileSupportsFeatureSet:(unint64_t)set
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject deviceOrFeatureProfileSupportsFeatureSet:set];
}

- (BOOL)supportsFeatureSet:(unint64_t)set
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsFeatureSet:set];
}

- (BOOL)supportsFamily:(int64_t)family
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsFamily:family];
}

- (BOOL)supportsTextureSampleCount:(unint64_t)count
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsTextureSampleCount:count];
}

- (BOOL)supportsSampleCount:(unint64_t)count
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsSampleCount:count];
}

- (unint64_t)minLinearTextureAlignmentForPixelFormat:(unint64_t)format
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject minLinearTextureAlignmentForPixelFormat:format];
}

- (unint64_t)minimumLinearTextureAlignmentForPixelFormat:(unint64_t)format
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject minimumLinearTextureAlignmentForPixelFormat:format];
}

- (unint64_t)minimumTextureBufferAlignmentForPixelFormat:(unint64_t)format
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject minimumTextureBufferAlignmentForPixelFormat:format];
}

- (BOOL)areProgrammableSamplePositionsSupported
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject areProgrammableSamplePositionsSupported];
}

- (void)getDefaultSamplePositions:(id *)positions count:(unint64_t)count
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject getDefaultSamplePositions:positions count:count];
}

- (BOOL)supportsRasterizationRateMapWithLayerCount:(unint64_t)count
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRasterizationRateMapWithLayerCount:count];
}

- (id)newRasterizationRateMapWithDescriptor:(id)descriptor
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
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxRasterizationRateLayerCount];
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

- (id)newBufferWithIOSurface:(__IOSurface *)surface
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

- (unint64_t)resourcePatchingTypeForResourceType:(unint64_t)type
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject resourcePatchingTypeForResourceType:type];
}

- (void)reserveResourceIndicesForResourceType:(unint64_t)type indices:(unint64_t *)indices indexCount:(unint64_t)count
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject reserveResourceIndicesForResourceType:type indices:indices indexCount:count];
}

- (unint64_t)halfFPConfig
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject halfFPConfig];
}

- (unint64_t)singleFPConfig
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject singleFPConfig];
}

- (unint64_t)doubleFPConfig
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject doubleFPConfig];
}

- (unint64_t)featureProfile
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject featureProfile];
}

- (const)limits
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject limits];
}

- (unsigned)acceleratorPort
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject acceleratorPort];
}

- (BOOL)supportPriorityBand
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportPriorityBand];
}

- (unint64_t)maxFramebufferStorageBits
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxFramebufferStorageBits];
}

- (unint64_t)linearTextureArrayAlignmentBytes
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject linearTextureArrayAlignmentBytes];
}

- (unint64_t)linearTextureArrayAlignmentSlice
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject linearTextureArrayAlignmentSlice];
}

- (unint64_t)maxTileBuffers
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxTileBuffers];
}

- (unint64_t)maxTileTextures
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxTileTextures];
}

- (unint64_t)maxTileSamplers
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxTileSamplers];
}

- (unint64_t)maxTileInlineDataSize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxTileInlineDataSize];
}

- (unint64_t)minTilePixels
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject minTilePixels];
}

- (unint64_t)maxColorAttachments
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxColorAttachments];
}

- (unint64_t)maxVertexAttributes
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxVertexAttributes];
}

- (unint64_t)maxVertexBuffers
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxVertexBuffers];
}

- (unint64_t)maxVertexTextures
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxVertexTextures];
}

- (unint64_t)maxVertexSamplers
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxVertexSamplers];
}

- (unint64_t)maxVertexInlineDataSize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxVertexInlineDataSize];
}

- (unint64_t)maxInterpolants
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxInterpolants];
}

- (unint64_t)maxFragmentBuffers
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxFragmentBuffers];
}

- (unint64_t)maxFragmentTextures
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxFragmentTextures];
}

- (unint64_t)maxFragmentSamplers
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxFragmentSamplers];
}

- (unint64_t)maxFragmentInlineDataSize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxFragmentInlineDataSize];
}

- (unint64_t)maxComputeBuffers
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxComputeBuffers];
}

- (unint64_t)maxComputeTextures
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxComputeTextures];
}

- (unint64_t)maxComputeSamplers
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxComputeSamplers];
}

- (unint64_t)maxComputeInlineDataSize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxComputeInlineDataSize];
}

- (unint64_t)maxComputeLocalMemorySizes
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxComputeLocalMemorySizes];
}

- (unint64_t)maxTotalComputeThreadsPerThreadgroup
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxTotalComputeThreadsPerThreadgroup];
}

- (unint64_t)maxComputeThreadgroupMemory
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxComputeThreadgroupMemory];
}

- (float)maxLineWidth
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject maxLineWidth];
  return result;
}

- (float)maxPointSize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject maxPointSize];
  return result;
}

- (unint64_t)maxVisibilityQueryOffset
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxVisibilityQueryOffset];
}

- (unint64_t)minConstantBufferAlignmentBytes
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject minConstantBufferAlignmentBytes];
}

- (unint64_t)minBufferNoCopyAlignmentBytes
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject minBufferNoCopyAlignmentBytes];
}

- (unint64_t)maxTextureWidth1D
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxTextureWidth1D];
}

- (unint64_t)maxTextureWidth2D
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxTextureWidth2D];
}

- (unint64_t)maxTextureHeight2D
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxTextureHeight2D];
}

- (unint64_t)maxTextureWidth3D
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxTextureWidth3D];
}

- (unint64_t)maxTextureHeight3D
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxTextureHeight3D];
}

- (unint64_t)maxTextureDepth3D
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxTextureDepth3D];
}

- (unint64_t)maxTextureDimensionCube
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxTextureDimensionCube];
}

- (unint64_t)maxTextureLayers
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxTextureLayers];
}

- (unint64_t)linearTextureAlignmentBytes
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject linearTextureAlignmentBytes];
}

- (unint64_t)iosurfaceTextureAlignmentBytes
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject iosurfaceTextureAlignmentBytes];
}

- (unint64_t)iosurfaceReadOnlyTextureAlignmentBytes
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject iosurfaceReadOnlyTextureAlignmentBytes];
}

- (unint64_t)deviceLinearTextureAlignmentBytes
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject deviceLinearTextureAlignmentBytes];
}

- (unint64_t)deviceLinearReadOnlyTextureAlignmentBytes
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject deviceLinearReadOnlyTextureAlignmentBytes];
}

- (unint64_t)maxFunctionConstantIndices
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxFunctionConstantIndices];
}

- (unint64_t)maxComputeThreadgroupMemoryAlignmentBytes
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxComputeThreadgroupMemoryAlignmentBytes];
}

- (unint64_t)maxInterpolatedComponents
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxInterpolatedComponents];
}

- (unint64_t)maxTessellationFactor
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxTessellationFactor];
}

- (unint64_t)maxIndirectBuffers
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxIndirectBuffers];
}

- (unint64_t)maxIndirectTextures
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxIndirectTextures];
}

- (unint64_t)maxIndirectSamplers
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxIndirectSamplers];
}

- (unint64_t)maxIndirectSamplersPerDevice
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxIndirectSamplersPerDevice];
}

- (unint64_t)maxFenceInstances
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxFenceInstances];
}

- (unint64_t)maxViewportCount
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxViewportCount];
}

- (unint64_t)maxCustomSamplePositions
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxCustomSamplePositions];
}

- (unint64_t)maxVertexAmplificationFactor
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxVertexAmplificationFactor];
}

- (unint64_t)maxVertexAmplificationCount
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxVertexAmplificationCount];
}

- (unint64_t)maxTextureBufferWidth
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxTextureBufferWidth];
}

- (unint64_t)maxComputeAttributes
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxComputeAttributes];
}

- (unint64_t)maxIOCommandsInFlight
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxIOCommandsInFlight];
}

- (unint64_t)maxPredicatedNestingDepth
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxPredicatedNestingDepth];
}

- (unint64_t)maxAccelerationStructureLevels
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxAccelerationStructureLevels];
}

- (unint64_t)maxConstantBufferArguments
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxConstantBufferArguments];
}

- (unint64_t)maxBufferLength
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxBufferLength];
}

- (unint64_t)readWriteTextureSupport
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject readWriteTextureSupport];
}

- (unint64_t)argumentBuffersSupport
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject argumentBuffersSupport];
}

- (BOOL)areRasterOrderGroupsSupported
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject areRasterOrderGroupsSupported];
}

- (BOOL)isFloat32FilteringSupported
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isFloat32FilteringSupported];
}

- (BOOL)isBCTextureCompressionSupported
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isBCTextureCompressionSupported];
}

- (BOOL)isMsaa32bSupported
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isMsaa32bSupported];
}

- (BOOL)isRGB10A2GammaSupported
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isRGB10A2GammaSupported];
}

- (BOOL)isCustomBorderColorSupported
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isCustomBorderColorSupported];
}

- (BOOL)isClampToHalfBorderSupported
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isClampToHalfBorderSupported];
}

- (BOOL)areBarycentricCoordsSupported
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsShaderBarycentricCoordinates];
}

- (BOOL)isLargeMRTSupported
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isLargeMRTSupported];
}

- (BOOL)isQuadDataSharingSupported
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isQuadDataSharingSupported];
}

- (BOOL)isFixedLinePointFillDepthGradientSupported
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isFixedLinePointFillDepthGradientSupported];
}

- (unint64_t)sparseTexturesSupport
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject sparseTexturesSupport];
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)tileSizeWithSparsePageSize:(SEL)size textureType:(int64_t)type pixelFormat:(unint64_t)format sampleCount:(unint64_t)count
{
  result = [(MTLToolsObject *)self baseObject];
  if (result)
  {

    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result tileSizeWithSparsePageSize:type textureType:format pixelFormat:count sampleCount:a7];
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)sparseTileSizeWithTextureType:(SEL)type pixelFormat:(unint64_t)format sampleCount:(unint64_t)count
{
  result = [(MTLToolsObject *)self baseObject];
  if (result)
  {

    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result sparseTileSizeWithTextureType:format pixelFormat:count sampleCount:a6];
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)sparseTileSizeWithTextureType:(SEL)type pixelFormat:(unint64_t)format sampleCount:(unint64_t)count sparsePageSize:(unint64_t)size
{
  result = [(MTLToolsObject *)self baseObject];
  if (result)
  {

    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result sparseTileSizeWithTextureType:format pixelFormat:count sampleCount:size sparsePageSize:a7];
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
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maximumComputeSubstreams];
}

- (id)newResourceGroupFromResources:(const void *)resources count:(unint64_t)count
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = v16 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0);
  if (count)
  {
    resourcesCopy = resources;
    countCopy = count;
    v9 = (v16 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0));
    do
    {
      v10 = *resourcesCopy++;
      *v9++ = [v10 baseObject];
      --countCopy;
    }

    while (countCopy);
  }

  baseObject = [-[MTLToolsObject baseObject](self baseObject];
  if (baseObject)
  {
    v12 = baseObject;
    v13 = [(MTLToolsObject *)[MTLToolsResourceGroupSPI alloc] initWithBaseObject:baseObject parent:self];
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
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject metalAssertionsEnabled];
}

- (id)newTextureWithDescriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unint64_t)plane
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

- (id)newEventWithOptions:(int64_t)options
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

- (id)newSharedEventWithOptions:(int64_t)options
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

- (id)newSharedEventWithHandle:(id)handle
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

- (void)setupMPSFunctionTable:(MPSFunctionTable *)table
{
  [(MTLToolsObject *)self originalObject];
  if (objc_opt_respondsToSelector())
  {
    originalObject = [(MTLToolsObject *)self originalObject];

    [originalObject setupMPSFunctionTable:table];
  }
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (sel_newBufferWithIOSurface_ == selector)
  {
    [(MTLToolsObject *)self baseObject];
    v3 = objc_opt_respondsToSelector();
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MTLToolsDevice;
    v3 = [(MTLToolsDevice *)&v5 respondsToSelector:selector];
  }

  return v3 & 1;
}

- (unint64_t)currentAllocatedSize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject currentAllocatedSize];
}

- (void)allowLibrariesFromOtherPlatforms
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject allowLibrariesFromOtherPlatforms];
}

- (unint64_t)samplerReductionModeSupport
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject samplerReductionModeSupport];
}

- (unint64_t)sparseTileSizeInBytes
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject sparseTileSizeInBytes];
}

- (unint64_t)sparseTileSizeInBytesForSparsePageSize:(int64_t)size
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject sparseTileSizeInBytesForSparsePageSize:size];
}

- (void)convertSparsePixelRegions:(id *)regions toTileRegions:(id *)tileRegions withTileSize:(id *)size alignmentMode:(unint64_t)mode numRegions:(unint64_t)numRegions
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v13 = *size;
  [baseObject convertSparsePixelRegions:regions toTileRegions:tileRegions withTileSize:&v13 alignmentMode:mode numRegions:numRegions];
}

- (void)convertSparseTileRegions:(id *)regions toPixelRegions:(id *)pixelRegions withTileSize:(id *)size numRegions:(unint64_t)numRegions
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v11 = *size;
  [baseObject convertSparseTileRegions:regions toPixelRegions:pixelRegions withTileSize:&v11 numRegions:numRegions];
}

- (NSArray)counterSets
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject counterSets];
}

- (void)sampleTimestamps:(unint64_t *)timestamps gpuTimestamp:(unint64_t *)timestamp
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject sampleTimestamps:timestamps gpuTimestamp:timestamp];
}

- (BOOL)supportsCounterSampling:(unint64_t)sampling
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsCounterSampling:sampling];
}

- (id)newCounterSampleBufferWithDescriptor:(id)descriptor error:(id *)error
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
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isPlacementHeapSupported];
}

- (unint64_t)commandBufferErrorOptions
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject commandBufferErrorOptions];
}

- (void)setCommandBufferErrorOptions:(unint64_t)options
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setCommandBufferErrorOptions:options];
}

- (unint64_t)getSupportedCommandBufferErrorOptions
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getSupportedCommandBufferErrorOptions];
}

- (BOOL)supportsPrimitiveType:(unint64_t)type
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsPrimitiveType:type];
}

- (unint64_t)deviceCreationFlags
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject deviceCreationFlags];
}

- (id)newBinaryArchiveWithDescriptor:(id)descriptor error:(id *)error
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

- (id)newBinaryLibraryWithOptions:(unint64_t)options url:(id)url error:(id *)error
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

- (id)newDynamicLibraryWithURL:(id)l error:(id *)error
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];
  v6 = [(MTLToolsDevice *)self getDynamicLibraryForBaseObject:v5];

  return v6;
}

- (id)newDynamicLibraryWithURL:(id)l options:(unint64_t)options error:(id *)error
{
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  v7 = [(MTLToolsDevice *)self getDynamicLibraryForBaseObject:v6];

  return v7;
}

- (id)newDynamicLibrary:(id)library error:(id *)error
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];
  v6 = [(MTLToolsDevice *)self getDynamicLibraryForBaseObject:v5];

  return v6;
}

- (id)newDynamicLibrary:(id)library computeDescriptor:(id)descriptor error:(id *)error
{
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  v7 = [(MTLToolsDevice *)self getDynamicLibraryForBaseObject:v6];

  return v7;
}

- (BOOL)validateDynamicLibraryDescriptor:(id)descriptor error:(id *)error
{
  v6 = [(MTLToolsDevice *)self unwrapMTLDynamicLibraryDescriptorSPI:descriptor];
  LOBYTE(error) = [-[MTLToolsObject baseObject](self "baseObject")];

  return error;
}

- (id)newDynamicLibraryWithDescriptor:(id)descriptor error:(id *)error
{
  v6 = [(MTLToolsDevice *)self unwrapMTLDynamicLibraryDescriptorSPI:descriptor];
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];

  return v7;
}

- (BOOL)supportsVertexAmplificationCount:(unint64_t)count
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsVertexAmplificationCount:count];
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)accelerationStructureSizesWithDescriptor:(SEL)descriptor
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

- (id)newAccelerationStructureWithSize:(unint64_t)size
{
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  v5 = [[MTLToolsAccelerationStructure alloc] initWithBaseObject:v4 parent:self];

  return v5;
}

- (id)newAccelerationStructureWithDescriptor:(id)descriptor
{
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  v5 = [[MTLToolsAccelerationStructure alloc] initWithBaseObject:v4 parent:self];

  return v5;
}

- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];
  v6 = [[MTLToolsAccelerationStructure alloc] initWithBaseObject:v5 parent:self];

  return v6;
}

- (BOOL)isCompatibleWithAccelerationStructure:(id)structure
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isCompatibleWithAccelerationStructure:structure];
}

- (id)newAccelerationStructureWithBuffer:(id)buffer offset:(unint64_t)offset
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];
  v6 = [[MTLToolsAccelerationStructure alloc] initWithBaseObject:v5 parent:self];

  return v6;
}

- (id)newAccelerationStructureWithBuffer:(id)buffer offset:(unint64_t)offset resourceIndex:(unint64_t)index
{
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  v7 = [[MTLToolsAccelerationStructure alloc] initWithBaseObject:v6 parent:self];

  return v7;
}

- (id)deserializePrimitiveAccelerationStructureFromBytes:(void *)bytes withDescriptor:(id)descriptor
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

- (id)deserializeInstanceAccelerationStructureFromBytes:(void *)bytes primitiveAccelerationStructures:(id)structures withDescriptor:(id)descriptor
{
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(structures, "count")}];
  if ([structures count])
  {
    v10 = 0;
    v11 = 1;
    do
    {
      [v9 addObject:{objc_msgSend(objc_msgSend(structures, "objectAtIndexedSubscript:", v10), "baseObject")}];
      v10 = v11;
    }

    while ([structures count] > v11++);
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

- (id)newAccelerationStructureWithSize:(unint64_t)size withDescriptor:(id)descriptor
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

- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBytes:(const void *)bytes withDescriptor:(id)descriptor
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  v10 = unwrapAccelerationStructureDescriptor(descriptor);

  [baseObject deserializePrimitiveAccelerationStructure:baseObject2 fromBytes:bytes withDescriptor:v10];
}

- (void)deserializeInstanceAccelerationStructure:(id)structure fromBytes:(const void *)bytes primitiveAccelerationStructures:(id)structures withDescriptor:(id)descriptor
{
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(structures, "count")}];
  if ([structures count])
  {
    v12 = 0;
    v13 = 1;
    do
    {
      [v11 addObject:{objc_msgSend(objc_msgSend(structures, "objectAtIndexedSubscript:", v12), "baseObject")}];
      v12 = v13;
    }

    while ([structures count] > v13++);
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  v17 = unwrapAccelerationStructureDescriptor(descriptor);

  [baseObject deserializeInstanceAccelerationStructure:baseObject2 fromBytes:bytes primitiveAccelerationStructures:v11 withDescriptor:v17];
}

- (BOOL)isRTZRoundingSupported
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isRTZRoundingSupported];
}

- (BOOL)supportsTextureWriteRoundingMode:(int64_t)mode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsTextureWriteRoundingMode:mode];
}

- (int64_t)defaultTextureWriteRoundingMode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject defaultTextureWriteRoundingMode];
}

- (BOOL)isAnisoSampleFixSupported
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isAnisoSampleFixSupported];
}

- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor
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

- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor
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

- (id)newProfileWithExecutionSize:(unint64_t)size
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

- (id)unwrapMTLCommandBufferDescriptor:(id)descriptor alwaysCopy:(BOOL)copy
{
  copyCopy = copy;
  if (![descriptor deadlineProfile] && !copyCopy)
  {
    return descriptor;
  }

  v7 = [descriptor copy];
  v8 = [descriptor copy];
  deadlineProfile = [v8 deadlineProfile];
  if (deadlineProfile)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MTLToolsDevice unwrapMTLCommandBufferDescriptor:alwaysCopy:];
    }
  }

  [v8 setDeadlineProfile:{objc_msgSend(deadlineProfile, "baseObject")}];

  return v7;
}

- (BOOL)supportsBufferlessClientStorageTexture
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsBufferlessClientStorageTexture];
}

- (BOOL)supportsComputeMemoryBarrier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsComputeMemoryBarrier];
}

- (BOOL)supportsRenderMemoryBarrier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRenderMemoryBarrier];
}

- (BOOL)supportsPartialRenderMemoryBarrier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsPartialRenderMemoryBarrier];
}

- (BOOL)supportsArgumentBuffersTier2
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsArgumentBuffersTier2];
}

- (BOOL)supportsReadWriteTextureArgumentsTier2
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsReadWriteTextureArgumentsTier2];
}

- (BOOL)supportsStreamingCodecSignaling
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsStreamingCodecSignaling];
}

- (BOOL)supportsProgrammableSamplePositions
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsProgrammableSamplePositions];
}

- (BOOL)supportsLargeFramebufferConfigs
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsLargeFramebufferConfigs];
}

- (BOOL)supportsCustomBorderColor
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsCustomBorderColor];
}

- (BOOL)supportsSamplerAddressModeClampToHalfBorder
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsSamplerAddressModeClampToHalfBorder];
}

- (BOOL)supportsBCTextureCompression
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsBCTextureCompression];
}

- (BOOL)supports3DBCTextures
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supports3DBCTextures];
}

- (BOOL)supportsRGBA10A2Gamma
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRGBA10A2Gamma];
}

- (BOOL)supportsBGR10A2
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsBGR10A2];
}

- (BOOL)supportsPrimitiveRestartOverride
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsPrimitiveRestartOverride];
}

- (BOOL)supportsGlobalVariableRelocation
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsGlobalVariableRelocation];
}

- (BOOL)supportsGlobalVariableRelocationRender
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsGlobalVariableRelocationRender];
}

- (BOOL)supportsGlobalVariableRelocationCompute
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsGlobalVariableRelocationCompute];
}

- (BOOL)supportsTLS
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsTLS];
}

- (BOOL)supportsGlobalVariableBindings
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsGlobalVariableBindings];
}

- (BOOL)supportsGlobalVariableBindingInDylibs
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsGlobalVariableBindingInDylibs];
}

- (BOOL)supports32bpcMSAATextures
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supports32bpcMSAATextures];
}

- (BOOL)supports32BitMSAA
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supports32BitMSAA];
}

- (BOOL)supports32BitFloatFiltering
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supports32BitFloatFiltering];
}

- (BOOL)supportsQueryTextureLOD
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsQueryTextureLOD];
}

- (BOOL)supportsVertexAmplification
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsVertexAmplification];
}

- (BOOL)supportsSamplerReductionMode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsSamplerReductionMode];
}

- (BOOL)supportsPlacementHeaps
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsPlacementHeaps];
}

- (BOOL)supportsOpenCLTextureWriteSwizzles
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsOpenCLTextureWriteSwizzles];
}

- (BOOL)supportsPullModelInterpolation
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsPullModelInterpolation];
}

- (BOOL)supportsInt64
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsInt64];
}

- (BOOL)supportsFixedLinePointFillDepthGradient
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsFixedLinePointFillDepthGradient];
}

- (BOOL)supportsLateEvalEvent
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsLateEvalEvent];
}

- (BOOL)supportsNonZeroTextureWriteLOD
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsNonZeroTextureWriteLOD];
}

- (BOOL)supportsSharedTextureHandles
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsSharedTextureHandles];
}

- (BOOL)supportsBufferPrefetchStatistics
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsBufferPrefetchStatistics];
}

- (BOOL)supportsLimitedYUVFormats
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsLimitedYUVFormats];
}

- (BOOL)supportsNonPrivateDepthStencilTextures
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsNonPrivateDepthStencilTextures];
}

- (BOOL)supportsNonPrivateMSAATextures
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsNonPrivateMSAATextures];
}

- (BOOL)supportsSharedStorageHeapResources
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsSharedStorageHeapResources];
}

- (BOOL)supportsSharedStorageTextures
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsSharedStorageTextures];
}

- (BOOL)supportsLinearTextureFromSharedBuffer
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsLinearTextureFromSharedBuffer];
}

- (BOOL)supportsPipelineLibraries
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsPipelineLibraries];
}

- (BOOL)supportsFragmentOnlyEncoders
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsFragmentOnlyEncoders];
}

- (BOOL)supportsBufferWithIOSurface
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsBufferWithIOSurface];
}

- (BOOL)supportsProgrammableBlending
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsProgrammableBlending];
}

- (BOOL)supportsRenderToLinearTextures
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRenderToLinearTextures];
}

- (BOOL)supportsMemorylessRenderTargets
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsMemorylessRenderTargets];
}

- (BOOL)supportsFastMathInfNaNPropagation
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsFastMathInfNaNPropagation];
}

- (BOOL)supportsInvariantVertexPosition
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsInvariantVertexPosition];
}

- (BOOL)supportsShaderLODAverage
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsShaderLODAverage];
}

- (BOOL)supportsRelaxedTextureViewRequirements
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRelaxedTextureViewRequirements];
}

- (BOOL)supportsSeparateDepthStencil
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsSeparateDepthStencil];
}

- (BOOL)supportsGPUStatistics
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsGPUStatistics];
}

- (BOOL)supportsCompressedTextureViewSPI
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsCompressedTextureViewSPI];
}

- (BOOL)supportsRenderTargetTextureRotation
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRenderTargetTextureRotation];
}

- (BOOL)supportsDynamicControlPointCount
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsDynamicControlPointCount];
}

- (BOOL)supportsIABHashForTools
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsIABHashForTools];
}

- (BOOL)supportsBinaryArchives
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsBinaryArchives];
}

- (BOOL)supportsBinaryLibraries
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsBinaryLibraries];
}

- (BOOL)supportsDeadlineProfile
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsDeadlineProfile];
}

- (BOOL)supportsFillTexture
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsFillTexture];
}

- (BOOL)supportsSetThreadgroupPackingDisabled
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsSetThreadgroupPackingDisabled];
}

- (BOOL)supportsASTCTextureCompression
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsASTCTextureCompression];
}

- (BOOL)supportsExtendedYUVFormats
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsExtendedYUVFormats];
}

- (BOOL)supportsPublicXR10Formats
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsPublicXR10Formats];
}

- (BOOL)supportsSRGBwrites
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsSRGBwrites];
}

- (BOOL)supportsDepthClipMode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsDepthClipMode];
}

- (BOOL)supportsResourceHeaps
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsResourceHeaps];
}

- (BOOL)supportsArgumentBuffers
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsArgumentBuffers];
}

- (BOOL)supportsPacked32TextureBufferWrites
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsPacked32TextureBufferWrites];
}

- (BOOL)supports3DASTCTextures
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supports3DASTCTextures];
}

- (BOOL)supportsExtendedXR10Formats
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsExtendedXR10Formats];
}

- (BOOL)supportsFragmentBufferWrites
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsFragmentBufferWrites];
}

- (BOOL)supportsCountingOcclusionQuery
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsCountingOcclusionQuery];
}

- (BOOL)supportsBaseVertexInstanceDrawing
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsBaseVertexInstanceDrawing];
}

- (BOOL)supportsIndirectDrawAndDispatch
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsIndirectDrawAndDispatch];
}

- (BOOL)supportsTessellation
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsTessellation];
}

- (BOOL)supportsReadWriteBufferArguments
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsReadWriteBufferArguments];
}

- (BOOL)supportsArrayOfTextures
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsArrayOfTextures];
}

- (BOOL)supportsArrayOfSamplers
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsArrayOfSamplers];
}

- (BOOL)supportsCombinedMSAAStoreAndResolveAction
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsCombinedMSAAStoreAndResolveAction];
}

- (BOOL)supportsMutableTier1ArgumentBuffers
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsMutableTier1ArgumentBuffers];
}

- (BOOL)supportsSamplerCompareFunction
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsSamplerCompareFunction];
}

- (BOOL)supportsMSAADepthResolve
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsMSAADepthResolve];
}

- (BOOL)supportsMSAAStencilResolve
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsMSAAStencilResolve];
}

- (BOOL)supportsMSAADepthResolveFilter
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsMSAADepthResolveFilter];
}

- (BOOL)supportsGFXIndirectCommandBuffers
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsGFXIndirectCommandBuffers];
}

- (BOOL)supportsCMPIndirectCommandBuffers
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsCMPIndirectCommandBuffers];
}

- (BOOL)supportsIndirectStageInRegion
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsIndirectStageInRegion];
}

- (BOOL)supportsIndirectTextures
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsIndirectTextures];
}

- (BOOL)supportsNorm16BCubicFiltering
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsNorm16BCubicFiltering];
}

- (BOOL)supportsTextureOutOfBoundsReads
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsTextureOutOfBoundsReads];
}

- (BOOL)supportsTextureSwizzle
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsTextureSwizzle];
}

- (BOOL)supportsAlphaYUVFormats
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsAlphaYUVFormats];
}

- (BOOL)supportsMemoryOrderAtomics
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsMemoryOrderAtomics];
}

- (BOOL)supportsQuadGroup
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsQuadGroup];
}

- (BOOL)supportsRenderTextureWrites
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRenderTextureWrites];
}

- (BOOL)supportsImageBlocks
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsImageBlocks];
}

- (BOOL)supportsTileShaders
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsTileShaders];
}

- (BOOL)supportsImageBlockSampleCoverageControl
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsImageBlockSampleCoverageControl];
}

- (BOOL)supportsNativeHardwareFP16
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsNativeHardwareFP16];
}

- (BOOL)supportsPostDepthCoverage
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsPostDepthCoverage];
}

- (BOOL)supportsMipLevelsSmallerThanBlockSize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsMipLevelsSmallerThanBlockSize];
}

- (BOOL)supportsNonUniformThreadgroupSize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsNonUniformThreadgroupSize];
}

- (BOOL)supportsReadWriteTextureArguments
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsReadWriteTextureArguments];
}

- (BOOL)supportsReadWriteTextureCubeArguments
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsReadWriteTextureCubeArguments];
}

- (BOOL)supportsTextureCubeArray
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsTextureCubeArray];
}

- (BOOL)supportsQuadShufflesAndBroadcast
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsQuadShufflesAndBroadcast];
}

- (BOOL)supportsConcurrentComputeDispatch
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsConcurrentComputeDispatch];
}

- (BOOL)supportsRenderPassWithoutRenderTarget
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRenderPassWithoutRenderTarget];
}

- (BOOL)supportsRasterOrderGroups
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRasterOrderGroups];
}

- (BOOL)supportsRasterOrderGroupsColorAttachment
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRasterOrderGroupsColorAttachment];
}

- (BOOL)supportsDynamicAttributeStride
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsDynamicAttributeStride];
}

- (BOOL)supportsLinearTexture2DArray
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsLinearTexture2DArray];
}

- (BOOL)supportsNonSquareTileShaders
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsNonSquareTileShaders];
}

- (BOOL)supportsSeparateVisibilityAndShadingRate
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsSeparateVisibilityAndShadingRate];
}

- (BOOL)supports2DLinearTexArraySPI
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supports2DLinearTexArraySPI];
}

- (BOOL)supportsLayeredRendering
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsLayeredRendering];
}

- (BOOL)supportsViewportAndScissorArray
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsViewportAndScissorArray];
}

- (BOOL)supportsIndirectTessellation
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsIndirectTessellation];
}

- (BOOL)supportsMSAAStencilResolveFilter
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsMSAAStencilResolveFilter];
}

- (BOOL)supportsStencilFeedback
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsStencilFeedback];
}

- (BOOL)supportsFP32TessFactors
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsFP32TessFactors];
}

- (BOOL)supportsUnalignedVertexFetch
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsUnalignedVertexFetch];
}

- (BOOL)supportsExtendedVertexFormats
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsExtendedVertexFormats];
}

- (BOOL)supportsResourceDetachBacking
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsResourceDetachBacking];
}

- (BOOL)supportsBufferWithAddressRanges
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsBufferWithAddressRanges];
}

- (BOOL)supportsHeapWithAddressRanges
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsHeapWithAddressRanges];
}

- (BOOL)supportsSIMDGroup
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsSIMDGroup];
}

- (BOOL)supportsShaderMinLODClamp
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsShaderMinLODClamp];
}

- (BOOL)supportsSIMDShufflesAndBroadcast
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsSIMDShufflesAndBroadcast];
}

- (BOOL)supportsWritableArrayOfTextures
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsWritableArrayOfTextures];
}

- (BOOL)supportsVariableRateRasterization
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsVariableRateRasterization];
}

- (BOOL)supportsYCBCRFormats
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsYCBCRFormats];
}

- (BOOL)supportsYCBCRFormatsPQ
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsYCBCRFormatsPQ];
}

- (BOOL)supportsYCBCRFormats12
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsYCBCRFormats12];
}

- (BOOL)supportsYCBCRFormatsXR
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsYCBCRFormatsXR];
}

- (BOOL)supportsASTCHDRTextureCompression
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsASTCHDRTextureCompression];
}

- (BOOL)supportsSparseTextures
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsSparseTextures];
}

- (BOOL)supportsSparseHeaps
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsSparseHeaps];
}

- (BOOL)supportsIndirectWritableTextures
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsIndirectWritableTextures];
}

- (BOOL)supportsFunctionPointers
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsFunctionPointers];
}

- (BOOL)supportsDynamicLibraries
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsDynamicLibraries];
}

- (BOOL)supportsStatefulDynamicLibraries
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsStatefulDynamicLibraries];
}

- (BOOL)supportsRenderDynamicLibraries
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRenderDynamicLibraries];
}

- (BOOL)supportsFunctionPointersFromRender
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsFunctionPointersFromRender];
}

- (BOOL)supportsSharedFunctionTables
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsSharedFunctionTables];
}

- (BOOL)supportsRaytracingFromRender
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRaytracingFromRender];
}

- (BOOL)supportsPrimitiveMotionBlur
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsPrimitiveMotionBlur];
}

- (BOOL)supportsRayTracingExtendedVertexFormats
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRayTracingExtendedVertexFormats];
}

- (BOOL)supportsHeapAccelerationStructureAllocation
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsHeapAccelerationStructureAllocation];
}

- (BOOL)supportsRayTracingPerPrimitiveData
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRayTracingPerPrimitiveData];
}

- (BOOL)supportsRayTracingTraversalMetrics
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRayTracingTraversalMetrics];
}

- (BOOL)supportsRayTracingBuffersFromTables
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRayTracingBuffersFromTables];
}

- (BOOL)supportsRayTracingAccelerationStructureCPUDeserialization
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRayTracingAccelerationStructureCPUDeserialization];
}

- (BOOL)supportsRayTracingMultiLevelInstancing
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRayTracingMultiLevelInstancing];
}

- (BOOL)supportsRayTracingIndirectInstanceAccelerationStructureBuild
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRayTracingIndirectInstanceAccelerationStructureBuild];
}

- (BOOL)supportsRayTracingGPUTableUpdateBuffers
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRayTracingGPUTableUpdateBuffers];
}

- (BOOL)supportsRayTracingCurves
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRayTracingCurves];
}

- (BOOL)supportsShaderBarycentricCoordinates
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsShaderBarycentricCoordinates];
}

- (BOOL)supportsBlackOrWhiteSamplerBorderColors
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsBlackOrWhiteSamplerBorderColors];
}

- (BOOL)supportsMirrorClampToEdgeSamplerMode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsMirrorClampToEdgeSamplerMode];
}

- (BOOL)supportsSIMDReduction
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsSIMDReduction];
}

- (BOOL)supportsDepthClipModeClampExtended
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsDepthClipModeClampExtended];
}

- (BOOL)supportsTexture2DMultisampleArray
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsTexture2DMultisampleArray];
}

- (BOOL)supportsForceSeamsOnCubemaps
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsForceSeamsOnCubemaps];
}

- (BOOL)supportsFloat16BCubicFiltering
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsFloat16BCubicFiltering];
}

- (BOOL)supportsFloat16InfNanFiltering
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsFloat16InfNanFiltering];
}

- (BOOL)supportsRTZRounding
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRTZRounding];
}

- (BOOL)supportsAnisoSampleFix
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsAnisoSampleFix];
}

- (BOOL)supportsYCBCRPackedFormatsPQ
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsYCBCRPackedFormatsPQ];
}

- (BOOL)supportsYCBCRPackedFormats12
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsYCBCRPackedFormats12];
}

- (BOOL)supportsYCBCRPackedFormatsXR
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsYCBCRPackedFormatsXR];
}

- (BOOL)supportsBufferBoundsChecking
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsBufferBoundsChecking];
}

- (BOOL)supportsForkJoin
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsForkJoin];
}

- (BOOL)supportsDevicePartitioning
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsDevicePartitioning];
}

- (BOOL)supportsComputeCompressedTextureWrite
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsComputeCompressedTextureWrite];
}

- (BOOL)supportsSIMDGroupMatrix
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsSIMDGroupMatrix];
}

- (BOOL)supportsInterchangeTiled
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsInterchangeTiled];
}

- (BOOL)supportsQuadReduction
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsQuadReduction];
}

- (BOOL)supportsCommandQueueBarriers
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsCommandQueueBarriers];
}

- (BOOL)supportsVirtualSubstreams
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsVirtualSubstreams];
}

- (BOOL)supportsTensors
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsTensors];
}

- (BOOL)supportsMTL4CommandQueue
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsMTL4CommandQueue];
}

- (BOOL)supportsMTL4CommandAllocator
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsMTL4CommandAllocator];
}

- (BOOL)supportsMTL4RenderCommandEncoder
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsMTL4RenderCommandEncoder];
}

- (BOOL)supportsMTL4ComputeCommandEncoder
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsMTL4ComputeCommandEncoder];
}

- (BOOL)supportsMTLTextureViewPools
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsMTLTextureViewPools];
}

- (BOOL)supportsMTL4PlacementSparse
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsMTL4PlacementSparse];
}

- (BOOL)supportsMTL4Compiler
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsMTL4Compiler];
}

- (BOOL)supportsMTL4LateBoundRenderTargets
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsMTL4LateBoundRenderTargets];
}

- (BOOL)supportsMTL4PSOSpecialization
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsMTL4PSOSpecialization];
}

- (BOOL)supportsMachineLearningCommandEncoders
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsMachineLearningCommandEncoders];
}

- (BOOL)supportsMTL4Counters
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsMTL4Counters];
}

- (BOOL)supportsSIMDShuffleAndFill
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsSIMDShuffleAndFill];
}

- (BOOL)supportsBfloat16Format
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsBfloat16Format];
}

- (BOOL)supportsSparseDepthAttachments
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsSparseDepthAttachments];
}

- (BOOL)supportsAtomicUlongVoidMinMax
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsAtomicUlongVoidMinMax];
}

- (BOOL)supportsLossyCompression
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsLossyCompression];
}

- (BOOL)supportsAtomicFloat
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsAtomicFloat];
}

- (BOOL)supportsMeshShaders
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsMeshShaders];
}

- (BOOL)supportsFunctionPointersFromMesh
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsFunctionPointersFromMesh];
}

- (BOOL)supportsMeshShadersInICB
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsMeshShadersInICB];
}

- (BOOL)supportsMeshRenderDynamicLibraries
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsMeshRenderDynamicLibraries];
}

- (BOOL)supportsBfloat16Buffers
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsBfloat16Buffers];
}

- (BOOL)supportsCommandBufferJump
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsCommandBufferJump];
}

- (BOOL)supportsColorSpaceConversionMatrixSelection
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsColorSpaceConversionMatrixSelection];
}

- (BOOL)supportsPerPlaneCompression
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsPerPlaneCompression];
}

- (BOOL)supportsAtomicWaitNotify
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsAtomicWaitNotify];
}

- (BOOL)supportsConditionalLoadStore
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsConditionalLoadStore];
}

- (BOOL)supportsStackOverflowErrorCode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsStackOverflowErrorCode];
}

- (BOOL)supportsRayTracingICBs
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRayTracingICBs];
}

- (BOOL)supportsPerformanceStateAssertion
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsPerformanceStateAssertion];
}

- (BOOL)supportsAIRNTBinaryArchiveSpecializedFunctions
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsAIRNTBinaryArchiveSpecializedFunctions];
}

- (BOOL)supportsAIRNTBinaryArchiveFunctionPointers
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsAIRNTBinaryArchiveFunctionPointers];
}

- (BOOL)supportsAIRNTBinaryArchiveStitchedFunctions
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsAIRNTBinaryArchiveStitchedFunctions];
}

- (BOOL)supportsExplicitVisibilityGroups
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsExplicitVisibilityGroups];
}

- (BOOL)supportsRayTracingMatrixLayout
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRayTracingMatrixLayout];
}

- (BOOL)supportsRayTracingDirectIntersectionResultAccess
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRayTracingDirectIntersectionResultAccess];
}

- (BOOL)supportsRayTracingPerComponentMotionInterpolation
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsRayTracingPerComponentMotionInterpolation];
}

- (BOOL)supportsExtendedSamplerLODBiasRange
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsExtendedSamplerLODBiasRange];
}

- (BOOL)supportsDepthBoundsTesting
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsDepthBoundsTesting];
}

- (BOOL)supportsExtendedIndirectRenderCommand
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsExtendedIndirectRenderCommand];
}

- (BOOL)supportsIntersectionFunctionBuffers
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsIntersectionFunctionBuffers];
}

- (BOOL)supportsMXU
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsMXU];
}

- (BOOL)supportsFP8
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsFP8];
}

- (BOOL)supportsConditionalTileDispatch
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsConditionalTileDispatch];
}

- (BOOL)supportsTextureAccessPatterns
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsTextureAccessPatterns];
}

- (BOOL)supportsDeviceCoherency
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject supportsDeviceCoherency];
}

- (id)getDynamicLibraryForBaseObject:(id)object
{
  dynamicLibraryObjectCache = self->dynamicLibraryObjectCache;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__MTLToolsDevice_getDynamicLibraryForBaseObject___block_invoke;
  v5[3] = &unk_2787B3BA8;
  v5[4] = object;
  v5[5] = self;
  return [(MTLToolsObjectCache *)dynamicLibraryObjectCache getCachedObjectForKey:object onMiss:v5];
}

uint64_t __49__MTLToolsDevice_getDynamicLibraryForBaseObject___block_invoke(uint64_t a1)
{
  v2 = [MTLToolsDynamicLibrary alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [(MTLToolsObject *)v2 initWithBaseObject:v3 parent:v4];
}

- (id)getFunctionForBaseObject:(id)object library:(id)library
{
  functionObjectCache = self->functionObjectCache;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__MTLToolsDevice_getFunctionForBaseObject_library___block_invoke;
  v6[3] = &unk_2787B3BD0;
  v6[4] = object;
  v6[5] = library;
  return [(MTLToolsObjectCache *)functionObjectCache getCachedObjectForKey:object onMiss:v6];
}

uint64_t __51__MTLToolsDevice_getFunctionForBaseObject_library___block_invoke(uint64_t a1)
{
  v2 = [MTLToolsFunction alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [(MTLToolsFunction *)v2 initWithFunction:v3 library:v4];
}

- (id)getDepthStencilStateForBaseObject:(id)object descriptor:(id)descriptor
{
  depthStencilObjectCache = self->depthStencilObjectCache;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__MTLToolsDevice_getDepthStencilStateForBaseObject_descriptor___block_invoke;
  v6[3] = &unk_2787B3D38;
  v6[4] = object;
  v6[5] = descriptor;
  v6[6] = self;
  return [(MTLToolsObjectCache *)depthStencilObjectCache getCachedObjectForKey:object onMiss:v6];
}

uint64_t __63__MTLToolsDevice_getDepthStencilStateForBaseObject_descriptor___block_invoke(void *a1)
{
  v2 = [MTLToolsDepthStencilState alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  return [(MTLToolsDepthStencilState *)v2 initWithDepthStencilState:v3 descriptor:v4 device:v5];
}

- (id)getSamplerStateForBaseObject:(id)object descriptor:(id)descriptor
{
  samplerObjectCache = self->samplerObjectCache;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__MTLToolsDevice_getSamplerStateForBaseObject_descriptor___block_invoke;
  v6[3] = &unk_2787B3D60;
  v6[4] = object;
  v6[5] = descriptor;
  v6[6] = self;
  return [(MTLToolsObjectCache *)samplerObjectCache getCachedObjectForKey:object onMiss:v6];
}

uint64_t __58__MTLToolsDevice_getSamplerStateForBaseObject_descriptor___block_invoke(void *a1)
{
  v2 = [MTLToolsSamplerState alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  return [(MTLToolsSamplerState *)v2 initWithSamplerState:v3 descriptor:v4 device:v5];
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapAccelerationStructureSizeAndAlignWithSize:(unint64_t)size
{
  baseObject = [(MTLToolsObject *)self baseObject];

  v5 = [baseObject heapAccelerationStructureSizeAndAlignWithSize:size];
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapAccelerationStructureSizeAndAlignWithDescriptor:(id)descriptor
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v5 = unwrapAccelerationStructureDescriptor(descriptor);

  v6 = [baseObject heapAccelerationStructureSizeAndAlignWithDescriptor:v5];
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

- (id)newArgumentEncoderWithBufferBinding:(id)binding
{
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  v5 = [(MTLToolsObject *)[MTLToolsArgumentEncoder alloc] initWithBaseObject:v4 parent:self];

  return v5;
}

- (id)newIOHandleWithURL:(id)l error:(id *)error
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];
  v6 = [[MTLToolsIOHandle alloc] initWithBaseObject:v5 parent:self];

  return v6;
}

- (id)newIOHandleWithURL:(id)l compressionType:(int64_t)type error:(id *)error
{
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  v7 = [[MTLToolsIOHandle alloc] initWithBaseObject:v6 parent:self];

  return v7;
}

- (id)newUncachedIOHandleWithURL:(id)l error:(id *)error
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];
  v6 = [[MTLToolsIOHandle alloc] initWithBaseObject:v5 parent:self];

  return v6;
}

- (id)newUncachedIOHandleWithURL:(id)l compressionType:(int64_t)type error:(id *)error
{
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  v7 = [[MTLToolsIOHandle alloc] initWithBaseObject:v6 parent:self];

  return v7;
}

- (id)newIOCommandQueueWithDescriptor:(id)descriptor error:(id *)error
{
  v7 = [descriptor copy];
  if ([descriptor scratchBufferAllocator])
  {
    v8 = -[MTLToolsIOScratchBufferAllocator initWithBaseObject:parent:]([MTLToolsIOScratchBufferAllocator alloc], "initWithBaseObject:parent:", [descriptor scratchBufferAllocator], self);
    [v7 setScratchBufferAllocator:v8];
  }

  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  v10 = [[MTLToolsIOCommandQueue alloc] initWithBaseObject:v9 parent:self];

  return v10;
}

- (id)newPerformanceStateAssertion:(int64_t)assertion error:(id *)error
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
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject currentPerformanceState];
}

- (id)lookupRecompiledBinaryArchive:(id)archive
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject lookupRecompiledBinaryArchive:archive];
}

- (unint64_t)maximumConcurrentCompilationTaskCount
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maximumConcurrentCompilationTaskCount];
}

- (BOOL)requiresLegacyCompilerProcessesCount
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject requiresLegacyCompilerProcessesCount];
}

- (unint64_t)maxAccelerationStructureTraversalDepth
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxAccelerationStructureTraversalDepth];
}

- (BOOL)requiresBFloat16Emulation
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject requiresBFloat16Emulation];
}

- (id)newTextureWithDescriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unint64_t)plane slice:(unint64_t)slice
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

- (id)functionHandleWithFunction:(id)function
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = MTLFunctionHandleToToolsFunctionHandle(v6, function, self);
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (id)functionHandleWithFunction:(id)function resourceIndex:(unint64_t)index
{
  v7 = objc_autoreleasePoolPush();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v9 = MTLFunctionHandleToToolsFunctionHandle(v8, function, self);
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v7);

  return v9;
}

- (id)newResidencySetWithDescriptor:(id)descriptor error:(id *)error
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

- (id)newTensorWithDescriptor:(id)descriptor error:(id *)error
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
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject llvmVersion];
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

- (id)newMTL4CommandQueueWithDescriptor:(id)descriptor error:(id *)error
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

- (id)newCommandAllocatorWithDescriptor:(id)descriptor error:(id *)error
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

- (id)newArgumentTableWithDescriptor:(id)descriptor error:(id *)error
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

- (id)newCompilerWithDescriptor:(id)descriptor error:(id *)error
{
  v13 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [(MTLToolsDevice *)self newUnwrappedMTL4CompilerDescriptor:descriptor];
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];

  if (error)
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
  if (error)
  {
    *error = v13;
  }

  return v11;
}

- (id)newArchiveWithURL:(id)l error:(id *)error
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

- (id)newPipelineDataSetSerializerWithDescriptor:(id)descriptor
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

- (id)newLibraryWithMPSGraphPackageURL:(id)l name:(id)name error:(id *)error
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

- (id)newTextureViewPoolWithDescriptor:(id)descriptor error:(id *)error
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

- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options placementSparsePageSize:(int64_t)size
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

- (id)newCounterHeapWithDescriptor:(id)descriptor error:(id *)error
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

- (id)mtlTensorFromGpuResourceID:(MTLResourceID)d
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

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)tensorSizeAndAlignWithDescriptor:(id)descriptor
{
  baseObject = [(MTLToolsObject *)self baseObject];

  v5 = [baseObject tensorSizeAndAlignWithDescriptor:descriptor];
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (unint64_t)queryTimestampFrequency
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject queryTimestampFrequency];
}

- (unint64_t)sizeOfCounterHeapEntry:(int64_t)entry
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject sizeOfCounterHeapEntry:entry];
}

- (id)functionHandleWithBinaryFunction:(id)function
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = MTLFunctionHandleToToolsFunctionHandleWithBinaryFunction(v6, function, self);
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (id)newUnwrappedMTL4FunctionDescriptor:(id)descriptor
{
  v21 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [descriptor copy];
    [v5 setLibrary:{objc_msgSend(objc_msgSend(v5, "library"), "baseObject")}];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [descriptor copy];
      v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(v5, "functionDescriptors"), "count")}];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      functionDescriptors = [v5 functionDescriptors];
      v8 = [functionDescriptors countByEnumeratingWithState:&v16 objects:v20 count:16];
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
              objc_enumerationMutation(functionDescriptors);
            }

            [v6 addObject:{-[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", *(*(&v16 + 1) + 8 * i))}];
          }

          v9 = [functionDescriptors countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v9);
      }

      [v5 setFunctionDescriptors:v6];
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v13 = [descriptor copy];
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

- (id)newUnwrappedStaticLinkingDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v54 = *MEMORY[0x277D85DE8];
  v5 = [descriptor copy];
  v6 = objc_autoreleasePoolPush();
  if ([objc_msgSend(descriptorCopy "functionDescriptors")])
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(descriptorCopy, "functionDescriptors"), "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    functionDescriptors = [descriptorCopy functionDescriptors];
    v9 = [functionDescriptors countByEnumeratingWithState:&v46 objects:v53 count:16];
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
            objc_enumerationMutation(functionDescriptors);
          }

          [v7 addObject:{-[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", *(*(&v46 + 1) + 8 * i))}];
        }

        v10 = [functionDescriptors countByEnumeratingWithState:&v46 objects:v53 count:16];
      }

      while (v10);
    }

    [v5 setFunctionDescriptors:v7];
  }

  if ([objc_msgSend(descriptorCopy "privateFunctionDescriptors")])
  {
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(descriptorCopy, "privateFunctionDescriptors"), "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    privateFunctionDescriptors = [descriptorCopy privateFunctionDescriptors];
    v15 = [privateFunctionDescriptors countByEnumeratingWithState:&v42 objects:v52 count:16];
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
            objc_enumerationMutation(privateFunctionDescriptors);
          }

          [v13 addObject:{-[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", *(*(&v42 + 1) + 8 * j))}];
        }

        v16 = [privateFunctionDescriptors countByEnumeratingWithState:&v42 objects:v52 count:16];
      }

      while (v16);
    }

    [v5 setPrivateFunctionDescriptors:v13];
  }

  if ([objc_msgSend(descriptorCopy "groups")])
  {
    v29 = v6;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = [descriptorCopy groups];
    v32 = [obj countByEnumeratingWithState:&v38 objects:v51 count:16];
    if (v32)
    {
      v31 = *v39;
      v33 = descriptorCopy;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v39 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v38 + 1) + 8 * k);
          if ([objc_msgSend(objc_msgSend(descriptorCopy "groups")])
          {
            [dictionary setObject:objc_msgSend(MEMORY[0x277CBEB18] forKeyedSubscript:{"arrayWithCapacity:", objc_msgSend(objc_msgSend(objc_msgSend(v33, "groups"), "objectForKeyedSubscript:", v21), "count")), v21}];
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

                  [objc_msgSend(dictionary objectForKeyedSubscript:{v21), "addObject:", -[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", *(*(&v34 + 1) + 8 * m))}];
                }

                v24 = [v22 countByEnumeratingWithState:&v34 objects:v50 count:16];
              }

              while (v24);
            }
          }

          descriptorCopy = v33;
        }

        v32 = [obj countByEnumeratingWithState:&v38 objects:v51 count:16];
      }

      while (v32);
    }

    [v5 setGroups:dictionary];
    v6 = v29;
  }

  objc_autoreleasePoolPop(v6);
  v27 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)newUnwrappedMTL4RenderPipelineBinaryFunctionsDescriptor:(id)descriptor
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = [descriptor copy];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(descriptor, "vertexAdditionalBinaryFunctions"), "count")}];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  vertexAdditionalBinaryFunctions = [descriptor vertexAdditionalBinaryFunctions];
  v7 = [vertexAdditionalBinaryFunctions countByEnumeratingWithState:&v53 objects:v61 count:16];
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
          objc_enumerationMutation(vertexAdditionalBinaryFunctions);
        }

        [v5 addObject:{objc_msgSend(*(*(&v53 + 1) + 8 * v10++), "baseObject")}];
      }

      while (v8 != v10);
      v8 = [vertexAdditionalBinaryFunctions countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v8);
  }

  [v4 setVertexAdditionalBinaryFunctions:v5];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(descriptor, "fragmentAdditionalBinaryFunctions"), "count")}];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  fragmentAdditionalBinaryFunctions = [descriptor fragmentAdditionalBinaryFunctions];
  v13 = [fragmentAdditionalBinaryFunctions countByEnumeratingWithState:&v49 objects:v60 count:16];
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
          objc_enumerationMutation(fragmentAdditionalBinaryFunctions);
        }

        [v11 addObject:{objc_msgSend(*(*(&v49 + 1) + 8 * v16++), "baseObject")}];
      }

      while (v14 != v16);
      v14 = [fragmentAdditionalBinaryFunctions countByEnumeratingWithState:&v49 objects:v60 count:16];
    }

    while (v14);
  }

  [v4 setFragmentAdditionalBinaryFunctions:v11];
  v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(descriptor, "tileAdditionalBinaryFunctions"), "count")}];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  tileAdditionalBinaryFunctions = [descriptor tileAdditionalBinaryFunctions];
  v19 = [tileAdditionalBinaryFunctions countByEnumeratingWithState:&v45 objects:v59 count:16];
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
          objc_enumerationMutation(tileAdditionalBinaryFunctions);
        }

        [v17 addObject:{objc_msgSend(*(*(&v45 + 1) + 8 * v22++), "baseObject")}];
      }

      while (v20 != v22);
      v20 = [tileAdditionalBinaryFunctions countByEnumeratingWithState:&v45 objects:v59 count:16];
    }

    while (v20);
  }

  [v4 setTileAdditionalBinaryFunctions:v17];
  v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(descriptor, "objectAdditionalBinaryFunctions"), "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  objectAdditionalBinaryFunctions = [descriptor objectAdditionalBinaryFunctions];
  v25 = [objectAdditionalBinaryFunctions countByEnumeratingWithState:&v41 objects:v58 count:16];
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
          objc_enumerationMutation(objectAdditionalBinaryFunctions);
        }

        [v23 addObject:{objc_msgSend(*(*(&v41 + 1) + 8 * v28++), "baseObject")}];
      }

      while (v26 != v28);
      v26 = [objectAdditionalBinaryFunctions countByEnumeratingWithState:&v41 objects:v58 count:16];
    }

    while (v26);
  }

  [v4 setObjectAdditionalBinaryFunctions:v23];
  v29 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(descriptor, "meshAdditionalBinaryFunctions"), "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  meshAdditionalBinaryFunctions = [descriptor meshAdditionalBinaryFunctions];
  v31 = [meshAdditionalBinaryFunctions countByEnumeratingWithState:&v37 objects:v57 count:16];
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
          objc_enumerationMutation(meshAdditionalBinaryFunctions);
        }

        [v29 addObject:{objc_msgSend(*(*(&v37 + 1) + 8 * v34++), "baseObject")}];
      }

      while (v32 != v34);
      v32 = [meshAdditionalBinaryFunctions countByEnumeratingWithState:&v37 objects:v57 count:16];
    }

    while (v32);
  }

  [v4 setMeshAdditionalBinaryFunctions:v29];
  v35 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)newUnwrappedMTL4PipelineDescriptor:(id)descriptor
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [descriptor copy];
      v10 = -[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", [v5 tileFunctionDescriptor]);
      [v5 setTileFunctionDescriptor:v10];

      v9 = -[MTLToolsDevice newUnwrappedStaticLinkingDescriptor:](self, "newUnwrappedStaticLinkingDescriptor:", [descriptor staticLinkingDescriptor]);
      [v5 setStaticLinkingDescriptor:v9];
      goto LABEL_5;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [descriptor copy];
      v11 = -[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", [v5 objectFunctionDescriptor]);
      [v5 setObjectFunctionDescriptor:v11];

      v12 = -[MTLToolsDevice newUnwrappedStaticLinkingDescriptor:](self, "newUnwrappedStaticLinkingDescriptor:", [descriptor objectStaticLinkingDescriptor]);
      [v5 setObjectStaticLinkingDescriptor:v12];

      v13 = -[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", [v5 meshFunctionDescriptor]);
      [v5 setMeshFunctionDescriptor:v13];

      v14 = -[MTLToolsDevice newUnwrappedStaticLinkingDescriptor:](self, "newUnwrappedStaticLinkingDescriptor:", [descriptor meshStaticLinkingDescriptor]);
      [v5 setMeshStaticLinkingDescriptor:v14];

      v15 = -[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", [v5 fragmentFunctionDescriptor]);
      [v5 setFragmentFunctionDescriptor:v15];

      v16 = -[MTLToolsDevice newUnwrappedStaticLinkingDescriptor:](self, "newUnwrappedStaticLinkingDescriptor:", [descriptor fragmentStaticLinkingDescriptor]);
      [v5 setFragmentStaticLinkingDescriptor:v16];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [descriptor copy];
        v17 = -[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", [v5 computeFunctionDescriptor]);
        [v5 setComputeFunctionDescriptor:v17];

        v16 = -[MTLToolsDevice newUnwrappedStaticLinkingDescriptor:](self, "newUnwrappedStaticLinkingDescriptor:", [descriptor staticLinkingDescriptor]);
        [v5 setStaticLinkingDescriptor:v16];
      }

      else
      {
        v18 = [descriptor isMemberOfClass:objc_opt_class()];
        v19 = [descriptor copy];
        v5 = v19;
        if (!v18)
        {
LABEL_13:
          [v5 setOptions:{objc_msgSend(descriptor, "options")}];
          return v5;
        }

        v16 = -[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", [v19 machineLearningFunctionDescriptor]);
        [v5 setMachineLearningFunctionDescriptor:v16];
      }
    }

    goto LABEL_13;
  }

  v5 = [descriptor copy];
  v6 = -[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", [v5 vertexFunctionDescriptor]);
  [v5 setVertexFunctionDescriptor:v6];

  v7 = -[MTLToolsDevice newUnwrappedStaticLinkingDescriptor:](self, "newUnwrappedStaticLinkingDescriptor:", [descriptor vertexStaticLinkingDescriptor]);
  [v5 setVertexStaticLinkingDescriptor:v7];

  v8 = -[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", [v5 fragmentFunctionDescriptor]);
  [v5 setFragmentFunctionDescriptor:v8];

  v9 = -[MTLToolsDevice newUnwrappedStaticLinkingDescriptor:](self, "newUnwrappedStaticLinkingDescriptor:", [descriptor fragmentStaticLinkingDescriptor]);
  [v5 setFragmentStaticLinkingDescriptor:v9];
LABEL_5:

  return v5;
}

- (id)newUnwrappedMTL4CompilerTaskOptions:(id)options
{
  v18 = *MEMORY[0x277D85DE8];
  if (options)
  {
    v4 = [options copy];
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(options, "lookupArchives"), "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    lookupArchives = [options lookupArchives];
    v7 = [lookupArchives countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(lookupArchives);
          }

          [v5 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * v10++), "baseObject")}];
        }

        while (v8 != v10);
        v8 = [lookupArchives countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)newUnwrappedMTL4BinaryFunctionDescriptor:(id)descriptor
{
  v4 = [descriptor copy];
  [v4 setFunctionDescriptor:{-[MTLToolsDevice newUnwrappedMTL4FunctionDescriptor:](self, "newUnwrappedMTL4FunctionDescriptor:", objc_msgSend(v4, "functionDescriptor"))}];
  return v4;
}

- (id)newUnwrappedMTL4RenderPipelineDynamicLinkingDescriptor:(id)descriptor
{
  v5 = [descriptor copy];
  v6 = -[MTLToolsDevice newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:](self, "newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:", [descriptor vertexLinkingDescriptor]);
  [objc_msgSend(v5 "vertexLinkingDescriptor")];
  [objc_msgSend(v5 "vertexLinkingDescriptor")];

  v7 = -[MTLToolsDevice newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:](self, "newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:", [descriptor fragmentLinkingDescriptor]);
  [objc_msgSend(v5 "fragmentLinkingDescriptor")];
  [objc_msgSend(v5 "fragmentLinkingDescriptor")];

  v8 = -[MTLToolsDevice newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:](self, "newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:", [descriptor tileLinkingDescriptor]);
  [objc_msgSend(v5 "tileLinkingDescriptor")];
  [objc_msgSend(v5 "tileLinkingDescriptor")];

  v9 = -[MTLToolsDevice newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:](self, "newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:", [descriptor objectLinkingDescriptor]);
  [objc_msgSend(v5 "objectLinkingDescriptor")];
  [objc_msgSend(v5 "objectLinkingDescriptor")];

  v10 = -[MTLToolsDevice newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:](self, "newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:", [descriptor meshLinkingDescriptor]);
  [objc_msgSend(v5 "meshLinkingDescriptor")];
  [objc_msgSend(v5 "meshLinkingDescriptor")];

  return v5;
}

- (id)newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:(id)descriptor
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = [descriptor copy];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(descriptor, "preloadedLibraries"), "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  preloadedLibraries = [descriptor preloadedLibraries];
  v7 = [preloadedLibraries countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(preloadedLibraries);
        }

        [v5 addObject:{objc_msgSend(*(*(&v23 + 1) + 8 * v10++), "baseObject")}];
      }

      while (v8 != v10);
      v8 = [preloadedLibraries countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  [v4 setPreloadedLibraries:v5];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(descriptor, "binaryLinkedFunctions"), "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  binaryLinkedFunctions = [descriptor binaryLinkedFunctions];
  v13 = [binaryLinkedFunctions countByEnumeratingWithState:&v19 objects:v27 count:16];
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
          objc_enumerationMutation(binaryLinkedFunctions);
        }

        [v11 addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * v16++), "baseObject")}];
      }

      while (v14 != v16);
      v14 = [binaryLinkedFunctions countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  [v4 setBinaryLinkedFunctions:v11];
  v17 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)newUnwrappedMTL4CompilerDescriptor:(id)descriptor
{
  v3 = [descriptor copy];
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