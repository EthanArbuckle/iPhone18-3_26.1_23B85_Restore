void fvcs_removeSampleBufferPixelBufferMetadata(opaqueCMSampleBuffer *a1)
{
  ImageBuffer = CMSampleBufferGetImageBuffer(a1);
  CMRemoveAttachment(ImageBuffer, *off_1E798A3C8);
  CMRemoveAttachment(ImageBuffer, *off_1E798A420);
  v2 = *off_1E798A328;

  CMRemoveAttachment(ImageBuffer, v2);
}

void *figVideoCaptureStream_blackenFrameIfNecessary(uint64_t a1, void *a2)
{
  os_unfair_lock_lock((a1 + 376));
  if (*(a1 + 380) == 1)
  {
    v4 = *(a1 + 381);
  }

  else
  {
    v4 = 1;
  }

  os_unfair_lock_unlock((a1 + 376));
  v5 = CMGetAttachment(a2, *off_1E798A3C8, 0);
  memset(&v47, 0, sizeof(v47));
  CMSampleBufferGetPresentationTimeStamp(&v47, a2);
  if ([objc_msgSend(v5 objectForKeyedSubscript:{*off_1E798B430), "BOOLValue"}])
  {
    if (*MEMORY[0x1E695FF58] == 1)
    {
      time = v47;
      CMTimeGetSeconds(&time);
      kdebug_trace();
    }

    [v5 objectForKeyedSubscript:*off_1E798B640];
    v46 = 0;
    v45 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v7 = v46;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v45))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      time = v47;
      CMTimeGetSeconds(&time);
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    if ((*(a1 + 1192) & 1) == 0)
    {
      if (*MEMORY[0x1E695FF58] == 1)
      {
        time = v47;
        CMTimeGetSeconds(&time);
        kdebug_trace();
      }

      *(a1 + 1192) = 1;
    }

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  CMSetAttachment(a2, @"FrameIsBlackened", MEMORY[0x1E695E118], 1u);
  if (CMSampleBufferGetImageBuffer(a2))
  {
    v9 = VTFillPixelBufferWithBlack();
    if (v9)
    {
      v10 = v9;
      FigDebugAssert3();
      v46 = 0;
      v45 = OS_LOG_TYPE_DEFAULT;
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v12 = v46;
      if (os_log_type_enabled(v11, v45))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (!v13)
      {
        goto LABEL_77;
      }

      goto LABEL_76;
    }
  }

  else
  {
    CVDataBuffer = BWSampleBufferGetCVDataBuffer(a2);
    if (CVDataBuffer)
    {
      v15 = [objc_alloc(getADMutableJasperPointCloudClass()) initWithDataBuffer:CVDataBuffer];
      [v15 blacken];
    }
  }

  if (CMGetAttachment(a2, *off_1E798A4F0, 0))
  {
    v16 = VTFillPixelBufferWithBlack();
    if (v16)
    {
      v10 = v16;
      FigDebugAssert3();
      v46 = 0;
      v45 = OS_LOG_TYPE_DEFAULT;
      v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v30 = v46;
      if (os_log_type_enabled(v29, v45))
      {
        v31 = v30;
      }

      else
      {
        v31 = v30 & 0xFFFFFFFE;
      }

      if (!v31)
      {
        goto LABEL_77;
      }

LABEL_76:
      BWStringFromPixelBufferWithOptions();
      _os_log_send_and_compose_impl();
LABEL_77:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return v10;
    }
  }

  if (CMGetAttachment(a2, *off_1E798A478, 0))
  {
    v17 = VTFillPixelBufferWithBlack();
    if (v17)
    {
      v10 = v17;
      FigDebugAssert3();
      v46 = 0;
      v45 = OS_LOG_TYPE_DEFAULT;
      v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v33 = v46;
      if (os_log_type_enabled(v32, v45))
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 & 0xFFFFFFFE;
      }

      if (!v34)
      {
        goto LABEL_77;
      }

      goto LABEL_76;
    }
  }

  v18 = CMGetAttachment(a2, *off_1E798A448, 0);
  if (v18)
  {
    if ([v18 objectForKeyedSubscript:*off_1E798A2D0])
    {
      v19 = VTFillPixelBufferWithBlack();
      if (v19)
      {
        v10 = v19;
        FigDebugAssert3();
        v46 = 0;
        v45 = OS_LOG_TYPE_DEFAULT;
        v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v36 = v46;
        if (os_log_type_enabled(v35, v45))
        {
          v37 = v36;
        }

        else
        {
          v37 = v36 & 0xFFFFFFFE;
        }

        if (!v37)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      }
    }
  }

  v20 = CMGetAttachment(a2, *off_1E798A468, 0);
  if (v20)
  {
    if ([v20 objectForKeyedSubscript:*off_1E798A2D0])
    {
      v21 = VTFillPixelBufferWithBlack();
      if (v21)
      {
        v10 = v21;
        FigDebugAssert3();
        v46 = 0;
        v45 = OS_LOG_TYPE_DEFAULT;
        v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v39 = v46;
        if (os_log_type_enabled(v38, v45))
        {
          v40 = v39;
        }

        else
        {
          v40 = v39 & 0xFFFFFFFE;
        }

        if (!v40)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      }
    }
  }

  v22 = CMGetAttachment(a2, *off_1E798A388, 0);
  if (v22)
  {
    if ([v22 objectForKeyedSubscript:*off_1E798AD90])
    {
      v23 = VTFillPixelBufferWithBlack();
      if (v23)
      {
        v10 = v23;
        FigDebugAssert3();
        v46 = 0;
        v45 = OS_LOG_TYPE_DEFAULT;
        v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v42 = v46;
        if (os_log_type_enabled(v41, v45))
        {
          v43 = v42;
        }

        else
        {
          v43 = v42 & 0xFFFFFFFE;
        }

        if (!v43)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      }
    }
  }

  v24 = CMGetAttachment(a2, *off_1E798A328, 0);
  v10 = v24;
  if (!v24)
  {
    return v10;
  }

  if (![v24 objectForKeyedSubscript:*off_1E798ABC8] && !objc_msgSend(v10, "objectForKeyedSubscript:", *off_1E798ABB0))
  {
    return 0;
  }

  v10 = VTFillPixelBufferWithBlack();
  if (v10)
  {
    FigDebugAssert3();
    v46 = 0;
    v45 = OS_LOG_TYPE_DEFAULT;
    v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v26 = v46;
    if (os_log_type_enabled(v25, v45))
    {
      v27 = v26;
    }

    else
    {
      v27 = v26 & 0xFFFFFFFE;
    }

    if (!v27)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

  return v10;
}

void multiStreamCameraSourceNode_outputSampleBuffer_cold_5()
{
  OUTLINED_FUNCTION_67_8();
  v4 = [(BWMultiStreamCameraSourceNode *)v2 _createDepthDataSampleBufferFromVideoSampleBuffer:v3];
  *v0 = v4;
  BWSampleBufferSetAttachedMedia(v1, @"Depth", v4);
  CMSetAttachment(v1, *off_1E798D2C0, MEMORY[0x1E695E118], 1u);
}

uint64_t OUTLINED_FUNCTION_235()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_235_0(uint64_t a1)
{
  v6 = *(v3 + *(v2 + 1128));

  return [v6 setObject:a1 forKeyedSubscript:v1];
}

void FigCaptureMetadataUtilitiesAddSampleBufferMetadataUsedByVideoEncoderToPixelBuffer(void *target)
{
  if (qword_1ED844E88 == -1)
  {
    if (!target)
    {
      return;
    }
  }

  else
  {
    FigCaptureMetadataUtilitiesExifOrientationFromRotationDegreesAndMirrored_cold_1();
    if (!target)
    {
      return;
    }
  }

  v2 = *off_1E798A3C8;
  v3 = CMGetAttachment(target, *off_1E798A3C8, 0);
  ImageBuffer = CMSampleBufferGetImageBuffer(target);
  if (v3)
  {
    v5 = ImageBuffer == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = ImageBuffer;
    v7 = *off_1E798B510;
    v29[0] = *off_1E798B600;
    v29[1] = v7;
    v8 = *off_1E798B660;
    v30 = *off_1E798B2A8;
    v31 = v8;
    v32 = *off_1E798B4B8;
    v28[0] = v29[0];
    v28[1] = v7;
    v28[2] = v30;
    v28[3] = v8;
    v9 = *off_1E798B0B8;
    v28[4] = v32;
    v28[5] = v9;
    v10 = *off_1E798B7D0;
    v28[6] = *off_1E798B7B8;
    v28[7] = v10;
    v11 = *off_1E798B750;
    v28[8] = *off_1E798B7C0;
    v28[9] = v11;
    v12 = *off_1E798B608;
    v28[10] = *off_1E798B758;
    v28[11] = v12;
    v28[12] = *off_1E798B540;
    v13 = FigCapturePlatformIdentifier();
    v14 = 0;
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    if (v13 >= 9)
    {
      v15 = 13;
    }

    else
    {
      v15 = 5;
    }

    v23 = 0uLL;
    v24 = 0uLL;
    if (v13 >= 9)
    {
      v16 = v28;
    }

    else
    {
      v16 = v29;
    }

    *keys = 0uLL;
    v22 = 0uLL;
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    do
    {
      Value = CFDictionaryGetValue(v3, *v16);
      if (Value)
      {
        keys[v14] = *v16;
        *(v19 + v14++) = Value;
      }

      ++v16;
      --v15;
    }

    while (v15);
    if (v14 > 0)
    {
      v18 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, v19, v14, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CMSetAttachment(v6, v2, v18, 1u);
      CFRelease(v18);
    }
  }
}

void BWSampleBufferSetAttachedMedia(const void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [CMGetAttachment(a1 @"AttachedMedia"];
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  }

  v8 = v6;
  [v6 setObject:a3 forKeyedSubscript:a2];
  if ([v8 count])
  {
    v7 = [v8 copy];
    CMSetAttachment(a1, @"AttachedMedia", v7, 1u);
  }

  else
  {
    CMRemoveAttachment(a1, @"AttachedMedia");
  }
}

BOOL BWSampleBufferIsMarkerBuffer(const void *a1)
{
  v2 = CMGetAttachment(a1, @"RecordingSettings", 0);
  v3 = CMGetAttachment(a1, @"FileWriterAction", 0);
  v4 = CMGetAttachment(a1, @"AttachedMediaSwapPlaceholderSampleBuffer", 0);
  return (v2 | v3 | v4 | CMGetAttachment(a1, @"IrisMovieRequest", 0)) != 0;
}

void sfsn_setOverCaptureSlaveStreamStatusOnSampleBuffer(const void *a1, uint64_t a2)
{
  if (![CMGetAttachment(a1 @"OverCaptureSlaveStreamStatus"])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:a2];

    CMSetAttachment(a1, @"OverCaptureSlaveStreamStatus", v4, 1u);
  }
}

uint64_t DockKitCoreLibraryCore()
{
  if (!DockKitCoreLibraryCore_frameworkLibrary)
  {
    DockKitCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return DockKitCoreLibraryCore_frameworkLibrary;
}

uint64_t getDKTrackingAgentClass()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x3052000000;
  v5 = __Block_byref_object_copy__40;
  v0 = getDKTrackingAgentClass_softClass;
  v6 = __Block_byref_object_dispose__40;
  v7 = getDKTrackingAgentClass_softClass;
  if (!getDKTrackingAgentClass_softClass)
  {
    DockKitCoreLibraryCore();
    v3[5] = objc_getClass("DKTrackingAgent");
    getDKTrackingAgentClass_softClass = v3[5];
    v0 = v3[5];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1AC9B5218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BWSampleBufferGetAttachedMedia(const void *a1, uint64_t a2)
{
  v3 = CMGetAttachment(a1, @"AttachedMedia", 0);

  return [v3 objectForKeyedSubscript:a2];
}

uint64_t BWSynchronizeSmartStyleAttachedMediaPTS(opaqueCMSampleBuffer *a1)
{
  v26[0] = 0x1F21AAED0;
  v26[1] = 0x1F21AAEF0;
  v26[2] = 0x1F21AAF30;
  v26[3] = 0x1F21AB110;
  v26[4] = 0x1F21AB070;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:5];
  memset(&v25, 0, sizeof(v25));
  CMSampleBufferGetPresentationTimeStamp(&v25, a1);
  memset(&v24, 0, sizeof(v24));
  CMSampleBufferGetDuration(&v24, a1);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  result = [v2 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v21;
    allocator = *MEMORY[0x1E695E480];
    v6 = *off_1E798A420;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        v9 = [CMGetAttachment(a1 @"AttachedMedia"];
        if (v9)
        {
          v10 = v9;
          memset(&v18, 0, sizeof(v18));
          CMSampleBufferGetPresentationTimeStamp(&v18, v9);
          time1 = v25;
          time2 = v18;
          if (CMTimeCompare(&time1, &time2))
          {
            target = 0;
            time1 = v25;
            time2 = v24;
            v11 = BWCMSampleBufferCreateCopyWithNewTimingIncludingMetadata(v10, &time1, &time2.value, &target);
            v12 = target;
            if (!v11 && target)
            {
              time1 = v18;
              v13 = CMTimeCopyAsDictionary(&time1, allocator);
              CMSetAttachment(target, v6, v13, 1u);

              BWSampleBufferSetAttachedMedia(a1, v8, target);
              v12 = target;
            }

            if (v12)
            {
              CFRelease(v12);
            }
          }
        }

        ++v7;
      }

      while (v4 != v7);
      result = [v2 countByEnumeratingWithState:&v20 objects:v19 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t BWCMSampleBufferCreateCopyIncludingMetadata(CMSampleBufferRef sbuf, CMSampleBufferRef *sampleBufferOut)
{
  v4 = *MEMORY[0x1E695E480];
  Copy = CMSampleBufferCreateCopy(*MEMORY[0x1E695E480], sbuf, sampleBufferOut);
  if (Copy)
  {
    BWCMSampleBufferCreateCopyIncludingMetadata_cold_1();
  }

  else
  {
    v6 = *off_1E798A3C8;
    v7 = CMGetAttachment(sbuf, *off_1E798A3C8, 0);
    if (v7)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v4, 0, v7);
      CMSetAttachment(*sampleBufferOut, v6, MutableCopy, 1u);
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }
    }

    sbu_replaceAttachedMediaWithDeepCopy(*sampleBufferOut);
  }

  return Copy;
}

void sbu_replaceAttachedMediaWithDeepCopy(const void *a1)
{
  v2 = BWSampleBufferDeepCopyDictionaryOfAttachedMedia(a1);
  CMSetAttachment(a1, @"AttachedMedia", v2, 1u);
}

uint64_t BWSampleBufferDeepCopyDictionaryOfAttachedMedia(const void *a1)
{
  v1 = CMGetAttachment(a1, @"AttachedMedia", 0);
  if (![v1 count])
  {
    return 0;
  }

  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v1 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v1 objectForKeyedSubscript:v7];
        cf = 0;
        BWCMSampleBufferCreateCopyIncludingMetadata(v8, &cf);
        [v2 setObject:cf forKeyedSubscript:v7];
        CFRelease(cf);
      }

      v4 = [v1 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v4);
  }

  v9 = [v2 copy];

  return v9;
}

id BWSampleBufferCopyDictionaryOfAttachedMedia(const void *a1)
{
  v1 = CMGetAttachment(a1, @"AttachedMedia", 0);

  return v1;
}

uint64_t BWOverCaptureSampleBufferUnpackAndRetain(CMAttachmentBearerRef target, int a2, void *a3, CFTypeRef *a4, void *a5, void *a6)
{
  if (target)
  {
    if (a4)
    {
      *a4 = CFRetain(target);
    }

    if (a3)
    {
      v11 = [CMGetAttachment(target @"AttachedMedia"];
      if (v11)
      {
        v11 = CFRetain(v11);
      }

      *a3 = v11;
    }

    if (a5)
    {
      v12 = [CMGetAttachment(target @"AttachedMedia"];
      if (v12)
      {
        v12 = CFRetain(v12);
      }

      *a5 = v12;
    }

    if (a6)
    {
      v13 = [CMGetAttachment(target @"AttachedMedia"];
      if (v13)
      {
        v13 = CFRetain(v13);
      }

      *a6 = v13;
    }

    if (a2)
    {
      CMRemoveAttachment(target, @"AttachedMedia");
    }

    return 0;
  }

  else
  {
    BWOverCaptureSampleBufferUnpackAndRetain_cold_1();
    return 4294954516;
  }
}

uint64_t FigMotionComputeFramePTSOffsetFromISPCrop(const __CFDictionary *a1, double *a2)
{
  v15 = 0;
  if (!a1 || !a2)
  {
    FigMotionComputeFramePTSOffsetFromISPCrop_cold_6(v12);
    return LODWORD(v12[0]);
  }

  Value = CFDictionaryGetValue(a1, *off_1E798B5D8);
  if (!Value)
  {
    FigMotionComputeFramePTSOffsetFromISPCrop_cold_5(v12);
    return LODWORD(v12[0]);
  }

  valuePtr = 0;
  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  v5 = CFDictionaryGetValue(a1, *off_1E798B5A0);
  if (!v5)
  {
    FigMotionComputeFramePTSOffsetFromISPCrop_cold_4(v12);
    return LODWORD(v12[0]);
  }

  CFNumberGetValue(v5, kCFNumberSInt32Type, &v15);
  if (v15 <= 0)
  {
    FigMotionComputeFramePTSOffsetFromISPCrop_cold_3(v12);
    return LODWORD(v12[0]);
  }

  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *MEMORY[0x1E695F058];
  v13 = *MEMORY[0x1E695F058];
  v14 = v10;
  SensorValidCropRect = FigMotionGetSensorValidCropRect(a1);
  if (SensorValidCropRect)
  {
    v8 = SensorValidCropRect;
    FigMotionComputeFramePTSOffsetFromISPCrop_cold_1();
  }

  else
  {
    if (CFDictionaryContainsKey(a1, *off_1E798B670))
    {
      v12[0] = v11;
      v12[1] = v10;
      if (!FigCFDictionaryGetCGRectIfPresent())
      {
        FigMotionComputeFramePTSOffsetFromISPCrop_cold_2(v12, &v17);
        return v17;
      }

      v7 = *(v12 + 1);
    }

    else
    {
      v7 = 0.0;
    }

    v8 = 0;
    *a2 = (*(&v13 + 1) - v7) * valuePtr / (v15 * 1000000.0);
  }

  return v8;
}

void FigMotionComputeQuaternionForTimeStamp(uint64_t a1, void *a2, char *a3, double a4)
{
  v8 = a1 + 0x2000;
  v9 = *(a1 + 10257) == 0;
  if (a2)
  {
    *a2 = 0x3FF0000000000000;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
  }

  v10 = 0;
  v11 = flt_1AD0561D8[v9];
  v12 = a1 + 8;
  v13 = 1.0;
  v14 = -1;
  do
  {
    v15 = *(v12 + 8 * v10) - a4;
    v16 = fabsf(v15);
    if (v13 > v16)
    {
      v13 = v16;
      v14 = v10;
    }

    ++v10;
  }

  while (v10 != 256);
  if (v13 > v11 && !*(a1 + 10256))
  {
    low_freq_error_logging();
  }

  if (v14 != -1)
  {
    v17 = *(v12 + 8 * v14);
    if (v17 >= a4)
    {
      v23 = (v14 - 1);
      if (v14 + 255 <= 0)
      {
        v23 = -(1 - v14);
      }

      v21 = v23;
      v20 = *(v12 + 8 * v14);
      v17 = *(v12 + 8 * v23);
      v19 = v14;
    }

    else
    {
      if (v14 + 1 <= 0)
      {
        v18 = --(v14 + 1);
      }

      else
      {
        v18 = (v14 + 1);
      }

      v19 = v18;
      v20 = *(v12 + 8 * v18);
      v21 = v14;
    }

    v24 = vabdd_f64(v20, a4);
    v25 = v11;
    v27 = v20 >= a4 && v24 <= v25 && v17 <= a4;
    v28 = vabdd_f64(v17, a4);
    if (v27 && v28 <= v25)
    {
      if (vabdd_f64(v20, v17) > 0.000001)
      {
        v33 = (a4 - v17) / (v20 - v17);
        FigMotionInterpolateQuaternionsByAngle(a1 + 2056 + 32 * v21, (a1 + 2056 + 32 * v19), v33);
        *a2 = v34;
        a2[1] = v35;
        a2[2] = v36;
        a2[3] = v37;
        goto LABEL_34;
      }

      v30 = a1 + 32 * v21;
    }

    else
    {
      v30 = a1 + 32 * v14;
    }

    v31 = (v30 + 2056);
    v32 = v31[1];
    *a2 = *v31;
    *(a2 + 1) = v32;
LABEL_34:
    v22 = 1;
    goto LABEL_35;
  }

  if (!*(v8 + 2064))
  {
    low_freq_error_logging();
  }

  v22 = 0;
LABEL_35:
  *a3 = v22;
}

void FigMotionInterpolateQuaternionsByAngle(uint64_t a1, double *a2, float a3)
{
  v18 = *a1;
  v19 = vnegq_f64(*(a1 + 8));
  v20 = -*(a1 + 24);
  v5 = FigMotionMultiplyQuaternions(&v18, a2);
  v8 = v7;
  v10 = v9;
  if (fabs(v5) <= 1.0)
  {
    v11 = v6;
    v12 = acos(v5);
    v13 = sin(v12);
    v14 = a3;
    v15 = v12 * v14;
    if (v13 <= 0.00000001)
    {
      cosval = cos(v15);
    }

    else
    {
      v16 = __sincos_stret(v15);
      cosval = v16.__cosval;
      v14 = v16.__sinval / v13;
    }

    v18 = cosval;
    v19.f64[0] = v8 * v14;
    v19.f64[1] = v10 * v14;
    v20 = v11 * v14;
    FigMotionMultiplyQuaternions(a1, &v18);
  }
}

float64_t FigMotionMultiplyQuaternions(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = a1[2];
  v7 = a1[3];
  v9 = a2[2];
  v8 = a2[3];
  v10 = *a2 * v7 + *a1 * v8 + v3 * v9 - v6 * v4;
  v13 = *a2 * v6 + *a1 * v9 + v7 * v4 - v3 * v8;
  v14 = v10;
  v12.f64[0] = v2 * v5 - v3 * v4 - v6 * v9 - v7 * v8;
  v12.f64[1] = v3 * v5 + v2 * v4 + v6 * v8 - v7 * v9;
  FigMotionNormalizeQuaternion(&v12);
  return v12.f64[0];
}

uint64_t FigMotionNormalizeQuaternion(float64x2_t *a1)
{
  if (a1)
  {
    _Q1 = a1[1];
    _D3 = _Q1.f64[1];
    __asm { FMLA            D2, D3, V1.D[1] }

    v8 = sqrt(_D2);
    if (v8 <= 0.00000001)
    {
      FigMotionNormalizeQuaternion_cold_1(&v12);
      return v12;
    }

    else
    {
      v9 = 0;
      v10 = 1.0 / v8;
      *a1 = vmulq_n_f64(*a1, v10);
      a1[1] = vmulq_n_f64(_Q1, v10);
    }
  }

  else
  {
    FigMotionNormalizeQuaternion_cold_2(&v13);
    return v13;
  }

  return v9;
}

uint64_t FigMotionComputeLensMovementAndSagForTimeStamp(uint64_t a1, float32x2_t *a2, float32x2_t *a3, int a4, double a5, float a6)
{
  *a2 = 0;
  if (a3)
  {
    *a3 = 0;
  }

  v8 = 0;
  v9 = a1 + (a4 << 12);
  v10 = v9 + 8;
  v11 = 1.0;
  v12 = -1;
  do
  {
    v13 = *(v10 + 8 * v8) - a5;
    v14 = fabsf(v13);
    if (v11 > v14)
    {
      v11 = v14;
      v12 = v8;
    }

    ++v8;
  }

  while (v8 != 512);
  if (v12 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v38 = v6;
  v39 = v7;
  v15 = *(a1 + 8 * a4 + 16392);
  if (!a3 || v15)
  {
    v16 = v9 + 8200;
    v17 = v12;
    v18 = *(v10 + 8 * v12);
    if (v18 >= a5)
    {
      v27 = v12 + 511;
      v20 = -v27 < 0;
      v28 = -v27 & 0x1FF;
      v29 = v27 & 0x1FF;
      if (v20)
      {
        v30 = v29;
      }

      else
      {
        v30 = -v28;
      }

      v25 = v30;
      v24 = v18;
      v18 = *(v10 + 8 * v30);
      v23 = v17;
    }

    else
    {
      v19 = v12 + 1;
      v20 = -v19 < 0;
      v21 = -v19 & 0x1FF;
      v22 = v19 & 0x1FF;
      if (!v20)
      {
        v22 = -v21;
      }

      v23 = v22;
      v24 = *(v10 + 8 * v22);
      v25 = v17;
    }

    if (v24 >= a5 && (vabdd_f64(v24, a5) <= 0.00200000009 ? (v31 = v18 <= a5) : (v31 = 0), v31 && vabdd_f64(v18, a5) <= 0.00200000009))
    {
      if (vabdd_f64(v24, v18) > 0.000001)
      {
        v34 = v24 - v18;
        v35 = (a5 - v18) / v34;
        v36 = vmla_n_f32(vmul_n_f32(*(v16 + 8 * v23), v35), *(v16 + 8 * v25), 1.0 - v35);
        *a2 = v36;
        if (a3)
        {
          *&v34 = 1.0 - v35;
          *a3 = vmla_f32(vmul_n_f32(*(v15 + 8 * v23), v35), vdup_lane_s32(*&v34, 0), *(v15 + 8 * v25));
          goto LABEL_29;
        }

        goto LABEL_36;
      }

      v32 = *(v16 + 8 * v25);
      *a2 = v32;
      if (a3)
      {
        v33 = *(v15 + 8 * v25);
        goto LABEL_28;
      }
    }

    else
    {
      v32 = *(v16 + 8 * v17);
      *a2 = v32;
      if (a3)
      {
        v33 = *(v15 + 8 * v17);
LABEL_28:
        *a3 = v33;
LABEL_29:
        result = 0;
        *a2 = vmul_n_f32(*a2, a6);
        *a3 = vmul_n_f32(*a3, a6);
        return result;
      }
    }

    v36 = v32;
LABEL_36:
    result = 0;
    *a2 = vmul_n_f32(v36, a6);
    return result;
  }

  FigMotionComputeLensMovementAndSagForTimeStamp_cold_1(&v37);
  return v37;
}

void FigMotionQuaternionFromDeltaRotation(float *a1)
{
  v1 = sqrtf(((a1[1] * a1[1]) + (*a1 * *a1)) + (a1[2] * a1[2]));
  if (v1 > 1.0e-10)
  {
    __sincos_stret(v1 * 0.5);
  }
}

float64_t FigMotionMultiplyByInverseOfQuaternion(double *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = vnegq_f64(*(a2 + 1));
  v5 = -*(a2 + 3);
  return FigMotionMultiplyQuaternions(&v3, a1);
}

uint64_t pgs_computeTransformFromCameraMotion(double *a1, double *a2, float32x2_t *a3, float32x2_t *a4, uint64_t a5, float a6)
{
  if (a1 && a2 && a5)
  {
    v8.f64[0] = *a2;
    v9 = 0uLL;
    v10 = 0uLL;
    if (a3)
    {
      v10 = vcvtq_f64_f32(*a3);
    }

    v8.f64[1] = a2[1];
    v11 = vaddq_f64(v8, v10);
    if (a4)
    {
      v9 = vcvtq_f64_f32(*a4);
    }

    v19 = LODWORD(a6);
    v20 = v11;
    v17 = LODWORD(a6);
    v18 = vaddq_f64(v8, v9);
    pgs_inverseRotationMatrixFromQuaternion(a1, v16);
    FigMotionComputeTransformFromRotation(&v19, &v17, v16, a5);
    v21 = 0;
    v12 = *a2;
    v13 = a2[1];
    ComputePerspectiveProjectedPoint(a5, &v21 + 1, &v21, v12, v13);
    result = 0;
    *a5 = 1065353216;
    v15 = *(&v21 + 1) - v12;
    *(a5 + 32) = 1065353216;
    *(a5 + 8) = v15;
    *(a5 + 12) = 0x3F80000000000000;
    *(a5 + 20) = *&v21 - v13;
    *(a5 + 24) = 0;
  }

  else
  {
    pgs_computeTransformFromCameraMotion_cold_1(&v21 + 1);
    return HIDWORD(v21);
  }

  return result;
}

double FigMotionComputeTransformFromRotation(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1];
  *(a4 + 32) = *(a3 + 8);
  *a4 = v6;
  *(a4 + 16) = v7;
  *&v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  FigMotionPostMultiplyScalingTranslationToTransform(a4, 1.0 / *a2, -*&v7 / *a2, 1.0 / *a2, -v8 / *a2);
  v10.i32[0] = *a1;
  v11.i64[0] = *(a1 + 8);
  *v11.i32 = *v11.i64;
  v12 = *(a1 + 16);
  v13 = *a1;

  return FigMotionPreMultiplyScalingTranslationToTransform(a4, v10, v11, v13, v12, v9);
}

float pgs_inverseRotationMatrixFromQuaternion(double *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 + v2;
  v5 = a1[2];
  v6 = a1[3];
  v7 = v5 + v5;
  v8 = v6 + v6;
  *&v2 = v2;
  *&v5 = v5;
  *&v6 = v6;
  *&v6 = *&v6 * v8;
  v9 = 1.0 - (*&v2 * v4);
  v10 = (1.0 - (*&v5 * v7)) - *&v6;
  *(a2 + 32) = v9 - (*&v5 * v7);
  *&v5 = *&v5 * v8;
  *&v3 = v3;
  v11 = v4 * *&v3;
  *(a2 + 16) = v9 - *&v6;
  *(a2 + 20) = *&v5 - v11;
  *&v6 = (*&v2 * v7) + (v8 * *&v3);
  *a2 = v10;
  *(a2 + 4) = (*&v2 * v7) - (v8 * *&v3);
  *&v2 = *&v2 * v8;
  *&v3 = v7 * *&v3;
  *(a2 + 8) = *&v2 + *&v3;
  *(a2 + 12) = LODWORD(v6);
  result = *&v2 - *&v3;
  *(a2 + 24) = result;
  *(a2 + 28) = *&v5 + v11;
  return result;
}

float FigMotionPostMultiplyScalingTranslationToTransform(float *a1, float a2, float a3, float a4, float a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[6];
  v10 = a1[7];
  v11 = (a1[2] + (a5 * v6)) + (a3 * *a1);
  v12 = (a1[5] + (a5 * v8)) + (a3 * v7);
  a1[8] = (a1[8] + (a5 * v10)) + (a3 * v9);
  v13 = v5 * a2;
  a1[2] = v11;
  a1[3] = v7 * a2;
  result = v9 * a2;
  *a1 = v13;
  a1[1] = v6 * a4;
  a1[4] = v8 * a4;
  a1[5] = v12;
  a1[6] = result;
  a1[7] = v10 * a4;
  return result;
}

float ComputePerspectiveProjectedPoint(float *a1, float *a2, float *a3, float a4, float a5)
{
  v5 = (a1[8] + (a1[7] * a5)) + (a1[6] * a4);
  if (fabsf(v5) > 0.00000001)
  {
    v5 = 1.0 / v5;
  }

  *a2 = ((a1[2] + (a1[1] * a5)) + (*a1 * a4)) * v5;
  result = v5 * ((a1[5] + (a1[4] * a5)) + (a1[3] * a4));
  *a3 = result;
  return result;
}

double FigMotionPreMultiplyScalingTranslationToTransform(uint64_t a1, int8x16_t a2, int32x4_t a3, float a4, float a5, int8x16_t a6)
{
  a6.i32[0] = *(a1 + 24);
  v6 = a3;
  *&v6.i32[1] = a5;
  v7 = vzip1q_s32(v6, v6);
  v7.i32[2] = a3.i32[0];
  v8 = a2;
  *&v8.i32[1] = a4;
  v9 = vzip1q_s32(v8, v8);
  v9.i32[2] = a2.i32[0];
  a2.i64[0] = *(a1 + 28);
  v10 = vextq_s8(vextq_s8(a6, a6, 4uLL), a2, 0xCuLL);
  v10.i32[3] = v10.i32[0];
  *a1 = vmlaq_f32(vmulq_f32(v10, v7), *a1, v9);
  *a2.i8 = vmla_n_f32(vmul_n_f32(*a2.i8, a5), *(a1 + 16), a4);
  *(a1 + 16) = a2.i64[0];
  return *a2.i64;
}

uint64_t pgs_limitTransformToOverscan(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(a1 + 28);
  v5 = vcvt_f32_s32(vadd_s32(vadd_s32(v4, *(a1 + 36)), -1));
  v33 = v5.i32[1];
  v31[0] = v4.i32[0];
  v31[1] = v4.i32[1];
  v31[2] = *v5.i32;
  v31[3] = v4.i32[1];
  v31[4] = v4.i32[0];
  v32 = vrev64_s32(v5);
  v6 = *a2;
  v7 = a2[1];
  v8 = (v7 + a2[3]) + -1.0;
  v9 = *(a3 + 8);
  v10 = *(a3 + 20);
  v11 = v6 + 0.5;
  v12 = v7 + 0.5;
  v13 = ((v6 + a2[2]) + -1.0) + -0.5;
  v14 = fabsf(v9);
  v15 = v8 + -0.5;
  v16 = fabsf(v10);
  v17 = 3.4028e38;
  do
  {
    v18 = v31[v3];
    v19 = v9 + v18;
    if ((v9 + v18) < v11)
    {
      v20 = -1.0;
      if (v14 < 0.00000001)
      {
        goto LABEL_14;
      }

      v21 = v11 - v18;
      goto LABEL_13;
    }

    if (v19 > v13)
    {
      v20 = -1.0;
    }

    else
    {
      v20 = 1.0;
    }

    if (v14 >= 0.00000001 && v19 > v13)
    {
      v21 = v13 - v18;
LABEL_13:
      v20 = v21 / v9;
    }

LABEL_14:
    v23 = v31[v3 + 1];
    v24 = v10 + v23;
    if ((v10 + v23) < v12)
    {
      v25 = -1.0;
      if (v16 < 0.00000001)
      {
        goto LABEL_24;
      }

      v26 = v12 - v23;
      goto LABEL_23;
    }

    v27 = v24 <= v15;
    if (v24 > v15)
    {
      v25 = -1.0;
    }

    else
    {
      v25 = 1.0;
    }

    if (!v27 && v16 >= 0.00000001)
    {
      v26 = v15 - v23;
LABEL_23:
      v25 = v26 / v10;
    }

LABEL_24:
    if (v20 >= v25)
    {
      v20 = v25;
    }

    if (v17 >= v20)
    {
      v17 = v20;
    }

    v3 += 2;
  }

  while (v3 != 8);
  if (v17 < 0.0 || v17 > 1.0)
  {
    *(a1 + 49) = 1;
    return 4294954511;
  }

  else
  {
    if (v17 < 1.0)
    {
      *(a3 + 8) = v9 * v17;
      *(a3 + 20) = v10 * v17;
    }

    v29 = 0;
    if (v17 < *(a1 + 44))
    {
      *(a1 + 44) = v17;
    }
  }

  return v29;
}

CMTime *BWGetOriginalPresentationTimeStampFromBuffer@<X0>(void *a1@<X0>, CMTime *a2@<X8>)
{
  v4 = CMGetAttachment(a1, *off_1E798A420, 0);
  v5 = MEMORY[0x1E6960C70];
  *&a2->value = *MEMORY[0x1E6960C70];
  a2->epoch = *(v5 + 16);
  if (v4)
  {

    return CMTimeMakeFromDictionary(a2, v4);
  }

  else
  {

    return CMSampleBufferGetPresentationTimeStamp(a2, a1);
  }
}

uint64_t __multiStreamCameraSourceNode_outputSampleBuffer_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) liveFormat];
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 makeConfiguredFormatLive];
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_270()
{
  *(v1 - 192) = 0u;
  *(v1 - 176) = 0u;
  *(v1 - 160) = 0u;
  *(v1 - 144) = 0u;
  return *(v0 + 656);
}

