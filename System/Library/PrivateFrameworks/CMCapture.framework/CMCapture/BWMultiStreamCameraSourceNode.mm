@interface BWMultiStreamCameraSourceNode
+ (void)initialize;
- (BOOL)_serviceZoomForPTS:(uint64_t)a1 synchronizedStreamsCaptureID:;
- (BOOL)_shouldEnableStreamPreviewOutputForNodeOutput:(_BOOL8)result;
- (BOOL)_videoCaptureOutputDimensionsValidForDepth;
- (BOOL)start:(id *)a3;
- (BOOL)stop:(id *)a3;
- (BWMultiStreamCameraSourceNode)initWithCaptureDevice:(id)a3 captureStream:(id)a4;
- (BWPixelBufferPool)_allocateOrReuseBufferPoolsFromSourceNodeOutput:(uint64_t)a3 forAttachedMedia:(uint64_t)a4 onNodeOutput:(void *)a5 outputConfiguration:(char)a6 shareBufferPools:;
- (BWPointCloudFormatRequirements)_videoFormatRequirementsForKeypointDescriptorDataOutput;
- (BWPointCloudFormatRequirements)_videoFormatRequirementsForPointCloudOutput;
- (BWStats)_tallyCompressedIOSurfaceStatsForRawForSBuf:(BWStats *)result;
- (BWVideoFormatRequirements)_videoFormatRequirementsForAttachedLTMThumbnail;
- (BWVideoFormatRequirements)_videoFormatRequirementsForAttachedPreLTMThumbnail;
- (BWVideoFormatRequirements)_videoFormatRequirementsForAttachedWeightSegmentMap;
- (BWVideoFormatRequirements)_videoFormatRequirementsForLightSourceMaskOutput;
- (BWVideoFormatRequirements)_videoFormatRequirementsForOutputID:(void *)a3 configuration:;
- (BWVideoFormatRequirements)_videoFormatRequirementsForPostColorProcessingThumbnailOutput;
- (BWVideoFormatRequirements)_videoFormatRequirementsForSemanticMaskType:(uint64_t)a1;
- (CMAttachmentBearerRef)_createFocusPixelDataSampleBufferFromVideoSampleBuffer:(CMAttachmentBearerRef)result;
- (CMSampleBufferRef)_createDepthDataSampleBufferFromVideoSampleBuffer:(CMSampleBufferRef)result;
- (NSDictionary)metadataOutputsByCategory;
- (double)_maxISPZoomFactorForOutputConfiguration:(uint64_t)a1;
- (double)_totalAvailableOverscan;
- (float)_ispAppliedZoomFactorFromSampleBufferMetadataDictionary:(int)a3 outputIndex:;
- (id)_colorInfoDictionaryForStreamOutputID:(id)result;
- (id)_outputConfigurationsForAllOutputs;
- (id)colorInfoForNonColorManagedDevicesForOutputID:(uint64_t)a1;
- (id)colorInfoForOutput:(id)a3;
- (id)messageDispatchQueueForOutput:(id)a3;
- (id)updateMLVNREnabledByThermalPressureOrGameModeEnabled:(id *)result;
- (int)allocateOrReuseBufferPoolsFromSourceNode:(id)a3;
- (int)configure:(id)a3;
- (int)prepareForStillImageCaptureWithFirmwareStillImageOutputRetainedBufferCountOverride:(int)a3 clientBracketCount:(int)a4 enableSushiRawAttachmentOption:(BOOL)a5;
- (int)secureMetadataOutputConfigurationDidChange:(id)a3;
- (uint64_t)_bringStreamUpToDate;
- (uint64_t)_bytesPerOutputBufferForOutputConfiguration:(uint64_t)a3 outputID:;
- (uint64_t)_colorSpacePropertiesForOuputID:(uint64_t)result;
- (uint64_t)_computeRetainedBufferCountForOutputStorage:(uint64_t)result;
- (uint64_t)_createAndStartFrameCounterForOutputIndexIfNecessary:(uint64_t)result;
- (uint64_t)_finalPreviewOutputDimensions;
- (uint64_t)_firmwareStillImageOutputRetainedBufferCountForClientBracketCount:(uint64_t)result;
- (uint64_t)_flushOutRemainingBuffers;
- (uint64_t)_markPrimaryStreamingOutput;
- (uint64_t)_prependPreservedMotionDataToSampleBuffer:(uint64_t)result;
- (uint64_t)_preserveMotionDataForSoonToBeDroppedSampleBuffer:(uint64_t)result;
- (uint64_t)_primaryScalerIsAvailable;
- (uint64_t)_registerForStreamNotifications;
- (uint64_t)_registerStreamOutputHandlers;
- (uint64_t)_reportIOSurfaceCompressionCoreAnalyticsData:(uint64_t)result;
- (uint64_t)_reportIOSurfaceCompressionCoreAnalyticsDataForRaw;
- (uint64_t)_retrieveCameraCharacterizationDataForCameraIntrinsicMatrixDelivery;
- (uint64_t)_scalingRequiredForOutput:(uint64_t)result;
- (uint64_t)_secondaryScalerIsAvailable;
- (uint64_t)_secondaryScalerSupportsVideoCaptureDimensions;
- (uint64_t)_setStreamOutputsEnabled:(int)a3 streamingOutputs:(int)a4 onDemandStillOutputs:;
- (uint64_t)_shouldEnableStillImageOutput;
- (uint64_t)_shouldEnableStreamCaptureOutputForNodeOutput:(uint64_t)result;
- (uint64_t)_stillImageColorSpaceProperties;
- (uint64_t)_unregisterFromStreamNotifications;
- (uint64_t)_unregisterStreamOutputHandlers;
- (uint64_t)_updateBaseZoomFactorAfterGDCFromOutputConfigurations:(uint64_t)result;
- (uint64_t)_updateColorSpaceProperties;
- (uint64_t)_updateDepthConfiguration;
- (uint64_t)_updateDepthSettings;
- (uint64_t)_updateDolbyVisionMetadataOutputEnabledConfiguration;
- (uint64_t)_updateDutyCycleMetadataCacheForActiveFormatIndex:(uint64_t)result;
- (uint64_t)_updateGDCStrengthAndBaseZoomFactorAfterGDC;
- (uint64_t)_updateGDCStrengthForOutputConfigurations:(uint64_t)a3 updatedOutputConfigurations:;
- (uint64_t)_updateObjectDetectionMetadataRegistration;
- (uint64_t)_updateOutputIDMappingsForOnDemandStills;
- (uint64_t)_updateOutputIDMappingsForStreamingOutputs;
- (uint64_t)_updateOutputIDs;
- (uint64_t)_updateOutputRequirements;
- (uint64_t)_updateOutputStorageWithSecureMetadataOutputConfiguration:(char)a3 propagateToNodeOutputs:;
- (uint64_t)_updateOutputsStorage;
- (uint64_t)_updateOverscanReservedInISPZoom;
- (uint64_t)_updateStreamOutputConfigurationsWithPowerOptimizedVISOverscanEnabled:(uint64_t)a1;
- (uint64_t)_updateStreamingOutputStorageForOutputID:(int)a3 isVideoCaptureOutput:(uint64_t)a4 nodeOutput:;
- (uint64_t)_updateVideoCaptureOutputFlags;
- (uint64_t)_verifyColorSpacePropertiesForAllOutputs;
- (uint64_t)_verifyColorSpacePropertiesForOutputID:(void *)a3 matchVideoOutputsColorInfo:;
- (unint64_t)_calculatePreviewDimensionsForShiftMitigation;
- (unint64_t)_calculateVideoCaptureDimensions;
- (unint64_t)_calculateVideoCaptureDimensionsWithVISOverscan:(double)a3;
- (unint64_t)_calculateZoomFactorsToNondisruptiveSwitchingFormatIndexMapping:(uint64_t)a3 nondisruptiveSwitchingFormatIndicesByZoomfactorSIFRNonBinnedOut:(uint64_t)a4 ultraHighResolutionNondisruptiveStreamingFormatIndex:;
- (unint64_t)_outputDimensionsForOutputID:(void *)a3 outputConfiguration:;
- (unint64_t)_updateBufferPoolSharingProperties;
- (unint64_t)_updateNondisruptiveSwitchingZoomFactors:(unint64_t)result;
- (unint64_t)videoCaptureDimensionsForColorspace;
- (void)_addBlockBufferHandler:(void *)a3 videoOutputID:;
- (void)_addCaptureStreamAttachmentsToSampleBuffer:(uint64_t)a1;
- (void)_addDataBufferHandler:(void *)a3 videoOutputID:;
- (void)_addDolbyVisionMetadataToPreviewPixelBufferForSampleBuffer:(uint64_t)a3 nodeOutput:;
- (void)_addMetadataOutputHandler:(uint64_t)a1;
- (void)_addMetadataUsedByVideoEncoderToPixelBufferForSampleBuffer:(uint64_t)a3 nodeOutput:;
- (void)_addPixelBufferHandler:(void *)a3 videoOutputID:;
- (void)_applyNondisruptiveSwitchingZoomFactorAndSensorCenterOffsetToPreviewShift:(uint64_t)a1 forSampleBuffer:(double)a2 outputIndex:(double)a3;
- (void)_asynchronouslyPreallocateBufferPools;
- (void)_bravoShiftMitigationCropOffset:totalZoom:totalConfiguredOverscan:totalAvailableOverscan:;
- (void)_bringStreamUpToDate;
- (void)_getImageCircleFromSampleBuffer:(uint64_t)a3 outputIndex:(int)a4 gdcEnabled:(float64x2_t *)a5 imageCircleCenterOut:(float64x2_t *)a6 imageCircleRadiusOut:;
- (void)_isVideoCaptureOutputSupportedByOutputID:(uint64_t)a3;
- (void)_markEndOfLiveOnAllOutputs;
- (void)_nodeOutputsMadeLiveByStreamOutputIndex:(uint64_t)a1;
- (void)_outputConfigurationForStillImageOutputID:;
- (void)_outputConfigurationForStreamingOutputID:(uint64_t)a1 nodeOutput:;
- (void)_outputConfigurationForStreamingOutputID:nodeOutput:visOverscan:;
- (void)_outputConfigurationsFilterCropRectAndDimensionsFromOutputConfigurations:(int)a3 includeStreamingOutputs:(int)a4 includeStillOutputs:;
- (void)_outputConfigurationsForAllOutputsWithVISOverscan:(double)a3;
- (void)_overscanWithFOVSacrifice;
- (void)_preferIntermediateTapOverSecondaryScalerForPreviewOutputBasedOnBandwidth;
- (void)_preferPrimaryScalerOverIntermediateTapForVideoOutputBasedOnBandwidth;
- (void)_prefetchPixelBufferForOutputStorage:(int)a3 numberOfBuffersToFetch:(int)a4 lastEmittedSurfaceID:;
- (void)_propagatePixelBufferAttachment:(int)a3 sampleBuffer:(int)a4 attachedMediaKey:(int)a5 removeAttachmentKey:(int)a6 resetValidBufferRect:(int)a7;
- (void)_reflectStillSampleBufferOnStreamingOutputs:(int)a3 captureType:;
- (void)_scalerChainingEnabled;
- (void)_setPreviewShift:(double)a3 previewScaleFactor:(float)a4 previewShiftAtBaseZoom:(double)a5 ispAppliedZoomFactorForCaptureStream:(double)a6;
- (void)_stopAndReleaseFrameCounterForOutputIndexIfNecessary:(uint64_t)a1;
- (void)_supportedPixelFormatsForOutputID:(uint64_t)a1;
- (void)_tallyCompressedIOSurfaceStatsForSBuf:(uint64_t)a1 outputStorage:;
- (void)_ultraHighResolutionNondisruptiveStreamingFormatIndex;
- (void)_updateActiveNondisruptiveSwitchingFormatIndices;
- (void)_updateFormatIndex;
- (void)_updateOutputConfigurations;
- (void)_updateOutputRequirements;
- (void)_updateZoomForOutputIndex:sampleBuffer:additionalScaleFactor:deliverSushiRaw:;
- (void)_videoFormatRequirementsForDepthOutput;
- (void)activateSecureMetadataOutputConfiguration:(id)a3 forAttachedSesssion:(id)a4;
- (void)deactivateSecureMetadataForAttachedSession:(id)a3;
- (void)dealloc;
- (void)didSelectFormat:(id)a3 forOutput:(id)a4;
- (void)makeCurrentConfigurationLive;
- (void)makeOutputsLiveIfNeeded;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)requestedZoomFactorChanged:(float)a3;
- (void)setAspectRatio:(int)a3;
- (void)setMotionToWakeTargetFrameRate:(float)a3;
- (void)setObjectDetectionTargetFrameRate:(float)a3;
- (void)setPowerOptimizedVISOverscanEnabled:(BOOL)a3;
- (void)setPreviewShift:(CGPoint)a3 previewScaleFactor:(float)a4 previewShiftAtBaseZoom:(CGPoint)a5;
- (void)startIncrementalPrefetchingOfSourcePoolsIfNecessary;
- (void)updateFormatRequirementsFromSourceNode:(id)a3;
- (void)updateZoomFactorsToNondisruptiveSwitchingFormatIndexMapping;
@end

@implementation BWMultiStreamCameraSourceNode

- (unint64_t)_updateBufferPoolSharingProperties
{
  if (result)
  {
    v1 = result;
    if (![*(result + 128) isBravoVariant] || (v2 = *(v1 + 136), v2 == objc_msgSend(*(v1 + 128), "captureStream")))
    {
      v4 = 0;
      v3 = 0;
    }

    else
    {
      if ([OUTLINED_FUNCTION_22_21() streamingRequiredWhenConfiguredAsSlave])
      {
        v3 = 0;
      }

      else
      {
        v3 = [OUTLINED_FUNCTION_22_21() visionDataRequiredWhenConfiguredAsSlave] ^ 1;
      }

      v4 = 1;
    }

    *(v1 + 424) = v3;
    result = [*(v1 + 128) overCaptureEnabled];
    if (result)
    {
      if (*(v1 + 424) == 1)
      {
        result = [objc_msgSend(*(v1 + 128) "captureStreams")];
        v5 = result > 1;
      }

      else
      {
        v5 = 0;
      }

      *(v1 + 424) = v5;
    }

    *(v1 + 425) = v4;
    *(v1 + 426) = v4;
  }

  return result;
}

- (uint64_t)_updateDepthSettings
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  *(result + 392) = 0;
  v2 = [OUTLINED_FUNCTION_43_15(result) depthType];
  if (v2 == 1)
  {
    v3 = off_1E798ABC8;
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v3 = off_1E798ABB0;
LABEL_6:
    *(v1 + 392) = *v3;
  }

  result = [OUTLINED_FUNCTION_60_8() depthType];
  if ((result - 1) <= 1)
  {
    v4 = [OUTLINED_FUNCTION_60_8() depthDimensions];
    [*(v1 + 144) getProperty:*off_1E798BDE8 error:0];
    v5 = OUTLINED_FUNCTION_9_35();
    obj = v6;
    result = [v6 countByEnumeratingWithState:v5 objects:? count:?];
    if (result)
    {
      v7 = result;
      v8 = *off_1E798AC38;
      v9 = *off_1E798AC30;
      v20 = v1;
      while (2)
      {
        v10 = 0;
        do
        {
          OUTLINED_FUNCTION_142_0();
          if (!v14)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(v24 + 8 * v10);
          v12 = [objc_msgSend(v11 objectForKeyedSubscript:{v8, v20), "intValue"}];
          v13 = [objc_msgSend(v11 objectForKeyedSubscript:{v9), "intValue"}];
          v14 = v12 == v4 && v13 == HIDWORD(v4);
          v15 = v14;
          v16 = v12 == HIDWORD(v4) && v13 == v4;
          v17 = v16 && *(v20 + 192) == 1 && [*(v20 + 128) captureStream] != *(v20 + 136);
          if ((v15 | v17))
          {
            v18 = [*(v20 + 360) hardwareDepthFilteringPreferred];
            if (v18)
            {
              LOBYTE(v18) = [objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798AC40), "BOOLValue"}];
            }

            *(v20 + 400) = v18;
            v19 = [OUTLINED_FUNCTION_70_4() strictDepthModePreferred];
            if (v19)
            {
              LOBYTE(v19) = [objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798AC68), "BOOLValue"}];
            }

            *(v20 + 401) = v19;
            *(v20 + 402) = [objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798AC60), "BOOLValue"}];
            *(v20 + 403) = [objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798AC58), "BOOLValue"}];
            *(v20 + 404) = [objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798AC50), "BOOLValue"}];
            result = [v11 objectForKeyedSubscript:*off_1E798AC48];
            *(v20 + 408) = result;
            return result;
          }

          ++v10;
        }

        while (v7 != v10);
        result = [obj countByEnumeratingWithState:v23 objects:v22 count:16];
        v7 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (uint64_t)_retrieveCameraCharacterizationDataForCameraIntrinsicMatrixDelivery
{
  if (result)
  {
    v1 = result;
    result = [*(result + 216) isEqualToString:*off_1E798A0E8];
    if ((result & 1) == 0)
    {
      result = [*(v1 + 216) isEqualToString:*off_1E798A0C8];
      if ((result & 1) == 0)
      {
        [*(v1 + 136) moduleInfo];
        [*(v1 + 136) sensorIDDictionary];
        [*(v1 + 136) pixelSize];
        v2 = OUTLINED_FUNCTION_17_26();
        result = FigMotionGetCameraCharacterizationData(v2, v3, v6, v4, v5);
        if (result)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_1_4();
          return fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }
  }

  return result;
}

- (uint64_t)_updateOutputRequirements
{
  OUTLINED_FUNCTION_54();
  [BWMultiStreamCameraSourceNode _outputConfigurationForStillImageOutputID:];
  v1 = OUTLINED_FUNCTION_17();
  v3 = [(BWMultiStreamCameraSourceNode *)v1 _videoFormatRequirementsForOutputID:v0 configuration:v2];
  +[BWVideoFormatRequirements cacheModesForOptimizedDisplayAccess];
  [OUTLINED_FUNCTION_8() setSupportedCacheModes:?];
  [(BWVideoFormatRequirements *)v3 setSupportedColorSpaceProperties:0];
  [(BWVideoFormatRequirements *)v3 setPrewireBuffers:0];
  [objc_msgSend(OUTLINED_FUNCTION_132_4() "primaryMediaConfiguration")];
  [OUTLINED_FUNCTION_132_4() setProvidesPixelBufferPool:0];
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%@)", objc_msgSend(OUTLINED_FUNCTION_132_4(), "name"), v0];
  return [OUTLINED_FUNCTION_132_4() setName:?];
}

- (void)_updateFormatIndex
{
  OUTLINED_FUNCTION_25_10();
  if (v1)
  {
    v2 = [OUTLINED_FUNCTION_44_13(v1) formatIndex];
    if ([*(v0 + 152) count] <= v2)
    {
      OUTLINED_FUNCTION_0_96();
      FigDebugAssert3();
    }

    else
    {
      *(v0 + 368) = [OUTLINED_FUNCTION_21_27() formatIndex];
      [*(v0 + 136) setFastSwitchingMainFormatIndex:{objc_msgSend(OUTLINED_FUNCTION_21_27(), "fastSwitchingMainFormatIndex")}];
      if ([*(v0 + 136) setActiveFormatIndex:*(v0 + 368)])
      {
        OUTLINED_FUNCTION_0_6();
        FigDebugAssert3();
      }

      else
      {
        [(BWMultiStreamCameraSourceNode *)v0 _updateDutyCycleMetadataCacheForActiveFormatIndex:?];
      }
    }
  }

  OUTLINED_FUNCTION_24_12();
}

- (void)_updateActiveNondisruptiveSwitchingFormatIndices
{
  if (a1)
  {
    [*(a1 + 360) activeStreamingNondisruptiveSwitchingFormatIndices];
    v1 = [OUTLINED_FUNCTION_8() setWithArray:?];
    [OUTLINED_FUNCTION_26_19() fastSwitchingNondisruptiveFormatIndices];
    [OUTLINED_FUNCTION_7() addObjectsFromArray:?];
    v2 = [MEMORY[0x1E695DFA8] setWithSet:v1];
    [OUTLINED_FUNCTION_26_19() activeUltraHighResStillImageNondisruptiveSwitchingFormatIndices];
    [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
    if ([v2 count])
    {
      [v2 allObjects];
      if ([OUTLINED_FUNCTION_98_7() setPropertyIfSupported:? value:?])
      {
        OUTLINED_FUNCTION_1_5();
      }

      else
      {
        [v1 allObjects];
        if (![OUTLINED_FUNCTION_40() setPropertyIfSupported:? value:?])
        {
          goto LABEL_5;
        }

        OUTLINED_FUNCTION_0_6();
      }

      FigDebugAssert3();
    }
  }

LABEL_5:
  OUTLINED_FUNCTION_150_0();
}

- (uint64_t)_primaryScalerIsAvailable
{
  if (result)
  {
    v1 = result;
    v2 = [objc_msgSend(*(result + 136) "supportedOutputs")];
    if ([OUTLINED_FUNCTION_22_21() depthType] - 1 <= 1 && objc_msgSend(OUTLINED_FUNCTION_22_21(), "secondaryScalerIsNotAvailable") && objc_msgSend(OUTLINED_FUNCTION_22_21(), "previewOutputEnabled"))
    {
      v3 = [OUTLINED_FUNCTION_22_21() videoCaptureOutputEnabled];
    }

    else
    {
      v3 = 0;
    }

    OUTLINED_FUNCTION_33();
    if (v4 && [*(v1 + 128) depthDataDeliveryEnabled] && !(v3 & 1 | ((objc_msgSend(*(v1 + 128), "isBravoVariant") & 1) == 0)) && (objc_msgSend(OUTLINED_FUNCTION_22_21(), "geometricDistortionCorrectionOnVideoCaptureOutputEnabled") & 1) == 0)
    {
      v5 = [OUTLINED_FUNCTION_22_21() geometricDistortionCorrectionOnPreviewOutputEnabled];
      if (v2)
      {
        return ([OUTLINED_FUNCTION_22_21() primaryScalerDecoupled] ^ 1) & v5;
      }
    }

    else
    {
      v5 = 1;
      if (v2)
      {
        return ([OUTLINED_FUNCTION_22_21() primaryScalerDecoupled] ^ 1) & v5;
      }
    }

    return 0;
  }

  return result;
}

- (uint64_t)_secondaryScalerSupportsVideoCaptureDimensions
{
  if (result)
  {
    v1 = result;
    v2 = [*(result + 152) objectAtIndexedSubscript:*(result + 368)];
    if (v2)
    {
      result = [objc_msgSend(v2 objectForKeyedSubscript:{*off_1E798C9A0), "objectForKeyedSubscript:", *off_1E798CAB0}];
      if (result)
      {
        v3 = result;
        [*(v1 + 360) visOverscan];
        v6 = [(BWMultiStreamCameraSourceNode *)v1 _calculateVideoCaptureDimensionsWithVISOverscan:v4, v5];
        [objc_msgSend(v3 objectForKeyedSubscript:{*off_1E798CAF8), "floatValue"}];
        if (v7 == 0.0)
        {
          return v6 < 2305;
        }

        else
        {
          v8 = v7;
          v9 = [v3 objectForKeyedSubscript:*off_1E798CB18];
          v10 = [v3 objectForKeyedSubscript:*off_1E798CB08];
          LODWORD(v9) = FigCaptureRoundFloatToMultipleOf(2, v8 * [v9 integerValue]);
          v11 = FigCaptureRoundFloatToMultipleOf(2, v8 * [v10 integerValue]);
          return v9 >= v6 && v11 >= SHIDWORD(v6);
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      return 0;
    }
  }

  return result;
}

- (uint64_t)_updateOutputIDMappingsForOnDemandStills
{
  if (result)
  {
    v1 = result;
    if ((-[BWMultiStreamCameraSourceNode _shouldEnableStillImageOutput](result) & 1) != 0 || (result = [OUTLINED_FUNCTION_16_35() sensorRawStillImageOutputEnabled], result))
    {
      v2 = off_1E798CAD0;
      if ((*(v1 + 192) & 1) == 0)
      {
        if (![OUTLINED_FUNCTION_16_35() primaryScalerDecoupled] || (OUTLINED_FUNCTION_33(), v3))
        {
          v2 = off_1E798CAB8;
        }

        else
        {
          v2 = off_1E798CAC0;
        }
      }

      v4 = *v2;
      result = [OUTLINED_FUNCTION_16_35() sensorRawStillImageOutputEnabled];
      if (result)
      {
        if (*(v1 + 192))
        {
          v5 = 0;
        }

        else
        {
          v5 = *off_1E798CAD0;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

    *(v1 + 11864) = v4;
    *(v1 + 11928) = v5;
  }

  return result;
}

- (uint64_t)_updateOutputsStorage
{
  if (!a1)
  {
    return 0;
  }

  [OUTLINED_FUNCTION_1_107(a1) visOverscan];
  v4 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  if (v5 == *MEMORY[0x1E695F060] && v2 == v3)
  {
    [OUTLINED_FUNCTION_16_35() sensorOverscan];
    v7 = v8 != v4;
    if (v9 != v3)
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  v41 = v7;
  v47 = [*(v1 + 144) getProperty:*off_1E798C280 error:0];
  v10 = [objc_msgSend(*(v1 + 152) objectAtIndexedSubscript:{*(v1 + 368)), "objectForKeyedSubscript:", *off_1E798C9A0}];
  v11 = *off_1E798CA88;
  v42 = [v10 objectForKeyedSubscript:*off_1E798CA88];
  v12 = 0;
  v46 = *off_1E798C9C0;
  v45 = *off_1E798C9D0;
  v44 = *off_1E798C708;
  v43 = *off_1E798C710;
  v13 = -11264;
  v14 = 9;
  v49 = *MEMORY[0x1E6960C70];
  v48 = *(MEMORY[0x1E6960C70] + 16);
  do
  {
    v15 = mscsn_streamOutputIDForOutputIndex(v12);
    v50 = [v10 objectForKeyedSubscript:v15];
    *(v1 + 432 + v14) = 0;
    *(v1 + v13 + 11712) = 0;
    *(v1 + v13 + 11696) = 0;
    *(v1 + v13 + 11752) = v49;
    *(v1 + v13 + 11768) = v48;
    if (([v15 isEqualToString:v11] & 1) == 0)
    {
      v16 = (v1 + v13 + 432);
      v16[2843] = [objc_msgSend(objc_msgSend(v47 objectForKeyedSubscript:{v15), "objectForKeyedSubscript:", v46), "intValue"}];
      v16[2844] = [objc_msgSend(objc_msgSend(v47 objectForKeyedSubscript:{v15), "objectForKeyedSubscript:", v45), "intValue"}];
      v16[2845] = [objc_msgSend(*(v1 + 128) "captureStream")];
      v16[2846] = [objc_msgSend(v50 objectForKeyedSubscript:{v44), "intValue"}];
      v16[2847] = [objc_msgSend(v50 objectForKeyedSubscript:{v43), "intValue"}];
    }

    v17 = (v1 + v13 + 432);
    v17[2858] = 1065353216;
    v17[2941] = -1;
    v17[2942] = 0;
    ++v12;
    v14 += 512;
    v13 += 512;
  }

  while (v13);
  if (*(v1 + 11840))
  {
    v56 = 0;
    [BWMultiStreamCameraSourceNode _shouldEnableStreamCaptureOutputForNodeOutput:v1];
    [(BWMultiStreamCameraSourceNode *)v1 _updateStreamingOutputStorageForOutputID:1 isVideoCaptureOutput:0 nodeOutput:?];
  }

  v18 = *(v1 + 11808);
  if (v18)
  {
    [(BWMultiStreamCameraSourceNode *)v1 _updateStreamingOutputStorageForOutputID:v18 isVideoCaptureOutput:0 nodeOutput:*(v1 + 232)];
  }

  v19 = *(v1 + 11864);
  if (v19)
  {
    v20 = mscsn_streamOutputIndexForOutputID(v19);
    v21 = v1 + 432 + (v20 << 9);
    *(v21 + 9) = 1;
    if ([OUTLINED_FUNCTION_27_15() stillImageOutputEnabled])
    {
      *(v21 + 16) = *(v1 + 248);
    }

    v22 = *(v21 + 4) | 1;
    *v21 = 2;
    *(v21 + 4) = v22;
    if (v41)
    {
      if (v20 == 4)
      {
LABEL_24:
        *(v21 + 4) = v22 | 4;
        goto LABEL_25;
      }

      if ([OUTLINED_FUNCTION_27_15() includeOverscanOnStillImageOutput])
      {
        v22 = *(v21 + 4);
        goto LABEL_24;
      }
    }
  }

LABEL_25:
  v23 = *(v1 + 11928);
  if (v23)
  {
    if ((*(v1 + 192) & 1) == 0)
    {
      v24 = v1 + 432 + (mscsn_streamOutputIndexForOutputID(v23) << 9);
      *(v24 + 9) = 1;
      *(v24 + 16) = *(v1 + 256);
      v25 = *(v24 + 4) | 1;
      *v24 = 2;
      *(v24 + 4) = v25;
      if (([OUTLINED_FUNCTION_27_15() includeOverscanInStillImageFinalCropRect] & 1) == 0)
      {
        *(v24 + 4) |= 4u;
      }
    }
  }

  if ([OUTLINED_FUNCTION_27_15() depthOutputEnabled])
  {
    *(v1 + 3513) = 1;
    *(v1 + 3520) = *(v1 + 264);
    *(v1 + 3504) = 1;
  }

  if ([OUTLINED_FUNCTION_27_15() pointCloudOutputEnabled])
  {
    *(v1 + 4025) = 1;
    *(v1 + 4032) = *(v1 + 272);
    *(v1 + 4016) = 1;
  }

  if ([OUTLINED_FUNCTION_27_15() lightSourceMaskOutputEnabled])
  {
    if (![v42 objectForKeyedSubscript:*off_1E798AFF0])
    {
      goto LABEL_54;
    }

    OUTLINED_FUNCTION_113_3(v1 + 432);
    *(v26 + 4624) = *(v1 + 280);
    *(v26 + 4608) = v27;
  }

  if ([OUTLINED_FUNCTION_27_15() keypointDescriptorDataOutputEnabled])
  {
    if ([v42 objectForKeyedSubscript:*off_1E798AFE0])
    {
      OUTLINED_FUNCTION_113_3(v1 + 432);
      *(v28 + 5136) = *(v1 + 288);
      *(v28 + 5120) = v29;
      goto LABEL_39;
    }

LABEL_54:
    OUTLINED_FUNCTION_0();
LABEL_53:
    FigDebugAssert3();
    return 0;
  }

LABEL_39:
  if ([OUTLINED_FUNCTION_27_15() semanticMasksOutputEnabled])
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v30 = [OUTLINED_FUNCTION_27_15() enabledSemanticMaskTypes];
    v31 = [v30 countByEnumeratingWithState:&v52 objects:v51 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v53;
      while (2)
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v53 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = [v42 objectForKeyedSubscript:*(*(&v52 + 1) + 8 * i)];
          if (!v35)
          {
            OUTLINED_FUNCTION_0();
            goto LABEL_53;
          }
        }

        v32 = OUTLINED_FUNCTION_37(v35, v36, &v52, v51);
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    OUTLINED_FUNCTION_113_3(v1 + 432);
    *(v37 + 5648) = *(v1 + 296);
    *(v37 + 5632) = v38;
  }

  if ([OUTLINED_FUNCTION_27_15() secureMetadataOutputConfiguration])
  {
    v40 = [OUTLINED_FUNCTION_27_15() secureMetadataOutputConfiguration];
    [(BWMultiStreamCameraSourceNode *)v1 _updateOutputStorageWithSecureMetadataOutputConfiguration:v40 propagateToNodeOutputs:0];
  }

  return 0;
}

- (void)_videoFormatRequirementsForDepthOutput
{
  OUTLINED_FUNCTION_25_10();
  if (v0)
  {
    v1 = v0;
    v2 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWMultiStreamCameraSourceNode *)v1 _updateDepthConfiguration];
    v3 = [*(v1 + 144) getProperty:*off_1E798BDE0 error:0];
    if (v3)
    {
      v4 = [v3 objectForKeyedSubscript:*(v1 + 392)];
      v5 = [objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798AC38), "intValue"}];
      LODWORD(v4) = [objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798AC30), "intValue"}];
      [(BWVideoFormatRequirements *)v2 setWidth:v5];
      [(BWVideoFormatRequirements *)v2 setHeight:v4];
      [OUTLINED_FUNCTION_64_9() setSupportedPixelFormats:?];
      +[BWVideoFormatRequirements cacheModesForOptimizedCPUAccess];
      [OUTLINED_FUNCTION_17() setSupportedCacheModes:?];
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }
  }

  OUTLINED_FUNCTION_24_12();
}

- (double)_totalAvailableOverscan
{
  if (!a1)
  {
    return 0.0;
  }

  [OUTLINED_FUNCTION_1_107(a1) visOverscan];
  v2 = v1;
  [OUTLINED_FUNCTION_16_35() sensorOverscan];
  v3 = OUTLINED_FUNCTION_16_35();
  if (v2 <= v4)
  {
    [v3 sensorOverscan];
  }

  else
  {
    [v3 visOverscan];
  }

  v6 = v5;
  [OUTLINED_FUNCTION_16_35() visOverscan];
  v8 = v7;
  [OUTLINED_FUNCTION_16_35() sensorOverscan];
  v9 = OUTLINED_FUNCTION_16_35();
  if (v8 <= v10)
  {
    [v9 sensorOverscan];
  }

  else
  {
    [v9 visOverscan];
  }

  return v6;
}

- (void)_ultraHighResolutionNondisruptiveStreamingFormatIndex
{
  if (a1)
  {
    OUTLINED_FUNCTION_59_0();
    if ([objc_msgSend(OUTLINED_FUNCTION_1_107(v2) "activeStreamingNondisruptiveSwitchingFormatIndices")])
    {
      v3 = [OUTLINED_FUNCTION_16_35() activeStreamingNondisruptiveSwitchingFormatIndices];
      OUTLINED_FUNCTION_43();
      v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
      if (v5)
      {
        v6 = v5;
        v7 = *off_1E798C988;
        v8 = *off_1E798C980;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            OUTLINED_FUNCTION_142_0();
            if (!v10)
            {
              objc_enumerationMutation(v3);
            }

            v11 = *(8 * i);
            v12 = [*(v1 + 152) objectAtIndexedSubscript:{objc_msgSend(v11, "intValue")}];
            if (FigCaptureSourceSensorRawHighResolutionFlavorFromDimensions([objc_msgSend(v12 objectForKeyedSubscript:{v7), "intValue"}] | (objc_msgSend(objc_msgSend(v12, "objectForKeyedSubscript:", v8), "intValue") << 32)) == 2)
            {
              [v11 intValue];
              goto LABEL_13;
            }
          }

          OUTLINED_FUNCTION_43();
          v6 = OUTLINED_FUNCTION_37(v13, v14, v15, v16);
          if (v6)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_13:
    OUTLINED_FUNCTION_58_0();
  }
}

- (uint64_t)_updateGDCStrengthAndBaseZoomFactorAfterGDC
{
  if (!a1)
  {
    return 0;
  }

  [*(a1 + 360) visOverscan];
  v4 = [(BWMultiStreamCameraSourceNode *)a1 _outputConfigurationsForAllOutputsWithVISOverscan:v2, v3];
  if (v4)
  {
    v8 = 0;
    v5 = [(BWMultiStreamCameraSourceNode *)a1 _updateGDCStrengthForOutputConfigurations:v4 updatedOutputConfigurations:&v8];
    if (v5)
    {
      v6 = v5;
      OUTLINED_FUNCTION_1_5();
    }

    else
    {
      v6 = [BWMultiStreamCameraSourceNode _updateBaseZoomFactorAfterGDCFromOutputConfigurations:a1];
      if (!v6)
      {
        return v6;
      }

      OUTLINED_FUNCTION_1_8();
    }

    FigDebugAssert3();
    return v6;
  }

  OUTLINED_FUNCTION_9_38();
  FigDebugAssert3();

  return FigSignalErrorAtGM();
}

- (unint64_t)_calculatePreviewDimensionsForShiftMitigation
{
  if (!a1)
  {
    return 0;
  }

  v1 = [OUTLINED_FUNCTION_43_15(a1) preferredPreviewDimensions];
  [OUTLINED_FUNCTION_60_8() overscanForShiftMitigation];
  if (v2 == 0.0)
  {
    return v1;
  }

  v3 = (v2 + 1.0);

  return mscsn_scaleDimensionsWithAlignment(v1, 2u, v3, v3);
}

- (BWPointCloudFormatRequirements)_videoFormatRequirementsForPointCloudOutput
{
  if (!a1)
  {
    return 0;
  }

  v1 = [*(a1 + 144) getProperty:*off_1E798C280 error:0];
  if (!v1)
  {
    return 0;
  }

  v4 = [v1 objectForKeyedSubscript:*off_1E798CA90];
  v2 = objc_alloc_init(BWPointCloudFormatRequirements);
  v5 = OUTLINED_FUNCTION_17_26();
  [(BWMultiStreamCameraSourceNode *)v5 _supportedPixelFormatsForOutputID:v6];
  [OUTLINED_FUNCTION_17() setSupportedDataFormats:?];
  [objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798C9E0), "intValue"}];
  [OUTLINED_FUNCTION_31_17() setDataBufferSize:?];
  [objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798CA08), "unsignedLongLongValue"}];
  [OUTLINED_FUNCTION_17() setMaxPoints:?];
  return v2;
}

- (uint64_t)_updateOutputIDs
{
  if (!a1)
  {
    return 0;
  }

  updated = [BWMultiStreamCameraSourceNode _updateOutputIDMappingsForStreamingOutputs];
  if (updated)
  {
    OUTLINED_FUNCTION_1_8();
    FigDebugAssert3();
  }

  else
  {
    [(BWMultiStreamCameraSourceNode *)a1 _updateOutputIDMappingsForOnDemandStills];
  }

  return updated;
}

- (uint64_t)_secondaryScalerIsAvailable
{
  if (a1)
  {
    if (([OUTLINED_FUNCTION_1_107(a1) secondaryScalerIsNotAvailable] & 1) != 0 || !objc_msgSend(objc_msgSend(*(v1 + 136), "supportedOutputs"), "containsObject:", *off_1E798CAB0))
    {
      v2 = 0;
    }

    else if ([OUTLINED_FUNCTION_16_35() primaryScalerDecoupled])
    {
      v2 = *(v1 + 160);
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)_scalerChainingEnabled
{
  if (a1 && [OUTLINED_FUNCTION_1_107(a1) geometricDistortionCorrectionOnVideoCaptureOutputEnabled] && objc_msgSend(OUTLINED_FUNCTION_16_35(), "geometricDistortionCorrectionOnPreviewOutputEnabled") && FigCapturePlatformIdentifier() >= 7 && ((objc_msgSend(OUTLINED_FUNCTION_16_35(), "visOverscan"), v4 = -[BWMultiStreamCameraSourceNode _calculateVideoCaptureDimensionsWithVISOverscan:](v1, v2, v3), v5 = v4, v6 = HIDWORD(v4), v7 = -[BWMultiStreamCameraSourceNode _calculatePreviewDimensionsForShiftMitigation](v1), v8 = v7, v9 = HIDWORD(v7), v5 >= v7) ? (v10 = v6 < SHIDWORD(v7)) : (v10 = 1), (v10 || !objc_msgSend(*(v1 + 11808), "isEqualToString:", *off_1E798CAB0) || (objc_msgSend(*(v1 + 11840), "isEqualToString:", *off_1E798CA98) & 1) == 0) && (v5 < v8 ? (v11 = v6 < v9) : (v11 = 0), v11 && objc_msgSend(*(v1 + 11808), "isEqualToString:", *off_1E798CA98))))
  {
    OUTLINED_FUNCTION_150_0();

    [v12 isEqualToString:?];
  }

  else
  {
    OUTLINED_FUNCTION_150_0();
  }
}

- (uint64_t)_shouldEnableStillImageOutput
{
  if (result)
  {
    if ([OUTLINED_FUNCTION_1_107(result) stillImageOutputEnabled] && (objc_msgSend(OUTLINED_FUNCTION_16_35(), "usesFirmwareStillImageOutput") & 1) != 0)
    {
      return 1;
    }

    else
    {
      v1 = OUTLINED_FUNCTION_16_35();

      return [v1 forceFirmwareStillImageOutputEnabled];
    }
  }

  return result;
}

- (uint64_t)_registerStreamOutputHandlers
{
  if (result)
  {
    v1 = result;
    v2 = [MEMORY[0x1E695DF90] dictionary];
    v3 = [objc_msgSend(objc_msgSend(*(v1 + 152) objectAtIndexedSubscript:{*(v1 + 368)), "objectForKeyedSubscript:", *off_1E798C9A0), "allKeys"}];
    v4 = *off_1E798CAB0;
    v31[0] = *off_1E798CA98;
    v31[1] = v4;
    v5 = *off_1E798CAA8;
    v31[2] = *off_1E798CA80;
    v31[3] = v5;
    v6 = *off_1E798CAC0;
    v31[4] = *off_1E798CAA0;
    v31[5] = v6;
    v7 = *off_1E798CA78;
    v31[6] = *off_1E798CAD0;
    v31[7] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:8];
    OUTLINED_FUNCTION_43();
    v10 = [v9 countByEnumeratingWithState:? objects:? count:?];
    if (v10)
    {
      v11 = v10;
      v12 = MEMORY[0];
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (MEMORY[0] != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(8 * i);
          if (([OUTLINED_FUNCTION_85_0() containsObject:?] & 1) == 0)
          {
            if (![v14 isEqualToString:v7])
            {
              continue;
            }

            v15 = *(v1 + 224);
            v16 = v15 > 0x14;
            v17 = (1 << v15) & 0x1E7FFC;
            if (v16 || v17 == 0)
            {
              continue;
            }
          }

          v19 = OUTLINED_FUNCTION_3_19();
          [(BWMultiStreamCameraSourceNode *)v19 _addPixelBufferHandler:v20 videoOutputID:v14];
        }

        OUTLINED_FUNCTION_43();
        v11 = [v8 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v11);
    }

    v21 = *off_1E798CA90;
    if ([OUTLINED_FUNCTION_39() containsObject:?])
    {
      v22 = OUTLINED_FUNCTION_3_19();
      [(BWMultiStreamCameraSourceNode *)v22 _addDataBufferHandler:v23 videoOutputID:v21];
    }

    v24 = *off_1E798CAB8;
    if ([OUTLINED_FUNCTION_39() containsObject:?])
    {
      if ([objc_msgSend(*(v1 + 144) getPropertyIfSupported:*off_1E798BD78 error:{0), "BOOLValue"}])
      {
        v25 = OUTLINED_FUNCTION_3_19();
        [(BWMultiStreamCameraSourceNode *)v25 _addBlockBufferHandler:v26 videoOutputID:v24];
      }

      else
      {
        v27 = OUTLINED_FUNCTION_3_19();
        [(BWMultiStreamCameraSourceNode *)v27 _addPixelBufferHandler:v28 videoOutputID:v24];
      }
    }

    if ([v3 containsObject:*off_1E798CA88])
    {
      v29 = OUTLINED_FUNCTION_3_19();
      [(BWMultiStreamCameraSourceNode *)v29 _addMetadataOutputHandler:v30];
    }

    return [*(v1 + 144) setProperty:*off_1E798C290 value:v2];
  }

  return result;
}

- (uint64_t)_updateVideoCaptureOutputFlags
{
  if (result)
  {
    result = [OUTLINED_FUNCTION_1_107(result) stillImageOutputEnabled];
    if (result)
    {
      result = [OUTLINED_FUNCTION_16_35() usesFirmwareStillImageOutput];
      if ((result & 1) == 0)
      {
        result = mscsn_streamOutputIndexForOutputID(*(v1 + 11840));
        *(v1 + 432 + (result << 9) + 4) |= 1u;
      }
    }
  }

  return result;
}

- (uint64_t)_updateColorSpaceProperties
{
  if (result)
  {
    v1 = result;
    v2 = [(BWMultiStreamCameraSourceNode *)result videoCaptureDimensionsForColorspace];
    v3 = [*(v1 + 144) getPropertyIfSupported:*off_1E798C1B0 error:0];
    if (FigCapturePlatformIdentifier() <= 7)
    {
      v3 = [v3 mutableCopy];
      [v3 removeObject:&unk_1F2245FB8];
    }

    v4 = [*(v1 + 128) supportsWideColor];
    v5 = [OUTLINED_FUNCTION_35_16() colorSpace];
    v6 = [OUTLINED_FUNCTION_35_16() clientVideoFormat];
    result = +[BWVideoFormat colorSpacePropertiesForSourceThatSupportsWideColor:sourceColorSpace:sourcePixelFormat:sourceDimensions:requestedPixelFormat:supportedColorSpaces:](BWVideoFormat, "colorSpacePropertiesForSourceThatSupportsWideColor:sourceColorSpace:sourcePixelFormat:sourceDimensions:requestedPixelFormat:supportedColorSpaces:", v4, v5, v6, v2, [OUTLINED_FUNCTION_35_16() clientVideoFormat], v3);
    *(v1 + 376) = result;
  }

  return result;
}

- (unint64_t)videoCaptureDimensionsForColorspace
{
  if (!a1)
  {
    return 0;
  }

  v2 = [OUTLINED_FUNCTION_44_13(a1) preferredPreviewDimensions];
  v3 = [OUTLINED_FUNCTION_21_27() videoCaptureDimensions];
  v4 = v3;
  v5 = HIDWORD(v3);
  if (([OUTLINED_FUNCTION_21_27() videoCaptureOutputEnabled] & 1) == 0 && objc_msgSend(OUTLINED_FUNCTION_21_27(), "previewOutputEnabled"))
  {
    if (v2 >= 960)
    {
      v9 = [(BWMultiStreamCameraSourceNode *)v1 _finalPreviewOutputDimensions];
      v4 = v9;
      v5 = HIDWORD(v9);
    }

    else if (v2 < v4 && SHIDWORD(v2) < v5)
    {
      v11 = [(BWMultiStreamCameraSourceNode *)v1 _finalPreviewOutputDimensions];
      if (v2 < v11 && SHIDWORD(v2) < SHIDWORD(v11))
      {
        v5 = HIDWORD(v11);
        v4 = v11;
      }
    }

    if (![objc_msgSend(*(v1 + 144) "supportedProperties")])
    {
      v10 = [(BWMultiStreamCameraSourceNode *)v1 _finalPreviewOutputDimensions];
      v4 = v10;
      v5 = HIDWORD(v10);
    }
  }

  return v4 | (v5 << 32);
}

- (uint64_t)_updateDepthConfiguration
{
  if (!a1)
  {
    return 0;
  }

  v2 = [objc_msgSend(*(a1 + 136) "stream")];
  v3 = *off_1E798BDD8;
  if (![v2 objectForKeyedSubscript:*off_1E798BDD8])
  {
    return 0;
  }

  v4 = [OUTLINED_FUNCTION_20_22() depthType];
  v5 = [OUTLINED_FUNCTION_20_22() depthDimensions];
  v6 = v4 - 1;
  if ((v4 - 1) <= 1)
  {
    v7 = v5;
    v8 = HIDWORD(v5);
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v26 = *(a1 + 392);
    [v9 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", &v26, 1), *off_1E798ABD8}];
    if ([OUTLINED_FUNCTION_20_22() depthOutputEnabled])
    {
      v10 = [*(a1 + 264) videoFormat];
    }

    else
    {
      if ([OUTLINED_FUNCTION_20_22() videoCaptureOutputEnabled])
      {
        v11 = 240;
      }

      else
      {
        v11 = 232;
      }

      v10 = [objc_msgSend(*(a1 + v11) mediaPropertiesForAttachedMediaKey:{@"Depth", "resolvedVideoFormat"}];
    }

    v12 = [v10 pixelFormat];
    [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v12), *off_1E798ABF0}];
    OUTLINED_FUNCTION_33();
    if (!v13 || [*(a1 + 128) captureStream] == *(a1 + 136))
    {
      [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v7), *off_1E798ABF8}];
      v14 = [MEMORY[0x1E696AD98] numberWithInt:v8];
      v15 = off_1E798ABE8;
    }

    else
    {
      [v9 setObject:objc_msgSend(objc_msgSend(*(a1 + 128) forKeyedSubscript:{"captureStream"), "portType"), *off_1E798ABD0}];
      [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v8), *off_1E798ABF8}];
      [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v7), *off_1E798ABE8}];
      [OUTLINED_FUNCTION_11_43() RGBIRStereoFusionEnabled];
      [v9 setObject:objc_msgSend(OUTLINED_FUNCTION_7() forKeyedSubscript:{"numberWithBool:"), *off_1E798AC00}];
      if (![OUTLINED_FUNCTION_20_22() RGBIRStereoFusionEnabled])
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_33();
      if (v13)
      {
        [OUTLINED_FUNCTION_11_43() RGBIRStereoFusionMinDepthThresholdMM];
        [v9 setObject:objc_msgSend(OUTLINED_FUNCTION_7() forKeyedSubscript:{"numberWithUnsignedInt:"), *off_1E798AC20}];
      }

      OUTLINED_FUNCTION_33();
      if (v13)
      {
        [OUTLINED_FUNCTION_11_43() RGBIRStereoFusionMaxDepthThresholdMM];
        [v9 setObject:objc_msgSend(OUTLINED_FUNCTION_7() forKeyedSubscript:{"numberWithUnsignedInt:"), *off_1E798AC18}];
      }

      OUTLINED_FUNCTION_33();
      if (!v13)
      {
        goto LABEL_26;
      }

      [OUTLINED_FUNCTION_11_43() RGBIRStereoFusionFixedDepthThresholdMM];
      [v9 setObject:objc_msgSend(OUTLINED_FUNCTION_7() forKeyedSubscript:{"numberWithUnsignedInt:"), *off_1E798AC08}];
      [OUTLINED_FUNCTION_11_43() RGBIRStereoFusionFixedDepthValueMM];
      v14 = [OUTLINED_FUNCTION_7() numberWithUnsignedInt:?];
      v15 = off_1E798AC10;
    }

    [v9 setObject:v14 forKeyedSubscript:*v15];
LABEL_26:
    OUTLINED_FUNCTION_33();
    if (v13)
    {
      [OUTLINED_FUNCTION_11_43() hardwareDepthFilteringPreferred];
      [v9 setObject:objc_msgSend(OUTLINED_FUNCTION_7() forKeyedSubscript:{"numberWithBool:"), *off_1E798ABE0}];
    }

    OUTLINED_FUNCTION_33();
    if (v13)
    {
      [OUTLINED_FUNCTION_11_43() strictDepthModePreferred];
      [v9 setObject:objc_msgSend(OUTLINED_FUNCTION_7() forKeyedSubscript:{"numberWithBool:"), *off_1E798AC28}];
    }

    goto LABEL_32;
  }

  v9 = 0;
LABEL_32:
  [*(a1 + 144) setProperty:v3 value:v9];
  OUTLINED_FUNCTION_33();
  if (v13)
  {
    if (v6 > 1)
    {
      v22 = *off_1E798AE20;
      v23 = &unk_1F2245F58;
      v17 = MEMORY[0x1E695DF20];
      v18 = &v23;
      v19 = &v22;
      v20 = 1;
    }

    else
    {
      v16 = *off_1E798AE28;
      v24[0] = *off_1E798AE20;
      v24[1] = v16;
      v25[0] = &unk_1F2245F88;
      v25[1] = &unk_1F2245F58;
      v24[2] = *off_1E798AE30;
      v25[2] = &unk_1F2246018;
      v17 = MEMORY[0x1E695DF20];
      v18 = v25;
      v19 = v24;
      v20 = 3;
    }

    [*(a1 + 144) setProperty:*off_1E798BF10 value:{objc_msgSend(v17, "dictionaryWithObjects:forKeys:count:", v18, v19, v20)}];
    [OUTLINED_FUNCTION_11_43() isAutoFocusAssistSourceNode];
    [OUTLINED_FUNCTION_7() numberWithBool:?];
    [OUTLINED_FUNCTION_40() setPropertyIfSupported:? value:?];
  }

  return 0;
}

- (uint64_t)_stillImageColorSpaceProperties
{
  if (result)
  {
    v2 = [OUTLINED_FUNCTION_1_107(result) clientVideoFormat];
    if ((FigCapturePixelFormatIsFullRange(v2) & 1) != 0 || ![OUTLINED_FUNCTION_16_35() usesFirmwareStillImageOutput])
    {
      goto LABEL_17;
    }

    v3 = *(v1 + 376);
    if ((v3 - 5) < 3)
    {
      return 7;
    }

    if (v3)
    {
      return 1;
    }

    else
    {
LABEL_17:
      if ([OUTLINED_FUNCTION_16_35() usesFirmwareStillImageOutput] && objc_msgSend(OUTLINED_FUNCTION_16_35(), "stillImageOutputRequires10BitPixelFormat"))
      {
        CaptureStreamColorSpace = BWColorSpacePropertiesGetCaptureStreamColorSpace(*(v1 + 376));
        if (BWColorSpaceIsWide(CaptureStreamColorSpace))
        {
          return 3;
        }

        else
        {
          return 1;
        }
      }

      else
      {
        return *(v1 + 376);
      }
    }
  }

  return result;
}

- (void)updateZoomFactorsToNondisruptiveSwitchingFormatIndexMapping
{
  OUTLINED_FUNCTION_25_10();
  v12 = v2;
  v13 = v3;
  v5 = v4;
  v10 = 0;
  v11[0] = 0;
  [(BWMultiStreamCameraSourceNode *)v4 _ultraHighResolutionNondisruptiveStreamingFormatIndex];
  v7 = v6;
  [(BWMultiStreamCameraSourceNode *)v5 _calculateZoomFactorsToNondisruptiveSwitchingFormatIndexMapping:v11 nondisruptiveSwitchingFormatIndicesByZoomfactorSIFRNonBinnedOut:&v10 ultraHighResolutionNondisruptiveStreamingFormatIndex:v6];
  v8 = [*(v5 + 360) quadraSubPixelSwitchingParameters];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    +[FigCaptureCameraParameters sharedInstance];
    [*(v5 + 136) sensorIDString];
    v9 = [OUTLINED_FUNCTION_39() quadraSubPixelSwitchingParametersForPortType:? sensorIDString:?];
  }

  [*(v5 + 128) setNondisruptiveSwitchingFormatIndicesByZoomFactorSIFRBinned:v11[0] nondisruptiveSwitchingFormatIndicesByZoomFactorSIFRNonBinned:v10 ultraHighResolutionNondisruptiveStreamingFormatIndex:v7 mainFormatSIFRBinningFactor:*(v5 + 372) forPortType:*(v5 + 216) quadraSubPixelSwitchingParameters:v9];
  OUTLINED_FUNCTION_24_12();
}

- (uint64_t)_updateDolbyVisionMetadataOutputEnabledConfiguration
{
  if (a1)
  {
    v2 = [OUTLINED_FUNCTION_1_107(a1) dolbyVisionMetadataOnPreviewOutputEnabled];
    v3 = MEMORY[0x1E6965D88];
    v4 = MEMORY[0x1E6965DD0];
    if (v2 && [objc_msgSend(objc_msgSend(v1 colorInfoForOutput:{v1[29]), "objectForKeyedSubscript:", *MEMORY[0x1E6965D88]), "isEqualToString:", *MEMORY[0x1E6965DD0]}])
    {
      [OUTLINED_FUNCTION_16_35() setDolbyVisionMetadataOnPreviewOutputEnabled:0];
    }

    if ([OUTLINED_FUNCTION_16_35() dolbyVisionMetadataOnVideoCaptureOutputEnabled] && objc_msgSend(objc_msgSend(objc_msgSend(v1, "colorInfoForOutput:", v1[30]), "objectForKeyedSubscript:", *v3), "isEqualToString:", *v4))
    {
      [OUTLINED_FUNCTION_16_35() setDolbyVisionMetadataOnVideoCaptureOutputEnabled:0];
    }
  }

  return 0;
}

- (NSDictionary)metadataOutputsByCategory
{
  detectedObjectsOutput = self->_detectedObjectsOutput;
  v9[0] = &unk_1F2245F58;
  v9[1] = &unk_1F2245F88;
  secureDetectedObjectsOutput = self->_secureDetectedObjectsOutput;
  v10[0] = detectedObjectsOutput;
  v10[1] = secureDetectedObjectsOutput;
  eyeReliefStatusOutput = self->_eyeReliefStatusOutput;
  v9[2] = &unk_1F2245FA0;
  v9[3] = &unk_1F2245FB8;
  trackedFacesOutput = self->_trackedFacesOutput;
  v10[2] = eyeReliefStatusOutput;
  v10[3] = trackedFacesOutput;
  faceIDReadinessOutput = self->_faceIDReadinessOutput;
  v9[4] = &unk_1F2245FD0;
  v9[5] = &unk_1F2245FE8;
  motionToWakeOutput = self->_motionToWakeOutput;
  v10[4] = faceIDReadinessOutput;
  v10[5] = motionToWakeOutput;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];
}

- (void)_updateOutputRequirements
{
  OUTLINED_FUNCTION_25_10();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  [BWMultiStreamCameraSourceNode _outputConfigurationForStreamingOutputID:v4 nodeOutput:?];
  v6 = OUTLINED_FUNCTION_115_5();
  v9 = [(BWMultiStreamCameraSourceNode *)v6 _videoFormatRequirementsForOutputID:v7 configuration:v8];
  +[BWVideoFormatRequirements cacheModesForOptimizedCPUAccess];
  [OUTLINED_FUNCTION_7() setSupportedCacheModes:?];
  [(BWVideoFormatRequirements *)v9 setPrewireBuffers:0];
  *v3 = [MEMORY[0x1E696AD98] numberWithInt:*(v5 + 376)];
  [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  [OUTLINED_FUNCTION_7() setSupportedColorSpaceProperties:?];
  [objc_msgSend(OUTLINED_FUNCTION_57_11() "primaryMediaConfiguration")];
  v10 = MEMORY[0x1E696AEC0];
  [OUTLINED_FUNCTION_57_11() name];
  [v10 stringWithFormat:@"%@(%@)"];
  [OUTLINED_FUNCTION_57_11() setName:?];
  if (v1)
  {
    v11 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    [BWMultiStreamCameraSourceNode _videoFormatRequirementsForDepthOutput];
    [OUTLINED_FUNCTION_8() setFormatRequirements:?];
    [OUTLINED_FUNCTION_57_11() setMediaConfiguration:v11 forAttachedMediaKey:v1];
  }

  if ([OUTLINED_FUNCTION_70_4() preLTMThumbnailOnPreviewOutputEnabled])
  {
    v12 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    v13 = OUTLINED_FUNCTION_27_0();
    [(BWMultiStreamCameraSourceNode *)v13 _videoFormatRequirementsForAttachedPreLTMThumbnail];
    [OUTLINED_FUNCTION_4() setFormatRequirements:?];
    [OUTLINED_FUNCTION_57_11() setMediaConfiguration:v1 forAttachedMediaKey:@"PreLTMThumbnail"];
  }

  if ([OUTLINED_FUNCTION_70_4() ltmThumbnailOnPreviewOutputEnabled])
  {
    v14 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    v15 = OUTLINED_FUNCTION_27_0();
    [(BWMultiStreamCameraSourceNode *)v15 _videoFormatRequirementsForAttachedLTMThumbnail];
    [OUTLINED_FUNCTION_4() setFormatRequirements:?];
    [OUTLINED_FUNCTION_57_11() setMediaConfiguration:v1 forAttachedMediaKey:@"LTMThumbnail"];
  }

  if ([OUTLINED_FUNCTION_70_4() postColorProcessingThumbnailOnPreviewOutputEnabled])
  {
    v16 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    v17 = OUTLINED_FUNCTION_27_0();
    [(BWMultiStreamCameraSourceNode *)v17 _videoFormatRequirementsForPostColorProcessingThumbnailOutput];
    [OUTLINED_FUNCTION_4() setFormatRequirements:?];
    [OUTLINED_FUNCTION_57_11() setMediaConfiguration:v1 forAttachedMediaKey:0x1F21AB1D0];
  }

  if ([OUTLINED_FUNCTION_70_4() weightSegmentMapOnPreviewOutputEnabled])
  {
    v18 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    v19 = OUTLINED_FUNCTION_27_0();
    [(BWMultiStreamCameraSourceNode *)v19 _videoFormatRequirementsForAttachedWeightSegmentMap];
    [OUTLINED_FUNCTION_4() setFormatRequirements:?];
    [OUTLINED_FUNCTION_57_11() setMediaConfiguration:v1 forAttachedMediaKey:0x1F21AB1F0];
  }

  v20 = OUTLINED_FUNCTION_115_5();
  *(v5 + 11832) = [BWMultiStreamCameraSourceNode _colorInfoDictionaryForStreamOutputID:v20];
  OUTLINED_FUNCTION_24_12();
}

- (uint64_t)_markPrimaryStreamingOutput
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 11840);
    if (v2)
    {
      if (!*(result + 11808))
      {
        goto LABEL_41;
      }

      v3 = [objc_msgSend(*(result + 240) "videoFormat")];
      v4 = [*(v1 + 360) maxFrameRate];
      v6 = FigCaptureFrameRateAsInt(v4, v5);
      v7 = [*(v1 + 360) preferredPreviewMaxFrameRate];
      CompressionType = FigCapturePixelFormatGetCompressionType(v3);
      v9 = CompressionType && v6 <= v7;
      v10 = v9;
      if (!FigCapturePixelFormatIsPackedBayerRaw(v3) && CompressionType != 2 && !v10)
      {
        goto LABEL_41;
      }
    }

    v2 = *(v1 + 11808);
    if (v2)
    {
      goto LABEL_41;
    }

    result = [*(v1 + 360) depthOutputEnabled];
    if (result)
    {
      v12 = off_1E798CA78;
    }

    else
    {
      result = [*(v1 + 360) pointCloudOutputEnabled];
      if (result)
      {
        v12 = off_1E798CA90;
      }

      else
      {
        result = [*(v1 + 360) secureMetadataOutputConfiguration];
        if (!result)
        {
          return result;
        }

        v12 = off_1E798CA88;
      }
    }

    v2 = *v12;
    if (*v12)
    {
LABEL_41:
      if ([v2 isEqualToString:*off_1E798CA88])
      {
        result = [objc_msgSend(*(v1 + 360) "secureMetadataOutputConfiguration")];
        if (result)
        {
          v13 = 6144;
        }

        else
        {
          result = [objc_msgSend(*(v1 + 360) "secureMetadataOutputConfiguration")];
          if (result)
          {
            v13 = 6656;
          }

          else
          {
            result = [objc_msgSend(*(v1 + 360) "secureMetadataOutputConfiguration")];
            if (result)
            {
              v13 = 7168;
            }

            else
            {
              result = [objc_msgSend(*(v1 + 360) "secureMetadataOutputConfiguration")];
              if (!result)
              {
                result = [objc_msgSend(*(v1 + 360) "secureMetadataOutputConfiguration")];
                if (!result)
                {
                  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Metadata output is enabled userInfo:{but no secure metadata features are enabled.", 0}]);
                }

                v14 = v1 + 8624;
                goto LABEL_34;
              }

              v13 = 7680;
            }
          }
        }

        v14 = v1 + v13 + 432;
      }

      else
      {
        result = mscsn_streamOutputIndexForOutputID(v2);
        v14 = v1 + 432 + (result << 9);
      }

LABEL_34:
      *(v14 + 4) |= 2u;
    }
  }

  return result;
}

- (uint64_t)_bringStreamUpToDate
{
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 360) machineLearningVideoNoiseReductionSupported];
  v3 = *(a1 + 12288);
  if (v2)
  {
    if (!v3)
    {
      *(a1 + 12288) = objc_alloc_init(FigCaptureThermalMonitor);
      if (dword_1ED8445B0)
      {
        v108 = 0;
        v107 = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      objc_initWeak(location, a1);
      v6 = *(a1 + 12288);
      v97[0] = MEMORY[0x1E69E9820];
      v97[1] = 3221225472;
      v97[2] = __53__BWMultiStreamCameraSourceNode__bringStreamUpToDate__block_invoke;
      v97[3] = &unk_1E799A1E8;
      objc_copyWeak(&v98, location);
      [v6 setThermalHandler:v97];
      *(a1 + 12304) = [*(a1 + 12288) thermalLevel] > 1;
      objc_destroyWeak(&v98);
      objc_destroyWeak(location);
      goto LABEL_11;
    }
  }

  else if (!v3)
  {
    goto LABEL_11;
  }

  if (dword_1ED8445B0)
  {
    v108 = 0;
    v107 = OS_LOG_TYPE_DEFAULT;
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(a1 + 12304) = 0;

  *(a1 + 12288) = 0;
LABEL_11:
  v7 = [*(a1 + 360) machineLearningVideoNoiseReductionSupported];
  v8 = *(a1 + 12296);
  if (v7)
  {
    if (!v8)
    {
      objc_initWeak(location, a1);
      v9 = [FigCaptureGameModeMonitor alloc];
      v95[0] = MEMORY[0x1E69E9820];
      v95[1] = 3221225472;
      v95[2] = __53__BWMultiStreamCameraSourceNode__bringStreamUpToDate__block_invoke_1058;
      v95[3] = &unk_1E798F9C0;
      objc_copyWeak(&v96, location);
      v10 = [(FigCaptureGameModeMonitor *)v9 initWithStateChangeHandler:v95];
      *(a1 + 12296) = v10;
      *(a1 + 12305) = [(FigCaptureGameModeMonitor *)v10 isGameModeEnabled];
      objc_destroyWeak(&v96);
      objc_destroyWeak(location);
      goto LABEL_23;
    }

LABEL_15:
    if (dword_1ED8445B0)
    {
      v108 = 0;
      v107 = OS_LOG_TYPE_DEFAULT;
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v12 = v108;
      if (os_log_type_enabled(v11, v107))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v14 = *(a1 + 12296);
        v99 = 136315394;
        v100 = "[BWMultiStreamCameraSourceNode _bringStreamUpToDate]";
        v101 = 2112;
        *v102 = v14;
        LODWORD(v89) = 22;
        v86 = &v99;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(a1 + 12305) = 0;

    *(a1 + 12296) = 0;
    goto LABEL_23;
  }

  if (v8)
  {
    goto LABEL_15;
  }

LABEL_23:
  if ([*(a1 + 360) machineLearningVideoNoiseReductionSupported])
  {
    [(BWMultiStreamCameraSourceNode *)a1 updateMLVNREnabledByThermalPressureOrGameModeEnabled:?];
    if (dword_1ED8445B0)
    {
      v108 = 0;
      v107 = OS_LOG_TYPE_DEFAULT;
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v16 = v108;
      if (os_log_type_enabled(v15, v107))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        if (*(a1 + 12306))
        {
          v18 = 84;
        }

        else
        {
          v18 = 70;
        }

        if (*(a1 + 12304))
        {
          v19 = 84;
        }

        else
        {
          v19 = 70;
        }

        if (*(a1 + 12305))
        {
          v20 = 84;
        }

        else
        {
          v20 = 70;
        }

        v99 = 136315906;
        v100 = "[BWMultiStreamCameraSourceNode _bringStreamUpToDate]";
        v101 = 1024;
        *v102 = v18;
        *&v102[4] = 1024;
        *&v102[6] = v19;
        v103 = 1024;
        v104 = v20;
        LODWORD(v90) = 30;
        v87 = &v99;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  [*(a1 + 136) setLowLightVideoEnabled:{objc_msgSend(*(a1 + 360), "lowLightVideoEnabled", v87, v90)}];
  [*(a1 + 360) maximumSupportedFrameRate];
  [*(a1 + 136) setMaximumSupportedFrameRate:?];
  [*(a1 + 360) minimumSupportedFrameRate];
  [*(a1 + 136) setMinimumSupportedFrameRate:?];
  v21 = [*(a1 + 360) minFrameRate];
  if (FigCaptureFrameRateAsInt(v21, v22) <= 0)
  {
    v24 = [*(a1 + 360) minFrameRate];
    if (FigCaptureFrameRateAsInt(v24, v25) || ![*(a1 + 360) pointCloudOutputEnabled])
    {
      v23 = 0;
    }

    else
    {
      v23 = [*(a1 + 360) pointCloudOutputIsSupplementalPointCloudData];
    }
  }

  else
  {
    v23 = 1;
  }

  v26 = *(a1 + 136);
  v27 = [*(a1 + 360) lockedFrameRate];
  v29 = v28;
  v30 = [*(a1 + 360) externalSyncFrameRate];
  if (([v26 setActiveVideoLockedFrameRate:v27 activeVideoExternalSyncFrameRate:{v29, v30, v31}] & 1) == 0)
  {
    if (v23 && (v32 = [*(a1 + 360) maxFrameRate], FigCaptureFrameRateAsInt(v32, v33) >= 1))
    {
      v34 = [*(a1 + 360) minFrameRate];
      [*(a1 + 136) setMinimumFrameRate:{v34, v35}];
      v36 = [*(a1 + 360) maxFrameRate];
    }

    else
    {
      [*(a1 + 136) maximumSupportedFrameRate];
      [*(a1 + 136) minimumSupportedFrameRate];
      v38 = [*(a1 + 136) minimumFrameRate];
      v40 = v39;
      FigCaptureFrameRateFromFloat();
      v42 = v41;
      v44 = v43;
      FigCaptureFrameRateFromFloat();
      v47 = FigCaptureFrameRateClamp(v38, v40, v42, v44, v45, v46);
      [*(a1 + 136) setMinimumFrameRate:{v47, v48}];
      v49 = [*(a1 + 136) maximumFrameRate];
      v51 = v50;
      FigCaptureFrameRateFromFloat();
      v53 = v52;
      v55 = v54;
      FigCaptureFrameRateFromFloat();
      v36 = FigCaptureFrameRateClamp(v49, v51, v53, v55, v56, v57);
    }

    [*(a1 + 136) setMaximumFrameRate:{v36, v37}];
  }

  [*(a1 + 360) fastSwitchingMainFormatMaxFrameRate];
  if (v58 == 0.0)
  {
    [*(a1 + 360) maximumSupportedFrameRate];
  }

  [*(a1 + 136) setMaximumFrameRateForSensorRawOutputBufferPoolRequirements:?];
  if ([*(a1 + 136) synchronizedStreamsEnabled])
  {
    [*(a1 + 136) setStreamingRequiredWhenConfiguredAsSlave:{objc_msgSend(*(a1 + 360), "streamingRequiredWhenConfiguredAsSlave")}];
    [*(a1 + 136) setVisionDataRequiredWhenConfiguredAsSlave:{objc_msgSend(*(a1 + 360), "visionDataRequiredWhenConfiguredAsSlave")}];
  }

  [*(a1 + 144) setPropertyIfSupported:*off_1E798BD48 value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", objc_msgSend(*(a1 + 360), "chromaNoiseReductionEnabled"))}];
  [*(a1 + 360) aeMaxGain];
  if (v59 > 0.0)
  {
    v60 = *(a1 + 144);
    v61 = *off_1E798BC00;
    v62 = MEMORY[0x1E696AD98];
    [*(a1 + 360) aeMaxGain];
    LODWORD(v64) = vcvts_n_s32_f32(v63, 8uLL);
    [v60 setProperty:v61 value:{objc_msgSend(v62, "numberWithInt:", v64)}];
    [*(a1 + 360) aeMaxGain];
    [*(a1 + 136) setAeMaxGain:?];
  }

  v65 = *(a1 + 360);
  if (v65)
  {
    [v65 maxExposureDurationFrameworkOverride];
  }

  else
  {
    v93 = 0uLL;
    v94 = 0;
  }

  v66 = *(a1 + 136);
  *location = v93;
  v106 = v94;
  [v66 setMaxExposureDurationFrameworkOverride:location];
  v67 = *(a1 + 360);
  if (v67)
  {
    [v67 maxExposureDurationClientOverride];
  }

  else
  {
    v91 = 0uLL;
    v92 = 0;
  }

  v68 = *(a1 + 136);
  *location = v91;
  v106 = v92;
  [v68 setMaxExposureDurationClientOverride:location];
  CaptureStreamColorSpace = BWColorSpacePropertiesGetCaptureStreamColorSpace(*(a1 + 376));
  v70 = [objc_msgSend(*(a1 + 136) "stream")];
  v71 = *off_1E798BD68;
  if ([v70 objectForKeyedSubscript:*off_1E798BD68])
  {
    [*(a1 + 144) setProperty:v71 value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", CaptureStreamColorSpace)}];
  }

  v72 = [*(a1 + 144) supportedProperties];
  v73 = *off_1E798C2D8;
  if ([v72 objectForKeyedSubscript:*off_1E798C2D8] && (*(a1 + 192) & 1) == 0)
  {
    YCbCrMatrix = BWColorSpacePropertiesGetYCbCrMatrix(*(a1 + 376));
    if (YCbCrMatrix == *MEMORY[0x1E6965FB0])
    {
      v75 = *MEMORY[0x1E6965FD0];
    }

    else
    {
      v75 = YCbCrMatrix;
    }

    [*(a1 + 144) setProperty:v73 value:v75];
  }

  v76 = 1;
  [*(a1 + 136) setChromaticAbberrationCorrectionEnabled:1];
  [*(a1 + 136) setKeypointDetectionEnabled:{objc_msgSend(*(a1 + 360), "keypointDetectionEnabled")}];
  [*(a1 + 136) setStillImageKeypointDetectionEnabled:{objc_msgSend(*(a1 + 360), "stillImageKeypointDetectionEnabled")}];
  [*(a1 + 136) setMultiBandNoiseReductionMode:{objc_msgSend(*(a1 + 360), "ispMultiBandNoiseReductionMode")}];
  if (([*(a1 + 360) ltmLookUpTableMetadataEnabledForStills] & 1) == 0)
  {
    v76 = [*(a1 + 360) ltmLookUpTableMetadataEnabledForStreaming];
  }

  [*(a1 + 144) setPropertyIfSupported:*off_1E798BF40 value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v76)}];
  [*(a1 + 144) setPropertyIfSupported:*off_1E798BDC0 value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", objc_msgSend(*(a1 + 360), "ltmLookUpTableMetadataEnabledForStreaming"))}];
  [*(a1 + 144) setPropertyIfSupported:*off_1E798BF50 value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", objc_msgSend(*(a1 + 360), "ltmThumbnailMetadataEnabledForStreaming"))}];
  [*(a1 + 144) setPropertyIfSupported:*off_1E798BDC8 value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", objc_msgSend(*(a1 + 360), "ltmThumbnailMetadataEnabledForStreaming"))}];
  [*(a1 + 144) setPropertyIfSupported:*off_1E798BF48 value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", 0)}];
  [*(a1 + 144) setPropertyIfSupported:*off_1E798BFC0 value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", objc_msgSend(*(a1 + 360), "lumaHistogramMetadataEnabled"))}];
  [*(a1 + 144) setPropertyIfSupported:*off_1E798BDD0 value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", objc_msgSend(*(a1 + 360), "lumaHistogramMetadataEnabled"))}];
  v77 = [*(a1 + 360) stillImageLocalHistogramClippingDataMetadataEnabled];
  [*(a1 + 144) setPropertyIfSupported:*off_1E798BF78 value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v77)}];
  [*(a1 + 136) setContentAwareEnhancementEnabled:{objc_msgSend(*(a1 + 360), "contentAwareEnhancementEnabled")}];
  [*(a1 + 136) setContentAwareAWBEnabled:{objc_msgSend(*(a1 + 360), "contentAwareAWBEnabled")}];
  v78 = [*(a1 + 144) setPropertyIfSupported:*off_1E798C088 value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", objc_msgSend(*(a1 + 360), "multiIlluminantWhiteBalanceEnabled"))}];
  if (v78)
  {
    v83 = v78;
    [BWMultiStreamCameraSourceNode _bringStreamUpToDate];
  }

  else
  {
    v79 = [*(a1 + 360) colorPostProcessingSkyEnhancementEnabled];
    v80 = [*(a1 + 144) setPropertyIfSupported:*off_1E798BD58 value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v79)}];
    if (v80)
    {
      v83 = v80;
      [BWMultiStreamCameraSourceNode _bringStreamUpToDate];
    }

    else
    {
      if ([*(a1 + 128) videoStabilizationStrength] <= 2)
      {
        v81 = 0;
      }

      else
      {
        v81 = &unk_1F224C210;
      }

      v82 = [*(a1 + 144) setPropertyIfSupported:*off_1E798BF68 value:v81];
      if (v82)
      {
        v83 = v82;
        [BWMultiStreamCameraSourceNode _bringStreamUpToDate];
      }

      else
      {
        [BWMultiStreamCameraSourceNode _bringStreamUpToDate];
        return LODWORD(location[0]);
      }
    }
  }

  return v83;
}

- (uint64_t)_updateObjectDetectionMetadataRegistration
{
  if (result)
  {
    [OUTLINED_FUNCTION_1_107(result) objectDetectionStartupDeferred];
    [OUTLINED_FUNCTION_39_16() setObjectDetectionStartupDeferred:?];
    if (([OUTLINED_FUNCTION_16_35() detectedFacesOnVideoCaptureOutputEnabled] & 1) == 0 && (objc_msgSend(OUTLINED_FUNCTION_16_35(), "detectedFacesOnPreviewOutputEnabled") & 1) == 0)
    {
      [OUTLINED_FUNCTION_16_35() detectedObjectsOutputEnabled];
    }

    [OUTLINED_FUNCTION_39_16() setFaceDetectionEnabled:?];
    [OUTLINED_FUNCTION_16_35() detectedFacesOutputConfiguration];
    [OUTLINED_FUNCTION_39_16() setFaceDetectionConfiguration:?];
    [OUTLINED_FUNCTION_16_35() enabledDetectedObjectTypes];
    [OUTLINED_FUNCTION_39_16() setDetectedObjectTypes:?];
    [OUTLINED_FUNCTION_16_35() eyeDetectionRequired];
    v1 = OUTLINED_FUNCTION_39_16();

    return [v1 setEyeDetectionRequired:?];
  }

  return result;
}

- (void)_updateOutputConfigurations
{
  if (!a1)
  {
    goto LABEL_30;
  }

  v2 = [(BWMultiStreamCameraSourceNode *)a1 _outputConfigurationsForAllOutputs];
  if (v2)
  {
    v3 = v2;
    if (*(a1 + 160) == 1)
    {
      [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(OUTLINED_FUNCTION_16_35(), "primaryScalerDecoupled")}];
      if ([OUTLINED_FUNCTION_86() setProperty:? value:?])
      {
LABEL_37:
        OUTLINED_FUNCTION_1_5();
LABEL_38:
        FigDebugAssert3();
LABEL_30:
        OUTLINED_FUNCTION_80_3();
        return;
      }
    }

    else if ([objc_msgSend(*(a1 + 144) "supportedProperties")])
    {
      [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(OUTLINED_FUNCTION_16_35(), "primaryScalerDecoupled")}];
      if ([OUTLINED_FUNCTION_125_3() setProperty:? value:?])
      {
        goto LABEL_37;
      }
    }

    OUTLINED_FUNCTION_29_15();
    v8 = OUTLINED_FUNCTION_64(v4, v5, v6, v7);
    if (v8)
    {
      v9 = v8;
      v10 = *v33;
      v11 = *off_1E798CA88;
      v12 = *off_1E798CA10;
      do
      {
        v13 = 0;
        do
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v3);
          }

          v14 = *(v32 + 8 * v13);
          LossyCompressionLevel = [v14 isEqualToString:v11];
          if ((LossyCompressionLevel & 1) == 0)
          {
            v17 = mscsn_streamOutputIndexForOutputID(v14);
            v18 = [v3 objectForKeyedSubscript:v14];
            v19 = a1 + 432 + (v17 << 9);
            *(v19 + 128) = [(BWMultiStreamCameraSourceNode *)a1 _outputDimensionsForOutputID:v14 outputConfiguration:v18];
            FigCFDictionaryGetCGRectIfPresent();
            v20 = *(v19 + 176);
            if (v20)
            {

              *(v19 + 176) = 0;
            }

            LossyCompressionLevel = [objc_msgSend(v18 objectForKeyedSubscript:{v12), "intValue"}];
            if (LossyCompressionLevel)
            {
              v21 = LossyCompressionLevel;
              CompressionType = FigCapturePixelFormatGetCompressionType(LossyCompressionLevel);
              *(v19 + 184) = CompressionType;
              if ((CompressionType - 1) <= 1)
              {
                *(v19 + 176) = objc_alloc_init(BWStats);
                *(v19 + 192) = 0;
                *(v19 + 200) = 0;
              }

              *(v19 + 304) = 0u;
              *(v19 + 320) = 0u;
              *(v19 + 272) = 0u;
              *(v19 + 288) = 0u;
              *(v19 + 240) = 0u;
              *(v19 + 256) = 0u;
              *(v19 + 208) = 0u;
              *(v19 + 224) = 0u;
              *(v19 + 336) = 0u;
              *(v19 + 352) = 0u;
              *(v19 + 368) = 0u;
              *(v19 + 384) = 0u;
              *(v19 + 400) = 0u;
              *(v19 + 416) = 0u;
              *(v19 + 432) = 0u;
              *(v19 + 448) = 0u;
              *(v19 + 464) = 0;
              v23 = MEMORY[0x1E6960C70];
              *(v19 + 468) = *MEMORY[0x1E6960C70];
              *(v19 + 484) = *(v23 + 16);
              *(v19 + 492) = FigCapturePixelFormatIsTenBit(v21);
              *(v19 + 493) = FigCapturePixelFormatIs420(v21);
              LossyCompressionLevel = FigCapturePixelFormatGetLossyCompressionLevel(v21);
              *(v19 + 494) = LossyCompressionLevel != 0;
            }

            else
            {
              *(v19 + 184) = 0;
            }
          }

          ++v13;
        }

        while (v9 != v13);
        v24 = OUTLINED_FUNCTION_64(LossyCompressionLevel, v16, v31, v30);
        v9 = v24;
      }

      while (v24);
    }

    if ([*(a1 + 128) adaptiveOverscanEnabled])
    {

      v25 = OUTLINED_FUNCTION_70();
      *(a1 + 11784) = [(BWMultiStreamCameraSourceNode *)v25 _outputConfigurationsFilterCropRectAndDimensionsFromOutputConfigurations:v26 includeStreamingOutputs:1 includeStillOutputs:0];

      *(a1 + 11792) = 0;
    }

    if (![*(a1 + 144) setProperty:*off_1E798C280 value:v3])
    {
      if ((([OUTLINED_FUNCTION_16_35() previewOutputEnabled] & 1) != 0 || objc_msgSend(OUTLINED_FUNCTION_16_35(), "videoCaptureOutputEnabled")) && (-[BWMultiStreamCameraSourceNode _outputConfigurationForStreamingOutputID:nodeOutput:](a1), v27))
      {
        v28 = [(BWMultiStreamCameraSourceNode *)a1 _maxISPZoomFactorForOutputConfiguration:v27];
        *(a1 + 12276) = LODWORD(v28);
      }

      else
      {
        *(a1 + 12276) = 1065353216;
      }

      goto LABEL_30;
    }

    OUTLINED_FUNCTION_1_5();
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_112_5();
  OUTLINED_FUNCTION_9_38();
  FigDebugAssert3();
  OUTLINED_FUNCTION_80_3();

  FigSignalErrorAtGM();
}

- (id)_outputConfigurationsForAllOutputs
{
  if (result)
  {
    v1 = result;
    [result[45] visOverscan];

    return [(BWMultiStreamCameraSourceNode *)v1 _outputConfigurationsForAllOutputsWithVISOverscan:v2, v3];
  }

  return result;
}

- (uint64_t)_updateOverscanReservedInISPZoom
{
  if (result)
  {
    result = [OUTLINED_FUNCTION_1_107(result) overscanForShiftMitigation];
    if (v2 > 0.0)
    {
      v3 = v2;
      [OUTLINED_FUNCTION_16_35() visOverscan];
      [OUTLINED_FUNCTION_16_35() visOverscan];
      [OUTLINED_FUNCTION_16_35() visOverscan];
      [OUTLINED_FUNCTION_16_35() visOverscan];
      if (v4 >= v3)
      {
        [OUTLINED_FUNCTION_16_35() visOverscan];
        v3 = v5;
      }

      result = [OUTLINED_FUNCTION_16_35() additionalVISOverscanReservedInZoom];
      if (v6 != 0.0)
      {
        result = [OUTLINED_FUNCTION_16_35() additionalVISOverscanWhenRecording];
        v3 = v3 * (v7 + 1.0);
      }

      if (*(v1 + 11776) != v3)
      {
        *(v1 + 11776) = v3;
      }
    }
  }

  return result;
}

- (uint64_t)_verifyColorSpacePropertiesForAllOutputs
{
  if (result)
  {
    v1 = result;
    v13 = 0;
    v2 = [*(result + 144) getProperty:*off_1E798C298 error:&v13];
    if (!v13)
    {
      v3 = v2;
      if ([OUTLINED_FUNCTION_19_28() previewOutputEnabled] && (v7 = OUTLINED_FUNCTION_40(), (v13 = -[BWMultiStreamCameraSourceNode _verifyColorSpacePropertiesForOutputID:matchVideoOutputsColorInfo:](v7, v8, v9)) != 0) || objc_msgSend(OUTLINED_FUNCTION_19_28(), "videoCaptureOutputEnabled") && (v10 = OUTLINED_FUNCTION_40(), (v13 = -[BWMultiStreamCameraSourceNode _verifyColorSpacePropertiesForOutputID:matchVideoOutputsColorInfo:](v10, v11, v12)) != 0))
      {
LABEL_17:
        OUTLINED_FUNCTION_1_5();
LABEL_19:
        FigDebugAssert3();
        return v13;
      }

      if (![OUTLINED_FUNCTION_19_28() stillImageOutputEnabled])
      {
        return v13;
      }

      v4 = [OUTLINED_FUNCTION_19_28() usesFirmwareStillImageOutput];
      v5 = &OBJC_IVAR___BWMultiStreamCameraSourceNode__stillImageStreamOutputID;
      if (!v4)
      {
        v5 = &OBJC_IVAR___BWMultiStreamCameraSourceNode__videoCaptureStreamOutputID;
      }

      if (!v13)
      {
        v6 = *(v1 + *v5);
        if ([v6 isEqualToString:*off_1E798CAC8])
        {
          return v13;
        }

        v13 = [(BWMultiStreamCameraSourceNode *)v1 _verifyColorSpacePropertiesForOutputID:v6 matchVideoOutputsColorInfo:v3];
        if (!v13)
        {
          return v13;
        }

        goto LABEL_17;
      }
    }

    OUTLINED_FUNCTION_8_51();
    goto LABEL_19;
  }

  return result;
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v6.receiver = self;
  v6.super_class = BWMultiStreamCameraSourceNode;
  [(BWNode *)&v6 prepareForCurrentConfigurationToBecomeLive];
  if ([(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration reflectsStillsOnStreamingOutputs]&& !self->_motionDataPreserver)
  {
    self->_motionDataPreserver = [[BWMotionDataPreserver alloc] initWithName:[(BWNode *)self description]];
  }

  v3 = [(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration videoHDRImageStatisticsEnabled];
  hdrMetadataSession = self->_hdrMetadataSession;
  if (v3)
  {
    if (!hdrMetadataSession)
    {
      VTHDRMetadataGenerationSessionCreate();
    }

    v5 = MEMORY[0x1E6960C70];
    *&self->_lastFramePTS.value = *MEMORY[0x1E6960C70];
    self->_lastFramePTS.epoch = *(v5 + 16);
  }

  else if (hdrMetadataSession)
  {
    CFRelease(hdrMetadataSession);
    self->_hdrMetadataSession = 0;
  }
}

- (void)_asynchronouslyPreallocateBufferPools
{
  if (a1)
  {
    v1 = a1 + 132;
    v2 = 22;
    do
    {
      if (*(v1 + 300) == 1 && *(v1 + 309) == 1 && (*(v1 + 404) & 1) == 0)
      {
        v3 = *(v1 + 316);
        if (v3)
        {
          v4 = [v3 preparedPixelBufferPool];
        }

        else
        {
          v4 = *(v1 + 396);
        }

        v5 = *(v1 + 428);
        v6 = *(v1 + 432);
        v7 = [*(a1 + 360) maxFrameRate];
        v22 = v22 & 0xFFFFFFFF00000000 | v8;
        v9 = FigCaptureFrameRateAsInt(v7, v22);
        v21 = v4;
        v10 = [v4 capacity];
        v11 = [*(a1 + 360) maxFrameRate];
        v23 = v23 & 0xFFFFFFFF00000000 | v12;
        v13 = FigCaptureFrameRateAsFloat(v11, v23);
        v14 = [*(a1 + 128) thermalSystemPressureLevel];
        if ((v6 * v5) >= 0x7E9000 && (v9 <= 59 ? (v15 = 1.5) : (v15 = 1.0), (v15 * v13) <= v10 ? (v16 = v14 <= 2) : (v16 = 0), v16))
        {
          [*(v1 + 316) memoryPool];
          v19 = v21;
          [v21 name];
          v18 = [OUTLINED_FUNCTION_28() newFlushAssertion:?];
          v17 = 1;
        }

        else
        {
          v17 = 0;
          v18 = 0;
          v19 = v21;
        }

        v20 = *(a1 + 184);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __70__BWMultiStreamCameraSourceNode__asynchronouslyPreallocateBufferPools__block_invoke;
        block[3] = &unk_1E7998820;
        v26 = v17;
        block[5] = v18;
        block[6] = v1 + 300;
        block[4] = v19;
        dispatch_async(v20, block);
      }

      v1 += 512;
      --v2;
    }

    while (v2);
  }
}

void __70__BWMultiStreamCameraSourceNode__asynchronouslyPreallocateBufferPools__block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    *(*(a1 + 48) + 495) = [*(a1 + 32) prefetch:(*(*(a1 + 48) + 92) + 2) lastEmittedSurfaceID:0] ^ 1;
    v2 = *(a1 + 40);
  }

  else
  {
    v3 = *(a1 + 32);

    [v3 preallocate];
  }
}

- (uint64_t)_registerForStreamNotifications
{
  if (result)
  {
    v1 = result;
    [*(result + 144) registerForNotification:*off_1E798B888 listener:result callback:mscsn_handleStreamDroppedSampleNotification];
    [OUTLINED_FUNCTION_135_4() registerForNotification:*off_1E798B880 listener:v1 callback:mscsn_handleStreamDroppedSampleNotification];
    result = [*(v1 + 360) depthOutputEnabled];
    if (result)
    {
      v2 = OUTLINED_FUNCTION_135_4();
      v3 = *off_1E798B898;

      return [v2 registerForNotification:v3 listener:v1 callback:mscsn_handlePoolReadyNotification];
    }
  }

  return result;
}

- (void)makeOutputsLiveIfNeeded
{
  v3 = [MEMORY[0x1E695DF70] array];
  p_nodeOutput = &self->_outputsStorage[0].nodeOutput;
  v5 = 22;
  do
  {
    if (*(p_nodeOutput - 7) == 1 && *p_nodeOutput)
    {
      [v3 addObject:?];
    }

    p_nodeOutput += 64;
    --v5;
  }

  while (v5);
  v6 = 0;
  p_bufferServicingQueue = &self->_outputsStorage[0].bufferServicingQueue;
  do
  {
    if (*(p_bufferServicingQueue - 23) == 1)
    {
      v8 = *p_bufferServicingQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56__BWMultiStreamCameraSourceNode_makeOutputsLiveIfNeeded__block_invoke;
      block[3] = &unk_1E7997358;
      v10 = v6;
      block[4] = self;
      block[5] = v3;
      dispatch_async(v8, block);
    }

    ++v6;
    p_bufferServicingQueue += 64;
  }

  while (v6 != 22);
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWMultiStreamCameraSourceNode)initWithCaptureDevice:(id)a3 captureStream:(id)a4
{
  v52.receiver = self;
  v52.super_class = BWMultiStreamCameraSourceNode;
  v6 = [(BWNode *)&v52 init];
  if (v6)
  {
    *(v6 + 16) = a3;
    *(v6 + 17) = a4;
    *(v6 + 18) = [a4 stream];
    *(v6 + 27) = [*(v6 + 17) portType];
    *(v6 + 56) = [*(v6 + 17) deviceType];
    v6[192] = [*(v6 + 27) isEqualToString:*off_1E798A0E8];
    if (*(v6 + 16) && *(v6 + 18) && (v7 = *(v6 + 17)) != 0)
    {
      *(v6 + 19) = [v7 supportedFormats];
      *(v6 + 2968) = -1;
      *(v6 + 52) = BWActiveDeviceTypeFromPortType(*(v6 + 27));
      *(v6 + 53) = BWCaptureDevicePositionFromPortType(*(v6 + 27));
      v9 = [*(v6 + 18) supportedProperties];
      v10 = *off_1E798BDB8;
      if ([v9 objectForKeyedSubscript:*off_1E798BDB8] && !objc_msgSend(*(v6 + 18), "setProperty:value:", v10, MEMORY[0x1E695E118]))
      {
        v6[172] = 1;
        v11 = [[BWDeferredMetadataCache alloc] initWithCaptureStream:*(v6 + 18) atomicTransactions:0];
        *(v6 + 22) = v11;
        [(BWDeferredMetadataCache *)v11 setNumberOfExpectedSampleBuffersForEachPTS:2];
      }

      *(v6 + 92) = -1;
      v6[160] = [objc_msgSend(objc_msgSend(*(v6 + 17) "stream")] != 0;
      *(v6 + 23) = FigDispatchQueueCreateWithPriority();
      *(v6 + 41) = 1065353216;
      [*(v6 + 17) pixelSize];
      if (v12 > 0.0)
      {
        *(v6 + 41) = 1.0 / v12;
      }

      *(v6 + 42) = 1065353216;
      [objc_msgSend(*(v6 + 16) "bravoTelephotoCaptureStream")];
      if (v13 > 0.0)
      {
        *(v6 + 42) = 1.0 / v13;
      }

      [(BWMultiStreamCameraSourceNode *)v6 _updateBufferPoolSharingProperties];
      v6[11752] = [*(v6 + 17) usePinholeCameraFocalLengthInIntrinsicMatrixCalculation];
      v14 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v6];
      [(BWNodeOutput *)v14 setProvidesPixelBufferPool:0];
      [(BWNodeOutput *)v14 setName:@"Preview"];
      [(BWNodeOutput *)v14 setDropsSampleBuffersWithUnexpectedPTS:1];
      [v6 addOutput:v14];
      *(v6 + 29) = v14;

      v15 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v6];
      [(BWNodeOutput *)v15 setProvidesPixelBufferPool:0];
      [(BWNodeOutput *)v15 setName:@"VideoCapture"];
      [(BWNodeOutput *)v15 setDropsSampleBuffersWithUnexpectedPTS:1];
      [v6 addOutput:v15];
      *(v6 + 30) = v15;

      v16 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v6];
      [(BWNodeOutput *)v16 setProvidesPixelBufferPool:0];
      [(BWNodeOutput *)v16 setName:@"StillImage"];
      [(BWNodeOutput *)v16 setDropsSampleBuffersWithUnexpectedPTS:0];
      [v6 addOutput:v16];
      *(v6 + 31) = v16;

      v17 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v6];
      [(BWNodeOutput *)v17 setProvidesPixelBufferPool:0];
      [(BWNodeOutput *)v17 setName:@"StillImageSensorRaw"];
      [(BWNodeOutput *)v17 setDropsSampleBuffersWithUnexpectedPTS:0];
      [v6 addOutput:v17];
      *(v6 + 32) = v17;

      v18 = [[BWNodeOutput alloc] initWithMediaType:1836016234 node:v6];
      [(BWNodeOutput *)v18 setName:@"DetectedObjects"];
      [(BWNodeOutput *)v18 setDropsSampleBuffersWithUnexpectedPTS:1];
      v19 = *MEMORY[0x1E6960388];
      v20 = *MEMORY[0x1E6960390];
      v51[0] = *MEMORY[0x1E6960388];
      v51[1] = v20;
      v45 = v20;
      v21 = *MEMORY[0x1E6960368];
      v22 = *MEMORY[0x1E6960378];
      v51[2] = *MEMORY[0x1E6960368];
      v51[3] = v22;
      v51[4] = *MEMORY[0x1E6960398];
      -[BWNodeOutput setFormat:](v18, "setFormat:", +[BWMetadataObjectFormat formatWithMetadataIdentifiers:](BWMetadataObjectFormat, "formatWithMetadataIdentifiers:", [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:5]));
      [v6 addOutput:v18];
      *(v6 + 39) = v18;

      *(v6 + 1499) = [[BWDetectedFacesRingBuffer alloc] initWithDepth:3];
      if ([objc_msgSend(*(v6 + 18) "supportedProperties")])
      {
        *(v6 + 1500) = [[BWDetectedObjectsInfoRingBuffer alloc] initWithRingBufferDepth:3];
      }

      [*(v6 + 18) setPropertyIfSupported:*off_1E798BE48 value:&unk_1F2245F58];
      v23 = [[BWNodeOutput alloc] initWithMediaType:1836016234 node:v6];
      [(BWNodeOutput *)v23 setName:@"SecureDetectedObjects"];
      [(BWNodeOutput *)v23 setDropsSampleBuffersWithUnexpectedPTS:1];
      v50[0] = v19;
      v50[1] = v45;
      v50[2] = v21;
      v50[3] = v22;
      -[BWNodeOutput setFormat:](v23, "setFormat:", +[BWMetadataObjectFormat formatWithMetadataIdentifiers:](BWMetadataObjectFormat, "formatWithMetadataIdentifiers:", [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:4]));
      [v6 addOutput:v23];
      *(v6 + 40) = v23;

      v24 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v6];
      [(BWNodeOutput *)v24 setProvidesPixelBufferPool:0];
      [(BWNodeOutput *)v24 setName:@"Depth"];
      [(BWNodeOutput *)v24 setDropsSampleBuffersWithUnexpectedPTS:1];
      [v6 addOutput:v24];
      *(v6 + 33) = v24;

      v25 = [[BWNodeOutput alloc] initWithMediaType:1885564004 node:v6];
      [(BWNodeOutput *)v25 setProvidesDataBufferPool:0];
      [(BWNodeOutput *)v25 setName:@"PointCloud"];
      [(BWNodeOutput *)v25 setDropsSampleBuffersWithUnexpectedPTS:1];
      [v6 addOutput:v25];
      *(v6 + 34) = v25;

      v26 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v6];
      [(BWNodeOutput *)v26 setProvidesPixelBufferPool:0];
      [(BWNodeOutput *)v26 setName:@"LightSourceMask"];
      [(BWNodeOutput *)v26 setDropsSampleBuffersWithUnexpectedPTS:1];
      [v6 addOutput:v26];
      *(v6 + 35) = v26;

      v27 = [[BWNodeOutput alloc] initWithMediaType:1885564004 node:v6];
      [(BWNodeOutput *)v27 setProvidesDataBufferPool:0];
      [(BWNodeOutput *)v27 setName:@"KeypointDescriptorData"];
      [(BWNodeOutput *)v27 setDropsSampleBuffersWithUnexpectedPTS:1];
      [v6 addOutput:v27];
      *(v6 + 36) = v27;

      v28 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v6];
      [(BWNodeOutput *)v28 setName:@"SemanticMasks"];
      [(BWNodeOutput *)v28 setDropsSampleBuffersWithUnexpectedPTS:0];
      [v6 addOutput:v28];
      *(v6 + 37) = v28;

      v29 = [[BWNodeOutput alloc] initWithMediaType:1835365473 node:v6];
      [(BWNodeOutput *)v29 setName:@"EyeReliefStatus"];
      [(BWNodeOutput *)v29 setDropsSampleBuffersWithUnexpectedPTS:1];
      [(BWNodeOutput *)v29 setFormat:[BWMetadataObjectFormat formatWithMetadataIdentifiers:0]];
      [v6 addOutput:v29];
      *(v6 + 41) = v29;

      v30 = [[BWNodeOutput alloc] initWithMediaType:1835365473 node:v6];
      [(BWNodeOutput *)v30 setName:@"TrackedFaces"];
      [(BWNodeOutput *)v30 setDropsSampleBuffersWithUnexpectedPTS:1];
      v49 = *MEMORY[0x1E69629E8];
      -[BWNodeOutput setFormat:](v30, "setFormat:", +[BWMetadataObjectFormat formatWithMetadataIdentifiers:](BWMetadataObjectFormat, "formatWithMetadataIdentifiers:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1]));
      [v6 addOutput:v30];
      *(v6 + 42) = v30;

      v31 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v6];
      [(BWNodeOutput *)v31 setProvidesPixelBufferPool:0];
      [(BWNodeOutput *)v31 setName:@"PreLTMThumbnail"];
      [(BWNodeOutput *)v31 setDropsSampleBuffersWithUnexpectedPTS:1];
      [v6 addOutput:v31];
      *(v6 + 38) = v31;

      v32 = [[BWNodeOutput alloc] initWithMediaType:1835365473 node:v6];
      [(BWNodeOutput *)v32 setName:@"FaceIDReadiness"];
      [(BWNodeOutput *)v32 setDropsSampleBuffersWithUnexpectedPTS:1];
      [(BWNodeOutput *)v32 setFormat:[BWMetadataObjectFormat formatWithMetadataIdentifiers:0]];
      [v6 addOutput:v32];
      *(v6 + 43) = v32;

      v33 = [[BWNodeOutput alloc] initWithMediaType:1835365473 node:v6];
      [(BWNodeOutput *)v33 setName:@"MotionToWake"];
      [(BWNodeOutput *)v33 setDropsSampleBuffersWithUnexpectedPTS:1];
      [(BWNodeOutput *)v33 setFormat:[BWMetadataObjectFormat formatWithMetadataIdentifiers:0]];
      [v6 addOutput:v33];
      *(v6 + 44) = v33;

      v34 = FigDispatchQueueCreateWithPriority();
      dispatch_queue_set_specific(v34, @"BWFigCaptureStreamSetPropertySetPropertyAsyncQueue", [a3 streamSetPropertyAsyncQueue], 0);
      v35 = *MEMORY[0x1E695E480];
      v36 = 22;
      v37 = v6;
      do
      {
        *(v37 + 58) = v34;
        CMSimpleQueueCreate(v35, 30, v37 + 57);
        FigSimpleQueueSetQueueIsFullErrorLoggingEnabled();
        v37 += 512;
        --v36;
      }

      while (v36);
      *(v6 + 59) = multiStreamCameraSourceNode_primaryScalerServiceQueueCallback;
      *(v6 + 123) = multiStreamCameraSourceNode_secondaryScalerServiceQueueCallback;
      *(v6 + 187) = multiStreamCameraSourceNode_intermediateTapServiceQueueCallback;
      *(v6 + 571) = multiStreamCameraSourceNode_rawServiceQueueCallback;
      *(v6 + 251) = multiStreamCameraSourceNode_stillImageServiceQueueCallback;
      *(v6 + 315) = multiStreamCameraSourceNode_stillImageIntermediateTapServiceQueueCallback;
      *(v6 + 379) = multiStreamCameraSourceNode_stillImageRawServiceQueueCallback;
      *(v6 + 443) = multiStreamCameraSourceNode_depthServiceQueueCallback;
      *(v6 + 507) = multiStreamCameraSourceNode_pointCloudServiceQueueCallback;
      *(v6 + 635) = multiStreamCameraSourceNode_lightSourceMaskServiceQueueCallback;
      *(v6 + 699) = multiStreamCameraSourceNode_keypointDescriptorDataServiceQueueCallback;
      *(v6 + 763) = multiStreamCameraSourceNode_semanticMasksServiceQueueCallback;
      *(v6 + 1147) = multiStreamCameraSourceNode_proresRawServiceQueueCallback;
      *(v6 + 827) = multiStreamCameraSourceNode_secureDetectedObjectsServiceQueueCallback;
      *(v6 + 891) = multiStreamCameraSourceNode_secureEyeReliefStatusServiceQueueCallback;
      *(v6 + 955) = multiStreamCameraSourceNode_secureTrackedFacesServiceQueueCallback;
      *(v6 + 1019) = multiStreamCameraSourceNode_secureFaceIDReadinessServiceQueueCallback;
      *(v6 + 1083) = multiStreamCameraSourceNode_secureMotionToWakeServiceQueueCallback;

      v46 = *MEMORY[0x1E695EFF8];
      *(v6 + 12072) = *MEMORY[0x1E695EFF8];
      *(v6 + 3022) = 1065353216;
      *(v6 + 3023) = 0;
      v6[427] = 0;
      v6[12169] = 1;
      v6[12170] = 1;
      *(v6 + 1533) = 0x3FD3333333333333;
      v6[12272] = 1;
      v6[12273] = 0;
      v6[12274] = 1;
      if ([*(v6 + 27) isEqualToString:*off_1E798A0D0])
      {
        if ([*(v6 + 16) isBravoVariant])
        {
          v38 = [*(v6 + 18) getPropertyIfSupported:*off_1E798C0C0 error:0];
          v39 = [*(v6 + 18) getPropertyIfSupported:*off_1E798C0C8 error:0];
          if (v38)
          {
            v40 = v39;
            if (v39)
            {
              v47 = v46;
              point = v46;
              CGPointMakeWithDictionaryRepresentation(v38, &point);
              CGPointMakeWithDictionaryRepresentation(v40, &v47);
              x = point.x;
              y = point.y;
              v44 = v47.x;
              v43 = v47.y;
              if (point.x != v47.x || point.y != v47.y)
              {
                v6[12146] = 1;
                *(v6 + 1519) = v44 - x;
                *(v6 + 1520) = v43 - y;
              }
            }
          }
        }
      }

      *(v6 + 3069) = 1065353216;
      *(v6 + 3056) = 0;
      *(v6 + 765) = *MEMORY[0x1E695F060];
      v6[12280] = [*(v6 + 27) isEqualToString:*off_1E798A0D8];
      [v6 setSupportsLiveReconfiguration:1];
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  preLTMThumbnailCachedFormatDescription = self->_preLTMThumbnailCachedFormatDescription;
  if (preLTMThumbnailCachedFormatDescription)
  {
    CFRelease(preLTMThumbnailCachedFormatDescription);
  }

  ltmThumbnailCachedFormatDescription = self->_ltmThumbnailCachedFormatDescription;
  if (ltmThumbnailCachedFormatDescription)
  {
    CFRelease(ltmThumbnailCachedFormatDescription);
  }

  weightSegmentMapCachedFormatDescription = self->_weightSegmentMapCachedFormatDescription;
  if (weightSegmentMapCachedFormatDescription)
  {
    CFRelease(weightSegmentMapCachedFormatDescription);
  }

  postColorProcessingThumbnailCachedFormatDescription = self->_postColorProcessingThumbnailCachedFormatDescription;
  if (postColorProcessingThumbnailCachedFormatDescription)
  {
    CFRelease(postColorProcessingThumbnailCachedFormatDescription);
  }

  stream = self->_stream;
  if (stream)
  {
    CFRelease(stream);
  }

  p_internalPixelBufferPool = &self->_outputsStorage[0].internalPixelBufferPool;
  v9 = 22;
  do
  {

    v10 = *(p_internalPixelBufferPool - 9);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = *(p_internalPixelBufferPool - 6);
    if (v11)
    {
      CFRelease(v11);
    }

    p_internalPixelBufferPool += 64;
    --v9;
  }

  while (v9);

  p_pixelFormatIsTenBit = &self->_outputsStorage[0].pixelFormatIsTenBit;
  v13 = 22;
  do
  {
    *(p_pixelFormatIsTenBit - 1) = 0;
    p_pixelFormatIsTenBit += 512;
    --v13;
  }

  while (v13);
  dispatch_sync(self->_preAllocationQueue, &__block_literal_global_98);

  stillReflectionTransferSession = self->_stillReflectionTransferSession;
  if (stillReflectionTransferSession)
  {
    CFRelease(stillReflectionTransferSession);
  }

  stillReflectionFormatDescription = self->_stillReflectionFormatDescription;
  if (stillReflectionFormatDescription)
  {
    CFRelease(stillReflectionFormatDescription);
  }

  stillReflectionSecondaryTransferSession = self->_stillReflectionSecondaryTransferSession;
  if (stillReflectionSecondaryTransferSession)
  {
    CFRelease(stillReflectionSecondaryTransferSession);
  }

  stillReflectionSecondaryFormatDescription = self->_stillReflectionSecondaryFormatDescription;
  if (stillReflectionSecondaryFormatDescription)
  {
    CFRelease(stillReflectionSecondaryFormatDescription);
  }

  depthOutputFormatDescription = self->_depthOutputFormatDescription;
  if (depthOutputFormatDescription)
  {
    CFRelease(depthOutputFormatDescription);
  }

  focusPixelDataFormatDescription = self->_focusPixelDataFormatDescription;
  if (focusPixelDataFormatDescription)
  {
    CFRelease(focusPixelDataFormatDescription);
  }

  visionDataFormatDescription = self->_visionDataFormatDescription;
  if (visionDataFormatDescription)
  {
    CFRelease(visionDataFormatDescription);
  }

  hdrMetadataSession = self->_hdrMetadataSession;
  if (hdrMetadataSession)
  {
    CFRelease(hdrMetadataSession);
  }

  streamConfigurationQueue = self->_streamConfigurationQueue;
  if (streamConfigurationQueue)
  {
    dispatch_sync(streamConfigurationQueue, &__block_literal_global_978);
  }

  if (dword_1ED8445B0)
  {
    v27 = 0;
    v26 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (dword_1ED8445B0)
  {
    v27 = 0;
    v26 = 0;
    v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v25.receiver = self;
  v25.super_class = BWMultiStreamCameraSourceNode;
  [(BWNode *)&v25 dealloc];
}

- (void)setMotionToWakeTargetFrameRate:(float)a3
{
  v5 = [(BWSecureMetadataOutputConfigurator *)[(BWFigVideoCaptureStream *)self->_captureStream secureMetadataOutputConfigurator] configurationForPrimaryClient];
  *&v6 = a3;
  [(BWSecureMetadataOutputConfiguration *)v5 setMotionToWakeTargetFrameRate:v6];
  v7 = [(BWFigVideoCaptureStream *)self->_captureStream secureMetadataOutputConfigurator];

  [(BWSecureMetadataOutputConfigurator *)v7 setConfigurationForPrimaryClient:v5];
}

- (void)setObjectDetectionTargetFrameRate:(float)a3
{
  v5 = [(BWSecureMetadataOutputConfigurator *)[(BWFigVideoCaptureStream *)self->_captureStream secureMetadataOutputConfigurator] configurationForPrimaryClient];
  *&v6 = a3;
  [(BWSecureMetadataOutputConfiguration *)v5 setObjectDetectionTargetFrameRate:v6];
  v7 = [(BWFigVideoCaptureStream *)self->_captureStream secureMetadataOutputConfigurator];

  [(BWSecureMetadataOutputConfigurator *)v7 setConfigurationForPrimaryClient:v5];
}

- (id)colorInfoForOutput:(id)a3
{
  if (self->_videoCaptureOutput == a3)
  {
    if (![(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration videoCaptureOutputEnabled])
    {
      [BWMultiStreamCameraSourceNode colorInfoForOutput:];
      return 0;
    }

    v5 = 11856;
  }

  else if (self->_previewOutput == a3)
  {
    if (![(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration previewOutputEnabled])
    {
      [BWMultiStreamCameraSourceNode colorInfoForOutput:];
      return 0;
    }

    v5 = 11832;
  }

  else
  {
    if (self->_stillImageOutput != a3)
    {
      return 0;
    }

    if (![(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration stillImageOutputEnabled])
    {
      [BWMultiStreamCameraSourceNode colorInfoForOutput:];
      return 0;
    }

    v5 = 11920;
  }

  return *(&self->super.super.super.isa + v5);
}

uint64_t __56__BWMultiStreamCameraSourceNode_makeOutputsLiveIfNeeded__block_invoke(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(BWMultiStreamCameraSourceNode *)*(a1 + 32) _nodeOutputsMadeLiveByStreamOutputIndex:?];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ((v7 == *(*(a1 + 32) + 432 + (*(a1 + 48) << 9) + 16) || ([*(a1 + 40) containsObject:*(*(&v11 + 1) + 8 * i)] & 1) == 0) && !objc_msgSend(v7, "liveFormat"))
        {
          [v7 makeConfiguredFormatLive];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v4);
  }

  result = *(a1 + 32);
  v9 = *(a1 + 48);
  if ((*(result + 432 + (v9 << 9) + 8) & 1) == 0)
  {
    [(BWMultiStreamCameraSourceNode *)result _createAndStartFrameCounterForOutputIndexIfNecessary:v9];
    result = *(a1 + 32);
    v9 = *(a1 + 48);
  }

  *(result + 432 + (v9 << 9) + 8) = 1;
  return result;
}

- (BOOL)start:(id *)a3
{
  self->_discardOutputSampleBuffers = 0;
  self->_stopStreamConfigurationUpdates = 0;
  if (self->_resolvedFormatIndex == -1)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v33 = 0;
    v32 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v23 = BWPortTypeToDisplayString(self->_portType, v22);
    LODWORD(v27) = 138412290;
    *(&v27 + 4) = v23;
    v24 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v24, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWMultiStreamCameraSourceNode.m", 2490, @"LastShownDate:BWMultiStreamCameraSourceNode.m:2490", @"LastShownBuild:BWMultiStreamCameraSourceNode.m:2490", 0);
    free(v24);
LABEL_28:
    [(BWMultiStreamCameraSourceNode *)self makeOutputsLiveIfNeeded];
    return 1;
  }

  self->_infraredProjectorUptimeInUsForLowPowerSparse = 0;
  self->_infraredProjectorUptimeInUsForHighPowerSparse = 0;
  self->_previousInfraredCaptureID = 0;
  self->_rawCompressionEnabled = 1;
  if ([(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration deferStreamingOutputsEnable])
  {
    [(BWFigVideoCaptureDevice *)self->_captureDevice setZoomFactorChangedDelegate:self forPortType:self->_portType];
  }

  if ([(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration stillImageOutputEnabled])
  {
    if ([(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration stillImageOutputEnabled])
    {
      v5 = [(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration usesFirmwareStillImageOutput];
      p_captureStream = &self->_captureStream;
      [(BWFigVideoCaptureStream *)self->_captureStream setTimeMachineEnabled:!v5];
      if (!v5)
      {
        v26[0] = 0;
        v26[1] = v26;
        v26[2] = 0x3052000000;
        v26[3] = __Block_byref_object_copy__34;
        v26[4] = __Block_byref_object_dispose__34;
        v26[5] = self;
        *&v27 = 0;
        *(&v27 + 1) = &v27;
        v28 = 0x4010000000;
        v29 = &unk_1AD138BA7;
        size = self->_outputsStorage[3].cropRect.size;
        origin = self->_outputsStorage[3].cropRect.origin;
        v31 = size;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __39__BWMultiStreamCameraSourceNode_start___block_invoke;
        v25[3] = &unk_1E799A1C0;
        v25[5] = v26;
        v25[6] = &v27;
        v25[4] = self;
        [(BWFigVideoCaptureStream *)*p_captureStream setTimeMachineBufferHandler:v25];
        _Block_object_dispose(&v27, 8);
        _Block_object_dispose(v26, 8);
      }
    }

    else
    {
      p_captureStream = &self->_captureStream;
      [(BWFigVideoCaptureStream *)self->_captureStream setTimeMachineEnabled:0];
    }

    [(BWFigVideoCaptureStream *)*p_captureStream setUsesStillFusionReferenceFramePTSForDidCaptureCallback:[(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration livePhotoCaptureEnabled]];
  }

  if ([(BWFigVideoCaptureDevice *)self->_captureDevice smartCameraEnabled])
  {
    v8 = [(BWDetectedFacesRingBuffer *)self->_detectedFacesRingBuffer faceDetector];
  }

  else
  {
    v8 = 0;
  }

  [(BWFigVideoCaptureStream *)self->_captureStream setFaceDetector:v8];
  if ([(BWFigVideoCaptureDevice *)self->_captureDevice smartCameraEnabled])
  {
    v9 = [(BWDetectedObjectsInfoRingBuffer *)self->_detectedObjectsInfoRingBuffer objectDetector];
  }

  else
  {
    v9 = 0;
  }

  [(BWFigVideoCaptureStream *)self->_captureStream setObjectDetector:v9];
  [(BWMultiStreamCameraSourceNode *)self _registerForStreamNotifications];
  [(BWMultiStreamCameraSourceNode *)self _asynchronouslyPreallocateBufferPools];
  [(BWFigVideoCaptureStream *)self->_captureStream sourceNodeWillStartStreaming];
  v10 = [(BWMultiStreamCameraSourceNode *)self _setStreamOutputsEnabled:[(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration deferStreamingOutputsEnable]^ 1 streamingOutputs:1 onDemandStillOutputs:?];
  if (v10)
  {
    v20 = v10;
    [BWMultiStreamCameraSourceNode start:];
  }

  else
  {
    if ([(BWFigCaptureStream *)[(BWFigVideoCaptureStream *)self->_captureStream stream] streaming]|| [(BWFigVideoCaptureStream *)self->_captureStream suspended]|| (v11 = [(BWFigVideoCaptureStream *)self->_captureStream start]) == 0)
    {
      [(BWFigVideoCaptureStream *)self->_captureStream sourceNodeDidStartStreaming];
      v12 = [(BWFigVideoCaptureDevice *)self->_captureDevice masterCaptureStream];
      v13 = [(BWFigVideoCaptureDevice *)self->_captureDevice isBravoVariant];
      if ([(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration pointCloudOutputEnabled])
      {
        v14 = [(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration pointCloudOutputIsSupplementalPointCloudData];
      }

      else
      {
        v14 = 0;
      }

      captureStream = self->_captureStream;
      v16 = captureStream != v12 && v13;
      if (!v16 && ![(BWFigVideoCaptureStream *)captureStream suspended]&& !v14)
      {
        return 1;
      }

      goto LABEL_28;
    }

    v20 = v11;
    [BWMultiStreamCameraSourceNode start:];
  }

  [(BWMultiStreamCameraSourceNode *)self makeOutputsLiveIfNeeded];
  [(BWFigVideoCaptureStream *)self->_captureStream sourceNodeFailedToStartStreaming];
  if (!a3)
  {
    return 0;
  }

  v21 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v20 userInfo:0];
  result = 0;
  *a3 = v21;
  return result;
}

__n128 __39__BWMultiStreamCameraSourceNode_start___block_invoke(void *a1, opaqueCMSampleBuffer *a2)
{
  v4 = a1[6];
  [*(*(*(a1[5] + 8) + 40) + 11992) transferFacesToSampleBuffer:a2 transformToBufferSpace:1 sourceCropRect:{*(*(v4 + 8) + 32), *(*(v4 + 8) + 40), *(*(v4 + 8) + 48), *(*(v4 + 8) + 56)}];
  [*(*(*(a1[5] + 8) + 40) + 12000) transferObjectsToSampleBuffer:a2 transformToBufferSpace:1 sourceCropRect:{*(*(a1[6] + 8) + 32), *(*(a1[6] + 8) + 40), *(*(a1[6] + 8) + 48), *(*(a1[6] + 8) + 56)}];
  v5 = a1[4];
  if (*(v5 + 2152) && (*(v5 + 2462) & 1) == 0)
  {
    [BWMultiStreamCameraSourceNode _tallyCompressedIOSurfaceStatsForSBuf:v5 outputStorage:?];
  }

  [*(*(*(a1[5] + 8) + 40) + 248) emitSampleBuffer:a2];
  v6 = *(*(a1[5] + 8) + 40) + 432;
  CMSampleBufferGetPresentationTimeStamp(&v8, a2);
  result = *&v8.value;
  *(v6 + 1608) = v8.epoch;
  *(v6 + 1592) = result;
  return result;
}

- (BOOL)stop:(id *)a3
{
  if ([(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration deferStreamingOutputsEnable])
  {
    [(BWFigVideoCaptureDevice *)self->_captureDevice setZoomFactorChangedDelegate:0 forPortType:self->_portType];
  }

  if (!self->_emitsFramesWhileStopping)
  {
    [(BWMultiStreamCameraSourceNode *)self _markEndOfLiveOnAllOutputs];
  }

  self->_stopStreamConfigurationUpdates = 1;
  streamConfigurationQueue = self->_streamConfigurationQueue;
  if (streamConfigurationQueue)
  {
    dispatch_sync(streamConfigurationQueue, &__block_literal_global_1038);
  }

  LODWORD(v5) = 2.0;
  if (!self->_emitsFramesWhileStopping)
  {
    v5 = 0.0;
    if (self->_keepISPStreamingWhenStopping)
    {
      *&v5 = 2.0;
    }
  }

  -[BWFigCaptureStream setPropertyIfSupported:value:](self->_stream, "setPropertyIfSupported:value:", *off_1E798BD30, [MEMORY[0x1E696AD98] numberWithFloat:v5]);
  if ([(BWFigVideoCaptureStream *)self->_captureStream secureMetadataOutputConfigurator])
  {
    if (!self->_keepISPStreamingWhenStopping)
    {
      [(BWSecureMetadataOutputConfigurator *)[(BWFigVideoCaptureStream *)self->_captureStream secureMetadataOutputConfigurator] setDelegate:0];
    }

    [(BWSecureMetadataOutputConfigurator *)[(BWFigVideoCaptureStream *)self->_captureStream secureMetadataOutputConfigurator] resetAllConfigurations];
  }

  [(BWFigVideoCaptureStream *)self->_captureStream sourceNodeWillStopStreaming];
  if ([(BWFigCaptureStream *)[(BWFigVideoCaptureStream *)self->_captureStream stream] streaming]&& ![(BWFigVideoCaptureStream *)self->_captureStream suspended])
  {
    if (self->_keepISPStreamingWhenStopping)
    {
      v8 = [(BWMultiStreamCameraSourceNode *)self _setStreamOutputsEnabled:self->_streamingOutputsEnabled streamingOutputs:1 onDemandStillOutputs:?];
    }

    else
    {
      v8 = [(BWFigVideoCaptureStream *)self->_captureStream stop];
    }

    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  [(BWMultiStreamCameraSourceNode *)self _flushOutRemainingBuffers];
  if (self->_emitsFramesWhileStopping)
  {
    [(BWMultiStreamCameraSourceNode *)self _markEndOfLiveOnAllOutputs];
  }

  v9 = 432;
  outputsStorage = self->_outputsStorage;
  v11 = xmmword_1AD0564F0;
  v12 = xmmword_1AD056500;
  v13 = xmmword_1AD055320;
  v14 = xmmword_1AD046360;
  v15 = 24;
  v16 = vdupq_n_s64(0x16uLL);
  v17 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v16, v14)), *v11.i8), *v11.i8).u8[0])
    {
      *(&self->super.super._input + v9 + 1) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v14)), *&v11), *&v11).i8[1])
    {
      *(&self->_outputsStorage[0].retainedBufferCount + v9 + 1) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v11, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v13))), *&v11).i8[2])
    {
      *(&self->_outputsStorage[1].retainedBufferCount + v9 + 1) = 0;
      *(&self->_outputsStorage[2].retainedBufferCount + v9 + 1) = 0;
    }

    if (vuzp1_s8(*&v11, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v12)), *&v11)).i32[1])
    {
      *(&self->_outputsStorage[3].retainedBufferCount + v9 + 1) = 0;
    }

    if (vuzp1_s8(*&v11, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v12)), *&v11)).i8[5])
    {
      *(&self->_outputsStorage[4].retainedBufferCount + v9 + 1) = 0;
    }

    if (vuzp1_s8(*&v11, vuzp1_s16(*&v11, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v11)))).i8[6])
    {
      *(&self->_outputsStorage[5].retainedBufferCount + v9 + 1) = 0;
      *(&self->_outputsStorage[6].retainedBufferCount + v9 + 1) = 0;
    }

    v12 = vaddq_s64(v12, v17);
    v13 = vaddq_s64(v13, v17);
    v14 = vaddq_s64(v14, v17);
    v9 += 4096;
    v11 = vaddq_s64(v11, v17);
    v15 -= 8;
  }

  while (v15);
  [(BWFigVideoCaptureStream *)self->_captureStream sourceNodeDidStopStreaming:self->_keepISPStreamingWhenStopping, *v11.i64, *v12.i64, *v13.i64, *v14.i64];
  [(BWMultiStreamCameraSourceNode *)self _unregisterStreamOutputHandlers];
  [(BWFigVideoCaptureStream *)self->_captureStream setTimeMachineBufferHandler:0];
  [(BWMultiStreamCameraSourceNode *)self _unregisterFromStreamNotifications];
  v18 = 22;
  do
  {
    if (outputsStorage->pixelBufferCompressionType)
    {
      [(BWMultiStreamCameraSourceNode *)self _reportIOSurfaceCompressionCoreAnalyticsData:?];
    }

    ioSurfaceCompressionRatioStats = outputsStorage->ioSurfaceCompressionRatioStats;
    if (ioSurfaceCompressionRatioStats)
    {

      outputsStorage->ioSurfaceCompressionRatioStats = 0;
      outputsStorage->totalCompressedDataSize = 0;
      outputsStorage->totalUncompressedDataSize = 0;
    }

    ++outputsStorage;
    --v18;
  }

  while (v18);
  ioSurfaceCompressionRatioStatsForRaw = self->_ioSurfaceCompressionRatioStatsForRaw;
  if (ioSurfaceCompressionRatioStatsForRaw)
  {
    if ([(BWStats *)ioSurfaceCompressionRatioStatsForRaw numberOfSamples])
    {
      [(BWMultiStreamCameraSourceNode *)self _reportIOSurfaceCompressionCoreAnalyticsDataForRaw];
    }

    self->_ioSurfaceCompressionRatioStatsForRaw = 0;
    self->_totalCompressedDataSizeForRaw = 0;
    self->_totalUncompressedDataSizeForRaw = 0;
  }

  mlvnrThermalMonitor = self->_mlvnrThermalMonitor;
  if (mlvnrThermalMonitor)
  {
    if (dword_1ED8445B0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      mlvnrThermalMonitor = self->_mlvnrThermalMonitor;
    }

    self->_mlvnrThermalMonitor = 0;
  }

  mlvnrGameModeMonitor = self->_mlvnrGameModeMonitor;
  if (mlvnrGameModeMonitor)
  {
    if (dword_1ED8445B0)
    {
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      mlvnrGameModeMonitor = self->_mlvnrGameModeMonitor;
    }

    self->_mlvnrGameModeMonitor = 0;
  }

  if (a3 && v7)
  {
    *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v7 userInfo:0];
  }

  return v7 == 0;
}

- (void)makeCurrentConfigurationLive
{
  if ([(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration dynamicAspectRatioEnabled])
  {
    os_unfair_lock_lock(&self->_dynamicAspectRatioLock);
    if (self->_dynamicAspectRatioChangePending)
    {
      self->_dynamicAspectRatioGraphPrepared = 1;
      self->_dynamicAspectRatioFirstBufferReceived = 0;
      os_unfair_lock_unlock(&self->_dynamicAspectRatioLock);
      if (dword_1ED8445B0)
      {
        v11 = 0;
        v10 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return;
    }

    self->_dynamicAspectRatioFirstBufferReceived = 0;
    os_unfair_lock_unlock(&self->_dynamicAspectRatioLock);
  }

  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = 0;
  p_bufferServicingQueue = &self->_outputsStorage[0].bufferServicingQueue;
  do
  {
    if (*(p_bufferServicingQueue - 23) == 1 && *(p_bufferServicingQueue - 24) == 1)
    {
      v7 = [MEMORY[0x1E695DFA8] setWithArray:{-[BWMultiStreamCameraSourceNode _nodeOutputsMadeLiveByStreamOutputIndex:](self, v5)}];
      [v7 minusSet:v4];
      [v4 unionSet:v7];
      v8 = *p_bufferServicingQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__BWMultiStreamCameraSourceNode_makeCurrentConfigurationLive__block_invoke;
      block[3] = &unk_1E798F898;
      block[4] = v7;
      block[5] = self;
      dispatch_async(v8, block);
    }

    ++v5;
    p_bufferServicingQueue += 64;
  }

  while (v5 != 22);
}

uint64_t __61__BWMultiStreamCameraSourceNode_makeCurrentConfigurationLive__block_invoke(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if ([v7 liveFormat])
        {
          [v7 markEndOfLiveOutputForConfigurationID:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", objc_msgSend(*(a1 + 40), "liveConfigurationID"))}];
        }

        [v7 makeConfiguredFormatLive];
        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (int)secureMetadataOutputConfigurationDidChange:(id)a3
{
  v5 = *off_1E798CA88;
  v16 = *off_1E798CA88;
  v17 = [a3 metadataOutputConfigurationDictionary];
  v6 = -[BWFigCaptureStream setProperty:value:](self->_stream, "setProperty:value:", *off_1E798C280, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1]);
  if (dword_1ED8445B0)
  {
    v15 = 0;
    v14 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v6)
  {
    [BWMultiStreamCameraSourceNode secureMetadataOutputConfigurationDidChange:];
  }

  else if (self->_metadataOutputInUseByPrimaryClient)
  {
    return 0;
  }

  else
  {
    v8 = [a3 isEmpty];
    stream = self->_stream;
    v10 = *off_1E798C2A0;
    v12 = v5;
    v13 = [MEMORY[0x1E696AD98] numberWithBool:v8 ^ 1u];
    v6 = -[BWFigCaptureStream setProperty:value:](stream, "setProperty:value:", v10, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1]);
    if (v6)
    {
      [BWMultiStreamCameraSourceNode secureMetadataOutputConfigurationDidChange:];
    }

    else
    {
      [(BWFigVideoCaptureDevice *)self->_captureDevice setSecureMetadataEnabled:v8 ^ 1u];
    }
  }

  return v6;
}

void __53__BWMultiStreamCameraSourceNode__bringStreamUpToDate__block_invoke(uint64_t a1, void *a2)
{
  if (dword_1ED8445B0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    if ([a2 thermalLevel] < 2)
    {
      if ([a2 thermalLevel])
      {
LABEL_13:
        [(BWMultiStreamCameraSourceNode *)v6 updateMLVNREnabledByThermalPressureOrGameModeEnabled:?];

        return;
      }

      if (dword_1ED8445B0)
      {
        v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v7 = 0;
    }

    else if (dword_1ED8445B0)
    {
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      v7 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      v7 = 1;
    }

    *(v6 + 12304) = v7;
    goto LABEL_13;
  }
}

void __53__BWMultiStreamCameraSourceNode__bringStreamUpToDate__block_invoke_1058(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    v3 = [WeakRetained[1537] isGameModeEnabled];
    v4 = dword_1ED8445B0;
    if (v3)
    {
      if (dword_1ED8445B0)
      {
        __53__BWMultiStreamCameraSourceNode__bringStreamUpToDate__block_invoke_1058_cold_2();
      }

      v4 = 1;
    }

    else if (dword_1ED8445B0)
    {
      __53__BWMultiStreamCameraSourceNode__bringStreamUpToDate__block_invoke_1058_cold_1();
      v4 = 0;
    }

    *(v2 + 12305) = v4;
    [(BWMultiStreamCameraSourceNode *)v2 updateMLVNREnabledByThermalPressureOrGameModeEnabled:?];
  }
}

uint64_t __114__BWMultiStreamCameraSourceNode__updateOutputStorageWithSecureMetadataOutputConfiguration_propagateToNodeOutputs___block_invoke(uint64_t a1)
{
  v3 = (a1 + 40);
  result = *(a1 + 40);
  v4 = *(result + 16);
  if (*(result + 9) != 1)
  {
    return __114__BWMultiStreamCameraSourceNode__updateOutputStorageWithSecureMetadataOutputConfiguration_propagateToNodeOutputs___block_invoke_cold_1(result, a1, *(result + 16), v3);
  }

  *(*(a1 + 32) + 12144) = 0;
  if (*(a1 + 52) == 1)
  {
    result = [v4 liveFormat];
    if (!result)
    {
      result = [v4 makeConfiguredFormatLive];
    }

    v5 = *v3;
    if ((*(*v3 + 8) & 1) == 0)
    {
      result = [(BWMultiStreamCameraSourceNode *)*(a1 + 32) _createAndStartFrameCounterForOutputIndexIfNecessary:?];
      v5 = *(a1 + 40);
    }

    *(v5 + 8) = 1;
  }

  return result;
}

- (void)setPreviewShift:(CGPoint)a3 previewScaleFactor:(float)a4 previewShiftAtBaseZoom:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v8 = a3.y;
  v9 = a3.x;
  if ([(BWFigVideoCaptureDevice *)self->_captureDevice overCaptureEnabled])
  {

    [(BWMultiStreamCameraSourceNode *)self _setPreviewShift:v9 previewScaleFactor:v8 previewShiftAtBaseZoom:a4 ispAppliedZoomFactorForCaptureStream:x, y, 1.0];
  }
}

uint64_t __69__BWMultiStreamCameraSourceNode_setPowerOptimizedVISOverscanEnabled___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((*(result + 11800) & 1) == 0)
  {
    return [(BWMultiStreamCameraSourceNode *)result _updateStreamOutputConfigurationsWithPowerOptimizedVISOverscanEnabled:?];
  }

  return result;
}

- (int)allocateOrReuseBufferPoolsFromSourceNode:(id)a3
{
  v3 = self;
  [(BWMultiStreamCameraSourceNode *)self _markPrimaryStreamingOutput];
  v215[0] = [(BWMultiStreamCameraSourceNode *)v3 _bringStreamUpToDate];
  if (v215[0])
  {
    [BWMultiStreamCameraSourceNode allocateOrReuseBufferPoolsFromSourceNode:];
    return v215[0];
  }

  v172 = [MEMORY[0x1E695DF90] dictionary];
  v4 = 144;
  v5 = *off_1E798C280;
  v186 = [(BWFigCaptureStream *)v3->_stream getProperty:*off_1E798C280 error:v215];
  if (v215[0])
  {
    [BWMultiStreamCameraSourceNode allocateOrReuseBufferPoolsFromSourceNode:];
    return v215[0];
  }

  outputsStorage = v3->_outputsStorage;
  v215[0] = [(BWMemoryPool *)[(BWNodeOutput *)v3->_outputsStorage[0].nodeOutput memoryPool] enableForCaptureStream:v3->_stream];
  if (v215[0])
  {
    [BWMultiStreamCameraSourceNode allocateOrReuseBufferPoolsFromSourceNode:];
    return v215[0];
  }

  v7 = 360;
  if ([(BWMultiStreamCameraSourceNodeConfiguration *)v3->_configuration usesFirmwareStillImageOutput])
  {
    [BWMultiStreamCameraSourceNode allocateOrReuseBufferPoolsFromSourceNode:v3];
  }

  v8 = 0;
  v9 = 0;
  v182 = *off_1E798C9C8;
  v181 = *off_1E798CA10;
  v183 = *off_1E798C9B8;
  v168 = *off_1E798AF10;
  v165 = *off_1E798AFE0;
  v167 = *off_1E798AF30;
  v164 = *off_1E798AFF0;
  v163 = *MEMORY[0x1E6966130];
  v161 = *off_1E798CA18;
  v162 = *off_1E798CA88;
  v157 = *off_1E798AF50;
  v158 = *off_1E798AED8;
  v156 = *off_1E798AF20;
  v155 = *off_1E798AFB8;
  v154 = *off_1E798AF40;
  v170 = v3->_outputsStorage;
  while (1)
  {
    v10 = &outputsStorage[v8];
    internalPixelBufferPool = v10->internalPixelBufferPool;
    if (internalPixelBufferPool)
    {

      v10->internalPixelBufferPool = 0;
    }

    if (!v10->enabled)
    {
      goto LABEL_10;
    }

    v171 = v8;
    v188 = mscsn_streamOutputIDForOutputIndex(v8);
    [BWMultiStreamCameraSourceNode _computeRetainedBufferCountForOutputStorage:v3];
    v187 = &outputsStorage[v8];
    if (v8 > 8)
    {
      break;
    }

    if (v8 != 5)
    {
      if (v8 == 6)
      {
        goto LABEL_10;
      }

      if (v8 == 7)
      {
        v184 = v9;
        v160 = v5;
        v24 = v4;
        retainedBufferCount = v10->retainedBufferCount;
        nodeOutput = v10->nodeOutput;
        v27 = [objc_msgSend(objc_msgSend(v186 objectForKeyedSubscript:{v188), "objectForKeyedSubscript:", v182), "intValue"}];
        v28 = [(BWNodeOutput *)nodeOutput pointCloudFormat];
        v29 = v10;
        v30 = [BWDataBufferPool alloc];
        v32 = -[BWDataBufferPool initWithFormat:capacity:name:clientProvidesPool:](v30, "initWithFormat:capacity:name:clientProvidesPool:", v28, retainedBufferCount + v27, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@_BufferPool", BWPortTypeToDisplayString(v3->_portType, v31), v188], 0);
        if (!v32)
        {
          [BWMultiStreamCameraSourceNode allocateOrReuseBufferPoolsFromSourceNode:];
          return v215[0];
        }

        v33 = v32;
        v29->bufferPoolOwnedByAnotherNode = 0;
        v29->streamRetainedBufferCount = v27;
        v213 = v183;
        v214 = [(BWDataBufferPool *)v32 cvDataBufferPool];
        [v172 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v214, &v213, 1), v188}];
        v4 = v24;
        if (nodeOutput)
        {
          [(BWNodeOutput *)nodeOutput setNodePreparedDataBufferPool:v33];
        }

        v5 = v160;
        outputsStorage = v170;
        goto LABEL_120;
      }

      goto LABEL_32;
    }

    if (v3->_isInfraredSourceNode)
    {
LABEL_35:
      v175 = v10->retainedBufferCount;
      v34 = v10->nodeOutput;
      v35 = mscsn_metadataOutputKeyForOutputIndex(v8);
      v36 = [v186 objectForKeyedSubscript:v188];
      v177 = v35;
      if (v35)
      {
        v36 = [v36 objectForKeyedSubscript:mscsn_metadataOutputConfigurationKeyForOutputIndex(v8)];
      }

      if (v10->type == 1)
      {
        v37 = v36;
        v38 = [objc_msgSend(v36 objectForKeyedSubscript:{v182), "intValue"}];
        goto LABEL_39;
      }

      v38 = 0;
      v37 = v36;
      if (v10->type == 2 && !v34)
      {
        if (([*(&v3->super.super.super.isa + v7) forceFirmwareStillImageOutputEnabled] & 1) == 0)
        {
          v148 = MEMORY[0x1E695DF30];
          v149 = *MEMORY[0x1E695D930];
          v145 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Internal inconsistency, the stream's still image output is enabled but the node's stillImageOutput is not enabled."];
          v146 = v148;
          v147 = v149;
LABEL_178:
          objc_exception_throw([v146 exceptionWithName:v147 reason:v145 userInfo:0]);
        }

        if ([*(&v3->super.super.super.isa + v7) dynamicAspectRatioEnabled])
        {
          v38 = 0;
          goto LABEL_39;
        }

LABEL_53:
        v8 = v171;
        goto LABEL_10;
      }

LABEL_39:
      v184 = v9;
      v179 = v34;
      if (!a3)
      {
        goto LABEL_77;
      }

      if (!v3->_shareStreamingBufferPools)
      {
        goto LABEL_43;
      }

      if (v34 == v3->_previewOutput)
      {
        v39 = [a3 previewOutput];
      }

      else if (v34 == v3->_videoCaptureOutput)
      {
        v39 = [a3 videoCaptureOutput];
      }

      else
      {
LABEL_43:
        if (v34 != v3->_stillImageOutput)
        {
          if (v3->_sharePreLTMThumbnailBufferPools && v34 == v3->_preLTMThumbnailOutput)
          {
            v39 = [a3 preLTMThumbnailOutput];
            goto LABEL_75;
          }

LABEL_77:
          v75 = [(BWNodeOutput *)v34 videoFormat];
          if (!v75)
          {
            v201 = [(BWMultiStreamCameraSourceNode *)v3 _videoFormatRequirementsForOutputID:v188 configuration:v37];
            v75 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v201 count:1]);
          }

          if (v34 == v3->_videoCaptureOutput && [*(&v3->super.super.super.isa + v7) videoStabilizationTypeISPMeshEnabled])
          {
            v73 = v5;
            v76 = [*(&v3->super.super.super.isa + v7) maxFrameRate];
            v152 = v152 & 0xFFFFFFFF00000000 | v77;
            if (FigCaptureFrameRateAsInt(v76, v152) <= 119)
            {
              v78 = 250.0;
            }

            else
            {
              v78 = 125.0;
            }

            v79 = [*(&v3->super.super.super.isa + v7) maxFrameRate];
            v151 = v151 & 0xFFFFFFFF00000000 | v80;
            v175 += llroundf((v78 * FigCaptureFrameRateAsFloat(v79, v151)) / 1000.0);
          }

          else
          {
            v73 = v5;
          }

          v81 = v38;
          v82 = v175 + v38;
          v83 = [BWPixelBufferPool alloc];
          v84 = MEMORY[0x1E696AEC0];
          v86 = BWPortTypeToDisplayString(v3->_portType, v85);
          v87 = v188;
          if (v177)
          {
            v87 = v177;
          }

          v88 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:](v83, "initWithVideoFormat:capacity:name:memoryPool:", v75, v82, [v84 stringWithFormat:@"%@_%@_BufferPool", v86, v87], -[BWNodeOutput memoryPool](v179, "memoryPool"));
          if (!v88)
          {
            [BWMultiStreamCameraSourceNode allocateOrReuseBufferPoolsFromSourceNode:];
            return v215[0];
          }

          v72 = v88;
          v74 = 0;
          v10 = v187;
          v38 = v81;
LABEL_90:
          v10->streamRetainedBufferCount = v38;
          v10->bufferPoolOwnedByAnotherNode = v74;
          v89 = [objc_msgSend(v37 objectForKeyedSubscript:{v181), "intValue"}];
          v90 = [(__CFDictionary *)CVPixelBufferPoolGetPixelBufferAttributes([(BWPixelBufferPool *)v72 cvPixelBufferPool]) objectForKeyedSubscript:v163];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v91 = [objc_msgSend(v90 "firstObject")];
          }

          else
          {
            v91 = [v90 unsignedIntValue];
          }

          if (v89 != v91)
          {
            v143 = MEMORY[0x1E695DF30];
            v144 = *MEMORY[0x1E695D930];
            v145 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Internal inconsistency, output pixel format (%c%c%c%c) doesn't match the pixelBufferPool's pixel format (%c%c%c%c)", HIBYTE(v89), BYTE2(v89), BYTE1(v89), v89, HIBYTE(v91), BYTE2(v91), BYTE1(v91), v91];
            v146 = v143;
            v147 = v144;
            goto LABEL_178;
          }

          if (v177)
          {
            v92 = v184;
            if (!v184)
            {
              v92 = [MEMORY[0x1E695DF90] dictionary];
              [v172 setObject:v92 forKeyedSubscript:v188];
            }

            v199 = v183;
            v200 = [(BWPixelBufferPool *)v72 cvPixelBufferPool];
            v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v199 count:1];
            v94 = mscsn_metadataOutputConfigurationKeyForOutputIndex(v171);
            v184 = v92;
            v95 = v92;
            v96 = v93;
          }

          else
          {
            v197[0] = v183;
            v97 = [(BWPixelBufferPool *)v72 cvPixelBufferPool];
            v197[1] = v161;
            v198[0] = v97;
            v198[1] = [MEMORY[0x1E696AD98] numberWithInt:v175];
            v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v198 forKeys:v197 count:2];
            v95 = v172;
            v94 = v188;
          }

          [v95 setObject:v96 forKeyedSubscript:v94];
          v5 = v73;
          v98 = v179;
          if (v179 && ![(BWNodeOutput *)v179 providesPixelBufferPool])
          {
            [(BWNodeOutput *)v179 setNodePreparedPixelBufferPool:v72];
          }

          else
          {
            v10->internalPixelBufferPool = v72;
          }

          v99 = [*(&v3->super.super.super.isa + v7) preLTMThumbnailOnPreviewOutputEnabled];
          v100 = v99;
          if (v179 == v3->_previewOutput && (v99 & 1) != 0 || v179 == v3->_videoCaptureOutput && [*(&v3->super.super.super.isa + v7) preLTMThumbnailOnVideoCaptureOutputEnabled])
          {
            v107 = [objc_msgSend(v186 objectForKeyedSubscript:{v162), "objectForKeyedSubscript:", v157}];
            if (v100)
            {
              v108 = [a3 previewOutput];
            }

            else
            {
              v108 = [a3 videoCaptureOutput];
            }

            v118 = [(BWMultiStreamCameraSourceNode *)v3 _allocateOrReuseBufferPoolsFromSourceNodeOutput:v108 forAttachedMedia:@"PreLTMThumbnail" onNodeOutput:v179 outputConfiguration:v107 shareBufferPools:v3->_sharePreLTMThumbnailBufferPools];
            if (!v118)
            {
              [BWMultiStreamCameraSourceNode allocateOrReuseBufferPoolsFromSourceNode:];
              return v215[0];
            }

            v119 = v118;
            v120 = v184;
            if (!v184)
            {
              v120 = [MEMORY[0x1E695DF90] dictionary];
              [v172 setObject:v120 forKeyedSubscript:v162];
            }

            v121 = &OBJC_IVAR___BWMultiStreamCameraSourceNode__videoCaptureStreamOutputID;
            if (v100)
            {
              v121 = &OBJC_IVAR___BWMultiStreamCameraSourceNode__previewStreamOutputID;
            }

            v122 = *(&v3->super.super.super.isa + *v121);
            v195[0] = v183;
            v123 = [(BWPixelBufferPool *)v119 cvPixelBufferPool];
            v195[1] = v158;
            v196[0] = v123;
            v196[1] = v122;
            v184 = v120;
            [v120 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v196, v195, 2), v157}];
            v5 = v73;
            v98 = v179;
          }

          v101 = [*(&v3->super.super.super.isa + v7) ltmThumbnailOnPreviewOutputEnabled];
          v102 = v101;
          if (v98 == v3->_previewOutput && (v101 & 1) != 0 || v98 == v3->_videoCaptureOutput && [*(&v3->super.super.super.isa + v7) ltmThumbnailOnVideoCaptureOutputEnabled])
          {
            v109 = v5;
            v110 = [objc_msgSend(v186 objectForKeyedSubscript:{v162), "objectForKeyedSubscript:", v156}];
            if (v102)
            {
              v111 = [a3 previewOutput];
            }

            else
            {
              v111 = [a3 videoCaptureOutput];
            }

            v124 = [(BWMultiStreamCameraSourceNode *)v3 _allocateOrReuseBufferPoolsFromSourceNodeOutput:v111 forAttachedMedia:@"LTMThumbnail" onNodeOutput:v98 outputConfiguration:v110 shareBufferPools:0];
            if (!v124)
            {
              [BWMultiStreamCameraSourceNode allocateOrReuseBufferPoolsFromSourceNode:];
              return v215[0];
            }

            v125 = v124;
            v126 = v184;
            if (!v184)
            {
              v126 = [MEMORY[0x1E695DF90] dictionary];
              [v172 setObject:v126 forKeyedSubscript:v162];
            }

            v127 = &OBJC_IVAR___BWMultiStreamCameraSourceNode__videoCaptureStreamOutputID;
            if (v102)
            {
              v127 = &OBJC_IVAR___BWMultiStreamCameraSourceNode__previewStreamOutputID;
            }

            v128 = *(&v3->super.super.super.isa + *v127);
            v193[0] = v183;
            v129 = [(BWPixelBufferPool *)v125 cvPixelBufferPool];
            v193[1] = v158;
            v194[0] = v129;
            v194[1] = v128;
            v184 = v126;
            [v126 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v194, v193, 2), v156}];
            v5 = v109;
            v98 = v179;
          }

          v103 = [*(&v3->super.super.super.isa + v7) weightSegmentMapOnPreviewOutputEnabled];
          v104 = v103;
          if (v98 == v3->_previewOutput && (v103 & 1) != 0 || v98 == v3->_videoCaptureOutput && [*(&v3->super.super.super.isa + v7) weightSegmentMapOnVideoCaptureOutputEnabled])
          {
            v112 = v5;
            v113 = [objc_msgSend(v186 objectForKeyedSubscript:{v162), "objectForKeyedSubscript:", v155}];
            if (v104)
            {
              v114 = [a3 previewOutput];
            }

            else
            {
              v114 = [a3 videoCaptureOutput];
            }

            v130 = [(BWMultiStreamCameraSourceNode *)v3 _allocateOrReuseBufferPoolsFromSourceNodeOutput:v114 forAttachedMedia:0x1F21AB1F0 onNodeOutput:v98 outputConfiguration:v113 shareBufferPools:0];
            if (!v130)
            {
              [BWMultiStreamCameraSourceNode allocateOrReuseBufferPoolsFromSourceNode:];
              return v215[0];
            }

            v131 = v130;
            v132 = v184;
            if (!v184)
            {
              v132 = [MEMORY[0x1E695DF90] dictionary];
              [v172 setObject:v132 forKeyedSubscript:v162];
            }

            v133 = &OBJC_IVAR___BWMultiStreamCameraSourceNode__videoCaptureStreamOutputID;
            if (v104)
            {
              v133 = &OBJC_IVAR___BWMultiStreamCameraSourceNode__previewStreamOutputID;
            }

            v134 = *(&v3->super.super.super.isa + *v133);
            v191[0] = v183;
            v135 = [(BWPixelBufferPool *)v131 cvPixelBufferPool];
            v191[1] = v158;
            v192[0] = v135;
            v192[1] = v134;
            v184 = v132;
            [v132 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v192, v191, 2), v155}];
            v5 = v112;
            v98 = v179;
          }

          v105 = [*(&v3->super.super.super.isa + v7) postColorProcessingThumbnailOnPreviewOutputEnabled];
          v106 = v105;
          if ((v98 != v3->_previewOutput || (v105 & 1) == 0) && (v98 != v3->_videoCaptureOutput || ![*(&v3->super.super.super.isa + v7) postColorProcessingThumbnailOnVideoCaptureOutputEnabled]))
          {
            outputsStorage = v170;
LABEL_120:
            v8 = v171;
            v9 = v184;
            goto LABEL_10;
          }

          v115 = v5;
          v116 = [objc_msgSend(v186 objectForKeyedSubscript:{v162), "objectForKeyedSubscript:", v154}];
          if (v106)
          {
            v117 = [a3 previewOutput];
          }

          else
          {
            v117 = [a3 videoCaptureOutput];
          }

          v136 = [(BWMultiStreamCameraSourceNode *)v3 _allocateOrReuseBufferPoolsFromSourceNodeOutput:v117 forAttachedMedia:0x1F21AB1D0 onNodeOutput:v98 outputConfiguration:v116 shareBufferPools:v3->_sharePostColorProcessingThumbnailBufferPools];
          if (!v136)
          {
            [BWMultiStreamCameraSourceNode allocateOrReuseBufferPoolsFromSourceNode:];
            return v215[0];
          }

          v137 = v136;
          v9 = v184;
          if (!v184)
          {
            v9 = [MEMORY[0x1E695DF90] dictionary];
            [v172 setObject:v9 forKeyedSubscript:v162];
          }

          v138 = &OBJC_IVAR___BWMultiStreamCameraSourceNode__videoCaptureStreamOutputID;
          if (v106)
          {
            v138 = &OBJC_IVAR___BWMultiStreamCameraSourceNode__previewStreamOutputID;
          }

          v139 = *(&v3->super.super.super.isa + *v138);
          v189[0] = v183;
          v140 = [(BWPixelBufferPool *)v137 cvPixelBufferPool];
          v189[1] = v158;
          v190[0] = v140;
          v190[1] = v139;
          [v9 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v190, v189, 2), v154}];
          v5 = v115;
LABEL_157:
          outputsStorage = v170;
          goto LABEL_53;
        }

        v39 = [a3 stillImageOutput];
      }

LABEL_75:
      v71 = [v39 preparedPixelBufferPool];
      if (!v71)
      {
        goto LABEL_77;
      }

      v72 = v71;
      v73 = v5;
      [(BWPixelBufferPool *)v71 setCapacity:[(BWPixelBufferPool *)v71 capacity]+ v38];
      v74 = 1;
      goto LABEL_90;
    }

LABEL_10:
    if (++v8 == 22)
    {
      v141 = [*(&v3->super.super.super.isa + v4) setProperty:v5 value:v172];
      v215[0] = v141;
      if (v141)
      {
        [BWMultiStreamCameraSourceNode allocateOrReuseBufferPoolsFromSourceNode:];
      }

      return v215[0];
    }
  }

  if (v8 <= 10)
  {
    if (v8 == 9)
    {
      v40 = v9;
      v169 = v7;
      v41 = v5;
      v42 = v4;
      v43 = v10->retainedBufferCount;
      v44 = v10->nodeOutput;
      v45 = [objc_msgSend(v186 objectForKeyedSubscript:{v188), "objectForKeyedSubscript:", v167}];
      v46 = [objc_msgSend(v45 objectForKeyedSubscript:{v182), "intValue"}];
      LODWORD(v45) = [objc_msgSend(v45 objectForKeyedSubscript:{v181), "intValue"}];
      v47 = [(BWNodeOutput *)v44 videoFormat];
      if (v45 != [(BWVideoFormat *)v47 pixelFormat])
      {
        [BWMultiStreamCameraSourceNode allocateOrReuseBufferPoolsFromSourceNode:];
        return v215[0];
      }

      v48 = v43 + v46;
      v49 = [BWPixelBufferPool alloc];
      v51 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:](v49, "initWithVideoFormat:capacity:name:memoryPool:", v47, v48, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@_BufferPool", BWPortTypeToDisplayString(v3->_portType, v50), v164], -[BWNodeOutput memoryPool](v44, "memoryPool"));
      if (!v51)
      {
        [BWMultiStreamCameraSourceNode allocateOrReuseBufferPoolsFromSourceNode:];
        return v215[0];
      }

      v52 = v51;
      v187->streamRetainedBufferCount = v46;
      v187->bufferPoolOwnedByAnotherNode = 0;
      v4 = v42;
      v9 = v40;
      if (!v40)
      {
        v9 = [MEMORY[0x1E695DF90] dictionary];
        [v172 setObject:v9 forKeyedSubscript:v188];
      }

      v211 = v183;
      v212 = [v52 cvPixelBufferPool];
      [v9 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v212, &v211, 1), v167}];
      [(BWNodeOutput *)v44 setNodePreparedPixelBufferPool:v52];

      v5 = v41;
      goto LABEL_52;
    }

    if (v8 == 10)
    {
      v12 = v9;
      v13 = v10->retainedBufferCount;
      v169 = v7;
      v159 = v5;
      v14 = v4;
      if ([*(&v3->super.super.super.isa + v7) lightSourceMaskOutputEnabled])
      {
        v13 = outputsStorage[9].retainedBufferCount;
      }

      v15 = v10->nodeOutput;
      v16 = v10;
      v17 = [objc_msgSend(objc_msgSend(objc_msgSend(v186 objectForKeyedSubscript:{v188), "objectForKeyedSubscript:", v168), "objectForKeyedSubscript:", v182), "intValue"}];
      v18 = [(BWNodeOutput *)v15 pointCloudFormat];
      v19 = v17 + v13;
      v20 = [BWDataBufferPool alloc];
      v22 = -[BWDataBufferPool initWithFormat:capacity:name:clientProvidesPool:](v20, "initWithFormat:capacity:name:clientProvidesPool:", v18, v19, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@_BufferPool", BWPortTypeToDisplayString(v3->_portType, v21), v165], 0);
      if (!v22)
      {
        [BWMultiStreamCameraSourceNode allocateOrReuseBufferPoolsFromSourceNode:];
        return v215[0];
      }

      v23 = v22;
      v16->streamRetainedBufferCount = v17;
      v16->bufferPoolOwnedByAnotherNode = 0;
      v4 = v14;
      v9 = v12;
      if (!v12)
      {
        v9 = [MEMORY[0x1E695DF90] dictionary];
        [v172 setObject:v9 forKeyedSubscript:v188];
      }

      v209 = v183;
      v210 = [v23 cvDataBufferPool];
      [v9 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v210, &v209, 1), v168}];
      [(BWNodeOutput *)v15 setNodePreparedDataBufferPool:v23];

LABEL_22:
      v5 = v159;
LABEL_52:
      v7 = v169;
      outputsStorage = v170;
      goto LABEL_53;
    }

LABEL_32:
    if ((v8 & 0x1C | 2) != 0xE)
    {
      goto LABEL_35;
    }

    goto LABEL_10;
  }

  if (v8 != 11)
  {
    if (v8 == 16)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

  v178 = v10->retainedBufferCount;
  v180 = v10->nodeOutput;
  v205 = 0u;
  v206 = 0u;
  v207 = 0u;
  v208 = 0u;
  obj = [*(&v3->super.super.super.isa + v7) enabledSemanticMaskTypes];
  v185 = [obj countByEnumeratingWithState:&v205 objects:v204 count:16];
  if (!v185)
  {
    goto LABEL_157;
  }

  v169 = v7;
  v159 = v5;
  v153 = v4;
  v174 = v3;
  v176 = *v206;
  v53 = v188;
  v54 = v180;
LABEL_56:
  v55 = 0;
  while (1)
  {
    if (*v206 != v176)
    {
      objc_enumerationMutation(obj);
    }

    v56 = *(*(&v205 + 1) + 8 * v55);
    v57 = mscsn_semanticMaskOutputConfigurationKeyForSemanticMaskType(v56);
    if (!v57)
    {
      [BWMultiStreamCameraSourceNode allocateOrReuseBufferPoolsFromSourceNode:];
      return v215[0];
    }

    v58 = v57;
    v59 = v9;
    v60 = [objc_msgSend(v186 objectForKeyedSubscript:{v53), "objectForKeyedSubscript:", v57}];
    v61 = [objc_msgSend(v60 objectForKeyedSubscript:{v182), "intValue"}];
    v62 = [objc_msgSend(v60 objectForKeyedSubscript:{v181), "intValue"}];
    v63 = [(BWNodeOutput *)v54 mediaPropertiesForAttachedMediaKey:v56];
    v64 = [v63 resolvedVideoFormat];
    if (v62 != [v64 pixelFormat])
    {
      [BWMultiStreamCameraSourceNode allocateOrReuseBufferPoolsFromSourceNode:];
      return v215[0];
    }

    v65 = [BWPixelBufferPool alloc];
    v66 = MEMORY[0x1E696AEC0];
    v150 = BWPortTypeToDisplayString(v174->_portType, v67);
    v68 = v66;
    v54 = v180;
    v69 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:](v65, "initWithVideoFormat:capacity:name:memoryPool:", v64, v178 + v61, [v68 stringWithFormat:@"%@_%@_BufferPool", v150, v56], -[BWNodeOutput memoryPool](v180, "memoryPool"));
    if (!v69)
    {
      break;
    }

    v70 = v69;
    v53 = v188;
    v187->streamRetainedBufferCount = v61;
    v187->bufferPoolOwnedByAnotherNode = 0;
    v9 = v59;
    if (!v59)
    {
      v9 = [MEMORY[0x1E695DF90] dictionary];
      [v172 setObject:v9 forKeyedSubscript:v188];
    }

    v202 = v183;
    v203 = [v70 cvPixelBufferPool];
    [v9 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v203, &v202, 1), v58}];
    [v63 setNodePreparedPixelBufferPool:v70];

    if (v185 == ++v55)
    {
      v185 = [obj countByEnumeratingWithState:&v205 objects:v204 count:16];
      if (!v185)
      {
        v3 = v174;
        v4 = v153;
        goto LABEL_22;
      }

      goto LABEL_56;
    }
  }

  [BWMultiStreamCameraSourceNode allocateOrReuseBufferPoolsFromSourceNode:];
  return v215[0];
}

uint64_t __72__BWMultiStreamCameraSourceNode_updateFormatRequirementsFromSourceNode___block_invoke(uint64_t a1, void *a2)
{
  if (FigCapturePixelFormatTileAlignment([a2 intValue]) >> 32)
  {
    if (*(a1 + 32))
    {
      v3 = 0;
      return v3 & 1;
    }

    if (*(a1 + 40))
    {
      v3 = *(a1 + 48);
      return v3 & 1;
    }
  }

  v3 = 1;
  return v3 & 1;
}

- (void)didSelectFormat:(id)a3 forOutput:(id)a4
{
  if ([(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration stillImageOutputEnabled]&& (self->_videoCaptureOutput == a4 || self->_stillImageOutput == a4))
  {
    v6 = [objc_msgSend(a4 "videoFormat")];
    p_nodeOutput = &self->_outputsStorage[0].nodeOutput;
    for (i = 22; i; --i)
    {
      if (*(p_nodeOutput - 12))
      {
        v9 = *p_nodeOutput;
        if (*p_nodeOutput == a4)
        {
          v11 = [(BWNodeOutput *)self->_stillImageOutput formatRequirements];
          v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
          -[BWFormatRequirements setSupportedPixelFormats:](v11, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1]);
          return;
        }

        if (v9)
        {
          v10 = self->_stillImageOutput == a4;
        }

        else
        {
          v10 = 0;
        }

        if (v10 && ![(BWNodeOutput *)v9 videoFormat])
        {
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Internal inconsistency, still image output's format was resolved before its driving streaming output's format was resolved"), 0}]);
        }
      }

      p_nodeOutput += 64;
    }
  }
}

uint64_t __114__BWMultiStreamCameraSourceNode__prefetchPixelBufferForOutputStorage_numberOfBuffersToFetch_lastEmittedSurfaceID___block_invoke(uint64_t result)
{
  if (*(*(result + 40) + 496) == 1)
  {
    v1 = result;
    result = [*(result + 32) prefetch:*(v1 + 48) lastEmittedSurfaceID:*(v1 + 52)];
    if (result)
    {
      *(*(v1 + 40) + 495) = 0;
    }
  }

  return result;
}

- (void)startIncrementalPrefetchingOfSourcePoolsIfNecessary
{
  p_pixelFormatIsTenBit = &self->_outputsStorage[0].pixelFormatIsTenBit;
  v3 = 22;
  do
  {
    *p_pixelFormatIsTenBit = *(p_pixelFormatIsTenBit - 1);
    p_pixelFormatIsTenBit += 512;
    --v3;
  }

  while (v3);
}

- (void)_addPixelBufferHandler:(void *)a3 videoOutputID:
{
  if (a1)
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3052000000;
    v11[3] = __Block_byref_object_copy__34;
    v11[4] = __Block_byref_object_dispose__34;
    v11[5] = a1;
    v5 = mscsn_streamOutputIndexForOutputID(a3);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__BWMultiStreamCameraSourceNode__addPixelBufferHandler_videoOutputID___block_invoke;
    v9[3] = &unk_1E799A230;
    v9[4] = v11;
    v10 = v5;
    v6 = [v9 copy];
    v7 = *off_1E798CA70;
    v8 = v6;
    [a2 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v8, &v7, 1), a3}];

    _Block_object_dispose(v11, 8);
  }
}

void __70__BWMultiStreamCameraSourceNode__addPixelBufferHandler_videoOutputID___block_invoke(uint64_t a1, void *a2, CMTime *a3)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = *(a1 + 40);
  v6 = *a3;
  multiStreamCameraSourceNode_sendBufferToBufferServicingThread(v4, v5, a2, &v6);
}

- (void)_addDataBufferHandler:(void *)a3 videoOutputID:
{
  if (a1)
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3052000000;
    v11[3] = __Block_byref_object_copy__34;
    v11[4] = __Block_byref_object_dispose__34;
    v11[5] = a1;
    v5 = mscsn_streamOutputIndexForOutputID(a3);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69__BWMultiStreamCameraSourceNode__addDataBufferHandler_videoOutputID___block_invoke;
    v9[3] = &unk_1E799A230;
    v9[4] = v11;
    v10 = v5;
    v6 = [v9 copy];
    v7 = *off_1E798CA58;
    v8 = v6;
    [a2 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v8, &v7, 1), a3}];

    _Block_object_dispose(v11, 8);
  }
}

void __69__BWMultiStreamCameraSourceNode__addDataBufferHandler_videoOutputID___block_invoke(uint64_t a1, void *a2, CMTime *a3)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = *(a1 + 40);
  v6 = *a3;
  multiStreamCameraSourceNode_sendBufferToBufferServicingThread(v4, v5, a2, &v6);
}

- (void)_addBlockBufferHandler:(void *)a3 videoOutputID:
{
  if (a1)
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3052000000;
    v11[3] = __Block_byref_object_copy__34;
    v11[4] = __Block_byref_object_dispose__34;
    v11[5] = a1;
    v5 = mscsn_streamOutputIndexForOutputID(a3);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__BWMultiStreamCameraSourceNode__addBlockBufferHandler_videoOutputID___block_invoke;
    v9[3] = &unk_1E799A258;
    v9[4] = v11;
    v10 = v5;
    v6 = [v9 copy];
    v7 = *off_1E798CA50;
    v8 = v6;
    [a2 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v8, &v7, 1), a3}];

    _Block_object_dispose(v11, 8);
  }
}

void __70__BWMultiStreamCameraSourceNode__addBlockBufferHandler_videoOutputID___block_invoke(uint64_t a1, void *a2, CMTime *a3)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = *(a1 + 40);
  v6 = *a3;
  multiStreamCameraSourceNode_sendBufferToBufferServicingThread(v4, v5, a2, &v6);
}

- (void)_addMetadataOutputHandler:(uint64_t)a1
{
  if (a1)
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x3052000000;
    v9[3] = __Block_byref_object_copy__34;
    v9[4] = __Block_byref_object_dispose__34;
    v9[5] = a1;
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3052000000;
    v8[3] = __Block_byref_object_copy__34;
    v3 = *(a1 + 216);
    v8[4] = __Block_byref_object_dispose__34;
    v8[5] = v3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__BWMultiStreamCameraSourceNode__addMetadataOutputHandler___block_invoke;
    v7[3] = &unk_1E799A280;
    v7[4] = v8;
    v7[5] = v9;
    v4 = [v7 copy];
    v5 = *off_1E798CA60;
    v6 = v4;
    [a2 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v6, &v5, 1), *off_1E798CA88}];

    _Block_object_dispose(v8, 8);
    _Block_object_dispose(v9, 8);
  }
}

void __59__BWMultiStreamCameraSourceNode__addMetadataOutputHandler___block_invoke(uint64_t a1, void *a2, CMTime *a3)
{
  v6 = *off_1E798AFE0;
  v55[0] = *off_1E798AFF0;
  v55[1] = v6;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  v7 = *off_1E798B008;
  v8 = *off_1E798B010;
  v54[0] = *off_1E798B008;
  v54[1] = v8;
  v48 = v8;
  v46 = *off_1E798B018;
  v47 = *off_1E798B030;
  v54[2] = *off_1E798B030;
  v54[3] = v46;
  v43 = *off_1E798B028;
  v54[4] = *off_1E798B028;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:5];
  v10 = [a2 allKeys];
  v11 = *off_1E798B020;
  v39 = [a2 objectForKeyedSubscript:*off_1E798B020];
  [v39 setObject:*(*(*(a1 + 32) + 8) + 40) forKeyedSubscript:*off_1E798B540];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v12 = [a2 countByEnumeratingWithState:&v50 objects:v49 count:16];
  if (v12)
  {
    v13 = v12;
    v42 = 0;
    v44 = *v51;
    v37 = a1;
    v38 = a3;
    v35 = v11;
    v36 = a2;
    while (1)
    {
      v14 = 0;
      v41 = v13;
      do
      {
        if (*v51 != v44)
        {
          objc_enumerationMutation(a2);
        }

        v15 = *(*(&v50 + 1) + 8 * v14);
        v45 = [a2 objectForKeyedSubscript:{v15, v35, v36}];
        if (([v15 isEqualToString:v11] & 1) == 0)
        {
          if ([objc_msgSend(*(*(*(*(a1 + 40) + 8) + 40) + 360) "enabledSemanticMaskTypes")])
          {
            v16 = v42;
            if (!v42)
            {
              v16 = [MEMORY[0x1E695DF90] dictionary];
            }

            v42 = v16;
            [v16 setObject:objc_msgSend(a2 forKeyedSubscript:{"objectForKeyedSubscript:", v15), v15}];
LABEL_11:
            v13 = v41;
            goto LABEL_34;
          }

          if ([v40 containsObject:v15])
          {
            v17 = mscsn_outputIndexForMetadataOutputKey(v15);
            v18 = *(*(*(a1 + 40) + 8) + 40);
            v56[0] = *a3;
            multiStreamCameraSourceNode_sendBufferToBufferServicingThread(v18, v17, v45, v56);
          }

          else if ([v9 containsObject:v15])
          {
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v19 = [v10 countByEnumeratingWithState:&v57 objects:v56 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = 0;
              v22 = *v58;
              do
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v58 != v22)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v24 = *(*(&v57 + 1) + 8 * i);
                  if (([v24 isEqualToString:v15] & 1) == 0 && objc_msgSend(v9, "containsObject:", v24))
                  {
                    if (!v21)
                    {
                      v21 = [MEMORY[0x1E695DF70] array];
                    }

                    v25 = [v24 isEqualToString:v7];
                    v26 = MEMORY[0x1E6960388];
                    if (v25 & 1) != 0 || (v27 = [v24 isEqualToString:v48], v26 = off_1E798D128, (v27) || (v28 = objc_msgSend(v24, "isEqualToString:", v47), v26 = MEMORY[0x1E69629E8], (v28) || (v29 = objc_msgSend(v24, "isEqualToString:", v46), v26 = off_1E798D130, (v29) || (v30 = objc_msgSend(v24, "isEqualToString:", v43), v26 = off_1E798D140, v30))
                    {
                      if (*v26)
                      {
                        [v21 addObject:?];
                      }
                    }
                  }
                }

                v20 = [v10 countByEnumeratingWithState:&v57 objects:v56 count:16];
              }

              while (v20);
            }

            else
            {
              v21 = 0;
            }

            if ([v21 count])
            {
              [v45 setObject:v21 forKeyedSubscript:@"BWCorrespondingMetadataIdentifiers"];
            }

            [v45 setObject:v39 forKeyedSubscript:@"BWFrameMetadata"];
            v31 = mscsn_outputIndexForMetadataOutputKey(v15);
            a1 = v37;
            a3 = v38;
            v32 = *(*(*(v37 + 40) + 8) + 40);
            v56[0] = *v38;
            multiStreamCameraSourceNode_sendBufferToBufferServicingThread(v32, v31, v45, v56);
            v11 = v35;
            a2 = v36;
            goto LABEL_11;
          }
        }

LABEL_34:
        ++v14;
      }

      while (v14 != v13);
      v33 = [a2 countByEnumeratingWithState:&v50 objects:v49 count:16];
      v13 = v33;
      if (!v33)
      {
        goto LABEL_43;
      }
    }
  }

  v42 = 0;
LABEL_43:
  if ([v42 count])
  {
    v34 = *(*(*(a1 + 40) + 8) + 40);
    v56[0] = *a3;
    multiStreamCameraSourceNode_sendBufferToBufferServicingThread(v34, 11, v42, v56);
  }
}

const void *__58__BWMultiStreamCameraSourceNode__flushOutRemainingBuffers__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32) + 432;
  for (i = *(a1 + 40); ; i = *(a1 + 40))
  {
    result = CMSimpleQueueDequeue(*(v2 + (i << 9) + 24));
    if (!result)
    {
      break;
    }

    CFRelease(result);
    v2 = *(a1 + 32) + 432;
  }

  return result;
}

- (void)requestedZoomFactorChanged:(float)a3
{
  if ([(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration deferStreamingOutputsEnable])
  {
    [(BWFigVideoCaptureStream *)[(BWFigVideoCaptureDevice *)self->_captureDevice captureStream] baseZoomFactor];
    if (v5 != a3)
    {
      [BWMultiStreamCameraSourceNode requestedZoomFactorChanged:];
    }
  }
}

- (id)updateMLVNREnabledByThermalPressureOrGameModeEnabled:(id *)result
{
  if (result)
  {
    v3 = result;
    result = [result[45] machineLearningVideoNoiseReductionSupported];
    if (result)
    {
      if (v3[1538])
      {
        v4 = 0;
      }

      else
      {
        v4 = *(v3 + 12305) ^ 1;
      }

      v5 = v4 & 1;
      v6 = *(v3 + 12306) == v5 && a2 == 0;
      if (!v6)
      {
        if (dword_1ED8445B0)
        {
          LODWORD(v31[0]) = 0;
          LOBYTE(v30[0]) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_129_3();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v27 = v3[18];
        result = [v27 getProperty:*off_1E798C078 error:0];
        if (!result)
        {
          goto LABEL_45;
        }

        result = [FigCaptureCameraParameters sensorIDStringFromModuleInfo:result];
        if (!result)
        {
          goto LABEL_45;
        }

        v10 = result;
        [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters cameraTuningParameters];
        [v27 portType];
        v11 = [objc_msgSend(OUTLINED_FUNCTION_7() "objectForKeyedSubscript:{"objectForKeyedSubscript:", v10}")];
        v26 = *off_1E798BFD8;
        result = [v11 objectForKeyedSubscript:?];
        if (!result)
        {
          goto LABEL_45;
        }

        v12 = result;
        v13 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
        v14 = *off_1E798AE90;
        if ([OUTLINED_FUNCTION_98_7() objectForKeyedSubscript:?] && (v15 = objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_98_7(), "objectForKeyedSubscript:"), "intValue"), v15 != 2))
        {
          v22 = off_1E798AEB0;
          if (v15 != 1)
          {
            v22 = off_1E798AEA8;
          }

          [v13 setObject:*v22 forKeyedSubscript:v14];
          v21 = v26;
        }

        else
        {
          [v13 setObject:*off_1E798AEA0 forKeyedSubscript:v14];
          if (v5)
          {
            v16 = [v12 objectForKeyedSubscript:*off_1E798B9A8];
          }

          else
          {
            v17 = *off_1E798B9C0;
            v30[0] = *off_1E798B9B8;
            v30[1] = v17;
            v31[0] = &unk_1F22460C0;
            v31[1] = &unk_1F22460C0;
            v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
          }

          result = [v16 count];
          if (result != 2 || (([OUTLINED_FUNCTION_99_4() setObject:? forKeyedSubscript:?], !v5) ? (v19 = *off_1E798B9C0, v28[0] = *off_1E798B9B8, v28[1] = v19, v29[0] = &unk_1F22460C0, v29[1] = &unk_1F22460C0, v18 = objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v29, v28, 2)) : (v18 = objc_msgSend(v12, "objectForKeyedSubscript:", *off_1E798B9B0)), result = objc_msgSend(v18, "count"), result != 2))
          {
LABEL_45:
            *(v3 + 12306) = v5;
            return result;
          }

          [OUTLINED_FUNCTION_99_4() setObject:? forKeyedSubscript:?];
          if (v5 && [OUTLINED_FUNCTION_98_7() objectForKeyedSubscript:?])
          {
            v20 = [objc_msgSend(OUTLINED_FUNCTION_98_7() "objectForKeyedSubscript:"intValue"")];
          }

          else
          {
            v20 = 1;
          }

          v21 = v26;
          [MEMORY[0x1E696AD98] numberWithInt:v20];
          [OUTLINED_FUNCTION_7() setObject:? forKeyedSubscript:?];
        }

        if (dword_1ED8445B0)
        {
          v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_40_7();
          if (v6)
          {
            v25 = v24;
          }

          else
          {
            v25 = 0;
          }

          if (v25)
          {
            OUTLINED_FUNCTION_2_1();
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_56_0();
        }

        result = [v27 setProperty:v21 value:v13];
        goto LABEL_45;
      }

      if (dword_1ED8445B0)
      {
        LODWORD(v31[0]) = 0;
        v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
        if (OUTLINED_FUNCTION_5_2(v9))
        {
          OUTLINED_FUNCTION_2_1();
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_119_3();
        return fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  return result;
}

- (int)configure:(id)a3
{
  self->_configuration = a3;
  [(BWMultiStreamCameraSourceNode *)self _updateBufferPoolSharingProperties];
  [(BWMultiStreamCameraSourceNode *)self _updateDepthSettings];
  if (-[BWMultiStreamCameraSourceNodeConfiguration depthType](self->_configuration, "depthType") - 1 < 2 || ([a3 originalCameraIntrinsicMatrixDeliveryOnPreviewOutputEnabled] & 1) != 0 || (objc_msgSend(a3, "originalCameraIntrinsicMatrixDeliveryOnVideoCaptureOutputEnabled") & 1) != 0 || (objc_msgSend(a3, "originalCameraIntrinsicMatrixDeliveryOnDepthOutputEnabled") & 1) != 0 || (objc_msgSend(a3, "originalCameraIntrinsicMatrixDeliveryOnStillImageOutputEnabled") & 1) != 0 || (objc_msgSend(a3, "cameraIntrinsicMatrixDeliveryOnPreviewOutputEnabled") & 1) != 0 || objc_msgSend(a3, "cameraIntrinsicMatrixDeliveryOnVideoCaptureOutputEnabled"))
  {
    [(BWMultiStreamCameraSourceNode *)self _retrieveCameraCharacterizationDataForCameraIntrinsicMatrixDelivery];
  }

  self->_firmwareStillImageOutputRetainedBufferCountOverride = [a3 firmwareStillImageOutputRetainedBufferCountOverride];
  self->_stillImageOutputSushiRawAttachmentOptionEnabled = [a3 stillImageOutputSushiRawAttachmentOptionEnabled];
  updated = [(BWMultiStreamCameraSourceNode *)self _updateOutputRequirements];
  if (updated || ([(BWMultiStreamCameraSourceNode *)self updateZoomFactorsToNondisruptiveSwitchingFormatIndexMapping], (updated = [(BWMultiStreamCameraSourceNode *)self _updateGDCStrengthAndBaseZoomFactorAfterGDC]) != 0))
  {
    v6 = updated;
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3();
  }

  else
  {
    [(BWFigVideoCaptureStream *)self->_captureStream setBaseZoomFactorOverridesByAspectRatio:[(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration baseZoomFactorOverridesByAspectRatio]];
    [(BWMultiStreamCameraSourceNode *)self _updateDolbyVisionMetadataOutputEnabledConfiguration];
    if ([(BWFigVideoCaptureDevice *)self->_captureDevice adaptiveOverscanEnabled]&& !self->_streamConfigurationQueue)
    {
      self->_streamConfigurationQueue = FigDispatchQueueCreateWithPriority();
    }

    if (self->_bravoShiftRestrictedToHighestNondisruptiveZoomRange)
    {
      return 0;
    }

    else
    {
      [(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration visOverscan];
      v6 = 0;
      v8 = v7 == *MEMORY[0x1E695F060];
      if (v9 != *(MEMORY[0x1E695F060] + 8))
      {
        v8 = 0;
      }

      self->_bravoShiftRestrictedToHighestNondisruptiveZoomRange = v8;
    }
  }

  return v6;
}

- (int)prepareForStillImageCaptureWithFirmwareStillImageOutputRetainedBufferCountOverride:(int)a3 clientBracketCount:(int)a4 enableSushiRawAttachmentOption:(BOOL)a5
{
  v5 = a5;
  if (![(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration stillImageOutputEnabled]|| ![(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration usesFirmwareStillImageOutput])
  {
    if ([(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration stillImageOutputEnabled])
    {
      [(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration usesFirmwareStillImageOutput];
    }

    return 0;
  }

  self->_firmwareStillImageOutputRetainedBufferCountOverride = a3;
  v11 = [(BWMultiStreamCameraSourceNode *)self _firmwareStillImageOutputRetainedBufferCountForClientBracketCount:a4];
  currentFirmwareStillImageOutputRetainedBufferCount = self->_currentFirmwareStillImageOutputRetainedBufferCount;
  stillImageOutputSushiRawAttachmentOptionEnabled = self->_stillImageOutputSushiRawAttachmentOptionEnabled;
  if (v11 == currentFirmwareStillImageOutputRetainedBufferCount && stillImageOutputSushiRawAttachmentOptionEnabled == v5)
  {
    return 0;
  }

  v15 = v11;
  if (![(BWFigVideoCaptureStream *)self->_captureStream started])
  {
    return 0;
  }

  v16 = [MEMORY[0x1E695DF90] dictionary];
  if (v15 != currentFirmwareStillImageOutputRetainedBufferCount)
  {
    [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v15), *off_1E798CA18}];
  }

  if (stillImageOutputSushiRawAttachmentOptionEnabled != v5)
  {
    if (v5 && ![(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration stillImageOutputSushiRawAttachmentOptionSupportEnabled])
    {
      return -12780;
    }

    [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v5), *off_1E798C6D0}];
  }

  stillImageStreamOutputID = self->_stillImageStreamOutputID;
  v18 = v16;
  v9 = -[BWFigCaptureStream setProperty:value:](self->_stream, "setProperty:value:", *off_1E798C280, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&stillImageStreamOutputID count:1]);
  if (v9)
  {
    OUTLINED_FUNCTION_1_8();
    FigDebugAssert3();
  }

  else
  {
    self->_currentFirmwareStillImageOutputRetainedBufferCount = v15;
    self->_stillImageOutputSushiRawAttachmentOptionEnabled = v5;
  }

  return v9;
}

- (uint64_t)_firmwareStillImageOutputRetainedBufferCountForClientBracketCount:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    result = [OUTLINED_FUNCTION_43_15(result) stillImageOutputEnabled];
    if (result)
    {
      result = [OUTLINED_FUNCTION_70_4() usesFirmwareStillImageOutput];
      if (result)
      {
        v4 = *(v3 + 11872);
        if (v4 == -1)
        {
          v5 = [*(v3 + 248) retainedBufferCount];
          result = (a2 + 1);
          if (v5 > result)
          {
            v6 = *(v3 + 248);

            return [v6 retainedBufferCount];
          }
        }

        else if (v4 <= a2 + 1)
        {
          return (a2 + 1);
        }

        else
        {
          return v4;
        }
      }
    }
  }

  return result;
}

- (void)_outputConfigurationForStreamingOutputID:(uint64_t)a1 nodeOutput:
{
  if (a1)
  {
    OUTLINED_FUNCTION_67_8();
    [*(v1 + 360) visOverscan];
    OUTLINED_FUNCTION_2_42();

    [BWMultiStreamCameraSourceNode _outputConfigurationForStreamingOutputID:nodeOutput:visOverscan:];
  }
}

- (BWVideoFormatRequirements)_videoFormatRequirementsForOutputID:(void *)a3 configuration:
{
  if (!a1)
  {
    return 0;
  }

  v6 = objc_alloc_init(BWVideoFormatRequirements);
  if (([a2 isEqualToString:*off_1E798CAC8] & 1) == 0 && (objc_msgSend(a2, "isEqualToString:", *off_1E798CA78) & 1) == 0 && (objc_msgSend(a2, "isEqualToString:", *off_1E798CA90) & 1) == 0 && (objc_msgSend(a2, "isEqualToString:", *off_1E798CA88) & 1) == 0)
  {
    v7 = a1 + 432 + (mscsn_streamOutputIndexForOutputID(a2) << 9);
    v8 = OUTLINED_FUNCTION_2_42();
    v10 = [(BWMultiStreamCameraSourceNode *)v8 _outputDimensionsForOutputID:v9 outputConfiguration:a3];
    if ([*(a1 + 360) dynamicAspectRatioEnabled])
    {
      v11 = FigCaptureLongerDimensionForDimensions(v10);
      v10 = v11 | (v11 << 32);
    }

    [(BWVideoFormatRequirements *)v6 setWidth:v10];
    [(BWVideoFormatRequirements *)v6 setHeight:v10 >> 32];
    [(BWVideoFormatRequirements *)v6 setBytesPerRowAlignment:*(v7 + 108)];
    [(BWVideoFormatRequirements *)v6 setPlaneAlignment:*(v7 + 112)];
    [(BWVideoFormatRequirements *)v6 setHeightAlignment:16];
    v12 = OUTLINED_FUNCTION_2_42();
    [(BWMultiStreamCameraSourceNode *)v12 _supportedPixelFormatsForOutputID:v13];
    [OUTLINED_FUNCTION_17() setSupportedPixelFormats:?];
  }

  return v6;
}

- (BWVideoFormatRequirements)_videoFormatRequirementsForAttachedPreLTMThumbnail
{
  if (!a1)
  {
    return 0;
  }

  v9 = 0;
  v1 = [*(a1 + 144) getProperty:*off_1E798C280 error:&v9];
  if (v9)
  {
    OUTLINED_FUNCTION_8_51();
LABEL_8:
    FigDebugAssert3();
    return 0;
  }

  v2 = [objc_msgSend(v1 objectForKeyedSubscript:{*off_1E798CA88), "objectForKeyedSubscript:", *off_1E798AF50}];
  if (!v2)
  {
    OUTLINED_FUNCTION_0_96();
    goto LABEL_8;
  }

  v3 = v2;
  v4 = objc_alloc_init(BWVideoFormatRequirements);
  [objc_msgSend(v3 objectForKeyedSubscript:{*off_1E798CA48), "intValue"}];
  [OUTLINED_FUNCTION_31_17() setWidth:?];
  [objc_msgSend(v3 objectForKeyedSubscript:{*off_1E798C9F8), "intValue"}];
  [OUTLINED_FUNCTION_31_17() setHeight:?];
  [objc_msgSend(v3 objectForKeyedSubscript:{*off_1E798C9C0), "intValue"}];
  [OUTLINED_FUNCTION_31_17() setBytesPerRowAlignment:?];
  [objc_msgSend(v3 objectForKeyedSubscript:{*off_1E798C9D0), "intValue"}];
  [OUTLINED_FUNCTION_31_17() setPlaneAlignment:?];
  [(BWVideoFormatRequirements *)v4 setHeightAlignment:1];
  [v3 objectForKeyedSubscript:*off_1E798CA10];
  OUTLINED_FUNCTION_104_5(MEMORY[0x1E695DEC8], v5, v6, v7);
  [OUTLINED_FUNCTION_17() setSupportedPixelFormats:?];
  return v4;
}

- (BWVideoFormatRequirements)_videoFormatRequirementsForAttachedLTMThumbnail
{
  if (!a1)
  {
    return 0;
  }

  v25 = 0;
  v1 = [objc_msgSend(*(a1 + 152) objectAtIndexedSubscript:{*(a1 + 368)), "objectForKeyedSubscript:", *off_1E798C9A0}];
  v2 = *off_1E798CA88;
  v3 = [v1 objectForKeyedSubscript:*off_1E798CA88];
  v4 = *off_1E798AFE8;
  if ([objc_msgSend(objc_msgSend(v3 objectForKeyedSubscript:{*off_1E798AFE8), "objectForKeyedSubscript:", *off_1E798AE48), "BOOLValue"}])
  {
    v5 = [objc_msgSend(objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_86() "objectForKeyedSubscript:{"objectForKeyedSubscript:", v2), "objectForKeyedSubscript:", v4), "objectForKeyedSubscript:", *off_1E798CAF0}")];
    v6 = [OUTLINED_FUNCTION_34_19() preLTMThumbnailEnabled];
    v7 = [OUTLINED_FUNCTION_34_19() postLTMThumbnailEnabled];
    v8 = [OUTLINED_FUNCTION_34_19() ltmThumbnailOutputDimensions];
    v9 = [OUTLINED_FUNCTION_34_19() ltmThumbnailOutputDimensions];
    if ((v6 & 1) == 0 && !v7)
    {
      return 0;
    }

    if ([objc_msgSend(v5 objectForKeyedSubscript:{*off_1E798A2C0), "intValue"}] < v8)
    {
      return 0;
    }

    v10 = HIDWORD(v9);
    if ([objc_msgSend(v5 objectForKeyedSubscript:{*off_1E798A288), "intValue"}] < v10)
    {
      return 0;
    }

    v23 = v2;
    v21 = *off_1E798AF20;
    v19[0] = *off_1E798AE40;
    v20[0] = [MEMORY[0x1E696AD98] numberWithBool:v6];
    v19[1] = *off_1E798AE38;
    v20[1] = [MEMORY[0x1E696AD98] numberWithBool:v7];
    v19[2] = *off_1E798CA48;
    v20[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
    v19[3] = *off_1E798C9F8;
    v20[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v11 = OUTLINED_FUNCTION_137_3();
    v12 = *off_1E798C280;
    v25 = [v11 setProperty:*off_1E798C280 value:?];
    if (v25)
    {
      return 0;
    }
  }

  else
  {
    v12 = *off_1E798C280;
  }

  v13 = [OUTLINED_FUNCTION_137_3() getProperty:v12 error:&v25];
  if (v25)
  {
    OUTLINED_FUNCTION_14_21();
LABEL_16:
    FigDebugAssert3();
    return 0;
  }

  v14 = [objc_msgSend(v13 objectForKeyedSubscript:{v2), "objectForKeyedSubscript:", *off_1E798AF20}];
  if (!v14)
  {
    OUTLINED_FUNCTION_0();
    goto LABEL_16;
  }

  v15 = v14;
  v16 = objc_alloc_init(BWVideoFormatRequirements);
  [OUTLINED_FUNCTION_34_19() ltmThumbnailOutputDimensions];
  [OUTLINED_FUNCTION_63_12() setWidth:?];
  -[BWVideoFormatRequirements setHeight:](v16, "setHeight:", [OUTLINED_FUNCTION_34_19() ltmThumbnailOutputDimensions] >> 32);
  [objc_msgSend(v15 objectForKeyedSubscript:{*off_1E798C9C0), "intValue"}];
  [OUTLINED_FUNCTION_63_12() setBytesPerRowAlignment:?];
  [objc_msgSend(v15 objectForKeyedSubscript:{*off_1E798C9D0), "intValue"}];
  [OUTLINED_FUNCTION_63_12() setPlaneAlignment:?];
  [(BWVideoFormatRequirements *)v16 setHeightAlignment:1];
  v18 = [v15 objectForKeyedSubscript:*off_1E798CA10];
  [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  [OUTLINED_FUNCTION_4() setSupportedPixelFormats:?];
  return v16;
}

- (BWVideoFormatRequirements)_videoFormatRequirementsForPostColorProcessingThumbnailOutput
{
  if (!a1)
  {
    return 0;
  }

  v9 = 0;
  v1 = [*(a1 + 144) getProperty:*off_1E798C280 error:&v9];
  if (v9)
  {
    OUTLINED_FUNCTION_8_51();
LABEL_8:
    FigDebugAssert3();
    return 0;
  }

  v2 = [objc_msgSend(v1 objectForKeyedSubscript:{*off_1E798CA88), "objectForKeyedSubscript:", *off_1E798AF40}];
  if (!v2)
  {
    OUTLINED_FUNCTION_0_96();
    goto LABEL_8;
  }

  v3 = v2;
  v4 = objc_alloc_init(BWVideoFormatRequirements);
  [objc_msgSend(v3 objectForKeyedSubscript:{*off_1E798CA48), "intValue"}];
  [OUTLINED_FUNCTION_31_17() setWidth:?];
  [objc_msgSend(v3 objectForKeyedSubscript:{*off_1E798C9F8), "intValue"}];
  [OUTLINED_FUNCTION_31_17() setHeight:?];
  [objc_msgSend(v3 objectForKeyedSubscript:{*off_1E798C9C0), "intValue"}];
  [OUTLINED_FUNCTION_31_17() setBytesPerRowAlignment:?];
  [objc_msgSend(v3 objectForKeyedSubscript:{*off_1E798C9D0), "intValue"}];
  [OUTLINED_FUNCTION_31_17() setPlaneAlignment:?];
  [(BWVideoFormatRequirements *)v4 setHeightAlignment:1];
  [v3 objectForKeyedSubscript:*off_1E798CA10];
  OUTLINED_FUNCTION_104_5(MEMORY[0x1E695DEC8], v5, v6, v7);
  [OUTLINED_FUNCTION_17() setSupportedPixelFormats:?];
  return v4;
}

- (BWVideoFormatRequirements)_videoFormatRequirementsForAttachedWeightSegmentMap
{
  if (!a1)
  {
    return 0;
  }

  v2 = [objc_msgSend(*(a1 + 152) objectAtIndexedSubscript:{*(a1 + 368)), "objectForKeyedSubscript:", *off_1E798C9A0}];
  v3 = *off_1E798CA88;
  v4 = [objc_msgSend(objc_msgSend(v2 objectForKeyedSubscript:{*off_1E798CA88), "objectForKeyedSubscript:", *off_1E798B040), "objectForKeyedSubscript:", *off_1E798CAF0}];
  v5 = [OUTLINED_FUNCTION_34_19() weightSegmentMapNumberOfSegments];
  v6 = [OUTLINED_FUNCTION_34_19() weightSegmentMapSmoothingSigma];
  v7 = [OUTLINED_FUNCTION_34_19() weightSegmentMapOutputDimensions];
  v8 = [OUTLINED_FUNCTION_34_19() weightSegmentMapOutputDimensions];
  if ((v5 - 9) < 0xFFFFFFF8)
  {
    return 0;
  }

  v9 = v8;
  if ([objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798A2C0), "intValue"}] < v7)
  {
    return 0;
  }

  v10 = HIDWORD(v9);
  if ([objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798A288), "intValue"}] < v10)
  {
    return 0;
  }

  v26 = v3;
  v11 = *off_1E798AFB8;
  v24 = *off_1E798AFB8;
  v22[0] = *off_1E798CBF8;
  v23[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
  v22[1] = *off_1E798CC00;
  v23[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  v22[2] = *off_1E798CA48;
  v23[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
  v22[3] = *off_1E798C9F8;
  v23[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:4];
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v13 = *off_1E798C280;
  v28 = [*(a1 + 144) setProperty:*off_1E798C280 value:v12];
  if (v28)
  {
    return 0;
  }

  v14 = [*(a1 + 144) getProperty:v13 error:&v28];
  if (v28)
  {
    OUTLINED_FUNCTION_14_21();
LABEL_12:
    FigDebugAssert3();
    return 0;
  }

  v15 = [objc_msgSend(v14 objectForKeyedSubscript:{v3), "objectForKeyedSubscript:", v11}];
  if (!v15)
  {
    OUTLINED_FUNCTION_0();
    goto LABEL_12;
  }

  v16 = v15;
  v17 = objc_alloc_init(BWVideoFormatRequirements);
  [OUTLINED_FUNCTION_34_19() weightSegmentMapOutputDimensions];
  [OUTLINED_FUNCTION_63_12() setWidth:?];
  -[BWVideoFormatRequirements setHeight:](v17, "setHeight:", [OUTLINED_FUNCTION_34_19() weightSegmentMapOutputDimensions] >> 32);
  [objc_msgSend(v16 objectForKeyedSubscript:{*off_1E798C9C0), "intValue"}];
  [OUTLINED_FUNCTION_63_12() setBytesPerRowAlignment:?];
  [objc_msgSend(v16 objectForKeyedSubscript:{*off_1E798C9D0), "intValue"}];
  [OUTLINED_FUNCTION_63_12() setPlaneAlignment:?];
  [(BWVideoFormatRequirements *)v17 setHeightAlignment:1];
  [v16 objectForKeyedSubscript:*off_1E798CA10];
  OUTLINED_FUNCTION_104_5(MEMORY[0x1E695DEC8], v18, v19, v20);
  [OUTLINED_FUNCTION_4() setSupportedPixelFormats:?];
  return v17;
}

- (id)_colorInfoDictionaryForStreamOutputID:(id)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    v2 = [BWMultiStreamCameraSourceNode _colorSpacePropertiesForOuputID:v1];
    if (v2)
    {

      return [BWVideoFormat pixelBufferAttachmentsForColorSpaceProperties:v2];
    }

    else
    {
      v3 = OUTLINED_FUNCTION_44();

      return [(BWMultiStreamCameraSourceNode *)v3 colorInfoForNonColorManagedDevicesForOutputID:v4];
    }
  }

  return result;
}

- (void)_outputConfigurationForStillImageOutputID:
{
  OUTLINED_FUNCTION_146_0();
  v120 = v1;
  v121 = v4;
  if (!v2)
  {
    goto LABEL_73;
  }

  v5 = v3;
  v6 = v2;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = [*(v6 + 152) objectAtIndexedSubscript:*(v6 + 368)];
  v9 = *off_1E798C9A0;
  v115 = v8;
  [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798C9A0), "objectForKeyedSubscript:", v5}];
  v10 = OUTLINED_FUNCTION_18_0();
  v11 = [(BWMultiStreamCameraSourceNode *)v10 _totalAvailableOverscan];
  v13 = v12;
  v15 = *MEMORY[0x1E695F060];
  v14 = *(MEMORY[0x1E695F060] + 8);
  v16 = v12 == v14 && v11 == *MEMORY[0x1E695F060];
  if (![OUTLINED_FUNCTION_15_34() includeOverscanOnStillImageOutput])
  {
    v14 = v13;
    v15 = v11;
  }

  v17 = *off_1E798CAB8;
  if (([v5 isEqualToString:*off_1E798CAB8] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", *off_1E798CAC0) & 1) == 0 && !objc_msgSend(v5, "isEqualToString:", *off_1E798CAD0))
  {
    [v5 isEqualToString:*off_1E798CAC8];
    goto LABEL_73;
  }

  v111 = v16;
  v109 = v9;
  v114 = v0;
  LODWORD(v18) = mscsn_streamOutputIndexForOutputID(v5);
  v19 = [OUTLINED_FUNCTION_15_34() horizontalSensorBinningFactor];
  v20 = [OUTLINED_FUNCTION_15_34() verticalSensorBinningFactor];
  v21 = [OUTLINED_FUNCTION_15_34() fesBinningFactorHorizontal];
  v116 = [OUTLINED_FUNCTION_15_34() cropAspectRatio];
  if (([OUTLINED_FUNCTION_15_34() cinematicFramingEnabled] & 1) != 0 || objc_msgSend(OUTLINED_FUNCTION_15_34(), "manualCinematicFramingEnabled"))
  {
    v110 = 0;
    LODWORD(v116) = 0;
  }

  else
  {
    v110 = HIDWORD(v116);
  }

  v113 = [OUTLINED_FUNCTION_15_34() sensorCropDimensions];
  if ([OUTLINED_FUNCTION_15_34() geometricDistortionCorrectionOnStillImageOutputEnabled])
  {
    [OUTLINED_FUNCTION_15_34() postGDCCropDimensions];
    OUTLINED_FUNCTION_131_4();
    if (_NF == _VF && v22 >= 1)
    {
      v113 = [OUTLINED_FUNCTION_15_34() postGDCCropDimensions];
    }
  }

  v26 = v19;
  v27 = v20;
  if ([OUTLINED_FUNCTION_15_34() stillImageOutputEnabled])
  {
    v28 = [objc_msgSend(*(v6 + 248) "videoFormat")];
  }

  else
  {
    if (![OUTLINED_FUNCTION_15_34() forceFirmwareStillImageOutputEnabled])
    {
      v29 = 0;
      goto LABEL_25;
    }

    v101 = [OUTLINED_FUNCTION_15_34() dynamicAspectRatioEnabled];
    [(BWMultiStreamCameraSourceNode *)v6 _supportedPixelFormatsForOutputID:v5];
    if (v101)
    {
      v28 = FigCapturePixelFormatWithLeastAverageBandwidth(v102);
    }

    else
    {
      v28 = [objc_msgSend(v102 "firstObject")];
    }
  }

  v29 = v28;
LABEL_25:
  v30 = v6 + 432;
  v18 = v18;
  v31 = v21;
  v32 = v26 / v27;
  if ([v5 isEqualToString:v17])
  {
    v33 = v29;
    [OUTLINED_FUNCTION_15_34() sensorCenterOffset];
    v35 = v34;
    v37 = v36;
    v38 = [OUTLINED_FUNCTION_15_34() roundingOfStillImageDimensionsToMultipleOfFourEnabled];
    v39 = [OUTLINED_FUNCTION_15_34() geometricDistortionCorrectionOnStillImageOutputEnabled];
    v40 = v5;
    v41 = v115;
    mscsn_setScalerCropAndOutputDimensionsInConfiguration(v7, v40, v115, v113, v116 | (v110 << 32), 0, v38, 0, v15, v14, v35, v37, v32, v31, v39);
    v42 = [objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798CA48), "intValue"}];
    v43 = [objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798C9F8), "intValue"}];
    v44 = v114;
    if (!v111)
    {
      v45 = v43;
      if ([OUTLINED_FUNCTION_15_34() includeOverscanOnStillImageOutput])
      {
        if (([OUTLINED_FUNCTION_15_34() includeOverscanInStillImageFinalCropRect] & 1) == 0)
        {
          *(v6 + 11896) = v11;
          *(v6 + 11904) = v13;
          *(v6 + 11880) = 2 * llroundf(vcvts_n_f32_s32((v42 / (v11 + 1.0)), 1uLL));
          OUTLINED_FUNCTION_122_3(v45 / (v13 + 1.0));
          *(v6 + *(v46 + 2964) + 4) = v47;
        }
      }
    }

    v29 = v33;
  }

  else
  {
    v44 = v114;
    if ([v5 isEqualToString:*off_1E798CAC0])
    {
      v48 = v29;
      v49 = [objc_msgSend(v114 objectForKeyedSubscript:{*off_1E798CB18), "intValue"}];
      v50 = [objc_msgSend(v114 objectForKeyedSubscript:{*off_1E798CB08), "intValue"}];
      v41 = v115;
      if (v111 || ([OUTLINED_FUNCTION_15_34() includeOverscanInStillImageFinalCropRect] & 1) != 0)
      {
        *(v6 + 11880) = v49;
        *(v6 + 11884) = v50;
      }

      else
      {
        rect.origin.x = 0.0;
        [OUTLINED_FUNCTION_15_34() sensorCenterOffset];
        v80 = [OUTLINED_FUNCTION_15_34() roundingOfStillImageDimensionsToMultipleOfFourEnabled];
        [OUTLINED_FUNCTION_15_34() geometricDistortionCorrectionOnStillImageOutputEnabled];
        OUTLINED_FUNCTION_46_15();
        OUTLINED_FUNCTION_72_5();
        v81 = v80;
        v41 = v115;
        mscsn_calculateScalerCropAndOutputDimensions(v82, v83, v113, v84, 0, v81, 0, v85, v86, v87, v88, v89, v32, v31, 0, &rect);
        v90.i64[0] = v49;
        v90.i64[1] = v50;
        v91 = vcvtq_f64_s64(v90);
        v90.i64[0] = SLODWORD(rect.origin.x);
        v90.i64[1] = SHIDWORD(rect.origin.x);
        __asm { FMOV            V1.2D, #-1.0 }

        *(v6 + 11896) = vaddq_f64(vdivq_f64(v91, vcvtq_f64_s64(v90)), _Q1);
        *(v6 + 11880) = rect.origin.x;
      }

      v29 = v48;
      v30 = v6 + 432;
      v18 = v18;
    }

    else if ([v5 isEqualToString:*off_1E798CAD0])
    {
      v41 = v115;
      if ((*(v6 + 192) & 1) == 0)
      {
        v29 = [objc_msgSend(*(v6 + 256) "videoFormat")];
        if (([OUTLINED_FUNCTION_15_34() includeOverscanInStillImageFinalCropRect] & 1) == 0)
        {
          v112 = v29;
          v108 = [objc_msgSend(v115 objectForKeyedSubscript:{*off_1E798C988), "intValue"}];
          v107 = [objc_msgSend(v115 objectForKeyedSubscript:{*off_1E798C980), "intValue"}];
          v119[0] = 0;
          [OUTLINED_FUNCTION_15_34() roundingOfStillImageDimensionsToMultipleOfFourEnabled];
          [OUTLINED_FUNCTION_15_34() geometricDistortionCorrectionOnStillImageOutputEnabled];
          OUTLINED_FUNCTION_46_15();
          OUTLINED_FUNCTION_119_3();
          mscsn_calculateScalerCropAndOutputDimensions(v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, 0, v119);
          v65 = [objc_msgSend(v115 objectForKeyedSubscript:{v109), "objectForKeyedSubscript:", v17}];
          v66 = [objc_msgSend(v115 objectForKeyedSubscript:{*off_1E798C950), "intValue"}];
          if (v66 <= 1)
          {
            v67 = 1;
          }

          else
          {
            v67 = v66;
          }

          v68 = [objc_msgSend(v65 objectForKeyedSubscript:{*off_1E798CB18), "intValue"}];
          v69 = vmul_s32(__PAIR64__([objc_msgSend(v65 objectForKeyedSubscript:{*off_1E798CB08), "intValue"}], v68), vdup_n_s32(v67));
          v70.u64[1] = v69;
          v70.i64[0] = v113;
          v71.i64[0] = 0x100000001;
          v71.i64[1] = v113;
          if (vmaxv_u16(vmovn_s32(vcgtq_s32(v71, v70))))
          {
            v117 = v69;
            v72 = [v115 objectForKeyedSubscript:*off_1E798C970];
            v73 = *(MEMORY[0x1E695F050] + 16);
            rect.origin = *MEMORY[0x1E695F050];
            rect.size = v73;
            v74 = CGRectMakeWithDictionaryRepresentation(v72, &rect);
            v75 = v107;
            v76.i64[0] = v108;
            v76.i64[1] = v107;
            v77 = vcvtq_f64_s64(v76);
            v78 = vdup_n_s32(v74);
            v76.i64[0] = v78.u32[0];
            v76.i64[1] = v78.u32[1];
            v79 = vcvt_s32_f32(vmul_f32(vcvt_f32_f64(vdivq_f64(vbslq_s8(vcltzq_s64(vshlq_n_s64(v76, 0x3FuLL)), rect.size, v77), vcvtq_f64_f32(vcvt_f32_s32(v117)))), vcvt_f32_s32(v119[0])));
            v44 = v114;
          }

          else
          {
            v79 = v119[0];
            v44 = v114;
            v75 = v107;
          }

          v103.i64[0] = v108;
          v103.i64[1] = v75;
          v104 = vcvtq_f64_s64(v103);
          v103.i64[0] = v79.i32[0];
          v103.i64[1] = v79.i32[1];
          v105 = vdivq_f64(v104, vcvtq_f64_s64(v103));
          __asm { FMOV            V1.2D, #-1.0 }

          *(v6 + 11936) = vaddq_f64(v105, _Q1);
          v41 = v115;
          v29 = v112;
        }
      }
    }

    else
    {
      v41 = v115;
    }
  }

  v95 = v30 + (v18 << 9);
  [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v29), *off_1E798CA10}];
  [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798C6E0];
  [OUTLINED_FUNCTION_15_34() firmwareTimeMachineBufferCapacity];
  [v7 setObject:objc_msgSend(OUTLINED_FUNCTION_8() forKeyedSubscript:{"numberWithInt:"), *off_1E798C6E8}];
  if ([OUTLINED_FUNCTION_15_34() usesFIFOFirmwareTimeMachine])
  {
    v96 = &unk_1F2245F58;
  }

  else
  {
    v96 = &unk_1F2246018;
  }

  [v7 setObject:v96 forKeyedSubscript:*off_1E798C6D8];
  if ([objc_msgSend(v44 objectForKeyedSubscript:{*off_1E798C710), "intValue"}])
  {
    [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", *(v6 + 11912)), *off_1E798C6D0}];
  }

  if ([objc_msgSend(v41 objectForKeyedSubscript:{*off_1E798C960), "BOOLValue"}])
  {
    if ((([OUTLINED_FUNCTION_91_8() softISPEnabled] & 1) != 0 || objc_msgSend(OUTLINED_FUNCTION_15_34(), "configureForSoftISPSupport")) && (objc_msgSend(OUTLINED_FUNCTION_15_34(), "sensorRawStillImageOutputEnabled") & 1) == 0)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798C6B8];
    }

    v97 = [OUTLINED_FUNCTION_15_34() firmwareTimeMachineSIFREnabled];
    if ([OUTLINED_FUNCTION_15_34() maximumNumberOfBracketedSIFRFrames] < 1)
    {
      v98 = 0;
    }

    else
    {
      v98 = [OUTLINED_FUNCTION_15_34() maximumNumberOfBracketedSIFRFrames];
    }

    [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v97), *off_1E798C6F0}];
    [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v98), *off_1E798C6B0}];
  }

  [OUTLINED_FUNCTION_91_8() redEyeReductionEnabled];
  [v7 setObject:objc_msgSend(OUTLINED_FUNCTION_8() forKeyedSubscript:{"numberWithBool:"), *off_1E798C6C0}];
  if (*(v95 + 116))
  {
    v99 = [OUTLINED_FUNCTION_15_34() stillImageOutputSensorInterfaceRawAttachmentOptionRetainedBufferCount];
    if (([OUTLINED_FUNCTION_61_9() BOOLValue] & 1) == 0)
    {
      [MEMORY[0x1E696AD98] numberWithBool:v99 != 0];
      [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
    }
  }

  if (*(v95 + 120))
  {
    [OUTLINED_FUNCTION_15_34() stillImageOutputSashimiRawAttachmentOptionRetainedBufferCount];
    [v7 setObject:objc_msgSend(OUTLINED_FUNCTION_8() forKeyedSubscript:{"numberWithInt:"), *off_1E798C6C8}];
  }

  if ([objc_msgSend(v44 objectForKeyedSubscript:{*off_1E798C700), "BOOLValue"}])
  {
    [OUTLINED_FUNCTION_15_34() stillImageOutputFocusPixelDataAttachmentOptionRetainedBufferCount];
    [v7 setObject:objc_msgSend(OUTLINED_FUNCTION_8() forKeyedSubscript:{"numberWithInt:"), *off_1E798C6A8}];
  }

  if ([objc_msgSend(objc_msgSend(*(v6 + 136) "stream")] && (*(v6 + 192) & 1) == 0)
  {
    v100 = [(BWMultiStreamCameraSourceNode *)v6 _stillImageColorSpaceProperties];
    [v7 setObject:BWColorSpacePropertiesGetYCbCrMatrix(v100) forKeyedSubscript:*off_1E798C6F8];
  }

  if ([objc_msgSend(v44 objectForKeyedSubscript:{*off_1E798CB50), "BOOLValue"}])
  {
    [OUTLINED_FUNCTION_15_34() geometricDistortionCorrectionOnStillImageOutputEnabled];
    [v7 setObject:objc_msgSend(OUTLINED_FUNCTION_8() forKeyedSubscript:{"numberWithBool:"), *off_1E798CB40}];
  }

LABEL_73:
  OUTLINED_FUNCTION_145_0();
}

- (BWVideoFormatRequirements)_videoFormatRequirementsForLightSourceMaskOutput
{
  if (!a1)
  {
    return 0;
  }

  v11 = 0;
  v2 = [*(a1 + 144) getProperty:*off_1E798C280 error:&v11];
  if (v11)
  {
    OUTLINED_FUNCTION_14_21();
LABEL_8:
    FigDebugAssert3();
    return 0;
  }

  v3 = [objc_msgSend(v2 objectForKeyedSubscript:{*off_1E798CA88), "objectForKeyedSubscript:", *off_1E798AF30}];
  if (!v3)
  {
    OUTLINED_FUNCTION_0();
    goto LABEL_8;
  }

  v4 = v3;
  v5 = (a1 + 432);
  v5[1179] = [objc_msgSend(v3 objectForKeyedSubscript:{*off_1E798C9C0), "intValue"}];
  v5[1180] = [objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798C9D0), "intValue"}];
  v5[1184] = [objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798CA48), "intValue"}];
  v5[1185] = [objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798C9F8), "intValue"}];
  v5[1175] = [objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798C9C8), "intValue"}];
  v6 = objc_alloc_init(BWVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v6 setWidth:v5[1184]];
  [(BWVideoFormatRequirements *)v6 setHeight:v5[1185]];
  [(BWVideoFormatRequirements *)v6 setBytesPerRowAlignment:v5[1179]];
  [(BWVideoFormatRequirements *)v6 setPlaneAlignment:v5[1180]];
  [(BWVideoFormatRequirements *)v6 setHeightAlignment:1];
  [v4 objectForKeyedSubscript:*off_1E798CA10];
  OUTLINED_FUNCTION_104_5(MEMORY[0x1E695DEC8], v7, v8, v9);
  [OUTLINED_FUNCTION_4() setSupportedPixelFormats:?];
  return v6;
}

- (BWPointCloudFormatRequirements)_videoFormatRequirementsForKeypointDescriptorDataOutput
{
  if (!a1)
  {
    return 0;
  }

  v7 = 0;
  v2 = [*(a1 + 144) getProperty:*off_1E798C280 error:&v7];
  if (v7)
  {
    OUTLINED_FUNCTION_8_51();
LABEL_8:
    FigDebugAssert3();
    return 0;
  }

  v3 = [objc_msgSend(v2 objectForKeyedSubscript:{*off_1E798CA88), "objectForKeyedSubscript:", *off_1E798AF10}];
  if (!v3)
  {
    OUTLINED_FUNCTION_0_96();
    goto LABEL_8;
  }

  v4 = v3;
  *(a1 + 5644) = [objc_msgSend(v3 objectForKeyedSubscript:{*off_1E798C9C8), "intValue"}];
  v5 = objc_alloc_init(BWPointCloudFormatRequirements);
  [objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798C9E0), "intValue"}];
  [OUTLINED_FUNCTION_31_17() setDataBufferSize:?];
  [(BWPointCloudFormatRequirements *)v5 setSupportedDataFormats:&unk_1F22494F8];
  return v5;
}

- (BWVideoFormatRequirements)_videoFormatRequirementsForSemanticMaskType:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v11 = 0;
  [*(a1 + 144) getProperty:*off_1E798C280 error:&v11];
  if (v11)
  {
    OUTLINED_FUNCTION_8_51();
LABEL_9:
    FigDebugAssert3();
    return 0;
  }

  v2 = OUTLINED_FUNCTION_18_0();
  v3 = mscsn_semanticMaskOutputConfigurationKeyForSemanticMaskType(v2);
  if (!v3 || (v4 = [objc_msgSend(v1 objectForKeyedSubscript:{*off_1E798CA88), "objectForKeyedSubscript:", v3}]) == 0)
  {
    OUTLINED_FUNCTION_0_96();
    goto LABEL_9;
  }

  v5 = v4;
  v6 = objc_alloc_init(BWVideoFormatRequirements);
  [objc_msgSend(v5 objectForKeyedSubscript:{*off_1E798CA48), "intValue"}];
  [OUTLINED_FUNCTION_31_17() setWidth:?];
  [objc_msgSend(v5 objectForKeyedSubscript:{*off_1E798C9F8), "intValue"}];
  [OUTLINED_FUNCTION_31_17() setHeight:?];
  [objc_msgSend(v5 objectForKeyedSubscript:{*off_1E798C9C0), "intValue"}];
  [OUTLINED_FUNCTION_31_17() setBytesPerRowAlignment:?];
  [objc_msgSend(v5 objectForKeyedSubscript:{*off_1E798C9D0), "intValue"}];
  [OUTLINED_FUNCTION_31_17() setPlaneAlignment:?];
  [(BWVideoFormatRequirements *)v6 setHeightAlignment:1];
  [v5 objectForKeyedSubscript:*off_1E798CA10];
  OUTLINED_FUNCTION_104_5(MEMORY[0x1E695DEC8], v7, v8, v9);
  [OUTLINED_FUNCTION_17() setSupportedPixelFormats:?];
  return v6;
}

- (id)colorInfoForNonColorManagedDevicesForOutputID:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = [(BWMultiStreamCameraSourceNode *)a1 videoCaptureDimensionsForColorspace];
  if (([a2 isEqualToString:*off_1E798CAB8] & 1) != 0 || objc_msgSend(a2, "isEqualToString:", *off_1E798CAC0))
  {

    return [BWVideoFormat pixelBufferAttachmentsForColorSpaceProperties:1];
  }

  if ([a2 isEqualToString:*off_1E798CAA0])
  {
    return 0;
  }

  v5 = [OUTLINED_FUNCTION_26_19() colorSpace];
  v6 = [OUTLINED_FUNCTION_26_19() clientVideoFormat];
  v7 = [OUTLINED_FUNCTION_26_19() clientVideoFormat];

  return [BWVideoFormat colorInfoWithSourceColorSpace:v5 sourcePixelFormat:v6 sourceDimensions:v3 requestedPixelFormat:v7];
}

- (uint64_t)_colorSpacePropertiesForOuputID:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_54();
    if (([v3 isEqualToString:*off_1E798CA98] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", *off_1E798CAB0) & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", *off_1E798CA80) & 1) != 0 || objc_msgSend(v2, "isEqualToString:", *off_1E798CAC8))
    {
      return *(v1 + 376);
    }

    else if (([v2 isEqualToString:*off_1E798CAB8] & 1) != 0 || (result = objc_msgSend(v2, "isEqualToString:", *off_1E798CAC0), result))
    {

      return [(BWMultiStreamCameraSourceNode *)v1 _stillImageColorSpaceProperties];
    }
  }

  return result;
}

- (void)_nodeOutputsMadeLiveByStreamOutputIndex:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1 + 432 + (a2 << 9);
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (*(v2 + 16))
  {
    [v3 addObject:?];
  }

  if ((*(v2 + 4) & 2) != 0)
  {
    if ([OUTLINED_FUNCTION_60_8() detectedObjectsOutputEnabled])
    {
      [OUTLINED_FUNCTION_64_9() addObject:?];
    }

    if ([OUTLINED_FUNCTION_60_8() stillImageOutputEnabled])
    {
      [OUTLINED_FUNCTION_64_9() addObject:?];
    }

    if ([OUTLINED_FUNCTION_60_8() sensorRawStillImageOutputEnabled])
    {
      [OUTLINED_FUNCTION_64_9() addObject:?];
    }
  }

  return v4;
}

- (uint64_t)_createAndStartFrameCounterForOutputIndexIfNecessary:(uint64_t)result
{
  if (result)
  {
    v2 = result + 432 + (a2 << 9);
    if (*v2 == 1 && !*(v2 + 80))
    {
      v3 = -[FigCaptureFrameCounter initWithTitle:]([FigCaptureFrameCounter alloc], "initWithTitle:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", result, mscsn_streamOutputIDForOutputIndex(a2)]);
      *(v2 + 80) = v3;

      return [(FigCaptureFrameCounter *)v3 start];
    }
  }

  return result;
}

- (void)_stopAndReleaseFrameCounterForOutputIndexIfNecessary:(uint64_t)a1
{
  if (a1)
  {
    v2 = a1 + 432 + (a2 << 9);
    [*(v2 + 80) stop];

    *(v2 + 80) = 0;
  }
}

- (void)_tallyCompressedIOSurfaceStatsForSBuf:(uint64_t)a1 outputStorage:
{
  if (a1)
  {
    OUTLINED_FUNCTION_67_8();
    if (*(v3 + 184) == 4 && *(v1 + 493) == 1)
    {
      memset(&v20, 0, sizeof(v20));
      CMSampleBufferGetPresentationTimeStamp(&v20, v2);
      if ((*(v1 + 480) & 0x1D) == 1)
      {
        *time = v20;
        Seconds = CMTimeGetSeconds(time);
        *time = *(v1 + 468);
        *&time[16] = *(v1 + 484);
        if (Seconds - CMTimeGetSeconds(time) > 1.0)
        {
          OUTLINED_FUNCTION_107_3();
          memset(time, 0, sizeof(time));
          v14 = 0u;
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          memset(v12, 0, sizeof(v12));
          if (!BWSampleBufferComputeIOSurfaceCompressionHistogram(v2))
          {
            v5 = 0;
            ++*(v1 + 464);
            v6 = (v1 + 336);
            v7 = time;
            do
            {
              v8 = *v7++;
              v6[-8] = vaddq_s64(v6[-8], v8);
              *v6 = vaddq_s64(*v6, v12[v5]);
              ++v6;
              ++v5;
            }

            while (v5 != 8);
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_107_3();
      }
    }

    else if (*(v1 + 176))
    {
      *time = 0;
      *&v12[0] = 0;
      v9 = BWSampleBufferComputeIOSurfaceCompressionRatio(v2, time, v12);
      if (v9 > 0.0 && v9 <= 1.0)
      {
        [*(v1 + 176) addDataPoint:v9];
        v11 = *(v1 + 200) + *&v12[0];
        *(v1 + 192) += *time;
        *(v1 + 200) = v11;
      }
    }
  }
}

- (uint64_t)_setStreamOutputsEnabled:(int)a3 streamingOutputs:(int)a4 onDemandStillOutputs:
{
  if (!a1)
  {
    return 0;
  }

  v6 = a1;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v49 = [objc_msgSend(*(v6 + 360) "secureMetadataOutputConfiguration")];
  v8 = 0;
  v9 = 0;
  v10 = *off_1E798CA88;
  v48 = *off_1E798AF58;
  v47 = *off_1E798AF28;
  v46 = *off_1E798AFC0;
  v45 = *off_1E798AF48;
  v11 = *off_1E798AFC8;
  v53 = *off_1E798AFD8;
  v52 = *off_1E798AFD0;
  v51 = *off_1E798B038;
  v44 = *off_1E798AF18;
  v43 = *off_1E798AF38;
  v12 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
  v13 = 0x1E696A000uLL;
  do
  {
    v14 = v6 + v12[656] + (v8 << 9);
    if (*(v14 + 9) != 1)
    {
      goto LABEL_56;
    }

    v15 = *v14;
    if (v15 == 2)
    {
      if (!a4)
      {
        goto LABEL_56;
      }
    }

    else if (v15 == 1)
    {
      if (!a3)
      {
        goto LABEL_56;
      }

      *(v6 + 12145) = a2;
    }

    v16 = [mscsn_streamOutputIDForOutputIndex(v8) isEqualToString:v10];
    if (!v16)
    {
      OUTLINED_FUNCTION_6_67();
      OUTLINED_FUNCTION_55_12();
      if (v25)
      {
        if ([*(v6 + 360) preLTMThumbnailOnPreviewOutputEnabled])
        {
LABEL_21:
          if (!v9)
          {
            v9 = [MEMORY[0x1E695DF90] dictionary];
          }

          OUTLINED_FUNCTION_82_5();
          [OUTLINED_FUNCTION_28() setObject:? forKeyedSubscript:?];
LABEL_24:
          OUTLINED_FUNCTION_6_67();
          OUTLINED_FUNCTION_55_12();
          if (v25)
          {
            if ([*(v6 + 360) ltmThumbnailOnPreviewOutputEnabled])
            {
LABEL_31:
              if (!v9)
              {
                v9 = [MEMORY[0x1E695DF90] dictionary];
              }

              OUTLINED_FUNCTION_82_5();
              [OUTLINED_FUNCTION_28() setObject:? forKeyedSubscript:?];
LABEL_34:
              OUTLINED_FUNCTION_6_67();
              OUTLINED_FUNCTION_55_12();
              if (v25)
              {
                if ([*(v6 + 360) weightSegmentMapOnPreviewOutputEnabled])
                {
                  goto LABEL_41;
                }

                OUTLINED_FUNCTION_6_67();
              }

              OUTLINED_FUNCTION_55_12();
              if (!v25 || ![*(v6 + 360) weightSegmentMapOnVideoCaptureOutputEnabled])
              {
LABEL_44:
                OUTLINED_FUNCTION_6_67();
                OUTLINED_FUNCTION_55_12();
                if (v25 && ([*(v6 + 360) postColorProcessingThumbnailOnPreviewOutputEnabled] & 1) != 0 || (OUTLINED_FUNCTION_55_12(), v25) && objc_msgSend(*(v6 + 360), "postColorProcessingThumbnailOnVideoCaptureOutputEnabled"))
                {
                  if (!v9)
                  {
                    v9 = [MEMORY[0x1E695DF90] dictionary];
                  }

                  OUTLINED_FUNCTION_82_5();
                  [OUTLINED_FUNCTION_28() setObject:? forKeyedSubscript:?];
                }

                OUTLINED_FUNCTION_82_5();
                v24 = OUTLINED_FUNCTION_7();
LABEL_54:
                [v24 setObject:? forKeyedSubscript:?];
                goto LABEL_55;
              }

LABEL_41:
              if (!v9)
              {
                v9 = [MEMORY[0x1E695DF90] dictionary];
              }

              OUTLINED_FUNCTION_82_5();
              [OUTLINED_FUNCTION_28() setObject:? forKeyedSubscript:?];
              goto LABEL_44;
            }

            OUTLINED_FUNCTION_6_67();
          }

          OUTLINED_FUNCTION_55_12();
          if (!v25 || ![*(v6 + 360) ltmThumbnailOnVideoCaptureOutputEnabled])
          {
            goto LABEL_34;
          }

          goto LABEL_31;
        }

        OUTLINED_FUNCTION_6_67();
      }

      OUTLINED_FUNCTION_55_12();
      if (!v25 || ![*(v6 + 360) preLTMThumbnailOnVideoCaptureOutputEnabled])
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }

    if (!v9)
    {
      v16 = [MEMORY[0x1E695DF90] dictionary];
      v9 = v16;
    }

    switch(v8)
    {
      case 9:
      case 10:
        OUTLINED_FUNCTION_82_5();
        v24 = OUTLINED_FUNCTION_28();
        goto LABEL_54;
      case 11:
        v42 = v7;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v26 = [*(v6 + 360) enabledSemanticMaskTypes];
        v27 = [v26 countByEnumeratingWithState:&v59 objects:v58 count:16];
        if (v27)
        {
          v28 = v27;
          HIDWORD(v39) = a4;
          v29 = v13;
          v40 = v10;
          v41 = v6;
          v30 = *v60;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v60 != v30)
              {
                objc_enumerationMutation(v26);
              }

              v32 = *(*(&v59 + 1) + 8 * i);
              v33 = [v32 isEqualToString:v11];
              v35 = off_1E798AEE8;
              if ((v33 & 1) == 0)
              {
                v33 = [v32 isEqualToString:v53];
                v35 = off_1E798AF08;
                if ((v33 & 1) == 0)
                {
                  v33 = [v32 isEqualToString:v52];
                  v35 = off_1E798AEF8;
                  if ((v33 & 1) == 0)
                  {
                    v33 = [v32 isEqualToString:v51];
                    v35 = off_1E798AFB0;
                    if (!v33)
                    {
                      continue;
                    }
                  }
                }
              }

              if (*v35)
              {
                [*(v29 + 3480) numberWithBool:a2];
                v33 = [OUTLINED_FUNCTION_28() setObject:? forKeyedSubscript:?];
              }
            }

            v28 = OUTLINED_FUNCTION_64(v33, v34, &v59, v58);
          }

          while (v28);
          v6 = v41;
          v7 = v42;
          v10 = v40;
          v13 = v29;
          a4 = HIDWORD(v39);
        }

        break;
      case 12:
        [OUTLINED_FUNCTION_100_4(v16 v17];
        break;
      case 13:
        [OUTLINED_FUNCTION_100_4(v16 v17];
        break;
      case 14:
        [OUTLINED_FUNCTION_100_4(v16 v17];
        break;
      case 15:
        [OUTLINED_FUNCTION_100_4(v16 v17];
        break;
      case 16:
        [OUTLINED_FUNCTION_100_4(v16 v17];
        break;
      default:
        break;
    }

LABEL_55:
    v12 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
LABEL_56:
    ++v8;
  }

  while (v8 != 22);
  if (!v49)
  {
    if (![v9 count])
    {
      goto LABEL_86;
    }

    goto LABEL_83;
  }

  [objc_msgSend(*(v6 + 136) "secureMetadataOutputConfigurator")];
  if ([v9 count])
  {
LABEL_83:
    if (a2)
    {
      v56 = v10;
      v57 = v9;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      [OUTLINED_FUNCTION_39() setProperty:? value:?];
    }

    goto LABEL_85;
  }

  if (([v49 isEmpty] & 1) == 0)
  {
LABEL_85:
    OUTLINED_FUNCTION_82_5();
    [OUTLINED_FUNCTION_7() setObject:? forKeyedSubscript:?];
    *(v6 + 11952) = a2;
  }

LABEL_86:
  v36 = [*(v6 + 144) setProperty:*off_1E798C2A0 value:v7];
  if (v9 && (a2 & 1) == 0)
  {
    v54 = v10;
    v55 = v9;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    [OUTLINED_FUNCTION_27_1() setProperty:? value:?];
  }

  return v36;
}

- (void)_markEndOfLiveOnAllOutputs
{
  if (a1)
  {
    v2 = [MEMORY[0x1E695DF70] array];
    v3 = 22;
    v4 = a1;
    do
    {
      if (*(v4 + 441) == 1 && *(v4 + 448))
      {
        [v2 addObject:?];
      }

      v4 += 512;
      --v3;
    }

    while (v3);
    v5 = a1;
    do
    {
      if (*(v5 + 441) == 1)
      {
        v6 = *(v5 + 464);
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __59__BWMultiStreamCameraSourceNode__markEndOfLiveOnAllOutputs__block_invoke;
        v7[3] = &unk_1E7990030;
        v7[5] = v2;
        v7[6] = v5 + 432;
        v8 = v3;
        v7[4] = a1;
        dispatch_async(v6, v7);
      }

      ++v3;
      v5 += 512;
    }

    while (v3 != 22);
  }
}

- (uint64_t)_flushOutRemainingBuffers
{
  if (result)
  {
    v1 = result;
    v2 = 0;
    v3 = MEMORY[0x1E69E9820];
    v4 = result + 32;
    do
    {
      v5 = *(v4 + 432);
      v6[0] = v3;
      v6[1] = 3221225472;
      v6[2] = __58__BWMultiStreamCameraSourceNode__flushOutRemainingBuffers__block_invoke;
      v6[3] = &unk_1E7991CF0;
      v6[4] = v1;
      v7 = v2;
      dispatch_sync(v5, v6);
      ++v2;
      v4 += 512;
    }

    while (v2 != 22);
    [v1[22] flush];
    [v1[1471] removeAllObjects];
    [v1[1499] flush];
    return [v1[1500] flush];
  }

  return result;
}

- (uint64_t)_unregisterStreamOutputHandlers
{
  if (result)
  {
    v1 = result;
    v2 = [MEMORY[0x1E695DF90] dictionary];
    v13 = v1;
    v3 = [objc_msgSend(objc_msgSend(*(v1 + 152) objectAtIndexedSubscript:{*(v1 + 368)), "objectForKeyedSubscript:", *off_1E798C9A0), "allKeys"}];
    memset(v20, 0, 64);
    obj = v3;
    v4 = [v3 countByEnumeratingWithState:v20 objects:v19 count:16];
    v5 = *off_1E798CA70;
    v6 = *MEMORY[0x1E695E738];
    if (v4)
    {
      v7 = v4;
      v8 = *off_1E798CA58;
      v9 = *off_1E798CA60;
      v10 = *off_1E798CA50;
      do
      {
        v11 = 0;
        do
        {
          OUTLINED_FUNCTION_142_0();
          if (!v12)
          {
            objc_enumerationMutation(obj);
          }

          v17[0] = v5;
          v17[1] = v8;
          v18[0] = v6;
          v18[1] = v6;
          v17[2] = v9;
          v17[3] = v10;
          v18[2] = v6;
          v18[3] = v6;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
          [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
          ++v11;
        }

        while (v7 != v11);
        v7 = [obj countByEnumeratingWithState:v20 objects:v19 count:16];
      }

      while (v7);
    }

    v15 = v5;
    v16 = v6;
    [v2 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v16, &v15, 1), *off_1E798CA78}];
    return [*(v13 + 144) setProperty:*off_1E798C290 value:v2];
  }

  return result;
}

- (uint64_t)_unregisterFromStreamNotifications
{
  if (result)
  {
    v1 = result;
    [*(result + 144) unregisterForNotification:*off_1E798B888 listener:result];
    [OUTLINED_FUNCTION_137_3() unregisterForNotification:*off_1E798B880 listener:v1];
    result = [*(v1 + 360) depthOutputEnabled];
    if (result)
    {
      v2 = OUTLINED_FUNCTION_137_3();
      v3 = *off_1E798B898;

      return [v2 unregisterForNotification:v3 listener:v1];
    }
  }

  return result;
}

- (uint64_t)_reportIOSurfaceCompressionCoreAnalyticsData:(uint64_t)result
{
  if (result)
  {
    if (*(a2 + 464))
    {
      v3 = result;
      v4 = objc_alloc_init(BWIOSurfaceCompressionHistogramAnalyticsPayload);
      [(BWIOSurfaceCompressionHistogramAnalyticsPayload *)v4 setPortType:*(v3 + 216)];
      [(BWIOSurfaceCompressionHistogramAnalyticsPayload *)v4 setBufferHeight:*(a2 + 132)];
      [(BWIOSurfaceCompressionHistogramAnalyticsPayload *)v4 setNodeType:1];
      [(BWIOSurfaceCompressionHistogramAnalyticsPayload *)v4 setPixelFormatIsTenBit:*(a2 + 492)];
      [(BWIOSurfaceCompressionHistogramAnalyticsPayload *)v4 setNumberOfSamples:*(a2 + 464)];
      [(BWIOSurfaceCompressionHistogramAnalyticsPayload *)v4 setLumaCompressionHistogram:a2 + 208];
      [(BWIOSurfaceCompressionHistogramAnalyticsPayload *)v4 setChromaCompressionHistogram:a2 + 336];
    }

    else
    {
      result = [*(a2 + 176) numberOfSamples];
      if (!result)
      {
        return result;
      }

      v4 = objc_alloc_init(BWIOSurfaceCompressionStatisticsAnalyticsPayload);
      [*(a2 + 176) average];
      [OUTLINED_FUNCTION_110_5() setAverageRatio:?];
      [*(a2 + 176) min];
      [OUTLINED_FUNCTION_110_5() setMinRatio:?];
      [*(a2 + 176) max];
      [OUTLINED_FUNCTION_110_5() setMaxRatio:?];
      [*(a2 + 176) standardDeviation];
      [OUTLINED_FUNCTION_110_5() setStandardDeviation:?];
      [*(a2 + 176) numberOfSamples];
      [OUTLINED_FUNCTION_4() setNumberOfSamples:?];
      [(BWIOSurfaceCompressionHistogramAnalyticsPayload *)v4 setCompressionType:*(a2 + 184)];
      [(BWIOSurfaceCompressionHistogramAnalyticsPayload *)v4 setBufferHeight:*(a2 + 132)];
      [(BWIOSurfaceCompressionHistogramAnalyticsPayload *)v4 setTotalCompressedSize:*(a2 + 192)];
      [(BWIOSurfaceCompressionHistogramAnalyticsPayload *)v4 setTotalUncompressedSize:*(a2 + 200)];
      [(BWIOSurfaceCompressionHistogramAnalyticsPayload *)v4 setNodeType:1];
    }

    v5 = +[BWCoreAnalyticsReporter sharedInstance];

    return [(BWCoreAnalyticsReporter *)v5 sendEvent:v4];
  }

  return result;
}

- (uint64_t)_reportIOSurfaceCompressionCoreAnalyticsDataForRaw
{
  if (result)
  {
    v1 = result;
    v2 = objc_alloc_init(BWIOSurfaceCompressionStatisticsAnalyticsPayload);
    [OUTLINED_FUNCTION_89_5() average];
    [OUTLINED_FUNCTION_26_17() setAverageRatio:?];
    [OUTLINED_FUNCTION_89_5() min];
    [OUTLINED_FUNCTION_26_17() setMinRatio:?];
    [OUTLINED_FUNCTION_89_5() max];
    [OUTLINED_FUNCTION_26_17() setMaxRatio:?];
    [OUTLINED_FUNCTION_89_5() standardDeviation];
    [OUTLINED_FUNCTION_26_17() setStandardDeviation:?];
    [OUTLINED_FUNCTION_89_5() numberOfSamples];
    [OUTLINED_FUNCTION_17() setNumberOfSamples:?];
    [(BWIOSurfaceCompressionStatisticsAnalyticsPayload *)v2 setCompressionType:3];
    [(BWIOSurfaceCompressionStatisticsAnalyticsPayload *)v2 setBufferHeight:*(v1 + 12128)];
    [OUTLINED_FUNCTION_64_9() setTotalCompressedSize:?];
    [OUTLINED_FUNCTION_64_9() setTotalUncompressedSize:?];
    [(BWIOSurfaceCompressionStatisticsAnalyticsPayload *)v2 setNodeType:1];
    v3 = +[BWCoreAnalyticsReporter sharedInstance];

    return [(BWCoreAnalyticsReporter *)v3 sendEvent:v2];
  }

  return result;
}

- (id)messageDispatchQueueForOutput:(id)a3
{
  for (i = 0; i != 22; ++i)
  {
    v6 = [(BWMultiStreamCameraSourceNode *)self _nodeOutputsMadeLiveByStreamOutputIndex:?];
    OUTLINED_FUNCTION_43();
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v9 = v8;
      v10 = MEMORY[0];
      while (2)
      {
        for (j = 0; j != v9; ++j)
        {
          if (MEMORY[0] != v10)
          {
            objc_enumerationMutation(v6);
          }

          if ([a3 isEqual:*(8 * j)])
          {
            return self->_outputsStorage[i].bufferServicingQueue;
          }
        }

        OUTLINED_FUNCTION_43();
        v9 = [v6 countByEnumeratingWithState:? objects:? count:?];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  return 0;
}

- (unint64_t)_calculateVideoCaptureDimensions
{
  if (result)
  {
    v1 = result;
    [*(result + 360) visOverscan];

    return [(BWMultiStreamCameraSourceNode *)v1 _calculateVideoCaptureDimensionsWithVISOverscan:v2, v3];
  }

  return result;
}

- (unint64_t)_calculateVideoCaptureDimensionsWithVISOverscan:(double)a3
{
  if (!a1)
  {
    return 0;
  }

  v5 = [*(a1 + 360) videoCaptureDimensionsIncludeVISOverscan];
  v6 = [OUTLINED_FUNCTION_19_28() videoCaptureDimensions];
  if (v5)
  {
    return v6;
  }

  [OUTLINED_FUNCTION_19_28() additionalVISOverscanWhenRecording];
  v8 = v7 <= 0.0;
  v9 = (v7 + 1.0);
  v10 = (a2 + 1.0) * v9 + -1.0;
  v11 = (a3 + 1.0) * v9 + -1.0;
  if (v8)
  {
    v12 = a2;
  }

  else
  {
    v12 = v10;
  }

  if (v8)
  {
    v13 = a3;
  }

  else
  {
    v13 = v11;
  }

  v14 = *MEMORY[0x1E695F060];
  v15 = *(MEMORY[0x1E695F060] + 8);
  v16 = v13 == v15 && v12 == *MEMORY[0x1E695F060];
  [OUTLINED_FUNCTION_19_28() overscanForShiftMitigation];
  v18 = v17;
  if (([OUTLINED_FUNCTION_19_28() videoStabilizationEnabled] & 1) != 0 || v16)
  {
    v38 = [OUTLINED_FUNCTION_19_28() videoStabilizationEnabled];
    if (v18 == 0.0)
    {
      v39 = 1;
    }

    else
    {
      v39 = v38;
    }

    v33 = v18;
    if (v39)
    {
      v13 = v15;
    }

    else
    {
      v13 = v18;
    }

    if (v39)
    {
      v33 = v14;
    }
  }

  else
  {
    [OUTLINED_FUNCTION_19_28() sensorOverscan];
    v45 = v12 + 1.0;
    v20 = 0.0;
    if ((v12 + 1.0) / (v19 + 1.0) + -1.0 >= 0.0)
    {
      [OUTLINED_FUNCTION_19_28() sensorOverscan];
      v20 = v45 / (v21 + 1.0) + -1.0;
    }

    v22 = v13 + 1.0;
    [OUTLINED_FUNCTION_19_28() sensorOverscan];
    v24 = 0.0;
    if ((v13 + 1.0) / (v23 + 1.0) + -1.0 >= 0.0)
    {
      [OUTLINED_FUNCTION_19_28() sensorOverscan];
      v24 = v22 / (v25 + 1.0) + -1.0;
    }

    if (v18 == 0.0 || ((v26 = v20, v18 <= v26) ? (v27 = v24, v28 = v18 <= v27) : (v28 = 0), v28))
    {
      v33 = v12;
    }

    else
    {
      v29 = (v18 + 1.0);
      v30 = v29 / (v20 + 1.0) + -1.0;
      if (v30 < 0.0)
      {
        v30 = 0.0;
      }

      v31 = v29 / (v24 + 1.0) + -1.0;
      if (v31 >= 0.0)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0.0;
      }

      v33 = v45 * (v30 + 1.0) + -1.0;
      v34 = v22 * (v32 + 1.0) + -1.0;
      if (v12 == v13)
      {
        goto LABEL_35;
      }

      v35 = (v33 + 1.0) / v45 * v22 + -1.0;
      v36 = v35;
      v37 = v36;
      if (v35 >= 0.0)
      {
        v13 = v37;
      }

      else
      {
        v13 = 0.0;
      }

      if (v13 <= v34)
      {
        v33 = (v34 + 1.0) / v22 * v45 + -1.0;
        if (v33 < 0.0)
        {
          v33 = 0.0;
        }

LABEL_35:
        v13 = v22 * (v32 + 1.0) + -1.0;
      }
    }
  }

  if (v33 == v14 && v13 == v15)
  {
    return v6;
  }

  v41 = OUTLINED_FUNCTION_124_4(v33);
  v43 = v13 + v42;

  return mscsn_scaleDimensionsWithAlignment(v6, 2u, v41, v43);
}

- (void)_isVideoCaptureOutputSupportedByOutputID:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_59_0();
    a45 = v48;
    a46 = v49;
    OUTLINED_FUNCTION_136_2();
    v51 = [*(v50 + 152) objectAtIndexedSubscript:*(v46 + 368)];
    if (v51)
    {
      v52 = [objc_msgSend(v51 objectForKeyedSubscript:{*off_1E798C9A0), "objectForKeyedSubscript:", v47}];
      if (v52)
      {
        v53 = v52;
        if (([OUTLINED_FUNCTION_86() isEqualToString:?] & 1) == 0 && objc_msgSend(OUTLINED_FUNCTION_15_34(), "visionDataConfiguration"))
        {
          goto LABEL_34;
        }

        if ([OUTLINED_FUNCTION_86() isEqualToString:?] & 1) == 0 && (objc_msgSend(OUTLINED_FUNCTION_15_34(), "videoStabilizationEnabled"))
        {
          goto LABEL_34;
        }

        if ([OUTLINED_FUNCTION_99_4() isEqualToString:?] && !-[BWMultiStreamCameraSourceNode _secondaryScalerSupportsVideoCaptureDimensions](v46))
        {
          goto LABEL_34;
        }

        v54 = [objc_msgSend(v53 objectForKeyedSubscript:{*off_1E798CB50), "BOOLValue"}];
        if ([OUTLINED_FUNCTION_99_4() isEqualToString:?])
        {
          [(BWMultiStreamCameraSourceNode *)v46 _scalerChainingEnabled];
          v55 = v73;
        }

        else
        {
          v55 = 0;
        }

        if ([OUTLINED_FUNCTION_15_34() geometricDistortionCorrectionOnVideoCaptureOutputEnabled] && !(v55 | v54) || objc_msgSend(OUTLINED_FUNCTION_86(), "isEqualToString:") && objc_msgSend(OUTLINED_FUNCTION_15_34(), "previewOutputEnabled") && objc_msgSend(OUTLINED_FUNCTION_15_34(), "geometricDistortionCorrectionOnPreviewOutputEnabled") && !objc_msgSend(OUTLINED_FUNCTION_15_34(), "geometricDistortionCorrectionOnVideoCaptureOutputEnabled"))
        {
          goto LABEL_34;
        }

        v56 = [v53 objectForKeyedSubscript:*off_1E798CB30];
        if (v56)
        {
          v57 = v56;
          v58 = [OUTLINED_FUNCTION_15_34() clientVideoFormat];
          IsFullRange = FigCapturePixelFormatIsFullRange(v58);
          IsTenBit = FigCapturePixelFormatIsTenBit(v58);
          v61 = FigCapturePixelFormatIs422(v58);
          OUTLINED_FUNCTION_9_35();
          v66 = OUTLINED_FUNCTION_64(v62, v63, v64, v65);
          if (v66)
          {
            v67 = v66;
            v68 = *a29;
LABEL_20:
            v69 = 0;
            while (1)
            {
              if (*a29 != v68)
              {
                objc_enumerationMutation(v57);
              }

              v70 = [*(a28 + 8 * v69) intValue];
              v71 = FigCapturePixelFormatIsFullRange(v70);
              if (IsFullRange == v71)
              {
                v71 = FigCapturePixelFormatIsTenBit(v70);
                if (IsTenBit == v71)
                {
                  v71 = FigCapturePixelFormatIs422(v70);
                  if (v61 == v71)
                  {
                    break;
                  }
                }
              }

              if (v67 == ++v69)
              {
                v67 = OUTLINED_FUNCTION_64(v71, v72, &a27, &a11);
                if (v67)
                {
                  goto LABEL_20;
                }

                goto LABEL_34;
              }
            }
          }

          goto LABEL_34;
        }
      }
    }

    OUTLINED_FUNCTION_0_96();
    FigDebugAssert3();
LABEL_34:
    OUTLINED_FUNCTION_58_0();
  }
}

- (uint64_t)_scalingRequiredForOutput:(uint64_t)result
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = [*(result + 152) objectAtIndexedSubscript:*(result + 368)];
  v3 = [objc_msgSend(v2 objectForKeyedSubscript:{*off_1E798C938), "intValue"}] >= 1 && objc_msgSend(objc_msgSend(v2, "objectForKeyedSubscript:", *off_1E798C930), "intValue") > 0;
  if ([*(v1 + 128) temporalNoiseReductionEnabled] && (v3 & objc_msgSend(*(v1 + 128), "temporalNoiseReductionRawEnabled") & 1) != 0)
  {
    return 1;
  }

  [*(v1 + 360) visOverscan];
  OUTLINED_FUNCTION_2_7();
  [BWMultiStreamCameraSourceNode _outputConfigurationForStreamingOutputID:nodeOutput:visOverscan:];
  v5 = v4;
  v6 = [v4 objectForKeyedSubscript:*off_1E798C9D8];
  v7 = *(MEMORY[0x1E695F058] + 16);
  rect.origin = *MEMORY[0x1E695F058];
  rect.size = v7;
  if (!CGRectMakeWithDictionaryRepresentation(v6, &rect))
  {
    OUTLINED_FUNCTION_0_96();
    FigDebugAssert3();
    return 1;
  }

  v8 = [objc_msgSend(v5 objectForKeyedSubscript:{*off_1E798CA48), "intValue"}];
  v9 = [objc_msgSend(v5 objectForKeyedSubscript:{*off_1E798C9F8), "intValue"}];
  return v8 != rect.size.width || v9 != rect.size.height;
}

- (BOOL)_videoCaptureOutputDimensionsValidForDepth
{
  if (result)
  {
    v1 = result;
    [*(result + 360) visOverscan];
    OUTLINED_FUNCTION_3_19();
    [BWMultiStreamCameraSourceNode _outputConfigurationForStreamingOutputID:nodeOutput:visOverscan:];
    v3 = [objc_msgSend(v2 objectForKeyedSubscript:{*off_1E798CA48), "intValue"}];
    [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(*(v1 + 152) objectAtIndexedSubscript:{*(v1 + 368)), "objectForKeyedSubscript:", *off_1E798C9A0), "objectForKeyedSubscript:", *off_1E798CAB0), "objectForKeyedSubscript:", *off_1E798CAF8), "floatValue"}];
    if (v4 == 0.0)
    {
      v4 = 0.25;
    }

    return (v4 * v3) <= 640.0;
  }

  return result;
}

- (uint64_t)_bytesPerOutputBufferForOutputConfiguration:(uint64_t)a3 outputID:
{
  if (result)
  {
    v4 = [objc_msgSend(objc_msgSend(objc_msgSend(*(result + 152) objectAtIndexedSubscript:{*(result + 368)), "objectForKeyedSubscript:", *off_1E798C9A0), "objectForKeyedSubscript:", a3), "objectForKeyedSubscript:", *off_1E798CB30}];
    v5 = [MEMORY[0x1E695DF70] arrayWithArray:v4];
    [v5 removeObject:&unk_1F2246000];
    v6 = OUTLINED_FUNCTION_2_42();
    v8 = [(BWMultiStreamCameraSourceNode *)v6 _outputDimensionsForOutputID:v7 outputConfiguration:a2];
    LODWORD(a2) = v8;
    v9 = HIDWORD(v8);
    v10 = FigCapturePixelFormatWithLeastAverageBandwidth(v5);
    return (FigCapturePixelFormatGetAverageBandwidthInBytesPerPixel(v10) * (v9 * a2));
  }

  return result;
}

- (unint64_t)_outputDimensionsForOutputID:(void *)a3 outputConfiguration:
{
  if (a1)
  {
    OUTLINED_FUNCTION_54();
    width = [objc_msgSend(a3 objectForKeyedSubscript:{*off_1E798CA48), "unsignedIntValue"}];
    v7 = [objc_msgSend(a3 objectForKeyedSubscript:{*off_1E798C9F8), "unsignedIntValue"}];
    v8 = v7;
    if (!width || !v7)
    {
      v9 = [a3 objectForKeyedSubscript:*off_1E798C9D8];
      v10 = *(MEMORY[0x1E695F058] + 16);
      v14.origin = *MEMORY[0x1E695F058];
      v14.size = v10;
      v11 = CGRectMakeWithDictionaryRepresentation(v9, &v14);
      v8 = v11 ? v14.size.height : v8;
      if (v11)
      {
        width = v14.size.width;
      }
    }

    if (!width || !v8)
    {
      v12 = [objc_msgSend(objc_msgSend(*(v3 + 152) objectAtIndexedSubscript:{*(v3 + 368)), "objectForKeyedSubscript:", *off_1E798C9A0), "objectForKeyedSubscript:", v4}];
      width = [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798CB18), "unsignedIntValue"}];
      v8 = [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798CB08), "unsignedIntValue"}];
    }

    if ([v4 isEqualToString:*off_1E798CAD0])
    {
      if (*(v3 + 192))
      {
        v8 = v8;
      }

      else
      {
        v8 = 0;
      }

      if (!*(v3 + 192))
      {
        width = 0;
      }
    }
  }

  else
  {
    v8 = 0;
    width = 0;
  }

  return width | (v8 << 32);
}

- (void)_preferPrimaryScalerOverIntermediateTapForVideoOutputBasedOnBandwidth
{
  if (a1)
  {
    v2 = *off_1E798CA98;
    [OUTLINED_FUNCTION_79_5(a1) visOverscan];
    OUTLINED_FUNCTION_3_19();
    [BWMultiStreamCameraSourceNode _outputConfigurationForStreamingOutputID:nodeOutput:visOverscan:];
    v3 = *off_1E798CA80;
    [OUTLINED_FUNCTION_35_16() visOverscan];
    OUTLINED_FUNCTION_1_19();
    [BWMultiStreamCameraSourceNode _outputConfigurationForStreamingOutputID:nodeOutput:visOverscan:];
    v5 = v4;
    [OUTLINED_FUNCTION_35_16() visOverscan];
    OUTLINED_FUNCTION_3_19();
    [BWMultiStreamCameraSourceNode _outputConfigurationForStreamingOutputID:nodeOutput:visOverscan:];
    v7 = v6;
    [OUTLINED_FUNCTION_35_16() visOverscan];
    OUTLINED_FUNCTION_1_19();
    [BWMultiStreamCameraSourceNode _outputConfigurationForStreamingOutputID:nodeOutput:visOverscan:];
    v9 = v8;
    v10 = [OUTLINED_FUNCTION_35_16() preferredPreviewMaxFrameRate];
    if (v10)
    {
      v11 = v10;
      v12 = [OUTLINED_FUNCTION_35_16() maxFrameRate];
      if (FigCaptureFrameRateAsInt(v12, v13) > v11)
      {
        v14 = [OUTLINED_FUNCTION_35_16() maxFrameRate];
        FigCaptureFrameRateAsFloat(v14, v15);
      }
    }

    [(BWMultiStreamCameraSourceNode *)a1 _bytesPerOutputBufferForOutputConfiguration:v5 outputID:v3];
    [(BWMultiStreamCameraSourceNode *)a1 _bytesPerOutputBufferForOutputConfiguration:v7 outputID:v2];
    [(BWMultiStreamCameraSourceNode *)a1 _bytesPerOutputBufferForOutputConfiguration:v9 outputID:v3];
    v16 = OUTLINED_FUNCTION_70();
    [(BWMultiStreamCameraSourceNode *)v16 _bytesPerOutputBufferForOutputConfiguration:v17 outputID:v2];
    OUTLINED_FUNCTION_150_0();
  }
}

- (void)_preferIntermediateTapOverSecondaryScalerForPreviewOutputBasedOnBandwidth
{
  if (a1)
  {
    v2 = *off_1E798CAB0;
    [OUTLINED_FUNCTION_79_5(a1) visOverscan];
    OUTLINED_FUNCTION_3_19();
    [BWMultiStreamCameraSourceNode _outputConfigurationForStreamingOutputID:nodeOutput:visOverscan:];
    v3 = *off_1E798CA80;
    [OUTLINED_FUNCTION_35_16() visOverscan];
    OUTLINED_FUNCTION_70();
    [BWMultiStreamCameraSourceNode _outputConfigurationForStreamingOutputID:nodeOutput:visOverscan:];
    v5 = v4;
    v6 = [objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798CA00), "intValue"}];
    v7 = [objc_msgSend(OUTLINED_FUNCTION_99_4() "objectForKeyedSubscript:"intValue"")];
    if (v6 >= 1)
    {
      v8 = [OUTLINED_FUNCTION_35_16() maxFrameRate];
      FigCaptureFrameRateAsFloat(v8, v9);
    }

    if (v7 >= 1)
    {
      v10 = [OUTLINED_FUNCTION_35_16() maxFrameRate];
      FigCaptureFrameRateAsFloat(v10, v11);
    }

    v12 = OUTLINED_FUNCTION_1_19();
    [(BWMultiStreamCameraSourceNode *)v12 _bytesPerOutputBufferForOutputConfiguration:v13 outputID:v2];
    [(BWMultiStreamCameraSourceNode *)a1 _bytesPerOutputBufferForOutputConfiguration:v5 outputID:v3];
    OUTLINED_FUNCTION_150_0();
  }
}

- (BOOL)_shouldEnableStreamPreviewOutputForNodeOutput:(_BOOL8)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    if ([OUTLINED_FUNCTION_43_15(v3) previewOutputEnabled])
    {
      v4 = *(v2 + 232);
      result = 1;
      if (!v1)
      {
        return result;
      }
    }

    else
    {
      v5 = [OUTLINED_FUNCTION_60_8() clientVideoFormat];
      result = FigCapturePixelFormatIsPackedBayerRaw(v5);
      v4 = 0;
      if (!v1)
      {
        return result;
      }
    }

    *v1 = v4;
  }

  return result;
}

- (uint64_t)_shouldEnableStreamCaptureOutputForNodeOutput:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    if ([*(v3 + 360) previewOutputEnabled] & 1) != 0 || (objc_msgSend(OUTLINED_FUNCTION_19_28(), "videoCaptureOutputEnabled") & 1) != 0 || (objc_msgSend(OUTLINED_FUNCTION_19_28(), "depthOutputEnabled"))
    {
      v4 = 1;
    }

    else
    {
      v4 = [OUTLINED_FUNCTION_19_28() pointCloudOutputEnabled];
    }

    if ([OUTLINED_FUNCTION_19_28() videoCaptureOutputEnabled])
    {
      v5 = 240;
LABEL_8:
      v6 = *(v2 + v5);
      goto LABEL_9;
    }

    if ([OUTLINED_FUNCTION_19_28() stillImageOutputEnabled] && (objc_msgSend(OUTLINED_FUNCTION_19_28(), "usesFirmwareStillImageOutput") & 1) == 0)
    {
      v5 = 248;
      goto LABEL_8;
    }

    if (v4)
    {
      v6 = 0;
      result = 0;
      if (!v1)
      {
        return result;
      }

      goto LABEL_15;
    }

    if ([OUTLINED_FUNCTION_19_28() stillImageOutputEnabled] && (objc_msgSend(OUTLINED_FUNCTION_19_28(), "usesFirmwareStillImageOutput") & 1) != 0)
    {
      v6 = 0;
LABEL_9:
      result = 1;
      if (!v1)
      {
        return result;
      }

      goto LABEL_15;
    }

    result = [OUTLINED_FUNCTION_19_28() detectedObjectsOutputEnabled];
    v6 = 0;
    if (v1)
    {
LABEL_15:
      *v1 = v6;
    }
  }

  return result;
}

- (uint64_t)_updateDutyCycleMetadataCacheForActiveFormatIndex:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    result = [objc_msgSend(objc_msgSend(*(result + 152) objectAtIndexedSubscript:{a2), "objectForKeyedSubscript:", *off_1E798D3F8), "intValue"}];
    if (result > 60 || (result = [*(v2 + 360) graphContainsMultipleVideoSources], (result & 1) != 0))
    {
      if (*(v2 + 11768))
      {
        return result;
      }

      result = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    else
    {

      result = 0;
    }

    *(v2 + 11768) = result;
  }

  return result;
}

- (uint64_t)_updateStreamingOutputStorageForOutputID:(int)a3 isVideoCaptureOutput:(uint64_t)a4 nodeOutput:
{
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = result + 432 + (mscsn_streamOutputIndexForOutputID(a2) << 9);
  result = [OUTLINED_FUNCTION_27_15() visOverscan];
  v10 = *MEMORY[0x1E695F060];
  v11 = *(MEMORY[0x1E695F060] + 8);
  *(v8 + 9) = 1;
  *(v8 + 16) = a4;
  *v8 = 1;
  if (v12 == v10 && v9 == v11)
  {
    return result;
  }

  [objc_msgSend(*(v7 + 152) objectAtIndexedSubscript:{*(v7 + 368)), "objectForKeyedSubscript:", *off_1E798C9A0}];
  result = [a2 isEqualToString:*off_1E798CAA8];
  if ((result & 1) == 0)
  {
    if ([a2 isEqualToString:*off_1E798CA80])
    {
      [OUTLINED_FUNCTION_86() objectForKeyedSubscript:?];
      v15 = MEMORY[0x1E695F050];
      v17 = **&MEMORY[0x1E695F050];
      FigCFDictionaryGetCGRectIfPresent();
      result = CGRectEqualToRect(v17, *v15);
      if (a3)
      {
        v14 = result ^ 1;
        goto LABEL_14;
      }

      if (result)
      {
LABEL_20:
        *(v8 + 4) |= 4u;
        return result;
      }
    }

    else if (a3)
    {
      v14 = 1;
      goto LABEL_14;
    }

    result = [OUTLINED_FUNCTION_27_15() overscanForShiftMitigation];
    if (v16 != 0.0)
    {
      goto LABEL_20;
    }

    result = [OUTLINED_FUNCTION_27_15() includeOverscanOnPreviewOutput];
    if (result)
    {
      goto LABEL_20;
    }

    return result;
  }

  if (!a3)
  {
    goto LABEL_20;
  }

  v14 = 0;
LABEL_14:
  result = [OUTLINED_FUNCTION_27_15() videoStabilizationEnabled];
  if (!result || (v14 & 1) == 0)
  {
    goto LABEL_20;
  }

  return result;
}

- (uint64_t)_updateOutputStorageWithSecureMetadataOutputConfiguration:(char)a3 propagateToNodeOutputs:
{
  if (result)
  {
    OUTLINED_FUNCTION_136_2();
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = [v4 objectDetectionEnabled];
    if (*(v3 + 6585) != v7)
    {
      *(v3 + 6585) = v7;
      if (v7)
      {
        *(v3 + 6592) = *(v3 + 320);
        *(v3 + 6576) = 1;
      }

      [v6 addObject:&unk_1F2246030];
    }

    if (*(v3 + 7097) != [v4 eyeReliefStatusDetectionEnabled])
    {
      v8 = [v4 eyeReliefStatusDetectionEnabled];
      *(v3 + 7097) = v8;
      if (v8)
      {
        *(v3 + 7104) = *(v3 + 328);
        *(v3 + 7088) = 1;
      }

      [v6 addObject:&unk_1F2246048];
    }

    if (*(v3 + 7609) != [v4 faceTrackingEnabled])
    {
      v9 = [v4 faceTrackingEnabled];
      *(v3 + 7609) = v9;
      if (v9)
      {
        *(v3 + 7616) = *(v3 + 336);
        *(v3 + 7600) = 1;
      }

      [v6 addObject:&unk_1F2246060];
    }

    if (*(v3 + 8121) != [v4 faceIDReadinessEnabled])
    {
      v10 = [v4 faceIDReadinessEnabled];
      *(v3 + 8121) = v10;
      if (v10)
      {
        *(v3 + 8128) = *(v3 + 344);
        *(v3 + 8112) = 1;
      }

      [v6 addObject:&unk_1F2246078];
    }

    v11 = [v4 motionToWakeEnabled];
    if (*(v3 + 8633) != v11)
    {
      v13 = [v4 motionToWakeEnabled];
      *(v3 + 8633) = v13;
      if (v13)
      {
        *(v3 + 8640) = *(v3 + 352);
        *(v3 + 8624) = 1;
      }

      v11 = [v6 addObject:&unk_1F2246090];
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    result = OUTLINED_FUNCTION_64(v11, v12, &v25, v24);
    if (result)
    {
      v14 = result;
      v15 = *v26;
      do
      {
        v16 = 0;
        do
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v6);
          }

          v17 = [*(*(&v25 + 1) + 8 * v16) intValue];
          v18 = *(v3 + 432 + (v17 << 9) + 32);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __114__BWMultiStreamCameraSourceNode__updateOutputStorageWithSecureMetadataOutputConfiguration_propagateToNodeOutputs___block_invoke;
          block[3] = &unk_1E7997500;
          block[4] = v3;
          block[5] = v3 + 432 + (v17 << 9);
          v23 = a3;
          v22 = v17;
          dispatch_sync(v18, block);
          ++v16;
        }

        while (v14 != v16);
        result = OUTLINED_FUNCTION_64(v19, v20, &v25, v24);
        v14 = result;
      }

      while (result);
    }
  }

  return result;
}

- (uint64_t)_computeRetainedBufferCountForOutputStorage:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    result = *(v3 + 16);
    if (result)
    {
      if (*v1 == 2)
      {
        v4 = *(v2 + 11876);
      }

      else if (*v1 == 1)
      {
        v4 = [result retainedBufferCount];
        v5 = [*(v2 + 360) maxFrameRate];
        result = FigCaptureFrameRateAsInt(v5, v6);
        if (result > 120)
        {
          ++v4;
        }

        if (*(v1 + 4))
        {
          if (v4 <= [*(v2 + 136) timeMachineCapacity])
          {
            v4 = [*(v2 + 136) timeMachineCapacity];
          }

          result = [*(v2 + 248) retainedBufferCount];
          v4 += result;
        }
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 1;
    }

    *(v1 + 88) = v4;
  }

  return result;
}

- (void)_supportedPixelFormatsForOutputID:(uint64_t)a1
{
  if (a1)
  {
    v4 = [objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 152) objectAtIndexedSubscript:{*(a1 + 368)), "objectForKeyedSubscript:", *off_1E798C9A0), "objectForKeyedSubscript:", a2), "objectForKeyedSubscript:", *off_1E798CB30}];
    v5 = [OUTLINED_FUNCTION_59_10() clientVideoFormat];
    IsFullRange = FigCapturePixelFormatIsFullRange(v5);
    IsTenBit = FigCapturePixelFormatIsTenBit(v5);
    v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([OUTLINED_FUNCTION_59_10() previewOutputEnabled])
    {
      v31 = [OUTLINED_FUNCTION_59_10() videoCaptureOutputEnabled];
    }

    else
    {
      v31 = 0;
    }

    v8 = *(a1 + 432 + (mscsn_streamOutputIndexForOutputID(a2) << 9) + 4);
    if (FigCapturePlatformSupportsUniversalCompression())
    {
      v9 = 1;
    }

    else
    {
      v9 = FigCapturePlatformSupportsHTPC16x8Compression() != 0;
    }

    v33 = v9;
    v35 = FigCapturePlatformSupportsUniversalLossyCompression() != 0;
    if (([a2 isEqualToString:*off_1E798CAB8] & 1) != 0 || objc_msgSend(a2, "isEqualToString:", *off_1E798CAC0))
    {
      IsTenBit = [OUTLINED_FUNCTION_59_10() stillImageOutputRequires10BitPixelFormat];
      v34 = [OUTLINED_FUNCTION_59_10() stillImageMaxLossyCompressionLevel];
      v10 = 0;
      v11 = 0;
      IsFullRange = 1;
    }

    else
    {
      if (FigCapturePixelFormatIsPackedBayerRaw(v5) && [a2 isEqualToString:*(a1 + 11808)])
      {
        IsFullRange = 0;
        v11 = 1;
        IsTenBit = 1;
      }

      else
      {
        v11 = 0;
      }

      if (FigCapturePixelFormatIsVersatileRaw(v5))
      {
        v10 = [a2 isEqualToString:*off_1E798CAA0];
      }

      else
      {
        v10 = 0;
      }

      if ([a2 isEqualToString:*(a1 + 11840)])
      {
        v11 = FigCapturePixelFormatIs422(v5);
      }

      if (([OUTLINED_FUNCTION_59_10() faceTrackingEnabled] & 1) != 0 || objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_59_10(), "visionDataConfiguration"), "count"))
      {
        v33 = 0;
        v35 = 0;
      }

      v34 = 3;
    }

    if ([a2 isEqualToString:*off_1E798CAD0])
    {
      if (*(a1 + 192) == 1)
      {
LABEL_26:
        v12 = [v4 firstObject];
LABEL_33:
        [v36 addObject:v12];
        goto LABEL_34;
      }

      v15 = [*(a1 + 128) sensorRawPixelFormat];
      [MEMORY[0x1E696AD98] numberWithUnsignedInt:v15];
      if (![OUTLINED_FUNCTION_4() containsObject:?])
      {
        goto LABEL_34;
      }

      v13 = MEMORY[0x1E696AD98];
      v14 = v15;
LABEL_32:
      v12 = [v13 numberWithUnsignedInt:v14];
      goto LABEL_33;
    }

    if ([a2 isEqualToString:*off_1E798CA90])
    {
      [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
      if (![OUTLINED_FUNCTION_4() containsObject:?])
      {
        goto LABEL_34;
      }

      v13 = MEMORY[0x1E696AD98];
      v14 = v5;
      goto LABEL_32;
    }

    if ([a2 isEqualToString:*off_1E798CAA8])
    {
      if (*(a1 + 192) != 1)
      {
        goto LABEL_34;
      }

      goto LABEL_26;
    }

    OUTLINED_FUNCTION_29_15();
    v21 = OUTLINED_FUNCTION_37(v17, v18, v19, v20);
    if (!v21)
    {
      goto LABEL_34;
    }

    v22 = v21;
    v23 = (v8 & 1) == 0;
    v24 = *v40;
    v25 = v31;
    if (!v23)
    {
      v25 = 0;
    }

    v32 = v25 & v33;
LABEL_43:
    v26 = 0;
    while (1)
    {
      if (*v40 != v24)
      {
        objc_enumerationMutation(v4);
      }

      v27 = *(v39 + 8 * v26);
      IsVersatileRaw = [v27 intValue];
      if (!IsVersatileRaw)
      {
        goto LABEL_59;
      }

      v30 = IsVersatileRaw;
      IsVersatileRaw = FigCapturePixelFormatIsFullRange(IsVersatileRaw);
      if (IsFullRange != IsVersatileRaw)
      {
        goto LABEL_59;
      }

      IsVersatileRaw = FigCapturePixelFormatIsTenBit(v30);
      if (IsTenBit != IsVersatileRaw)
      {
        goto LABEL_59;
      }

      IsVersatileRaw = FigCapturePixelFormatIs422(v30);
      if (v11 != IsVersatileRaw)
      {
        goto LABEL_59;
      }

      IsVersatileRaw = FigCapturePixelFormatIsVersatileRaw(v30);
      if (v10 != IsVersatileRaw)
      {
        goto LABEL_59;
      }

      IsVersatileRaw = FigCapturePixelFormatGetCompressionType(v30);
      if (!IsVersatileRaw)
      {
        break;
      }

      if (IsVersatileRaw == 2)
      {
        if (v32)
        {
          break;
        }
      }

      else if (v33)
      {
        break;
      }

LABEL_59:
      if (v22 == ++v26)
      {
        v22 = OUTLINED_FUNCTION_37(IsVersatileRaw, v29, v38, v37);
        if (!v22)
        {
LABEL_34:
          v16 = v36;
          OUTLINED_FUNCTION_80_3();
          return;
        }

        goto LABEL_43;
      }
    }

    IsVersatileRaw = FigCapturePixelFormatGetLossyCompressionLevel(v30);
    if ((IsVersatileRaw == 0 || v35) && IsVersatileRaw <= v34)
    {
      IsVersatileRaw = [v36 addObject:v27];
    }

    goto LABEL_59;
  }
}

- (uint64_t)_updateGDCStrengthForOutputConfigurations:(uint64_t)a3 updatedOutputConfigurations:
{
  if (result)
  {
    v5 = result;
    v6 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    if (([*(result + 360) geometricDistortionCorrectionOnStillImageOutputEnabled] & 1) != 0 || (objc_msgSend(OUTLINED_FUNCTION_85_2(), "geometricDistortionCorrectionOnVideoCaptureOutputEnabled") & 1) != 0 || (result = objc_msgSend(OUTLINED_FUNCTION_85_2(), "geometricDistortionCorrectionOnPreviewOutputEnabled"), result))
    {
      if (a2)
      {
        v116 = [MEMORY[0x1E695DF90] dictionary];
        v7 = [objc_msgSend(*(v5 + 152) objectAtIndexedSubscript:{*(v5 + 368)), "objectForKeyedSubscript:", *off_1E798C9A0}];
        v191 = 0u;
        v192 = 0u;
        v193 = 0u;
        v194 = 0u;
        v15 = OUTLINED_FUNCTION_143_1(v7, v8, v9, v10, v11, v12, v13, v14, v74, v77, a3, v82, v85, v88, v91, v94, v97, v100, v103, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v175, v177, v179, v181, v183, v185, v187, v188, *&rect.origin.x, *&rect.origin.y, *&rect.size.width, *&rect.size.height, v190);
        if (v15)
        {
          v16 = v15;
          v17 = *v192;
          v120 = *off_1E798CB50;
          v114 = *off_1E798CB40;
          v98 = *off_1E798C9D8;
          v92 = *off_1E798CB08;
          v95 = *off_1E798CB18;
          v86 = *off_1E798CB10;
          v89 = *off_1E798CB20;
          v83 = *off_1E798CAB8;
          v111 = *off_1E798CA98;
          v108 = *off_1E798C9F0;
          v101 = a2;
          do
          {
            v18 = 0;
            v105 = v16;
            do
            {
              if (*v192 != v17)
              {
                objc_enumerationMutation(a2);
              }

              v19 = *(*(&v191 + 1) + 8 * v18);
              v20 = [a2 objectForKeyedSubscript:v19];
              v21 = [v7 objectForKeyedSubscript:v19];
              v22 = [objc_msgSend(v21 objectForKeyedSubscript:{v120), "BOOLValue"}];
              if (v22)
              {
                v30 = 0.0;
                if ([objc_msgSend(v20 objectForKeyedSubscript:{v114), "BOOLValue"}])
                {
                  v31 = [v20 objectForKeyedSubscript:v98];
                  v32 = *(MEMORY[0x1E695F050] + 16);
                  rect.origin = *MEMORY[0x1E695F050];
                  rect.size = v32;
                  CGRectMakeWithDictionaryRepresentation(v31, &rect);
                  width = rect.size.width;
                  height = rect.size.height;
                  LODWORD(v20) = [objc_msgSend(v21 objectForKeyedSubscript:{v95), "intValue"}];
                  v35 = v7;
                  v36 = v5;
                  v37 = [objc_msgSend(v21 objectForKeyedSubscript:{v92), "intValue"}];
                  v38 = v17;
                  v39 = v6;
                  v40 = [objc_msgSend(v21 objectForKeyedSubscript:{v89), "intValue"}];
                  v41 = [objc_msgSend(v21 objectForKeyedSubscript:{v86), "intValue"}];
                  v42 = v40 <= v20;
                  v6 = v39;
                  v17 = v38;
                  v42 = v42 && v41 <= v37;
                  if (v42)
                  {
                    v43 = height;
                  }

                  else
                  {
                    v43 = v37;
                  }

                  v5 = v36;
                  v7 = v35;
                  a2 = v101;
                  v16 = v105;
                  if (v42)
                  {
                    v20 = width;
                  }

                  else
                  {
                    v20 = v20;
                  }

                  v44 = [OUTLINED_FUNCTION_85_2() maximumGeometricDistortionCorrectionEnabled];
                  v30 = BWGetGeometricDistortionCorrectionStrengthFromDimensions(v20 | (v43 << 32), v44);
                  [v19 isEqualToString:v83];
                }

                if (v30 >= 0.0)
                {
                  v45 = v30;
                }

                else
                {
                  v45 = 0.0;
                }

                if (v45 > 1.0)
                {
                  v45 = 1.0;
                }

                if (v30 < 0.0 || v30 > 1.0)
                {
                  v30 = v45;
                }

                if ([v19 isEqualToString:v111])
                {
                  *(v5 + 11848) = v30;
                }

                v187 = v108;
                *&v47 = v30;
                v188 = [MEMORY[0x1E696AD98] numberWithFloat:v47];
                v22 = [v117 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v188, &v187, 1), v19}];
              }

              ++v18;
            }

            while (v16 != v18);
            v16 = OUTLINED_FUNCTION_143_1(v22, v23, v24, v25, v26, v27, v28, v29, v75, v78, v80, v83, v86, v89, v92, v95, v98, v101, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v176, v178, v180, v182, v184, v186, v187, v188, *&rect.origin.x, *&rect.origin.y, *&rect.size.width, *&rect.size.height, v190);
          }

          while (v16);
        }

        v48 = v117;
        result = [*(v5 + 144) setProperty:*off_1E798C280 value:v117];
        if (!result)
        {
          v49 = v80;
          if (v80)
          {
            v50 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a2];
            v58 = OUTLINED_FUNCTION_142_1(v50, v51, v52, v53, v54, v55, v56, v57, v75, v78, v80, v83, v86, v89, v92, v95, v98, v101, v104, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, 0);
            if (v58)
            {
              v59 = v58;
              v60 = MEMORY[0];
              do
              {
                for (i = 0; i != v59; ++i)
                {
                  if (MEMORY[0] != v60)
                  {
                    objc_enumerationMutation(v48);
                  }

                  v62 = *(8 * i);
                  [v50 objectForKeyedSubscript:v62];
                  [v48 objectForKeyedSubscript:v62];
                  v63 = [OUTLINED_FUNCTION_28() addEntriesFromDictionary:?];
                }

                v59 = OUTLINED_FUNCTION_142_1(v63, v64, v65, v66, v67, v68, v69, v70, v76, v79, v81, v84, v87, v90, v93, v96, v99, v102, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172);
              }

              while (v59);
            }

            *v49 = v50;
          }

          result = [OUTLINED_FUNCTION_85_2() reflectsStillsOnStreamingOutputs];
          if (result)
          {
            [v48 objectForKeyedSubscript:*off_1E798CA98];
            [v48 objectForKeyedSubscript:*off_1E798CAB8];
            [OUTLINED_FUNCTION_61_9() floatValue];
            v72 = v71;
            [objc_msgSend(OUTLINED_FUNCTION_40() "objectForKeyedSubscript:"floatValue"")];
            if (vabds_f32(v73, v72) > 0.00001)
            {
              [OUTLINED_FUNCTION_85_2() setReflectsStillsOnStreamingOutputs:0];
            }

            return 0;
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_112_5();
        OUTLINED_FUNCTION_9_38();
        FigDebugAssert3();

        return FigSignalErrorAtGM();
      }
    }
  }

  return result;
}

- (uint64_t)_updateBaseZoomFactorAfterGDCFromOutputConfigurations:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_54();
    v44[0] = 0;
    v4 = [*(v3 + 360) geometricDistortionCorrectionSupported];
    if (!v4)
    {
      goto LABEL_46;
    }

    if (!v2)
    {
      OUTLINED_FUNCTION_112_5();
      OUTLINED_FUNCTION_9_38();
      FigDebugAssert3();
      v24 = 0;
      v44[0] = FigSignalErrorAtGM();
      goto LABEL_41;
    }

    v6 = *off_1E798CA98;
    memset(v43, 0, sizeof(v43));
    v7 = OUTLINED_FUNCTION_37(v4, v5, v43, v42);
    v8 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    v37 = v6;
    if (v7)
    {
      v9 = v7;
      v10 = *off_1E798CB40;
      v11 = *off_1E798C9F0;
      v12 = 0.0;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          OUTLINED_FUNCTION_142_0();
          if (!v14)
          {
            objc_enumerationMutation(v2);
          }

          v15 = *(*(&v43[0] + 1) + 8 * i);
          v16 = [v2 objectForKeyedSubscript:v15];
          v17 = [objc_msgSend(v16 objectForKeyedSubscript:{v10), "BOOLValue"}];
          v19 = 0.0;
          if (v17)
          {
            v17 = [objc_msgSend(v16 objectForKeyedSubscript:{v11, 0.0), "floatValue"}];
          }

          if (v19 > v12)
          {
            v12 = v19;
            v6 = v15;
          }
        }

        v9 = OUTLINED_FUNCTION_37(v17, v18, v43, v42);
      }

      while (v9);
      v20 = 0.0;
      if (v12 != 0.0)
      {
        v21 = *off_1E798C9F8;
        v41[0] = *off_1E798CA48;
        v41[1] = v21;
        v41[2] = *off_1E798C9D8;
        v41[3] = v10;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
        v22 = [OUTLINED_FUNCTION_18_0() objectForKeyedSubscript:v6];
        v23 = [MEMORY[0x1E695DF90] dictionary];
        BWAddEntriesWithKeysFromDictionaryToDictionary(v22, v10, v23);
        v39 = v6;
        v40 = v23;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v44[0] = [OUTLINED_FUNCTION_135_4() setProperty:*off_1E798C280 value:?];
        if (!v44[0])
        {
          v8 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
          if ([*(v1 + 136) hasFocus])
          {
            v24 = 0;
          }

          else
          {
            v24 = [OUTLINED_FUNCTION_135_4() copyProperty:*off_1E798C288 error:v44];
            if (v44[0])
            {
              goto LABEL_41;
            }

            v38.origin = *MEMORY[0x1E695F050];
            v38.size = *(MEMORY[0x1E695F050] + 16);
            OUTLINED_FUNCTION_2_7();
            FigCFDictionaryGetCGRectIfPresent();
            if (CGRectIsNull(v38))
            {
              goto LABEL_41;
            }

            [objc_msgSend(v22 objectForKeyedSubscript:{v21), "floatValue"}];
            v26 = v25 / v38.size.height;
            if (v26 <= 1.0)
            {
              v26 = 1.0;
            }

            v20 = v26;
          }

          goto LABEL_26;
        }

LABEL_46:
        v24 = 0;
        goto LABEL_41;
      }

      v24 = 0;
      v8 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    }

    else
    {
      v24 = 0;
      v20 = 0.0;
    }

LABEL_26:
    if (*(v1 + 11840) && [objc_msgSend(OUTLINED_FUNCTION_20_22() "videoStabilizationMethods")] && (objc_msgSend(OUTLINED_FUNCTION_20_22(), "livePhotoCaptureEnabled") & 1) == 0)
    {
      v27 = *(v1 + 11840);
      if ([v27 isEqualToString:*off_1E798CAB0])
      {
        [(BWMultiStreamCameraSourceNode *)v1 _scalerChainingEnabled];
        if (v36)
        {
          v27 = v37;
        }
      }

      if ([objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(*(v1 + 152) objectAtIndexedSubscript:{*(v1 + 368)), "objectForKeyedSubscript:", *off_1E798C9A0), "objectForKeyedSubscript:", v27), "objectForKeyedSubscript:", *off_1E798CB50), "BOOLValue"}])
      {
        [objc_msgSend(objc_msgSend(v2 objectForKeyedSubscript:{v27), "objectForKeyedSubscript:", *off_1E798C9F0), "floatValue"}];
        OUTLINED_FUNCTION_35_3();
        if (v28)
        {
          [OUTLINED_FUNCTION_20_22() visOverscan];
          v30 = OUTLINED_FUNCTION_124_4(v29);
          if (1.2 / v30 >= v31)
          {
            [OUTLINED_FUNCTION_20_22() visOverscan];
            v31 = 1.2 / OUTLINED_FUNCTION_124_4(v32);
          }

          if (v31 >= v20)
          {
            [OUTLINED_FUNCTION_20_22() visOverscan];
            v20 = 1.0;
            if (1.2 / (v33 + 1.0) < 1.0)
            {
              goto LABEL_39;
            }

            [OUTLINED_FUNCTION_20_22() visOverscan];
            v20 = 1.2 / (v34 + 1.0);
          }
        }
      }
    }

    if (v20 != 0.0)
    {
LABEL_39:
      if (([OUTLINED_FUNCTION_20_22() proResRawCaptureEnabled] & 1) == 0)
      {
        *&v35 = v20;
        [*(v1 + v8[621]) setBaseZoomFactorAfterGDC:v35];
      }
    }

LABEL_41:

    return v44[0];
  }

  return result;
}

- (void)_outputConfigurationForStreamingOutputID:nodeOutput:visOverscan:
{
  OUTLINED_FUNCTION_146_0();
  if (!v0)
  {
    goto LABEL_89;
  }

  v5 = v4;
  v6 = v3;
  v7 = v2;
  v8 = v1;
  v9 = v0;
  if ([v1 isEqualToString:*off_1E798CA88])
  {
    OUTLINED_FUNCTION_112_5();
    OUTLINED_FUNCTION_9_38();
    FigDebugAssert3();
    FigSignalErrorAtGM();
    goto LABEL_89;
  }

  v10 = [MEMORY[0x1E695DF90] dictionary];
  v64 = [*(v9 + 152) objectAtIndexedSubscript:*(v9 + 368)];
  v11 = [v64 objectForKeyedSubscript:*off_1E798C9A0];
  v12 = [v11 objectForKeyedSubscript:v8];
  if ([v8 isEqualToString:*off_1E798CAA8] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", *off_1E798CAA0))
  {
    v65 = 0;
  }

  else
  {
    v13 = *off_1E798CA80;
    if ([v8 isEqualToString:*off_1E798CA80])
    {
      [v11 objectForKeyedSubscript:v13];
      v14 = MEMORY[0x1E695F050];
      v66 = **&MEMORY[0x1E695F050];
      FigCFDictionaryGetCGRectIfPresent();
      v15 = !CGRectEqualToRect(v66, *v14);
    }

    else
    {
      v15 = 1;
    }

    v65 = v15;
  }

  [OUTLINED_FUNCTION_17_29() cropAspectRatio];
  v62 = [OUTLINED_FUNCTION_17_29() horizontalSensorBinningFactor];
  v61 = [OUTLINED_FUNCTION_17_29() verticalSensorBinningFactor];
  v60 = [OUTLINED_FUNCTION_17_29() fesBinningFactorHorizontal];
  if (*(v9 + 232) == v7 && ([OUTLINED_FUNCTION_17_29() geometricDistortionCorrectionOnPreviewOutputEnabled] & 1) != 0)
  {
    v16 = 1;
  }

  else if (*(v9 + 240) == v7)
  {
    v16 = [OUTLINED_FUNCTION_17_29() geometricDistortionCorrectionOnVideoCaptureOutputEnabled];
  }

  else
  {
    v16 = 0;
  }

  v17 = [OUTLINED_FUNCTION_17_29() sensorCropDimensions];
  if (v17 < 1 || SHIDWORD(v17) < 1)
  {
    if (v16)
    {
      [OUTLINED_FUNCTION_17_29() postGDCCropDimensions];
      OUTLINED_FUNCTION_131_4();
      if (v20 == v21 && v19 >= 1)
      {
        [OUTLINED_FUNCTION_17_29() postGDCCropDimensions];
      }
    }
  }

  else
  {
    v23 = [objc_msgSend(v64 objectForKeyedSubscript:{*off_1E798C938), "intValue"}];
    if (v23 >= 1 && [objc_msgSend(v64 objectForKeyedSubscript:{*off_1E798C930), "intValue"}] >= 1)
    {
      [OUTLINED_FUNCTION_17_29() cropDimensionsWhenFESIsEnabled];
    }
  }

  if (*(v9 + 232) == v7)
  {
    v24 = [OUTLINED_FUNCTION_17_29() maxFrameRate];
    v26 = FigCaptureFrameRateAsInt(v24, v25);
    if (v26 <= [OUTLINED_FUNCTION_17_29() preferredPreviewMaxFrameRate])
    {
      v57 = 0;
    }

    else
    {
      v57 = [OUTLINED_FUNCTION_17_29() preferredPreviewMaxFrameRate];
    }

    LODWORD(v63) = [OUTLINED_FUNCTION_17_29() faceTrackingEnabled];
    v59 = [OUTLINED_FUNCTION_17_29() streamingForegroundSegmentationEnabled];
    v28 = [(BWMultiStreamCameraSourceNode *)v9 _calculatePreviewDimensionsForShiftMitigation];
    if (v65 && ![OUTLINED_FUNCTION_17_29() includeOverscanOnPreviewOutput])
    {
      [OUTLINED_FUNCTION_17_29() overscanForShiftMitigation];
      if (v39 <= 0.0)
      {
        [(BWMultiStreamCameraSourceNode *)v9 _totalAvailableOverscan];
        v58 = 0;
        HIDWORD(v63) = 0;
      }

      else
      {
        [OUTLINED_FUNCTION_17_29() sensorOverscan];
        [OUTLINED_FUNCTION_17_29() sensorOverscan];
        [(BWMultiStreamCameraSourceNode *)v9 _overscanWithFOVSacrifice];
        v58 = 0;
        HIDWORD(v63) = 0;
        v42 = OUTLINED_FUNCTION_56_1(v40, v41);
        *(v9 + 11816) = v42;
        *(v9 + 11824) = v42;
      }
    }

    else
    {
      v58 = 0;
      HIDWORD(v63) = 0;
      *(v9 + 11816) = [(BWMultiStreamCameraSourceNode *)v9 _totalAvailableOverscan];
      *(v9 + 11824) = v29;
    }
  }

  else
  {
    if (*(v9 + 240) == v7)
    {
      if ([*(v9 + 128) portraitAutoSuggestEnabled])
      {
        v27 = [OUTLINED_FUNCTION_17_29() faceTrackingEnabled];
      }

      else
      {
        v27 = 0;
      }

      HIDWORD(v63) = [OUTLINED_FUNCTION_17_29() videoStabilizationEnabled];
      LODWORD(v63) = v27;
      if ((![objc_msgSend(OUTLINED_FUNCTION_17_29() "videoStabilizationMethods")] || HIDWORD(v63)) && (objc_msgSend(OUTLINED_FUNCTION_17_29(), "cinematicFramingEnabled") & 1) == 0 && (objc_msgSend(OUTLINED_FUNCTION_17_29(), "deskCamEnabled") & 1) == 0)
      {
        [OUTLINED_FUNCTION_17_29() manualCinematicFramingEnabled];
      }
    }

    else
    {
      v63 = 0;
    }

    v30 = OUTLINED_FUNCTION_46_15();
    v28 = [(BWMultiStreamCameraSourceNode *)v31 _calculateVideoCaptureDimensionsWithVISOverscan:v30, v32];
    v58 = [OUTLINED_FUNCTION_17_29() visionDataConfiguration];
    [OUTLINED_FUNCTION_17_29() sensorOverscan];
    if ((v33 + 1.0) / (v6 + 1.0) + -1.0 >= 0.0)
    {
      [OUTLINED_FUNCTION_17_29() sensorOverscan];
    }

    [OUTLINED_FUNCTION_17_29() sensorOverscan];
    if ((v34 + 1.0) / (v5 + 1.0) + -1.0 >= 0.0)
    {
      [OUTLINED_FUNCTION_17_29() sensorOverscan];
    }

    v59 = 0;
    v57 = 0;
  }

  v35 = [objc_msgSend(v7 "videoFormat")];
  if (!v7)
  {
    if (*(v9 + 432 + (mscsn_streamOutputIndexForOutputID(v8) << 9) + 4))
    {
      v35 = [objc_msgSend(*(v9 + 248) "videoFormat")];
    }

    else
    {
      v54 = OUTLINED_FUNCTION_2_7();
      [(BWMultiStreamCameraSourceNode *)v54 _supportedPixelFormatsForOutputID:v55];
      v35 = FigCapturePixelFormatWithLeastAverageBandwidth(v56);
    }
  }

  v36 = v35;
  if (v65)
  {
    if ([v8 isEqualToString:*off_1E798CA80] && ((v37 = FigCapturePlatformIdentifier(), v37 < 8) || v37 == 8 && FigCapturePlatformChipRevisionIdentifier() <= 15))
    {
      v38 = FigCapturePixelFormatTileAlignment(v36);
    }

    else
    {
      v38 = 0;
    }

    [OUTLINED_FUNCTION_17_29() sensorCenterOffset];
    OUTLINED_FUNCTION_121_3();
    [OUTLINED_FUNCTION_17_29() roundingOfStillImageDimensionsToMultipleOfFourEnabled];
    OUTLINED_FUNCTION_1_19();
    OUTLINED_FUNCTION_120_3();
    mscsn_setScalerCropAndOutputDimensionsInConfiguration(v43, v44, v64, v45, v46, v28, v47, v38, v48, v49, v50, v51, v62 / v61, v60, v16);
  }

  [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v36), *off_1E798CA10}];
  if ([OUTLINED_FUNCTION_17_29() primaryScalerDecoupled])
  {
    v52 = *(v9 + 160);
  }

  else
  {
    v52 = 1;
  }

  if (FigCapturePlatformIdentifier() >= 7)
  {
    if (([v8 isEqualToString:*off_1E798CAB0] & 1) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  if (([v8 isEqualToString:*off_1E798CA80] & v52) == 1)
  {
LABEL_72:
    [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v57), *off_1E798CA00}];
  }

LABEL_73:
  if ([v8 isEqualToString:*off_1E798CA98])
  {
    [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", HIDWORD(v63)), *off_1E798CB48}];
  }

  if ([objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798CB50), "BOOLValue"}])
  {
    [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v16), *off_1E798CB40}];
  }

  if ([v8 isEqualToString:*off_1E798CAB0] && FigCapturePlatformIdentifier() >= 7)
  {
    [(BWMultiStreamCameraSourceNode *)v9 _scalerChainingEnabled];
    [v10 setObject:objc_msgSend(OUTLINED_FUNCTION_7() forKeyedSubscript:{"numberWithBool:"), *off_1E798CA28}];
  }

  if ([objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798CAE0), "BOOLValue"}])
  {
    [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v63), *off_1E798C9E8}];
  }

  if ([objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798CB38), "BOOLValue"}])
  {
    if (v58)
    {
      v53 = v58;
    }

    else
    {
      v53 = MEMORY[0x1E695E0F8];
    }

    [v10 setObject:v53 forKeyedSubscript:*off_1E798CA38];
  }

  if ([objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798CB28), "BOOLValue"}])
  {
    [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v59), *off_1E798CA30}];
  }

LABEL_89:
  OUTLINED_FUNCTION_145_0();
}

- (void)_overscanWithFOVSacrifice
{
  if (a1)
  {
    [OUTLINED_FUNCTION_1_107(a1) visOverscan];
    v2 = v1 + 1.0;
    [OUTLINED_FUNCTION_16_35() sensorOverscan];
    if (v2 / (v3 + 1.0) + -1.0 >= 0.0)
    {
      [OUTLINED_FUNCTION_16_35() visOverscan];
      [OUTLINED_FUNCTION_16_35() sensorOverscan];
    }

    [OUTLINED_FUNCTION_16_35() visOverscan];
    v5 = v4 + 1.0;
    [OUTLINED_FUNCTION_16_35() sensorOverscan];
    if (v5 / (v6 + 1.0) + -1.0 >= 0.0)
    {
      [OUTLINED_FUNCTION_16_35() visOverscan];
      [OUTLINED_FUNCTION_16_35() sensorOverscan];
    }
  }

  OUTLINED_FUNCTION_46_15();
}

- (void)_outputConfigurationsForAllOutputsWithVISOverscan:(double)a3
{
  if (!a1)
  {
    return 0;
  }

  v7 = [MEMORY[0x1E695DF90] dictionary];
  if (a2 != *MEMORY[0x1E695F060] || a3 != *(MEMORY[0x1E695F060] + 8))
  {
    [OUTLINED_FUNCTION_92_4() videoStabilizationEnabled];
  }

  if ([BWMultiStreamCameraSourceNode _shouldEnableStreamPreviewOutputForNodeOutput:a1])
  {
    OUTLINED_FUNCTION_46_15();
    [BWMultiStreamCameraSourceNode _outputConfigurationForStreamingOutputID:nodeOutput:visOverscan:];
    [OUTLINED_FUNCTION_114_3() setObject:? forKeyedSubscript:?];
  }

  if ([BWMultiStreamCameraSourceNode _shouldEnableStreamCaptureOutputForNodeOutput:a1])
  {
    OUTLINED_FUNCTION_46_15();
    [BWMultiStreamCameraSourceNode _outputConfigurationForStreamingOutputID:nodeOutput:visOverscan:];
    [OUTLINED_FUNCTION_114_3() setObject:0 forKeyedSubscript:0];
  }

  if ([(BWMultiStreamCameraSourceNode *)a1 _shouldEnableStillImageOutput])
  {
    [BWMultiStreamCameraSourceNode _outputConfigurationForStillImageOutputID:];
    [OUTLINED_FUNCTION_114_3() setObject:? forKeyedSubscript:?];
    if ([OUTLINED_FUNCTION_92_4() sensorRawStillImageOutputEnabled])
    {
      v27 = [*(a1 + 152) objectAtIndexedSubscript:*(a1 + 368)];
      v28 = [MEMORY[0x1E695DF90] dictionary];
      if ([objc_msgSend(v27 objectForKeyedSubscript:{*off_1E798C960), "BOOLValue"}])
      {
        [v28 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798C6B8];
      }

      [OUTLINED_FUNCTION_114_3() setObject:v28 forKeyedSubscript:?];
    }
  }

  if ([OUTLINED_FUNCTION_92_4() depthOutputEnabled])
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", 16), *off_1E798CA18}];
    [v7 setObject:v9 forKeyedSubscript:*off_1E798CA78];
  }

  if ([OUTLINED_FUNCTION_92_4() pointCloudOutputEnabled])
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
    [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(OUTLINED_FUNCTION_92_4(), "clientVideoFormat")), *off_1E798CA10}];
    [v7 setObject:v10 forKeyedSubscript:*off_1E798CA90];
  }

  v11 = *off_1E798CAB0;
  if ([objc_msgSend(OUTLINED_FUNCTION_61_9() objectForKeyedSubscript:{*off_1E798CA28), "BOOLValue"}])
  {
    v12 = MEMORY[0x1E695F058];
    v13 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
    v15 = [v7 objectForKeyedSubscript:*off_1E798CA98];
    v16 = OUTLINED_FUNCTION_61_9();
    if (v15)
    {
      v17 = v16;
      if (v16)
      {
        v18 = *(v12 + 16);
        rect.origin = *v12;
        rect.size = v18;
        v29.origin = rect.origin;
        v29.size = v18;
        v19 = [objc_msgSend(v15 objectForKeyedSubscript:{*off_1E798CA48), "intValue"}];
        v20 = [objc_msgSend(v15 objectForKeyedSubscript:{*off_1E798C9F8), "intValue"}];
        v21 = *off_1E798C9D8;
        CGRectMakeWithDictionaryRepresentation([v15 objectForKeyedSubscript:*off_1E798C9D8], &rect);
        CGRectMakeWithDictionaryRepresentation([v17 objectForKeyedSubscript:v21], &v29);
        v22 = (v29.origin.x - rect.origin.x) * (v19 / rect.size.width);
        if (v22 < 0.0)
        {
          v22 = 0.0;
        }

        v23 = (v29.origin.y - rect.origin.y) * (v20 / rect.size.height);
        if (v23 < 0.0)
        {
          v23 = 0.0;
        }

        v13 = (4 * llroundf(vcvts_n_f32_s32((v19 + v22 * -2.0), 2uLL)));
        OUTLINED_FUNCTION_122_3(v20 + v23 * -2.0);
        v14 = v24;
      }
    }

    if (v13 != 0.0 && v14 != 0.0)
    {
      OUTLINED_FUNCTION_72_5();
      v25 = CGRectCreateDictionaryRepresentation(v31);
      [objc_msgSend(OUTLINED_FUNCTION_27_0() objectForKeyedSubscript:{v11), "setObject:forKeyedSubscript:", v3, *off_1E798C9D8}];
      return v7;
    }

    if (!FigSignalErrorAtGM())
    {
      return v7;
    }

    return 0;
  }

  return v7;
}

- (void)_outputConfigurationsFilterCropRectAndDimensionsFromOutputConfigurations:(int)a3 includeStreamingOutputs:(int)a4 includeStillOutputs:
{
  if (!a1)
  {
    return 0;
  }

  v24 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [MEMORY[0x1E695DF70] array];
  if (a3)
  {
    v8 = *off_1E798CAB0;
    v30[0] = *off_1E798CA98;
    v30[1] = v8;
    v30[2] = *off_1E798CA80;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
    [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
  }

  if (a4)
  {
    v9 = *off_1E798CAC0;
    v29[0] = *off_1E798CAB8;
    v29[1] = v9;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
  }

  v10 = [a2 countByEnumeratingWithState:OUTLINED_FUNCTION_29_15() objects:? count:?];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    v23 = *off_1E798C9D8;
    v22 = *off_1E798CA48;
    v13 = *off_1E798C9F8;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(a2);
        }

        v15 = *(v27 + 8 * i);
        if ([v7 containsObject:v15])
        {
          v16 = v7;
          v17 = a2;
          v18 = [a2 objectForKeyedSubscript:v15];
          v19 = [MEMORY[0x1E695DF90] dictionary];
          [v19 setObject:objc_msgSend(v18 forKeyedSubscript:{"objectForKeyedSubscript:", v23), v23}];
          [v19 setObject:objc_msgSend(v18 forKeyedSubscript:{"objectForKeyedSubscript:", v22), v22}];
          v20 = v18;
          a2 = v17;
          v7 = v16;
          [v19 setObject:objc_msgSend(v20 forKeyedSubscript:{"objectForKeyedSubscript:", v13), v13}];
          [v24 setObject:v19 forKeyedSubscript:v15];
        }
      }

      v11 = [a2 countByEnumeratingWithState:v26 objects:v25 count:16];
    }

    while (v11);
  }

  return v24;
}

- (double)_maxISPZoomFactorForOutputConfiguration:(uint64_t)a1
{
  if (!a1)
  {
    return 0.0;
  }

  if (a2)
  {
    v4 = [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798CA48), "intValue"}];
    [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798C9F8), "intValue"}];
    v5 = [*(a1 + 152) objectAtIndexedSubscript:*(a1 + 368)];
    v6 = [objc_msgSend(v5 objectForKeyedSubscript:{*off_1E798C988), "intValue"}];
    [objc_msgSend(v5 objectForKeyedSubscript:{*off_1E798C980), "intValue"}];
    [OUTLINED_FUNCTION_22_21() sensorCropDimensions];
    OUTLINED_FUNCTION_131_4();
    if (v8 == v9 && v7 >= 1)
    {
      v6 = [OUTLINED_FUNCTION_22_21() sensorCropDimensions];
    }

    [objc_msgSend(objc_msgSend(*(a1 + 136) "nondisruptiveSwitchingZoomFactors")];
    if (*&result == 0.0)
    {
      [*(a1 + 136) baseZoomFactor];
    }

    *&result = (v6 / v4) * *&result;
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    LODWORD(result) = 1.0;
  }

  return result;
}

- (uint64_t)_finalPreviewOutputDimensions
{
  if (result)
  {
    v16 = 0;
    [*(result + 152) objectAtIndexedSubscript:*(result + 368)];
    [OUTLINED_FUNCTION_26_19() horizontalSensorBinningFactor];
    [OUTLINED_FUNCTION_26_19() verticalSensorBinningFactor];
    [OUTLINED_FUNCTION_26_19() fesBinningFactorHorizontal];
    [OUTLINED_FUNCTION_26_19() sensorCenterOffset];
    [OUTLINED_FUNCTION_26_19() preferredPreviewDimensions];
    [OUTLINED_FUNCTION_26_19() roundingOfStillImageDimensionsToMultipleOfFourEnabled];
    [OUTLINED_FUNCTION_26_19() geometricDistortionCorrectionOnPreviewOutputEnabled];
    OUTLINED_FUNCTION_72_5();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_129_3();
    mscsn_calculateScalerCropAndOutputDimensions(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, &v15, &v16);
    return v16;
  }

  return result;
}

- (void)_setPreviewShift:(double)a3 previewScaleFactor:(float)a4 previewShiftAtBaseZoom:(double)a5 ispAppliedZoomFactorForCaptureStream:(double)a6
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 12092));
    *(a1 + 12072) = a2;
    *(a1 + 12080) = a3;
    *(a1 + 12088) = a4;
    v12 = (a4 / a7);
    v13 = a2 * v12;
    v14 = a3 * v12;
    if (([OUTLINED_FUNCTION_65_7() overCaptureEnabled] & 1) != 0 || !objc_msgSend(OUTLINED_FUNCTION_65_7(), "parallaxMitigationBasedOnZoomFactorEnabled") || (objc_msgSend(OUTLINED_FUNCTION_39_16(), "previewShift"), vabdd_f64(v15, v13) > 0.01) || (objc_msgSend(OUTLINED_FUNCTION_39_16(), "previewShift"), vabdd_f64(v16, v14) > 0.01))
    {
      [OUTLINED_FUNCTION_39_16() setPreviewShift:{v13, v14}];
      OUTLINED_FUNCTION_39_16();
      v17 = OUTLINED_FUNCTION_46_15();
      [v18 setPreviewShiftAtBaseZoom:v17];
    }

    os_unfair_lock_unlock((a1 + 12092));
  }
}

- (uint64_t)_updateStreamOutputConfigurationsWithPowerOptimizedVISOverscanEnabled:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 240) || ([*(a1 + 128) adaptiveOverscanEnabled] & 1) == 0 || !*(a1 + 11784))
  {
    OUTLINED_FUNCTION_0_96();
    FigDebugAssert3();
    return 4294954516;
  }

  if (*(a1 + 11780) == a2)
  {
    return 0;
  }

  if (a2 && !*(a1 + 11792))
  {
    [*(a1 + 360) visOverscan];
    v7 = v6;
    [*(a1 + 360) visOverscan];
    v9 = v8;
    [*(a1 + 360) visOverscan];
    if (v7 >= v9)
    {
      v10 = v11;
    }

    v12 = [(BWMultiStreamCameraSourceNode *)a1 _outputConfigurationsForAllOutputsWithVISOverscan:v10, v10];
    *(a1 + 11792) = [(BWMultiStreamCameraSourceNode *)a1 _outputConfigurationsFilterCropRectAndDimensionsFromOutputConfigurations:v12 includeStreamingOutputs:1 includeStillOutputs:0];
  }

  v4 = [*(a1 + 144) setProperty:*off_1E798C280 value:?];
  if (v4)
  {
    OUTLINED_FUNCTION_0_6();
    FigDebugAssert3();
  }

  else
  {
    *(a1 + 11780) = a2;
  }

  return v4;
}

- (void)setPowerOptimizedVISOverscanEnabled:(BOOL)a3
{
  if (!self->_stopStreamConfigurationUpdates)
  {
    streamConfigurationQueue = self->_streamConfigurationQueue;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __69__BWMultiStreamCameraSourceNode_setPowerOptimizedVISOverscanEnabled___block_invoke;
    v4[3] = &unk_1E7990078;
    v4[4] = self;
    v5 = a3;
    dispatch_async(streamConfigurationQueue, v4);
  }
}

- (void)setAspectRatio:(int)a3
{
  if ([(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration dynamicAspectRatioEnabled])
  {
    if (dword_1ED8445B0)
    {
      v27 = 0;
      v26 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_40_7();
      if (v14)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        v9 = BWPortTypeToDisplayString(self->_portType, v6);
        v20 = 136315650;
        v21 = "[BWMultiStreamCameraSourceNode setAspectRatio:]";
        v22 = 2112;
        v23 = v9;
        v24 = 2112;
        v25 = BWAspectRatioToShortString(a3);
        OUTLINED_FUNCTION_2_1();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_56_0();
    }

    [(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration visOverscan];
    v12 = v11;
    v13 = v10;
    size.width = v11;
    size.height = v10;
    v14 = v11 == *MEMORY[0x1E695F060] && v10 == *(MEMORY[0x1E695F060] + 8);
    if (!v14)
    {
      [(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration visOverscanByAspectRatio];
      BWAspectRatioToShortString(a3);
      v15 = [OUTLINED_FUNCTION_7() objectForKeyedSubscript:?];
      if (v15)
      {
        CGSizeMakeWithDictionaryRepresentation(v15, &size);
      }

      else
      {
        if (v12 >= v13)
        {
          v16 = v13;
        }

        else
        {
          v16 = v12;
        }

        size.width = v16;
        size.height = v16;
      }
    }

    os_unfair_lock_lock(&self->_dynamicAspectRatioLock);
    self->_dynamicAspectRatioChangePending = 1;
    self->_aspectRatio = a3;
    self->_dynamicAspectRatioVISOverscan = size;
    os_unfair_lock_unlock(&self->_dynamicAspectRatioLock);
    if ([(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration adaptiveSensorCropForDynamicAspectRatioEnabled])
    {
      [(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration setPreferredPreviewDimensions:FigCaptureConvertDimensionsForAspectRatio([(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration preferredPreviewDimensions], a3)];
      [(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration setVideoCaptureDimensions:FigCaptureConvertDimensionsForAspectRatio([(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration videoCaptureDimensions], a3)];
      [(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration setCropAspectRatio:FigCaptureGetAspectRatioFractionalDimensionsForAspectRatio(a3)];
      v17 = [(BWMultiStreamCameraSourceNode *)self _outputConfigurationsForAllOutputsWithVISOverscan:size.height];
      v18 = [(BWMultiStreamCameraSourceNode *)self _outputConfigurationsFilterCropRectAndDimensionsFromOutputConfigurations:v17 includeStreamingOutputs:1 includeStillOutputs:1];
      if ([(BWFigCaptureStream *)self->_stream setProperty:*off_1E798C280 value:v18])
      {
        OUTLINED_FUNCTION_1_5();
        FigDebugAssert3();
      }

      else
      {
        os_unfair_lock_lock(&self->_dynamicAspectRatioLock);

        self->_dynamicAspectRatioOutputConfigurations = v18;
        os_unfair_lock_unlock(&self->_dynamicAspectRatioLock);
      }
    }
  }
}

- (BWPixelBufferPool)_allocateOrReuseBufferPoolsFromSourceNodeOutput:(uint64_t)a3 forAttachedMedia:(uint64_t)a4 onNodeOutput:(void *)a5 outputConfiguration:(char)a6 shareBufferPools:
{
  if (!result)
  {
    return result;
  }

  p_isa = &result->super.isa;
  v11 = [objc_msgSend(a5 objectForKeyedSubscript:{*off_1E798C9C8), "intValue"}];
  if (a6)
  {
    v12 = [objc_msgSend(a2 mediaPropertiesForAttachedMediaKey:{a3), "preparedPixelBufferPool"}];
    v13 = [OUTLINED_FUNCTION_40() mediaPropertiesForAttachedMediaKey:?];
    if (v12)
    {
      [(BWPixelBufferPool *)v12 setCapacity:[(BWPixelBufferPool *)v12 capacity]+ v11];
      goto LABEL_8;
    }
  }

  else
  {
    v13 = [OUTLINED_FUNCTION_40() mediaPropertiesForAttachedMediaKey:?];
  }

  v14 = [objc_msgSend(a5 objectForKeyedSubscript:{*off_1E798CA10), "intValue"}];
  v15 = [v13 resolvedVideoFormat];
  if (v14 != [v15 pixelFormat])
  {
    OUTLINED_FUNCTION_0_96();
    FigDebugAssert3();
    v12 = 0;
    goto LABEL_9;
  }

  v16 = [v13 resolvedRetainedBufferCount] + v11;
  v17 = [BWPixelBufferPool alloc];
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@_BufferPool", BWPortTypeToDisplayString(p_isa[27], v18), a3];
  v12 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:](v17, "initWithVideoFormat:capacity:name:memoryPool:", v15, v16, a3, [OUTLINED_FUNCTION_18_0() memoryPool]);
  if (!v12)
  {
    OUTLINED_FUNCTION_0_96();
    FigDebugAssert3();
    goto LABEL_9;
  }

LABEL_8:
  [v13 setNodePreparedPixelBufferPool:v12];
LABEL_9:

  return v12;
}

- (void)updateFormatRequirementsFromSourceNode:(id)a3
{
  if (a3)
  {
    if (FigCapturePlatformSupportsHTPC16x8Compression())
    {
      v5 = 1;
    }

    else
    {
      v5 = FigCapturePlatformSupportsUniversalCompression() != 0;
    }

    v21 = v5;
    p_nodeOutput = &self->_outputsStorage[0].nodeOutput;
    v7 = -22;
    do
    {
      if (*(p_nodeOutput - 7) == 1)
      {
        v8 = [(BWNodeOutput *)*p_nodeOutput formatRequirements];
        OUTLINED_FUNCTION_133_4();
        if (v9)
        {
          v10 = [a3 previewOutput];
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_133_4();
        if (v9)
        {
          v10 = [a3 videoCaptureOutput];
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_133_4();
        if (v9)
        {
          v10 = [a3 stillImageOutput];
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_133_4();
        if (v9)
        {
          v10 = [a3 lightSourceMaskOutput];
LABEL_16:
          v11 = [v10 formatRequirements];
          if (v11)
          {
            v12 = v11;
            v13 = [v11 width];
            if (v13 >= -[BWFormatRequirements width](v8, "width") || (v14 = [v12 height], v14 > -[BWFormatRequirements height](v8, "height")))
            {
              v15 = [(BWFormatRequirements *)v8 height];
              v16 = [(BWFormatRequirements *)v8 width];
              v17 = [v12 height];
              v18 = [v12 width];
              [OUTLINED_FUNCTION_85_0() setHeight:?];
              [OUTLINED_FUNCTION_39() setWidth:?];
              if (v7 == -19)
              {
                v19 = ![(BWMultiStreamCameraSourceNodeConfiguration *)self->_configuration geometricDistortionCorrectionOnStillImageOutputEnabled];
              }

              else
              {
                v19 = 0;
              }

              if (v21)
              {
                [(BWFormatRequirements *)v8 supportedPixelFormats];
                v22[0] = MEMORY[0x1E69E9820];
                v22[1] = 3221225472;
                v22[2] = __72__BWMultiStreamCameraSourceNode_updateFormatRequirementsFromSourceNode___block_invoke;
                v22[3] = &__block_descriptor_49_e35_B24__0__NSNumber_8__NSDictionary_16l;
                v22[4] = (v18 - v16) >> 1;
                v22[5] = (v17 - v15) >> 1;
                v23 = v19;
                [MEMORY[0x1E696AE18] predicateWithBlock:v22];
                [OUTLINED_FUNCTION_7() filteredArrayUsingPredicate:?];
                [OUTLINED_FUNCTION_8() setSupportedPixelFormats:?];
              }
            }
          }
        }
      }

      p_nodeOutput += 64;
    }

    while (!__CFADD__(v7++, 1));
  }
}

- (void)_addCaptureStreamAttachmentsToSampleBuffer:(uint64_t)a1
{
  if (a1)
  {
    v3 = CMGetAttachment(target, *off_1E798A3C8, 0);
    [v3 setObject:*(a1 + 216) forKeyedSubscript:*off_1E798B540];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *(a1 + 224)), *off_1E798B238}];
    if (*(a1 + 12146) == 1)
    {
      v4 = OUTLINED_FUNCTION_61_9();
      if (v4)
      {
        v8 = *MEMORY[0x1E695EFF8];
        CGPointMakeWithDictionaryRepresentation(v4, &v8);
        v5 = vaddq_f64(*(a1 + 12152), v8);
        v8 = v5;
        y = v5.y;
        DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v5);
        [OUTLINED_FUNCTION_27_1() setObject:? forKeyedSubscript:?];
      }
    }
  }
}

- (void)_prefetchPixelBufferForOutputStorage:(int)a3 numberOfBuffersToFetch:(int)a4 lastEmittedSurfaceID:
{
  if (a1 && *(a2 + 9) == 1 && (*(a2 + 104) & 1) == 0)
  {
    v8 = *(a2 + 16);
    if (v8)
    {
      v9 = [v8 livePixelBufferPool];
      if (!v9)
      {
        return;
      }
    }

    else
    {
      v9 = *(a2 + 96);
      if (!v9)
      {
        return;
      }
    }

    v10 = *(a1 + 184);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __114__BWMultiStreamCameraSourceNode__prefetchPixelBufferForOutputStorage_numberOfBuffersToFetch_lastEmittedSurfaceID___block_invoke;
    block[3] = &unk_1E7991EF8;
    block[4] = v9;
    block[5] = a2;
    v12 = a3;
    v13 = a4;
    dispatch_async(v10, block);
  }
}

- (void)_reflectStillSampleBufferOnStreamingOutputs:(int)a3 captureType:
{
  if (!a1)
  {
    goto LABEL_26;
  }

  v3 = sbuf;
  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  [*(a1 + 360) bravoShiftMitigationMaxZoomFactor];
  v5 = 0;
  v6 = 432;
  v7 = (a1 + 436);
  while (v7[5] != 1 || (*v7 & 2) == 0)
  {
    ++v5;
    v7 += 512;
    if (v5 == 22)
    {
      v5 = 0;
      break;
    }
  }

  v8 = 0;
  v9 = 0;
  v10 = a1 + 432 + (v5 << 9);
  v11 = *(v10 + 16);
  while (1)
  {
    if (*(a1 + v6 + 9) == 1 && *(a1 + v6) == 1)
    {
      v12 = a1 + v6;
      if ((*(a1 + v6 + 4) & 2) == 0)
      {
        break;
      }
    }

    ++v9;
    v8 += 512;
    v6 += 512;
    if (v9 == 3)
    {
      target = 0;
      v13 = 0;
      v14 = *(v10 + 128);
      v15 = *(v10 + 168);
      LODWORD(v9) = -1;
      v16 = 1.0;
      v45 = 1;
      v17 = v14;
LABEL_13:
      v18 = *(v10 + 16);
      v49 = 1;
      goto LABEL_14;
    }
  }

  v13 = *(v12 + 16);
  v17 = *(v10 + 128);
  v14 = *(v12 + 128);
  v15 = *(v10 + 168);
  v16 = *(v12 + 168);
  if (!v13)
  {
    target = 0;
    v45 = 1;
    goto LABEL_13;
  }

  v43 = v3;
  v32 = [v11 liveFormat];
  v33 = [v13 liveFormat];
  v34 = [v32 width];
  v46 = v33;
  target = v13;
  if (v34 >= [v33 width])
  {
    v45 = 0;
    v49 = 1;
    v18 = v11;
    v3 = v43;
  }

  else
  {
    v35 = [v32 height];
    v3 = v43;
    if (v35 >= [v46 height])
    {
      v45 = 0;
      v49 = 1;
      v13 = target;
      v18 = v11;
    }

    else
    {
      v45 = 0;
      v49 = 0;
      v36 = a1 + 432 + v8;
      v17 = *(v36 + 128);
      v37 = a1 + 432 + (v5 << 9);
      v14 = *(v37 + 128);
      v15 = *(v36 + 168);
      v16 = *(v37 + 168);
      v13 = v11;
      v18 = target;
    }
  }

LABEL_14:
  v19 = [*(a1 + 128) smartFramingEnabled];
  ScaledAndZoomedSampleBufferFromSampleBuffer = mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer(v3, ImageBuffer, a3, [v18 livePixelBufferPool], v17, v19 ^ 1u, (a1 + 12016), (a1 + 12024), *(a1 + 11896), *(a1 + 11904), v15);
  if (!ScaledAndZoomedSampleBufferFromSampleBuffer)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
LABEL_26:
    OUTLINED_FUNCTION_147_1();
    return;
  }

  v21 = ScaledAndZoomedSampleBufferFromSampleBuffer;
  if (!v13)
  {
    v26 = 0;
    v27 = v49;
LABEL_20:
    v50 = v27;
    if (v27)
    {
      v28 = v21;
    }

    else
    {
      v28 = v26;
    }

    v29 = *MEMORY[0x1E695E4D0];
    CMSetAttachment(v28, @"IsHarvestedStillFrame", *MEMORY[0x1E695E4D0], 1u);
    v30 = OUTLINED_FUNCTION_1_19();
    [(BWMultiStreamCameraSourceNode *)v30 _addMetadataUsedByVideoEncoderToPixelBufferForSampleBuffer:v31 nodeOutput:v11];
    mscsn_removeNonpropagatedAttachmentsFromReflectedStreamingFrame(v28);
    [OUTLINED_FUNCTION_125_3() emitSampleBuffer:?];
    CMSampleBufferGetPresentationTimeStamp(&v51, v28);
    *(a1 + 432 + (v5 << 9) + 56) = v51;
    if ((v45 & 1) == 0)
    {
      if (v50)
      {
        v38 = v26;
      }

      else
      {
        v38 = v21;
      }

      CMSetAttachment(target, @"IsHarvestedStillFrame", v29, 1u);
      v39 = OUTLINED_FUNCTION_1_19();
      [(BWMultiStreamCameraSourceNode *)v39 _addMetadataUsedByVideoEncoderToPixelBufferForSampleBuffer:v40 nodeOutput:target];
      mscsn_removeNonpropagatedAttachmentsFromReflectedStreamingFrame(v38);
      [OUTLINED_FUNCTION_125_3() emitSampleBuffer:?];
      CMSampleBufferGetPresentationTimeStamp(&v51, v38);
      *(a1 + 432 + (v9 << 9) + 56) = v51;
    }

    CFRelease(v21);
    if (v26)
    {
      CFRelease(v26);
    }

    goto LABEL_26;
  }

  if (v13 == *(a1 + 232))
  {
    v22 = MEMORY[0x1E695F060];
  }

  else
  {
    v22 = (a1 + 11896);
  }

  v24 = *v22;
  v23 = v22[1];
  v25 = CMSampleBufferGetImageBuffer(ScaledAndZoomedSampleBufferFromSampleBuffer);
  v26 = mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer(v21, v25, a3, [v13 livePixelBufferPool], v14, v19 ^ 1u, (a1 + 12032), (a1 + 12040), v24, v23, v16);
  v27 = v49;
  if (v26)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_147_1();

  CFRelease(v41);
}

- (void)_addMetadataUsedByVideoEncoderToPixelBufferForSampleBuffer:(uint64_t)a3 nodeOutput:
{
  if (a1)
  {
    OUTLINED_FUNCTION_54();
    ImageBuffer = CMSampleBufferGetImageBuffer(v6);
    if (*(v3 + 240) == a3 && ([*(v3 + 360) videoEncoderMetadataOnVideoCaptureOutputEnabled] & 1) != 0)
    {
      v8 = &OBJC_IVAR___BWMultiStreamCameraSourceNode__videoCaptureOutputColorInfo;
    }

    else
    {
      if (*(v3 + 232) != a3 || ![*(v3 + 360) videoEncoderMetadataOnPreviewOutputEnabled])
      {
        return;
      }

      v8 = &OBJC_IVAR___BWMultiStreamCameraSourceNode__previewOutputColorInfo;
    }

    FigCaptureMetadataUtilitiesAddSampleBufferMetadataUsedByVideoEncoderToPixelBuffer(v4);
    v9 = *(v3 + *v8);

    CVBufferSetAttachments(ImageBuffer, v9, kCVAttachmentMode_ShouldPropagate);
  }
}

- (uint64_t)_preserveMotionDataForSoonToBeDroppedSampleBuffer:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    result = [*(v3 + 360) reflectsStillsOnStreamingOutputs];
    if (result)
    {
      if (![*(v2 + 136) synchronizedStreamsEnabled] || (v4 = OUTLINED_FUNCTION_4_3(), result = objc_msgSend(objc_msgSend(CMGetAttachment(v4, v5, v6), "objectForKeyedSubscript:", *off_1E798B710), "BOOLValue"), result))
      {
        v7 = *(v2 + 11760);

        return [v7 preserveMotionDataForSoonToBeDroppedSampleBuffer:v1];
      }
    }
  }

  return result;
}

- (uint64_t)_prependPreservedMotionDataToSampleBuffer:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    result = [*(v3 + 360) reflectsStillsOnStreamingOutputs];
    if (result)
    {
      if (![*(v2 + 136) synchronizedStreamsEnabled] || (v4 = OUTLINED_FUNCTION_4_3(), result = objc_msgSend(objc_msgSend(CMGetAttachment(v4, v5, v6), "objectForKeyedSubscript:", *off_1E798B710), "BOOLValue"), result))
      {
        v7 = *(v2 + 11760);

        return [v7 prependPreservedMotionDataToSampleBuffer:v1];
      }
    }
  }

  return result;
}

- (CMSampleBufferRef)_createDepthDataSampleBufferFromVideoSampleBuffer:(CMSampleBufferRef)result
{
  if (result)
  {
    v3 = result;
    v18 = 0;
    v4 = *off_1E798A328;
    v5 = CMGetAttachment(target, *off_1E798A328, 0);
    if (v5)
    {
      v6 = v5;
      v7 = [v5 objectForKeyedSubscript:*(v3 + 392)];
      if (v7)
      {
        if (BWCMSampleBufferCreateCopyWithNewPixelBuffer(target, v7, (v3 + 384), &v18))
        {
          OUTLINED_FUNCTION_1_5();
          FigDebugAssert3();
        }

        else
        {
          if ([v6 count] >= 2)
          {
            v8 = [v6 mutableCopy];
            [v8 setObject:0 forKeyedSubscript:*(v3 + 392)];
            [MEMORY[0x1E695DF20] dictionaryWithDictionary:v8];
            v9 = OUTLINED_FUNCTION_8();
            CMSetAttachment(v9, v4, v10, 1u);
          }

          v11 = *off_1E798A3C8;
          v12 = OUTLINED_FUNCTION_70();
          [MEMORY[0x1E695DF90] dictionaryWithDictionary:{CMGetAttachment(v12, v13, 0)}];
          v14 = OUTLINED_FUNCTION_7();
          CMSetAttachment(v14, v11, v15, 1u);
        }
      }
    }

    v16 = OUTLINED_FUNCTION_3_19();
    CMRemoveAttachment(v16, v17);
    return v18;
  }

  return result;
}

- (CMAttachmentBearerRef)_createFocusPixelDataSampleBufferFromVideoSampleBuffer:(CMAttachmentBearerRef)result
{
  if (result)
  {
    v3 = result;
    targeta = 0;
    v4 = *off_1E798A388;
    v5 = CMGetAttachment(target, *off_1E798A388, 0);
    if (v5)
    {
      v6 = v5;
      v7 = *off_1E798AD90;
      v8 = [v5 objectForKeyedSubscript:*off_1E798AD90];
      if (v8)
      {
        if (!BWCMSampleBufferCreateCopyWithNewPixelBuffer(target, v8, (v3 + 416), &targeta))
        {
          CMRemoveAttachment(targeta, v4);
          v9 = *off_1E798A3C8;
          v10 = CMGetAttachment(target, *off_1E798A3C8, 0);
          CMSetAttachment(targeta, v9, [MEMORY[0x1E695DF90] dictionaryWithDictionary:v10], 1u);
          v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v6];
          [v11 setObject:0 forKeyedSubscript:v7];
          CMSetAttachment(targeta, v4, v11, 1u);

          goto LABEL_6;
        }

        OUTLINED_FUNCTION_1_5();
      }

      else
      {
        OUTLINED_FUNCTION_0();
      }

      FigDebugAssert3();
    }

LABEL_6:
    v12 = OUTLINED_FUNCTION_3_19();
    CMRemoveAttachment(v12, v13);
    return targeta;
  }

  return result;
}

- (void)_propagatePixelBufferAttachment:(int)a3 sampleBuffer:(int)a4 attachedMediaKey:(int)a5 removeAttachmentKey:(int)a6 resetValidBufferRect:(int)a7
{
  if (a1)
  {
    OUTLINED_FUNCTION_25_10();
    a17 = v18;
    a18 = v19;
    v21 = v20;
    v23 = v22;
    cf = 0;
    target = 0;
    if (!BWCMSampleBufferCreateCopyWithNewPixelBuffer(v25, v24, &cf, &target))
    {
      if (v23)
      {
        CMRemoveAttachment(target, v23);
      }

      v26 = BWCMSampleBufferCopyReattachAndReturnMutableMetadata(target);
      if (v21)
      {
        [v26 setObject:objc_msgSend(v26 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B790), *off_1E798B7A0}];
      }

      v27 = OUTLINED_FUNCTION_17_26();
      BWSampleBufferSetAttachedMedia(v27, v28, v29);
    }

    if (target)
    {
      CFRelease(target);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v23)
    {
      v30 = OUTLINED_FUNCTION_44();
      CMRemoveAttachment(v30, v31);
    }

    OUTLINED_FUNCTION_24_12();
  }
}

uint64_t __59__BWMultiStreamCameraSourceNode__markEndOfLiveOnAllOutputs__block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_113_3(*(a1 + 32));
  *(*(v2 + 48) + 8) = 0;
  [(BWMultiStreamCameraSourceNode *)*(v2 + 32) _stopAndReleaseFrameCounterForOutputIndexIfNecessary:?];
  v3 = [(BWMultiStreamCameraSourceNode *)*(a1 + 32) _nodeOutputsMadeLiveByStreamOutputIndex:?];
  OUTLINED_FUNCTION_43();
  result = [v4 countByEnumeratingWithState:? objects:? count:?];
  if (result)
  {
    v6 = result;
    v7 = MEMORY[0];
    do
    {
      v8 = 0;
      do
      {
        if (MEMORY[0] != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(8 * v8);
        if (v9 == *(*(a1 + 48) + 16) || ([*(a1 + 40) containsObject:*(8 * v8)] & 1) == 0)
        {
          if ([v9 liveFormat])
          {
            [v9 markEndOfLiveOutput];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      OUTLINED_FUNCTION_43();
      result = OUTLINED_FUNCTION_37(v10, v11, v12, v13);
      v6 = result;
    }

    while (result);
  }

  return result;
}

- (BOOL)_serviceZoomForPTS:(uint64_t)a1 synchronizedStreamsCaptureID:
{
  if (a1)
  {
    v2 = [OUTLINED_FUNCTION_65_7() overCaptureEnabled];
    v3 = *(a1 + 128);
    if (v2)
    {
      [v3 zoomCommandHandler];
      v4 = OUTLINED_FUNCTION_86_6();
      v4.n128_u32[0] = 1.0;
      [v5 updateZoomModelAndAppliedZoomFactorForNextFrameWithPTS:v4.n128_f64[0] captureID:? delayedISPAppliedZoomFactor:?];
    }

    else
    {
      if ([v3 depthType] == 3 && !objc_msgSend(*(a1 + 216), "isEqualToString:", *off_1E798A0C0))
      {
        return a1 != 0;
      }

      [OUTLINED_FUNCTION_65_7() zoomCommandHandler];
      *&v7 = OUTLINED_FUNCTION_86_6().n128_u64[0];
      [v8 updateZoomModelForNextFrameWithPTS:v7 captureID:?];
    }

    if (v6 >= 1.0)
    {
      [*(a1 + 136) fudgedBaseZoomFactorForAspectRatio:{objc_msgSend(OUTLINED_FUNCTION_65_7(), "aspectRatio")}];
      v10 = v9;
      v11 = *(a1 + 11776);
      [OUTLINED_FUNCTION_39_16() baseZoomFactor];
      if ((v10 / v12) + -1.0 >= v11)
      {
        [OUTLINED_FUNCTION_39_16() baseZoomFactor];
        v13 = (v10 / v14) + -1.0;
      }

      else
      {
        v13 = *(a1 + 11776);
      }

      OUTLINED_FUNCTION_124_4(v13);
      [OUTLINED_FUNCTION_65_7() setISPZoomFactor:? totalZoomFactor:?];
    }
  }

  return a1 != 0;
}

- (void)_updateZoomForOutputIndex:sampleBuffer:additionalScaleFactor:deliverSushiRaw:
{
  OUTLINED_FUNCTION_6_4();
  v429 = v8;
  if (v4)
  {
    v9 = v7;
    v10 = v6;
    v11 = v5;
    v12 = v4;
    v13 = BWPixelBufferDimensionsFromSampleBuffer(v6);
    v14 = HIDWORD(v13);
    v15 = OUTLINED_FUNCTION_4_3();
    v18 = CMGetAttachment(v15, v16, v17);
    FigCaptureMetadataUtilitiesGetValidBufferRect();
    OUTLINED_FUNCTION_128_3();
    v452.x = v19;
    v452.y = v20;
    v453 = v21;
    v454 = v22;
    v434 = v13;
    v23 = v13;
    v24 = SHIDWORD(v13);
    FigCaptureMetadataUtilitiesNormalizeCropRect(v19, v20, v21, v22);
    rect1.origin.x = v25;
    v27 = v26;
    v430 = v28;
    v432 = v29;
    SensorReadoutRect = FigCaptureMetadataUtilitiesGetSensorReadoutRect();
    v423 = v31;
    v425 = SensorReadoutRect;
    RawSensorDimensions = FigCaptureMetadataUtilitiesGetRawSensorDimensions(v18);
    v33 = MEMORY[0x1E695F058];
    v34 = v12 + 432 + (v11 << 9);
    v428 = *(v12 + 240);
    v35 = *(v34 + 16);
    v36 = *(v12 + 232);
    if ((*(v34 + 4) & 2) != 0)
    {
      v419 = *(v34 + 16);
      v421 = RawSensorDimensions;
      v417 = *(v12 + 232);
      v38 = [v18 objectForKeyedSubscript:*off_1E798B708];
      if (v38)
      {
        [v38 intValue];
      }

      CMSampleBufferGetPresentationTimeStamp(v447, v10);
      v37 = ![BWMultiStreamCameraSourceNode _serviceZoomForPTS:v12 synchronizedStreamsCaptureID:?];
      v34 = v12 + 432 + (v11 << 9);
      v36 = v417;
      v35 = v419;
      RawSensorDimensions = v421;
    }

    else
    {
      LOBYTE(v37) = 1;
    }

    if (v18)
    {
      v418 = v36;
      v420 = v35;
      v383 = v33[3];
      v384 = v33[2];
      v388 = v33[1];
      v389 = *v33;
      v422 = RawSensorDimensions;
      v385 = HIDWORD(RawSensorDimensions);
      v39 = 1.0;
      v40 = 1.0;
      v402 = v23;
      v405 = v27;
      if ((*(v34 + 4) & 4) == 0)
      {
LABEL_20:
        v412 = v40;
        v414 = v39;
        [OUTLINED_FUNCTION_15_34() additionalVISOverscanReservedInZoom];
        v49 = v48;
        [OUTLINED_FUNCTION_15_34() additionalVISOverscanReservedInZoom];
        v407 = v50;
        v51 = OUTLINED_FUNCTION_17_26();
        v416 = [(BWMultiStreamCameraSourceNode *)v51 _ispAppliedZoomFactorFromSampleBufferMetadataDictionary:v52 outputIndex:v11];
        v54 = *(v34 + 128);
        v53 = *(v34 + 132);
        if (v11 == 5)
        {
          v55 = *(v34 + 132);
          v56 = [*(v12 + 216) isEqualToString:*off_1E798A0E8];
          v53 = v56 ? v55 : v385;
          if (!v56)
          {
            v54 = v422;
          }
        }

        v403 = v53;
        if (v54 >= 1 && v54 < v434)
        {
          v58 = FigCaptureUnityRect();
          v62 = v403;
        }

        else
        {
          v58 = FigCaptureUnityRect();
          v411 = v60;
          v393 = v61;
          v62 = v403;
          if (v403 < 1 || v403 >= v14)
          {
            goto LABEL_41;
          }
        }

        v64 = v2 == *MEMORY[0x1E695EFF8] && v3 == *(MEMORY[0x1E695EFF8] + 8);
        v411 = v54 / v23;
        v393 = v62 / v24;
        if (!v64)
        {
          v59 = (1.0 - v62 / v24) * 0.5;
          v58 = (1.0 - v54 / v23) * 0.5;
        }

LABEL_41:
        v369 = v59;
        v370 = v58;
        v368 = *v34;
        v401 = v11;
        if (*v34 == 1)
        {
          if ([OUTLINED_FUNCTION_15_34() geometricDistortionCorrectionOnVideoCaptureOutputEnabled])
          {
            v65 = 1;
          }

          else
          {
            v65 = [OUTLINED_FUNCTION_15_34() geometricDistortionCorrectionOnPreviewOutputEnabled];
          }
        }

        else
        {
          v65 = 0;
        }

        v66 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
        v67 = 1.0;
        v392 = v24;
        v379 = v54;
        if ([OUTLINED_FUNCTION_18_26() hasFocus] && !v401 && v65)
        {
          v68 = [*(v12 + 128) adaptiveOverscanEnabled];
          v69 = v403;
          v70 = v54;
          if (v68)
          {
            v399 = v49;
            v71 = *off_1E798CA98;
            [objc_msgSend(objc_msgSend(*(v12 + 11792) objectForKeyedSubscript:{*off_1E798CA98), "objectForKeyedSubscript:", *off_1E798CA48), "floatValue"}];
            v73 = v72;
            [objc_msgSend(objc_msgSend(*(v12 + 11792) objectForKeyedSubscript:{v71), "objectForKeyedSubscript:", *off_1E798C9F8), "floatValue"}];
            v75 = v74;
            v76 = v73 / v74;
            v77 = *(MEMORY[0x1E695F050] + 16);
            *&v447[0].a = *MEMORY[0x1E695F050];
            *&v447[0].c = v77;
            if (FigCFDictionaryGetCGRectIfPresent())
            {
              c = v447[0].c;
              d = v447[0].d;
            }

            else
            {
              FigCaptureRectFromDimensions();
            }

            v80 = c / d;
            v70 = v73;
            v69 = v75;
            if (vabds_f32(v54 / v403, v80) <= vabds_f32(v76, v80))
            {
              v69 = v403;
              v70 = v54;
            }

            v49 = v399;
            v66 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
          }

          v81 = v70 / v0;
          if (v81 <= v69 / v1)
          {
            v81 = v69 / v1;
          }

          v67 = v81;
          if ([objc_msgSend(OUTLINED_FUNCTION_18_26() "nondisruptiveSwitchingZoomFactors")])
          {
            if ([objc_msgSend(v18 objectForKeyedSubscript:{*off_1E798B588), "intValue"}] == 2)
            {
              [OUTLINED_FUNCTION_18_26() baseZoomFactor];
              if ((v67 / v82) > 1.2)
              {
                [OUTLINED_FUNCTION_18_26() baseZoomFactorAfterGDC];
                v67 = v83;
              }
            }
          }

          [OUTLINED_FUNCTION_18_26() baseZoomFactorAfterGDC];
          if (v84 != v67 && ([OUTLINED_FUNCTION_15_34() proResRawCaptureEnabled] & 1) == 0)
          {
            v85 = OUTLINED_FUNCTION_18_26();
            *&v86 = v67;
            [v85 setBaseZoomFactorAfterGDC:v86];
            [*(v12 + 128) updateFudgedZoomRanges];
          }
        }

        v87 = v66;
        v371 = v65;
        v88 = [*(v12 + 128) overCaptureEnabled];
        v89 = [v18 objectForKeyedSubscript:*off_1E798B710];
        v90 = [v89 BOOLValue];
        v372 = v89;
        v64 = v89 == 0;
        v91 = v88;
        if (v64)
        {
          v92 = 1;
        }

        else
        {
          v92 = v90;
        }

        if (((v37 | v88) & 1) == 0 && v92)
        {
          v93 = [OUTLINED_FUNCTION_58_13() zoomCommandHandler];
          *&v94 = v416;
          [v93 updateAppliedZoomFactorForDelayedISPAppliedZoomFactor:v94];
        }

        [objc_msgSend(OUTLINED_FUNCTION_58_13() "zoomCommandHandler")];
        v400 = v95;
        v96 = *(v12 + v87[621]);
        v396 = v9;
        if (v96 == [OUTLINED_FUNCTION_58_13() bravoTelephotoCaptureStream] && objc_msgSend(OUTLINED_FUNCTION_58_13(), "bravoStreamSelectionConfiguration") == 3)
        {
          v97 = v67;
          [*(v12 + v87[621]) baseZoomFactor];
          if (v400 <= v98)
          {
            [*(v12 + v87[621]) baseZoomFactor];
            v400 = v99;
          }
        }

        else
        {
          v97 = v67;
        }

        v100 = [OUTLINED_FUNCTION_58_13() depthDataDeliveryEnabled];
        if (!(v88 & 1 | (([OUTLINED_FUNCTION_58_13() isBravoVariant] & 1) == 0)) && (!v100 || objc_msgSend(OUTLINED_FUNCTION_58_13(), "parallaxMitigationBasedOnZoomFactorEnabled")))
        {
          [OUTLINED_FUNCTION_58_13() updateSphereShiftStateWithSampleBuffer:v10];
        }

        v101 = 1.0;
        v102 = 1.0;
        if ((v88 & (v97 > 1.0)) == 1)
        {
          *&v101 = v97;
          [MEMORY[0x1E696AD98] numberWithFloat:v101];
          v103 = OUTLINED_FUNCTION_17();
          CMSetAttachment(v103, @"ZoomFactorLowerBoundAfterGDCAndFocus", v104, 1u);
        }

        v105 = v414 * (v49 + 1.0);
        v415 = v412 * (v407 + 1.0);
        [v18 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_87_5(), "zoomCommandHandler"), "rampTuning")), *off_1E798A958}];
        v106 = [OUTLINED_FUNCTION_87_5() optimizesZoomRampsForVISZoomSmoothing];
        v108 = v420 == v428 || v420 == v418;
        v413 = v105;
        if (!v106 || !v108)
        {
          goto LABEL_99;
        }

        v109 = v415;
        if (v105 < v415)
        {
          v109 = v105;
        }

        v110 = v109;
        v408 = 1.0 / v110;
        [objc_msgSend(OUTLINED_FUNCTION_91_8() "zoomCommandHandler")];
        v112 = v111;
        v113 = [OUTLINED_FUNCTION_91_8() zoomCommandHandler];
        if (v112 == 1.0)
        {
          [v113 allowableMinimumDigitalZoomFactorDuringZoomOut];
          v115 = OUTLINED_FUNCTION_91_8();
          if (v116 == 1.0)
          {
            v102 = 1.0;
            if ([v115 isBravoVariant])
            {
              if ([*(v12 + 216) isEqualToString:*off_1E798A0D0])
              {
                if ([objc_msgSend(v18 objectForKeyedSubscript:{*off_1E798B588), "intValue"}] == 1)
                {
                  [objc_msgSend(*(v12 + 128) "captureStream")];
                  v217 = v216;
                  [objc_msgSend(OUTLINED_FUNCTION_85_0() "objectForKeyedSubscript:"floatValue"")];
                  v219 = v217 / v218;
                  v102 = 1.0;
                  if (v219 < 1.0)
                  {
                    [objc_msgSend(*(v12 + 128) "captureStream")];
                    v221 = v220;
                    [objc_msgSend(OUTLINED_FUNCTION_85_0() "objectForKeyedSubscript:"floatValue"")];
                    v102 = v221 / v222;
                  }
                }
              }
            }

            goto LABEL_97;
          }

          [objc_msgSend(v115 "zoomCommandHandler")];
        }

        else
        {
          [v113 earlySwitchOverScaleFactorForZoomIn];
        }

        v102 = v114;
LABEL_97:
        if (v102 <= v408)
        {
          v102 = v408;
        }

LABEL_99:
        if ((v400 / v416) <= v102)
        {
          v117 = v102;
        }

        else
        {
          v117 = v400 / v416;
        }

        v118 = v117 * v396;
        if (v396 <= 0.0)
        {
          v118 = v117;
        }

        v119 = v118;
        v120 = fmin(1.0 / v105 / v119, 1.0);
        v121 = fmin(1.0 / v415 / v119, 1.0);
        v123 = *MEMORY[0x1E695EFF8];
        v122 = *(MEMORY[0x1E695EFF8] + 8);
        v373 = 1.0;
        v124 = v120 < 1.0 || v121 < 1.0;
        v374 = *MEMORY[0x1E695EFF8];
        v375 = *(MEMORY[0x1E695EFF8] + 8);
        if (v124)
        {
          v390 = (1.0 - v120) * 0.5;
          v391 = (1.0 - v121) * 0.5;
          if ((v88 & 1) != 0 || [*(v12 + 128) parallaxMitigationBasedOnZoomFactorEnabled])
          {
            os_unfair_lock_lock((v12 + 12092));
            v243 = *(v12 + 12080);
            v410 = *(v12 + 12072);
            v244 = *(v12 + 12088);
            os_unfair_lock_unlock((v12 + 12092));
            [BWMultiStreamCameraSourceNode _applyNondisruptiveSwitchingZoomFactorAndSensorCenterOffsetToPreviewShift:v12 forSampleBuffer:v410 outputIndex:v243];
            OUTLINED_FUNCTION_120_3();
            v376 = v245;
            v378 = v246;
            v373 = v244;
            v390 = mscsn_applyPreviewShiftToCropRect(v247, v248, v249, v250, v245, v246, v244);
            v391 = v251;
            v386 = v253;
            v387 = v252;
          }

          else
          {
            v376 = v123;
            v378 = v122;
            v386 = v121;
            v387 = v120;
          }
        }

        else
        {
          v376 = *MEMORY[0x1E695EFF8];
          v378 = *(MEMORY[0x1E695EFF8] + 8);
          v386 = v383;
          v387 = v384;
          v390 = v389;
          v391 = v388;
        }

        v125 = [OUTLINED_FUNCTION_87_5() aspectRatio];
        v126 = [OUTLINED_FUNCTION_87_5() smartFramingConfiguredFieldOfView];
        if ([OUTLINED_FUNCTION_87_5() smartFramingEnabled] && v126)
        {
          [v18 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v126), *off_1E798A8A8}];
          [objc_msgSend(objc_msgSend(*(v12 + 128) "sensorOrientationByPortType")];
          IsSensorMountedInPortraitOrientation = FigCaptureSourceIsSensorMountedInPortraitOrientation(v127);
          v125 = BWSmartFramingSceneMonitorAspectRatioFromFieldOfView(v126, IsSensorMountedInPortraitOrientation);
        }

        v129 = v411 * v120;
        v130 = v125;
        v131 = BWAspectRatioValueFromAspectRatio(v125);
        v409 = v393 * v121;
        v381 = v131;
        if (v125)
        {
          v120 = v131;
          OUTLINED_FUNCTION_72_5();
          FigCaptureMetadataUtilitiesDenormalizeCropRect(v132, v133, v134, v135);
          if (vabdd_f64(v120, v138 / v139) >= 0.001)
          {
            v120 = v136;
            v398 = v137;
            v142 = FigCaptureConvertDimensionsForAspectRatio(v138 | (v139 << 32), v125);
            FigCaptureMetadataUtilitiesNormalizeCropRect(v120, v398, v142, SHIDWORD(v142));
            v413 = v413 * (v129 / v143);
            v415 = v415 * (v409 / v144);
            v409 = v144;
            v397 = v143;
          }

          else
          {
            v397 = v129;
          }

          v140 = v405;
          x = rect1.origin.x;
          if (*v34 == 2)
          {
            v145 = OUTLINED_FUNCTION_48_14();
            FigCaptureMetadataUtilitiesRectByCroppingRectToAspectRatio(v145, v146, v147, v148, v149);
            OUTLINED_FUNCTION_128_3();
            FigCaptureNormalizeCropRect(v150, v151, v152, v153);
            x = v154;
            v140 = v155;
            v430 = v156;
            v432 = v157;
            v452.x = v2;
            v452.y = v3;
            v453 = v0;
            v454 = v1;
          }
        }

        else
        {
          v397 = v411 * v120;
          v140 = v405;
          x = rect1.origin.x;
        }

        if ([OUTLINED_FUNCTION_26_19() sensorOutputLargerThanImageCircle])
        {
          rect1.origin.x = x;
          *&rect1.origin.y = *MEMORY[0x1E695EFF8];
          v451 = *MEMORY[0x1E695F060];
          if (v368 != 1)
          {
            v371 = [OUTLINED_FUNCTION_26_19() geometricDistortionCorrectionOnStillImageOutputEnabled] & (v429 ^ 1);
          }

          v225 = OUTLINED_FUNCTION_44();
          [(BWMultiStreamCameraSourceNode *)v225 _getImageCircleFromSampleBuffer:v226 outputIndex:v227 gdcEnabled:v371 imageCircleCenterOut:v228 imageCircleRadiusOut:v229];
          v455.x = FigCaptureTransformNormalizedPointFromCoordinateSpaceOfNormalizedRect(rect1.origin.y, rect1.size.width, v370, v369, v411);
          *&rect1.origin.y = v455;
          v451.width = v411 * v451.width;
          v451.height = v393 * v451.height;
          v230 = CGPointCreateDictionaryRepresentation(v455);
          v231 = CGSizeCreateDictionaryRepresentation(v451);
          v232 = *off_1E798A700;
          v449[0] = *off_1E798A6F8;
          v449[1] = v232;
          v450[0] = v230;
          v450[1] = v231;
          [v18 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v450, v449, 2), *off_1E798A6F0}];
          if (v381 == 0.0)
          {
            FigCaptureAspectRatioForDimensions(v379 | (v403 << 32));
          }

          v233 = OUTLINED_FUNCTION_48_14();
          v238 = FigCaptureMetadataUtilitiesRectByCroppingRectToAspectRatio(v233, v234, v235, v236, v237);
          v240 = v239;
          v404 = v241;
          v394 = v242;
          memset(v447, 0, 48);
          v130 = v125;
          if (v401 == 5)
          {
            CGAffineTransformMakeTranslation(v447, -v425, -v423);
          }

          else
          {
            v276 = *(MEMORY[0x1E695EFD0] + 16);
            *&v447[0].a = *MEMORY[0x1E695EFD0];
            *&v447[0].c = v276;
            *&v447[0].tx = *(MEMORY[0x1E695EFD0] + 32);
          }

          FigCaptureDenormalizePoint(v434, rect1.origin.y);
          FigCaptureRectMidPoint(v238, v240, v404, v394);
          OUTLINED_FUNCTION_121_3();
          OUTLINED_FUNCTION_120_3();
          FigCaptureGetDistanceBetweenPoints(v277, v278, v279, v280);
          OUTLINED_FUNCTION_56_1(v451.width * v402, v451.height * v392);
          OUTLINED_FUNCTION_120_3();
          *&v120 = FigCaptureGetDistanceBetweenPoints(v281, v282, v283, v284);
          [OUTLINED_FUNCTION_88_5() fudgedBaseZoomFactorForAspectRatio:v125];
          OUTLINED_FUNCTION_35_3();
          if (v285)
          {
            v158 = 1;
          }

          else
          {
            v158 = 0;
          }

          if (v285)
          {
            v120 = v286;
            v458.origin.x = v390;
            v458.origin.y = v391;
            v458.size.width = v387;
            v458.size.height = v386;
            if (CGRectIsEmpty(v458))
            {
              v287 = FigCaptureUnityRect();
            }

            else
            {
              v290 = v386;
              v287 = v390;
              v288 = v391;
              v289 = v387;
            }

            v397 = v397 * v120;
            v409 = v409 * v120;
            v390 = FigCaptureMetadataUtilitiesScaleRect(v287, v288, v289, v290, v120);
            v391 = v291;
            v386 = v293;
            v387 = v292;
          }

          x = rect1.origin.x;
        }

        else
        {
          v158 = 0;
        }

        if (v429)
        {
          v159 = [OUTLINED_FUNCTION_26_19() sushiRawDimensions];
          if (v159 >= 1 && SHIDWORD(v159) >= 1)
          {
            rect1.origin.x = x;
            FigCaptureMakeCenteredRectWithDimensionsInsideDimensions(v159, v422);
            OUTLINED_FUNCTION_121_3();
            if (v130)
            {
              v163 = v161;
              v164 = v162;
              v165 = BWAspectRatioValueFromAspectRatio(v130);
              FigCaptureMetadataUtilitiesRectByCroppingRectToAspectRatio(v120, v140, v163, v164, v165);
              OUTLINED_FUNCTION_121_3();
            }

            FigCaptureNormalizeCropRect(v120, v140, v161, v162);
            FigCaptureMetadataUtilitiesNormalizedBufferRectFromNormalizedSensorRect(v18, v434, v166, v167, v168, v169);
            v172 = v397 <= v170 && v409 <= v171;
            x = rect1.origin.x;
            if (!v172)
            {
              v158 = 1;
              v409 = v171;
              v397 = v170;
            }
          }
        }

        if (*v34 == 2 && [*(v12 + 216) isEqualToString:*off_1E798A0D0] && objc_msgSend(OUTLINED_FUNCTION_88_5(), "activeStillImageCaptureType") == 13)
        {
          v173 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters softISPCropDimensionsForOptimizedLearnedFusionForSuperwide];
          if (v173.var0 >= 1 && v173.var1 >= 1)
          {
            v175 = OUTLINED_FUNCTION_48_14();
            v179 = FigCaptureRectMidPoint(v175, v176, v177, v178);
            v180 = FigCaptureNormalizePoint(v434, v179);
            v452.x = FigCaptureMetadataUtilitiesDenormalizedRectWithinBoundingDimensionsCenteredOnPoint(v434, v173.var0, v180);
            v452.y = v181;
            v453 = v182;
            v454 = v183;
            FigCaptureNormalizeCropRect(v452.x, v181, v182, v183);
            x = v184;
            v140 = v185;
            v430 = v186;
            v432 = v187;
          }
        }

        width = v397;
        v189 = v409;
        if (v397 > v430 || v409 > v432)
        {
          v191 = OUTLINED_FUNCTION_46_15();
          FigCaptureMetadataUtilitiesRectWithAspectRatioInsideDimensions(v191, v192, v193);
          width = v194;
          v189 = v195;
        }

        if (width < 1.0 || v189 < 1.0)
        {
          v426 = x + (v430 - width) * 0.5;
          rect1.origin.x = x;
          if (([OUTLINED_FUNCTION_26_19() geometricDistortionCorrectionOnVideoCaptureOutputEnabled] & 1) != 0 || objc_msgSend(OUTLINED_FUNCTION_26_19(), "geometricDistortionCorrectionOnPreviewOutputEnabled"))
          {
            if (v401 == 5)
            {
              if (*(v12 + 12169) == 1)
              {
                [objc_msgSend(*(v12 + 128) "cameraInfoByPortType")];
                v2 = v140 + (v432 - v189) * 0.5;
                OUTLINED_FUNCTION_41_12();
                v406 = v198;
                FigCaptureMetadataUtilitiesNormalizedRectEnforcedWithinValidRegionAfterGDC(v200, v201, v202, v203, x, v198, v430, v432, v199, v18, v434);
                v204 = v457.origin.x;
                y = v457.origin.y;
                v206 = width;
                width = v457.size.width;
                height = v457.size.height;
                v463.origin.x = v426;
                v463.origin.y = v2;
                v463.size.width = v206;
                v463.size.height = v189;
                if (CGRectEqualToRect(v457, v463))
                {
                  width = v206;
                  y = v140 + (v432 - v189) * 0.5;
                  v204 = v426;
                  v207 = v413;
                  v140 = v406;
                }

                else
                {
                  if (dword_1ED8445B0)
                  {
                    LODWORD(v451.width) = 0;
                    v448 = OS_LOG_TYPE_DEFAULT;
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    width_low = LODWORD(v451.width);
                    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v448);
                    OUTLINED_FUNCTION_40_7();
                    if (v64)
                    {
                      v258 = v257;
                    }

                    else
                    {
                      v258 = width_low;
                    }

                    v140 = v406;
                    if (v258)
                    {
                      v395 = BWPortTypeToDisplayString(*(v12 + 216), v256);
                      v259 = *off_1E798CAD0;
                      v2 = v426;
                      OUTLINED_FUNCTION_72_5();
                      v382 = BWStringFromCGRect(v260, v261, v262, v263);
                      OUTLINED_FUNCTION_72_5();
                      FigCaptureMetadataUtilitiesDenormalizeCropRect(v264, v265, v266, v267);
                      v427 = BWStringFromCGRect(v268, v269, v270, v271);
                      v380 = BWStringFromCGRect(v204, y, width, height);
                      FigCaptureMetadataUtilitiesDenormalizeCropRect(v204, y, width, height);
                      LODWORD(rect1.origin.y) = 136316931;
                      *(&rect1.origin.y + 4) = "[BWMultiStreamCameraSourceNode _updateZoomForOutputIndex:sampleBuffer:additionalScaleFactor:deliverSushiRaw:]";
                      WORD2(rect1.size.width) = 2113;
                      *(&rect1.size.width + 6) = v395;
                      HIWORD(rect1.size.height) = 2113;
                      v436 = v259;
                      v437 = 2114;
                      v438 = v382;
                      v439 = 2114;
                      v440 = v427;
                      v441 = 2114;
                      v442 = v380;
                      v443 = 2114;
                      v444 = BWStringFromCGRect(v272, v273, v274, v275);
                      v445 = 2114;
                      v446 = BWStillImageSampleBufferToShortDisplayString(v10);
                      LODWORD(v367) = 82;
                      p_y = &rect1.origin.y;
                      OUTLINED_FUNCTION_13();
                      _os_log_send_and_compose_impl();
                    }

                    v207 = v413;
                    OUTLINED_FUNCTION_2_4();
                    OUTLINED_FUNCTION_56_0();
                  }

                  else
                  {
                    v207 = v413;
                    v140 = v406;
                  }

                  v189 = height;
                }
              }

              else
              {
                v207 = v413;
                if (dword_1ED8445B0)
                {
                  LODWORD(v451.width) = 0;
                  v448 = OS_LOG_TYPE_DEFAULT;
                  v209 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v210 = LODWORD(v451.width);
                  os_log_type_enabled(v209, v448);
                  OUTLINED_FUNCTION_40_7();
                  if (!v64)
                  {
                    v211 = v210;
                  }

                  v204 = v426;
                  if (v211)
                  {
                    OUTLINED_FUNCTION_41_12();
                    LODWORD(rect1.origin.y) = 136315394;
                    *(&rect1.origin.y + 4) = "[BWMultiStreamCameraSourceNode _updateZoomForOutputIndex:sampleBuffer:additionalScaleFactor:deliverSushiRaw:]";
                    WORD2(rect1.size.width) = 2114;
                    *(&rect1.size.width + 6) = BWStringFromCGRect(v212, v213, v214, v215);
                    LODWORD(v367) = 22;
                    p_y = &rect1.origin.y;
                    OUTLINED_FUNCTION_13();
                    _os_log_send_and_compose_impl();
                  }

                  OUTLINED_FUNCTION_2_4();
                  OUTLINED_FUNCTION_56_0();
                  y = v140 + (v432 - v189) * 0.5;
                }

                else
                {
                  y = v140 + (v432 - v189) * 0.5;
                  v204 = v426;
                }
              }
            }

            else
            {
              y = v140 + (v432 - v189) * 0.5;
              v204 = x + (v430 - width) * 0.5;
              v207 = v413;
            }

            if (v429 && v158)
            {
              OUTLINED_FUNCTION_9_53();
              FigCFDictionarySetCGRect();
              [objc_msgSend(*(v12 + 128) "cameraInfoByPortType")];
              v294 = OUTLINED_FUNCTION_9_53();
              FigCaptureMetadataUtilitiesNormalizedRectEnforcedWithinValidRegionAfterGDC(v294, v296, v297, v298, v204, y, width, v189, v295, v18, v434);
              OUTLINED_FUNCTION_106_5();
            }

            else
            {
              v2 = y;
            }
          }

          else
          {
            v207 = v413;
            v2 = v140 + (v432 - v189) * 0.5;
          }

          if (v401 == 5 || v401 == 3)
          {
            v300 = OUTLINED_FUNCTION_4_3();
            if (CMGetAttachment(v300, v301, v302))
            {
              v303 = MEMORY[0x1E696AD98];
              [objc_msgSend(*(v12 + 128) "zoomCommandHandler")];
              [v18 setObject:objc_msgSend(v303 forKeyedSubscript:{"numberWithFloat:"), *off_1E798A540}];
            }
          }

          if (v401 != 5 || v422 < 1 || v385 < 1)
          {
            goto LABEL_227;
          }

          [*(v12 + 360) sensorCropDimensions];
          OUTLINED_FUNCTION_131_4();
          if (v318 == v319 && v320 >= 1 && v207 == 1.0 && v415 == 1.0)
          {
            v324 = ([*(v12 + 360) sensorCropDimensions] / v422);
            [*(v12 + 360) sensorCropDimensions];
            OUTLINED_FUNCTION_41_12();
            FigCaptureMetadataUtilitiesScaleRect2D(v325, v326, v327, v328, v324);
            OUTLINED_FUNCTION_106_5();
          }

          [*(v12 + 360) sensorCenterOffset];
          v64 = v197 == v374;
          HIDWORD(v197) = HIDWORD(v375);
          if (v64 && v329 == v375)
          {
LABEL_227:
            v306 = v140;
          }

          else
          {
            v306 = v140;
            v197 = *(v12 + 11936);
            if (v197 != *MEMORY[0x1E695F060] || *(v12 + 11944) != *(MEMORY[0x1E695F060] + 8))
            {
              [*(v12 + 360) sensorCenterOffset];
              FigCaptureMetadataUtilitiesNormalizePoint(v332, v333, v422);
              OUTLINED_FUNCTION_41_12();
              v460 = CGRectOffset(v459, v334, v335);
              v464.origin.x = v460.origin.x;
              v336 = v460.origin.y;
              v337 = v460.size.width;
              v338 = v460.size.height;
              v460.origin.x = rect1.origin.x;
              v460.origin.y = v306;
              v460.size.width = v430;
              v460.size.height = v432;
              v464.origin.y = v336;
              v464.size.width = v337;
              v464.size.height = v338;
              if (CGRectContainsRect(v460, v464))
              {
                v189 = v338;
                width = v337;
                v2 = v336;
              }
            }
          }

          if (v88)
          {
            if ([*(v12 + 360) applyPreviewShiftToStillImage])
            {
              v307 = v401 == 5 || v401 == 3;
              v208 = v413;
              if (v307)
              {
                v308 = OUTLINED_FUNCTION_9_53();
                mscsn_applyPreviewShiftToCropRect(v308, v309, v310, v311, v376, v378, v373);
                width = v312;
                [*(v12 + 360) sensorOverscan];
              }

              else if (v376 != v374 || v378 != v375)
              {
                v456.x = v376 * v373;
                v456.y = v378 * v373;
                DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v456);
                [v18 setObject:DictionaryRepresentation forKeyedSubscript:@"PreviewShiftForIrisStillImageMovieMetadataCache"];
                CMSetAttachment(v10, @"PreviewShift", DictionaryRepresentation, 1u);
              }
            }

            else
            {
              v208 = v413;
            }
          }

          else
          {
            *&v197 = v400;
            v208 = v413;
            if (v400 <= 1.0 || ([OUTLINED_FUNCTION_26_19() bravoShiftMitigationMaxZoomFactor], *&v197 <= 1.0))
            {
              if ([*(v12 + 128) stereoVideoCaptureEnabled])
              {
                if ([v372 BOOLValue])
                {
                  v447[0].a = 0.0;
                  v447[0].b = 0.0;
                  if (!BWStereoUtilitiesComputeCenterShiftForPrimaryStream(*(v12 + 216), *off_1E798A0D0, [*(v12 + 128) cameraInfoByPortType], v10, &v452, v447))
                  {
                    v362 = rect1.origin.x + v430;
                    v431 = FigCaptureMetadataUtilitiesNormalizePoint(v447[0].a, v447[0].b, v402);
                    v363 = v306 + v432;
                    v364 = v306 + v432 - v189;
                    v433 = v365;
                    OUTLINED_FUNCTION_56_1(v364, v2 + v365);
                    v462.origin.y = v391;
                    v462.origin.x = v390;
                    v462.size.width = v387;
                    v462.size.height = v386;
                    v466.origin.y = v388;
                    v466.origin.x = v389;
                    v466.size.height = v383;
                    v466.size.width = v384;
                    if (!CGRectEqualToRect(v462, v466))
                    {
                      OUTLINED_FUNCTION_56_1(v362 - v387, v390 + v431);
                      OUTLINED_FUNCTION_56_1(v363 - v386, v391 + v433);
                    }

                    v208 = v413;
                  }
                }
              }
            }

            else
            {
              if (v420 == v418 || ([OUTLINED_FUNCTION_26_19() previewOutputEnabled] & 1) == 0 && v420 == v428)
              {
                OUTLINED_FUNCTION_44();
                [BWMultiStreamCameraSourceNode _bravoShiftMitigationCropOffset:totalZoom:totalConfiguredOverscan:totalAvailableOverscan:];
                v377 = v313;
                v378 = v314;
                [objc_msgSend(v18 objectForKeyedSubscript:{*off_1E798B508), "floatValue"}];
                if (v315 == 0.0)
                {
                  v316 = 1.0;
                }

                else
                {
                  v316 = v315;
                }

                [OUTLINED_FUNCTION_88_5() baseZoomFactor];
                [(BWMultiStreamCameraSourceNode *)v12 _setPreviewShift:v378 / v316 previewScaleFactor:1.0 previewShiftAtBaseZoom:v374 ispAppliedZoomFactorForCaptureStream:v375, v416 / (v316 * v317)];
              }

              OUTLINED_FUNCTION_56_1(1.0 - v189, v2 + v378);
            }
          }

          v339 = OUTLINED_FUNCTION_9_53();
          FigCaptureMetadataUtilitiesDenormalizeCropRect(v339, v340, v341, v342);
          v465.origin.x = v343;
          v465.origin.y = v344;
          v465.size.width = v345;
          v465.size.height = v346;
          v461.origin = v452;
          v461.size.width = v453;
          v461.size.height = v454;
          if (!CGRectContainsRect(v461, v465))
          {
            OUTLINED_FUNCTION_0();
            OUTLINED_FUNCTION_2_5();
            FigDebugAssert3();
          }

          OUTLINED_FUNCTION_9_53();
          FigCFDictionarySetCGRect();
          OUTLINED_FUNCTION_9_53();
          FigCFDictionarySetCGRect();
        }

        else
        {
          v208 = v413;
        }

        if (v91)
        {
          [OUTLINED_FUNCTION_88_5() baseZoomFactorAfterGDC];
          OUTLINED_FUNCTION_35_3();
          if (!(!v64 & v349))
          {
            v347 = v348;
          }

          v350 = v347;
          v351 = v415;
          if (v208 > v415)
          {
            v351 = v208;
          }

          v352 = v351;
          v353 = 1.0 / v352 / v350;
          if (v353 >= 1.0)
          {
            v353 = 1.0;
          }

          *&v353 = v353;
          [MEMORY[0x1E696AD98] numberWithFloat:{v353, p_y, v367}];
          v354 = OUTLINED_FUNCTION_17();
          CMSetAttachment(v354, @"FinalCropRectScaleFactorAtBaseZoom", v355, 1u);
        }

        v356 = v411 / v208;
        v357 = v356 / width;
        *&v357 = v357;
        *&v357 = v416 * *&v357;
        [MEMORY[0x1E696AD98] numberWithFloat:{v357, p_y, v367}];
        v358 = OUTLINED_FUNCTION_17();
        CMSetAttachment(v358, @"TotalZoomFactor", v359, 1u);
        *(v34 + 168) = v416;
        goto LABEL_5;
      }

      [OUTLINED_FUNCTION_15_34() visOverscan];
      v43 = v42;
      v44 = v41;
      if (*v34 == 2)
      {
        if (([OUTLINED_FUNCTION_15_34() includeOverscanInStillImageFinalCropRect] & 1) == 0 && !objc_msgSend(OUTLINED_FUNCTION_15_34(), "stillImageGeometricDistortionCorrectionExpansionCoversOverscan"))
        {
          v47 = *(v12 + 11936);
          v46 = *(v12 + 11944);
          v223 = *(MEMORY[0x1E695F060] + 8);
          v224 = v47 == *MEMORY[0x1E695F060];
          if (v46 != v223)
          {
            v224 = 0;
          }

          if (v11 != 5 || v224)
          {
            v47 = *(v12 + 11896);
            v46 = *(v12 + 11904);
            if (v47 == *MEMORY[0x1E695F060] && v46 == v223)
            {
              v46 = v44;
              v47 = v43;
            }
          }

          goto LABEL_19;
        }

        v45 = MEMORY[0x1E695F060];
      }

      else
      {
        if (v420 != v418)
        {
          v46 = v41;
          v47 = v43;
          goto LABEL_19;
        }

        v45 = (v12 + 11816);
      }

      v47 = *v45;
      v46 = v45[1];
LABEL_19:
      v39 = v47 + 1.0;
      v40 = v46 + 1.0;
      v23 = v402;
      goto LABEL_20;
    }
  }

LABEL_5:
  OUTLINED_FUNCTION_5_5();
}

- (float)_ispAppliedZoomFactorFromSampleBufferMetadataDictionary:(int)a3 outputIndex:
{
  if (!a1)
  {
    return 0.0;
  }

  [*(a1 + 136) baseZoomFactor];
  v7 = v6;
  [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B508), "floatValue"}];
  OUTLINED_FUNCTION_35_3();
  if (!(v10 ^ v11 | v9))
  {
    v7 = v7 * v8;
    v12 = [*(a1 + 216) isEqualToString:*off_1E798A0D8];
    if (a3 == 3)
    {
      if (v12)
      {
        v22 = *(MEMORY[0x1E695F050] + 16);
        v23 = *MEMORY[0x1E695F050];
        v24 = *MEMORY[0x1E695F050];
        FigCFDictionaryGetCGRectIfPresent();
        FigCFDictionaryGetCGRectIfPresent();
        v25.origin = v24;
        v25.size = v22;
        if (!CGRectIsEmpty(v25))
        {
          v26.origin = v23;
          v26.size = v22;
          if (!CGRectIsEmpty(v26))
          {
            v13 = vdivq_f64(v22, v22);
            if (v13.f64[0] >= v13.f64[1])
            {
              v13.f64[0] = v13.f64[1];
            }

            v14 = v13.f64[0];
            v7 = v7 * v14;
          }
        }

        goto LABEL_34;
      }
    }
  }

  if (a3 != 2)
  {
    if (a3 == 1)
    {
      v15 = *off_1E798B638;
      if (!*off_1E798B638)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (a3)
      {
        goto LABEL_23;
      }

      v15 = *off_1E798B7B0;
      if (!*off_1E798B7B0)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_20;
  }

  v15 = *off_1E798B428;
  if (!OUTLINED_FUNCTION_61_9())
  {
    v15 = *off_1E798B7B0;
  }

  if (v15)
  {
LABEL_20:
    v16 = OUTLINED_FUNCTION_61_9();
    v17 = v16;
    if (v16)
    {
      [v16 floatValue];
      v7 = v7 * v18;
    }

    if (v15 == *off_1E798B638)
    {
      [a2 setObject:v17 forKeyedSubscript:*off_1E798B7B0];
      [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
      if (OUTLINED_FUNCTION_61_9())
      {
        [a2 setObject:OUTLINED_FUNCTION_61_9() forKeyedSubscript:*off_1E798B790];
        [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
      }

      if (OUTLINED_FUNCTION_61_9())
      {
        [a2 setObject:OUTLINED_FUNCTION_61_9() forKeyedSubscript:*off_1E798B328];
        [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
      }

      if (OUTLINED_FUNCTION_61_9())
      {
        [a2 setObject:OUTLINED_FUNCTION_61_9() forKeyedSubscript:*off_1E798B2D8];
        [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
      }
    }
  }

LABEL_23:
  if (a3 != 17)
  {
    if (a3 != 2)
    {
      goto LABEL_34;
    }

    if ([OUTLINED_FUNCTION_27_1() objectForKeyedSubscript:?])
    {
      [a2 setObject:objc_msgSend(OUTLINED_FUNCTION_27_1() forKeyedSubscript:{"objectForKeyedSubscript:"), *off_1E798B790}];
      [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
    }

    if ([OUTLINED_FUNCTION_27_1() objectForKeyedSubscript:?])
    {
      [a2 setObject:objc_msgSend(OUTLINED_FUNCTION_27_1() forKeyedSubscript:{"objectForKeyedSubscript:"), *off_1E798B328}];
      [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
    }

    if (![OUTLINED_FUNCTION_27_1() objectForKeyedSubscript:?])
    {
      goto LABEL_34;
    }

    v19 = [OUTLINED_FUNCTION_27_1() objectForKeyedSubscript:?];
    v20 = off_1E798B2D8;
    goto LABEL_33;
  }

  if ([OUTLINED_FUNCTION_27_1() objectForKeyedSubscript:?])
  {
    v19 = [OUTLINED_FUNCTION_27_1() objectForKeyedSubscript:?];
    v20 = off_1E798B790;
LABEL_33:
    [a2 setObject:v19 forKeyedSubscript:*v20];
    [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
  }

LABEL_34:
  if (*off_1E798B638)
  {
    [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
  }

  [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
  [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
  [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
  [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
  [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
  [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
  [a2 removeObjectForKey:*off_1E798B740];
  [a2 removeObjectForKey:*off_1E798B738];
  return v7;
}

- (void)_applyNondisruptiveSwitchingZoomFactorAndSensorCenterOffsetToPreviewShift:(uint64_t)a1 forSampleBuffer:(double)a2 outputIndex:(double)a3
{
  if (a1)
  {
    v4 = *MEMORY[0x1E695EFF8];
    v5 = *(MEMORY[0x1E695EFF8] + 8);
    if (a2 != *MEMORY[0x1E695EFF8] || a3 != v5)
    {
      OUTLINED_FUNCTION_136_2();
      v7 = CMGetAttachment(v3, *off_1E798A3C8, 0);
      if (v7)
      {
        v8 = v7;
        FigCaptureMetadataUtilitiesNormalizedSensorCenterOffsetInValidBufferRect(v3);
        [OUTLINED_FUNCTION_19_28() sensorCenterOffset];
        if (v10 != v4 || v9 != v5)
        {
          RawSensorDimensions = FigCaptureMetadataUtilitiesGetRawSensorDimensions(v8);
          [OUTLINED_FUNCTION_19_28() sensorCenterOffset];
          FigCaptureMetadataUtilitiesNormalizePoint(v13, v14, RawSensorDimensions);
        }

        [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798B508), "floatValue"}];
      }

      else
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
      }
    }
  }

  OUTLINED_FUNCTION_46_15();
}

- (void)_getImageCircleFromSampleBuffer:(uint64_t)a3 outputIndex:(int)a4 gdcEnabled:(float64x2_t *)a5 imageCircleCenterOut:(float64x2_t *)a6 imageCircleRadiusOut:
{
  if (a1)
  {
    if (a5 && a6)
    {
      v10 = [objc_msgSend(objc_msgSend(*(a1 + 128) "cameraInfoByPortType")];
      [v10 setObject:objc_msgSend(v10 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E7989ED0), *off_1E7989E68}];
      v11 = CMGetAttachment(a2, *off_1E798A3C8, 0);
      memset(v14, 0, sizeof(v14));
      if ([MEMORY[0x1E69916C0] getGDCParams:v14 cameraInfo:v10 metadata:v11])
      {
        OUTLINED_FUNCTION_1_5();
        FigDebugAssert3();
      }

      else
      {
        v12 = [objc_alloc(MEMORY[0x1E69916C0]) initWithGDCParams:v14];
        if (a4)
        {
          [v12 getValidRadiusAfterGDCInImageCoord];
        }

        else
        {
          [v12 getValidRadiusInImageCoord];
        }

        *a5 = vcvtq_f64_f32(*(v14 + 8));
        *a6 = vcvtq_f64_f32(v13);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      v10 = 0;
    }
  }
}

- (void)_bravoShiftMitigationCropOffset:totalZoom:totalConfiguredOverscan:totalAvailableOverscan:
{
  OUTLINED_FUNCTION_6_4();
  v124 = v6;
  if (v7)
  {
    v8 = v5;
    v9 = v4;
    v10 = v3;
    v11 = v2;
    OUTLINED_FUNCTION_136_2();
    v138 = *MEMORY[0x1E695EFF8];
    v137 = 0;
    v12 = *MEMORY[0x1E695EFF8];
    v13 = *(MEMORY[0x1E695EFF8] + 8);
    [*(v14 + 128) parallaxMitigationStrengthAndTargetCaptureStream:&v137];
    v16 = v15;
    if (([OUTLINED_FUNCTION_126_4() parallaxMitigationBasedOnZoomFactorEnabled] & 1) != 0 || v16 != 0.0)
    {
      v17 = [OUTLINED_FUNCTION_126_4() captureStreamsByFocalLength];
      v18 = [v17 indexOfObject:*(v0 + 136)];
      if ([v17 indexOfObject:v137] == v18 + 1)
      {
        v19 = CMGetAttachment(v1, *off_1E798A3C8, 0);
        ImageBuffer = CMSampleBufferGetImageBuffer(v1);
        Width = CVPixelBufferGetWidth(ImageBuffer);
        Height = CVPixelBufferGetHeight(ImageBuffer);
        CMSampleBufferGetPresentationTimeStamp(&v136, v1);
        Seconds = CMTimeGetSeconds(&v136);
        [OUTLINED_FUNCTION_18_26() opticalCenterOffsetInPhysicalSensorDimensions];
        v135.f64[0] = v24;
        v135.f64[1] = v25;
        [v137 opticalCenterOffsetInPhysicalSensorDimensions];
        v134.f64[0] = v26;
        v134.f64[1] = v27;
        v28 = [OUTLINED_FUNCTION_24_19() horizontalSensorBinningFactor];
        v29 = [OUTLINED_FUNCTION_24_19() verticalSensorBinningFactor];
        v30 = v135.f64[0] == v12 && v135.f64[1] == v13;
        if (v30)
        {
          OUTLINED_FUNCTION_0_96();
          OUTLINED_FUNCTION_2_5();
          FigDebugAssert3();
        }

        if (v134.f64[0] == v12 && v134.f64[1] == v13)
        {
          OUTLINED_FUNCTION_0_96();
          OUTLINED_FUNCTION_2_5();
          FigDebugAssert3();
        }

        v126 = Width;
        v127 = Height;
        bzero(v133, 0x200uLL);
        v32 = OUTLINED_FUNCTION_126_4();
        if (v32)
        {
          [v32 sphereShiftState];
        }

        else
        {
          bzero(v133, 0x280uLL);
        }

        v132 = 7;
        v128 = 0u;
        v129 = 0u;
        v130 = 0u;
        v131 = 0u;
        LODWORD(v117) = v29;
        if (FigMotionComputeWideToNarrowShift(v19, 0, [v137 portType], &v135, &v134, v126, v127, v28, Seconds, 0.0, 1.0, v117, &v132, v133, v138.f64, &v128))
        {
          OUTLINED_FUNCTION_1_5();
          goto LABEL_99;
        }

        if ([OUTLINED_FUNCTION_126_4() parallaxMitigationBasedOnZoomFactorEnabled])
        {
          v125 = v11;
          v120 = v10;
          v121 = v9;
          v122 = v8;
          v123 = v16;
          v33 = *(v0 + 11776) + 1.0;
          v34 = *(v0 + 12276);
          v35 = 1.0;
          v36 = v124;
          if (*(v0 + 12274) == 1)
          {
            [OUTLINED_FUNCTION_24_19() bravoShiftMitigationMaxZoomFactor];
            v35 = (v37 / v34);
          }

          if (v35 < 1.0)
          {
            v35 = 1.0;
          }

          v38 = v35;
          v39 = (v125 + -1.0) * (1.0 - *(v0 + 12264));
          v40 = v33 + -1.0;
          v118 = v38;
          v41 = v33 * v34;
          [OUTLINED_FUNCTION_24_19() bravoShiftMitigationMaxZoomFactor];
          v42 = v41;
          if (v41 >= v43)
          {
            [OUTLINED_FUNCTION_24_19() bravoShiftMitigationMaxZoomFactor];
            v42 = v44;
          }

          v45 = *(v0 + 136);
          v119 = v39 / (v38 * (v125 + -1.0 + 1.0 + v40) + -1.0);
          if (*(v0 + 12272) == 1)
          {
            [objc_msgSend(objc_msgSend(v45 "nondisruptiveSwitchingZoomFactors")];
            v47 = v46;
            if (v46 == 0.0)
            {
              [OUTLINED_FUNCTION_18_26() baseZoomFactor];
              v47 = v48;
            }

            v49 = v124 - v47;
            [OUTLINED_FUNCTION_24_19() bravoShiftMitigationMaxZoomFactor];
            if (((v124 - v47) / (v50 - v47)) > 1.0 || ([OUTLINED_FUNCTION_24_19() bravoShiftMitigationMaxZoomFactor], v52 = 0.0, (v49 / (v51 - v47)) >= 0.0))
            {
              [OUTLINED_FUNCTION_24_19() bravoShiftMitigationMaxZoomFactor];
              v52 = 1.0;
              if ((v49 / (v53 - v47)) <= 1.0)
              {
                [OUTLINED_FUNCTION_24_19() bravoShiftMitigationMaxZoomFactor];
                v52 = v49 / (v54 - v47);
              }
            }

            v55 = v49 / (v42 - v47);
            v56 = 0.0;
            if (v55 >= 0.0)
            {
              v56 = v49 / (v42 - v47);
            }

            if (v55 > v38)
            {
              v57 = v38;
            }

            else
            {
              v57 = v56;
            }

            v36 = v124;
          }

          else
          {
            [v45 baseZoomFactor];
            [OUTLINED_FUNCTION_24_19() bravoShiftMitigationMaxZoomFactor];
            [OUTLINED_FUNCTION_18_26() baseZoomFactor];
            OUTLINED_FUNCTION_116_4(v58);
            OUTLINED_FUNCTION_35_3();
            if (!(v59 ^ v60 | v30) || ([OUTLINED_FUNCTION_18_26() baseZoomFactor], objc_msgSend(OUTLINED_FUNCTION_24_19(), "bravoShiftMitigationMaxZoomFactor"), objc_msgSend(OUTLINED_FUNCTION_18_26(), "baseZoomFactor"), v52 = 0.0, OUTLINED_FUNCTION_116_4(v61) >= 0.0))
            {
              [OUTLINED_FUNCTION_18_26() baseZoomFactor];
              [OUTLINED_FUNCTION_24_19() bravoShiftMitigationMaxZoomFactor];
              [OUTLINED_FUNCTION_18_26() baseZoomFactor];
              OUTLINED_FUNCTION_116_4(v62);
              OUTLINED_FUNCTION_35_3();
              v52 = 1.0;
              if (v59 ^ v60 | v30)
              {
                [OUTLINED_FUNCTION_18_26() baseZoomFactor];
                v64 = v124 - v63;
                [OUTLINED_FUNCTION_24_19() bravoShiftMitigationMaxZoomFactor];
                v66 = v65;
                [OUTLINED_FUNCTION_18_26() baseZoomFactor];
                v52 = v64 / (v66 - v67);
              }
            }

            [OUTLINED_FUNCTION_18_26() baseZoomFactor];
            v69 = v124 - v68;
            [OUTLINED_FUNCTION_18_26() baseZoomFactor];
            if ((v69 / (v42 - v70)) > v38 || ([OUTLINED_FUNCTION_18_26() baseZoomFactor], v72 = v124 - v71, objc_msgSend(OUTLINED_FUNCTION_18_26(), "baseZoomFactor"), v57 = 0.0, (v72 / (v42 - v73)) >= 0.0))
            {
              [OUTLINED_FUNCTION_18_26() baseZoomFactor];
              v75 = v124 - v74;
              [OUTLINED_FUNCTION_18_26() baseZoomFactor];
              v8 = v122;
              if ((v75 / (v42 - v76)) <= v38)
              {
                [OUTLINED_FUNCTION_18_26() baseZoomFactor];
                v78 = v124 - v77;
                [OUTLINED_FUNCTION_18_26() baseZoomFactor];
                v57 = v78 / (v42 - v79);
              }

              else
              {
                v57 = v38;
              }
            }

            else
            {
              v8 = v122;
            }
          }

          v80 = v120;
          v81 = 1.0 - v119;
          v82 = (*&v131 + *&v129) / v126;
          v83 = (*(&v131 + 1) + *(&v129 + 1)) / v127;
          v84 = v125;
          if (*(v0 + 12273) == 1)
          {
            v85 = v57;
            v84 = (v125 + v40 + -1.0) * v85 + 1.0;
            v86 = (v120 + v40 + -1.0) * v85 + 1.0;
            if (v41 >= v36)
            {
              v80 = v86;
            }

            else
            {
              v80 = v8;
            }

            v87 = v121;
            if (v41 < v36)
            {
              v84 = v121;
            }

            v88 = v123;
          }

          else
          {
            if (*(v0 + 12274) == 1)
            {
              v89 = v125 + v40 + -1.0;
              if (v89 * v118 * v81 * 0.5 < v82)
              {
                v82 = v89 * v118 * v81 * 0.5;
              }

              if (-(v89 * v118) * v81 * 0.5 > v82)
              {
                v82 = -(v89 * v118) * v81 * 0.5;
              }

              v90 = v120 + v40 + -1.0;
              if (v90 * v118 * v81 * 0.5 < v83)
              {
                v83 = v90 * v118 * v81 * 0.5;
              }

              if (-(v90 * v118) * v81 * 0.5 > v83)
              {
                v83 = -(v90 * v118) * v81 * 0.5;
              }

              v91 = v57;
              v84 = v89 * v91 + 1.0;
              v80 = v90 * v91 + 1.0;
            }

            v88 = v123;
            v87 = v121;
          }

          v92 = v81 * (v84 + -1.0);
          v93 = v81 * (v80 + -1.0);
          if (v92 >= v87 + -1.0)
          {
            v94 = v87 + -1.0;
          }

          else
          {
            v94 = v92;
          }

          if (v93 >= v8 + -1.0)
          {
            v95 = v8 + -1.0;
          }

          else
          {
            v95 = v93;
          }

          v138.f64[0] = v82 * v126 * v52 + (v138.f64[0] - v82 * v126 * v52) * v88 * v52;
          v138.f64[1] = v83 * v127 * v52 + (v138.f64[1] - v83 * v127 * v52) * v88 * v52;
        }

        else
        {
          [OUTLINED_FUNCTION_18_26() baseZoomFactor];
          v104 = v124 - v103;
          [OUTLINED_FUNCTION_24_19() bravoShiftMitigationMaxZoomFactor];
          v106 = v105;
          [OUTLINED_FUNCTION_18_26() baseZoomFactor];
          v108 = v104 / (v106 - v107);
          v109 = 1.0;
          if (v108 <= 1.0)
          {
            [OUTLINED_FUNCTION_18_26() baseZoomFactor];
            [OUTLINED_FUNCTION_24_19() bravoShiftMitigationMaxZoomFactor];
            [OUTLINED_FUNCTION_18_26() baseZoomFactor];
            v109 = OUTLINED_FUNCTION_116_4(v110);
          }

          v138 = vmulq_n_f64(v138, (v16 * v109));
          [(BWMultiStreamCameraSourceNode *)v0 _overscanWithFOVSacrifice];
          v94 = v111;
          v95 = v112;
          [OUTLINED_FUNCTION_24_19() overscanForShiftMitigation];
          if (v94 <= v113)
          {
            [OUTLINED_FUNCTION_24_19() overscanForShiftMitigation];
            v94 = v114;
          }

          [OUTLINED_FUNCTION_24_19() overscanForShiftMitigation];
          if (v95 <= v115)
          {
            [OUTLINED_FUNCTION_24_19() overscanForShiftMitigation];
            v95 = v116;
          }
        }

        v96 = v138.f64[0] / v126;
        v97 = v138.f64[1] / v127;
        v138.f64[0] = v96;
        v138.f64[1] = v97;
        v98 = v94 * 0.5;
        if (v94 * 0.5 >= v96)
        {
          v98 = v96;
        }

        if (v94 * -0.5 <= v98)
        {
          v99 = v98;
        }

        else
        {
          v99 = v94 * -0.5;
        }

        v100 = v95 * 0.5;
        if (v95 * 0.5 >= v97)
        {
          v100 = v97;
        }

        if (v95 * -0.5 <= v100)
        {
          v101 = v100;
        }

        else
        {
          v101 = v95 * -0.5;
        }

        if (v99 != v96 || v101 != v97)
        {
          OUTLINED_FUNCTION_0_96();
          OUTLINED_FUNCTION_2_5();
LABEL_99:
          FigDebugAssert3();
        }
      }
    }
  }

  OUTLINED_FUNCTION_5_5();
}

- (unint64_t)_updateNondisruptiveSwitchingZoomFactors:(unint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    v4 = [objc_msgSend(v3 "allKeys")];
    result = [v4 count];
    if (result)
    {
      if ([v4 count] != 1 || (objc_msgSend(objc_msgSend(v4, "firstObject"), "floatValue"), v6 = v5, result = objc_msgSend(OUTLINED_FUNCTION_88_5(), "baseZoomFactor"), v6 != v7))
      {
        v8 = *(v2 + 216);
        [objc_msgSend(objc_msgSend(*(v2 + 152) objectAtIndexedSubscript:{*(v2 + 368)), "objectForKeyedSubscript:", *off_1E798D3F8), "floatValue"}];
        v10 = BWFilterNonDisruptiveSwitchingFormatZoomFactors(v8, v4, v9);
        if ([v10 count])
        {
          BWFilterAndUpdateNondisruptiveSwitchingFormatIndicesByZoomFactor(*(v2 + 216), v10, v1, *(v2 + 12280));
          if (([*(v2 + 128) overCaptureEnabled] & 1) != 0 || (result = objc_msgSend(*(v2 + 128), "maxOverscanVideoStabilizationMethod"), result >= 1))
          {
            [objc_msgSend(v10 "lastObject")];
            v12 = v11;
            v13 = [*(v2 + 128) captureStreamsByFocalLength];
            v14 = [v13 indexOfObject:*(v2 + 136)] + 1;
            result = [v13 count];
            if (v14 < result)
            {
              [objc_msgSend(v13 objectAtIndexedSubscript:{v14), "baseZoomFactorAfterGDC"}];
              v16 = v15;
              result = BWWiderNonDisruptiveSwitchingFormatZoomFactorAndNarrowerBaseZoomFactorShouldBeCombined(v12, v15);
              if (result)
              {
                *&v17 = v12;
                [MEMORY[0x1E696AD98] numberWithFloat:v17];
                [OUTLINED_FUNCTION_17() objectForKeyedSubscript:?];
                *&v18 = v16;
                [MEMORY[0x1E696AD98] numberWithFloat:v18];
                [OUTLINED_FUNCTION_27_1() setObject:? forKeyedSubscript:?];
                *&v19 = v12;
                [MEMORY[0x1E696AD98] numberWithFloat:v19];
                v20 = OUTLINED_FUNCTION_4_3();

                return [v20 setObject:? forKeyedSubscript:?];
              }
            }
          }
        }

        else
        {

          return [v1 removeAllObjects];
        }
      }
    }
  }

  return result;
}

- (unint64_t)_calculateZoomFactorsToNondisruptiveSwitchingFormatIndexMapping:(uint64_t)a3 nondisruptiveSwitchingFormatIndicesByZoomfactorSIFRNonBinnedOut:(uint64_t)a4 ultraHighResolutionNondisruptiveStreamingFormatIndex:
{
  if (result)
  {
    OUTLINED_FUNCTION_67_8();
    v8 = v7;
    result = [objc_msgSend(OUTLINED_FUNCTION_79_5(v7) "activeStreamingNondisruptiveSwitchingFormatIndices")];
    if (result)
    {
      v56 = v4;
      [OUTLINED_FUNCTION_68_6() activeStreamingNondisruptiveSwitchingFormatIndices];
      v9 = [OUTLINED_FUNCTION_17() arrayWithArray:?];
      [MEMORY[0x1E696AD98] numberWithInt:*(v8 + 368)];
      v10 = [OUTLINED_FUNCTION_17() addObject:?];
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v18 = OUTLINED_FUNCTION_141_2(v10, v11, v12, v13, v14, v15, v16, v17, v53, v5, v56, v58, v61, v64, v67, v70, v71, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, *(&v91 + 1), v92, *(&v92 + 1), v93, *(&v93 + 1), v94, *(&v94 + 1), v95, *(&v95 + 1), v96, *(&v96 + 1), v97);
      v19 = 0.0;
      v20 = 0.0;
      if (v18)
      {
        v21 = v18;
        v22 = *v99;
        v23 = 0.0;
        v68 = *(MEMORY[0x1E695F058] + 16);
        v72 = *MEMORY[0x1E695F058];
        v24 = 0.0;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v99 != v22)
            {
              objc_enumerationMutation(v9);
            }

            [*(v8 + 152) objectAtIndexedSubscript:{objc_msgSend(*(*(&v98 + 1) + 8 * i), "intValue")}];
            v95 = v72;
            v96 = v68;
            CGRectIfPresent = FigCFDictionaryGetCGRectIfPresent();
            if (CGRectIfPresent && *&v96 > v24)
            {
              v24 = *&v96;
              v23 = *(&v96 + 1);
            }
          }

          v21 = OUTLINED_FUNCTION_141_2(CGRectIfPresent, v27, v28, v29, v30, v31, v32, v33, v54, v55, v57, v59, v62, v65, v68, *(&v68 + 1), v72, *(&v72 + 1), v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, *(&v91 + 1), v92, *(&v92 + 1), v93, *(&v93 + 1), v94, *(&v94 + 1), v95, *(&v95 + 1), v96, *(&v96 + 1), v97);
        }

        while (v21);
        v20 = v24;
        v19 = v23;
      }

      v34 = [*(v8 + 152) objectAtIndexedSubscript:*(v8 + 368)];
      v69 = *off_1E798C960;
      if ([objc_msgSend(v34 "objectForKeyedSubscript:"BOOLValue"")])
      {
        *(v8 + 372) = [objc_msgSend(v34 objectForKeyedSubscript:{*off_1E798C958), "intValue"}];
      }

      if ([objc_msgSend(v34 objectForKeyedSubscript:{v69), "BOOLValue"}] && objc_msgSend(OUTLINED_FUNCTION_68_6(), "sifrBinningFactorOverrideForNondisruptiveSwitching"))
      {
        *(v8 + 372) = [OUTLINED_FUNCTION_68_6() sifrBinningFactorOverrideForNondisruptiveSwitching];
      }

      [objc_msgSend(OUTLINED_FUNCTION_68_6() "activeStreamingNondisruptiveSwitchingFormatIndices")];
      v66 = [OUTLINED_FUNCTION_17() dictionaryWithCapacity:?];
      [objc_msgSend(OUTLINED_FUNCTION_68_6() "activeStreamingNondisruptiveSwitchingFormatIndices")];
      v73 = [OUTLINED_FUNCTION_17() dictionaryWithCapacity:?];
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v35 = [OUTLINED_FUNCTION_68_6() activeStreamingNondisruptiveSwitchingFormatIndices];
      v36 = [v35 countByEnumeratingWithState:&v91 objects:&v75 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v92;
        v60 = *off_1E798C958;
        v63 = *off_1E798C968;
        do
        {
          for (j = 0; j != v37; ++j)
          {
            if (*v92 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v91 + 1) + 8 * j);
            if ([v40 intValue] != a4)
            {
              v41 = a4;
              v42 = [*(v8 + 152) objectAtIndexedSubscript:{objc_msgSend(v40, "intValue")}];
              if ([objc_msgSend(v42 objectForKeyedSubscript:{v69), "BOOLValue"}])
              {
                v43 = [objc_msgSend(v42 objectForKeyedSubscript:{v60), "intValue"}] == 2;
              }

              else
              {
                v43 = 0;
              }

              [*(v8 + 136) baseZoomFactor];
              v45 = v44;
              v46 = *(MEMORY[0x1E695F058] + 16);
              v95 = *MEMORY[0x1E695F058];
              v96 = v46;
              if (FigCFDictionaryGetCGRectIfPresent())
              {
                v48 = v20 / *&v96;
                v49 = v19 / *(&v96 + 1);
                if ([objc_msgSend(v42 objectForKeyedSubscript:{v63), "BOOLValue"}])
                {
                  v47 = v49;
                }

                else
                {
                  v47 = v48;
                }

                v50 = v47;
                v45 = v45 * v50;
              }

              *&v47 = v45;
              v51 = [MEMORY[0x1E696AD98] numberWithFloat:v47];
              if (v43)
              {
                v52 = v66;
              }

              else
              {
                v52 = v73;
              }

              [v52 setObject:v40 forKeyedSubscript:v51];
              a4 = v41;
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v91 objects:&v75 count:16];
        }

        while (v37);
      }

      [BWMultiStreamCameraSourceNode _updateNondisruptiveSwitchingZoomFactors:v8];
      result = [BWMultiStreamCameraSourceNode _updateNondisruptiveSwitchingZoomFactors:v8];
      if (v55)
      {
        result = [v66 count];
        if (result)
        {
          *v55 = v66;
        }
      }

      if (v57)
      {
        result = [v73 count];
        if (result)
        {
          *v57 = v73;
        }
      }
    }
  }

  return result;
}

- (void)activateSecureMetadataOutputConfiguration:(id)a3 forAttachedSesssion:(id)a4
{
  [(BWSecureMetadataOutputConfigurator *)[(BWFigVideoCaptureStream *)self->_captureStream secureMetadataOutputConfigurator] setDelegate:0];
  [(BWSecureMetadataOutputConfigurator *)[(BWFigVideoCaptureStream *)self->_captureStream secureMetadataOutputConfigurator] setConfiguration:a3 forAttachedSessionID:a4];
  [(BWMultiStreamCameraSourceNode *)self _updateOutputStorageWithSecureMetadataOutputConfiguration:1 propagateToNodeOutputs:?];
  v7 = [(BWFigVideoCaptureStream *)self->_captureStream secureMetadataOutputConfigurator];

  [(BWSecureMetadataOutputConfigurator *)v7 setDelegate:self];
}

- (void)deactivateSecureMetadataForAttachedSession:(id)a3
{
  [(BWSecureMetadataOutputConfigurator *)[(BWFigVideoCaptureStream *)self->_captureStream secureMetadataOutputConfigurator] unregisterAttachedSessionID:a3];
  v4 = [(BWSecureMetadataOutputConfigurator *)[(BWFigVideoCaptureStream *)self->_captureStream secureMetadataOutputConfigurator] coalescedSecureMetadataOutputConfiguration];

  [(BWMultiStreamCameraSourceNode *)self _updateOutputStorageWithSecureMetadataOutputConfiguration:v4 propagateToNodeOutputs:1];
}

- (uint64_t)_verifyColorSpacePropertiesForOutputID:(void *)a3 matchVideoOutputsColorInfo:
{
  if (result)
  {
    v5 = [BWMultiStreamCameraSourceNode _colorSpacePropertiesForOuputID:?];
    v6 = [a3 objectForKeyedSubscript:a2];
    if (!v5)
    {
      return 0;
    }

    if ([+[BWVideoFormat pixelBufferAttachmentsForColorSpaceProperties:](BWVideoFormat pixelBufferAttachmentsForColorSpaceProperties:{v5), "isEqualToDictionary:", v6}])
    {
      return 0;
    }

    if (v5 == 12 && (OUTLINED_FUNCTION_61_9(), [OUTLINED_FUNCTION_40() objectForKeyedSubscript:?], OUTLINED_FUNCTION_26_13(), FigCFEqual()) && (OUTLINED_FUNCTION_61_9(), objc_msgSend(OUTLINED_FUNCTION_40(), "objectForKeyedSubscript:"), OUTLINED_FUNCTION_26_13(), FigCFEqual()) && (OUTLINED_FUNCTION_61_9(), objc_msgSend(OUTLINED_FUNCTION_40(), "objectForKeyedSubscript:"), OUTLINED_FUNCTION_26_13(), FigCFEqual()) && (objc_msgSend(OUTLINED_FUNCTION_40(), "objectForKeyedSubscript:"), FigCFEqual()) && (OUTLINED_FUNCTION_61_9(), FigCFEqual()))
    {
      return 0;
    }

    else
    {
      return 4294954516;
    }
  }

  return result;
}

- (BWStats)_tallyCompressedIOSurfaceStatsForRawForSBuf:(BWStats *)result
{
  if (result)
  {
    v2 = result;
    v3 = CMGetAttachment(target, *off_1E798A3C8, 0);
    result = [objc_msgSend(v3 objectForKeyedSubscript:{*off_1E798B590), "intValue"}];
    if (result)
    {
      v4 = result;
      v8 = *MEMORY[0x1E695F058];
      v9 = *(MEMORY[0x1E695F058] + 16);
      FigCFDictionaryGetCGRectIfPresent();
      result = [v3 objectForKeyedSubscript:{*off_1E798B5F0, v8}];
      v5 = (*(&v9 + 1) * (llroundf(vcvts_n_f32_s32(*&v9, 7uLL)) << 7) * 10.0 * 0.125) << (result != 0);
      v6 = v4 / v5;
      if (!*&v2[189]._multiplier)
      {
        result = objc_alloc_init(BWStats);
        *&v2[189]._multiplier = result;
        v2[189]._unitDesignator = 0;
        v2[189]._numberOfSamples = 0;
        LODWORD(v2[189]._min) = *(&v9 + 1);
      }

      if (v6 > 0.0 && v6 <= 1.0)
      {
        result = [*&v2[189]._multiplier addDataPoint:v6];
        v2[189]._unitDesignator = (v2[189]._unitDesignator + v4);
        v2[189]._numberOfSamples += v5;
      }
    }

    else
    {
      BYTE4(v2[189]._min) = 0;
    }
  }

  return result;
}

- (void)_addDolbyVisionMetadataToPreviewPixelBufferForSampleBuffer:(uint64_t)a3 nodeOutput:
{
  if (a1)
  {
    v21 = 0;
    if (*(a1 + 12192) && (*(a1 + 240) == a3 && ([OUTLINED_FUNCTION_22_21() dolbyVisionMetadataOnVideoCaptureOutputEnabled] & 1) != 0 || *(a1 + 232) == a3 && objc_msgSend(OUTLINED_FUNCTION_22_21(), "dolbyVisionMetadataOnPreviewOutputEnabled")))
    {
      v6 = CMGetAttachment(a2, *off_1E798A3C8, 0);
      ImageBuffer = CMSampleBufferGetImageBuffer(a2);
      [objc_msgSend(v6 objectForKeyedSubscript:{*off_1E798B210), "floatValue"}];
      if (v8 != *(a1 + 12184))
      {
        *(a1 + 12184) = v8;
        VTHDRMetadataGenerationSessionSetFramesPerSecond();
      }

      memset(&v20, 0, sizeof(v20));
      CMSampleBufferGetPresentationTimeStamp(&v20, a2);
      memset(&v19, 0, sizeof(v19));
      CMTimeMake(&rhs, 4, *(a1 + 12184));
      *lhs = *(a1 + 12200);
      *&lhs[16] = *(a1 + 12216);
      CMTimeAdd(&v19, lhs, &rhs);
      if (v19.flags)
      {
        rhs = v20;
        *lhs = v19;
        CMTimeCompare(&rhs, lhs);
      }

      *(a1 + 12200) = v20;
      v9 = BWGetHDRImageStatisticsDictFromSampleBuffer(a2);
      CVPixelBufferGetWidth(ImageBuffer);
      CVPixelBufferGetHeight(ImageBuffer);
      DataFromStatisticsDictionary = VTHDRMetadataGenerationSessionCreateDataFromStatisticsDictionary();
      if (DataFromStatisticsDictionary)
      {
        v11 = DataFromStatisticsDictionary;
        v18 = 0;
        v17 = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v13 = v18;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v17))
        {
          v14 = v13;
        }

        else
        {
          v14 = v13 & 0xFFFFFFFE;
        }

        if (v14)
        {
          *lhs = 136315650;
          *&lhs[4] = "[BWMultiStreamCameraSourceNode _addDolbyVisionMetadataToPreviewPixelBufferForSampleBuffer:nodeOutput:]";
          *&lhs[12] = 1024;
          *&lhs[14] = v11;
          *&lhs[18] = 2114;
          *&lhs[20] = v9;
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_1_4();
        OUTLINED_FUNCTION_129_3();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      else
      {
        if (!v21)
        {
          return;
        }

        CVBufferSetAttachment(ImageBuffer, *MEMORY[0x1E6965E48], v21, kCVAttachmentMode_ShouldPropagate);
      }
    }

    if (v21)
    {
      CFRelease(v21);
    }
  }
}

- (uint64_t)_updateOutputIDMappingsForStreamingOutputs
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (void)_bringStreamUpToDate
{
  OUTLINED_FUNCTION_25_10();
  v2 = v1;
  [*(v0 + 136) setFocusBlurMapEnabled:{objc_msgSend(OUTLINED_FUNCTION_44_13(v3), "focusBlurMapEnabled")}];
  [(BWMultiStreamCameraSourceNode *)v0 _updateMetadataConfigurations];
  [(BWMultiStreamCameraSourceNode *)v0 _updateObjectDetectionMetadataRegistration];
  [(BWMultiStreamCameraSourceNode *)v0 _updateDepthConfiguration];
  [(BWMultiStreamCameraSourceNode *)v0 _updateOutputConfigurations];
  if (v4 || ([(BWMultiStreamCameraSourceNode *)v0 _updateOverscanReservedInISPZoom], (v4 = [(BWMultiStreamCameraSourceNode *)v0 _verifyColorSpacePropertiesForAllOutputs]) != 0))
  {
    v11 = v4;
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3();
  }

  else
  {
    v5 = [OUTLINED_FUNCTION_21_27() clientVideoFormat];
    IsUsedForProRes = FigCapturePixelFormatIsUsedForProRes(v5);
    v7 = *(v0 + 144);
    v8 = *off_1E798C190;
    if (IsUsedForProRes)
    {
      [v7 setProperty:v8 value:&unk_1F2245F58];
    }

    else
    {
      [v7 setPropertyIfSupported:v8 value:&unk_1F2246018];
    }

    [OUTLINED_FUNCTION_21_27() mainToSIFRFrameRateRatio];
    [OUTLINED_FUNCTION_7_60() setMainToSIFRFrameRateRatio:?];
    [OUTLINED_FUNCTION_21_27() highlightRecoveryEnabledWhenConfiguredAsMasterOrSingleStream];
    [OUTLINED_FUNCTION_7_60() setHighlightRecoveryEnabledWhenConfiguredAsMasterOrSingleStream:?];
    [OUTLINED_FUNCTION_21_27() highlightRecoveryEnabledWhenConfiguredAsSlave];
    [OUTLINED_FUNCTION_7_60() setHighlightRecoveryEnabledWhenConfiguredAsSlave:?];
    [OUTLINED_FUNCTION_21_27() videoHDRImageStatisticsEnabled];
    [OUTLINED_FUNCTION_7_60() setVideoHDRImageStatisticsEnabled:?];
    [OUTLINED_FUNCTION_21_27() videoHDRFusionEnabled];
    [OUTLINED_FUNCTION_7_60() setVideoHDRFusionEnabled:?];
    v9 = [OUTLINED_FUNCTION_21_27() clientVideoFormat];
    FigCapturePixelFormatIsTenBit(v9);
    [OUTLINED_FUNCTION_7_60() setPixelFormatIsTenBit:?];
    v10 = [OUTLINED_FUNCTION_21_27() colorSpace] == 3 || objc_msgSend(OUTLINED_FUNCTION_21_27(), "colorSpace") == 4;
    [*(v0 + 136) setColorSpaceIsAppleLog:v10];
    [*(v0 + 136) setVideoCaptureDimensions:{objc_msgSend(OUTLINED_FUNCTION_21_27(), "videoCaptureDimensions")}];
    [OUTLINED_FUNCTION_21_27() backgroundBlurEnabled];
    [OUTLINED_FUNCTION_7_60() setBackgroundBlurEnabled:?];
    [OUTLINED_FUNCTION_21_27() studioLightingEnabled];
    [OUTLINED_FUNCTION_7_60() setStudioLightingEnabled:?];
    [OUTLINED_FUNCTION_21_27() reactionEffectsEnabled];
    [OUTLINED_FUNCTION_7_60() setReactionEffectsEnabled:?];
    [OUTLINED_FUNCTION_21_27() backgroundReplacementEnabled];
    [OUTLINED_FUNCTION_7_60() setBackgroundReplacementEnabled:?];
    [OUTLINED_FUNCTION_21_27() cinematicFramingEnabled];
    [OUTLINED_FUNCTION_7_60() setCinematicFramingEnabled:?];
    v11 = 0;
  }

  *v2 = v11;
  OUTLINED_FUNCTION_24_12();
}

uint64_t __53__BWMultiStreamCameraSourceNode__bringStreamUpToDate__block_invoke_1058_cold_1()
{
  v0 = OUTLINED_FUNCTION_76_6();
  v8 = OUTLINED_FUNCTION_4_1(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    OUTLINED_FUNCTION_2_11("[BWMultiStreamCameraSourceNode _bringStreamUpToDate]_block_invoke");
    OUTLINED_FUNCTION_13();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_119_3();
  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t __53__BWMultiStreamCameraSourceNode__bringStreamUpToDate__block_invoke_1058_cold_2()
{
  v0 = OUTLINED_FUNCTION_76_6();
  v8 = OUTLINED_FUNCTION_4_1(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    OUTLINED_FUNCTION_2_11("[BWMultiStreamCameraSourceNode _bringStreamUpToDate]_block_invoke");
    OUTLINED_FUNCTION_13();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_119_3();
  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t __114__BWMultiStreamCameraSourceNode__updateOutputStorageWithSecureMetadataOutputConfiguration_propagateToNodeOutputs___block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  *(a1 + 8) = 0;
  [(BWMultiStreamCameraSourceNode *)*(a2 + 32) _stopAndReleaseFrameCounterForOutputIndexIfNecessary:?];
  result = [a3 liveFormat];
  if (result)
  {
    result = [a3 markEndOfLiveOutput];
  }

  v7 = *a4;
  *(v7 + 16) = 0;
  *v7 = 0;
  return result;
}

- (uint64_t)allocateOrReuseBufferPoolsFromSourceNode:(uint64_t)a1 .cold.4(uint64_t a1)
{
  result = [(BWMultiStreamCameraSourceNode *)a1 _firmwareStillImageOutputRetainedBufferCountForClientBracketCount:?];
  *(a1 + 11876) = result;
  return result;
}

- (uint64_t)requestedZoomFactorChanged:.cold.1()
{
  OUTLINED_FUNCTION_54();
  result = [(BWMultiStreamCameraSourceNode *)v2 _setStreamOutputsEnabled:1 streamingOutputs:0 onDemandStillOutputs:?];
  if (!result)
  {
    v4 = *v1;
    v5 = *(v0 + 216);

    return [v4 setZoomFactorChangedDelegate:0 forPortType:v5];
  }

  return result;
}

@end