uint64_t OUTLINED_FUNCTION_234(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, CMTime *time1)
{
  a9 = *v12;
  a10 = *(v12 + 16);

  return CMTimeCompare(&time1, &a9);
}

uint64_t OUTLINED_FUNCTION_234_0()
{
  *(v1 - 208) = 0u;
  *(v1 - 192) = 0u;
  *(v1 - 176) = 0u;
  *(v1 - 160) = 0u;

  return [v0 captureSettings];
}

void *psn_updateFocusDistanceBasedScene(uint64_t a1, void *a2)
{
  result = [a2 objectForKeyedSubscript:*off_1E798B2F0];
  if (result)
  {
    [result floatValue];
    v6 = v5;
    result = [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B320), "intValue"}];
    if (result != 1)
    {
      v7 = 100.0;
      if (v6 >= 0.0 && v6 <= 100.0)
      {
        v7 = v6;
      }

      return BWSmartCameraSceneUpdateWithConfidence(a1, v7);
    }
  }

  return result;
}

uint64_t BWSmartCameraSceneUpdateWithConfidence(uint64_t result, float a2)
{
  if (*result != 1)
  {
    return result;
  }

  if (*(result + 26))
  {
    *(result + 26) = 0;
    v2 = 20;
    if (*(result + 1))
    {
      v2 = 22;
    }

    *(result + 24) = *(result + v2);
    v3 = a2;
  }

  else
  {
    v3 = *(result + 8);
  }

  v4 = (*(result + 4) * a2) + (v3 * (1.0 - *(result + 4)));
  *(result + 8) = v4;
  v5 = *(result + 1);
  v6 = *(result + 12);
  if (v5 == 1)
  {
    if (v4 < (v6 - *(result + 16)))
    {
      v7 = 22;
LABEL_12:
      v8 = *(result + v7);
      v9 = *(result + 24);
      if (v9 >= v8)
      {
        v10 = 0;
        *(result + 1) = v5 ^ 1;
      }

      else
      {
        v10 = v9 + 1;
      }

      *(result + 24) = v10;
      return result;
    }
  }

  else if (v4 > v6)
  {
    v7 = 20;
    goto LABEL_12;
  }

  if (*(result + 24))
  {
    *(result + 24) = 0;
  }

  return result;
}

CFTypeRef OUTLINED_FUNCTION_222(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CFStringRef key)
{

  return CMGetAttachment(v19, key, 0);
}

double acpr_convertFloatRowMajorArrayToSimdMatrix(uint64_t *a1, double a2, double a3, double a4, double a5, int32x4_t a6)
{
  v6.i64[0] = *a1;
  a6.i64[0] = a1[4];
  v6.i64[1] = a1[2];
  *&result = vuzp1q_s32(v6, a6).u64[0];
  return result;
}

double acpr_computeRelativeExtrinsics(int32x4_t a1, int32x4_t a2, int32x4_t a3, double a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  v7 = 0;
  v9[2] = vzip1q_s32(vzip2q_s32(a1, a3), vdupq_laneq_s32(a2, 2));
  memset(v10, 0, sizeof(v10));
  do
  {
    v10[v7] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a5, COERCE_FLOAT(v9[v7])), a6, *&v9[v7], 1), a7, v9[v7], 2);
    ++v7;
  }

  while (v7 != 3);
  return *v10;
}

__n128 acpr_computePixelBufferToRawSensorHomography@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17.f64[0] = a2;
  v17.f64[1] = SHIDWORD(a2);
  FigCFDictionaryGetCGRectIfPresent();
  [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798B5A8), "doubleValue"}];
  v6 = v5;
  [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798B5A0), "doubleValue"}];
  v16.f64[0] = v6;
  v16.f64[1] = v7;
  FigCFDictionaryGetCGRectIfPresent();
  v8 = vdivq_f64(v16, v17);
  v9 = vmlsq_f64(0, v8, 0);
  v10 = v8.f64[0];
  v8.f64[0] = 0.0;
  *a3 = *&v10;
  *(a3 + 16) = 0u;
  *(a3 + 32) = v8;
  *(a3 + 48) = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  *(a3 + 64) = v9;
  *(a3 + 80) = result;
  return result;
}

uint64_t BWInferenceGetAttachedInferenceResult(const void *a1, uint64_t a2)
{
  v3 = CMGetAttachment(a1, @"Inferences", 0);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:a2];

  return [v3 objectForKeyedSubscript:v4];
}

double OUTLINED_FUNCTION_188(double a1, double a2, double a3, double a4)
{
  v6 = v4[243];
  v7 = v4[244];
  v8 = v4[245];

  return FigCaptureTransformNormalizedRectFromCoordinateSpaceOfNormalizedRect(a1, a2, a3, a4, v6, v7, v8);
}

BOOL OUTLINED_FUNCTION_111_3(NSObject *a1)
{
  v3 = *(v1 - 117);

  return os_log_type_enabled(a1, v3);
}

double psn_pixelBufferRect(__CVBuffer *a1)
{
  v2 = *MEMORY[0x1E695F058];
  CVPixelBufferGetWidth(a1);
  CVPixelBufferGetHeight(a1);
  return v2;
}

double FigCaptureMetadataUtilitiesRectWithAspectRatioInsideDimensions(double a1, double a2, float a3)
{
  v3 = a1 / a2;
  if (v3 < a3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a1 * a3 / v3;
  }

  return (a1 - v4) * 0.5;
}

CGFloat psn_rectBoundedByRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (a7 >= a3)
  {
    v14 = a3;
  }

  else
  {
    v14 = a7;
  }

  if (v14 >= 0.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0.0;
  }

  if (a8 >= a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = a8;
  }

  if (v16 < 0.0)
  {
    v16 = 0.0;
  }

  v24 = v16;
  v26.origin.x = a5;
  v26.origin.y = a6;
  v26.size.width = a7;
  v26.size.height = a8;
  MinX = CGRectGetMinX(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  v25 = v15;
  v18 = CGRectGetMaxX(v27) - v15 < a1;
  v19 = a1;
  if (v18)
  {
    v28.origin.x = a5;
    v28.origin.y = a6;
    v28.size.width = a7;
    v28.size.height = a8;
    v19 = CGRectGetMaxX(v28) - v15;
  }

  if (MinX <= v19)
  {
    v30.origin.x = a5;
    v30.origin.y = a6;
    v30.size.width = a7;
    v30.size.height = a8;
    v20 = v24;
    if (CGRectGetMaxX(v30) - v25 < a1)
    {
      v31.origin.x = a5;
      v31.origin.y = a6;
      v31.size.width = a7;
      v31.size.height = a8;
      a1 = CGRectGetMaxX(v31) - v25;
    }
  }

  else
  {
    v29.origin.x = a5;
    v29.origin.y = a6;
    v29.size.width = a7;
    v29.size.height = a8;
    a1 = CGRectGetMinX(v29);
    v20 = v24;
  }

  v32.origin.x = a5;
  v32.origin.y = a6;
  v32.size.width = a7;
  v32.size.height = a8;
  MinY = CGRectGetMinY(v32);
  v33.origin.x = a5;
  v33.origin.y = a6;
  v33.size.width = a7;
  v33.size.height = a8;
  v18 = CGRectGetMaxY(v33) - v20 < a2;
  v22 = a2;
  if (v18)
  {
    v34.origin.x = a5;
    v34.origin.y = a6;
    v34.size.width = a7;
    v34.size.height = a8;
    v22 = CGRectGetMaxY(v34) - v20;
  }

  if (MinY <= v22)
  {
    v36.origin.x = a5;
    v36.origin.y = a6;
    v36.size.width = a7;
    v36.size.height = a8;
    if (CGRectGetMaxY(v36) - v20 < a2)
    {
      v37.origin.x = a5;
      v37.origin.y = a6;
      v37.size.width = a7;
      v37.size.height = a8;
      CGRectGetMaxY(v37);
    }
  }

  else
  {
    v35.origin.x = a5;
    v35.origin.y = a6;
    v35.size.width = a7;
    v35.size.height = a8;
    CGRectGetMinY(v35);
  }

  return a1;
}

double psn_conformRectForMSR420vfBoundedByRect(int a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  v13 = a6;
  v15 = FigCaptureCeilFloatToMultipleOf(v14, v13);
  v16 = a7;
  v17 = FigCaptureCeilFloatToMultipleOf(v14, v16);
  v18 = a8;
  v19 = FigCaptureFloorFloatToMultipleOf(2, v18);
  v20 = a9;
  v21 = FigCaptureFloorFloatToMultipleOf(2, v20);
  v48.origin.x = v15;
  v42 = v17;
  v48.origin.y = v17;
  v48.size.width = v19;
  v48.size.height = v21;
  MaxX = CGRectGetMaxX(v48);
  v49.origin.x = a6;
  v49.origin.y = a7;
  v49.size.width = a8;
  v49.size.height = a9;
  if (MaxX > CGRectGetMaxX(v49))
  {
    v50.origin.x = a6;
    v50.origin.y = a7;
    v50.size.width = a8;
    v50.size.height = a9;
    v19 = CGRectGetMaxX(v50) - v15;
  }

  v51.origin.x = v15;
  v51.origin.y = v42;
  v51.size.width = v19;
  v51.size.height = v21;
  MaxY = CGRectGetMaxY(v51);
  v52.origin.x = a6;
  v52.origin.y = a7;
  v52.size.width = a8;
  v52.size.height = a9;
  if (MaxY > CGRectGetMaxY(v52))
  {
    v53.origin.x = a6;
    v53.origin.y = a7;
    v53.size.width = a8;
    v53.size.height = a9;
    v21 = CGRectGetMaxY(v53) - v42;
  }

  v24 = a4;
  v25 = FigCaptureRoundFloatToMultipleOf(2, v24);
  v26 = a5;
  v27 = FigCaptureRoundFloatToMultipleOf(2, v26);
  if (v19 >= v25)
  {
    v28 = v25;
  }

  else
  {
    v28 = v19;
  }

  if (v28 >= 0.0)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0.0;
  }

  if (v21 < v27)
  {
    v27 = v21;
  }

  if (v27 >= 0.0)
  {
    v30 = v27;
  }

  else
  {
    v30 = 0.0;
  }

  v31 = a2;
  v32 = FigCaptureRoundFloatToMultipleOf(v14, v31);
  v33 = a3;
  v34 = FigCaptureRoundFloatToMultipleOf(v14, v33);
  v54.origin.x = v15;
  v54.origin.y = v42;
  v54.size.width = v19;
  v54.size.height = v21;
  MinX = CGRectGetMinX(v54);
  v55.origin.x = v15;
  v55.origin.y = v42;
  v55.size.width = v19;
  v55.size.height = v21;
  rect = v29;
  v36 = CGRectGetMaxX(v55) - v29 < v32;
  v37 = v32;
  if (v36)
  {
    v56.origin.x = v15;
    v56.origin.y = v42;
    v56.size.width = v19;
    v56.size.height = v21;
    v37 = CGRectGetMaxX(v56) - v29;
  }

  v38 = v34;
  if (MinX <= v37)
  {
    v58.origin.x = v15;
    v58.origin.y = v42;
    v58.size.width = v19;
    v58.size.height = v21;
    if (CGRectGetMaxX(v58) - rect < v32)
    {
      v59.origin.x = v15;
      v59.origin.y = v42;
      v59.size.width = v19;
      v59.size.height = v21;
      v32 = CGRectGetMaxX(v59) - rect;
    }
  }

  else
  {
    v57.origin.x = v15;
    v57.origin.y = v42;
    v57.size.width = v19;
    v57.size.height = v21;
    v32 = CGRectGetMinX(v57);
  }

  v60.origin.x = v15;
  v60.origin.y = v42;
  v60.size.width = v19;
  v60.size.height = v21;
  MinY = CGRectGetMinY(v60);
  v61.origin.x = v15;
  v61.origin.y = v42;
  v61.size.width = v19;
  v61.size.height = v21;
  v36 = CGRectGetMaxY(v61) - v30 < v38;
  v40 = v34;
  if (v36)
  {
    v62.origin.x = v15;
    v62.origin.y = v42;
    v62.size.width = v19;
    v62.size.height = v21;
    v40 = CGRectGetMaxY(v62) - v30;
  }

  if (MinY <= v40)
  {
    v64.origin.x = v15;
    v64.origin.y = v42;
    v64.size.width = v19;
    v64.size.height = v21;
    if (CGRectGetMaxY(v64) - v30 < v38)
    {
      v65.origin.x = v15;
      v65.origin.y = v42;
      v65.size.width = v19;
      v65.size.height = v21;
      CGRectGetMaxY(v65);
    }
  }

  else
  {
    v63.origin.x = v15;
    v63.origin.y = v42;
    v63.size.width = v19;
    v63.size.height = v21;
    CGRectGetMinY(v63);
  }

  return v32;
}

double psn_smallestBoundingRectAlignedToMultipleOf(int a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = a3 + 0.001;
  v12 = FigCaptureFloorFloatToMultipleOf(a1, v11);
  v13 = a4;
  v14 = a4 + 0.001;
  v15 = FigCaptureFloorFloatToMultipleOf(a1, v14);
  v16 = a5;
  v17 = a5 + -0.001;
  v18 = FigCaptureCeilFloatToMultipleOf(a1, v17);
  v19 = a6 + -0.001;
  v20 = FigCaptureCeilFloatToMultipleOf(a1, v19);
  v21 = v20;
  if (a2)
  {
    return v12;
  }

  v30.origin.x = v12;
  v30.origin.y = v15;
  v30.size.width = v18;
  v30.size.height = v20;
  recta = CGRectGetMaxX(v30);
  v31.origin.x = a3;
  v31.origin.y = v13;
  v31.size.width = v16;
  v31.size.height = a6;
  v23 = recta < CGRectGetMaxX(v31);
  v24 = -0.0;
  rect = a6;
  if (v23)
  {
    v24 = a1;
  }

  v25 = v24 + v18;
  v22 = v12;
  v32.origin.x = v12;
  v32.origin.y = v15;
  v32.size.width = v25;
  v32.size.height = v21;
  CGRectGetMaxY(v32);
  v33.origin.x = a3;
  v33.origin.y = v13;
  v33.size.width = v16;
  v33.size.height = rect;
  CGRectGetMaxY(v33);
  return v22;
}

uint64_t OUTLINED_FUNCTION_233()
{
  *(v0 - 108) = 0;
  *(v0 - 109) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_233_0()
{

  return [v0 countByEnumeratingWithState:v1 - 224 objects:&STACK[0x290] count:16];
}

uint64_t BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer(opaqueCMSampleBuffer *a1, __CVBuffer *a2, int a3, CFTypeRef *a4, CMSampleBufferRef *a5)
{
  sampleBufferOut = 0;
  timingArrayEntriesNeededOut = 0;
  memset(&timingArrayOut, 0, sizeof(timingArrayOut));
  formatDescriptionOut = 0;
  if (!a1)
  {
    BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer_cold_7(&v30);
LABEL_44:
    v23 = v30;
    goto LABEL_45;
  }

  if (!a2)
  {
    BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer_cold_6(&v30);
    goto LABEL_44;
  }

  if (!a4)
  {
    BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer_cold_5(&v30);
    goto LABEL_44;
  }

  if (!a5)
  {
    BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer_cold_4(&v30);
    goto LABEL_44;
  }

  v10 = *a4;
  SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(a1, 1, 0, &timingArrayEntriesNeededOut);
  if (SampleTimingInfoArray)
  {
    v23 = SampleTimingInfoArray;
    BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer_cold_1();
LABEL_45:
    if (formatDescriptionOut)
    {
      CFRelease(formatDescriptionOut);
    }

    goto LABEL_34;
  }

  v25 = a3;
  if (timingArrayEntriesNeededOut)
  {
    CMSampleBufferGetSampleTimingInfoArray(a1, timingArrayEntriesNeededOut, &timingArrayOut, &timingArrayEntriesNeededOut);
  }

  v12 = *MEMORY[0x1E695E480];
  v13 = 1;
  v14 = v10;
  do
  {
    v15 = v14;
    if (!v14)
    {
      v16 = CMVideoFormatDescriptionCreateForImageBuffer(v12, a2, &formatDescriptionOut);
      if (v16)
      {
        v23 = v16;
        BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer_cold_2();
        goto LABEL_45;
      }

      v15 = formatDescriptionOut;
    }

    if (timingArrayEntriesNeededOut)
    {
      p_timingArrayOut = &timingArrayOut;
    }

    else
    {
      p_timingArrayOut = 0;
    }

    v18 = CMSampleBufferCreateForImageBuffer(v12, a2, 1u, 0, 0, v15, p_timingArrayOut, &sampleBufferOut);
    v20 = v18 == -12743 && formatDescriptionOut == 0;
    if (v18 && !v20)
    {
      v23 = v18;
      BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer_cold_3();
      goto LABEL_45;
    }

    if (v20)
    {
      v14 = 0;
    }

    if (sampleBufferOut)
    {
      break;
    }

    v21 = (v10 != 0) & v13;
    v13 = 0;
  }

  while ((v21 & 1) != 0);
  CMPropagateAttachments(a1, sampleBufferOut);
  if (v25)
  {
    sbu_replaceAttachedMediaWithDeepCopy(sampleBufferOut);
  }

  else
  {
    CMRemoveAttachment(sampleBufferOut, @"AttachedMedia");
  }

  *a5 = sampleBufferOut;
  sampleBufferOut = 0;
  v22 = formatDescriptionOut;
  if (!formatDescriptionOut)
  {
    return 0;
  }

  if (*a4)
  {
    CFRelease(*a4);
    v22 = formatDescriptionOut;
  }

  v23 = 0;
  *a4 = v22;
  formatDescriptionOut = 0;
LABEL_34:
  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  return v23;
}

float64_t FigCaptureMetadataUtilitiesClampRectToBoundingRect(float64x2_t a1, float64_t a2, double a3, double a4, float64_t a5, float64_t a6, double a7, double a8)
{
  v8.f64[0] = a5;
  v8.f64[1] = a6;
  *&v9 = a5 + a7;
  *&v10 = a6 + a8;
  v11.f64[0] = a1.f64[0] + a3;
  v11.f64[1] = a2 + a4;
  a1.f64[1] = a2;
  v12.i64[0] = __PAIR64__(v10, v9);
  v12.i64[1] = __PAIR64__(v10, v9);
  a1.f64[0] = vminnmq_f32(vmaxnmq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(a1), v11), vcvt_hight_f32_f64(vcvt_f32_f64(v8), v8)), v12).f32[0];
  return a1.f64[0];
}

uint64_t BWUpdateCameraIntrinsicsMatrixOnSampleBuffer(const void *a1, const __CFString *a2, int a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  if (!a1)
  {
    return 4294954516;
  }

  result = CMGetAttachment(a1, a2, 0);
  if (result)
  {
    v25 = result;
    if (a3 == 90 || a3 == 270)
    {
      v26 = a11;
      a11 = a12;
    }

    else
    {
      v26 = a12;
    }

    v27 = a11 / a7;
    v28 = v26 / a8;
    if (a3 || (v27 == 1.0 ? (v29 = v28 == 1.0) : (v29 = 0), !v29 || (a4 & 1) != 0 || (a5 == a9 ? (v30 = a6 == a10) : (v30 = 0), !v30)))
    {
      v76 = 0u;
      v77 = 0u;
      v75 = 0u;
      if ([result length] != 48)
      {
        return 4294954516;
      }

      [v25 getBytes:&v75 length:{objc_msgSend(v25, "length")}];
      v31 = *&v75;
      v32 = *(&v76 + 1);
      v58 = v77;
      HIDWORD(v61) = DWORD1(v77);
      if (a3 == 270)
      {
        v33 = *(&v76 + 1);
      }

      else
      {
        v33 = *&v75;
      }

      if (a3 == 270)
      {
        v34 = v28;
      }

      else
      {
        v34 = v27;
      }

      if (a3 == 270)
      {
        v35 = *&v75;
      }

      else
      {
        v35 = *(&v76 + 1);
      }

      if (a3 == 270)
      {
        v36 = v27;
      }

      else
      {
        v36 = v28;
      }

      if (a3 == 90)
      {
        v37 = v28;
      }

      else
      {
        v32 = v33;
        v37 = v34;
      }

      if (a3 == 90)
      {
        v38 = v27;
      }

      else
      {
        v31 = v35;
        v38 = v36;
      }

      v39 = v38 * v31;
      v40 = v37 * v32;
      memset(&v74, 0, sizeof(v74));
      CGAffineTransformMakeTranslation(&v74, -a5, -a6);
      Scale = CGAffineTransformMakeScale(&v70, v27, v28);
      OUTLINED_FUNCTION_7_34(Scale, v42, v43, v44, v45, v46, v47, v48, v58, v61, v64, v66, v68, *&v70.a, *&v70.b, *&v70.c, *&v70.d, *&v70.tx, *&v70.ty, *&v71.f64[0], *&v71.f64[1], *&v72.f64[0], *&v72.f64[1], *&v73.f64[0], *&v73.f64[1], *&v74.a, *&v74.c, *&v74.tx);
      *&v74.a = v71;
      *&v74.c = v72;
      *&v74.tx = v73;
      FigCaptureMakeMirrorAndRotateVideoTransform((v27 * a7 + -1.0), (v28 * a8 + -1.0), a4, a3, &v70);
      OUTLINED_FUNCTION_7_34(v49, v50, v51, v52, v53, v54, v55, v56, v59, v62, v65, v67, v69, *&v70.a, *&v70.b, *&v70.c, *&v70.d, *&v70.tx, *&v70.ty, *&v71.f64[0], *&v71.f64[1], *&v72.f64[0], *&v72.f64[1], *&v73.f64[0], *&v73.f64[1], *&v74.a, *&v74.c, *&v74.tx);
      *&v74.c = v72;
      *&v74.tx = v73;
      *&v74.a = v71;
      *&v75 = v40;
      *(&v76 + 1) = v39;
      *&v77 = vcvt_f32_f64(vaddq_f64(v73, vmlaq_n_f64(vmulq_n_f64(v72, v63), v71, v60)));
      v57 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v75 length:48];
      CMSetAttachment(a1, a2, v57, 1u);
    }

    return 0;
  }

  return result;
}

uint64_t BWUpdateTrackedFacesMetadataOnSampleBuffer(void *a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, double a8, double a9, uint64_t a10, int a11, int a12)
{
  v20 = a11 == 90 || a11 == 270;
  if (v20)
  {
    v21 = a9;
  }

  else
  {
    v21 = a8;
  }

  v22 = v21 / a4;
  if (v20)
  {
    v23 = a8;
  }

  else
  {
    v23 = a9;
  }

  v24 = v23 / a5;
  if (!a11)
  {
    v25 = v22 == 1.0 && v24 == 1.0;
    if (v25 && a12 == 0)
    {
      return 0;
    }
  }

  v27 = 1.0;
  if (a12)
  {
    v27 = -1.0;
  }

  v112 = v27;
  v28 = *off_1E798A510;
  result = CMGetAttachment(a1, *off_1E798A510, 0);
  if (result)
  {
    v30 = result;
    v31 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:result];
    v32 = [v30 objectForKeyedSubscript:getkCVAFaceTracking_TrackedFacesArray()];
    result = [v32 count];
    if (result)
    {
      value = v31;
      v102 = [MEMORY[0x1E695DF70] array];
      [v31 setObject:v102 forKeyedSubscript:getkCVAFaceTracking_TrackedFacesArray()];
      memset(&v126, 0, sizeof(v126));
      CGAffineTransformMakeTranslation(&v126, -a2, -a3);
      CGAffineTransformMakeScale(&v127, v22, v24);
      OUTLINED_FUNCTION_4_44();
      OUTLINED_FUNCTION_9_26();
      OUTLINED_FUNCTION_5_44();
      FigCaptureMakeMirrorAndRotateVideoTransform((v22 * a4 + -1.0), (v24 * a5 + -1.0), a12, a11, &v127);
      OUTLINED_FUNCTION_4_44();
      OUTLINED_FUNCTION_9_26();
      OUTLINED_FUNCTION_5_44();
      CGAffineTransformMakeTranslation(&v127, a6, a7);
      OUTLINED_FUNCTION_4_44();
      OUTLINED_FUNCTION_9_26();
      OUTLINED_FUNCTION_5_44();
      v122 = 0u;
      v123 = 0u;
      v124 = 0u;
      v125 = 0u;
      v103 = [v32 countByEnumeratingWithState:&v122 objects:v121 count:16];
      if (v103)
      {
        v101 = *v123;
        v33 = a11 * 3.14159265 / 180.0;
        v34 = __sincosf_stret(v33);
        *&v35 = -v34.__sinval;
        HIDWORD(v35) = LODWORD(v34.__cosval);
        v98 = v35;
        v97 = LODWORD(v112);
        v99 = *(MEMORY[0x1E695F050] + 16);
        v100 = *MEMORY[0x1E695F050];
        while (2)
        {
          for (i = 0; i != v103; ++i)
          {
            if (*v123 != v101)
            {
              objc_enumerationMutation(v32);
            }

            v37 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(*(&v122 + 1) + 8 * i)];
            [v102 addObject:v37];
            [v37 objectForKeyedSubscript:getkCVAFaceTracking_CameraColor()];
            v38 = [OUTLINED_FUNCTION_15() dictionaryWithDictionary:?];
            [v37 setObject:v38 forKeyedSubscript:getkCVAFaceTracking_CameraColor()];
            v39 = MEMORY[0x1E695DF90];
            getkCVAFaceTracking_Extrinsics();
            v40 = [v39 dictionaryWithDictionary:{objc_msgSend(OUTLINED_FUNCTION_15(), "objectForKeyedSubscript:")}];
            v41 = getkCVAFaceTracking_Extrinsics();
            OUTLINED_FUNCTION_10_24(v41);
            v42 = [v40 objectForKeyedSubscript:getkCVAFaceTracking_Rotation()];
            if (v42)
            {
              v43 = v42;
              [objc_msgSend(objc_msgSend(v42 objectAtIndexedSubscript:{0), "objectAtIndexedSubscript:", 0), "floatValue"}];
              v111 = v44;
              [objc_msgSend(objc_msgSend(v43 objectAtIndexedSubscript:{0), "objectAtIndexedSubscript:", 1), "floatValue"}];
              v109 = v45;
              [objc_msgSend(objc_msgSend(v43 objectAtIndexedSubscript:{0), "objectAtIndexedSubscript:", 2), "floatValue"}];
              v113 = v46;
              [objc_msgSend(objc_msgSend(v43 objectAtIndexedSubscript:{1), "objectAtIndexedSubscript:", 0), "floatValue"}];
              v107 = v47;
              [objc_msgSend(objc_msgSend(v43 objectAtIndexedSubscript:{1), "objectAtIndexedSubscript:", 1), "floatValue"}];
              v106 = v48;
              [objc_msgSend(objc_msgSend(v43 objectAtIndexedSubscript:{1), "objectAtIndexedSubscript:", 2), "floatValue"}];
              v108 = v49;
              [objc_msgSend(objc_msgSend(v43 objectAtIndexedSubscript:{2), "objectAtIndexedSubscript:", 0), "floatValue"}];
              v105 = v50;
              [objc_msgSend(objc_msgSend(v43 objectAtIndexedSubscript:{2), "objectAtIndexedSubscript:", 1), "floatValue"}];
              v104 = v51;
              [objc_msgSend(objc_msgSend(v43 objectAtIndexedSubscript:{2), "objectAtIndexedSubscript:", 2), "floatValue"}];
              v55.i64[0] = __PAIR64__(v105, v111);
              v52 = 0;
              v54 = vdupq_lane_s32(v53, 0);
              v55.i64[1] = __PAIR64__(v104, v109);
              v56.i64[0] = v107;
              v56.i64[1] = v106;
              v57 = vzip2q_s32(v55, v56);
              *&v127.a = v97;
              *&v127.c = xmmword_1AD046FF0;
              *&v127.tx = xmmword_1ACF06340;
              memset(&v128, 0, sizeof(v128));
              do
              {
                *(&v128.a + v52) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(__PAIR64__(LODWORD(v34.__sinval), LODWORD(v34.__cosval)), COERCE_FLOAT(*(&v127.a + v52))), v98, *(&v127.a + v52), 1), xmmword_1ACF06340, *(&v127.a + v52), 2);
                v52 += 16;
              }

              while (v52 != 48);
              v58 = 0;
              v60 = v113;
              v60.i32[1] = v108;
              v59 = vzip1q_s32(v55, v56);
              v60.i32[2] = v54.i32[2];
              v127 = v128;
              memset(&v128, 0, sizeof(v128));
              do
              {
                *(&v128.a + v58) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v59, COERCE_FLOAT(*(&v127.a + v58))), v57, *(&v127.a + v58), 1), v60, *(&v127.a + v58), 2);
                v58 += 16;
              }

              while (v58 != 48);
              v110 = v128;
              v119[0] = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(HIDWORD(v128.tx), LODWORD(v128.a)))}];
              v119[1] = [MEMORY[0x1E696AD98] numberWithFloat:v110.c];
              v119[2] = [MEMORY[0x1E696AD98] numberWithFloat:v110.tx];
              v120[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:3];
              HIDWORD(v61) = HIDWORD(v110.a);
              LODWORD(v61) = HIDWORD(v110.a);
              v118[0] = [MEMORY[0x1E696AD98] numberWithFloat:v61];
              HIDWORD(v62) = HIDWORD(v110.c);
              LODWORD(v62) = HIDWORD(v110.c);
              v118[1] = [MEMORY[0x1E696AD98] numberWithFloat:v62];
              HIDWORD(v63) = HIDWORD(v110.tx);
              LODWORD(v63) = HIDWORD(v110.tx);
              v118[2] = [MEMORY[0x1E696AD98] numberWithFloat:v63];
              v120[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:3];
              v117[0] = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(HIDWORD(v110.a), LODWORD(v110.b)))}];
              v117[1] = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(HIDWORD(v110.c), LODWORD(v110.d)))}];
              v117[2] = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(HIDWORD(v110.tx), LODWORD(v110.ty)))}];
              v120[2] = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:3];
              [v40 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", v120, 3), getkCVAFaceTracking_Rotation()}];
            }

            getkCVAFaceTracking_Intrinsics();
            v64 = [OUTLINED_FUNCTION_15() objectForKeyedSubscript:?];
            if (v64)
            {
              v65 = v64;
              [objc_msgSend(objc_msgSend(v64 objectAtIndexedSubscript:{0), "objectAtIndexedSubscript:", 0), "floatValue"}];
              v67 = v66;
              [objc_msgSend(objc_msgSend(v65 objectAtIndexedSubscript:{1), "objectAtIndexedSubscript:", 1), "floatValue"}];
              v69 = v68;
              [objc_msgSend(objc_msgSend(v65 objectAtIndexedSubscript:{0), "objectAtIndexedSubscript:", 2), "floatValue"}];
              v71 = v70;
              [objc_msgSend(objc_msgSend(v65 objectAtIndexedSubscript:{1), "objectAtIndexedSubscript:", 2), "floatValue"}];
              v72 = v22 * v67;
              v73 = v24 * v69;
              v75 = v74;
              v76 = v126.tx + v126.c * v75 + v126.a * v71;
              v77 = v126.d * v75 + v126.b * v71;
              v78 = v126.ty + v77;
              *&v77 = v72;
              v115[0] = [MEMORY[0x1E696AD98] numberWithFloat:v77];
              v115[1] = &unk_1F2243ED0;
              v115[2] = [MEMORY[0x1E696AD98] numberWithDouble:v76];
              v116[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:3];
              v114[0] = &unk_1F2243ED0;
              *&v79 = v73;
              v114[1] = [MEMORY[0x1E696AD98] numberWithFloat:v79];
              v114[2] = [MEMORY[0x1E696AD98] numberWithDouble:v78];
              v116[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:3];
              v116[2] = &unk_1F2248820;
              [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:3];
              v80 = getkCVAFaceTracking_Intrinsics();
              OUTLINED_FUNCTION_10_24(v80);
            }

            [v37 objectForKeyedSubscript:getkCVAFaceTracking_SmoothData()];
            v81 = [OUTLINED_FUNCTION_15() dictionaryWithDictionary:?];
            [v37 setObject:v81 forKeyedSubscript:getkCVAFaceTracking_SmoothData()];
            [v81 objectForKeyedSubscript:getkCVAFaceTracking_Geometry()];
            v82 = [OUTLINED_FUNCTION_15() dictionaryWithDictionary:?];
            [v81 setObject:v82 forKeyedSubscript:getkCVAFaceTracking_Geometry()];
            getkCVAFaceTracking_GeometryLandmarks();
            if ([OUTLINED_FUNCTION_15() objectForKeyedSubscript:?])
            {
              getkCVAFaceTracking_GeometryLandmarks();
              v83 = [objc_msgSend(OUTLINED_FUNCTION_15() "objectForKeyedSubscript:"mutableCopy"")];
              v84 = [v83 length];
              v85 = [v83 mutableBytes];
              if (v84 >= 4)
              {
                v86 = 0;
                v87 = *&v126.a;
                v88 = *&v126.c;
                v89 = *&v126.tx;
                do
                {
                  *v85 = vcvt_f32_f64(vaddq_f64(v89, vmlaq_n_f64(vmulq_n_f64(v88, v85->f32[1]), v87, v85->f32[0])));
                  ++v85;
                  v86 += 2;
                }

                while (v84 >> 2 > v86);
              }

              v90 = getkCVAFaceTracking_GeometryLandmarks();
              OUTLINED_FUNCTION_10_24(v90);
            }

            *&v127.a = v100;
            *&v127.c = v99;
            v91 = [v37 objectForKeyedSubscript:getkCVAFaceTracking_DetectedFaceRect()];
            if (CGRectMakeWithDictionaryRepresentation(v91, &v127))
            {
              FigCaptureMetadataUtilitiesDenormalizeCropRect(v127.a, v127.b, v127.c, v127.d);
              v127.a = v129.origin.x;
              v127.b = v129.origin.y;
              v127.c = v129.size.width;
              v127.d = v129.size.height;
              v128 = v126;
              v130 = CGRectApplyAffineTransform(v129, &v128);
              v127.a = v130.origin.x;
              v127.b = v130.origin.y;
              v127.c = v130.size.width;
              v127.d = v130.size.height;
              ImageBuffer = CMSampleBufferGetImageBuffer(a1);
              if (!ImageBuffer)
              {
                return 4294954516;
              }

              v93 = ImageBuffer;
              CVPixelBufferGetWidth(ImageBuffer);
              CVPixelBufferGetHeight(v93);
              FigCaptureMetadataUtilitiesNormalizeCropRect(v127.a, v127.b, v127.c, v127.d);
              v127.a = v131.origin.x;
              v127.b = v131.origin.y;
              v127.c = v131.size.width;
              v127.d = v131.size.height;
              v94 = CGRectCreateDictionaryRepresentation(v131);
              [v37 setObject:v94 forKeyedSubscript:getkCVAFaceTracking_DetectedFaceRect()];
            }
          }

          v103 = [v32 countByEnumeratingWithState:&v122 objects:v121 count:16];
          if (v103)
          {
            continue;
          }

          break;
        }
      }

      CMSetAttachment(a1, v28, value, 1u);
      return 0;
    }
  }

  return result;
}

void captureSession_setPreviewRunning(const void *a1, uint64_t a2, void *a3)
{
  if ([a3 previewRunning] != a2)
  {
    v9 = @"SectionID";
    v10 = [a3 sinkID];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v7 = kFigCaptureSessionPreviewSinkNotification_DidStartPreviewing;
    if (!a2)
    {
      v7 = kFigCaptureSessionPreviewSinkNotification_DidStopPreviewing;
    }

    v8 = *v7;
    [a3 setPreviewRunning:a2];
    captureSession_postNotificationWithPayload(a1, v8, v6);
  }
}

void __captureSession_setIsUsingCamera_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v4 = 0;
  [*(*(a1 + 32) + 192) setMXSessionProperty:*MEMORY[0x1E69B00F0] value:objc_msgSend(MEMORY[0x1E696AD98] error:{"numberWithBool:", *(a1 + 48)), &v4}];
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  objc_autoreleasePoolPop(v2);
}

BOOL OUTLINED_FUNCTION_362(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, __int16 a42, char a43, os_log_type_t type, int a45)
{

  return os_log_type_enabled(a1, type);
}

void fvcd_estimateOISOutputImageSNR(void *a1)
{
  if ([objc_msgSend(a1 "portType")])
  {
    v2 = 0.125;
  }

  else
  {
    v2 = 0.25;
  }

  v3 = vcvts_n_f32_u32([a1 conversionGain], 0x10uLL);
  v4 = vcvts_n_f32_u32([a1 readNoise_1x], 0x10uLL);
  v5 = [a1 readNoise_8x];
  [a1 integrationTime];
  *&v6 = v6;
  v7 = *&v6 / v2;
  v8 = [a1 aeAverage];
  [a1 gain];
  v10 = v9 * v7;
  v11 = vcvts_n_s32_f32(v10, 8uLL);
  if (v11 >= 2048)
  {
    v12 = 2048;
  }

  else
  {
    v12 = v11;
  }

  v13 = (v8 / v10) / v3;
  if (v11 >= 257)
  {
    v14 = vcvts_n_f32_u32(v5, 0x10uLL);
    if (v11 <= 0x7FF)
    {
      v4 = v4 + ((((v4 - v14) * -256.0) + ((v4 - v14) * v12)) / -1792.0);
    }

    else
    {
      v4 = v14;
    }
  }

  if (v13 != 0.0)
  {
    log10f(v13 / sqrtf(v13 + (v4 * v4)));
  }
}

uint64_t captureSession_setSectionPropertyInternal(uint64_t a1, uint64_t a2, const void *a3, const __CFDictionary *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_setSectionPropertyInternal_cold_1();
  }

  v9 = [*(DerivedStorage + 784) movieFileSinkPipelineWithSinkID:a2];
  v10 = [*(DerivedStorage + 784) visionDataSinkPipelineWithSinkID:a2];
  v11 = [*(DerivedStorage + 784) stillImageSinkPipelineSessionStorageWithSinkID:a2];
  if (CFEqual(a3, @"BeginIrisMovieCaptureHostTime"))
  {
    if (dword_1ED844050)
    {
      LODWORD(time.value) = 0;
      LOBYTE(v84) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v9)
    {
      v84 = 0;
      cs_getMasterClockAndType(*(DerivedStorage + 784), &v84, 0);
      memset(&v85, 0, sizeof(v85));
      CMTimeMakeFromDictionary(&v85, a4);
      memset(&v80, 0, sizeof(v80));
      HostTimeClock = CMClockGetHostTimeClock();
      time = v85;
      CMSyncConvertTime(&v80, &time, HostTimeClock, v84);
      v82 = v80;
      v15 = [(FigCaptureMovieFileSinkPipeline *)v9 irisStagingNode];
      time = v82;
      [v15 setBeginIrisMovieCaptureTime:&time];
    }

LABEL_29:
    captureSession_updateInflightConfigurationWithIrisSinkPropertyForKey(a1, a2, a3, a4);
    return 0;
  }

  if (CFEqual(a3, @"EndIrisMovieCaptureHostTime"))
  {
    if (dword_1ED844050)
    {
      LODWORD(time.value) = 0;
      LOBYTE(v84) = 0;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v9)
    {
      v84 = 0;
      cs_getMasterClockAndType(*(DerivedStorage + 784), &v84, 0);
      memset(&v85, 0, sizeof(v85));
      CMTimeMakeFromDictionary(&v85, a4);
      memset(&v80, 0, sizeof(v80));
      v17 = CMClockGetHostTimeClock();
      time = v85;
      CMSyncConvertTime(&v80, &time, v17, v84);
      v81 = v80;
      v18 = [(FigCaptureMovieFileSinkPipeline *)v9 irisStagingNode];
      time = v81;
      [v18 setEndIrisMovieCaptureTime:&time];
    }

    goto LABEL_29;
  }

  if (CFEqual(a3, @"PreservesLivePhotoCaptureSuspendedOnSessionStop"))
  {
    if (dword_1ED844050)
    {
      LODWORD(time.value) = 0;
      LOBYTE(v84) = 0;
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_29;
  }

  if (!(v9 | v11))
  {
    if (v10)
    {
      if (CFEqual(a3, @"CaptureSessionVideoDataSinkProperty_KeypointDetectionThreshold"))
      {
        [(__CFDictionary *)a4 floatValue];
        [FigCaptureVisionDataSinkPipeline setKeypointDetectionThreshold:v10];
      }

      else if (CFEqual(a3, @"kFigCaptureSessionVisionDataSinkProperty_RuntimeUpdates"))
      {
        [(FigCaptureVisionDataSinkPipeline *)v10 setRuntimeUpdates:a4];
      }

      return 0;
    }

    if (CFEqual(a3, @"CaptureSessionVideoConnection_VideoRotationDegrees"))
    {
      v26 = [*(DerivedStorage + 784) movieFileSinkPipelineWithVideoConnectionID:a2];
      if ([(FigCaptureMovieFileSinkPipeline *)v26 videoOrientationMetadataNode])
      {
        [-[FigCaptureMovieFileSinkPipeline videoOrientationMetadataNode](v26) updateRotationDegrees:{-[__CFDictionary intValue](a4, "intValue")}];
        return 0;
      }
    }

    else if (CFEqual(a3, @"CaptureSessionVideoConnection_VideoMirrored"))
    {
      v32 = [*(DerivedStorage + 784) movieFileSinkPipelineWithVideoConnectionID:a2];
      if ([(FigCaptureMovieFileSinkPipeline *)v32 videoOrientationMetadataNode])
      {
        [-[FigCaptureMovieFileSinkPipeline videoOrientationMetadataNode](v32) updateVideoMirrored:{-[__CFDictionary BOOLValue](a4, "BOOLValue")}];
        return 0;
      }
    }

    else
    {
      if (CFEqual(a3, @"CaptureSessionMetadataSource_MetadataSampleBuffer"))
      {
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v38 = [*(DerivedStorage + 784) metadataSourcePipelines];
        v39 = [v38 countByEnumeratingWithState:&v66 objects:v65 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v67;
LABEL_60:
          v42 = 0;
          while (1)
          {
            if (*v67 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = *(*(&v66 + 1) + 8 * v42);
            if ([objc_msgSend(v43 "sourceID")])
            {
              break;
            }

            if (v40 == ++v42)
            {
              v40 = [v38 countByEnumeratingWithState:&v66 objects:v65 count:16];
              if (v40)
              {
                goto LABEL_60;
              }

              return FigSignalErrorAtGM();
            }
          }

          [(FigCaptureMetadataSourcePipeline *)v43 appendSampleBuffer:a4];
          if (v43)
          {
            return 0;
          }
        }

        return FigSignalErrorAtGM();
      }

      if (CFEqual(a3, @"CaptureSessionVideoDataSinkProperty_PreservesDynamicHDRMetadata"))
      {
        v44 = [*(DerivedStorage + 784) videoDataSinkPipelineWithSinkID:a2];
        if (v44)
        {
          v45 = v44;
          [(FigCaptureVideoDataSinkPipeline *)v44 setVideoHDRImageStatisticsEnabled:?];
          v46 = [(FigCaptureVideoDataSinkPipeline *)v45 sourceID];
          v47 = [(FigCaptureVideoDataSinkPipeline *)v45 sourceDeviceType];
          v48 = [*(DerivedStorage + 784) cameraSourcePipelineWithSourceID:v46];
          v49 = [(FigCaptureCameraSourcePipeline *)v48 captureSourceVideoFormat];
          v50 = [*(DerivedStorage + 784) movieFileSinkPipelineWithSourceID:v46 sourceDeviceType:v47];
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v51 = [*(DerivedStorage + 784) videoDataSinkPipelinesWithSourceID:v46 sourceDeviceType:v47];
          v52 = [v51 countByEnumeratingWithState:&v61 objects:v60 count:16];
          if (v52)
          {
            v53 = v52;
            v59 = v49;
            v54 = *v62;
            while (2)
            {
              for (i = 0; i != v53; ++i)
              {
                if (*v62 != v54)
                {
                  objc_enumerationMutation(v51);
                }

                if (([(FigCaptureVideoDataSinkPipeline *)*(*(&v61 + 1) + 8 * i) videoHDRImageStatisticsEnabled]& 1) != 0)
                {
                  v56 = 1;
                  goto LABEL_85;
                }
              }

              v53 = [v51 countByEnumeratingWithState:&v61 objects:v60 count:16];
              if (v53)
              {
                continue;
              }

              break;
            }

            v56 = 0;
LABEL_85:
            v49 = v59;
          }

          else
          {
            v56 = 0;
          }

          shouldEnableVideoHDRImageStatistics = cs_shouldEnableVideoHDRImageStatistics(v49, v50 != 0, v56);
          [(FigCaptureCameraSourcePipeline *)v48 setVideoHDRImageStatisticsEnabled:?];
        }

        captureSession_updateInflightConfigurationWithVideoDataSinkPropertyForKey(a1, a2, a3, a4);
        return 0;
      }
    }

    return 4294954512;
  }

  if (CFEqual(a3, @"CaptureSessionMovieFileSink_MovieLevelMetadata"))
  {
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v19 = [(FigCaptureMovieFileSinkPipeline *)v9 movieFileSinkNodes];
    v20 = [v19 countByEnumeratingWithState:&v76 objects:v75 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v77;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v77 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v76 + 1) + 8 * j) setMovieLevelMetadata:a4];
        }

        v21 = [v19 countByEnumeratingWithState:&v76 objects:v75 count:16];
        v24 = 0;
      }

      while (v21);
      return v24;
    }

    return 0;
  }

  if (CFEqual(a3, @"CaptureSessionMovieFileSink_BravoCameraSelectionConfigurationForRecording"))
  {
    memset(&v85, 0, 20);
    [(__CFDictionary *)a4 getBytes:&v85 length:20];
    [-[FigCaptureMovieFileSinkPipeline primaryCaptureDevice](v9) setBravoStreamSelectionConfigurationForRecording:{*(&v85.value + 4), *&v85.flags}];
    [-[FigCaptureMovieFileSinkPipeline primaryCaptureDevice](v9) setBravoStreamSelectionConfigurationForRecordingEnabled:LOBYTE(v85.value)];
    return 0;
  }

  if (CFEqual(a3, @"IrisMovieProcessingSuspended"))
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v27 = [(FigCaptureMovieFileSinkPipeline *)v9 movieFileSinkNodes];
    v28 = [v27 countByEnumeratingWithState:&v71 objects:v70 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v72;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v72 != v30)
          {
            objc_enumerationMutation(v27);
          }

          [*(*(&v71 + 1) + 8 * k) setIrisMovieProcessingSuspended:{-[__CFDictionary BOOLValue](a4, "BOOLValue")}];
        }

        v29 = [v27 countByEnumeratingWithState:&v71 objects:v70 count:16];
        v24 = 0;
      }

      while (v29);
      return v24;
    }

    return 0;
  }

  if (CFEqual(a3, @"UserInitiatedCaptureRequestTime"))
  {
    v33 = [v11 primaryCameraSourcePipeline];
    if ([-[FigCaptureCameraSourcePipeline captureDevice](v33) zeroShutterLagEnabled] && !objc_msgSend(-[FigCaptureCameraSourcePipeline captureDevice](v33), "unifiedBracketingMode"))
    {
      v34 = [(__CFDictionary *)a4 unsignedLongLongValue];
      v35 = [v11 previewSinkNode];
      if (!v35)
      {
        return 4294954516;
      }

      [v35 previewPTSDisplayedAtHostTime:v34 allowingExtrapolation:1];
      epoch = v85.epoch;
      v80.value = v85.value;
      flags = v85.flags;
      v80.timescale = v85.timescale;
      if ((v85.flags & 1) == 0)
      {
        return 4294954516;
      }

      v58 = [[FigCaptureStillImageSettings alloc] initWithSettingsID:0];
      [(FigCaptureStillImageSettings *)v58 setUserInitiatedRequestSettings:1];
      [(FigCaptureStillImageSettings *)v58 setStillImageUserInitiatedRequestTime:v34];
      v85.value = v80.value;
      v85.timescale = v80.timescale;
      v85.flags = flags;
      v85.epoch = epoch;
      [(FigCaptureStillImageSettings *)v58 setStillImageUserInitiatedRequestPTS:&v85];
      v24 = [objc_msgSend(objc_msgSend(v11 "primaryStillImageSinkPipeline")];

      if (!v24)
      {
        [v11 setCurrentUserInitiatedRequestHostTime:v34];
        v85.value = v80.value;
        v85.timescale = v80.timescale;
        v85.flags = flags;
        v85.epoch = epoch;
        [v11 setCurrentUserInitiatedRequestPTS:&v85];
      }

      return v24;
    }

    return 0;
  }

  return FigSignalErrorAtGM();
}

void captureSession_updateInflightConfigurationWithIrisSinkPropertyForKey(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_updateInflightConfigurationWithIrisSinkPropertyForKey_cold_1();
  }

  os_unfair_lock_lock((DerivedStorage + 384));
  v7 = *(DerivedStorage + 504);
  v28 = DerivedStorage;
  os_unfair_lock_unlock((DerivedStorage + 384));
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v26 = v7;
  v8 = [v7 connectionConfigurations];
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v39;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v38 + 1) + 8 * i) irisSinkConfiguration];
        if ([objc_msgSend(v13 "sinkID")])
        {
          if (CFEqual(a3, @"BeginIrisMovieCaptureHostTime"))
          {
            if (dword_1ED844050)
            {
              v36 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v15 = v36;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
              {
                v16 = v15;
              }

              else
              {
                v16 = v15 & 0xFFFFFFFE;
              }

              if (v16)
              {
                v17 = *(v28 + 104);
                v29 = 136315650;
                v30 = "captureSession_updateInflightConfigurationWithIrisSinkPropertyForKey";
                v31 = 2114;
                v32 = v17;
                v33 = 2114;
                v34 = a3;
                LODWORD(v25) = 32;
                v24 = &v29;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v22 = v13;
            v23 = 0;
LABEL_29:
            [v22 setIrisMovieCaptureSuspended:{v23, v24, v25}];
            continue;
          }

          if (CFEqual(a3, @"EndIrisMovieCaptureHostTime"))
          {
            if (dword_1ED844050)
            {
              v36 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v19 = v36;
              if (os_log_type_enabled(v18, type))
              {
                v20 = v19;
              }

              else
              {
                v20 = v19 & 0xFFFFFFFE;
              }

              if (v20)
              {
                v21 = *(v28 + 104);
                v29 = 136315650;
                v30 = "captureSession_updateInflightConfigurationWithIrisSinkPropertyForKey";
                v31 = 2114;
                v32 = v21;
                v33 = 2114;
                v34 = a3;
                LODWORD(v25) = 32;
                v24 = &v29;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v22 = v13;
            v23 = 1;
            goto LABEL_29;
          }

          if (CFEqual(a3, @"PreservesLivePhotoCaptureSuspendedOnSessionStop"))
          {
            [v13 setPreservesIrisMovieCaptureSuspendedOnSessionStop:{objc_msgSend(a4, "BOOLValue")}];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v38 objects:v37 count:16];
    }

    while (v10);
  }
}

__SecTask *FigCaptureClientHasEntitlement(_OWORD *a1, __CFString *a2)
{
  if (![(__CFString *)a2 length])
  {
    return 0;
  }

  v4 = *MEMORY[0x1E695E480];
  v5 = a1[1];
  *v10.val = *a1;
  *&v10.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(v4, &v10);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = FigCaptureClientHasEntitlementWithSecTask(v6, a2);
  CFRelease(v7);
  return v8;
}

uint64_t FigCaptureExifOrientationFromRotationDegreesAndMirroring(int a1, int a2)
{
  if (a2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 3;
  }

  if (a2)
  {
    v3 = 5;
  }

  else
  {
    v3 = 8;
  }

  if (a1 != 270)
  {
    v3 = 1;
  }

  if (a1 != 180)
  {
    v2 = v3;
  }

  if (a2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  if (a2)
  {
    v5 = 7;
  }

  else
  {
    v5 = 6;
  }

  if (a1 == 90)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if (!a1)
  {
    v6 = v4;
  }

  if (a1 <= 179)
  {
    return v6;
  }

  else
  {
    return v2;
  }
}

uint64_t FigCaptureRotationDegreesAndMirroringFromExifOrientation(int a1, BOOL *a2)
{
  if (a1 <= 4)
  {
    if (a1 == 4)
    {
      v10 = 180;
    }

    else
    {
      v10 = 0;
    }

    v11 = a1 == 4;
    if (a1 == 3)
    {
      v12 = 180;
    }

    else
    {
      v12 = v10;
    }

    if (a1 == 3)
    {
      v11 = 0;
    }

    v13 = a1 == 2;
    if (a1 == 2)
    {
      result = 0;
    }

    else
    {
      result = v12;
    }

    v4 = v13 || v11;
    if (a2)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (a1 == 8)
    {
      v2 = 270;
    }

    else
    {
      v2 = 0;
    }

    if (a1 == 7)
    {
      v3 = 90;
    }

    else
    {
      v3 = v2;
    }

    v4 = a1 == 7;
    if (a1 == 6)
    {
      v5 = 90;
    }

    else
    {
      v5 = 0;
    }

    if (a1 == 5)
    {
      v6 = 270;
    }

    else
    {
      v6 = v5;
    }

    v7 = a1 == 5;
    v8 = a1 <= 6;
    if (a1 <= 6)
    {
      result = v6;
    }

    else
    {
      result = v3;
    }

    if (v8)
    {
      v4 = v7;
    }

    if (a2)
    {
LABEL_21:
      *a2 = v4;
    }
  }

  return result;
}

void iqsn_imageQueueReleaseCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ReleasedImageInfo = CAImageQueueGetReleasedImageInfo();
  if (ReleasedImageInfo)
  {
    v5 = *ReleasedImageInfo;
    v6 = ReleasedImageInfo[1];
    v7 = ReleasedImageInfo[2];
    *(a3 + 104) = ReleasedImageInfo[3];
    *(a3 + 88) = v7;
    *(a3 + 72) = v6;
    *(a3 + 56) = v5;
  }

  iqsn_releaseBufferContext(a3);
}

void iqsn_releaseBufferContext(void *a1)
{
  if (atomic_fetch_add_explicit(a1 + 30, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v3 = *a1;
    if (v3)
    {
      CFRelease(v3);
      *a1 = 0;
    }

    v4 = *(a1 + 1);
    if (v4)
    {
      CFRelease(v4);
    }

    free(a1);
  }
}

double iqsn_cleanupBufferContext(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v4 = MEMORY[0x1E6960C70];
  *(a1 + 32) = *MEMORY[0x1E6960C70];
  *(a1 + 48) = *(v4 + 16);
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

uint64_t bp_plistObjCompare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Noffset = bp_readNoffset(*(a1 + 8), *(a1 + 41), *(a1 + 41) * a2);
  v6 = bp_readNoffset(*(a1 + 8), *(a1 + 41), *(a1 + 41) * a3);
  v7 = *(*a1 + Noffset);
  v8 = *(*a1 + v6);
  v9 = v8 & 0xF0;
  if (v8 > 0x23)
  {
    v8 &= 0xF0u;
  }

  if ((v7 & 0xF0) == 0x10)
  {
    if (v9 == 16)
    {
      IntForObjectAtOffset = FigCaptureBinaryPlistGetIntForObjectAtOffset(a1, Noffset);
      v11 = FigCaptureBinaryPlistGetIntForObjectAtOffset(a1, v6);
      if (IntForObjectAtOffset < v11)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return IntForObjectAtOffset > v11;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (v7 > 0x23)
  {
    v7 &= 0xF0u;
  }

  if (v7 != 80)
  {
    return 0;
  }

  if (v8 != 80)
  {
    return 1;
  }

  DataAndCountForObjectAtOffset = FigCaptureBinaryPlistGetDataAndCountForObjectAtOffset(a1, Noffset);
  v15 = v14;
  v17 = FigCaptureBinaryPlistGetDataAndCountForObjectAtOffset(a1, v6);
  v18 = v16;
  if (v15 >= v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = v15;
  }

  result = strncmp(DataAndCountForObjectAtOffset, v17, v19);
  if (!result)
  {
    if (v15 >= v18)
    {
      return v15 > v18;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void FigCaptureBinaryPlistInitialize(uint64_t a1, char *__s1, uint64_t a3)
{
  if (strncmp(__s1, "bplist00", 8uLL))
  {
    FigCaptureBinaryPlistInitialize_cold_1();
  }

  *(a1 + 40) = __s1[a3 - 27];
  *(a1 + 41) = __s1[a3 - 26];
  *(a1 + 42) = __s1[a3 - 25];
  v6 = bswap64(*&__s1[a3 - 24]);
  *(a1 + 16) = v6;
  *(a1 + 24) = bswap64(*&__s1[a3 - 16]);
  v7 = bswap64(*&__s1[a3 - 8]);
  *(a1 + 32) = v7;
  *a1 = __s1;
  *(a1 + 8) = &__s1[v7];
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      Noffset = bp_readNoffset(*(a1 + 8), *(a1 + 41), v9 * *(a1 + 41));
      v11 = *(*a1 + Noffset);
      if (v11 > 0x23)
      {
        v11 &= 0xF0u;
      }

      if (v11 == 208)
      {
        FigCaptureBinaryPlistGetDataAndCountForObjectAtOffset(a1, Noffset);
        if (v8 <= v12)
        {
          v8 = v12;
        }
      }

      ++v9;
    }

    while (v9 < *(a1 + 16));
    if (v8)
    {
      v13 = malloc_type_malloc(2 * v8 * *(a1 + 42), 0x49675F4CuLL);
      if (*(a1 + 16))
      {
        v14 = 0;
        do
        {
          v15 = bp_readNoffset(*(a1 + 8), *(a1 + 41), v14 * *(a1 + 41));
          v16 = *(*a1 + v15);
          if (v16 > 0x23)
          {
            v16 &= 0xF0u;
          }

          if (v16 == 208)
          {
            DataAndCountForObjectAtOffset = FigCaptureBinaryPlistGetDataAndCountForObjectAtOffset(a1, v15);
            if (v18 >= 2)
            {
              v19 = DataAndCountForObjectAtOffset;
              v20 = v18;
              bp_transposeKeyValueTable(DataAndCountForObjectAtOffset, v13, v18, *(a1 + 42), 0);
              v21 = *(a1 + 42);
              if ((v21 - 1) >= 8u || ((0x8Bu >> (v21 - 1)) & 1) == 0)
              {
                abort();
              }

              qsort_r(v13, v20, 2 * v21, a1, off_1F21692A8[(v21 - 1)]);
              bp_transposeKeyValueTable(v19, v13, v20, *(a1 + 42), 1);
            }
          }

          ++v14;
        }

        while (v14 < *(a1 + 16));
      }

      free(v13);
    }
  }
}

_DWORD *bp_transposeKeyValueTable(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a4 > 3)
  {
    if (a4 == 4)
    {
      if (a5)
      {
        if (a3)
        {
          v14 = (a2 + 4);
          v15 = a3;
          do
          {
            *result = *(v14 - 1);
            v16 = *v14;
            v14 += 2;
            result[a3] = v16;
            ++result;
            --v15;
          }

          while (v15);
        }
      }

      else if (a3)
      {
        v19 = (a2 + 4);
        v20 = a3;
        do
        {
          *(v19 - 1) = *result;
          *v19 = result[a3];
          v19 += 2;
          ++result;
          --v20;
        }

        while (v20);
      }
    }

    else
    {
      if (a4 != 8)
      {
        goto LABEL_42;
      }

      if (a5)
      {
        if (a3)
        {
          v8 = (a2 + 8);
          v9 = a3;
          do
          {
            *result = *(v8 - 1);
            v10 = *v8;
            v8 += 2;
            *&result[2 * a3] = v10;
            result += 2;
            --v9;
          }

          while (v9);
        }
      }

      else if (a3)
      {
        v23 = (a2 + 8);
        v24 = a3;
        do
        {
          *(v23 - 1) = *result;
          *v23 = *&result[2 * a3];
          v23 += 2;
          result += 2;
          --v24;
        }

        while (v24);
      }
    }
  }

  else
  {
    if (a4 != 1)
    {
      if (a4 == 2)
      {
        if (a5)
        {
          if (a3)
          {
            v5 = (a2 + 2);
            v6 = a3;
            do
            {
              *result = *(v5 - 1);
              v7 = *v5;
              v5 += 2;
              *(result + a3) = v7;
              result = (result + 2);
              --v6;
            }

            while (v6);
          }
        }

        else if (a3)
        {
          v21 = (a2 + 2);
          v22 = a3;
          do
          {
            *(v21 - 1) = *result;
            *v21 = *(result + a3);
            v21 += 2;
            result = (result + 2);
            --v22;
          }

          while (v22);
        }

        return result;
      }

LABEL_42:
      abort();
    }

    if (a5)
    {
      if (a3)
      {
        v11 = (a2 + 1);
        v12 = a3;
        do
        {
          *result = *(v11 - 1);
          v13 = *v11;
          v11 += 2;
          *(result + a3) = v13;
          result = (result + 1);
          --v12;
        }

        while (v12);
      }
    }

    else if (a3)
    {
      v17 = (a2 + 1);
      v18 = a3;
      do
      {
        *(v17 - 1) = *result;
        *v17 = *(result + a3);
        v17 += 2;
        result = (result + 1);
        --v18;
      }

      while (v18);
    }
  }

  return result;
}

void captureSource_handleThirdPartyTorchLevelCommand(const void *a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (a2 == 0.0)
  {

    captureSource_turnOffAndTeardownFigFlashlight(a1);
    return;
  }

  if (!*(DerivedStorage + 184))
  {
    v5 = *(DerivedStorage + 32);
    v21 = *(DerivedStorage + 16);
    v22 = v5;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v20 = 1;
    v6 = [FigCaptureClientApplicationStateMonitor alloc];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __captureSource_handleThirdPartyTorchLevelCommand_block_invoke;
    v18[3] = &unk_1E799DE08;
    v18[4] = v19;
    v18[5] = DerivedStorage;
    v18[6] = a1;
    v17[0] = v21;
    v17[1] = v22;
    *(DerivedStorage + 184) = [(FigCaptureClientApplicationStateMonitor *)v6 initWithClientAuditToken:v17 mediaEnvironment:0 forThirdPartyTorch:1 applicationAndLayoutStateHandler:v18];
    _Block_object_dispose(v19, 8);
  }

  if (*(DerivedStorage + 192) == 1)
  {
LABEL_8:
    FigDebugAssert3();
    return;
  }

  v7 = CMBaseObjectGetDerivedStorage();
  v8 = (v7 + 176);
  if (!*(v7 + 176))
  {
    v9 = v7;
    v10 = *(v7 + 32);
    v21 = *(v7 + 16);
    v22 = v10;
    PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(&v21);
    v12 = FigFlashlightCreate(*MEMORY[0x1E695E480], 0, PIDFromAuditToken, [*(v9 + 184) applicationID], v8);
    if (v12)
    {
      captureSource_handleThirdPartyTorchLevelCommand_cold_1(v12, &v21);
      goto LABEL_8;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v13 = CMNotificationCenterAddListener();
    if (v13)
    {
      captureSource_handleThirdPartyTorchLevelCommand_cold_2(v13, &v21);
      goto LABEL_8;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v14 = CMNotificationCenterAddListener();
    if (v14)
    {
      captureSource_handleThirdPartyTorchLevelCommand_cold_3(v14, &v21);
      goto LABEL_8;
    }
  }

  v15 = *(DerivedStorage + 176);
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v16 || v16(v15, a2))
  {
    captureSource_handleThirdPartyTorchLevelCommand_cold_4();
  }
}

void sub_1AC9BC72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t TemporalNoiseFilter_Global_420v_to_420v(int8x16_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *a1[2];
  v7 = 0uLL;
  if (a2)
  {
    v8 = a2 & 0xFFFFFFFFFFFFFFC0;
    do
    {
      v9 = *v2;
      v10 = v2[1];
      v11 = v2[2];
      v12 = v2[3];
      v13 = *v3;
      v14 = v3[1];
      v15 = v3[2];
      v16 = v3[3];
      v2 += 4;
      v3 += 4;
      v17 = vhaddq_u8(*v4, vabdq_u8(v9, v13));
      v18 = vhaddq_u8(v4[1], vabdq_u8(v10, v14));
      *v4 = v17;
      v4[1] = v18;
      v19 = v4 + 2;
      v20 = vpadalq_u16(vpadalq_u16(v7, vpaddlq_u8(v17)), vpaddlq_u8(v18));
      v21 = vqtbl1q_s8(v6, v17);
      v22 = vqtbl1q_s8(v6, v18);
      *v5 = vraddhn_high_s16(vraddhn_s16(vmlsl_u8(vmull_u8(*v21.i8, *v13.i8), *v21.i8, *v9.i8), vzip1q_s8(0, v9)), vmlsl_high_u8(vmull_high_u8(v21, v13), v21, v9), vzip2q_s8(0, v9));
      v5[1] = vraddhn_high_s16(vraddhn_s16(vmlsl_u8(vmull_u8(*v22.i8, *v14.i8), *v22.i8, *v10.i8), vzip1q_s8(0, v10)), vmlsl_high_u8(vmull_high_u8(v22, v14), v22, v10), vzip2q_s8(0, v10));
      v23 = v5 + 2;
      v24 = vhaddq_u8(*v19, vabdq_u8(v11, v15));
      v25 = vhaddq_u8(v19[1], vabdq_u8(v12, v16));
      *v19 = v24;
      v19[1] = v25;
      v4 = v19 + 2;
      v7 = vpadalq_u16(vpadalq_u16(v20, vpaddlq_u8(v24)), vpaddlq_u8(v25));
      v26 = vqtbl1q_s8(v6, v24);
      v27 = vqtbl1q_s8(v6, v25);
      *v23 = vraddhn_high_s16(vraddhn_s16(vmlsl_u8(vmull_u8(*v26.i8, *v15.i8), *v26.i8, *v11.i8), vzip1q_s8(0, v11)), vmlsl_high_u8(vmull_high_u8(v26, v15), v26, v11), vzip2q_s8(0, v11));
      v23[1] = vraddhn_high_s16(vraddhn_s16(vmlsl_u8(vmull_u8(*v27.i8, *v16.i8), *v27.i8, *v12.i8), vzip1q_s8(0, v12)), vmlsl_high_u8(vmull_high_u8(v27, v16), v27, v12), vzip2q_s8(0, v12));
      v5 = v23 + 2;
      v8 -= 64;
    }

    while (v8);
    v28 = a2 & 0x3F;
    if ((a2 & 0x3F) != 0)
    {
      do
      {
        v29 = *v2++;
        v30 = v29;
        v31 = *v3++;
        v32 = vhaddq_u8(*v4, vabdq_u8(v30, v31));
        *v4++ = v32;
        v7 = vpadalq_u16(v7, vpaddlq_u8(v32));
        v33 = vqtbl1q_s8(v6, v32);
        *v5++ = vraddhn_high_s16(vraddhn_s16(vmlsl_u8(vmull_u8(*v33.i8, *v31.i8), *v33.i8, *v30.i8), vzip1q_s8(0, v30)), vmlsl_high_u8(vmull_high_u8(v33, v31), v33, v30), vzip2q_s8(0, v30));
        v28 -= 16;
      }

      while (v28);
    }
  }

  v34 = vpaddlq_u32(v7);
  return vpaddq_s64(v34, v34).u32[0];
}

uint64_t TemporalNoiseFilter_Fixed_420v_to_420v(uint8x16_t *a1, uint8x16_t *a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v5 = a3;
  if (a3)
  {
    v6 = vdupq_n_s8(a4);
    v7 = vdupq_n_s8(a5);
    v8.i64[0] = 0x303030303030303;
    v8.i64[1] = 0x303030303030303;
    v9.i64[0] = 0x202020202020202;
    v9.i64[1] = 0x202020202020202;
    v10.i64[0] = 0x55005500550055;
    v10.i64[1] = 0x55005500550055;
    do
    {
      v11 = *a2++;
      v12 = vabdq_u8(*a1, v11);
      v13 = vcgtq_u8(v12, v6);
      v14 = vcgtq_u8(v12, v7);
      *a1 = vorrq_s8(vorrq_s8(vandq_s8(*a1, v14), vbicq_s8(vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmovl_u8(*a1->i8), *v8.i8, *v11.i8), 2uLL), vmlal_high_u8(vmovl_high_u8(*a1), v8, v11), 2uLL), v13)), vbicq_s8(vandq_s8(vrshrn_high_n_s16(vrshrn_n_s16(vmulq_s16(vmlal_u8(vmovl_u8(*v11.i8), *a1->i8, *v9.i8), v10), 8uLL), vmulq_s16(vmlal_high_u8(vmovl_high_u8(v11), *a1, v9), v10), 8uLL), v13), v14));
      ++a1;
      v5 -= 16;
    }

    while (v5);
  }

  return 0;
}

uint64_t PixelSumASM(int8x16_t *a1, int a2, int a3, unsigned int a4, int32x4_t *a5, int32x4_t *a6)
{
  if ((a2 & 0x1F) != 0 || (a3 & 3) != 0 || (a1 & 0xF) != 0 || (a4 & 0xF) != 0)
  {
    return -1;
  }

  v70[6] = v6.i64[0];
  v70[7] = v7.i64[0];
  v70[4] = v8.i64[0];
  v70[5] = v9.i64[0];
  v70[2] = v10;
  v70[3] = v11;
  v70[0] = v12;
  v70[1] = v13;
  v19 = (a3 + 255) >> 8;
  v20 = a3;
  v21 = a1;
  v23 = veorq_s8(v6, v6);
  v24 = veorq_s8(v7, v7);
  v25 = veorq_s8(v8, v8);
  v26 = veorq_s8(v9, v9);
  v27 = a6;
  v28 = a2;
  do
  {
    *v27 = v23;
    v27[1] = v24;
    v27[2] = v25;
    v27[3] = v26;
    v27 += 4;
    v28 -= 16;
  }

  while (v28);
  do
  {
    if (v20 > 256)
    {
      v29 = 256;
    }

    else
    {
      v29 = v20;
    }

    v20 -= v29;
    v30 = v70;
    v31 = a2;
    v32 = veorq_s8(v23, v23);
    v33 = veorq_s8(v24, v24);
    do
    {
      *v30 = v32;
      v30[1] = v33;
      v30 += 2;
      v31 -= 16;
    }

    while (v31);
    v34 = v21;
    do
    {
      v35 = (a2 + 2047) >> 11;
      v36 = a2;
      v37 = v70;
      v14 = veorq_s8(v14, v14);
      v38 = v34;
      do
      {
        if (v36 > 2048)
        {
          v39 = 2048;
        }

        else
        {
          v39 = v36;
        }

        v36 -= v39;
        v15 = veorq_s8(v15, v15);
        v16 = veorq_s8(v16, v16);
        v17 = veorq_s8(v17, v17);
        v18 = veorq_s8(v18, v18);
        do
        {
          v40 = *v38;
          v41 = v38[1];
          v42 = (v38 + a4);
          v43 = *v42;
          v44 = v42[1];
          v45 = (v42 + a4);
          v46 = *v45;
          v47 = v45[1];
          v48 = (v45 + a4);
          v49 = v48[1];
          v50 = vpadalq_u8(v18, *v48);
          v51 = vpadalq_u8(vpadalq_u8(v37[1], vzip2q_s8(v40, v43)), vzip2q_s8(v46, *v48));
          v52 = vpadalq_u8(vpadalq_u8(v37[2], vzip1q_s8(v41, v44)), vzip1q_s8(v47, v49));
          v53 = vpadalq_u8(vpadalq_u8(v37[3], vzip2q_s8(v41, v44)), vzip2q_s8(v47, v49));
          *v37 = vpadalq_u8(vpadalq_u8(*v37, vzip1q_s8(v40, v43)), vzip1q_s8(v46, *v48));
          v37[1] = v51;
          v37[2] = v52;
          v37[3] = v53;
          v15 = vpadalq_u8(vpadalq_u8(v15, v40), v41);
          v16 = vpadalq_u8(vpadalq_u8(v16, v43), v44);
          v17 = vpadalq_u8(vpadalq_u8(v17, v46), v47);
          v18 = vpadalq_u8(v50, v49);
          v38 = (v48 - 3 * a4 + 32);
          v37 += 4;
          v39 -= 32;
        }

        while (v39);
        v54 = vzip1q_s16(v15, v16);
        v55 = vzip2q_s16(v15, v16);
        v56 = vzip1q_s16(v17, v18);
        v57 = vzip2q_s16(v17, v18);
        v58 = vzip1q_s32(v54, v56);
        v59 = vzip2q_s32(v54, v56);
        v60 = vzip1q_s32(v55, v57);
        v61 = vzip2q_s32(v55, v57);
        v24 = vaddq_s32(vaddl_high_u16(v58, v59), vaddl_high_u16(v60, v61));
        v23 = vaddq_s32(vaddq_s32(vaddl_u16(*v58.i8, *v59.i8), vaddl_u16(*v60.i8, *v61.i8)), v24);
        v14 = vaddq_s32(v14, v23);
        --v35;
      }

      while (v35);
      *a5++ = v14;
      v34 = (v34 + 4 * a4);
      v29 -= 4;
    }

    while (v29);
    v62 = v70;
    v63 = a6;
    v64 = a2;
    do
    {
      v65 = v62[1];
      v66 = vaddw_high_u16(v63[1], *v62);
      v67 = vaddw_u16(v63[2], *v65.i8);
      v68 = vaddw_high_u16(v63[3], v65);
      *v63 = vaddw_u16(*v63, *v62->i8);
      v63[1] = v66;
      v63[2] = v67;
      v63[3] = v68;
      v62 += 2;
      v63 += 4;
      v64 -= 16;
    }

    while (v64);
    v21 += 16 * a4;
    --v19;
  }

  while (v19);
  return 0;
}

float MemDiff32(int32x4_t *a1, int32x4_t *a2, int a3)
{
  v3 = 0uLL;
  v4 = 0uLL;
  v5 = a3 >> 3;
  do
  {
    v6 = *a1;
    v7 = a1[1];
    v8 = *a2;
    v9 = a2[1];
    a1 += 2;
    a2 += 2;
    v3 = vabaq_s32(v3, v6, v8);
    v4 = vabaq_s32(v4, v7, v9);
    --v5;
  }

  while (v5);
  v10 = vpaddlq_u32(vaddq_s32(v3, v4));
  LODWORD(result) = vpaddq_s64(v10, v10).u32[0];
  return result;
}

float MemDiffZeroMean32(int32x4_t *a1, unsigned int a2, int32x4_t *a3, unsigned int a4, int a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = vdupq_n_s32(a2);
  v8 = vdupq_n_s32(a4);
  v9 = a5 >> 3;
  do
  {
    v10 = *a1;
    v11 = a1[1];
    v12 = *a3;
    v13 = a3[1];
    a1 += 2;
    a3 += 2;
    v5 = vabaq_s32(v5, vsubq_s32(v10, v7), vsubq_s32(v12, v8));
    v6 = vabaq_s32(v6, vsubq_s32(v11, v7), vsubq_s32(v13, v8));
    --v9;
  }

  while (v9);
  v14 = vpaddlq_u32(vaddq_s32(v5, v6));
  LODWORD(result) = vpaddq_s64(v14, v14).u32[0];
  return result;
}

float MemSum32(int32x4_t *a1, int a2)
{
  v2 = 0uLL;
  v3 = 0uLL;
  v4 = a2 >> 3;
  do
  {
    v5 = *a1;
    v6 = a1[1];
    a1 += 2;
    v2 = vaddq_s32(v2, v5);
    v3 = vaddq_s32(v3, v6);
    --v4;
  }

  while (v4);
  v7 = vpaddlq_u32(vaddq_s32(v2, v3));
  LODWORD(result) = vpaddq_s64(v7, v7).u32[0];
  return result;
}

void __sipc_createStateMachine_block_invoke(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 reset];

  objc_autoreleasePoolPop(v3);
}

uint64_t __sipc_createStateMachine_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 reset];
  [a2 _completeCurrentRequestAndInitiateNextRequest];
  objc_autoreleasePoolPop(v3);

  return [a2 _updateStateIfNeeded];
}

uint64_t __sipc_createStateMachine_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _prepare];
  objc_autoreleasePoolPop(v3);

  return [a2 _updateStateIfNeeded];
}

uint64_t __sipc_createStateMachine_block_invoke_4(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _process];
  objc_autoreleasePoolPop(v3);

  return [a2 _updateStateIfNeeded];
}

void sub_1AC9C4494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC9C4DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC9C6BA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void cfr_bbufUtilXPCObjectReleaser(xpc_object_t object)
{
  if (object)
  {
    xpc_release(object);
  }
}

void sub_1AC9C7958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AC9C8164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t cfss_atExitHandler()
{
  if (sRunningInsideCameracaptured == 1)
  {
    result = [CMCaptureFrameSenderEndpointsServerSideSingleton removeAllEndpointsWithPID:getpid()];
    if (result)
    {
      v1 = [MEMORY[0x1E696ABB0] defaultCenter];

      return [v1 postNotificationName:@"FrameServerEndpointsChanged" object:0];
    }
  }

  else
  {

    return FigCaptureSourceRemoteSuppressFrameSenderServerEndpoint(@"all-endpoint-uids");
  }

  return result;
}

CMCaptureFrameSenderEndpoints *__cfs_serverSideEndpoints_block_invoke()
{
  result = objc_alloc_init(CMCaptureFrameSenderEndpoints);
  sServerSideEndpoints = result;
  return result;
}

uint64_t FigLivePhotoMetadataComputeSerializationSizeV3(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, void *a7)
{
  *a7 = 0;
  if (a1)
  {
    if (a1 >= 4)
    {
      FigLivePhotoMetadataComputeSerializationSizeV3_cold_2(&v11);
      return v11;
    }

    else if (a1 == 1 && a4 | a3 | a5 | a6)
    {
      FigLivePhotoMetadataComputeSerializationSizeV3_cold_1(&v10);
      return v10;
    }

    else
    {
      v7 = 32 * a2 + 48;
      if (a1 == 1)
      {
        result = 0;
LABEL_9:
        *a7 = v7;
        return result;
      }

      v9 = v7 + 32 * a3 + 32 * (a5 + a4 + a6) + 16;
      *a7 = v9;
      if (a1 == 3)
      {
        result = 0;
        v7 = v9 + 72;
        goto LABEL_9;
      }

      return 0;
    }
  }

  else
  {
    FigLivePhotoMetadataComputeSerializationSizeV3_cold_3(&v12);
    return v12;
  }
}

uint64_t FigLivePhotoMetadataComputeDeserializationSize(unsigned int *a1, unint64_t a2, unsigned int a3, unsigned int *a4, int *a5, unint64_t *a6)
{
  *a6 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  if (!a3 && !a5)
  {
    FigLivePhotoMetadataComputeDeserializationSize_cold_9(&v19);
    return v19;
  }

  if (a2 <= 0x2F)
  {
    FigLivePhotoMetadataComputeDeserializationSize_cold_8(&v19);
    return v19;
  }

  v6 = *a1;
  if (!*a1)
  {
    FigLivePhotoMetadataComputeDeserializationSize_cold_7(&v19);
    return v19;
  }

  if (a3 >= v6)
  {
    v7 = *a1;
  }

  else
  {
    v7 = a3;
  }

  if (v7 >= 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = v7;
  }

  v9 = a1[11];
  v10 = 32 * v9;
  v11 = 32 * v9 + 48;
  if (v6 != 1)
  {
    if (v11 > a2)
    {
      FigLivePhotoMetadataComputeDeserializationSize_cold_5(&v19);
      return v19;
    }

    v12 = (32 * a1[8 * v9 + 15] + 32 * a1[8 * v9 + 12] + 32 * (a1[8 * v9 + 14] + a1[8 * v9 + 13])) | 0x10;
    v13 = v12 + v11;
    if (v6 == 2)
    {
      if (v13 == a2)
      {
        goto LABEL_19;
      }

      FigLivePhotoMetadataComputeDeserializationSize_cold_4(&v19);
      return v19;
    }

    if (v13 > a2)
    {
      FigLivePhotoMetadataComputeDeserializationSize_cold_3(&v19);
      return v19;
    }

    v15 = v10 + v12 + 120;
    if (v6 == 3)
    {
      if (v15 != a2)
      {
        FigLivePhotoMetadataComputeDeserializationSize_cold_2(&v19);
        return v19;
      }
    }

    else if (v15 > a2)
    {
      FigLivePhotoMetadataComputeDeserializationSize_cold_1(&v19);
      return v19;
    }

    v14 = 72;
    goto LABEL_26;
  }

  if (v11 != a2)
  {
    FigLivePhotoMetadataComputeDeserializationSize_cold_6(&v19);
    return v19;
  }

  v12 = 0;
LABEL_19:
  v14 = 0;
LABEL_26:
  if (v7 <= 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = v12;
  }

  v17 = v16 + v11 + v14;
  if (a4)
  {
    *a4 = v6;
  }

  result = 0;
  *a5 = v8;
  *a6 = v17;
  return result;
}

uint64_t FigLivePhotoMetadataSerializeIntoBuffer(const void *a1, __int128 *a2, const __CFDictionary *a3, const __CFArray *a4, unsigned int a5, size_t a6, unsigned int *a7)
{
  v8 = *a2;
  v9 = *(a2 + 2);
  return FigLivePhotoMetadataSerializeIntoBufferV3(a1, &v8, a3, a4, 0, 0, 0, 0, a5, a6, a7);
}

uint64_t FigLivePhotoMetadataCreateSoftwareVersionSetupDataWithAtomHeader(__CFData **a1)
{
  error = 0;
  if (!a1)
  {
    FigLivePhotoMetadataCreateSoftwareVersionSetupDataWithAtomHeader_cold_8(&v38);
    v9 = 0;
    v6 = 0;
    Mutable = 0;
    v4 = 0;
    v5 = 0;
    goto LABEL_46;
  }

  *a1 = 0;
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigLivePhotoMetadataCreateSoftwareVersionSetupDataWithAtomHeader_cold_7();
    v9 = 0;
    v6 = 0;
    v4 = 0;
LABEL_50:
    v5 = 0;
LABEL_53:
    v25 = 0;
    v30 = 4294954510;
    goto LABEL_29;
  }

  v4 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v4)
  {
    FigLivePhotoMetadataCreateSoftwareVersionSetupDataWithAtomHeader_cold_6();
    v9 = 0;
    v6 = 0;
    goto LABEL_50;
  }

  FigCFDictionarySetInt32();
  v5 = CFURLCreateWithFileSystemPath(v2, @"/System/Library/CoreServices/SystemVersion.plist", kCFURLPOSIXPathStyle, 0);
  if (!v5)
  {
    FigLivePhotoMetadataCreateSoftwareVersionSetupDataWithAtomHeader_cold_5();
    v9 = 0;
    v6 = 0;
    goto LABEL_53;
  }

  v6 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v6)
  {
    FigLivePhotoMetadataCreateSoftwareVersionSetupDataWithAtomHeader_cold_4();
    v9 = 0;
    goto LABEL_53;
  }

  v7 = CFReadStreamCreateWithFile(v2, v5);
  if (!v7)
  {
    goto LABEL_45;
  }

  v8 = v7;
  if (!CFReadStreamOpen(v7))
  {
    CFRelease(v8);
    goto LABEL_45;
  }

  v9 = CFPropertyListCreateWithStream(v2, v8, 0, 0, 0, &error);
  CFReadStreamClose(v8);
  CFRelease(v8);
  if (!v9)
  {
LABEL_45:
    FigLivePhotoMetadataCreateSoftwareVersionSetupDataWithAtomHeader_cold_3(&error, &v38);
    v9 = 0;
LABEL_46:
    v25 = 0;
    v30 = v38;
    goto LABEL_29;
  }

  v32 = a1;
  v10 = CFGetTypeID(v9);
  if (v10 == CFDictionaryGetTypeID())
  {
    for (i = 0; i != 3; ++i)
    {
      v12 = off_1E798FAD8[i];
      Value = CFDictionaryGetValue(v9, v12);
      if (Value)
      {
        CFDictionaryAddValue(v6, v12, Value);
      }
    }
  }

  if (CFDictionaryGetCount(Mutable) >= 1)
  {
    CFDictionaryAddValue(Mutable, @"SystemVersion", v6);
  }

  cf = v5;
  theDict = Mutable;
  v14 = *MEMORY[0x1E695E500];
  v15 = off_1E798FA70;
  v16 = 7;
  do
  {
    v17 = CFURLCreateWithFileSystemPath(v2, *(v15 - 1), kCFURLPOSIXPathStyle, 1u);
    if (!v17)
    {
      goto LABEL_23;
    }

    v18 = v17;
    v19 = CFBundleCreate(v2, v17);
    if (v19)
    {
      v20 = v19;
      ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v19, v14);
      if (ValueForInfoDictionaryKey)
      {
        v22 = ValueForInfoDictionaryKey;
        v23 = CFRetain(ValueForInfoDictionaryKey);
        CFAutorelease(v23);
        CFRelease(v20);
        CFRelease(v18);
        CFDictionaryAddValue(v4, *v15, v22);
        goto LABEL_23;
      }

      CFRelease(v20);
    }

    CFRelease(v18);
LABEL_23:
    v15 += 2;
    --v16;
  }

  while (v16);
  Mutable = theDict;
  CFDictionaryAddValue(theDict, @"FrameworkVersions", v4);
  v24 = CFPropertyListCreateData(v2, theDict, kCFPropertyListBinaryFormat_v1_0, 0, &error);
  v25 = v24;
  if (v24)
  {
    Length = CFDataGetLength(v24);
    BytePtr = CFDataGetBytePtr(v25);
    *bytes = bswap32(Length + 8);
    v36 = 1986487907;
    v28 = CFDataCreateMutable(v2, Length + 8);
    if (v28)
    {
      v29 = v28;
      CFDataAppendBytes(v28, bytes, 8);
      CFDataAppendBytes(v29, BytePtr, Length);
      v30 = 0;
      *v32 = v29;
    }

    else
    {
      FigLivePhotoMetadataCreateSoftwareVersionSetupDataWithAtomHeader_cold_1();
      v30 = 4294954510;
    }

    Mutable = theDict;
  }

  else
  {
    FigLivePhotoMetadataCreateSoftwareVersionSetupDataWithAtomHeader_cold_2(&error, &v38);
    v30 = v38;
  }

  v5 = cf;
LABEL_29:
  if (error)
  {
    CFRelease(error);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return v30;
}

void BWInferenceSchedulerGraphDirectedEdgeRelinquish(id *a1)
{

  free(a1);
}

uint64_t qtrmg_trackQueueNowBelowWaterLevelCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [a5 objectForKeyedSubscript:*MEMORY[0x1E6971540]];
  FigSimpleMutexLock();
  [*(a2 + 16) addObject:v6];
  pthread_cond_broadcast(*(a2 + 8));

  return FigSimpleMutexUnlock();
}

uint64_t FigAssetWriterSetFormatWriterProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigFormatReaderGetTrackCount(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t qtrmg_metadataTrackWithIDShouldBePropagated(uint64_t a1, uint64_t a2)
{
  v29 = 0;
  v30 = 0;
  if (qtrmg_metadataTrackWithIDShouldBePropagated_onceToken != -1)
  {
    qtrmg_metadataTrackWithIDShouldBePropagated_cold_1();
  }

  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4 || v4(a1, a2, &v30, 0))
  {
    qtrmg_metadataTrackWithIDShouldBePropagated_cold_3();
    goto LABEL_26;
  }

  FigBaseObject = FigTrackReaderGetFigBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6 || v6(FigBaseObject, *MEMORY[0x1E6973A48], *MEMORY[0x1E695E480], &v29))
  {
    qtrmg_metadataTrackWithIDShouldBePropagated_cold_2();
    goto LABEL_26;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v29;
  v8 = [v29 countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (!v8)
  {
LABEL_26:
    v17 = 1;
    goto LABEL_27;
  }

  v9 = v8;
  v10 = *v26;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v26 != v10)
      {
        objc_enumerationMutation(v7);
      }

      Identifiers = CMMetadataFormatDescriptionGetIdentifiers(*(*(&v25 + 1) + 8 * i));
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v13 = [(__CFArray *)Identifiers countByEnumeratingWithState:&v20 objects:v19 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v21;
        while (2)
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(Identifiers);
            }

            if ([qtrmg_metadataTrackWithIDShouldBePropagated_nonPropagatingMetadataIdentifiers containsObject:*(*(&v20 + 1) + 8 * j)])
            {
              v17 = 0;
              goto LABEL_27;
            }
          }

          v14 = [(__CFArray *)Identifiers countByEnumeratingWithState:&v20 objects:v19 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v25 objects:v24 count:16];
    v17 = 1;
  }

  while (v9);
LABEL_27:
  if (v30)
  {
    CFRelease(v30);
  }

  return v17;
}

uint64_t qtrmg_getTrackTimescale(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4 || v4(a1, a2, &cf, 0))
  {
    qtrmg_getTrackTimescale_cold_2();
    return 0;
  }

  else
  {
    v11 = 0;
    FigBaseObject = FigTrackReaderGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v7 = v6(FigBaseObject, *MEMORY[0x1E6973AE8], *MEMORY[0x1E695E480], &v11);
      v8 = v11;
    }

    else
    {
      v8 = 0;
      v7 = -12782;
    }

    v9 = [v8 intValue];

    if (cf)
    {
      CFRelease(cf);
    }

    if (v7)
    {
      qtrmg_getTrackTimescale_cold_1();
    }
  }

  return v9;
}

uint64_t FigAssetReaderEnableOriginalSampleReferenceExtractionFromTrack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, 0, a3);
}

uint64_t FigAssetReaderEnableOriginalSampleExtractionFromTrack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, 0, a3);
}

uint64_t FigAssetWriterAddNativeTrack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigFormatReaderCopyTrackByID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3, 0);
}

uint64_t FigTrackReaderCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigBaseObject = FigTrackReaderGetFigBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(FigBaseObject, a2, a3, a4);
}

uint64_t FigAssetWriterSetFormatWriterTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t qtrmg_setupMetadataTrackReferences(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{2 * objc_msgSend(a3, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(a3);
        }

        [v6 addObject:*(*(&v17 + 1) + 8 * i)];
        [v6 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2)}];
      }

      v8 = [a3 countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v8);
  }

  if ([v6 count])
  {
    v11 = objc_alloc(MEMORY[0x1E695DF20]);
    v12 = [v11 initWithObjectsAndKeys:{v6, *MEMORY[0x1E6973B20], 0}];
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v13)
    {

      v14 = 4294954514;
LABEL_15:
      qtrmg_setupMetadataTrackReferences_cold_1();
      goto LABEL_13;
    }

    v14 = v13(a1, *MEMORY[0x1E6971C68], v12);

    if (v14)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_13:

  return v14;
}

uint64_t FigAssetReaderStartExtractionForTimeRange(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v6)
  {
    return 4294954514;
  }

  v10 = *a2;
  v11 = *(a2 + 2);
  v8 = *a3;
  v9 = *(a3 + 2);
  return v6(a1, &v10, &v8);
}

uint64_t FigAssetWriterBeginSession(uint64_t a1, __int128 *a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v4)
  {
    return 4294954514;
  }

  v6 = *a2;
  v7 = *(a2 + 2);
  return v4(a1, &v6);
}

uint64_t qtrmg_trackIDForNextTrackBelowWater(uint64_t a1, void *a2)
{
  *a2 = 0;
  FigSimpleMutexLock();
  if (![*(a1 + 16) count] && (v4 = FigConditionVariableWaitRelative(), v4))
  {
    v5 = v4;
    qtrmg_trackIDForNextTrackBelowWater_cold_1();
  }

  else
  {
    *a2 = [objc_msgSend(*(a1 + 16) "firstObject")];
    [*(a1 + 16) removeObjectAtIndex:0];
    v5 = 0;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t FigAssetWriterIsTrackQueueAboveHighWaterLevel(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v4)
  {
    return 0;
  }

  return v4(a1, a2);
}

uint64_t FigAssetReaderExtractAndRetainNextSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, 1, a3, a4);
}

uint64_t CMTimeCompareApproximately(CMTime *a1, CMTime *a2)
{
  if ((a1->flags & 0x1F) == 3 || (a2->flags & 0x1F) == 3)
  {
    memset(&time1, 0, sizeof(time1));
    lhs = *a1;
    v5 = *a2;
    CMTimeSubtract(&time, &lhs, &v5);
    CMTimeAbsoluteValue(&time1, &time);
    CMTimeMake(&time, 1, 1000000000);
    lhs = time1;
    if (CMTimeCompare(&lhs, &time) < 1)
    {
      return 0;
    }
  }

  time1 = *a1;
  time = *a2;
  return CMTimeCompare(&time1, &time);
}

uint64_t FigAssetWriterMarkEndOfDataForTrack(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 104);
  if (v7)
  {

    return v7(a1, a2);
  }

  return result;
}

uint64_t FigAssetWriterAddSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t qtrmg_writeStillImageTimeMetadataSample(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, uint64_t a5, int32_t a6)
{
  v15 = *a3;
  v16 = *(a3 + 2);
  QuickTimeMovieStillImageTimeSampleBuffer = FigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer(&v15, a4, a5, a6);
  if (!QuickTimeMovieStillImageTimeSampleBuffer)
  {
    qtrmg_writeStillImageTimeMetadataSample_cold_3();
    return 0;
  }

  v9 = QuickTimeMovieStillImageTimeSampleBuffer;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v10)
  {
    v13 = 4294954514;
LABEL_9:
    qtrmg_writeStillImageTimeMetadataSample_cold_2();
    goto LABEL_6;
  }

  v11 = v10(a1, a2, v9);
  if (v11)
  {
    v13 = v11;
    goto LABEL_9;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v12)
  {
    v13 = 4294954514;
    goto LABEL_11;
  }

  v13 = v12(a1, a2);
  if (v13)
  {
LABEL_11:
    qtrmg_writeStillImageTimeMetadataSample_cold_1();
  }

LABEL_6:
  CFRelease(v9);
  return v13;
}

uint64_t qtrmg_writeVideoOrientationMetadataSamples(uint64_t a1, uint64_t a2, void *a3, CMTime *a4)
{
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 80);
        if (v13)
        {
          v14 = v13(a1, a2, v12);
        }

        else
        {
          v14 = -12782;
        }

        memset(&v23, 0, sizeof(v23));
        CMSampleBufferGetPresentationTimeStamp(&v23, v12);
        memset(&v22, 0, sizeof(v22));
        CMSampleBufferGetDecodeTimeStamp(&v22, v12);
        if (v14)
        {
          qtrmg_writeVideoOrientationMetadataSamples_cold_1();
          goto LABEL_21;
        }
      }

      v9 = [a3 countByEnumeratingWithState:&v25 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  target = 0;
  *&sampleTimingArray.duration.value = *MEMORY[0x1E6960CF0];
  sampleTimingArray.duration.epoch = *(MEMORY[0x1E6960CF0] + 16);
  sampleTimingArray.presentationTimeStamp = *a4;
  sampleTimingArray.decodeTimeStamp = sampleTimingArray.presentationTimeStamp;
  if (CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 1, &sampleTimingArray, 0, 0, &target))
  {
    qtrmg_writeVideoOrientationMetadataSamples_cold_2();
  }

  else
  {
    CMSetAttachment(target, *MEMORY[0x1E69604C8], *MEMORY[0x1E695E4D0], 1u);
    v15 = target;
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v16)
    {
      v17 = v16(a1, a2, v15);
    }

    else
    {
      v17 = -12782;
    }

    if (target)
    {
      CFRelease(target);
    }

    if (v17)
    {
      qtrmg_writeVideoOrientationMetadataSamples_cold_3();
    }
  }

LABEL_21:
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (v18)
  {
    return v18(a1, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigAssetWriterEndSession(uint64_t a1, __int128 *a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v4)
  {
    return 4294954514;
  }

  v6 = *a2;
  v7 = *(a2 + 2);
  return v4(a1, &v6);
}

uint64_t FigAssetWriterFinish(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t CMBaseObjectInvalidate(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  v2 = *(*(CMBaseObjectGetVTable() + 8) + 24);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t __qtrmg_metadataTrackWithIDShouldBePropagated_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DEC8]);
  result = [v0 initWithObjects:{*MEMORY[0x1E69629E0], *MEMORY[0x1E69603C8], 0}];
  qtrmg_metadataTrackWithIDShouldBePropagated_nonPropagatingMetadataIdentifiers = result;
  return result;
}

uint64_t BWPhotoEncoderResolveEncodingSchemeForRequestedSettings(void *a1)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (FigCapturePixelFormatIsDemosaicedRaw([a1 rawOutputFormat]))
  {
    if ([a1 rawOutputFileCodec] == 1786276963)
    {
      return 4;
    }

    else
    {
      return 3;
    }
  }

  else if ([a1 outputFileType] == 1785096550)
  {
    return 1;
  }

  else if ([a1 outputFileType] == 1751476579 || objc_msgSend(a1, "outputFileType") == 1751476582)
  {
    return 2;
  }

  else if ([a1 outputFileType] == 1684628333)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

uint64_t BWPhotoEncoderCodecTypeForEncodingScheme(unsigned int a1)
{
  if (a1 > 4)
  {
    return 1785750887;
  }

  else
  {
    return *&aFff_0[4 * a1 + 4];
  }
}

void BWPhotoEncoderApplyFinalCropToFaceObservationsForSampleBuffer(const void *a1)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (CMGetAttachment(a1, *off_1E798A3C8, 0))
  {
    FigCaptureMetadataUtilitiesGetFinalCropRectFromSource();

    BWUpdateLandmarksForStillImageCrop();
  }

  else
  {
    BWPhotoEncoderApplyFinalCropToFaceObservationsForSampleBuffer_cold_1();
  }
}

uint64_t BWPhotoEncoderScalePixelBuffer(__CVBuffer *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a4)
  {
    v19 = [a4 updateOutputPixelFormat:CVPixelBufferGetPixelFormatType(a1) dimensions:a2 poolCapacity:a5 colorSpaceProperties:a3];
    if (v19)
    {
      v20 = v19;
      BWPhotoEncoderScalePixelBuffer_cold_1();
    }

    else
    {
      v20 = [a4 convertPixelBuffer:a1 cropRect:a5 > 0 allocateOutputFromBufferPool:a6 outputPixelBuffer:{a7, a8, a9, a10}];
      if (v20)
      {
        BWPhotoEncoderScalePixelBuffer_cold_2();
      }
    }
  }

  else
  {
    BWPhotoEncoderScalePixelBuffer_cold_3(&v23);
    return v23;
  }

  return v20;
}

uint64_t BWPhotoEncoderContainerFormatForEncodingScheme(unsigned int a1)
{
  if (a1 > 5)
  {
    return 1;
  }

  else
  {
    return *&aGepj1cvhgepjcl[4 * a1 + 16];
  }
}

uint64_t BWPhotoEncoderFileTypeForEncodingScheme(unsigned int a1)
{
  if (a1 > 5)
  {
    return 1785096550;
  }

  else
  {
    return dword_1ACF06310[a1];
  }
}

uint64_t BWPhotoEncoderIsLeftEyeFrameForCurrentRequest(void *a1)
{
  v2 = [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798A5B0), "intValue"}];
  v6 = 0;
  v3 = FigCaptureRotationDegreesAndMirroringFromExifOrientation(v2, &v6);
  if (v3 != 180)
  {
    if (v3 || v6)
    {
      goto LABEL_4;
    }

LABEL_6:
    v4 = off_1E798A0D0;
    return [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798B540), "isEqualToString:", *v4}];
  }

  if (v6)
  {
    goto LABEL_6;
  }

LABEL_4:
  v4 = off_1E798A0C0;
  return [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798B540), "isEqualToString:", *v4}];
}

__CFString *BWPhotoEncoderStringForPhotoEncoderNodeAttachedMediaPropagationMode(uint64_t a1)
{
  v1 = @"Propagate Only";
  if (a1 == 1)
  {
    v1 = @"Encode Only";
  }

  if (a1 == 2)
  {
    return @"Propagate And Encode";
  }

  else
  {
    return v1;
  }
}

uint64_t BWPhotoEncoderTonemapItemMetadataFromGainMapMetadata(void *a1, void *a2)
{
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = BWPhotoEncoderAddKeyAsRationalToDict(a1, *off_1E798A618, @"TonemapBaseHDRHeadroom", v4);
  if (v5)
  {
    v13 = v5;
    BWPhotoEncoderTonemapItemMetadataFromGainMapMetadata_cold_1();
  }

  else
  {
    v6 = BWPhotoEncoderAddKeyAsRationalToDict(a1, *off_1E798A608, @"TonemapAlternateHDRHeadroom", v4);
    if (v6)
    {
      v13 = v6;
      BWPhotoEncoderTonemapItemMetadataFromGainMapMetadata_cold_2();
    }

    else
    {
      v7 = [MEMORY[0x1E695DF90] dictionary];
      v8 = BWPhotoEncoderAddKeyAsRationalToDict(a1, *off_1E798A648, @"GainMapMin", v7);
      if (v8)
      {
        v13 = v8;
        BWPhotoEncoderTonemapItemMetadataFromGainMapMetadata_cold_3();
      }

      else
      {
        v9 = BWPhotoEncoderAddKeyAsRationalToDict(a1, *off_1E798A638, @"GainMapMax", v7);
        if (v9)
        {
          v13 = v9;
          BWPhotoEncoderTonemapItemMetadataFromGainMapMetadata_cold_4();
        }

        else
        {
          v10 = BWPhotoEncoderAddKeyAsRationalToDict(a1, *off_1E798A628, @"Gamma", v7);
          if (v10)
          {
            v13 = v10;
            BWPhotoEncoderTonemapItemMetadataFromGainMapMetadata_cold_5();
          }

          else
          {
            v11 = BWPhotoEncoderAddKeyAsRationalToDict(a1, *off_1E798A620, @"BaseOffset", v7);
            if (v11)
            {
              v13 = v11;
              BWPhotoEncoderTonemapItemMetadataFromGainMapMetadata_cold_6();
            }

            else
            {
              v12 = BWPhotoEncoderAddKeyAsRationalToDict(a1, *off_1E798A610, @"AlternateOffset", v7);
              if (v12)
              {
                v13 = v12;
                BWPhotoEncoderTonemapItemMetadataFromGainMapMetadata_cold_7();
              }

              else
              {
                v15 = v7;
                [v4 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", &v15, 1), @"TonemapChannelMetadata"}];
                [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"TonemapBaseColorIsWorkingColor"];
                v13 = 0;
                if (a2)
                {
                  *a2 = v4;
                }
              }
            }
          }
        }
      }
    }
  }

  return v13;
}

uint64_t BWPhotoEncoderAddKeyAsRationalToDict(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v8 = [a1 objectForKeyedSubscript:a2];
  if (v8)
  {
    [v8 doubleValue];
    LODWORD(v10) = llround(v9 * 1000000.0);
    v12[0] = [MEMORY[0x1E696AD98] numberWithInt:v10];
    v12[1] = &unk_1F2242580;
    [a4 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", v12, 2), a3}];
    return 0;
  }

  else
  {
    BWPhotoEncoderAddKeyAsRationalToDict_cold_1();
    return 4294950306;
  }
}

uint64_t BWPhotoEncoderCreateGTCColorSpaceFromGainMapMetadata(void *a1, uint64_t a2, int a3, void *a4)
{
  if (!a1)
  {
    BWPhotoEncoderCreateGTCColorSpaceFromGainMapMetadata_cold_15();
    return 4294950306;
  }

  if (!a2)
  {
    BWPhotoEncoderCreateGTCColorSpaceFromGainMapMetadata_cold_14();
    return 4294950306;
  }

  v8 = [MEMORY[0x1E695DF90] dictionary];
  if (!v8)
  {
    BWPhotoEncoderCreateGTCColorSpaceFromGainMapMetadata_cold_13();
    return 4294950305;
  }

  v9 = v8;
  v10 = CFUUIDCreate(0);
  if (!v10)
  {
    BWPhotoEncoderCreateGTCColorSpaceFromGainMapMetadata_cold_12();
    return 4294950305;
  }

  v11 = v10;
  [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x1E695BB70]];
  CFRelease(v11);
  v12 = *off_1E798A608;
  if (![a1 objectForKeyedSubscript:*off_1E798A608])
  {
    BWPhotoEncoderCreateGTCColorSpaceFromGainMapMetadata_cold_11();
    return 4294950306;
  }

  v13 = [a1 objectForKeyedSubscript:v12];
  [v9 setObject:v13 forKeyedSubscript:*MEMORY[0x1E695BB90]];
  v14 = *off_1E798A618;
  if (![a1 objectForKeyedSubscript:*off_1E798A618])
  {
    BWPhotoEncoderCreateGTCColorSpaceFromGainMapMetadata_cold_10();
    return 4294950306;
  }

  v15 = [a1 objectForKeyedSubscript:v14];
  [v9 setObject:v15 forKeyedSubscript:*MEMORY[0x1E695BB80]];
  v16 = *off_1E798A610;
  if (![a1 objectForKeyedSubscript:*off_1E798A610])
  {
    BWPhotoEncoderCreateGTCColorSpaceFromGainMapMetadata_cold_9();
    return 4294950306;
  }

  v17 = [a1 objectForKeyedSubscript:v16];
  [v9 setObject:v17 forKeyedSubscript:*MEMORY[0x1E695BB88]];
  v18 = *off_1E798A620;
  if (![a1 objectForKeyedSubscript:*off_1E798A620])
  {
    BWPhotoEncoderCreateGTCColorSpaceFromGainMapMetadata_cold_8();
    return 4294950306;
  }

  v19 = [a1 objectForKeyedSubscript:v18];
  [v9 setObject:v19 forKeyedSubscript:*MEMORY[0x1E695BB78]];
  v20 = *off_1E798A628;
  if (![a1 objectForKeyedSubscript:*off_1E798A628])
  {
    BWPhotoEncoderCreateGTCColorSpaceFromGainMapMetadata_cold_7();
    return 4294950306;
  }

  v21 = [a1 objectForKeyedSubscript:v20];
  [v9 setObject:v21 forKeyedSubscript:*MEMORY[0x1E695BB98]];
  v22 = *off_1E798A648;
  if (![a1 objectForKeyedSubscript:*off_1E798A648])
  {
    BWPhotoEncoderCreateGTCColorSpaceFromGainMapMetadata_cold_6();
    return 4294950306;
  }

  v23 = MEMORY[0x1E696AD98];
  [objc_msgSend(a1 objectForKeyedSubscript:{v22), "floatValue"}];
  *&v25 = -v24;
  v26 = [v23 numberWithFloat:v25];
  [v9 setObject:v26 forKeyedSubscript:*MEMORY[0x1E695BBA8]];
  v27 = *off_1E798A638;
  if (![a1 objectForKeyedSubscript:*off_1E798A638])
  {
    BWPhotoEncoderCreateGTCColorSpaceFromGainMapMetadata_cold_5();
    return 4294950306;
  }

  v28 = MEMORY[0x1E696AD98];
  [objc_msgSend(a1 objectForKeyedSubscript:{v27), "floatValue"}];
  *&v30 = -v29;
  v31 = [v28 numberWithFloat:v30];
  [v9 setObject:v31 forKeyedSubscript:*MEMORY[0x1E695BBA0]];
  v32 = [MEMORY[0x1E695DF90] dictionary];
  if (!v32)
  {
    BWPhotoEncoderCreateGTCColorSpaceFromGainMapMetadata_cold_4();
    return 4294950305;
  }

  v33 = v32;
  [v32 setObject:v9 forKeyedSubscript:*MEMORY[0x1E695BBC0]];
  [v33 setObject:a2 forKeyedSubscript:*MEMORY[0x1E695BBB8]];
  v34 = MEMORY[0x1E695BB50];
  if (!a3)
  {
    v34 = MEMORY[0x1E695BBB0];
  }

  v35 = ColorSyncProfileCreateWithName(*v34);
  if (v35)
  {
    v36 = v35;
    CopyWithFlexGTC = ColorSyncProfileCreateCopyWithFlexGTC();
    if (CopyWithFlexGTC)
    {
      v38 = CopyWithFlexGTC;
      v39 = MEMORY[0x1B26EE760](CopyWithFlexGTC, 0);
      if (v39)
      {
        if (a4)
        {
          v40 = 0;
          *a4 = v39;
        }

        else
        {
          CFRelease(v39);
          v40 = 0;
        }
      }

      else
      {
        BWPhotoEncoderCreateGTCColorSpaceFromGainMapMetadata_cold_1(&v42);
        v40 = v42;
      }

      CFRelease(v38);
    }

    else
    {
      BWPhotoEncoderCreateGTCColorSpaceFromGainMapMetadata_cold_2(&v43);
      v40 = v43;
    }

    CFRelease(v36);
  }

  else
  {
    BWPhotoEncoderCreateGTCColorSpaceFromGainMapMetadata_cold_3(&v44);
    return v44;
  }

  return v40;
}

uint64_t BWPhotoEncoderAddGainMapQualityControllerParametersToEncodingOptions(void *a1)
{
  [a1 setObject:&unk_1F2242598 forKeyedSubscript:*MEMORY[0x1E6991978]];
  v4 = *MEMORY[0x1E6991B90];
  v5 = &unk_1F224A7A0;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  return [a1 setObject:v2 forKeyedSubscript:*MEMORY[0x1E6991970]];
}

uint64_t BWPhotoEncoderIsHighGainImage(uint64_t result)
{
  if (result)
  {
    FigCaptureComputeImageGainFromMetadata();
  }

  return result;
}

uint64_t BWPhotoEncoderDefaultJPEGIndexedQTable(__CVBuffer *a1, uint64_t a2, uint64_t a3, int *a4, _BYTE *a5)
{
  IsHighGainImage = BWPhotoEncoderIsHighGainImage(a2);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  if (a4)
  {
    if (Height * Width > 0xF423FF)
    {
      v11 = 1;
    }

    else
    {
      v11 = IsHighGainImage;
    }

    if (Height - 1920 >= 0x451 || Width - 3265 >= 0x3C0)
    {
      v13 = 5;
    }

    else
    {
      v13 = 2;
    }

    if (v11)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    *a4 = v14;
  }

  if (a5)
  {
    *a5 = IsHighGainImage;
  }

  return 0;
}

uint64_t BWPhotoEncoderTranscodeQualityHintFromQuantizationTableIndex(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_1E798FBB0 + a1);
  }
}

uint64_t BWPhotoEncoderAuxImageTypeForDepthPixelFormat(int a1)
{
  if (a1 <= 1717856626)
  {
    if (a1 == 825306677 || a1 == 825437747)
    {
      return 0;
    }

    v2 = 1717855600;
    goto LABEL_8;
  }

  v1 = 2;
  if (a1 > 1751411058)
  {
    if (a1 == 1751411059)
    {
      return v1;
    }

    return 0;
  }

  if (a1 != 1717856627)
  {
    v2 = 1751410032;
LABEL_8:
    if (a1 == v2)
    {
      return 3;
    }

    return 0;
  }

  return v1;
}

uint64_t BWPhotoEncoderFacePrintInferenceVersion()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();

  return BWInferenceVersionMakeMajor(2);
}

uint64_t BWPhotoEncoderSemanticSegmentationMatteURNForAttachedMediaKey(void *a1)
{
  if ([a1 isEqualToString:@"PersonSemanticsHair"])
  {
    v2 = MEMORY[0x1E69917E0];
    return *v2;
  }

  if ([a1 isEqualToString:@"PersonSemanticsSkin"])
  {
    v2 = MEMORY[0x1E69917E8];
    return *v2;
  }

  if ([a1 isEqualToString:@"PersonSemanticsTeeth"])
  {
    v2 = MEMORY[0x1E69917F8];
    return *v2;
  }

  if ([a1 isEqualToString:@"PersonSemanticsGlasses"])
  {
    v2 = MEMORY[0x1E69917D8];
    return *v2;
  }

  if ([a1 isEqualToString:0x1F21AAD30])
  {
    return *MEMORY[0x1E69917F0];
  }

  else
  {
    return 0;
  }
}

uint64_t BWPhotoEncoderNodeAuxImageTypeForSemanticMatteAttachedMediaKey(void *a1)
{
  if ([a1 isEqualToString:@"PersonSemanticsHair"])
  {
    return 5;
  }

  if ([a1 isEqualToString:@"PersonSemanticsSkin"])
  {
    return 6;
  }

  if ([a1 isEqualToString:@"PersonSemanticsTeeth"])
  {
    return 7;
  }

  if ([a1 isEqualToString:@"PersonSemanticsGlasses"])
  {
    return 8;
  }

  if ([a1 isEqualToString:0x1F21AAD30])
  {
    return 9;
  }

  return 0;
}

__CFString *BWPhotoEncoderAttachedMediaKeyForSemanticSegmentationMatteURN(void *a1)
{
  if ([a1 isEqualToString:*MEMORY[0x1E69917E0]])
  {
    return @"PersonSemanticsHair";
  }

  if ([a1 isEqualToString:*MEMORY[0x1E69917E8]])
  {
    return @"PersonSemanticsSkin";
  }

  if ([a1 isEqualToString:*MEMORY[0x1E69917F8]])
  {
    return @"PersonSemanticsTeeth";
  }

  if ([a1 isEqualToString:*MEMORY[0x1E69917D8]])
  {
    return @"PersonSemanticsGlasses";
  }

  return 0;
}

uint64_t BWPhotoEncoderSmartStyleCastIsSystemStyle(void *a1)
{
  if ([a1 isEqual:FigSmartStyleCastTypeStandard] & 1) != 0 || (objc_msgSend(a1, "isEqual:", FigSmartStyleCastTypeNeutral) & 1) != 0 || (objc_msgSend(a1, "isEqual:", FigSmartStyleCastTypeBlushWarm) & 1) != 0 || (objc_msgSend(a1, "isEqual:", FigSmartStyleCastTypeGoldWarm) & 1) != 0 || (objc_msgSend(a1, "isEqual:", FigSmartStyleCastTypeTanWarm) & 1) != 0 || (objc_msgSend(a1, "isEqual:", FigSmartStyleCastTypeCool) & 1) != 0 || (objc_msgSend(a1, "isEqual:", FigSmartStyleCastTypeBrightPop))
  {
    return 1;
  }

  if (([a1 isEqual:FigSmartStyleCastTypeNoFilter] & 1) == 0 && (objc_msgSend(a1, "isEqual:", FigSmartStyleCastTypeWarmAuthentic) & 1) == 0 && (objc_msgSend(a1, "isEqual:", FigSmartStyleCastTypeColorful) & 1) == 0 && (objc_msgSend(a1, "isEqual:", FigSmartStyleCastTypeEarthy) & 1) == 0 && (objc_msgSend(a1, "isEqual:", FigSmartStyleCastTypeCloudCover) & 1) == 0 && (objc_msgSend(a1, "isEqual:", FigSmartStyleCastTypeUrbanCool) & 1) == 0 && (objc_msgSend(a1, "isEqual:", FigSmartStyleCastTypeDreamyHues) & 1) == 0 && (objc_msgSend(a1, "isEqual:", FigSmartStyleCastTypeStarkBW) & 1) == 0)
  {
    [a1 isEqual:FigSmartStyleCastTypeLongGray];
  }

  return 0;
}

float BWPhotoEncoderHEIFDeltaMapDownscalingFactor()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  return 1.4142;
}

float BWPhotoEncoderHEIFDeltaMapQuality(void *a1)
{
  IsSystemStyle = BWPhotoEncoderSmartStyleCastIsSystemStyle([a1 cast]);
  result = 0.6;
  if (IsSystemStyle)
  {
    return *"fff?";
  }

  return result;
}

uint64_t BWPhotoEncoderDeltaMapPixelFormat(void *a1, int a2)
{
  v4 = 641230384;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v5 = [a1 cast];
  if (([v5 isEqual:FigSmartStyleCastTypeStarkBW] & 1) != 0 || (v6 = objc_msgSend(a1, "cast"), objc_msgSend(v6, "isEqual:", FigSmartStyleCastTypeLongGray)))
  {
    v4 = 641230388;
    v7 = 645424692;
  }

  else
  {
    v7 = 645424688;
  }

  if (a2 == 1)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

uint64_t BWPhotoEncoderDecompressStyledImageForDeltaMap(void *a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return BWPhotoEncoderSmartStyleCastIsSystemStyle([a1 cast]) ^ 1;
  }
}

void *BWPhotoEncoderSmartStylesAttachedMediaKeysForPiecemealEncoding(void *a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  [v2 addObject:0x1F21AAF70];
  [v2 addObjectsFromArray:BWSemanticSegmentationMatteAttachedMediaKeysSupportedByDemosaicedRaw()];
  if (([objc_msgSend(a1 "requestedSettings")] & 1) != 0 || objc_msgSend(objc_msgSend(objc_msgSend(a1, "requestedSettings"), "enabledSemanticSegmentationMatteURNs"), "count"))
  {
    v4[0] = @"PersonSemanticsSkin";
    v4[1] = 0x1F21AABB0;
    [v2 removeObjectsInArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v4, 2)}];
  }

  return v2;
}

BOOL BWPhotoEncoderSupportsPiecemealEnocding(void *a1)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  return BWPhotoEncoderResolveEncodingSchemeForRequestedSettings([a1 requestedSettings]) == 2 && (objc_msgSend(objc_msgSend(a1, "requestedSettings"), "constituentPhotoDeliveryEnabled") & 1) == 0 && !FigCapturePixelFormatIsDemosaicedRaw(objc_msgSend(objc_msgSend(a1, "requestedSettings"), "rawOutputFormat")) && BWIsSmartStyleCapture(a1);
}

uint64_t SensitiveContentAnalysisLibraryCore()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = SensitiveContentAnalysisLibraryCore_frameworkLibrary;
  v5 = SensitiveContentAnalysisLibraryCore_frameworkLibrary;
  if (!SensitiveContentAnalysisLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_1E798FBE0;
    v7 = *off_1E798FBF0;
    v8 = 0;
    v3[3] = _sl_dlopen();
    SensitiveContentAnalysisLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1AC9D2CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SensitiveContentAnalysisLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  SensitiveContentAnalysisLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SensitiveContentAnalysisLibrary()
{
  v1 = 0;
  result = SensitiveContentAnalysisLibraryCore();
  if (!result)
  {
    SensitiveContentAnalysisLibrary_cold_1(&v1);
  }

  return result;
}

uint64_t getSCVideoStreamAnalyzerClass()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x3052000000;
  v5 = __Block_byref_object_copy__0;
  v0 = getSCVideoStreamAnalyzerClass_softClass;
  v6 = __Block_byref_object_dispose__0;
  v7 = getSCVideoStreamAnalyzerClass_softClass;
  if (!getSCVideoStreamAnalyzerClass_softClass)
  {
    SensitiveContentAnalysisLibraryCore();
    v3[5] = objc_getClass("SCVideoStreamAnalyzer");
    getSCVideoStreamAnalyzerClass_softClass = v3[5];
    v0 = v3[5];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1AC9D2EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSCVideoStreamAnalyzerClass_block_invoke(uint64_t a1)
{
  SensitiveContentAnalysisLibraryCore();
  result = objc_getClass("SCVideoStreamAnalyzer");
  *(*(*(a1 + 32) + 8) + 40) = result;
  getSCVideoStreamAnalyzerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getSCAErrorDomainSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getSCAErrorDomainSymbolLoc_ptr;
  v6 = getSCAErrorDomainSymbolLoc_ptr;
  if (!getSCAErrorDomainSymbolLoc_ptr)
  {
    v1 = SensitiveContentAnalysisLibrary();
    v4[3] = dlsym(v1, "SCAErrorDomain");
    getSCAErrorDomainSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9D3000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSCAErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensitiveContentAnalysisLibrary();
  result = dlsym(v2, "SCAErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSCAErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getSCAErrorDomain()
{
  SCAErrorDomainSymbolLoc = getSCAErrorDomainSymbolLoc();
  if (!SCAErrorDomainSymbolLoc)
  {
    getSCAErrorDomain_cold_1();
  }

  return *SCAErrorDomainSymbolLoc;
}

double scaleHomography(float32x4_t a1, float32x4_t a2, float32x4_t a3, double a4, double a5)
{
  v5 = 0;
  v7 = a5;
  v16 = xmmword_1ACF06340;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  do
  {
    *(&v17 + v5 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1, COERCE_FLOAT(v15[v5])), a2, *&v15[v5], 1), a3, v15[v5], 2);
    ++v5;
  }

  while (v5 != 3);
  v8 = 0;
  v9.i64[1] = 0;
  *&v6 = a4;
  v9.i64[0] = v6;
  v10.i32[0] = 0;
  v10.i64[1] = 0;
  v10.f32[1] = v7;
  v13 = v17;
  v11 = v18;
  v12 = v19;
  v13.i32[3] = 0;
  HIDWORD(v11) = 0;
  HIDWORD(v12) = 0;
  v15[0] = v13;
  v15[1] = v11;
  v16 = v12;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  do
  {
    *(&v17 + v8 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, COERCE_FLOAT(v15[v8])), v10, *&v15[v8], 1), xmmword_1ACF06340, v15[v8], 2);
    ++v8;
  }

  while (v8 != 3);
  if (fabsf(*(&v19 + 2)) > 0.00000001)
  {
    v13.i64[0] = vmulq_n_f32(v17, 1.0 / *(&v19 + 2)).u64[0];
  }

  return *v13.i64;
}

double bwsc_convertHomographyToPixelCoordinates(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v34.columns[0] = *MEMORY[0x1E69E9B10];
  __asm { FMOV            V2.4S, #-1.0 }

  _Q2.i32[2] = *(MEMORY[0x1E69E9B10] + 24);
  v25 = *(MEMORY[0x1E69E9B10] + 16);
  _Q2.i32[0] = v25;
  v27 = *(MEMORY[0x1E69E9B10] + 32);
  _Q2.i32[3] = HIDWORD(v25);
  v34.columns[1] = _Q2;
  v15 = *MEMORY[0x1E69E9B10];
  v16 = _Q2;
  __asm { FMOV            V2.4S, #1.0 }

  v34.columns[2].i32[0] = v27.i32[0];
  v34.columns[2].i64[1] = *(MEMORY[0x1E69E9B10] + 40);
  v17 = v34.columns[2];
  v35 = __invert_f3(v34);
  v10 = 0;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  do
  {
    *(&v31 + v10 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*(&v28 + v10 * 4))), a3, *&v28.f32[v10], 1), a4, *(&v28 + v10 * 4), 2);
    v10 += 4;
  }

  while (v10 != 12);
  v11 = 0;
  v28 = v31;
  v29 = v32;
  v30 = v33;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  do
  {
    *(&v31 + v11 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35.columns[0], COERCE_FLOAT(*(&v28 + v11 * 4))), v35.columns[1], *&v28.f32[v11], 1), v35.columns[2], *(&v28 + v11 * 4), 2);
    v11 += 4;
  }

  while (v11 != 12);
  v22 = v32;
  v24 = v31;
  v36.columns[0].f32[0] = 1.0 / a1;
  v36.columns[0].i32[1] = v15.i32[1];
  v36.columns[0].i64[1] = v15.i64[1];
  v18 = v36.columns[0];
  v20 = v33;
  v36.columns[1].i32[0] = v25;
  v36.columns[1].f32[1] = 1.0 / SHIDWORD(a1);
  v36.columns[1].i64[1] = *(&v25 + 1);
  v26 = v36.columns[1];
  v36.columns[2] = v27;
  v37 = __invert_f3(v36);
  v12 = 0;
  v28 = v18;
  v29 = v26;
  v30 = v27;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  do
  {
    *(&v31 + v12 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(*(&v28 + v12 * 4))), v22, *&v28.f32[v12], 1), v20, *(&v28 + v12 * 4), 2);
    v12 += 4;
  }

  while (v12 != 12);
  v13 = 0;
  v28 = v31;
  v29 = v32;
  v30 = v33;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  do
  {
    *(&v31 + v13 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37.columns[0], COERCE_FLOAT(*(&v28 + v13 * 4))), v37.columns[1], *&v28.f32[v13], 1), v37.columns[2], *(&v28 + v13 * 4), 2);
    v13 += 4;
  }

  while (v13 != 12);
  return *v31.i64;
}

void *BWSemanticStyleFiltersForSemanticStyleAndFilterToCombine(void *a1, unsigned int a2, int a3, int a4, int a5, void *a6, uint64_t a7)
{
  if (!a1)
  {
    return MEMORY[0x1E695E0F0];
  }

  v13 = MEMORY[0x1E695F620];
  v47[0] = *MEMORY[0x1E695F870];
  v14 = [MEMORY[0x1E696AD98] numberWithInt:*MEMORY[0x1E695F920]];
  v47[1] = @"kCIContextIOSurfaceMemoryPoolID";
  v48[0] = v14;
  v48[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BWMemoryPool poolIdentifier](+[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"), "poolIdentifier")}];
  v15 = [v13 contextWithOptions:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v48, v47, 2)}];
  if (a3)
  {
    v16 = sscc_colorCubesForSemanticStyle(a1, a2, 1, a6);
    v17 = sscc_colorCubeFiltersForColorCubes(v16, a2, a4, a5);
    v18 = sscc_colorCubesForSemanticStyle(a1, a2, 0, a6);
    v19 = sscc_colorCubeFiltersForColorCubes(v18, a2, a4, a5);
    if (a7)
    {
      v17 = [v17 arrayByAddingObjectsFromArray:a7];
      v19 = [v19 arrayByAddingObjectsFromArray:a7];
    }

    v20 = [v15 createColorCubeDataForFilters:v17 dimension:32];
    v21 = [v15 createColorCubeDataForFilters:v19 dimension:32];
    if (a4)
    {
      v22 = v20;
    }

    else
    {
      v22 = v21;
    }

    if (a5)
    {
      v23 = v22;
    }

    else
    {
      v23 = v20;
    }

    v46 = v21;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
    v45 = v23;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
    v26 = [MEMORY[0x1E695DF70] array];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = v24;
    v27 = [v24 countByEnumeratingWithState:&v50 objects:v49 count:16];
    if (v27)
    {
      v28 = v27;
      LODWORD(v29) = 0;
      v30 = *v51;
      v31 = a4 | a5;
      v32 = @"-forced-to-background";
      if (a4)
      {
        v32 = @"-mask-visualization";
      }

      v41 = v32;
      v33 = *MEMORY[0x1E695F0B8];
      do
      {
        v34 = 0;
        v29 = v29;
        do
        {
          if (*v51 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v50 + 1) + 8 * v34);
          v36 = [MEMORY[0x1E695F648] colorCubesMixedWithMaskFilter];
          v37 = @"semanticStyleSceneType-unknown";
          if (a2 <= 3)
          {
            v37 = off_1E798FC58[a2];
          }

          if (v31)
          {
            v37 = [(__CFString *)v37 stringByAppendingString:v41];
          }

          [v36 setName:v37];
          [v36 setCubeDimension:8589936700.0];
          v38 = CGColorSpaceCreateWithName(v33);
          [v36 setColorSpace:CFAutorelease(v38)];
          [v36 setCube0Data:v35];
          [v36 setCube1Data:{objc_msgSend(v25, "objectAtIndexedSubscript:", v29)}];
          [v26 addObject:v36];
          ++v29;
          ++v34;
        }

        while (v28 != v34);
        v28 = [obj countByEnumeratingWithState:&v50 objects:v49 count:16];
      }

      while (v28);
    }
  }

  else
  {
    v39 = sscc_colorCubesForSemanticStyle(a1, a2, 0, a6);
    v44 = [v15 createColorCubeDataForFilters:sscc_colorCubeFiltersForColorCubes(v39 dimension:{a2, a4, a5), 32}];
    return sscc_colorCubeFiltersForColorCubes([MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1], a2, a4, a5);
  }

  return v26;
}

void *sscc_colorCubeFiltersForColorCubes(void *a1, unsigned int a2, int a3, int a4)
{
  v8 = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a1;
  v9 = [a1 countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    v12 = a3 | a4;
    v13 = @"-forced-to-background";
    if (a3)
    {
      v13 = @"-mask-visualization";
    }

    v21 = v13;
    v14 = *MEMORY[0x1E695F0B8];
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v24 + 1) + 8 * v15);
        v17 = [MEMORY[0x1E695F648] colorCubeWithColorSpaceFilter];
        v18 = @"semanticStyleSceneType-unknown";
        if (a2 <= 3)
        {
          v18 = off_1E798FC58[a2];
        }

        if (v12)
        {
          v18 = [(__CFString *)v18 stringByAppendingString:v21];
        }

        [v17 setName:v18];
        [v17 setCubeDimension:8589936700.0];
        v19 = CGColorSpaceCreateWithName(v14);
        [v17 setColorSpace:CFAutorelease(v19)];
        [v17 setCubeData:v16];
        [v8 addObject:v17];
        ++v15;
      }

      while (v10 != v15);
      v10 = [obj countByEnumeratingWithState:&v24 objects:v23 count:16];
    }

    while (v10);
  }

  return v8;
}

void *sscc_colorCubesForSemanticStyle(void *a1, int a2, int a3, void *a4)
{
  v8 = [MEMORY[0x1E695DF70] array];
  [a1 mappedToneBias];
  v10 = v9;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v11 = MEMORY[0x1E695DEF0];
      if (v9 <= 0.0)
      {
        v12 = &sBWSemanticStyleOutdoorSceneToneBiasMinusOneCubeData;
      }

      else
      {
        v12 = &sBWSemanticStyleOutdoorSceneToneBiasPlusOneCubeData;
      }
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_19;
      }

      v11 = MEMORY[0x1E695DEF0];
      if (v9 <= 0.0)
      {
        v12 = &sBWSemanticStyleSunsetSceneToneBiasMinusOneCubeData;
      }

      else
      {
        v12 = &sBWSemanticStyleSunsetSceneToneBiasPlusOneCubeData;
      }
    }

LABEL_18:
    v13 = [v11 dataWithBytesNoCopy:v12 length:0x20000 freeWhenDone:0];
    if (v13)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  if (!a2)
  {
    v11 = MEMORY[0x1E695DEF0];
    if (v9 <= 0.0)
    {
      v12 = &sBWSemanticStyleIndoorSceneToneBiasMinusOneCubeData;
    }

    else
    {
      v12 = &sBWSemanticStyleIndoorSceneToneBiasPlusOneCubeData;
    }

    goto LABEL_18;
  }

  if (a2 == 1)
  {
    v11 = MEMORY[0x1E695DEF0];
    if (v9 <= 0.0)
    {
      v12 = &sBWSemanticStyleFoodSceneToneBiasMinusOneCubeData;
    }

    else
    {
      v12 = &sBWSemanticStyleFoodSceneToneBiasPlusOneCubeData;
    }

    goto LABEL_18;
  }

LABEL_19:
  if (v10 <= 0.0)
  {
    v14 = &sBWSemanticStyleIndoorSceneToneBiasMinusOneCubeData;
  }

  else
  {
    v14 = &sBWSemanticStyleIndoorSceneToneBiasPlusOneCubeData;
  }

  v13 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v14 length:0x20000 freeWhenDone:0];
LABEL_23:
  v15 = fabsf(v10);
  if (a3)
  {
    v16 = v15 * 0.2;
  }

  else
  {
    v16 = v15;
  }

  v17 = [a4 identityColorLookupTable];
  *&v18 = v16;
  [v8 addObject:{objc_msgSend(a4, "interpolatedColorLookupTableFromTable:toTable:fractionComplete:", v17, v13, v18)}];
  [a1 mappedWarmthBias];
  if (v19 >= 0.0)
  {
    v20 = &sBWSemanticStyleWarmthBiasPlusOneCubeData;
  }

  else
  {
    v20 = &sBWSemanticStyleWarmthBiasMinusOneCubeData;
  }

  v21 = 0.4;
  if (v19 <= 0.0)
  {
    v21 = 0.5;
  }

  v22 = fabsf(v19);
  v23 = v22 * v21;
  if (a3)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  v25 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v20 length:0x20000 freeWhenDone:0];
  v26 = [a4 identityColorLookupTable];
  *&v27 = v24;
  [v8 addObject:{objc_msgSend(a4, "interpolatedColorLookupTableFromTable:toTable:fractionComplete:", v26, v25, v27)}];
  return v8;
}

_DWORD *fdvc_buildForest(void *a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0x10200406C4767B9uLL);
  v3 = [a1 objectForKeyedSubscript:@"trees"];
  v2[6] = [objc_msgSend(a1 objectForKeyedSubscript:{@"nFeatures", "intValue"}];
  [objc_msgSend(a1 objectForKeyedSubscript:{@"threshold", "doubleValue"}];
  *(v2 + 2) = v4;
  v5 = [v3 count];
  v2[7] = v5;
  *v2 = malloc_type_malloc(16 * v5, 0x10200403A5D3213uLL);
  v6 = [v3 count];
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v8 += [objc_msgSend(objc_msgSend(v3 objectAtIndexedSubscript:{v7++), "objectForKeyedSubscript:", @"nodes", "count"}];
    }

    while ([v3 count] > v7);
    v6 = 24 * v8;
  }

  v9 = malloc_type_malloc(v6, 0x10000401E56706BuLL);
  *(v2 + 1) = v9;
  if ([v3 count])
  {
    v10 = 0;
    do
    {
      v11 = [v3 objectAtIndexedSubscript:v10];
      v12 = *v2 + 16 * v10;
      v13 = [v11 objectForKeyedSubscript:@"nodes"];
      *(v12 + 8) = [objc_msgSend(v11 objectForKeyedSubscript:{@"maxDepth", "intValue"}];
      *v12 = v9;
      if ([v13 count])
      {
        v14 = 0;
        v15 = v9 + 8;
        do
        {
          v16 = [v13 objectAtIndex:v14];
          *(v15 - 2) = [objc_msgSend(v16 objectAtIndexedSubscript:{0), "intValue"}];
          *(v15 - 1) = [objc_msgSend(v16 objectAtIndexedSubscript:{1), "intValue"}];
          *v15 = [objc_msgSend(v16 objectAtIndexedSubscript:{2), "intValue"}];
          [objc_msgSend(v16 objectAtIndexedSubscript:{3), "doubleValue"}];
          *(v15 + 1) = v17;
          ++v14;
          v15 += 24;
        }

        while ([v13 count] > v14);
      }

      v9 += 24 * [v13 count];
      ++v10;
    }

    while ([v3 count] > v10);
  }

  return v2;
}

_DWORD *__FigDisplayedVitalityClassifierLoadModel_block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.CMCapture", "URLForResource:withExtension:", @"DisplayedVitalityForest", @"plist"}];
  v2 = 0;
  result = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v0 error:&v2];
  if (result)
  {
    result = fdvc_buildForest(result);
    FigDisplayedVitalityClassifierLoadModel_aForestClassifier = result;
  }

  return result;
}

void FigDisplayedVitalityClassify(void *a1, int a2, int a3, double *a4, double *a5, double a6)
{
  v188 = a4;
  v189 = a5;
  if (FigDisplayedVitalityClassifierLoadModel_once != -1)
  {
    FigDisplayedVitalityClassify_cold_1();
  }

  v10 = FigDisplayedVitalityClassifierLoadModel_aForestClassifier;
  if ([a1 count])
  {
    v187 = v10;
    v11 = 72 * [a1 count];
    v193 = malloc_type_malloc(v11, 0x819ADA10uLL);
    v190 = malloc_type_malloc(v11, 0x1F4806ECuLL);
    v195 = 0u;
    v196 = 0u;
    v197 = 0u;
    v198 = 0u;
    v12 = [a1 countByEnumeratingWithState:&v195 objects:v194 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v196;
      do
      {
        v16 = 0;
        v17 = v193 + 72 * v14;
        do
        {
          if (*v196 != v15)
          {
            objc_enumerationMutation(a1);
          }

          v18 = *(*(&v195 + 1) + 8 * v16);
          if ([v18 length] <= 0x23)
          {
            FigDisplayedVitalityClassify_cold_2();
          }

          v19 = [v18 bytes];
          for (i = 0; i != 9; ++i)
          {
            *&v17[8 * i] = *(v19 + 4 * i);
          }

          ++v14;
          ++v16;
          v17 += 72;
        }

        while (v16 != v13);
        v13 = [a1 countByEnumeratingWithState:&v195 objects:v194 count:16];
      }

      while (v13);
    }

    v21 = [a1 count];
    v22 = v190;
    *v190 = 0x3FF0000000000000;
    v22[1] = 0;
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = 0x3FF0000000000000;
    v22[5] = 0;
    v22[6] = 0;
    v22[7] = 0;
    v22[8] = 0x3FF0000000000000;
    if (v21 >= 2)
    {
      v23 = 1;
      v24 = 9;
      v25 = v193;
      do
      {
        v26 = (v193 + 8 * v24);
        v27 = v26[7];
        v28 = v26[8];
        v29 = v26[4];
        v30 = v26[5];
        v31 = v29 * v28 - v27 * v30;
        *buf = v31;
        v32 = v26[1];
        v33 = v26[2];
        v34 = v27 * v33 - v32 * v28;
        v35 = v32 * v30 - v29 * v33;
        v219 = v34;
        v220 = v35;
        v36 = *v26;
        v37 = v26[3];
        v38 = v26[6];
        v39 = v34 * v37 + *v26 * v31 + v38 * v35;
        if (fabs(v39) < 2.22044605e-16)
        {
          printf("FAILED: Matrix inversion.");
        }

        else
        {
          *buf = v31 / v39;
          v219 = v34 / v39;
          v220 = v35 / v39;
          v221 = (v38 * v30 - v37 * v28) / v39;
          v222 = (v36 * v28 - v38 * v33) / v39;
          v223 = (v37 * v33 - v36 * v30) / v39;
          v224 = (v37 * v27 - v38 * v29) / v39;
          v225 = (v38 * v32 - v36 * v27) / v39;
          v226 = (v36 * v29 - v37 * v32) / v39;
        }

        v40 = 0;
        v41 = v25;
        do
        {
          v42 = 0;
          v43 = buf;
          do
          {
            v44 = 0;
            v45 = 0.0;
            v46 = v43;
            do
            {
              v47 = *v46;
              v46 += 3;
              v45 = v45 + *&v41[v44] * v47;
              v44 += 8;
            }

            while (v44 != 24);
            *(&v200 + 3 * v40 + v42++) = v45;
            v43 += 8;
          }

          while (v42 != 3);
          ++v40;
          v41 += 24;
        }

        while (v40 != 3);
        v48 = &v22[v24];
        *(v48 + 1) = v201;
        *(v48 + 2) = v202;
        *(v48 + 3) = v203;
        v48[8] = v204;
        *v48 = v200;
        v24 += 9;
        ++v23;
        v25 += 72;
      }

      while (v23 != v21);
    }

    v49 = [a1 count];
    v50 = v49;
    __pattern4 = 2143289344;
    if (v49)
    {
      v51 = 8 * v49;
      v52 = malloc_type_malloc(72 * v49, 0x100004000313F17uLL);
      v184 = malloc_type_malloc(72 * v50, 0x100004000313F17uLL);
      memset_pattern4(v184, &__pattern4, 72 * v50);
      v53 = malloc_type_malloc(8 * v50, 0x100004000313F17uLL);
      *buf = 1.0;
      v219 = 0.0;
      v221 = 0.0;
      v222 = 1.0;
      v225 = 0.0;
      v224 = 0.0;
      v226 = 1.0;
      v241 = 0x3FF0000000000000uLL;
      *(&v242 + 1) = 0;
      *&v243 = 0x3FF0000000000000;
      v244 = 0uLL;
      v245 = 0x3FF0000000000000;
      v220 = (a2 / 2);
      v223 = (a3 / 2);
      *&v242 = (a2 / -2);
      *(&v243 + 1) = (a3 / -2);
      if (v50 >= 1)
      {
        v54 = 0;
        v55 = v52;
        v56 = v22;
        do
        {
          v57 = 0;
          v58 = v56;
          do
          {
            v59 = 0;
            v60 = buf;
            do
            {
              v61 = 0;
              v62 = 0.0;
              v63 = v60;
              do
              {
                v64 = *v63;
                v63 += 3;
                v62 = v62 + *&v58[v61++] * v64;
              }

              while (v61 != 3);
              *(&v200 + 3 * v57 + v59++) = v62;
              v60 += 8;
            }

            while (v59 != 3);
            ++v57;
            v58 += 3;
          }

          while (v57 != 3);
          v65 = 0;
          v234 = v202;
          v235 = v203;
          v236 = v204;
          v233 = v201;
          v232 = v200;
          v66 = &v241;
          do
          {
            v67 = 0;
            v68 = &v232;
            do
            {
              v69 = 0;
              v70 = 0.0;
              v71 = v68;
              do
              {
                v72 = *v71;
                v71 += 3;
                v70 = v70 + *(v66 + v69) * v72;
                v69 += 8;
              }

              while (v69 != 24);
              *(&v200 + 3 * v65 + v67++) = v70;
              v68 = (v68 + 8);
            }

            while (v67 != 3);
            ++v65;
            v66 = (v66 + 24);
          }

          while (v65 != 3);
          *(v55 + 1) = v201;
          *(v55 + 2) = v202;
          *(v55 + 3) = v203;
          *(v55 + 8) = v204;
          *v55 = v200;
          v55 += 9;
          v56 += 9;
          ++v54;
        }

        while (v54 != v50);
      }

      v73 = 72 * v50;
      v74 = malloc_type_malloc(v73, 0x100004000313F17uLL);
      v75 = malloc_type_malloc(v73, 0x100004000313F17uLL);
      v76 = v75;
      if (v50 >= 1)
      {
        v77 = 0;
        v78 = v52 + 5;
        do
        {
          v79 = *(v78 - 3) * v78[1];
          if (v79 >= 0.0 || (v80 = *v78 * v78[2], v80 >= 0.0))
          {
            v53[v77 / 8] = 0xBFF0000000000000;
            *&v75[v77] = 0xBFF0000000000000;
            v81 = -1.0;
            v82 = v74;
          }

          else
          {
            v53[v77 / 8] = 0;
            v74[v77 / 8] = v79 + v80;
            v81 = *v78 * *v78 + *(v78 - 3) * *(v78 - 3);
            v82 = v75;
          }

          v82[v77 / 8] = v81;
          v77 += 8;
          v78 += 9;
        }

        while (v51 != v77);
        v83 = 0;
        v84 = -1;
        v85 = -3;
        do
        {
          v86 = &v53[v83];
          if (*v86 >= 0.0)
          {
            v87 = 0.0;
            v88 = 7;
            v89 = v85;
            v90 = 0.0;
            do
            {
              if (v89 < v50)
              {
                v91 = *&v75[8 * v89];
                if (v91 >= 0.0)
                {
                  v90 = v90 + v74[v89];
                  v87 = v87 + v91;
                }
              }

              ++v89;
              --v88;
            }

            while (v88);
            *v86 = sqrt(-v87 / v90);
            if (v84 < 0)
            {
              v84 = v83;
            }
          }

          else if (v83)
          {
            *v86 = *(v86 - 1);
          }

          ++v83;
          ++v85;
        }

        while (v83 != v50);
        if (v84 >= 1)
        {
          v92 = v53[v84];
          v93 = v84;
          v94 = (v84 + 1) & 0xFFFFFFFE;
          v95 = vdupq_n_s64(v93 - 1);
          v96 = xmmword_1AD046360;
          v97 = v53 + 1;
          v98 = vdupq_n_s64(2uLL);
          do
          {
            v99 = vmovn_s64(vcgeq_u64(v95, v96));
            if (v99.i8[0])
            {
              *(v97 - 1) = v92;
            }

            if (v99.i8[4])
            {
              *v97 = v92;
            }

            v96 = vaddq_s64(v96, v98);
            v97 += 2;
            v94 -= 2;
          }

          while (v94);
        }
      }

      v191 = v53;
      v192 = v50;
      v185 = v52;
      free(v74);
      free(v76);
      v183[7] = v183;
      v239[2] = 3;
      v239[3] = 3;
      v239[0] = 3;
      v239[1] = 3;
      v238 = 0;
      v237 = 100;
      v236 = 0;
      v235 = 0u;
      v234 = 0u;
      v233 = 0u;
      v232 = 0u;
      v231 = 0;
      v230 = 0u;
      v229 = 0u;
      v228 = 0u;
      v227 = 0u;
      v240 = 65;
      v217[0] = 0x3FF0000000000000;
      memset(&v217[1], 0, 24);
      v217[4] = 0x3FF0000000000000;
      memset(&v217[5], 0, 24);
      v216[0] = 0x3FF0000000000000;
      memset(&v216[1], 0, 24);
      v216[4] = 0x3FF0000000000000;
      memset(&v216[5], 0, 24);
      v186 = malloc_type_malloc(v73, 0x100004000313F17uLL);
      if (v50 >= 1)
      {
        v100 = 0;
        v101 = &v227 + 1;
        v102 = v185;
        v103 = v186;
        do
        {
          v104 = 0;
          v105 = v191[v100];
          *&v216[8] = 1.0 / v105;
          *&v217[8] = v105;
          v106 = v102;
          do
          {
            v107 = 0;
            v108 = v216;
            do
            {
              v109 = 0;
              v110 = 0.0;
              v111 = v108;
              do
              {
                v112 = *v111;
                v111 += 3;
                v110 = v110 + v106[v109++] * v112;
              }

              while (v109 != 3);
              *(&v241 + 3 * v104 + v107++) = v110;
              ++v108;
            }

            while (v107 != 3);
            ++v104;
            v106 += 3;
          }

          while (v104 != 3);
          v113 = 0;
          v214[2] = v243;
          v214[3] = v244;
          v215 = v245;
          v214[1] = v242;
          v214[0] = v241;
          v114 = v217;
          do
          {
            v115 = 0;
            v116 = v214;
            do
            {
              v117 = 0;
              v118 = 0.0;
              v119 = v116;
              do
              {
                v120 = *v119;
                v119 += 3;
                v118 = v118 + *&v114[v117++] * v120;
              }

              while (v117 != 3);
              *(&v241 + 3 * v113 + v115++) = v118;
              v116 = (v116 + 8);
            }

            while (v115 != 3);
            ++v113;
            v114 += 3;
          }

          while (v113 != 3);
          v205 = v241;
          v209 = v243;
          v206 = *(&v242 + 1);
          v207 = v244;
          v208 = *(&v241 + 1);
          v210 = *(&v244 + 1);
          v213 = v245;
          v211 = v242;
          v212 = *(&v243 + 1);
          v233 = 0uLL;
          v232 = 0x3FF0000000000000uLL;
          v234 = 0x3FF0000000000000uLL;
          v235 = 0uLL;
          v236 = 0x3FF0000000000000;
          *v101 = 0;
          v101[1] = 0;
          v101[2] = 0;
          *&v227 = 0x3FF0000000000000;
          v229 = 0x3FF0000000000000uLL;
          v230 = 0uLL;
          v231 = 0x3FF0000000000000;
          v183[5] = &v238;
          v183[4] = buf;
          v121 = v101;
          v183[3] = &v237;
          v183[2] = &v200;
          v183[0] = &v227;
          v183[1] = v239;
          dgesdd_NEWLAPACK();
          if (v238)
          {
            v233 = 0uLL;
            v232 = 0x3FF0000000000000uLL;
            v234 = 0x3FF0000000000000uLL;
            v235 = 0uLL;
            v236 = 0x3FF0000000000000;
            v121[1] = 0;
            v121[2] = 0;
            *v121 = 0;
            *&v227 = 0x3FF0000000000000;
            v229 = 0x3FF0000000000000uLL;
            v230 = 0uLL;
            v231 = 0x3FF0000000000000;
          }

          else
          {
            v122 = *(&v232 + 1);
            v123 = v233;
            v124 = *(&v234 + 1);
            *(&v232 + 1) = *(&v233 + 1);
            *&v233 = v235;
            *(&v233 + 1) = v122;
            *(&v234 + 1) = *(&v235 + 1);
            *&v235 = v123;
            *(&v235 + 1) = v124;
            v125 = *(&v227 + 1);
            v126 = v228;
            v127 = *(&v229 + 1);
            *(&v227 + 1) = *(&v228 + 1);
            *&v228 = v230;
            *(&v228 + 1) = v125;
            *(&v229 + 1) = *(&v230 + 1);
            *&v230 = v126;
            *(&v230 + 1) = v127;
          }

          v101 = v121;
          v128 = 0;
          v129 = &v232;
          do
          {
            v130 = 0;
            v131 = &v227;
            do
            {
              v132 = 0;
              v133 = 0.0;
              v134 = v131;
              do
              {
                v135 = *v134;
                v134 += 3;
                v133 = v133 + *(v129 + v132) * v135;
                v132 += 8;
              }

              while (v132 != 24);
              *(&v241 + 3 * v128 + v130++) = v133;
              v131 = (v131 + 8);
            }

            while (v130 != 3);
            ++v128;
            v129 = (v129 + 24);
          }

          while (v128 != 3);
          v136 = v244;
          v103[2] = v243;
          v103[3] = v136;
          *(v103 + 8) = v245;
          v137 = v242;
          *v103 = v241;
          v103[1] = v137;
          v103 = (v103 + 72);
          v102 += 9;
          ++v100;
        }

        while (v100 != v192);
      }

      v139 = v184;
      v138 = v185;
      *v184 = 0x3FF0000000000000;
      v139[1] = 0.0;
      v139[2] = 0.0;
      v139[3] = 0.0;
      v139[4] = 1.0;
      v139[5] = 0.0;
      v139[6] = 0.0;
      v139[7] = 0.0;
      v139[8] = 1.0;
      v140 = v187;
      v142 = v191;
      v141 = v192;
      if (v50 > 1)
      {
        v143 = (v186 + 72);
        v144 = 1;
        v145 = 9;
        v146 = v139;
        do
        {
          v147 = 0;
          v148 = &v139[v145];
          v149 = v146;
          do
          {
            v150 = 0;
            v151 = v143;
            do
            {
              v152 = 0;
              v153 = 0.0;
              v154 = v151;
              do
              {
                v155 = *v154;
                v154 += 3;
                v153 = v153 + v149[v152++] * v155;
              }

              while (v152 != 3);
              *(&v241 + 3 * v147 + v150++) = v153;
              ++v151;
            }

            while (v150 != 3);
            ++v147;
            v149 += 3;
          }

          while (v147 != 3);
          v156 = v244;
          *(v148 + 2) = v243;
          *(v148 + 3) = v156;
          *(v148 + 8) = v245;
          v157 = v242;
          *v148 = v241;
          *(v148 + 1) = v157;
          v145 += 9;
          ++v144;
          v143 += 9;
          v146 += 9;
        }

        while (v144 != v50);
      }

      free(v186);
      v158 = 0;
      v159 = *v142;
      v160 = v139 + 8;
      v161 = *v142;
      v162 = -1.0;
      do
      {
        v163 = *(v160 - 8);
        v164 = *(v160 - 4);
        v165 = *v160;
        v160 += 9;
        v166 = v165;
        v167 = (((v163 + v164) + v166) + -1.0) * 0.5;
        v168 = acosf(fmaxf(fminf(v167, 1.0), -1.0));
        if (v162 < v168)
        {
          v162 = v168;
        }

        v169 = v142[v158];
        if (v159 > v169)
        {
          v159 = v142[v158];
        }

        if (v161 < v169)
        {
          v161 = v142[v158];
        }

        ++v158;
      }

      while (v141 != v158);
      v170 = v162 * 57.2957795;
      v171 = v161 - v159;
      free(v138);
      free(v139);
      free(v142);
    }

    else
    {
      v170 = 0.0;
      v171 = 0.0;
      v140 = v187;
    }

    free(v190);
    free(v193);
    *&v200 = v170;
    *(&v200 + 1) = v171;
    *&v201 = a6;
    if (v50)
    {
      if (v188)
      {
        *v188 = v170;
      }

      if (v189)
      {
        *v189 = v171;
      }

      if (v140)
      {
        if (*(v140 + 24) != 3)
        {
          FigDisplayedVitalityClassify_cold_3();
        }

        if (a6 >= 0.1 || (v170 < 1.0 ? (v172 = v171 < 10.0) : (v172 = 0), !v172))
        {
          if (*(v140 + 28) >= 1)
          {
            v173 = 0;
            v174 = 0.0;
            do
            {
              v175 = *v140 + 16 * v173;
              v176 = *(v175 + 8);
              if (v176 < 0)
              {
LABEL_130:
                if (getCameraCaptureLegacyLog_cameraCaptureLegacyLogOnceToken != -1)
                {
                  FigDisplayedVitalityClassify_cold_4();
                }

                v181 = getCameraCaptureLegacyLog_cameraCaptureLegacyLog;
                v182 = -1.0;
                if (os_log_type_enabled(getCameraCaptureLegacyLog_cameraCaptureLegacyLog, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1AC90E000, v181, OS_LOG_TYPE_DEFAULT, "Programming error in tree classifier. Exceeded maximum depth.", buf, 2u);
                }
              }

              else
              {
                v177 = 0;
                v178 = *v175;
                v179 = v176 + 1;
                while (1)
                {
                  v180 = v178 + 24 * v177;
                  if ((*v180 & 0x80000000) != 0 && (*(v180 + 4) & 0x80000000) != 0)
                  {
                    break;
                  }

                  v177 = *(v180 + 4 * (*(&v200 + *(v180 + 8)) > *(v180 + 16)));
                  if (--v179 <= 0)
                  {
                    goto LABEL_130;
                  }
                }

                v182 = *(v180 + 16);
              }

              v174 = v174 + v182;
              ++v173;
            }

            while (v173 < *(v140 + 28));
          }
        }
      }
    }
  }
}

os_log_t __getCameraCaptureLegacyLog_block_invoke()
{
  result = os_log_create("com.apple.cameracapture", "legacyLog");
  getCameraCaptureLegacyLog_cameraCaptureLegacyLog = result;
  return result;
}

void *FigCaptureMultiStreamFormatGetDescriptionString(void *a1)
{
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798C988), "intValue"}];
  v4 = [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798C980), "intValue"}];
  v5 = [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798D3F0), "BOOLValue"}];
  [v2 appendFormat:@"Sensor: %i x %i", v3, v4];
  if (v5)
  {
    v6 = [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798D3D8), "intValue"}];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = 2;
    }

    v8 = [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798D3E0), "intValue"}];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 2;
    }

    [v2 appendFormat:@" (Binned) (%d x %d)", v7, v9];
  }

  v10 = [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798C938), "intValue"}];
  v11 = [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798C930), "intValue"}];
  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    [v2 appendString:{@", FES: Disabled"}];
  }

  else
  {
    [v2 appendFormat:@", FES: %i x %i", v10, v11];
  }

  [v2 appendFormat:@", %i-%ifps", objc_msgSend(objc_msgSend(a1, "objectForKeyedSubscript:", *off_1E798D408), "intValue"), objc_msgSend(objc_msgSend(a1, "objectForKeyedSubscript:", *off_1E798D3F8), "intValue")];
  if ([objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798C978), "intValue"}])
  {
    [v2 appendString:{@", *HDR*"}];
  }

  if ([objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798D3C8), "BOOLValue"}])
  {
    [v2 appendString:{@", *EXP*"}];
  }

  if ([objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798C990), "BOOLValue"}])
  {
    v13 = @", *SBS ON*";
  }

  else
  {
    v13 = @", *SBS OFF*";
  }

  [v2 appendString:v13];
  if ([objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798C960), "BOOLValue"}])
  {
    [v2 appendFormat:@", *SIFR ON, binning factor %d*", objc_msgSend(objc_msgSend(a1, "objectForKeyedSubscript:", *off_1E798C958), "intValue")];
  }

  else
  {
    [v2 appendString:{@", *SIFR OFF*"}];
  }

  if ([objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798C950), "intValue"}] == 1)
  {
    [v2 appendString:{@", *Quadra SensorRaw*"}];
  }

  return v2;
}

void *FigCaptureMultiStreamFormatsArrayGetDescriptionString(void *a1)
{
  v2 = [MEMORY[0x1E696AD60] string];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(a1);
        }

        [v2 appendFormat:@"\t%i: %@\n", v5, FigCaptureMultiStreamFormatGetDescriptionString(*(*(&v10 + 1) + 8 * v7))];
        v5 = (v5 + 1);
        ++v7;
      }

      while (v4 != v7);
      v4 = [a1 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v4);
  }

  return v2;
}

uint64_t noiseReductionGetAlgorithmFromTuningOptions(CFDictionaryRef theDict)
{
  result = 1;
  valuePtr = 1;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"NoiseReductionMethod");
    if (Value && (v4 = Value, v5 = CFGetTypeID(Value), v5 == CFNumberGetTypeID()))
    {
      CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr);
      return valuePtr;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void *noiseReductionContextCreateWithOptions(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v6 = malloc_type_malloc(0x40uLL, 0x10A0040916CA4BBuLL);
  if (v6)
  {
    AlgorithmFromTuningOptions = noiseReductionGetAlgorithmFromTuningOptions(a3);
    *v6 = -348055553;
    if ((AlgorithmFromTuningOptions - 2) < 2)
    {
      v6[2] = multiBandNoiseReductionContextCreate;
      v6[3] = multiBandNoiseReductionContextDestroy;
      v6[4] = multiBandNoiseReductionReleaseBuffers;
      v6[5] = 0;
      v6[6] = multiBandNoiseReductionWithTuningOptions;
      v6[7] = multiBandPyramidFusion;
      v8 = multiBandNoiseReductionContextCreate(a1, a2, a3);
    }

    else
    {
      if (!AlgorithmFromTuningOptions)
      {
        v6[7] = 0;
        *(v6 + 5) = 0u;
        *(v6 + 3) = 0u;
        *(v6 + 1) = 0u;
        return v6;
      }

      if (AlgorithmFromTuningOptions != 1)
      {
        free(v6);
        return 0;
      }

      v6[2] = powerBlurNoiseReductionContextCreate;
      v6[3] = powerBlurNoiseReductionContextDestroy;
      v6[4] = powerBlurNoiseReductionReleaseBuffers;
      v6[6] = 0;
      v6[7] = 0;
      v6[5] = powerBlurNoiseReductionWithTuningOptions;
      v8 = (powerBlurNoiseReductionContextCreate)(a1, a2, a3);
    }

    v6[1] = v8;
  }

  return v6;
}

void noiseReductionContextDestroy(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      v2(a1[1]);
    }

    free(a1);
  }
}

uint64_t noiseReductionReleaseBuffers(uint64_t result)
{
  if (result && *result == -348055553)
  {
    v1 = *(result + 32);
    if (v1)
    {
      return v1(*(result + 8));
    }
  }

  return result;
}

uint64_t noiseReductionWithTuningOptions(uint64_t a1, CMSampleBufferRef sbuf, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v10 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (a1)
  {
    if (*a1 == -348055553)
    {
      v11 = *(a1 + 40);
      if (v11)
      {
        v12 = v11(*(a1 + 8), sbuf, a3, a4, a5);
        if (v12)
        {
          noiseReductionWithTuningOptions_cold_2();
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      noiseReductionWithTuningOptions_cold_1(&v14);
      v12 = v14;
    }
  }

  else
  {
    v12 = powerBlurNoiseReductionWithTuningOptions(0, sbuf, a3, a4, a5);
    if (v12)
    {
      noiseReductionWithTuningOptions_cold_3();
    }
  }

  if (*v10 == 1)
  {
    kdebug_trace();
  }

  return v12;
}

uint64_t noiseReduction(CMSampleBufferRef sbuf, char a2, int a3)
{
  v6 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v7 = powerBlurNoiseReduction(sbuf, a2, a3);
  if (*v6 == 1)
  {
    kdebug_trace();
  }

  return v7;
}

uint64_t noiseReductionInOutWithTuningOptions(uint64_t a1, opaqueCMSampleBuffer *a2, opaqueCMSampleBuffer *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (!a1)
  {
    noiseReductionInOutWithTuningOptions_cold_7(&pixelTransferSessionOut);
    goto LABEL_32;
  }

  if (!a2)
  {
    noiseReductionInOutWithTuningOptions_cold_6(&pixelTransferSessionOut);
    goto LABEL_32;
  }

  if (!a3)
  {
    noiseReductionInOutWithTuningOptions_cold_5(&pixelTransferSessionOut);
    goto LABEL_32;
  }

  if (a2 == a3)
  {
    noiseReductionInOutWithTuningOptions_cold_4(&pixelTransferSessionOut);
    goto LABEL_32;
  }

  if (*a1 != -348055553)
  {
    noiseReductionInOutWithTuningOptions_cold_1(&pixelTransferSessionOut);
LABEL_32:
    v12 = pixelTransferSessionOut;
    if (!pixelTransferSessionOut)
    {
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 48);
  if (*(a1 + 40))
  {
    if (!v11)
    {
      fig_log_get_emitter();
      v12 = FigSignalErrorAtGM();
      if (v12)
      {
        goto LABEL_11;
      }

LABEL_23:
      v18 = 0;
      goto LABEL_24;
    }
  }

  else if (!v11)
  {
    noiseReductionInOutWithTuningOptions_cold_3();
    v12 = -12780;
    goto LABEL_11;
  }

  v19 = v11(*(a1 + 8), a2, a3, a6);
  if (!v19)
  {
    goto LABEL_23;
  }

  v12 = v19;
  noiseReductionInOutWithTuningOptions_cold_2();
LABEL_11:
  pixelTransferSessionOut = 0;
  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  if (!ImageBuffer)
  {
    noiseReductionInOutWithTuningOptions_cold_11();
LABEL_40:
    v17 = 0;
    goto LABEL_16;
  }

  v14 = ImageBuffer;
  v15 = CMSampleBufferGetImageBuffer(a3);
  if (!v15)
  {
    noiseReductionInOutWithTuningOptions_cold_10();
    goto LABEL_40;
  }

  v16 = v15;
  if (VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &pixelTransferSessionOut))
  {
    noiseReductionInOutWithTuningOptions_cold_8();
    goto LABEL_40;
  }

  if (VTPixelTransferSessionTransferImage(pixelTransferSessionOut, v14, v16))
  {
    noiseReductionInOutWithTuningOptions_cold_9();
    goto LABEL_40;
  }

  CMPropagateAttachments(a2, a3);
  v17 = 1;
LABEL_16:
  if (pixelTransferSessionOut)
  {
    CFRelease(pixelTransferSessionOut);
  }

  if (v17)
  {
    v18 = v12;
  }

  else
  {
    v18 = 4294954513;
  }

LABEL_24:
  if (*v10 == 1)
  {
    kdebug_trace();
  }

  return v18;
}

uint64_t noiseReductionPyramidLayers(uint64_t a1)
{
  if (a1)
  {
    if (*a1 == -348055553)
    {
      if (*(a1 + 48))
      {
        v1 = *(a1 + 8);

        return multiBandNoiseReductionPyramidLayers(v1);
      }

      else
      {
        noiseReductionPyramidLayers_cold_2();
        return 4294954516;
      }
    }

    else
    {
      noiseReductionPyramidLayers_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    noiseReductionPyramidLayers_cold_3(&v4);
    return v4;
  }
}

uint64_t noiseReductionWithPyramid(uint64_t a1, opaqueCMSampleBuffer *a2, CVPixelBufferRef *a3, int a4, const __CFDictionary *a5)
{
  v10 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (!a1)
  {
    noiseReductionWithPyramid_cold_7(&v15);
LABEL_19:
    v13 = v15;
    goto LABEL_15;
  }

  if (!a2)
  {
    noiseReductionWithPyramid_cold_6(&v15);
    goto LABEL_19;
  }

  if (a4 == 1)
  {
    goto LABEL_8;
  }

  if (noiseReductionPyramidLayers(a1) != a4)
  {
    noiseReductionWithPyramid_cold_1();
    goto LABEL_25;
  }

  if (a4 >= 1)
  {
LABEL_8:
    v11 = a4;
    v12 = a3;
    while (*v12)
    {
      ++v12;
      if (!--v11)
      {
        goto LABEL_11;
      }
    }

    noiseReductionWithPyramid_cold_5(&v15);
    goto LABEL_19;
  }

LABEL_11:
  if (*a1 != -348055553)
  {
    noiseReductionWithPyramid_cold_2(&v15);
    goto LABEL_19;
  }

  if (!*(a1 + 48))
  {
    noiseReductionWithPyramid_cold_4();
LABEL_25:
    v13 = 4294954516;
    goto LABEL_15;
  }

  v13 = multiBandNoiseReductionWithPyramid(*(a1 + 8), a2, a3, a4, a5);
  if (v13)
  {
    noiseReductionWithPyramid_cold_3();
  }

LABEL_15:
  if (*v10 == 1)
  {
    kdebug_trace();
  }

  return v13;
}

uint64_t noiseReductionPyramidFusionMaxBuffers(uint64_t a1)
{
  if (a1)
  {
    if (*a1 == -348055553)
    {
      if (*(a1 + 48))
      {
        v1 = *(a1 + 8);

        return multiBandNoiseReductionPyramidFusionMaxBuffers(v1);
      }

      else
      {
        noiseReductionPyramidFusionMaxBuffers_cold_2();
        return 4294954516;
      }
    }

    else
    {
      noiseReductionPyramidFusionMaxBuffers_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    noiseReductionPyramidFusionMaxBuffers_cold_3(&v4);
    return v4;
  }
}

uint64_t noiseReductionPyramidFusion(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (!a1)
  {
    noiseReductionPyramidFusion_cold_8(&v20);
LABEL_20:
    v18 = v20;
    goto LABEL_15;
  }

  if (!a5)
  {
    noiseReductionPyramidFusion_cold_7(&v20);
    goto LABEL_20;
  }

  if (noiseReductionPyramidFusionMaxBuffers(a1) < a4)
  {
    noiseReductionPyramidFusion_cold_6(&v20);
    goto LABEL_20;
  }

  if (a4 >= 1)
  {
    v15 = a4;
    v16 = a2;
    while (1)
    {
      if (!*v16)
      {
        noiseReductionPyramidFusion_cold_5(&v20);
        goto LABEL_20;
      }

      if (**v16 == a5)
      {
        break;
      }

      ++v16;
      if (!--v15)
      {
        goto LABEL_11;
      }
    }

    noiseReductionPyramidFusion_cold_4(&v20);
    goto LABEL_20;
  }

LABEL_11:
  if (*a1 != -348055553)
  {
    noiseReductionPyramidFusion_cold_1(&v20);
    goto LABEL_20;
  }

  v17 = *(a1 + 56);
  if (v17)
  {
    v18 = v17(*(a1 + 8), a2, a3, a4, a5, a6, a7);
    if (v18)
    {
      noiseReductionPyramidFusion_cold_2();
    }
  }

  else
  {
    noiseReductionPyramidFusion_cold_3();
    v18 = 4294954516;
  }

LABEL_15:
  if (*v14 == 1)
  {
    kdebug_trace();
  }

  return v18;
}

uint64_t powerBlurNoiseReductionWithTuningOptions(uint64_t a1, CMSampleBufferRef sbuf, char a3, int a4, const __CFDictionary *a5)
{
  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  valuePtr = 0;
  v11 = *(MEMORY[0x1E695F058] + 16);
  rect.origin = *MEMORY[0x1E695F058];
  rect.size = v11;
  v88 = 0;
  if (!ImageBuffer)
  {
    powerBlurNoiseReductionWithTuningOptions_cold_1(&v83);
    return v83;
  }

  v12 = ImageBuffer;
  if ((CVPixelBufferGetPixelFormatType(ImageBuffer) | 0x10) != 0x34323076 || (CVPixelBufferGetWidthOfPlane(v12, 1uLL) & 7) != 0 || (BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v12, 1uLL), (BytesPerRowOfPlane & 7) != 0))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  v72 = BytesPerRowOfPlane;
  v15 = CMGetAttachment(sbuf, *off_1E798A3C8, 0);
  v16 = v15;
  v87 = 1017370378;
  v85 = 256;
  v86 = 256;
  v84 = 256;
  if (v15)
  {
    Value = CFDictionaryGetValue(v15, *off_1E798B660);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    }
  }

  v73 = a3;
  if (!a5)
  {
    v18 = 0;
    dict = 0;
    if (!v16)
    {
      goto LABEL_31;
    }

    goto LABEL_23;
  }

  v18 = CFDictionaryGetValue(a5, @"ChromaNoiseReductionTuningParameters");
  dict = CFDictionaryGetValue(a5, @"CropRect");
  v19 = CFDictionaryGetValue(a5, @"ClientSpecifiedMetadata");
  v20 = CFDictionaryGetValue(a5, @"Method");
  if (v20)
  {
    CFNumberGetValue(v20, kCFNumberIntType, &v88 + 4);
  }

  v21 = CFDictionaryGetValue(a5, @"Synchronization");
  if (v21)
  {
    CFNumberGetValue(v21, kCFNumberIntType, &v88);
  }

  if (v19)
  {
    v16 = v19;
  }

  if (v16)
  {
LABEL_23:
    v22 = CFDictionaryGetValue(v16, *off_1E798B2A8);
    if (v22)
    {
      CFNumberGetValue(v22, kCFNumberFloatType, &v87);
    }

    v23 = CFDictionaryGetValue(v16, *off_1E798B0B8);
    if (v23)
    {
      CFNumberGetValue(v23, kCFNumberIntType, &v86);
    }

    v24 = CFDictionaryGetValue(v16, *off_1E798B7D0);
    if (v24)
    {
      CFNumberGetValue(v24, kCFNumberIntType, &v85);
    }

    v25 = CFDictionaryGetValue(v16, *off_1E798B7B8);
    if (v25)
    {
      CFNumberGetValue(v25, kCFNumberIntType, &v84);
    }
  }

LABEL_31:
  v27 = v85;
  v26 = v86;
  v28 = v84;
  v29 = powerBlurNoiseReductionWithTuningOptions_ncpu;
  if (!powerBlurNoiseReductionWithTuningOptions_ncpu)
  {
    v83 = 4;
    sysctlbyname("hw.ncpu", &powerBlurNoiseReductionWithTuningOptions_ncpu, &v83, 0, 0);
    v29 = powerBlurNoiseReductionWithTuningOptions_ncpu;
  }

  v30 = v29 > 1;
  v31 = 2 * v29;
  if ((a4 & v30) != 0)
  {
    v32 = v31;
  }

  else
  {
    v32 = 1;
  }

  v71 = v32;
  if (v18)
  {
    LODWORD(v83) = 1065353216;
    v92 = 1.0;
    v91 = 0;
    FigCFDictionaryGetInt32IfPresent();
    v33 = HIDWORD(v91);
    FigCFDictionaryGetInt32IfPresent();
    v34 = v91;
    if (FigCFDictionaryGetFloat32IfPresent())
    {
      FigCFDictionaryGetFloat32IfPresent();
      v33 = ((v92 * v33) / *&v83);
    }

    v35 = v28;
  }

  else
  {
    v36 = &unk_1AD0463A0;
    v37 = -3;
    while (*(v36 - 2) != valuePtr)
    {
      v36 += 3;
      v37 += 3;
      if (v37 >= 0xC)
      {
        v35 = v28;
        v33 = 20;
        v34 = 30;
        goto LABEL_45;
      }
    }

    v35 = v28;
    v34 = *(v36 - 1);
    v33 = *v36;
  }

LABEL_45:
  CFPreferenceNumberWithDefault = powerBlurNoiseReductionWithTuningOptions_enable_camera_tuning;
  if (powerBlurNoiseReductionWithTuningOptions_enable_camera_tuning == -1)
  {
    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
    powerBlurNoiseReductionWithTuningOptions_enable_camera_tuning = CFPreferenceNumberWithDefault;
  }

  v39 = v27 * v26 * v35;
  v40 = powerBlurNoiseReductionWithTuningOptions_parameterOverride;
  v41 = powerBlurNoiseReductionWithTuningOptions_parameterOverride != -1 && CFPreferenceNumberWithDefault == 0;
  v42 = ispToneCurve + 892;
  if (!v41)
  {
    if (CFPreferenceNumberWithDefault)
    {
      CFPreferencesSynchronize(@"com.apple.coremedia", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    }

    powerBlurNoiseReductionWithTuningOptions_slopeOverride = FigGetCFPreferenceNumberWithDefault();
    v43 = FigGetCFPreferenceNumberWithDefault();
    v42 = &ispToneCurve[223];
    powerBlurNoiseReductionWithTuningOptions_biasOverride = v43;
    v40 = (powerBlurNoiseReductionWithTuningOptions_slopeOverride & v43) >= 0;
    powerBlurNoiseReductionWithTuningOptions_parameterOverride = v40;
  }

  v44 = vcvts_n_f32_s32(v39, 0x18uLL);
  if (v40)
  {
    if (powerBlurNoiseReductionWithTuningOptions_slopeOverride >= 0)
    {
      v33 = powerBlurNoiseReductionWithTuningOptions_slopeOverride;
    }

    if (*(v42 + 413) >= 0)
    {
      v34 = *(v42 + 413);
    }
  }

  v45 = (v34 + (v33 * v44)) * 0.1;
  v46 = v44 <= 2.0;
  if (a1)
  {
    v47 = *(a1 + 8);
    if (v47 == 17)
    {
      v46 = 0;
    }

    else if (v47 == 9)
    {
      v46 = 1;
    }
  }

  if (v45 > 40.0)
  {
    v45 = 40.0;
  }

  if (v45 >= 4.0)
  {
    v48 = v45;
  }

  else
  {
    v48 = 4.0;
  }

  if (powerBlurNoiseReductionWithTuningOptions_enableBinOutput == -1)
  {
    powerBlurNoiseReductionWithTuningOptions_enableBinOutput = FigGetCFPreferenceNumberWithDefault();
  }

  if (dict && CGRectMakeWithDictionaryRepresentation(dict, &rect))
  {
    Width = CVPixelBufferGetWidth(v12);
    Height = CVPixelBufferGetHeight(v12);
    if (CGRectIsEmpty(rect))
    {
      goto LABEL_81;
    }

    rect = CGRectIntegral(rect);
    v94.origin.x = 0.0;
    v94.origin.y = 0.0;
    v94.size.width = Width;
    v94.size.height = Height;
    v95 = CGRectIntersection(rect, v94);
    if (!CGRectEqualToRect(rect, v95))
    {
      goto LABEL_81;
    }

    v66 = rect.size.width + 1;
    if ((v66 & 0xE) != 0)
    {
      goto LABEL_81;
    }

    v67 = vmovn_s64(vcvtq_s64_f64(rect.origin));
    if ((v67.i8[0] & 0xE) != 0)
    {
      goto LABEL_81;
    }

    WidthOfPlane = v66 >> 1;
    HeightOfPlane = (rect.size.height + 1) >> 1;
    v54 = vshr_n_s32(v67, 1uLL);
    v53 = 1;
  }

  else
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(v12, 1uLL);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(v12, 1uLL);
    v53 = 0;
    v54 = 0;
  }

  dicta = v54;
  v55.i64[0] = v54.i32[0];
  v55.i64[1] = v54.i32[1];
  rect.origin = vcvtq_f64_s64(v55);
  rect.size.width = WidthOfPlane;
  rect.size.height = HeightOfPlane;
  if (a1 && *(a1 + 4) && (v73 & 1) == 0 && (v88 & 0xFFFFFFFD00000000) == 0)
  {
    result = powerBlurNoiseReductionGPU(a1 + 16, v12, &rect, v46, v88, v48);
    if (!result)
    {
      return result;
    }

    if (HIDWORD(v88) == 2)
    {
LABEL_81:
      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }

    if (result == -2)
    {
      powerBlurNoiseReductionGPUContextDestroy(a1 + 16);
      *(a1 + 4) = 0;
    }
  }

  if (CVPixelBufferLockBaseAddress(v12, 0))
  {
    goto LABEL_81;
  }

  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v12, 1uLL);
  if (v53)
  {
    v57 = BaseAddressOfPlane + 2 * dicta.i32[0] + v72 * dicta.i32[1];
  }

  else
  {
    v57 = BaseAddressOfPlane;
  }

  v58 = CVPixelBufferGetBytesPerRowOfPlane(v12, 0);
  v59 = CVPixelBufferGetBaseAddressOfPlane(v12, 0);
  v60 = CVPixelBufferGetWidthOfPlane(v12, 0);
  v61 = CVPixelBufferGetHeightOfPlane(v12, 0);
  if (v71 < 2)
  {
    if (v46)
    {
      chromapowerblur11x11(v57, v72, v57, v72, WidthOfPlane, HeightOfPlane, 0, HeightOfPlane, v48);
    }

    else
    {
      chromapowerblur17x17(v57, v72, v57, v72, WidthOfPlane, HeightOfPlane, 0, HeightOfPlane, v48);
    }
  }

  else
  {
    dictb = v58;
    v69 = v61;
    v70 = v60;
    v68 = FigGetCFPreferenceNumberWithDefault();
    v62 = FigGetCFPreferenceNumberWithDefault();
    if (v62 > 0)
    {
      v63 = 1;
    }

    else
    {
      v63 = v73;
    }

    v64 = v71 << v63;
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __powerBlurNoiseReductionWithTuningOptions_block_invoke;
    block[3] = &__block_descriptor_tmp;
    v78 = v71;
    v82 = v46;
    block[4] = v57;
    block[5] = v72;
    block[6] = WidthOfPlane;
    block[7] = HeightOfPlane;
    v79 = v48;
    block[8] = v59;
    block[9] = dictb;
    block[10] = v70;
    block[11] = v69;
    v80 = v62;
    v81 = v68;
    dispatch_apply(v64, global_queue, block);
  }

  CVPixelBufferUnlockBaseAddress(v12, 0);
  return 0;
}

void __powerBlurNoiseReductionWithTuningOptions_block_invoke()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = *(v0 + 96);
  if (v1 >= v2)
  {
    v12 = *(v0 + 64);
    v13 = *(v0 + 72);
    v14 = *(v0 + 80);
    v15 = *(v0 + 88);
    v16 = v15 * (v1 - v2);
    v17 = (v0 + 104);
    v18 = vld1q_dup_s8(v17);
    v19 = v16 / v2;
    v20 = (v0 + 108);
    v21 = vld1q_dup_s16(v20);
    v22 = v14 >> 4;
    v174 = v21;
    v175 = v18;
    v173 = (v15 + v16) / v2;
    if (16 * v14 > 0x8000)
    {
      v24 = malloc_type_malloc(16 * v14, 0x8E804C62uLL);
      v21 = v174;
      v18 = v175;
      v23 = v24;
    }

    else
    {
      v23 = __src;
    }

    v25 = v19 + 3;
    do
    {
      if (v25 < 0)
      {
        memcpy(&v23[v14 * (v25 & 0xF)], v23, v14);
        v21 = v174;
        v18 = v175;
      }

      else
      {
        v26 = (v12 + v13 * v25);
        v27 = &v23[v14 * (v25 & 0xF)];
        v28 = *v26;
        v29 = vdupq_lane_s8(*v26->i8, 0);
        if (v22 < 2)
        {
          v31 = v29;
        }

        else
        {
          v30 = v22 - 1;
          do
          {
            v31 = v28;
            v32 = *&vmulq_s16(vpaddlq_u8(v28), v21) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
            v33 = v26[1];
            ++v26;
            v28 = v33;
            v34 = vminq_u8(vorrq_s8(vrev16q_s8(v32), v32), v18);
            v35 = vextq_s8(v29, v31, 0xCuLL);
            v36 = vbslq_s8(vcgtq_u8(vabdq_u8(v35, v31), v34), v31, v35);
            v37 = vextq_s8(v29, v31, 0xDuLL);
            v38 = vbslq_s8(vcgtq_u8(vabdq_u8(v37, v31), v34), v31, v37);
            v39 = vaddl_u8(*v38.i8, *v36.i8);
            v40 = vaddl_high_u8(v38, v36);
            v41 = vextq_s8(v29, v31, 0xEuLL);
            v42 = vbslq_s8(vcgtq_u8(vabdq_u8(v41, v31), v34), v31, v41);
            v43 = vaddw_high_u8(v40, v42);
            v44 = vextq_s8(v29, v31, 0xFuLL);
            v45 = vbslq_s8(vcgtq_u8(vabdq_u8(v44, v31), v34), v31, v44);
            v46 = vaddw_u8(vaddw_u8(v39, *v42.i8), *v45.i8);
            v47 = vaddw_high_u8(v43, v45);
            v48 = vextq_s8(v31, v33, 1uLL);
            v49 = vbslq_s8(vcgtq_u8(vabdq_u8(v48, v31), v34), v31, v48);
            v50 = vaddw_u8(v46, *v49.i8);
            v51 = vaddw_high_u8(v47, v49);
            v52 = vextq_s8(v31, v33, 2uLL);
            v53 = vbslq_s8(vcgtq_u8(vabdq_u8(v52, v31), v34), v31, v52);
            v54 = vaddw_u8(v50, *v53.i8);
            v55 = vaddw_high_u8(v51, v53);
            v56 = vextq_s8(v31, v33, 3uLL);
            v57 = vbslq_s8(vcgtq_u8(vabdq_u8(v56, v31), v34), v31, v56);
            v58 = vaddw_u8(v54, *v57.i8);
            v59 = vaddw_high_u8(v55, v57);
            v60 = vextq_s8(v31, v33, 4uLL);
            v61 = vbslq_s8(vcgtq_u8(vabdq_u8(v60, v31), v34), v31, v60);
            *v27++ = vrshrn_high_n_s16(vrshrn_n_s16(vaddw_u8(v58, *v61.i8), 3uLL), vaddw_high_u8(v59, v61), 3uLL);
            v29 = v31;
            --v30;
          }

          while (v30);
        }

        v62 = *&vmulq_s16(vpaddlq_u8(v28), v21) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
        v63 = vminq_u8(vorrq_s8(vrev16q_s8(v62), v62), v18);
        v64 = vdupq_laneq_s8(v28, 15);
        v65 = vextq_s8(v31, v28, 0xCuLL);
        v66 = vbslq_s8(vcgtq_u8(vabdq_u8(v65, v28), v63), v28, v65);
        v67 = vextq_s8(v31, v28, 0xDuLL);
        v68 = vbslq_s8(vcgtq_u8(vabdq_u8(v67, v28), v63), v28, v67);
        v69 = vaddl_u8(*v68.i8, *v66.i8);
        v70 = vaddl_high_u8(v68, v66);
        v71 = vextq_s8(v31, v28, 0xEuLL);
        v72 = vbslq_s8(vcgtq_u8(vabdq_u8(v71, v28), v63), v28, v71);
        v73 = vaddw_high_u8(v70, v72);
        v74 = vextq_s8(v31, v28, 0xFuLL);
        v75 = vbslq_s8(vcgtq_u8(vabdq_u8(v74, v28), v63), v28, v74);
        v76 = vaddw_u8(vaddw_u8(v69, *v72.i8), *v75.i8);
        v77 = vaddw_high_u8(v73, v75);
        v78 = vextq_s8(v28, v64, 1uLL);
        v79 = vbslq_s8(vcgtq_u8(vabdq_u8(v78, v28), v63), v28, v78);
        v80 = vaddw_u8(v76, *v79.i8);
        v81 = vaddw_high_u8(v77, v79);
        v82 = vextq_s8(v28, v64, 2uLL);
        v83 = vbslq_s8(vcgtq_u8(vabdq_u8(v82, v28), v63), v28, v82);
        v84 = vaddw_u8(v80, *v83.i8);
        v85 = vaddw_high_u8(v81, v83);
        v86 = vextq_s8(v28, v64, 3uLL);
        v87 = vbslq_s8(vcgtq_u8(vabdq_u8(v86, v28), v63), v28, v86);
        v88 = vextq_s8(v28, v64, 4uLL);
        v89 = vbslq_s8(vcgtq_u8(vabdq_u8(v88, v28), v63), v28, v88);
        *v27 = vrshrn_high_n_s16(vrshrn_n_s16(vaddw_u8(vaddw_u8(v84, *v87.i8), *v89.i8), 3uLL), vaddw_high_u8(vaddw_high_u8(v85, v87), v89), 3uLL);
      }

      v90 = v25-- <= v19 - 4;
    }

    while (!v90);
    if (v19 < v173)
    {
      v91 = v19 + 4;
      do
      {
        if (v91 >= v15)
        {
          memcpy(&v23[(v91 & 0xF) * v14], &v23[((v15 - 1) & 0xF) * v14], v14);
          v21 = v174;
          v18 = v175;
        }

        else
        {
          v92 = (v12 + v91 * v13);
          v93 = &v23[(v91 & 0xF) * v14];
          v94 = *v92;
          v95 = vdupq_lane_s8(*v92->i8, 0);
          if (v22 < 2)
          {
            v97 = v95;
          }

          else
          {
            v96 = v22 - 1;
            do
            {
              v97 = v94;
              v98 = *&vmulq_s16(vpaddlq_u8(v94), v21) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
              v99 = v92[1];
              ++v92;
              v94 = v99;
              v100 = vminq_u8(vorrq_s8(vrev16q_s8(v98), v98), v18);
              v101 = vextq_s8(v95, v97, 0xCuLL);
              v102 = vbslq_s8(vcgtq_u8(vabdq_u8(v101, v97), v100), v97, v101);
              v103 = vextq_s8(v95, v97, 0xDuLL);
              v104 = vbslq_s8(vcgtq_u8(vabdq_u8(v103, v97), v100), v97, v103);
              v105 = vaddl_u8(*v104.i8, *v102.i8);
              v106 = vaddl_high_u8(v104, v102);
              v107 = vextq_s8(v95, v97, 0xEuLL);
              v108 = vbslq_s8(vcgtq_u8(vabdq_u8(v107, v97), v100), v97, v107);
              v109 = vaddw_high_u8(v106, v108);
              v110 = vextq_s8(v95, v97, 0xFuLL);
              v111 = vbslq_s8(vcgtq_u8(vabdq_u8(v110, v97), v100), v97, v110);
              v112 = vaddw_u8(vaddw_u8(v105, *v108.i8), *v111.i8);
              v113 = vaddw_high_u8(v109, v111);
              v114 = vextq_s8(v97, v99, 1uLL);
              v115 = vbslq_s8(vcgtq_u8(vabdq_u8(v114, v97), v100), v97, v114);
              v116 = vaddw_u8(v112, *v115.i8);
              v117 = vaddw_high_u8(v113, v115);
              v118 = vextq_s8(v97, v99, 2uLL);
              v119 = vbslq_s8(vcgtq_u8(vabdq_u8(v118, v97), v100), v97, v118);
              v120 = vaddw_u8(v116, *v119.i8);
              v121 = vaddw_high_u8(v117, v119);
              v122 = vextq_s8(v97, v99, 3uLL);
              v123 = vbslq_s8(vcgtq_u8(vabdq_u8(v122, v97), v100), v97, v122);
              v124 = vaddw_u8(v120, *v123.i8);
              v125 = vaddw_high_u8(v121, v123);
              v126 = vextq_s8(v97, v99, 4uLL);
              v127 = vbslq_s8(vcgtq_u8(vabdq_u8(v126, v97), v100), v97, v126);
              *v93++ = vrshrn_high_n_s16(vrshrn_n_s16(vaddw_u8(v124, *v127.i8), 3uLL), vaddw_high_u8(v125, v127), 3uLL);
              v95 = v97;
              --v96;
            }

            while (v96);
          }

          v128 = *&vmulq_s16(vpaddlq_u8(v94), v21) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
          v129 = vminq_u8(vorrq_s8(vrev16q_s8(v128), v128), v18);
          v130 = vdupq_laneq_s8(v94, 15);
          v131 = vextq_s8(v97, v94, 0xCuLL);
          v132 = vbslq_s8(vcgtq_u8(vabdq_u8(v131, v94), v129), v94, v131);
          v133 = vextq_s8(v97, v94, 0xDuLL);
          v134 = vbslq_s8(vcgtq_u8(vabdq_u8(v133, v94), v129), v94, v133);
          v135 = vaddl_u8(*v134.i8, *v132.i8);
          v136 = vaddl_high_u8(v134, v132);
          v137 = vextq_s8(v97, v94, 0xEuLL);
          v138 = vbslq_s8(vcgtq_u8(vabdq_u8(v137, v94), v129), v94, v137);
          v139 = vaddw_high_u8(v136, v138);
          v140 = vextq_s8(v97, v94, 0xFuLL);
          v141 = vbslq_s8(vcgtq_u8(vabdq_u8(v140, v94), v129), v94, v140);
          v142 = vaddw_u8(vaddw_u8(v135, *v138.i8), *v141.i8);
          v143 = vaddw_high_u8(v139, v141);
          v144 = vextq_s8(v94, v130, 1uLL);
          v145 = vbslq_s8(vcgtq_u8(vabdq_u8(v144, v94), v129), v94, v144);
          v146 = vaddw_u8(v142, *v145.i8);
          v147 = vaddw_high_u8(v143, v145);
          v148 = vextq_s8(v94, v130, 2uLL);
          v149 = vbslq_s8(vcgtq_u8(vabdq_u8(v148, v94), v129), v94, v148);
          v150 = vaddw_u8(v146, *v149.i8);
          v151 = vaddw_high_u8(v147, v149);
          v152 = vextq_s8(v94, v130, 3uLL);
          v153 = vbslq_s8(vcgtq_u8(vabdq_u8(v152, v94), v129), v94, v152);
          v154 = vextq_s8(v94, v130, 4uLL);
          v155 = vbslq_s8(vcgtq_u8(vabdq_u8(v154, v94), v129), v94, v154);
          *v93 = vrshrn_high_n_s16(vrshrn_n_s16(vaddw_u8(vaddw_u8(v150, *v153.i8), *v155.i8), 3uLL), vaddw_high_u8(vaddw_high_u8(v151, v153), v155), 3uLL);
        }

        if (v22 >= 1)
        {
          v156 = 0;
          v157 = v91 - 4;
          v158 = (v12 + (v91 - 4) * v13);
          v159 = v23;
          do
          {
            v160 = *&v159[((v91 - 4) & 0xF) * v14];
            v161 = *&vmulq_s16(vpaddlq_u8(v160), v21) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
            v162 = vminq_u8(vorrq_s8(vrev16q_s8(v161), v161), v18);
            v163 = vshll_n_u8(*v158, 3uLL);
            v164 = vshll_high_n_u8(*v158->i8, 3uLL);
            v165 = 1;
            v166 = 4;
            do
            {
              v167 = *&v159[v14 * ((v157 - v165) & 0xF)];
              v168 = vbslq_s8(vcgtq_u8(vabdq_u8(v167, v160), v162), v160, v167);
              v169 = vaddw_u8(v163, *v168.i8);
              v170 = vaddw_high_u8(v164, v168);
              v171 = *&v159[v14 * ((v165 + v157) & 0xF)];
              v172 = vbslq_s8(vcgtq_u8(vabdq_u8(v171, v160), v162), v160, v171);
              v163 = vaddw_u8(v169, *v172.i8);
              v164 = vaddw_high_u8(v170, v172);
              ++v165;
              --v166;
            }

            while (v166);
            *v158->i8 = vrshrn_high_n_s16(vrshrn_n_s16(v163, 4uLL), v164, 4uLL);
            v158 += 2;
            ++v156;
            v159 += 16;
          }

          while (v156 != v22);
        }

        v90 = v91++ < v173 + 3;
      }

      while (v90);
    }

    if (v23 != __src)
    {
      free(v23);
    }
  }

  else
  {
    v3 = v1;
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    v8 = v7 * v3;
    v9 = v8 / v2;
    v10 = *(v0 + 100);
    v11 = (v7 + v8) / v2;
    if (*(v0 + 112) == 1)
    {
      chromapowerblur11x11(v5, v4, v5, v4, v6, v7, v9, v11, v10);
    }

    else
    {
      chromapowerblur17x17(v5, v4, v5, v4, v6, v7, v9, v11, v10);
    }
  }
}

void chromapowerblur11x11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v9 = MEMORY[0x1EEE9AC00]();
  v12 = v11;
  v54 = v13;
  v14 = v10;
  v48 = v15;
  v49 = v16;
  v18 = v17;
  v19 = v9;
  v20 = 2 * v10;
  v51 = v21;
  if ((32 * v10) > 0x8000)
  {
    v22 = malloc_type_malloc(32 * v10, 0xC01F80BuLL);
  }

  else
  {
    v22 = __src;
  }

  v23 = v14 >> 3;
  LODWORD(v24) = v12 + 5;
  v53 = vdupq_n_s16(a9);
  do
  {
    v24 = (v24 - 1);
    if (v24 < 0)
    {
      memcpy(&v22[v20 * (v24 & 0xF)], v22, v20);
    }

    else
    {
      chromapowerblur11H((v19 + v24 * v18), &v22[v20 * (v24 & 0xF)], v14, a9);
    }
  }

  while (v24 > v12 - 5);
  if (v12 < v51)
  {
    v25 = v12;
    v26 = v12 + 5;
    v52 = v51 + 4;
    v27 = v25 + 1;
    v28 = v25 - 1;
    v50 = vdupq_n_s32(0x46FFFE00u);
    do
    {
      if (v26 >= v54)
      {
        memcpy(&v22[v20 * (v26 & 0xF)], &v22[((v54 - 1) & 0xF) * v20], v20);
      }

      else
      {
        chromapowerblur11H((v19 + v26 * v18), &v22[v20 * (v26 & 0xF)], v14, a9);
      }

      v29.i64[0] = 0x1000100010001;
      v29.i64[1] = 0x1000100010001;
      if (v23 >= 1)
      {
        v30 = 0;
        v31 = (v48 + (v26 - 5) * v49);
        v32 = v22;
        do
        {
          v33 = 0;
          v34 = *&v32[v20 * ((v26 - 5) & 0xF)];
          v35 = vmovl_u8(*v34.i8);
          v36 = vmovl_high_u8(v34);
          v37.i64[0] = 0x1000100010001;
          v37.i64[1] = 0x1000100010001;
          v38 = v27;
          do
          {
            v39 = *&v32[v20 * ((v28 + v33) & 0xF)];
            v40 = vcgeq_u16(v53, vpaddlq_u8(vabdq_u8(v39, v34)));
            v41 = vandq_s8(v39, v40);
            v42 = vaddw_u8(v35, *v41.i8);
            v43 = *&v32[v20 * (v38 & 0xF)];
            v44 = vaddw_high_u8(v36, v41);
            v45 = vcgeq_u16(v53, vpaddlq_u8(vabdq_u8(v43, v34)));
            v46 = vandq_s8(v43, v45);
            v37 = vsubq_s16(vsubq_s16(v37, v40), v45);
            v35 = vaddw_u8(v42, *v46.i8);
            v36 = vaddw_high_u8(v44, v46);
            --v33;
            ++v38;
          }

          while (v33 != -5);
          *v31++ = vqmovn_high_u16(vqmovn_u16(vqrdmulhq_s16(v35, vmulq_s32(vcvtq_u32_f32(vmulq_f32(vrecpeq_f32(vcvtq_f32_u32(vmovl_u16(*v37.i8))), v50)), v29))), vqrdmulhq_s16(v36, vmulq_s32(vcvtq_u32_f32(vmulq_f32(vrecpeq_f32(vcvtq_f32_u32(vmovl_high_u16(v37))), v50)), v29)));
          ++v30;
          v32 += 16;
        }

        while (v30 != v23);
      }

      ++v27;
      ++v28;
    }

    while (v26++ < v52);
  }

  if (v22 != __src)
  {
    free(v22);
  }
}

void chromapowerblur17x17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v9 = MEMORY[0x1EEE9AC00]();
  v12 = v11;
  v54 = v13;
  v14 = v10;
  v48 = v15;
  v49 = v16;
  v18 = v17;
  v19 = v9;
  v20 = 2 * v10;
  v51 = v21;
  if ((v10 << 6) > 0x10000)
  {
    v22 = malloc_type_malloc(v10 << 6, 0x33F87A67uLL);
  }

  else
  {
    v22 = __src;
  }

  v23 = v14 >> 3;
  LODWORD(v24) = v12 + 8;
  v53 = vdupq_n_s16(a9);
  do
  {
    v24 = (v24 - 1);
    if (v24 < 0)
    {
      memcpy(&v22[v20 * (v24 & 0x1F)], v22, v20);
    }

    else
    {
      chromapowerblur17H((v19 + v24 * v18), &v22[v20 * (v24 & 0x1F)], v14, a9);
    }
  }

  while (v24 > v12 - 8);
  if (v12 < v51)
  {
    v25 = v12;
    v26 = v12 + 8;
    v52 = v51 + 7;
    v27 = v25 + 1;
    v28 = v25 - 1;
    v50 = vdupq_n_s32(0x46FFFE00u);
    do
    {
      if (v26 >= v54)
      {
        memcpy(&v22[v20 * (v26 & 0x1F)], &v22[((v54 - 1) & 0x1F) * v20], v20);
      }

      else
      {
        chromapowerblur17H((v19 + v26 * v18), &v22[v20 * (v26 & 0x1F)], v14, a9);
      }

      v29.i64[0] = 0x1000100010001;
      v29.i64[1] = 0x1000100010001;
      if (v23 >= 1)
      {
        v30 = 0;
        v31 = (v48 + (v26 - 8) * v49);
        v32 = v22;
        do
        {
          v33 = 0;
          v34 = *&v32[v20 * ((v26 - 8) & 0x1F)];
          v35 = vmovl_u8(*v34.i8);
          v36 = vmovl_high_u8(v34);
          v37.i64[0] = 0x1000100010001;
          v37.i64[1] = 0x1000100010001;
          v38 = v28;
          do
          {
            v39 = *&v32[v20 * (v38 & 0x1F)];
            v40 = vcgeq_u16(v53, vpaddlq_u8(vabdq_u8(v39, v34)));
            v41 = vandq_s8(v39, v40);
            v42 = vaddw_u8(v35, *v41.i8);
            v43 = *&v32[v20 * ((v27 + v33) & 0x1F)];
            v44 = vaddw_high_u8(v36, v41);
            v45 = vcgeq_u16(v53, vpaddlq_u8(vabdq_u8(v43, v34)));
            v46 = vandq_s8(v43, v45);
            v37 = vsubq_s16(vsubq_s16(v37, v40), v45);
            v35 = vaddw_u8(v42, *v46.i8);
            v36 = vaddw_high_u8(v44, v46);
            ++v33;
            --v38;
          }

          while (v33 != 8);
          *v31++ = vqmovn_high_u16(vqmovn_u16(vqrdmulhq_s16(v35, vmulq_s32(vcvtq_u32_f32(vmulq_f32(vrecpeq_f32(vcvtq_f32_u32(vmovl_u16(*v37.i8))), v50)), v29))), vqrdmulhq_s16(v36, vmulq_s32(vcvtq_u32_f32(vmulq_f32(vrecpeq_f32(vcvtq_f32_u32(vmovl_high_u16(v37))), v50)), v29)));
          ++v30;
          v32 += 16;
        }

        while (v30 != v23);
      }

      ++v27;
      ++v28;
    }

    while (v26++ < v52);
  }

  if (v22 != __src)
  {
    free(v22);
  }
}

char *powerBlurNoiseReductionContextCreate(int a1, int a2)
{
  v4 = malloc_type_malloc(0xB8uLL, 0x10A0040E2CBC39CuLL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 40) = 0u;
    *(v4 + 168) = 0u;
    *(v4 + 152) = 0u;
    *(v4 + 136) = 0u;
    *(v4 + 120) = 0u;
    *(v4 + 104) = 0u;
    *(v4 + 88) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 8) = 0u;
    *(v4 + 10) = a2;
    *v4 = 0x172482717;
    *(v4 + 1) = FigGetCFPreferenceNumberWithDefault();
    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
    if (CFPreferenceNumberWithDefault == 9)
    {
      v7 = 9;
    }

    else
    {
      v7 = 0;
    }

    if (CFPreferenceNumberWithDefault == 17)
    {
      v7 = 17;
    }

    *(v5 + 2) = v7;
    *(v5 + 17) = FigGetCFPreferenceNumberWithDefault();
    *(v5 + 18) = FigGetCFPreferenceNumberWithDefault();
    *(v5 + 19) = FigGetCFPreferenceNumberWithDefault();
    if (*(v5 + 1))
    {
      powerBlurNoiseReductionGPUContextInit(a1, v5 + 2);
    }
  }

  return v5;
}

void powerBlurNoiseReductionContextDestroy(_DWORD *a1)
{
  if (a1 && *a1 == 1917331223)
  {
    if (a1[1])
    {
      powerBlurNoiseReductionGPUContextDestroy((a1 + 4));
    }

    *(a1 + 22) = 0;
    *(a1 + 9) = 0u;
    *(a1 + 10) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;

    free(a1);
  }
}

_DWORD *powerBlurNoiseReductionReleaseBuffers(_DWORD *result)
{
  if (result && *result == 1917331223)
  {
    if (result[1])
    {
      return powerBlurNoiseReductionGPUReleaseBuffers((result + 4));
    }
  }

  return result;
}

uint16x8_t chromapowerblur11H(int16x4_t *a1, uint8x16_t *a2, int a3, unsigned int a4)
{
  v4 = vdupq_n_s16(a4);
  v5 = *a1->i8;
  v6 = vdupq_lane_s16(*a1, 0);
  v7 = (a3 >> 3) - 1;
  if (a3 >> 3 <= 1)
  {
    v46 = vextq_s8(v6, v5, 6uLL);
    v50 = vextq_s8(v6, v5, 8uLL);
    v54 = vextq_s8(v6, v5, 0xAuLL);
  }

  else
  {
    v8 = &a1[2];
    v9.i64[0] = 0x2000200020002;
    v9.i64[1] = 0x2000200020002;
    v10 = vdupq_n_s32(0x46FFFE00u);
    v11.i64[0] = 0x1000100010001;
    v11.i64[1] = 0x1000100010001;
    do
    {
      v12 = v5;
      v13 = *v8++;
      v5 = v13;
      v14 = vextq_s8(v6, v12, 6uLL);
      v15 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v14, v12)));
      v16 = vandq_s8(v14, v15);
      v17 = vsubq_s16(vandq_s8(v15, v9), vmvnq_s8(v15));
      v18 = vextq_s8(v6, v12, 8uLL);
      v19 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v18, v12)));
      v20 = vandq_s8(v18, v19);
      v21 = vaddw_u8(vaddl_u8(*v16.i8, *v12.i8), *v20.i8);
      v22 = vextq_s8(v6, v12, 0xAuLL);
      v23 = vaddw_high_u8(vaddl_high_u8(v16, v12), v20);
      v24 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v22, v12)));
      v25 = vandq_s8(v22, v24);
      v26 = vaddw_u8(v21, *v25.i8);
      v27 = vaddw_high_u8(v23, v25);
      v28 = vextq_s8(v6, v12, 0xCuLL);
      v29 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v28, v12)));
      v30 = vandq_s8(v28, v29);
      v31 = vextq_s8(v6, v12, 0xEuLL);
      v32 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v31, v12)));
      v33 = vandq_s8(v31, v32);
      v34 = vaddw_high_u8(v27, v30);
      v35 = vaddw_u8(vaddw_u8(v26, *v30.i8), *v33.i8);
      v36 = vextq_s8(v12, v13, 2uLL);
      v37 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v36, v12)));
      v38 = vaddw_high_u8(v34, v33);
      v39 = vandq_s8(v36, v37);
      v40 = vaddw_u8(v35, *v39.i8);
      v41 = vextq_s8(v12, v13, 4uLL);
      v42 = vaddw_high_u8(v38, v39);
      v43 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v41, v12)));
      v44 = vandq_s8(v41, v43);
      v45 = vaddw_u8(v40, *v44.i8);
      v46 = vextq_s8(v12, v13, 6uLL);
      v47 = vaddw_high_u8(v42, v44);
      v48 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v46, v12)));
      v49 = vandq_s8(v46, v48);
      v50 = vextq_s8(v12, v13, 8uLL);
      v51 = vaddw_u8(v45, *v49.i8);
      v52 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v50, v12)));
      v53 = vandq_s8(v50, v52);
      v54 = vextq_s8(v12, v13, 0xAuLL);
      v55 = vaddw_high_u8(v47, v49);
      v56 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v54, v12)));
      v57 = vsubq_s16(v17, v19);
      v58 = vandq_s8(v54, v56);
      v59 = vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(v57, v24), v29), v32), v37), v43), v48), v52), v56);
      *a2++ = vqmovn_high_u16(vqmovn_u16(vqrdmulhq_s16(vaddw_u8(vaddw_u8(v51, *v53.i8), *v58.i8), vmulq_s32(vcvtq_u32_f32(vmulq_f32(vrecpeq_f32(vcvtq_f32_u32(vmovl_u16(*v59.i8))), v10)), v11))), vqrdmulhq_s16(vaddw_high_u8(vaddw_high_u8(v55, v53), v58), vmulq_s32(vcvtq_u32_f32(vmulq_f32(vrecpeq_f32(vcvtq_f32_u32(vmovl_high_u16(v59))), v10)), v11)));
      v6 = v12;
      --v7;
    }

    while (v7);
    v6 = v12;
  }

  v60 = vdupq_laneq_s16(v5, 7);
  v61 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v46, v5)));
  v62 = vandq_s8(v46, v61);
  v63.i64[0] = 0x2000200020002;
  v63.i64[1] = 0x2000200020002;
  v64 = vsubq_s16(vandq_s8(v61, v63), vmvnq_s8(v61));
  v65 = vaddl_u8(*v62.i8, *v5.i8);
  v66 = vaddl_high_u8(v62, v5);
  v67 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v50, v5)));
  v68 = vandq_s8(v50, v67);
  v69 = vaddw_u8(v65, *v68.i8);
  v70 = vaddw_high_u8(v66, v68);
  v71 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v54, v5)));
  v72 = vandq_s8(v54, v71);
  v73 = vaddw_u8(v69, *v72.i8);
  v74 = vaddw_high_u8(v70, v72);
  v75 = vextq_s8(v6, v5, 0xCuLL);
  v76 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v75, v5)));
  v77 = vandq_s8(v75, v76);
  v78 = vaddw_u8(v73, *v77.i8);
  v79 = vaddw_high_u8(v74, v77);
  v80 = vextq_s8(v6, v5, 0xEuLL);
  v81 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v80, v5)));
  v82 = vandq_s8(v80, v81);
  v83 = vaddw_u8(v78, *v82.i8);
  v84 = vaddw_high_u8(v79, v82);
  v85 = vextq_s8(v5, v60, 2uLL);
  v86 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v85, v5)));
  v87 = vandq_s8(v85, v86);
  v88 = vaddw_u8(v83, *v87.i8);
  v89 = vaddw_high_u8(v84, v87);
  v90 = vextq_s8(v5, v60, 4uLL);
  v91 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v90, v5)));
  v92 = vandq_s8(v90, v91);
  v93 = vaddw_u8(v88, *v92.i8);
  v94 = vaddw_high_u8(v89, v92);
  v95 = vextq_s8(v5, v60, 6uLL);
  v96 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v95, v5)));
  v97 = vandq_s8(v95, v96);
  v98 = vaddw_u8(v93, *v97.i8);
  v99 = vaddw_high_u8(v94, v97);
  v100 = vextq_s8(v5, v60, 8uLL);
  v101 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v100, v5)));
  v102 = vandq_s8(v100, v101);
  v103 = vextq_s8(v5, v60, 0xAuLL);
  v104 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v103, v5)));
  v105 = vandq_s8(v103, v104);
  v106 = vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(v64, v67), v71), v76), v81), v86), v91), v96), v101), v104);
  v107 = vaddw_u8(vaddw_u8(v98, *v102.i8), *v105.i8);
  v108 = vrecpeq_f32(vcvtq_f32_u32(vmovl_u16(*v106.i8)));
  v109 = vdupq_n_s32(0x46FFFE00u);
  v98.i64[0] = 0x1000100010001;
  v98.i64[1] = 0x1000100010001;
  result = vqrdmulhq_s16(vaddw_high_u8(vaddw_high_u8(v99, v102), v105), vmulq_s32(vcvtq_u32_f32(vmulq_f32(vrecpeq_f32(vcvtq_f32_u32(vmovl_high_u16(v106))), v109)), v98));
  *a2 = vqmovn_high_u16(vqmovn_u16(vqrdmulhq_s16(v107, vmulq_s32(vcvtq_u32_f32(vmulq_f32(v108, v109)), v98))), result);
  return result;
}

uint16x8_t chromapowerblur17H(int16x4_t *a1, uint8x16_t *a2, int a3, unsigned int a4)
{
  v4 = vdupq_n_s16(a4);
  v5 = *a1->i8;
  v6 = vdupq_lane_s16(*a1, 0);
  v7 = (a3 >> 3) - 1;
  if (a3 >> 3 <= 1)
  {
    v51 = vextq_s8(v6, v5, 2uLL);
    v55 = vextq_s8(v6, v5, 4uLL);
    v60 = vextq_s8(v6, v5, 6uLL);
    v65 = vextq_s8(v6, v5, 8uLL);
    v70 = vextq_s8(v6, v5, 0xAuLL);
    v74 = vextq_s8(v6, v5, 0xCuLL);
    v78 = vextq_s8(v6, v5, 0xEuLL);
  }

  else
  {
    v8 = &a1[2];
    v9.i64[0] = 0x2000200020002;
    v9.i64[1] = 0x2000200020002;
    v10 = vdupq_n_s32(0x46FFFE00u);
    v11.i64[0] = 0x1000100010001;
    v11.i64[1] = 0x1000100010001;
    do
    {
      v12 = v5;
      v13 = *v8++;
      v5 = v13;
      v14 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v6, v12)));
      v15 = vandq_s8(v6, v14);
      v16 = vsubq_s16(vandq_s8(v14, v9), vmvnq_s8(v14));
      v17 = vextq_s8(v6, v12, 2uLL);
      v18 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v17, v12)));
      v19 = vandq_s8(v17, v18);
      v20 = vaddw_u8(vaddl_u8(*v15.i8, *v12.i8), *v19.i8);
      v21 = vaddw_high_u8(vaddl_high_u8(v15, v12), v19);
      v22 = vextq_s8(v6, v12, 4uLL);
      v23 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v22, v12)));
      v24 = vandq_s8(v22, v23);
      v25 = vextq_s8(v6, v12, 6uLL);
      v26 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v25, v12)));
      v27 = vandq_s8(v25, v26);
      v28 = vaddw_high_u8(v21, v24);
      v29 = vaddw_u8(vaddw_u8(v20, *v24.i8), *v27.i8);
      v30 = vextq_s8(v6, v12, 8uLL);
      v31 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v30, v12)));
      v32 = vaddw_high_u8(v28, v27);
      v33 = vandq_s8(v30, v31);
      v34 = vaddw_u8(v29, *v33.i8);
      v35 = vextq_s8(v6, v12, 0xAuLL);
      v36 = vaddw_high_u8(v32, v33);
      v37 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v35, v12)));
      v38 = vandq_s8(v35, v37);
      v39 = vaddw_u8(v34, *v38.i8);
      v40 = vextq_s8(v6, v12, 0xCuLL);
      v41 = vaddw_high_u8(v36, v38);
      v42 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v40, v12)));
      v43 = vandq_s8(v40, v42);
      v44 = vaddw_u8(v39, *v43.i8);
      v45 = vextq_s8(v6, v12, 0xEuLL);
      v46 = vaddw_high_u8(v41, v43);
      v47 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v45, v12)));
      v48 = vandq_s8(v45, v47);
      v49 = vaddw_u8(v44, *v48.i8);
      v50 = vaddw_high_u8(v46, v48);
      v51 = vextq_s8(v12, v13, 2uLL);
      v52 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v51, v12)));
      v53 = vandq_s8(v51, v52);
      v54 = vaddw_u8(v49, *v53.i8);
      v55 = vextq_s8(v12, v13, 4uLL);
      v56 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v55, v12)));
      v57 = vandq_s8(v55, v56);
      v58 = vaddw_high_u8(v50, v53);
      v59 = vaddw_u8(v54, *v57.i8);
      v60 = vextq_s8(v12, v13, 6uLL);
      v61 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v60, v12)));
      v62 = vaddw_high_u8(v58, v57);
      v63 = vandq_s8(v60, v61);
      v64 = vaddw_u8(v59, *v63.i8);
      v65 = vextq_s8(v12, v13, 8uLL);
      v66 = vaddw_high_u8(v62, v63);
      v67 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v65, v12)));
      v68 = vandq_s8(v65, v67);
      v69 = vaddw_u8(v64, *v68.i8);
      v70 = vextq_s8(v12, v13, 0xAuLL);
      v71 = vaddw_high_u8(v66, v68);
      v72 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v70, v12)));
      v73 = vandq_s8(v70, v72);
      v74 = vextq_s8(v12, v13, 0xCuLL);
      v75 = vaddw_u8(v69, *v73.i8);
      v76 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v74, v12)));
      v77 = vandq_s8(v74, v76);
      v78 = vextq_s8(v12, v13, 0xEuLL);
      v79 = vaddw_high_u8(v71, v73);
      v80 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v78, v12)));
      v81 = vandq_s8(v78, v80);
      v82 = vsubq_s16(v16, v18);
      v83 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v13, v12)));
      v84 = vsubq_s16(v82, v23);
      v85 = vandq_s8(v13, v83);
      v86 = vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(v84, v26), v31), v37), v42), v47), v52), v56), v61), v67), v72), v76), v80), v83);
      *a2++ = vqmovn_high_u16(vqmovn_u16(vqrdmulhq_s16(vaddw_u8(vaddw_u8(vaddw_u8(v75, *v77.i8), *v81.i8), *v85.i8), vmulq_s32(vcvtq_u32_f32(vmulq_f32(vrecpeq_f32(vcvtq_f32_u32(vmovl_u16(*v86.i8))), v10)), v11))), vqrdmulhq_s16(vaddw_high_u8(vaddw_high_u8(vaddw_high_u8(v79, v77), v81), v85), vmulq_s32(vcvtq_u32_f32(vmulq_f32(vrecpeq_f32(vcvtq_f32_u32(vmovl_high_u16(v86))), v10)), v11)));
      v6 = v12;
      --v7;
    }

    while (v7);
    v6 = v12;
  }

  v87 = vdupq_laneq_s16(v5, 7);
  v88 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v6, v5)));
  v89 = vandq_s8(v6, v88);
  v90.i64[0] = 0x2000200020002;
  v90.i64[1] = 0x2000200020002;
  v91 = vsubq_s16(vandq_s8(v88, v90), vmvnq_s8(v88));
  v92 = vaddl_u8(*v89.i8, *v5.i8);
  v93 = vaddl_high_u8(v89, v5);
  v94 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v51, v5)));
  v95 = vandq_s8(v51, v94);
  v96 = vaddw_u8(v92, *v95.i8);
  v97 = vaddw_high_u8(v93, v95);
  v98 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v55, v5)));
  v99 = vandq_s8(v55, v98);
  v100 = vaddw_u8(v96, *v99.i8);
  v101 = vaddw_high_u8(v97, v99);
  v102 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v60, v5)));
  v103 = vandq_s8(v60, v102);
  v104 = vaddw_u8(v100, *v103.i8);
  v105 = vaddw_high_u8(v101, v103);
  v106 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v65, v5)));
  v107 = vandq_s8(v65, v106);
  v108 = vaddw_u8(v104, *v107.i8);
  v109 = vaddw_high_u8(v105, v107);
  v110 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v70, v5)));
  v111 = vandq_s8(v70, v110);
  v112 = vaddw_u8(v108, *v111.i8);
  v113 = vaddw_high_u8(v109, v111);
  v114 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v74, v5)));
  v115 = vandq_s8(v74, v114);
  v116 = vaddw_u8(v112, *v115.i8);
  v117 = vaddw_high_u8(v113, v115);
  v118 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v78, v5)));
  v119 = vandq_s8(v78, v118);
  v120 = vaddw_u8(v116, *v119.i8);
  v121 = vaddw_high_u8(v117, v119);
  v122 = vextq_s8(v5, v87, 2uLL);
  v123 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v122, v5)));
  v124 = vandq_s8(v122, v123);
  v125 = vaddw_u8(v120, *v124.i8);
  v126 = vaddw_high_u8(v121, v124);
  v127 = vextq_s8(v5, v87, 4uLL);
  v128 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v127, v5)));
  v129 = vandq_s8(v127, v128);
  v130 = vaddw_u8(v125, *v129.i8);
  v131 = vaddw_high_u8(v126, v129);
  v132 = vextq_s8(v5, v87, 6uLL);
  v133 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v132, v5)));
  v134 = vandq_s8(v132, v133);
  v135 = vaddw_u8(v130, *v134.i8);
  v136 = vaddw_high_u8(v131, v134);
  v137 = vextq_s8(v5, v87, 8uLL);
  v138 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v137, v5)));
  v139 = vandq_s8(v137, v138);
  v140 = vaddw_u8(v135, *v139.i8);
  v141 = vaddw_high_u8(v136, v139);
  v142 = vextq_s8(v5, v87, 0xAuLL);
  v143 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v142, v5)));
  v144 = vandq_s8(v142, v143);
  v145 = vaddw_u8(v140, *v144.i8);
  v146 = vaddw_high_u8(v141, v144);
  v147 = vextq_s8(v5, v87, 0xCuLL);
  v148 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v147, v5)));
  v149 = vandq_s8(v147, v148);
  v150 = vaddw_u8(v145, *v149.i8);
  v151 = vaddw_high_u8(v146, v149);
  v152 = vextq_s8(v5, v87, 0xEuLL);
  v153 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v152, v5)));
  v154 = vandq_s8(v152, v153);
  v155 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v87, v5)));
  v156 = vandq_s8(v87, v155);
  v157 = vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(v91, v94), v98), v102), v106), v110), v114), v118), v123), v128), v133), v138), v143), v148), v153), v155);
  v158 = vrecpeq_f32(vcvtq_f32_u32(vmovl_u16(*v157.i8)));
  v159 = vdupq_n_s32(0x46FFFE00u);
  v98.i64[0] = 0x1000100010001;
  v98.i64[1] = 0x1000100010001;
  result = vqrdmulhq_s16(vaddw_high_u8(vaddw_high_u8(v151, v154), v156), vmulq_s32(vcvtq_u32_f32(vmulq_f32(vrecpeq_f32(vcvtq_f32_u32(vmovl_high_u16(v157))), v159)), v98));
  *a2 = vqmovn_high_u16(vqmovn_u16(vqrdmulhq_s16(vaddw_u8(vaddw_u8(v150, *v154.i8), *v156.i8), vmulq_s32(vcvtq_u32_f32(vmulq_f32(v158, v159)), v98))), result);
  return result;
}

uint64_t shmemRegionRegister()
{
  sSharedMemRegionClass = 0;
  *algn_1ED844DB8 = "FigSharedMemPoolSharedRegion";
  qword_1ED844DC0 = shmemRegionInit;
  unk_1ED844DC8 = 0;
  qword_1ED844DD0 = shmemRegionFinalize;
  unk_1ED844DD8 = 0;
  qword_1ED844DE0 = 0;
  unk_1ED844DE8 = 0;
  qword_1ED844DF0 = shmemRegionCopyDebugDesc;
  result = _CFRuntimeRegisterClass();
  sSharedMemRegionID = result;
  return result;
}

uint64_t FigSharedMemPoolSharedRegionCreateXPCObject(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    FigSharedMemPoolSharedRegionCreateXPCObject_cold_4();
    return 4294954516;
  }

  if (!a3)
  {
    FigSharedMemPoolSharedRegionCreateXPCObject_cold_3();
    return 4294954516;
  }

  if (*(a1 + 40))
  {
    FigSharedMemPoolSharedRegionCreateXPCObject_cold_1();
    return 4294954516;
  }

  v6 = xpc_shmem_create(*(a1 + 16), *(a1 + 24));
  if (!v6)
  {
    FigSharedMemPoolSharedRegionCreateXPCObject_cold_2();
    return 4294954516;
  }

  v7 = v6;
  v8 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 40), &v8, 1u, memory_order_relaxed, memory_order_relaxed);
  if (v8)
  {
    xpc_release(v6);
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    result = 0;
    *(a1 + 32) = a2;
    *a3 = v7;
  }

  return result;
}