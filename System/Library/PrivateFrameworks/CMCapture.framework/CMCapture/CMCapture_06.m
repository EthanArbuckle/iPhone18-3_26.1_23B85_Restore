uint64_t BWSampleBufferCreateFromPixelBuffer(__CVBuffer *a1, uint64_t a2, CFTypeRef *a3, CMSampleBufferRef *a4)
{
  v6 = *MEMORY[0x1E6960C70];
  *v7 = *(MEMORY[0x1E6960C70] + 16);
  *&v7[8] = *a2;
  *&v7[24] = *(a2 + 16);
  v8 = v6;
  v9 = *v7;
  *&v5.presentationTimeStamp.timescale = *&v7[16];
  *&v5.decodeTimeStamp.value = v6;
  v5.decodeTimeStamp.epoch = *v7;
  *&v5.duration.value = v6;
  *&v5.duration.epoch = *v7;
  return BWSampleBufferCreateFromPixelBufferWithTimingInfo(a1, &v5, a3, a4);
}

uint64_t BWSampleBufferCreateFromPixelBufferWithTimingInfo(CVImageBufferRef imageBuffer, CMSampleTimingInfo *sampleTiming, CFTypeRef *a3, CMSampleBufferRef *a4)
{
  formatDescription = 0;
  sampleBufferOut = 0;
  if (imageBuffer)
  {
    if (a3)
    {
      if (a4)
      {
        v8 = *a3;
        v9 = *MEMORY[0x1E695E480];
        v10 = 1;
        v11 = *a3;
        while (1)
        {
          v12 = v11;
          if (!v11)
          {
            v13 = CMVideoFormatDescriptionCreateForImageBuffer(v9, imageBuffer, &formatDescription);
            if (v13)
            {
              v18 = v13;
              BWSampleBufferCreateFromPixelBufferWithTimingInfo_cold_1();
              goto LABEL_21;
            }

            v12 = formatDescription;
          }

          v14 = CMSampleBufferCreateForImageBuffer(v9, imageBuffer, 1u, 0, 0, v12, sampleTiming, &sampleBufferOut);
          v16 = v14 == -12743 && formatDescription == 0;
          if (v14 && !v16)
          {
            v18 = v14;
            BWSampleBufferCreateFromPixelBufferWithTimingInfo_cold_2();
            goto LABEL_21;
          }

          if (v16)
          {
            v11 = 0;
          }

          if (!sampleBufferOut)
          {
            v17 = (v8 != 0) & v10;
            v10 = 0;
            if (v17)
            {
              continue;
            }
          }

          v18 = 0;
          *a4 = sampleBufferOut;
          goto LABEL_21;
        }
      }

      BWSampleBufferCreateFromPixelBufferWithTimingInfo_cold_3();
    }

    else
    {
      BWSampleBufferCreateFromPixelBufferWithTimingInfo_cold_4();
    }
  }

  else
  {
    BWSampleBufferCreateFromPixelBufferWithTimingInfo_cold_5();
  }

  v18 = 4294954516;
LABEL_21:
  v19 = formatDescription;
  if (formatDescription)
  {
    if (*a3)
    {
      CFRelease(*a3);
      v19 = formatDescription;
    }

    *a3 = v19;
  }

  return v18;
}

void multiStreamCameraSourceNode_outputSampleBuffer(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3)
{
  *(&v303 + 1) = a2;
  v4 = a1;
  v306 = a2;
  v5 = a1 + 432 + (a2 << 9);
  v294 = *(a1 + 216);
  v6 = *(v5 + 16);
  v7 = *v5;
  LODWORD(v297) = *(v5 + 4);
  v8 = *v5 == 2;
  if (v6 == *(a1 + 232) && ([*(a1 + 360) detectedFacesOnPreviewOutputEnabled] & 1) != 0)
  {
    v298 = 0;
  }

  else
  {
    if (v6 == *(v4 + 240))
    {
      v9 = [*(v4 + 360) detectedFacesOnVideoCaptureOutputEnabled] ^ 1;
    }

    else
    {
      v9 = 1;
    }

    v298 = v9;
  }

  *&buffer = CMSampleBufferGetImageBuffer(a3);
  v304 = v4;
  sbuf = a3;
  v302 = v5;
  if (v7 == 2)
  {
    if (dword_1ED8445B0)
    {
      LODWORD(time2.x) = 0;
      LOBYTE(v341) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ([*(v4 + 136) sourceNodeShouldDiscardStillImageSampleBuffer:a3 sensorRawOutput:v6 == *(v4 + 256)])
    {
      LODWORD(time2.x) = 0;
      LOBYTE(v341) = 0;
      v272 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      x_low = LODWORD(time2.x);
      if (os_log_type_enabled(v272, v341))
      {
        v275 = x_low;
      }

      else
      {
        v275 = x_low & 0xFFFFFFFE;
      }

      if (v275)
      {
        v276 = BWPortTypeToDisplayString(v294, v274);
        v277 = [v6 name];
        v278 = BWStillImageSampleBufferToShortDisplayString(a3);
        LODWORD(time1.value) = 136315906;
        *(&time1.value + 4) = "multiStreamCameraSourceNode_outputSampleBuffer";
        LOWORD(time1.flags) = 2114;
        *(&time1.flags + 2) = v276;
        HIWORD(time1.epoch) = 2114;
        v324 = v277;
        v325 = 2114;
        v326 = v278;
        _os_log_send_and_compose_impl();
      }

      goto LABEL_464;
    }
  }

  [(BWMultiStreamCameraSourceNode *)v4 _addCaptureStreamAttachmentsToSampleBuffer:a3];
  v11 = *off_1E798A3C8;
  v301 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  if (v7 == 1)
  {
    if (*(v5 + 4))
    {
      LOBYTE(time.duration.value) = 0;
      v8 = BWIsStillImageSampleBuffer(a3, &time);
      if (v8)
      {
        v12 = v4;
        value_low = LOBYTE(time.duration.value);
        v14 = *(v12 + 432 + (v306 << 9) + 4);
        v15 = [*(v12 + 136) providesPreBracketedEV0];
        if (v14 & 1) == 0 || (value_low & (v15 ^ 1))
        {
          if ((v297 & 2) != 0)
          {
            [BWMultiStreamCameraSourceNode _preserveMotionDataForSoonToBeDroppedSampleBuffer:v304];
          }

          return;
        }

        v4 = v304;
        a3 = sbuf;
        v6 = *(v304 + 248);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  HIDWORD(v297) = DWORD2(v303) - 9;
  v16 = DWORD2(v303) == 6 || v8;
  v17 = v16 ^ 1;
  if ((DWORD2(v303) - 17) >= 0xFFFFFFF8)
  {
    v17 = 0;
  }

  if (DWORD2(v303) == 7)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  if ((v16 & 1) == 0 && HIDWORD(v297) >= 8 && DWORD2(v303) != 7)
  {
    if ([*(v4 + 360) discardsUnstableSphereVideoFrames])
    {
      v36 = CMGetAttachment(a3, v11, 0);
      if (mscsn_sphereIsUnstableOrInActiveModeBasedOnMetadata(v36))
      {
        if ((v297 & 2) != 0)
        {
          multiStreamCameraSourceNode_outputSampleBuffer_cold_1();
        }

        return;
      }
    }
  }

  LODWORD(cf) = v18;
  *(&cf + 1) = __PAIR64__(v7, v16);
  DWORD1(v303) = v8;
  v307 = v6;
  if (v7 == 1 && (*(v302 + 8) & 1) == 0 && (*(v304 + 12144) & 1) == 0)
  {
    *(v302 + 8) = 1;
    [(BWMultiStreamCameraSourceNode *)v304 _createAndStartFrameCounterForOutputIndexIfNecessary:?];
    v337 = 0u;
    v338 = 0u;
    v335 = 0u;
    v336 = 0u;
    v178 = [(BWMultiStreamCameraSourceNode *)v304 _nodeOutputsMadeLiveByStreamOutputIndex:?];
    v179 = [v178 countByEnumeratingWithState:&v335 objects:v334 count:16];
    if (v179)
    {
      v180 = v179;
      v181 = *v336;
      do
      {
        for (i = 0; i != v180; ++i)
        {
          if (*v336 != v181)
          {
            objc_enumerationMutation(v178);
          }

          v183 = *(*(&v335 + 1) + 8 * i);
          if (v183 == v6)
          {
            goto LABEL_267;
          }

          v184 = (v304 + 448);
          v185 = 22;
          while (*(v184 - 7) != 1 || *v184 != v183)
          {
            v184 += 64;
            if (!--v185)
            {
              goto LABEL_267;
            }
          }

          v186 = v184[2];
          if (!v186)
          {
LABEL_267:
            if (![*(*(&v335 + 1) + 8 * i) liveFormat])
            {
              [v183 makeConfiguredFormatLive];
            }
          }

          else
          {
            v333[0] = MEMORY[0x1E69E9820];
            v333[1] = 3221225472;
            v333[2] = __multiStreamCameraSourceNode_outputSampleBuffer_block_invoke;
            v333[3] = &unk_1E798F870;
            v333[4] = v183;
            dispatch_async(v186, v333);
          }
        }

        v180 = [v178 countByEnumeratingWithState:&v335 objects:v334 count:16];
      }

      while (v180);
    }
  }

  v19 = v304;
  v20 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
  *(&buffer + 1) = v11;
  if ([objc_msgSend(v304 configuration])
  {
    v21 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    os_unfair_lock_lock((v304 + 12224));
    if (*(v304 + 12228) != 1)
    {
      if (*(v304 + 12230))
      {
LABEL_90:
        os_unfair_lock_unlock((v19 + v21[670]));
        goto LABEL_91;
      }

      v35 = *(v304 + 128);
      CMSampleBufferGetPresentationTimeStamp(&time.duration, sbuf);
      [v35 liveReconfigureForOutputAspectRatioFirstBufferReceived:&time forConfigurationID:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", objc_msgSend(v304, "requestedConfigurationID"))}];
LABEL_89:
      *(v19 + 12230) = 1;
      goto LABEL_90;
    }

    v22 = *(v304 + 12232);
    LODWORD(FrameworkRadarComponent) = v22;
    if (![*(v304 + 360) adaptiveSensorCropForDynamicAspectRatioEnabled])
    {
      goto LABEL_44;
    }

    BWPixelBufferDimensionsFromSampleBuffer(sbuf);
    FigCaptureMetadataUtilitiesGetValidBufferRect();
    v24 = v23;
    v26 = v25;
    AspectRatioFractionalDimensionsForAspectRatio = FigCaptureGetAspectRatioFractionalDimensionsForAspectRatio(v22);
    v28 = __ROR8__(AspectRatioFractionalDimensionsForAspectRatio, 32);
    v29 = HIDWORD(AspectRatioFractionalDimensionsForAspectRatio);
    if (AspectRatioFractionalDimensionsForAspectRatio < SHIDWORD(AspectRatioFractionalDimensionsForAspectRatio))
    {
      LODWORD(v29) = HIDWORD(v28);
    }

    v30 = v24;
    if (AspectRatioFractionalDimensionsForAspectRatio < SHIDWORD(AspectRatioFractionalDimensionsForAspectRatio))
    {
      LODWORD(AspectRatioFractionalDimensionsForAspectRatio) = v28;
    }

    v31 = v26;
    v32 = __ROR8__(v30 | (v31 << 32), 32);
    if (v30 >= v31)
    {
      v33 = v24;
    }

    else
    {
      LODWORD(v31) = HIDWORD(v32);
      v33 = v32;
    }

    if (!FigCaptureVideoAspectRatiosAreEqual(AspectRatioFractionalDimensionsForAspectRatio | (v29 << 32), v33 | (v31 << 32), 0.2))
    {
      v34 = 0;
      goto LABEL_55;
    }

    if (*(v304 + 12229))
    {
LABEL_44:
      v34 = 1;
LABEL_55:
      if (dword_1ED8445B0)
      {
        LODWORD(time2.x) = 0;
        LOBYTE(v341) = 0;
        v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v38 = LODWORD(time2.x);
        if (os_log_type_enabled(v37, v341))
        {
          v40 = v38;
        }

        else
        {
          v40 = v38 & 0xFFFFFFFE;
        }

        if (v40)
        {
          *(&v292 + 1) = BWPortTypeToDisplayString(v294, v39);
          v41 = [v307 name];
          v42 = BWAspectRatioToShortString(FrameworkRadarComponent);
          if (v34)
          {
            *&v43 = COERCE_DOUBLE(@"DONE");
          }

          else
          {
            *&v43 = COERCE_DOUBLE(@"PENDING");
          }

          if (*(v304 + 12229))
          {
            v44 = @"READY";
          }

          else
          {
            v44 = @"NOT READY";
          }

          CMSampleBufferGetPresentationTimeStamp(&time.duration, sbuf);
          Seconds = CMTimeGetSeconds(&time.duration);
          LODWORD(time1.value) = 136316674;
          *(&time1.value + 4) = "multiStreamCameraSourceNode_outputSampleBuffer";
          LOWORD(time1.flags) = 2114;
          *(&time1.flags + 2) = *(&v292 + 1);
          HIWORD(time1.epoch) = 2114;
          v324 = v41;
          v11 = *(&buffer + 1);
          v325 = 2114;
          v326 = v42;
          v20 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
          v327 = 2114;
          v328 = *&v43;
          v19 = v304;
          v329 = 2114;
          v330 = v44;
          v21 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
          v331 = 2048;
          v332 = Seconds;
          LODWORD(target) = 72;
          p_time1 = &time1;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (!v34 || *(v19 + 12229) != 1)
      {
        goto LABEL_90;
      }

      [*(v19 + v20[620]) setAspectRatio:FrameworkRadarComponent];
      [*(v19 + 360) setVisOverscan:{*(v19 + 12240), *(v19 + 12248)}];
      v46 = *(v19 + v20[620]);
      CMSampleBufferGetPresentationTimeStamp(&time.duration, sbuf);
      [v46 liveReconfigureForOutputAspectRatioFirstBufferReceived:&time forConfigurationID:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", objc_msgSend(v19, "requestedConfigurationID"))}];
      v47 = 0x1E695D000uLL;
      v48 = [MEMORY[0x1E695DFA8] set];
      v49 = 0;
      v50 = v307;
      do
      {
        v51 = v304 + 432 + (v49 << 9);
        if (*(v51 + 9) == 1 && *(v51 + 8) == 1)
        {
          v52 = [*(v47 + 4008) setWithArray:{-[BWMultiStreamCameraSourceNode _nodeOutputsMadeLiveByStreamOutputIndex:](v304, v49)}];
          [v52 minusSet:v48];
          FrameworkRadarComponent = v48;
          [v48 unionSet:v52];
          v321 = 0u;
          v322 = 0u;
          v319 = 0u;
          v320 = 0u;
          v53 = [v52 countByEnumeratingWithState:&v319 objects:&v313 count:16];
          if (v53)
          {
            v54 = v53;
            v55 = *v320;
            do
            {
              for (j = 0; j != v54; ++j)
              {
                if (*v320 != v55)
                {
                  objc_enumerationMutation(v52);
                }

                v57 = *(*(&v319 + 1) + 8 * j);
                if (v57 == v50)
                {
                  if ([*(*(&v319 + 1) + 8 * j) liveFormat])
                  {
                    v59 = MEMORY[0x1E696AD98];
                    v60 = [v57 liveConfigurationID];
                    v61 = v59;
                    v50 = v307;
                    [v57 markEndOfLiveOutputForConfigurationID:{objc_msgSend(v61, "numberWithLongLong:", v60)}];
                  }

                  [v57 makeConfiguredFormatLive];
                }

                else
                {
                  v58 = *(v51 + 32);
                  block = MEMORY[0x1E69E9820];
                  v309 = 3221225472;
                  v310 = __multiStreamCameraSourceNode_outputSampleBuffer_block_invoke_1515;
                  v311 = &unk_1E798F870;
                  v312 = v57;
                  dispatch_async(v58, &block);
                }
              }

              v54 = [v52 countByEnumeratingWithState:&v319 objects:&v313 count:16];
            }

            while (v54);
          }

          v21 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
          v47 = 0x1E695D000;
          v48 = FrameworkRadarComponent;
          if ([*(v304 + 360) adaptiveSensorCropForDynamicAspectRatioEnabled])
          {
            multiStreamCameraSourceNode_outputSampleBuffer_cold_2();
          }
        }

        ++v49;
      }

      while (v49 != 22);
      v19 = v304;
      *(v304 + 12228) = 0;
      *(v304 + 12229) = 0;
      v11 = *(&buffer + 1);
      goto LABEL_89;
    }

    os_unfair_lock_unlock((v304 + 12224));
    LODWORD(time2.x) = 0;
    LOBYTE(v341) = 0;
    v279 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v280 = LODWORD(time2.x);
    if (os_log_type_enabled(v279, v341))
    {
      v282 = v280;
    }

    else
    {
      v282 = v280 & 0xFFFFFFFE;
    }

    if (v282)
    {
      v283 = BWPortTypeToDisplayString(v294, v281);
      v284 = [v307 name];
      v285 = BWAspectRatioToShortString(v22);
      CMSampleBufferGetPresentationTimeStamp(&time.duration, sbuf);
      v286 = CMTimeGetSeconds(&time.duration);
      LODWORD(time1.value) = 136316162;
      *(&time1.value + 4) = "multiStreamCameraSourceNode_outputSampleBuffer";
      LOWORD(time1.flags) = 2114;
      *(&time1.flags + 2) = v283;
      HIWORD(time1.epoch) = 2114;
      v324 = v284;
      v325 = 2114;
      v326 = v285;
      v327 = 2048;
      v328 = v286;
      _os_log_send_and_compose_impl();
    }

LABEL_464:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return;
  }

LABEL_91:
  v62 = MEMORY[0x1E695F058];
  v63 = CMGetAttachment(sbuf, v11, 0);
  v64 = v63;
  if (SDWORD2(v303) <= 4)
  {
    if (DWORD2(v303) == 1)
    {
      v65 = off_1E798B580;
      v74 = [v63 objectForKeyedSubscript:*off_1E798B630];
      v67 = *off_1E798B7A0;
      [v64 setObject:v74 forKeyedSubscript:*off_1E798B7A0];
      v71 = *off_1E798B620;
      goto LABEL_104;
    }

    if (DWORD2(v303) == 2)
    {
      v65 = off_1E798B580;
      v70 = [v63 objectForKeyedSubscript:*off_1E798B420];
      v67 = *off_1E798B7A0;
      [v64 setObject:v70 forKeyedSubscript:*off_1E798B7A0];
      v71 = *off_1E798B410;
LABEL_104:
      v68 = [v64 objectForKeyedSubscript:{v71, p_time1}];
      goto LABEL_105;
    }
  }

  else
  {
    switch(DWORD2(v303))
    {
      case 5:
        v65 = off_1E798B580;
        v72 = [v63 objectForKeyedSubscript:*off_1E798B6D8];
        v67 = *off_1E798B7A0;
        [v64 setObject:v72 forKeyedSubscript:*off_1E798B7A0];
        v69 = off_1E798B670;
LABEL_101:
        v71 = *v69;
        goto LABEL_104;
      case 6:
        v65 = off_1E798B580;
        v67 = *off_1E798B7A0;
        v68 = 0;
        v73 = *off_1E798B7A0;
LABEL_106:
        [v63 setObject:v68 forKeyedSubscript:{v73, p_time1}];
        goto LABEL_107;
      case 0x11:
        v65 = off_1E798B580;
        v66 = [v63 objectForKeyedSubscript:*off_1E798B580];
        v67 = *off_1E798B7A0;
        [v64 setObject:v66 forKeyedSubscript:*off_1E798B7A0];
        v68 = [v64 objectForKeyedSubscript:*off_1E798B570];
        if (v68)
        {
LABEL_105:
          v73 = *off_1E798B668;
          v63 = v64;
          goto LABEL_106;
        }

        v69 = off_1E798B578;
        goto LABEL_101;
    }
  }

  v65 = off_1E798B580;
  v67 = *off_1E798B7A0;
LABEL_107:
  [v64 setObject:0 forKeyedSubscript:{*off_1E798B630, p_time1}];
  [v64 setObject:0 forKeyedSubscript:*off_1E798B420];
  [v64 setObject:0 forKeyedSubscript:*off_1E798B620];
  [v64 setObject:0 forKeyedSubscript:*off_1E798B410];
  [v64 setObject:0 forKeyedSubscript:*off_1E798B6D8];
  [v64 setObject:0 forKeyedSubscript:*v65];
  [v64 setObject:0 forKeyedSubscript:*off_1E798B570];
  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  v76 = v62[1];
  time2 = *v62;
  time2_16 = v76;
  v78 = v307;
  v79 = v302;
  v80 = DWORD1(v303);
  if (FigCFDictionaryGetCGRectIfPresent())
  {
    Width = CVPixelBufferGetWidth(ImageBuffer);
    Height = CVPixelBufferGetHeight(ImageBuffer);
    v83 = time2;
    v84 = Width - time2.x;
    y = time2_16.y;
    x = time2_16.x;
    if (Width - time2.x >= time2_16.x)
    {
      v84 = time2_16.x;
    }

    if (v84 >= 0.0)
    {
      v87 = v84;
    }

    else
    {
      v87 = 0.0;
    }

    v88 = Height - time2.y;
    if (Height - time2.y >= time2_16.y)
    {
      v88 = time2_16.y;
    }

    if (v88 >= 0.0)
    {
      v89 = v88;
    }

    else
    {
      v89 = 0.0;
    }

    v91 = time2.y;
    v90 = time2.x;
    v347.origin = time2;
    v347.size.width = v87;
    v347.size.height = v89;
    if (!CGRectEqualToRect(*(&x - 2), v347))
    {
      if (FigCapturePlatformIdentifier() >= 10)
      {
        FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
        v341 = 0;
        v340 = OS_LOG_TYPE_DEFAULT;
        v92 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v93 = v341;
        if (os_log_type_enabled(v92, v340))
        {
          v94 = v93;
        }

        else
        {
          v94 = v93 & 0xFFFFFFFE;
        }

        v95 = *off_1E798B540;
        if (v94)
        {
          v96 = [v64 objectForKeyedSubscript:*off_1E798B540];
          *(&v292 + 1) = BWPortTypeToDisplayString(v96, v97);
          v98 = DWORD2(v303);
          *&v292 = mscsn_streamOutputIDForOutputIndex(SDWORD2(v303));
          v99 = BWStringFromCGRect(time2.x, time2.y, time2_16.x, time2_16.y);
          v100 = v95;
          *&v101 = COERCE_DOUBLE(BWStringFromCGPoint(Width, Height));
          v102 = BWStringFromCGRect(v83.x, v83.y, v87, v89);
          LODWORD(time1.value) = 136316418;
          *(&time1.value + 4) = "mscsn_updateValidBufferRect";
          LOWORD(time1.flags) = 2112;
          *(&time1.flags + 2) = *(&v292 + 1);
          HIWORD(time1.epoch) = 2112;
          v324 = v292;
          v325 = 2112;
          v326 = v99;
          v327 = 2112;
          v328 = *&v101;
          v95 = v100;
          v329 = 2112;
          v330 = v102;
          _os_log_send_and_compose_impl();
        }

        else
        {
          v98 = DWORD2(v303);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v103 = [v64 objectForKeyedSubscript:v95];
        v105 = BWPortTypeToDisplayString(v103, v104);
        v106 = mscsn_streamOutputIDForOutputIndex(v98);
        v107 = BWStringFromCGRect(time2.x, time2.y, time2_16.x, time2_16.y);
        v108 = BWStringFromCGPoint(Width, Height);
        v109 = BWStringFromCGRect(v83.x, v83.y, v87, v89);
        LODWORD(time.duration.value) = 138413314;
        *(&time.duration.value + 4) = v105;
        LOWORD(time.duration.flags) = 2112;
        *(&time.duration.flags + 2) = v106;
        HIWORD(time.duration.epoch) = 2112;
        time.presentationTimeStamp.value = v107;
        LOWORD(time.presentationTimeStamp.timescale) = 2112;
        *(&time.presentationTimeStamp.timescale + 2) = v108;
        WORD1(time.presentationTimeStamp.epoch) = 2112;
        *(&time.presentationTimeStamp.epoch + 4) = v109;
        v110 = _os_log_send_and_compose_impl();
        target = 0;
        FigCapturePleaseFileRadar(FrameworkRadarComponent, v110, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWMultiStreamCameraSourceNode.m", 12576, @"LastShownDate:BWMultiStreamCameraSourceNode.m:12576", @"LastShownBuild:BWMultiStreamCameraSourceNode.m:12576", 0);
        free(v110);
        v19 = v304;
        v78 = v307;
        v79 = v302;
        v80 = DWORD1(v303);
      }

      time2 = v83;
      time2_16.x = v87;
      time2_16.y = v89;
      v345.origin = v83;
      v345.size.width = v87;
      v345.size.height = v89;
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v345);
      [v64 setObject:DictionaryRepresentation forKeyedSubscript:v67];
      if (DictionaryRepresentation)
      {
        CFRelease(DictionaryRepresentation);
      }
    }

    v77 = time2_16.x;
    if (time2_16.x == Width)
    {
      v77 = time2_16.y;
      if (time2_16.y == Height)
      {
        [v64 setObject:0 forKeyedSubscript:{v67, time2_16.y}];
      }
    }
  }

  if (DWORD2(v303) == 6 || v80 | cf)
  {
    v117 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    v118 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    if (v80)
    {
      [*(v19 + 136) activeStillImageScaleFactor];
      [*(v19 + 136) deliverSushiRaw];
    }

    v116 = sbuf;
    [BWMultiStreamCameraSourceNode _updateZoomForOutputIndex:sampleBuffer:additionalScaleFactor:deliverSushiRaw:];
    v112 = v77;
    v113 = v172;
    v114 = v173;
    v115 = v174;
  }

  else
  {
    v112 = v62->x;
    v113 = v62->y;
    v114 = v62[1].x;
    v115 = v62[1].y;
    v116 = sbuf;
    v117 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    v118 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
  }

  [objc_msgSend(*(v19 + v118[620]) zoomCommandHandler];
  v120 = v119;
  [*(v19 + v117[673]) uiBaseZoomFactor];
  *&v122 = v120 * v121;
  CMSetAttachment(v116, @"UIZoomFactor", [MEMORY[0x1E696AD98] numberWithFloat:v122], 1u);
  if ((v297 & 2) != 0)
  {
    [*(v19 + 11992) addFacesFromSampleBuffer:v116];
    [*(v19 + 12000) addObjectsFromSampleBuffer:v116];
    BWDetectedFacesConvertSampleBufferFacesFromSensorToBufferCoordinateSpace(v116);
    BWDetectedObjectsConvertSampleBufferDetectedObjectsFromSensorToBufferCoordinateSpace(v116);
    if (([*(v19 + v118[620]) smartFramingEnabled] & 1) != 0 || objc_msgSend(*(v19 + v118[620]), "cinematicFramingEnabled") && objc_msgSend(*(v19 + v118[620]), "smartCropSupported"))
    {
      DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], [(CMTime *)v301 objectForKeyedSubscript:*off_1E798B220], 0);
      CMSetAttachment(v116, *off_1E798A5A8, DeepCopy, 1u);
    }

    v124 = [(CMTime *)v301 objectForKeyedSubscript:*off_1E798B710];
    v125 = [v124 BOOLValue];
    if (!v124 || v125)
    {
      [*(v19 + 12008) filterDetectedFacesInSampleBuffer:v116];
    }

    if ([*(v19 + v117[673]) detectedObjectsOutputEnabled] && objc_msgSend(objc_msgSend(*(v19 + v117[673]), "enabledDetectedObjectTypes"), "count") && v78 != *(v19 + 312))
    {
      *&cf = BWDetectedObjectsCreateFilteredDetectedObjectsOnlySampleBufferFromSampleBufferUsingSet(v116, [*(v19 + v117[673]) enabledDetectedObjectTypes], v112, v113, v114, v115);
      [(BWMultiStreamCameraSourceNode *)v19 _addCaptureStreamAttachmentsToSampleBuffer:?];
      goto LABEL_154;
    }
  }

  else
  {
    if (v298)
    {
      BWDetectedFacesRemoveFacesFromSampleBuffer(v116);
    }

    else if (HIDWORD(cf) == 1)
    {
      BWDetectedFacesConvertSampleBufferFacesFromSensorToBufferCoordinateSpace(v116);
      BWDetectedObjectsConvertSampleBufferDetectedObjectsFromSensorToBufferCoordinateSpace(v116);
    }

    v298 = 0;
  }

  *&cf = 0;
LABEL_154:
  if (v80)
  {
    [*(v19 + 11992) transferFacesToSampleBuffer:v116 transformToBufferSpace:1 sourceCropRect:{*(v79 + 136), *(v79 + 144), *(v79 + 152), *(v79 + 160)}];
    [*(v19 + 12000) transferObjectsToSampleBuffer:v116 transformToBufferSpace:1 sourceCropRect:{*(v79 + 136), *(v79 + 144), *(v79 + 152), *(v79 + 160)}];
    [*(v19 + 12008) filterDetectedFacesInSampleBuffer:v116];
    v298 = 0;
    v126 = HIDWORD(v297) < 8;
    goto LABEL_168;
  }

  if (HIDWORD(v297) < 8)
  {
    v126 = 1;
    goto LABEL_168;
  }

  if ((v298 & 1) == 0 && ![(CMTime *)v301 objectForKeyedSubscript:*off_1E798B218])
  {
    v127 = *MEMORY[0x1E695F050];
    v128 = *(MEMORY[0x1E695F050] + 8);
    v129 = *(MEMORY[0x1E695F050] + 16);
    v130 = *(MEMORY[0x1E695F050] + 24);
    [*(v19 + 11992) transferFacesToSampleBuffer:v116 transformToBufferSpace:0 sourceCropRect:{*MEMORY[0x1E695F050], v128, v129, v130}];
    if ([(CMTime *)v301 objectForKeyedSubscript:*off_1E798B220])
    {
      goto LABEL_166;
    }

    goto LABEL_162;
  }

  if (![(CMTime *)v301 objectForKeyedSubscript:*off_1E798B220])
  {
    v127 = *MEMORY[0x1E695F050];
    v128 = *(MEMORY[0x1E695F050] + 8);
    v129 = *(MEMORY[0x1E695F050] + 16);
    v130 = *(MEMORY[0x1E695F050] + 24);
LABEL_162:
    [*(v19 + 12000) transferObjectsToSampleBuffer:v116 transformToBufferSpace:0 sourceCropRect:{v127, v128, v129, v130}];
LABEL_166:
    [*(v19 + 12008) filterDetectedFacesInSampleBuffer:v116];
  }

  BWDetectedFacesConvertSampleBufferFacesFromSensorToBufferCoordinateSpace(v116);
  BWDetectedObjectsConvertSampleBufferDetectedObjectsFromSensorToBufferCoordinateSpace(v116);
  v126 = 0;
LABEL_168:
  if ([*(v19 + v117[673]) cameraIntrinsicMatrixDeliveryOnVideoCaptureOutputEnabled] && v78 == *(v19 + 240) || objc_msgSend(*(v19 + v117[673]), "cameraIntrinsicMatrixDeliveryOnPreviewOutputEnabled") && v78 == *(v19 + 232))
  {
    [(BWMultiStreamCameraSourceNode *)v19 _attachCameraIntrinsicMatrixToSampleBuffer:v116 scaledToVideoBuffer:1uLL addToMetadataDictInTotalSensorCoords:v131, v132, v133, v134, v289, target, v292, FrameworkRadarComponent, v294, SHIDWORD(v294), buffer, cf, v297, v298, v300, v301, v302, v303, v304, sbuf, v307, block, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318];
  }

  if (v78 == *(v19 + 256))
  {
    v135 = [*(v19 + v117[673]) originalCameraIntrinsicMatrixDeliveryOnStillImageOutputEnabled];
  }

  else
  {
    v135 = 0;
  }

  if ((v78 != *(v19 + 232) || ([*(v19 + v117[673]) originalCameraIntrinsicMatrixDeliveryOnPreviewOutputEnabled] & 1) == 0) && (v78 != *(v19 + 240) || (objc_msgSend(*(v19 + v117[673]), "originalCameraIntrinsicMatrixDeliveryOnVideoCaptureOutputEnabled") & 1) == 0) && (v78 != *(v19 + 248) || (objc_msgSend(*(v19 + v117[673]), "originalCameraIntrinsicMatrixDeliveryOnStillImageOutputEnabled") & 1) == 0) && (v78 != *(v19 + 256) || (objc_msgSend(*(v19 + v117[673]), "originalCameraIntrinsicMatrixDeliveryOnStillImageOutputEnabled") & 1) == 0))
  {
    if (v78 == *(v19 + 264))
    {
      if ((([*(v19 + v117[673]) originalCameraIntrinsicMatrixDeliveryOnDepthOutputEnabled] | v135) & 1) == 0)
      {
        goto LABEL_185;
      }
    }

    else if (!v135)
    {
      goto LABEL_185;
    }
  }

  *&v344 = 0;
  *(&v344 + 1) = v135;
  [(BWMultiStreamCameraSourceNode *)v19 _attachCameraIntrinsicMatrixToSampleBuffer:v116 scaledToVideoBuffer:v344 addToMetadataDictInTotalSensorCoords:v131, v132, v133, v134, v289, target, v292, FrameworkRadarComponent, v294, SHIDWORD(v294), buffer, cf, v297, v298, v300, v301, v302, v303, v304, sbuf, v307, block, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318];
LABEL_185:
  if ((BYTE8(cf) & 1) == 0 && HIDWORD(v297) >= 8 && DWORD2(v303) != 7)
  {
    v142 = CVBufferCopyAttachment(buffer, *MEMORY[0x1E6965F30], 0);
    v143 = v142 ? CFAutorelease(v142) : 0;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (([v143 isEqualToString:*MEMORY[0x1E6965F70]] & 1) != 0 || objc_msgSend(v143, "isEqualToString:", *MEMORY[0x1E6965F48])))
    {
      v175 = [(CMTime *)v301 objectForKeyedSubscript:*off_1E798B708];
      if (v175)
      {
        v176 = [v175 intValue];
        if (v176 != *(v79 + 504) + 1)
        {
          *(v79 + 500) = -1;
        }

        *(v79 + 504) = v176;
      }

      v177 = FigCaptureSceneIlluminationValueFromLuxLevel([(CMTime *)v301 objectForKeyedSubscript:*off_1E798B4B8], *(v79 + 500));
      v116 = sbuf;
      if (v177 != -1)
      {
        *(v79 + 500) = v177;
        CVBufferSetAttachment(buffer, *MEMORY[0x1E6965F18], [MEMORY[0x1E696AD98] numberWithUnsignedInt:v177], kCVAttachmentMode_ShouldPropagate);
      }
    }
  }

  if (v80)
  {
    if (v78 != *(v19 + 248) && v78 != *(v19 + 256))
    {
      multiStreamCameraSourceNode_outputSampleBuffer_cold_3();
    }

    v136 = [*(v19 + 136) activeStillImageCaptureType];
    v116 = sbuf;
    if ([*(v19 + 136) sourceNodeWillEmitStillImageSampleBuffer:sbuf])
    {
      goto LABEL_463;
    }

    goto LABEL_202;
  }

  if (DWORD2(v303) == 6)
  {
    v137 = [*(v19 + 136) sourceNodeWillEmitDepthSampleBuffer:v116];
    goto LABEL_201;
  }

  if (DWORD2(v303) == 7)
  {
    v137 = [*(v19 + 136) sourceNodeWillEmitPointCloudSampleBuffer:v116];
  }

  else
  {
    if (v126)
    {
      [*(v19 + 136) sourceNodeWillEmitDetectedFacesSampleBuffer:v116];
LABEL_241:
      v136 = 0;
      goto LABEL_202;
    }

    if (HIDWORD(cf) != 1)
    {
      goto LABEL_241;
    }

    v137 = [*(v19 + 136) sourceNodeWillEmitVideoSampleBuffer:v116 drivesCameraControls:(v297 >> 1) & 1 deliversStills:*(v79 + 4) & 1];
  }

LABEL_201:
  v136 = 0;
  if (v137)
  {
LABEL_463:
    multiStreamCameraSourceNode_outputSampleBuffer_cold_4();
    goto LABEL_203;
  }

LABEL_202:
  if (CMGetAttachment(v116, @"BWBurnAfterReading", 0) || (*(v19 + 12144) & 1) != 0)
  {
LABEL_203:
    v138 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_447;
  }

  v139 = sbuf;
  if (v298)
  {
    BWDetectedFacesRemoveFacesFromSampleBuffer(sbuf);
  }

  v140 = DWORD1(v303);
  if (([*(v19 + v117[673]) geometricDistortionCorrectionOnVideoCaptureOutputEnabled] & 1) != 0 || (objc_msgSend(*(v19 + v117[673]), "geometricDistortionCorrectionOnPreviewOutputEnabled") & 1) != 0 || objc_msgSend(*(v19 + v117[673]), "geometricDistortionCorrectionOnStillImageOutputEnabled"))
  {
    [(CMTime *)v301 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798A690];
    if (DWORD1(v303))
    {
      v141 = BWStillImageCaptureFrameFlagsForSampleBuffer(sbuf);
      if ([*(v19 + v117[673]) geometricDistortionCorrectionOnStillImageOutputEnabled] && (v141 & 0x4000000000000000) == 0 && (v141 & 0x9000000000000000) != 0x8000000000000000)
      {
LABEL_215:
        [(CMTime *)v301 setObject:&unk_1F2245F58 forKeyedSubscript:*off_1E798A698];
      }
    }

    else if (HIDWORD(cf) == 1)
    {
      if (v78 == *(v19 + 240) && ([*(v19 + v117[673]) geometricDistortionCorrectionOnVideoCaptureOutputEnabled] & 1) != 0 || v78 == *(v19 + 232) && objc_msgSend(*(v19 + v117[673]), "geometricDistortionCorrectionOnPreviewOutputEnabled"))
      {
        goto LABEL_215;
      }
    }

    else
    {
      ++multiStreamCameraSourceNode_outputSampleBuffer_errorLogCounter;
    }

    if ((DWORD2(v303) - 3) <= 2)
    {
      if (*(v19 + 12170) == 1)
      {
        BWPixelBufferDimensionsFromSampleBuffer(sbuf);
        [objc_msgSend(*(v19 + 128) "cameraInfoByPortType")];
        BWAddMinimumValidBufferRectForGDCIfNeededToSampleBuffer();
        v144 = *(MEMORY[0x1E695F050] + 16);
        time2 = *MEMORY[0x1E695F050];
        time2_16 = v144;
        if (FigCFDictionaryGetCGRectIfPresent())
        {
          FinalCropRect = FigCaptureMetadataUtilitiesGetFinalCropRect();
          v147 = v146;
          v149 = v148;
          v151 = v150;
          psn_pixelBufferDimensions(buffer);
          if (dword_1ED8445B0)
          {
            v341 = 0;
            v340 = OS_LOG_TYPE_DEFAULT;
            v152 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v153 = v341;
            if (os_log_type_enabled(v152, v340))
            {
              v154 = v153;
            }

            else
            {
              v154 = v153 & 0xFFFFFFFE;
            }

            if (v154)
            {
              v299 = BWStringFromCGRect(time2.x, time2.y, time2_16.x, time2_16.y);
              v155 = BWStringFromCGRect(FinalCropRect, v147, v149, v151);
              v19 = v304;
              FigCaptureMetadataUtilitiesDenormalizeCropRect(FinalCropRect, v147, v149, v151);
              v160 = BWStringFromCGRect(v156, v157, v158, v159);
              LODWORD(time1.value) = 136315906;
              *(&time1.value + 4) = "multiStreamCameraSourceNode_outputSampleBuffer";
              LOWORD(time1.flags) = 2114;
              *(&time1.flags + 2) = v299;
              HIWORD(time1.epoch) = 2114;
              v324 = v155;
              v325 = 2114;
              v326 = v160;
              LODWORD(target) = 42;
              v289 = &time1;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v140 = DWORD1(v303);
          }
        }

        v78 = v307;
      }

      else
      {
        psn_pixelBufferDimensions(buffer);
        ValidBufferRect = FigCaptureMetadataUtilitiesGetValidBufferRect();
        v163 = v162;
        v165 = v164;
        v167 = v166;
        if (dword_1ED8445B0)
        {
          LODWORD(time2.x) = 0;
          LOBYTE(v341) = 0;
          v168 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v169 = LODWORD(time2.x);
          if (os_log_type_enabled(v168, v341))
          {
            v170 = v169;
          }

          else
          {
            v170 = v169 & 0xFFFFFFFE;
          }

          if (v170)
          {
            v171 = BWStringFromCGRect(ValidBufferRect, v163, v165, v167);
            LODWORD(time1.value) = 136315394;
            *(&time1.value + 4) = "multiStreamCameraSourceNode_outputSampleBuffer";
            LOWORD(time1.flags) = 2114;
            *(&time1.flags + 2) = v171;
            LODWORD(target) = 22;
            v289 = &time1;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v19 = v304;
          v78 = v307;
          v140 = DWORD1(v303);
        }

        v346.origin.x = ValidBufferRect;
        v346.origin.y = v163;
        v346.size.width = v165;
        v346.size.height = v167;
        [(CMTime *)v301 setObject:CGRectCreateDictionaryRepresentation(v346) forKeyedSubscript:*off_1E798A7A0];
      }

      v139 = sbuf;
    }
  }

  if ((v140 & [*(v19 + v117[673]) reflectsStillsOnStreamingOutputs]) == 1 && HIDWORD(cf) != 1)
  {
    v187 = [*(v19 + 136) synchronizedStreamsEnabled];
    v188 = [*(v19 + v117[673]) discardsUnstableSphereVideoFrames];
    v189 = CMGetAttachment(v139, *(&buffer + 1), 0);
    if (v189)
    {
      if (v136 > 0xD)
      {
        goto LABEL_293;
      }

      if (((1 << v136) & 0x3C7C) != 0)
      {
        v190 = v189;
        if ((!v188 || (mscsn_sphereIsUnstableOrInActiveModeBasedOnMetadata(v189) & 1) == 0) && (!v187 || [objc_msgSend(v190 objectForKeyedSubscript:{*off_1E798B710), "BOOLValue"}]))
        {
          v191 = CMSampleBufferGetImageBuffer(v139);
          PixelFormatType = CVPixelBufferGetPixelFormatType(v191);
          if ((FigCapturePixelFormatIsVersatileRaw(PixelFormatType) & 1) == 0 && ![objc_msgSend(v190 objectForKeyedSubscript:{*off_1E798B788), "intValue"}])
          {
            if (((1 << v136) & 0x3C48) != 0)
            {
              v193 = [objc_msgSend(v190 objectForKeyedSubscript:{*off_1E798B558), "BOOLValue"}];
              goto LABEL_290;
            }

            if ((v136 & 0xFFFFFFFE) == 4)
            {
              if ([objc_msgSend(v190 objectForKeyedSubscript:{*off_1E798A5B8), "intValue"}] != 1)
              {
                v271 = [objc_msgSend(v190 objectForKeyedSubscript:{*off_1E798B1B8), "intValue"}];
                v193 = [objc_msgSend(v190 objectForKeyedSubscript:{*off_1E798B558), "BOOLValue"}];
                if (v271)
                {
                  goto LABEL_291;
                }

LABEL_290:
                if (v193)
                {
LABEL_291:
                  [BWMultiStreamCameraSourceNode _prependPreservedMotionDataToSampleBuffer:v19];
                  [(BWMultiStreamCameraSourceNode *)v19 _reflectStillSampleBufferOnStreamingOutputs:v139 captureType:v136];
                  goto LABEL_309;
                }
              }
            }

            else if (v136 != 2 || ([objc_msgSend(v190 objectForKeyedSubscript:{*off_1E798B5C8), "BOOLValue"}] & 1) == 0)
            {
              goto LABEL_291;
            }
          }
        }

LABEL_293:
        memset(&time, 0, 24);
        CMSampleBufferGetPresentationTimeStamp(&time.duration, v139);
        v194 = 0;
        v195 = (v19 + 436);
        while (v195[5] != 1 || (*v195 & 2) == 0)
        {
          ++v194;
          v195 += 512;
          if (v194 == 22)
          {
            LODWORD(v194) = 0;
            break;
          }
        }

        v196 = v19 + 432 + (v194 << 9);
        v197 = *(v196 + 68);
        if ((v197 & 0x1D) == 1)
        {
          v198 = *(v196 + 72);
          time1 = time.duration;
          time2.x = *(v196 + 56);
          LODWORD(time2.y) = *(v196 + 64);
          HIDWORD(time2.y) = v197;
          time2_16.x = v198;
          if (CMTimeCompare(&time1, &time2) >= 1)
          {
            [BWMultiStreamCameraSourceNode _preserveMotionDataForSoonToBeDroppedSampleBuffer:v19];
          }
        }

        goto LABEL_301;
      }
    }

    if (v136 == 1)
    {
      goto LABEL_309;
    }

    goto LABEL_293;
  }

LABEL_301:
  v199 = HIDWORD(cf) != 1 || v126;
  if ((v199 & 1) == 0)
  {
    v200 = [-[CMTime objectForKeyedSubscript:](v301 objectForKeyedSubscript:{*off_1E798B5A8), "intValue"}];
    v201 = [-[CMTime objectForKeyedSubscript:](v301 objectForKeyedSubscript:{*off_1E798B5A0), "intValue"}];
    if ((v200 | (v201 << 32)) == [*(v19 + 128) ultraHighResSensorRawPoolDimensions] && (objc_msgSend(-[CMTime objectForKeyedSubscript:](v301, "objectForKeyedSubscript:", *off_1E798B1B8), "intValue") > 0 || objc_msgSend(-[CMTime objectForKeyedSubscript:](v301, "objectForKeyedSubscript:", *off_1E798B558), "BOOLValue")))
    {
      v202 = MEMORY[0x1E695E118];
      CMSetAttachment(v139, @"IsHarvestedStillFrame", MEMORY[0x1E695E118], 1u);
      CMSetAttachment(v139, @"IsHarvestedUltraHighResolutionStillFrame", v202, 1u);
    }
  }

LABEL_309:
  if ((v297 & 2) != 0)
  {
    [BWMultiStreamCameraSourceNode _prependPreservedMotionDataToSampleBuffer:v19];
  }

  if (!v126)
  {
    [(BWMultiStreamCameraSourceNode *)v19 _addMetadataUsedByVideoEncoderToPixelBufferForSampleBuffer:v139 nodeOutput:v78];
    [(BWMultiStreamCameraSourceNode *)v19 _addDolbyVisionMetadataToPreviewPixelBufferForSampleBuffer:v139 nodeOutput:v78];
  }

  v203 = buffer;
  if ([*(v19 + v117[673]) depthType] - 1 > 1)
  {
    goto LABEL_351;
  }

  [*(v19 + 128) maxContinuousZoomFactorForDepthDataDelivery];
  v205 = v204;
  [objc_msgSend(*(v19 + 128) "zoomCommandHandler")];
  v208 = v206 > v205 && v205 > 0.0;
  if (DWORD2(v303) == 6)
  {
    if (v208)
    {
      goto LABEL_203;
    }

    v203 = buffer;
    if (!sbuf)
    {
      goto LABEL_332;
    }

    value = CFRetain(sbuf);
    if (!value)
    {
      goto LABEL_332;
    }

    goto LABEL_324;
  }

  if ((BYTE4(v303) & 1) == 0 && ![*(v19 + v117[673]) depthOutputEnabled] || (objc_msgSend(*(v19 + v117[673]), "discardsDepthDataForStillImages") & 1) == 0)
  {
    if (v208)
    {
      CMRemoveAttachment(sbuf, *off_1E798A328);
    }

    else
    {
      multiStreamCameraSourceNode_outputSampleBuffer_cold_5();
      value = time.duration.value;
      if (time.duration.value)
      {
LABEL_324:
        if ([v19 hardwareDepthFilteringEnabled])
        {
          [CMGetAttachment(value *(&buffer + 1)];
        }

        CMSetAttachment(value, @"DepthPixelBufferType", *(v19 + 392), 1u);
        CFRelease(value);
      }
    }
  }

LABEL_332:
  if (*(v19 + 192) != 1)
  {
    goto LABEL_351;
  }

  v210 = [(CMTime *)v301 objectForKeyedSubscript:*off_1E798B708];
  v211 = [v210 intValue];
  v212 = [(CMTime *)v301 objectForKeyedSubscript:*off_1E798B3F8];
  if (v210)
  {
    v213 = v212;
    if ([v212 intValue] == 2)
    {
      v214 = *(v19 + 12064);
      v215 = v214 - v211 > 30 && v214 > v211;
      if (v214 < v211 || v215)
      {
        v216 = &OBJC_IVAR___BWMultiStreamCameraSourceNode__infraredProjectorUptimeInUsForLowPowerSparse;
        if (DWORD1(v303))
        {
          v216 = &OBJC_IVAR___BWMultiStreamCameraSourceNode__infraredProjectorUptimeInUsForHighPowerSparse;
        }

        *(v19 + *v216) += 2940;
      }
    }

    [-[CMTime objectForKeyedSubscript:](v301 objectForKeyedSubscript:{*off_1E798B6F0), "BOOLValue"}];
    [v213 intValue];
    *(v19 + 12064) = v211;
  }

  v217 = [CMGetAttachment(sbuf *off_1E798D4E0];
  if ((*(v19 + 12168) & 1) == 0 && v217 > 1)
  {
    v218 = 1;
    v219 = MEMORY[0x1E695E110];
LABEL_350:
    [*(v304 + 144) setPropertyIfSupported:*off_1E798C1A8 value:v219];
    *(v304 + 12168) = v218;
    v19 = v304;
    goto LABEL_351;
  }

  if (*(v19 + 12168) && v217 <= 1)
  {
    v218 = 0;
    v219 = MEMORY[0x1E695E118];
    goto LABEL_350;
  }

LABEL_351:
  if (DWORD1(v303))
  {
    if ([*(v19 + v117[673]) stillImageOutputSensorInterfaceRawAttachmentOptionRetainedBufferCount])
    {
      v220 = *off_1E798A448;
      v221 = CMGetAttachment(sbuf, *off_1E798A448, 0);
      v222 = [v221 objectForKeyedSubscript:*off_1E798A2D0];
      if (v222)
      {
        [(BWMultiStreamCameraSourceNode *)v19 _propagatePixelBufferAttachment:v222 sampleBuffer:sbuf attachedMediaKey:-233133328 removeAttachmentKey:v220 resetValidBufferRect:0, v223, v224, v290, target, v292, *(&v292 + 1), FrameworkRadarComponent, v294, buffer, *(&buffer + 1), cf, *(&cf + 1)];
      }
    }

    if ([*(v19 + v117[673]) stillImageOutputSashimiRawAttachmentOptionRetainedBufferCount])
    {
      multiStreamCameraSourceNode_outputSampleBuffer_cold_6(v19, sbuf, v225, v226);
    }

    if ([*(v19 + v117[673]) stillImageOutputSushiRawAttachmentOptionSupportEnabled] && *(v19 + 11912) == 1)
    {
      multiStreamCameraSourceNode_outputSampleBuffer_cold_7(v19, sbuf, v227, v228);
    }

    if ([*(v19 + v117[673]) stillImageOutputFocusPixelDataAttachmentOptionRetainedBufferCount])
    {
      multiStreamCameraSourceNode_outputSampleBuffer_cold_8(v19, sbuf);
    }
  }

  if ([*(v19 + v117[673]) visionDataConfiguration])
  {
    v229 = BYTE4(v303);
  }

  else
  {
    v229 = 1;
  }

  if ((v229 & 1) == 0)
  {
    v230 = *off_1E798A530;
    v231 = CVBufferCopyAttachment(v203, *off_1E798A530, 0);
    if (v231)
    {
      v232 = CFAutorelease(v231);
      if (v232)
      {
        v233 = v232;
        if (([CMGetAttachment(sbuf @"FrameIsBlackened"] & 1) == 0)
        {
          time1.value = 0;
          v234 = *(MEMORY[0x1E6960CF0] + 48);
          *&time.presentationTimeStamp.timescale = *(MEMORY[0x1E6960CF0] + 32);
          *&time.decodeTimeStamp.value = v234;
          time.decodeTimeStamp.epoch = *(MEMORY[0x1E6960CF0] + 64);
          v235 = *(MEMORY[0x1E6960CF0] + 16);
          *&time.duration.value = *MEMORY[0x1E6960CF0];
          *&time.duration.epoch = v235;
          if ((*(v19 + 12136) || !CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x1E695E480], v233, (v19 + 12136))) && !CMSampleBufferGetSampleTimingInfo(sbuf, 0, &time))
          {
            CMSampleBufferCreateForImageBuffer(*MEMORY[0x1E695E480], v233, 1u, 0, 0, *(v19 + 12136), &time, &time1);
          }

          if (time1.value)
          {
            v236 = CMGetAttachment(sbuf, *MEMORY[0x1E6960470], 0);
            if (v236)
            {
              v237 = v236;
              [objc_msgSend(objc_msgSend(*(v19 + v117[673]) "visionDataConfiguration")];
              v239 = BWGetScaledCameraIntrinsicsMatrix(v237, 1.0 / v238);
              if (v239)
              {
                CMSetAttachment(time1.value, @"VisionDataCameraIntrinsicMatrix", v239, 1u);
              }
            }

            BWSampleBufferSetAttachedMedia(sbuf, 0x1F2192EF0, time1.value);
            CMSetAttachment(sbuf, *off_1E798D2C8, MEMORY[0x1E695E118], 1u);
            if (time1.value)
            {
              CFRelease(time1.value);
            }
          }
        }

        CVBufferRemoveAttachment(v203, v230);
      }
    }
  }

  v240 = *(v302 + 16);
  if (v240 == [v19 previewOutput] && (objc_msgSend(objc_msgSend(v19, "configuration"), "preLTMThumbnailOnPreviewOutputEnabled") & 1) != 0 || (v241 = *(v302 + 16), v241 == objc_msgSend(v19, "videoCaptureOutput")) && objc_msgSend(objc_msgSend(v19, "configuration"), "preLTMThumbnailOnVideoCaptureOutputEnabled"))
  {
    v242 = *off_1E798B000;
    v243 = CMGetAttachment(v203, *off_1E798B000, 0);
    if (v243)
    {
      v244 = v243;
      time1.value = 0;
      CMSampleBufferGetPresentationTimeStamp(&time.duration, sbuf);
      if (BWSampleBufferCreateFromPixelBuffer(v244, &time, (v19 + 11960), &time1))
      {
        multiStreamCameraSourceNode_outputSampleBuffer_cold_9();
        goto LABEL_203;
      }

      Attachment = CMC_CVBufferGetAttachment(v244, *(&buffer + 1));
      if (Attachment)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, Attachment);
        CMSetAttachment(time1.value, *(&buffer + 1), MutableCopy, 1u);
        CMSetAttachment(v244, *(&buffer + 1), MutableCopy, 1u);
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }
      }

      BWSampleBufferSetAttachedMedia(sbuf, @"PreLTMThumbnail", time1.value);
      if (time1.value)
      {
        CFRelease(time1.value);
      }

      CVBufferRemoveAttachment(v203, v242);
    }
  }

  v247 = *(v302 + 16);
  if (v247 == [v19 previewOutput] && (objc_msgSend(objc_msgSend(v19, "configuration"), "ltmThumbnailOnPreviewOutputEnabled") & 1) != 0 || (v248 = *(v302 + 16), v248 == objc_msgSend(v19, "videoCaptureOutput")) && objc_msgSend(objc_msgSend(v19, "configuration"), "ltmThumbnailOnVideoCaptureOutputEnabled"))
  {
    v249 = *off_1E798AFE8;
    v250 = CMGetAttachment(v203, *off_1E798AFE8, 0);
    if (v250)
    {
      v251 = v250;
      time1.value = 0;
      CMSampleBufferGetPresentationTimeStamp(&time.duration, sbuf);
      if (BWSampleBufferCreateFromPixelBuffer(v251, &time, (v19 + 11968), &time1))
      {
        multiStreamCameraSourceNode_outputSampleBuffer_cold_10();
        goto LABEL_203;
      }

      v252 = CMC_CVBufferGetAttachment(v251, *(&buffer + 1));
      if (v252)
      {
        v253 = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v252);
        CMSetAttachment(time1.value, *(&buffer + 1), v253, 1u);
        CMSetAttachment(v251, *(&buffer + 1), v253, 1u);
        if (v253)
        {
          CFRelease(v253);
        }
      }

      BWSampleBufferSetAttachedMedia(sbuf, @"LTMThumbnail", time1.value);
      if (time1.value)
      {
        CFRelease(time1.value);
      }

      CVBufferRemoveAttachment(v203, v249);
    }
  }

  v254 = *(v302 + 16);
  if (v254 == [v19 previewOutput] && (objc_msgSend(objc_msgSend(v19, "configuration"), "weightSegmentMapOnPreviewOutputEnabled") & 1) != 0 || (v255 = *(v302 + 16), v255 == objc_msgSend(v19, "videoCaptureOutput")) && objc_msgSend(objc_msgSend(v19, "configuration"), "weightSegmentMapOnVideoCaptureOutputEnabled"))
  {
    v256 = *off_1E798B040;
    v257 = CMGetAttachment(v203, *off_1E798B040, 0);
    if (v257)
    {
      v258 = v257;
      time1.value = 0;
      CMSampleBufferGetPresentationTimeStamp(&time.duration, sbuf);
      if (BWSampleBufferCreateFromPixelBuffer(v258, &time, (v19 + 11976), &time1))
      {
        multiStreamCameraSourceNode_outputSampleBuffer_cold_11();
        goto LABEL_203;
      }

      v259 = CMC_CVBufferGetAttachment(v258, *(&buffer + 1));
      if (v259)
      {
        v260 = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v259);
        CMSetAttachment(time1.value, *(&buffer + 1), v260, 1u);
        CMSetAttachment(v258, *(&buffer + 1), v260, 1u);
        if (v260)
        {
          CFRelease(v260);
        }
      }

      BWSampleBufferSetAttachedMedia(sbuf, 0x1F21AB1F0, time1.value);
      if (time1.value)
      {
        CFRelease(time1.value);
      }

      CVBufferRemoveAttachment(v203, v256);
    }
  }

  v261 = *(v302 + 16);
  if (v261 != [v19 previewOutput] || (objc_msgSend(objc_msgSend(v19, "configuration"), "postColorProcessingThumbnailOnPreviewOutputEnabled") & 1) == 0)
  {
    v262 = *(v302 + 16);
    if (v262 != [v19 videoCaptureOutput] || !objc_msgSend(objc_msgSend(v19, "configuration"), "postColorProcessingThumbnailOnVideoCaptureOutputEnabled"))
    {
      goto LABEL_429;
    }
  }

  v263 = *off_1E798AFF8;
  v264 = CMGetAttachment(v203, *off_1E798AFF8, 0);
  if (!v264)
  {
    goto LABEL_429;
  }

  v265 = v264;
  time1.value = 0;
  CMSampleBufferGetPresentationTimeStamp(&time.duration, sbuf);
  if (BWSampleBufferCreateFromPixelBuffer(v265, &time, (v19 + 11984), &time1))
  {
    multiStreamCameraSourceNode_outputSampleBuffer_cold_12();
    goto LABEL_203;
  }

  v266 = CMC_CVBufferGetAttachment(v265, *(&buffer + 1));
  if (v266)
  {
    v267 = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v266);
    CMSetAttachment(time1.value, *(&buffer + 1), v267, 1u);
    CMRemoveAttachment(v265, *(&buffer + 1));
    if (v267)
    {
      CFRelease(v267);
    }
  }

  BWSampleBufferSetAttachedMedia(sbuf, 0x1F21AB1D0, time1.value);
  if (time1.value)
  {
    CFRelease(time1.value);
  }

  CVBufferRemoveAttachment(v203, v263);
LABEL_429:
  if (*(v302 + 184) && (*(v302 + 494) & 1) == 0)
  {
    [BWMultiStreamCameraSourceNode _tallyCompressedIOSurfaceStatsForSBuf:v19 outputStorage:?];
  }

  if ((v297 & 2) != 0 && *(v19 + 12132) == 1)
  {
    [(BWMultiStreamCameraSourceNode *)v19 _tallyCompressedIOSurfaceStatsForRawForSBuf:?];
  }

  if (v78 == *(v19 + 248))
  {
    FigCaptureMetadataUtilitiesAdjustValidBufferRectForDarkShadeCropping(sbuf);
  }

  if (*(v302 + 495) == 1)
  {
    IOSurface = CVPixelBufferGetIOSurface(v203);
    ID = IOSurfaceGetID(IOSurface);
  }

  else
  {
    ID = 0;
  }

  if (((v78 == *(v19 + 248)) & ~DWORD1(v303)) == 0)
  {
    [v78 emitSampleBuffer:sbuf];
    CMSampleBufferGetPresentationTimeStamp(&time.duration, sbuf);
    *(v302 + 56) = *&time.duration.value;
    *(v302 + 72) = time.duration.epoch;
    if (HIDWORD(cf) == 1)
    {
      memset(&time, 0, 24);
      CMSampleBufferGetPresentationTimeStamp(&time.duration, sbuf);
      v270 = *(v302 + 80);
      time1 = time.duration;
      [v270 incrementWithPTS:&time1];
    }
  }

  if (*(v302 + 496) == 1)
  {
    [(BWMultiStreamCameraSourceNode *)v19 _prefetchPixelBufferForOutputStorage:v302 numberOfBuffersToFetch:2 lastEmittedSurfaceID:ID];
  }

  v138 = cf;
  if (cf)
  {
    [*(v19 + 136) sourceNodeWillEmitDetectedFacesSampleBuffer:cf];
    [*(v19 + 312) emitSampleBuffer:cf];
LABEL_447:
    CFRelease(v138);
  }
}

uint64_t captureSessionServer_serializeSessionNotification(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __CFDictionary **a5, void *a6)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return 1;
  }

  if (a4)
  {
    v60[0] = @"DidStartFigAssetWriterRecording";
    v60[1] = @"DidStopFigAssetWriterRecording";
    if (([objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:{2), "containsObject:", a3}] & 1) == 0)
    {
      v45 = a6;
      v59[0] = 0x1F21863F0;
      v59[1] = 0x1F2186410;
      v59[2] = 0x1F2186430;
      v59[3] = 0x1F2186450;
      v59[4] = 0x1F2186470;
      v59[5] = 0x1F2186410;
      v59[6] = 0x1F2186430;
      v59[7] = 0x1F2186450;
      v59[8] = 0x1F21863F0;
      v59[9] = 0x1F2186410;
      v59[10] = 0x1F2186490;
      v59[11] = 0x1F2186430;
      v59[12] = 0x1F2186450;
      v59[13] = 0x1F21864B0;
      v59[14] = 0x1F21864D0;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:15];
      v9 = [MEMORY[0x1E695DFD8] setWithArray:v8];
      v10 = [objc_msgSend(MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(a4, "allKeys")), "intersectsSet:", v9}];
      v11 = CFDictionaryGetValue(a4, @"FormatDescription");
      v12 = CFDictionaryGetValue(a4, @"SampleBuffer");
      v58 = CFDictionaryGetValue(a4, @"Surface");
      v57 = CFDictionaryGetValue(a4, @"PreviewSampleBuffer");
      v56 = CFDictionaryGetValue(a4, @"PreviewSurface");
      v55 = CFDictionaryGetValue(a4, @"ThumbnailSurface");
      v54 = CFDictionaryGetValue(a4, @"DepthDataSurface");
      v46 = CFDictionaryGetValue(a4, @"ConstantColorConfidenceMapSurface");
      v52 = CFDictionaryGetValue(a4, @"PortraitEffectsMatteSurface");
      v51 = CFDictionaryGetValue(a4, @"HairSegmentationMatteSurface");
      v50 = CFDictionaryGetValue(a4, @"SkinSegmentationMatteSurface");
      v49 = CFDictionaryGetValue(a4, @"TeethSegmentationMatteSurface");
      v48 = CFDictionaryGetValue(a4, @"GlassesSegmentationMatteSurface");
      v53 = CFDictionaryGetValue(a4, @"DeferredPhotoProxySurface");
      v47 = CFDictionaryGetValue(a4, @"MasterClock");
      v13 = CFDictionaryGetValue(a4, @"RemoteQueueReceiver");
      v14 = v12 != 0;
      if ((v10 & 1) == 0 && !v11 && !v12 && !v58 && !v53 && !v57 && !v56 && !v55 && !v54 && !v52 && !v51 && !v50 && !v49 && !v48 && !v13 && !v47 && !v46)
      {
        return 0;
      }

      value = v13;
      v17 = *MEMORY[0x1E695E480];
      Count = CFDictionaryGetCount(a4);
      MutableCopy = CFDictionaryCreateMutableCopy(v17, Count, a4);
      v20 = MutableCopy;
      if (v10)
      {
        [(__CFDictionary *)MutableCopy removeObjectsForKeys:v8];
      }

      if (v11)
      {
        CFDictionaryRemoveValue(v20, @"FormatDescription");
        if (FigRemote_CreateSerializableDictionaryForFormatDescription())
        {
          goto LABEL_95;
        }

        CFDictionarySetValue(v20, @"FormatDescription_Serialized", 0);
      }

      if (v12)
      {
        CFDictionaryRemoveValue(v20, @"SampleBuffer");
        OUTLINED_FUNCTION_6_70();
        if (FigRemote_CreateSerializedAtomDataAndSurfaceForSampleBuffer())
        {
          goto LABEL_95;
        }

        FigXPCMessageSetAndConsumeVMData();
      }

      if (v58)
      {
        CFDictionaryRemoveValue(v20, @"Surface");
        XPCObject = IOSurfaceCreateXPCObject(v58);
        if (!XPCObject)
        {
          goto LABEL_86;
        }

        v22 = XPCObject;
        xpc_dictionary_set_value(v45, kFigCaptureSessionNotificationPayloadKey_Surface_Serialized, XPCObject);
        xpc_release(v22);
        v14 = 1;
        if (!v57)
        {
LABEL_38:
          if (v56)
          {
            CFDictionaryRemoveValue(v20, @"PreviewSurface");
            v23 = IOSurfaceCreateXPCObject(v56);
            if (!v23)
            {
              goto LABEL_86;
            }

            v24 = v23;
            OUTLINED_FUNCTION_5_72(v23, kFigCaptureSessionNotificationPayloadKey_PreviewSurface_Serialized);
            xpc_release(v24);
            v14 = 1;
          }

          if (v55)
          {
            CFDictionaryRemoveValue(v20, @"ThumbnailSurface");
            v25 = IOSurfaceCreateXPCObject(v55);
            if (!v25)
            {
              goto LABEL_86;
            }

            v26 = v25;
            OUTLINED_FUNCTION_5_72(v25, kFigCaptureSessionNotificationPayloadKey_ThumbnailSurface_Serialized);
            xpc_release(v26);
            v14 = 1;
          }

          if (v54)
          {
            CFDictionaryRemoveValue(v20, @"DepthDataSurface");
            v27 = IOSurfaceCreateXPCObject(v54);
            if (!v27)
            {
              goto LABEL_86;
            }

            v28 = v27;
            OUTLINED_FUNCTION_5_72(v27, kFigCaptureSessionNotificationPayloadKey_DepthDataSurface_Serialized);
            xpc_release(v28);
            v14 = 1;
          }

          if (v46)
          {
            CFDictionaryRemoveValue(v20, @"ConstantColorConfidenceMapSurface");
            v29 = IOSurfaceCreateXPCObject(v46);
            if (!v29)
            {
              goto LABEL_86;
            }

            v30 = v29;
            OUTLINED_FUNCTION_5_72(v29, kFigCaptureSessionNotificationPayloadKey_ConstantColorConfidenceMapSurface_Serialized);
            xpc_release(v30);
            v14 = 1;
          }

          if (v52)
          {
            CFDictionaryRemoveValue(v20, @"PortraitEffectsMatteSurface");
            v31 = IOSurfaceCreateXPCObject(v52);
            if (!v31)
            {
              goto LABEL_86;
            }

            v32 = v31;
            OUTLINED_FUNCTION_5_72(v31, kFigCaptureSessionNotificationPayloadKey_PortraitEffectsMatteSurface_Serialized);
            xpc_release(v32);
            v14 = 1;
          }

          if (v51)
          {
            CFDictionaryRemoveValue(v20, @"HairSegmentationMatteSurface");
            v33 = IOSurfaceCreateXPCObject(v51);
            if (!v33)
            {
              goto LABEL_86;
            }

            v34 = v33;
            OUTLINED_FUNCTION_5_72(v33, kFigCaptureSessionNotificationPayloadKey_HairSegmentationMatteSurface_Serialized);
            xpc_release(v34);
            v14 = 1;
          }

          if (v50)
          {
            CFDictionaryRemoveValue(v20, @"SkinSegmentationMatteSurface");
            v35 = IOSurfaceCreateXPCObject(v50);
            if (!v35)
            {
              goto LABEL_86;
            }

            v36 = v35;
            OUTLINED_FUNCTION_5_72(v35, kFigCaptureSessionNotificationPayloadKey_SkinSegmentationMatteSurface_Serialized);
            xpc_release(v36);
            v14 = 1;
          }

          if (v49)
          {
            CFDictionaryRemoveValue(v20, @"TeethSegmentationMatteSurface");
            v37 = IOSurfaceCreateXPCObject(v49);
            if (!v37)
            {
              goto LABEL_86;
            }

            v38 = v37;
            OUTLINED_FUNCTION_5_72(v37, kFigCaptureSessionNotificationPayloadKey_TeethSegmentationMatteSurface_Serialized);
            xpc_release(v38);
            v14 = 1;
          }

          if (v48)
          {
            CFDictionaryRemoveValue(v20, @"GlassesSegmentationMatteSurface");
            v39 = IOSurfaceCreateXPCObject(v48);
            if (!v39)
            {
              goto LABEL_86;
            }

            v40 = v39;
            OUTLINED_FUNCTION_5_72(v39, kFigCaptureSessionNotificationPayloadKey_GlassesSegmentationMatteSurface_Serialized);
            xpc_release(v40);
            v14 = 1;
          }

          if (!v53)
          {
            goto LABEL_68;
          }

          CFDictionaryRemoveValue(v20, @"DeferredPhotoProxySurface");
          v41 = IOSurfaceCreateXPCObject(v53);
          if (v41)
          {
            v42 = v41;
            OUTLINED_FUNCTION_5_72(v41, kFigCaptureSessionNotificationPayloadKey_DeferredPhotoProxySurface_Serialized);
            xpc_release(v42);
            v14 = 1;
LABEL_68:
            if (v47)
            {
              CFDictionaryRemoveValue(v20, @"MasterClock");
            }

            if (value)
            {
              xpc_dictionary_set_value(v45, kFigCaptureSessionRemoteQueueUpdatedNotificationPayloadKey_RemoteQueueReceiver_Serialized, value);
              CFDictionaryRemoveValue(v20, @"RemoteQueueReceiver");
              v14 = 1;
            }

            if (!CFDictionaryGetCount(v20) && v20)
            {
              CFRelease(v20);
              v20 = 0;
            }

            if (!v14)
            {
              *a5 = v20;
              return 4;
            }

            if (!FigXPCMessageSetCFDictionary())
            {
              v15 = 2;
              if (!v20)
              {
                return v15;
              }

LABEL_78:
              CFRelease(v20);
              return v15;
            }

            goto LABEL_95;
          }

LABEL_86:
          OUTLINED_FUNCTION_0_100();
          goto LABEL_96;
        }
      }

      else if (!v57)
      {
        goto LABEL_38;
      }

      CFDictionaryRemoveValue(v20, @"PreviewSampleBuffer");
      OUTLINED_FUNCTION_6_70();
      if (!FigRemote_CreateSerializedAtomDataAndSurfaceForSampleBuffer())
      {
        FigXPCMessageSetAndConsumeVMData();
        v14 = 1;
        goto LABEL_38;
      }

LABEL_95:
      OUTLINED_FUNCTION_1_5();
LABEL_96:
      FigDebugAssert3();
      v15 = 1;
      if (!v20)
      {
        return v15;
      }

      goto LABEL_78;
    }

    return 1;
  }

  return 0;
}

uint64_t cs_notificationPayloadForSectionFormatChanged(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v8 = @"SectionID";
      v9 = @"FormatDescription";
      v10 = result;
      v11 = a2;
      v2 = MEMORY[0x1E695DF20];
      v3 = &v10;
      v4 = &v8;
      v5 = 2;
    }

    else
    {
      v6 = @"SectionID";
      v7 = result;
      v2 = MEMORY[0x1E695DF20];
      v3 = &v7;
      v4 = &v6;
      v5 = 1;
    }

    return [v2 dictionaryWithObjects:v3 forKeys:v4 count:{v5, v6, v7, v8, v9, v10, v11}];
  }

  return result;
}

void FigCaptureLogCameraStreamingPowerEvent(int a1, const void *a2, int a3, char a4, uint64_t a5, uint64_t a6, char a7, char a8, float a9, __int128 *a10)
{
  if (a10)
  {
    v16 = a10[1];
    v34 = *a10;
    v35 = v16;
    v36 = *(a10 + 8);
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
  }

  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (qword_1ED844E98)
  {
    if (sCameraPowerLogEventQueue)
    {
      if (dword_1ED844470)
      {
        v33 = 0;
        v32 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (a2)
      {
        CFRetain(a2);
      }

      atomic_fetch_add_explicit(&qword_1ED844EA8, 1uLL, memory_order_relaxed);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __FigCaptureLogCameraStreamingPowerEvent_block_invoke;
      block[3] = &__block_descriptor_108_e5_v8__0l;
      v22 = a1;
      v23 = a3;
      v28 = a4;
      block[4] = a2;
      block[5] = a5;
      block[6] = a6;
      v24 = a9;
      v29 = a7;
      v30 = a8;
      v31 = a10 != 0;
      v25 = v34;
      v26 = v35;
      v27 = v36;
      dispatch_async(sCameraPowerLogEventQueue, block);
    }

    else
    {
      FigCaptureLogCameraStreamingPowerEvent_cold_1();
    }
  }

  else
  {
    FigCaptureLogCameraStreamingPowerEvent_cold_2();
  }
}

unint64_t BWPixelBufferDimensionsFromSampleBuffer(opaqueCMSampleBuffer *a1)
{
  if (!a1)
  {
    return 0;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a1);
  if (!ImageBuffer)
  {
    return 0;
  }

  v2 = ImageBuffer;
  Width = CVPixelBufferGetWidth(ImageBuffer);
  return Width | (CVPixelBufferGetHeight(v2) << 32);
}

double FigCaptureMetadataUtilitiesGetValidBufferRect()
{
  v1 = *MEMORY[0x1E695F050];
  if (FigCFDictionaryGetCGRectIfPresent())
  {
    return *&v1;
  }

  else
  {
    return 0.0;
  }
}

double FigCaptureMetadataUtilitiesGetSensorReadoutRect()
{
  v1 = *MEMORY[0x1E695F050];
  FigCFDictionaryGetCGRectIfPresent();
  return *&v1;
}

BOOL OUTLINED_FUNCTION_192(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_192_0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);

  return [v4 objectForKeyedSubscript:v2];
}

uint64_t OUTLINED_FUNCTION_232_0(uint64_t a1, void *a2)
{

  return [(BWPhotonicEngineNode *)a1 _setupProcessingStateForScalerIfNeededWithSettings:a2 sequenceNumber:v4 portType:v3 preNoiseReductionScaler:1 processingPlan:v2];
}

uint64_t OUTLINED_FUNCTION_127_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return [v6 countByEnumeratingWithState:v7 - 160 objects:va count:16];
}

BOOL OUTLINED_FUNCTION_127_2(NSObject *a1)
{
  v3 = *(v1 - 121);

  return os_log_type_enabled(a1, v3);
}

CGFloat mscsn_applyPreviewShiftToCropRect(double a1, double a2, CGFloat a3, CGFloat a4, double a5, double a6, float a7)
{
  v7 = a1 + a5;
  if (1.0 - a3 < v7)
  {
    v7 = 1.0 - a3;
  }

  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  v8 = a2 + a6;
  if (1.0 - a4 < v8)
  {
    v8 = 1.0 - a4;
  }

  if (v8 < 0.0)
  {
    v8 = 0.0;
  }

  return FigCaptureMetadataUtilitiesScaleRect(v7, v8, a3, a4, a7);
}

uint64_t FigCaptureMetadataUtilitiesDenormalizeCropRect(double a1, double a2, double a3, double a4)
{
  result = CGRectIsEmpty(*&a1);
  if (!result)
  {
    return CMIDenormalizeCropRect();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_240_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{

  return [a20 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t BWDetectedFacesConvertSampleBufferFacesFromSensorToBufferCoordinateSpace(const void *a1)
{
  v1 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  if (v1)
  {
    v2 = v1;
    v3 = *off_1E798A060;
    result = [objc_msgSend(v1 objectForKeyedSubscript:{*off_1E798A060), "BOOLValue"}];
    if ((result & 1) == 0)
    {
      v5 = *off_1E798B218;
      v6 = [v2 objectForKeyedSubscript:*off_1E798B218];
      result = [v6 count];
      if (result)
      {
        v7 = OUTLINED_FUNCTION_5_49();
        TransformFromSensorSpaceToSampleBufferWithNondisruptiveSwitching = mscsnu_getTransformFromSensorSpaceToSampleBufferWithNondisruptiveSwitching(v7, v2, v8);
        OUTLINED_FUNCTION_14(TransformFromSensorSpaceToSampleBufferWithNondisruptiveSwitching, v10, v11, v12, v13, v14, v15, v16, v25, v27, *&v29.a, *&v29.b, *&v29.c, *&v29.d, *&v29.tx, *&v29.ty, v30, v31, v32, v33, v34);
        IsIdentity = CGAffineTransformIsIdentity(&v29);
        if (!IsIdentity)
        {
          OUTLINED_FUNCTION_14(IsIdentity, v18, v19, v20, v21, v22, v23, v24, v26, v28, *&v29.a, *&v29.b, *&v29.c, *&v29.d, *&v29.tx, *&v29.ty, v30, v31, v32, v33, v34);
          [v2 setObject:FigCaptureMetadataUtilitiesApplyAffineTransformToFacesArray(v6 forKeyedSubscript:{&v29), v5}];
        }

        return [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v3];
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0();
    return FigDebugAssert3();
  }

  return result;
}

uint64_t BWDetectedObjectsConvertSampleBufferDetectedObjectsFromSensorToBufferCoordinateSpace(const void *a1)
{
  v1 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  if (v1)
  {
    v2 = v1;
    v3 = *off_1E798A0B0;
    result = [objc_msgSend(v1 objectForKeyedSubscript:{*off_1E798A0B0), "BOOLValue"}];
    if ((result & 1) == 0)
    {
      v5 = *off_1E798B220;
      result = [v2 objectForKeyedSubscript:*off_1E798B220];
      if (result)
      {
        v6 = result;
        v7 = OUTLINED_FUNCTION_5_49();
        TransformFromSensorSpaceToSampleBufferWithNondisruptiveSwitching = mscsnu_getTransformFromSensorSpaceToSampleBufferWithNondisruptiveSwitching(v7, v2, v8);
        OUTLINED_FUNCTION_14(TransformFromSensorSpaceToSampleBufferWithNondisruptiveSwitching, v10, v11, v12, v13, v14, v15, v16, v25, v27, *&v29.a, *&v29.b, *&v29.c, *&v29.d, *&v29.tx, *&v29.ty, v30, v31, v32, v33, v34);
        IsIdentity = CGAffineTransformIsIdentity(&v29);
        if (!IsIdentity)
        {
          OUTLINED_FUNCTION_14(IsIdentity, v18, v19, v20, v21, v22, v23, v24, v26, v28, *&v29.a, *&v29.b, *&v29.c, *&v29.d, *&v29.tx, *&v29.ty, v30, v31, v32, v33, v34);
          [v2 setObject:FigCaptureMetadataUtilitiesApplyAffineTransformToDetectedObjectsInfo(v6 forKeyedSubscript:{&v29), v5}];
        }

        return [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v3];
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0();
    return FigDebugAssert3();
  }

  return result;
}

CMSampleBufferRef BWDetectedObjectsCreateFilteredDetectedObjectsOnlySampleBufferFromSampleBufferUsingSet(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v41 = 0;
  v12 = *off_1E798A3C8;
  result = CMGetAttachment(a1, *off_1E798A3C8, 0);
  if (result)
  {
    v14 = result;
    v15 = *off_1E798B218;
    v16 = [(opaqueCMSampleBuffer *)result objectForKeyedSubscript:*off_1E798B218];
    v17 = *off_1E798B220;
    v18 = [(opaqueCMSampleBuffer *)v14 objectForKeyedSubscript:*off_1E798B220];
    if (v16 | v18)
    {
      v19 = v18;
      memset(&timingArrayOut, 0, sizeof(timingArrayOut));
      SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(a1, 1, &timingArrayOut, 0);
      result = 0;
      if (!SampleTimingInfoArray)
      {
        v21 = *MEMORY[0x1E695E480];
        CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 1, &timingArrayOut, 0, 0, &v41);
        v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v23 = [a2 containsObject:*off_1E798ACB8];
        if (v16)
        {
          v24 = v23 == 0;
        }

        else
        {
          v24 = 1;
        }

        if (!v24)
        {
          [v22 setObject:v16 forKeyedSubscript:v15];
        }

        v42.origin.x = a3;
        v42.origin.y = a4;
        v42.size.width = a5;
        v42.size.height = a6;
        if (!CGRectEqualToRect(v42, *MEMORY[0x1E695F058]))
        {
          v43.origin.x = a3;
          v43.origin.y = a4;
          v43.size.width = a5;
          v43.size.height = a6;
          DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v43);
          if (DictionaryRepresentation)
          {
            [v22 setObject:DictionaryRepresentation forKeyedSubscript:*off_1E798A5C8];
            [v22 setObject:DictionaryRepresentation forKeyedSubscript:*off_1E798A5D8];
          }
        }

        v26 = *off_1E798B710;
        v27 = [(opaqueCMSampleBuffer *)v14 objectForKeyedSubscript:*off_1E798B710];
        if (v27)
        {
          [v22 setObject:v27 forKeyedSubscript:v26];
        }

        if (v19)
        {
          v34 = v22;
          DeepCopy = CFPropertyListCreateDeepCopy(v21, v19, 1uLL);
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v29 = [v19 countByEnumeratingWithState:&v36 objects:v35 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v37;
            do
            {
              for (i = 0; i != v30; ++i)
              {
                if (*v37 != v31)
                {
                  objc_enumerationMutation(v19);
                }

                v33 = *(*(&v36 + 1) + 8 * i);
                if (([a2 containsObject:v33] & 1) == 0)
                {
                  [DeepCopy removeObjectForKey:v33];
                }
              }

              v30 = [v19 countByEnumeratingWithState:&v36 objects:v35 count:16];
            }

            while (v30);
          }

          v22 = v34;
          [v34 setObject:DeepCopy forKeyedSubscript:v17];
        }

        [v22 setObject:-[opaqueCMSampleBuffer objectForKeyedSubscript:](v14 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B228), *off_1E798B228}];
        CMSetAttachment(v41, v12, v22, 1u);

        return v41;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t doirb_findDetectedObjectsInfoClosestToPTS(void *a1, CMTime *a2)
{
  v4 = [a1 count];
  if (v4 < 1)
  {
    v7 = -1;
    v19 = -1;
  }

  else
  {
    v5 = 0;
    v6 = *off_1E798B780;
    v22 = v4 & 0x7FFFFFFF;
    v7 = -1;
    v23 = *MEMORY[0x1E6960C70];
    v8 = *(MEMORY[0x1E6960C70] + 16);
    while (1)
    {
      v9 = [a1 objectAtIndexedSubscript:v5];
      v33.epoch = v8;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      *&v33.value = v23;
      v10 = [v9 countByEnumeratingWithState:&v29 objects:v28 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v30;
        v13 = 3.4028e38;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v30 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v15 = [objc_msgSend(v9 objectForKeyedSubscript:{*(*(&v29 + 1) + 8 * i)), "objectForKeyedSubscript:", v6}];
            if (v15)
            {
              memset(&time1, 0, sizeof(time1));
              [v15 longLongValue];
              v16 = FigHostTimeToNanoseconds();
              CMTimeMake(&time, v16, 1000000000);
              CMTimeConvertScale(&time1, &time, a2->timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
              lhs = *a2;
              rhs = time1;
              CMTimeSubtract(&time, &lhs, &rhs);
              Seconds = CMTimeGetSeconds(&time);
              if (v13 > Seconds)
              {
                v33 = time1;
                v13 = Seconds;
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v29 objects:v28 count:16];
        }

        while (v11);
      }

      else
      {
        v13 = 3.4028e38;
      }

      if (fabsf(v13) > 0.5)
      {
        break;
      }

      time1 = v33;
      time = *a2;
      v18 = CMTimeCompare(&time1, &time);
      if (!v18)
      {
        if (v9)
        {
          return v9;
        }

        break;
      }

      v19 = v5;
      if (v18 < 1)
      {
        goto LABEL_26;
      }

      ++v5;
      v7 = v19;
      if (v5 == v22)
      {
        v7 = v19;
        break;
      }
    }

    v19 = -1;
LABEL_26:
    if ((v7 & 0x80000000) == 0 && v19 == -1)
    {
      return [a1 lastObject];
    }

    if (v7 == -1 && (v19 & 0x80000000) == 0)
    {
      return [a1 firstObject];
    }
  }

  if (((v19 | v7) & 0x80000000) == 0)
  {
    return [a1 objectAtIndexedSubscript:(v19 + v7) >> 1];
  }

  return 0;
}

void __captureSession_buildGraphDidBecomeLiveObserver_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if ((*(a1 + 48) & 1) != 0 || [a3 mediaType] != 1936684398)
  {
    os_unfair_lock_lock((*(a1 + 32) + 384));
    v8 = [*(*(a1 + 32) + 512) configurationID];
    os_unfair_lock_unlock((*(a1 + 32) + 384));
    if (v8 == a4)
    {
      v9 = [a3 node];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = *(a1 + 40);
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (a2)
        {
          if ([v9 sinkID])
          {
            v12 = cs_notificationPayloadForSectionFormatChanged([v9 sinkID], objc_msgSend(a2, "formatDescription"));
            captureSession_postNotificationWithPayload(v10, @"PreviewFormatDidChange", v12);
          }
        }

        else
        {
          captureSession_setPreviewRunning(v10, 0, [*(DerivedStorage + 784) previewSinkPipelineWithSinkID:{objc_msgSend(v9, "sinkID")}]);
        }
      }

      if (*(a1 + 49) == 1)
      {
        v13 = *(a1 + 40);
        v14 = CMBaseObjectGetDerivedStorage();
        if (a2)
        {
          v15 = v14;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [*(v15 + 784) previewSinkPipelineWithSinkID:{objc_msgSend(v9, "sinkID")}];
            if ([v16 previewSinkEnabled])
            {
              captureSession_setPreviewRunning(v13, 1, v16);
            }
          }

          captureSession_makeCommittedConfigurationLive(v13, a4);
        }
      }
    }
  }
}

uint64_t FigMotionComputeLensPositionScalingFactor(const __CFDictionary *a1, int a2, uint64_t a3, int a4, uint64_t a5, float *a6)
{
  if (!a1)
  {
    FigMotionComputeLensPositionScalingFactor_cold_5(&v17);
    return v17;
  }

  if (!a6)
  {
    FigMotionComputeLensPositionScalingFactor_cold_4(&v17);
    return v17;
  }

  v15 = *(MEMORY[0x1E695F058] + 16);
  v16 = *MEMORY[0x1E695F058];
  v19 = *MEMORY[0x1E695F058];
  v20 = v15;
  SensorValidCropRect = FigMotionGetSensorValidCropRect(a1);
  if (SensorValidCropRect)
  {
    v13 = SensorValidCropRect;
    FigMotionComputeLensPositionScalingFactor_cold_1();
    return v13;
  }

  if (CFDictionaryContainsKey(a1, *off_1E798B7A0))
  {
    v17 = v16;
    v18 = v15;
    FigCFDictionaryGetCGRectIfPresent();
    if (*(&v15 + 1) > 0.0 && *&v18 > 0.0)
    {
      a2 = *&v18;
    }
  }

  v12 = *&v20;
  if (v12 <= 0.0)
  {
    FigMotionComputeLensPositionScalingFactor_cold_3(&v17);
    return v17;
  }

  if (a4 <= 0)
  {
    FigMotionComputeLensPositionScalingFactor_cold_2(&v17);
    return v17;
  }

  v13 = 0;
  *a6 = a2 / (a4 * v12);
  return v13;
}

uint64_t FigMotionGetSensorValidCropRect(const __CFDictionary *a1)
{
  if (CFDictionaryContainsKey(a1, *off_1E798B668))
  {
    if (!FigCFDictionaryGetCGRectIfPresent())
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (CFDictionaryContainsKey(a1, *off_1E798B790))
  {
    if (!FigCFDictionaryGetCGRectIfPresent())
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (CFDictionaryContainsKey(a1, *off_1E798B598) && FigCFDictionaryGetCGRectIfPresent())
  {
    return 0;
  }

LABEL_10:
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void BWPreviewSynchronizerDestroy(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

uint64_t FigMotionComputePrincipalPoint(const __CFDictionary *a1, int a2, int a3, int a4, int a5, int a6, float64x2_t *a7, float a8, float a9)
{
  value = 0;
  v19 = *MEMORY[0x1E695EFF8];
  point = v19;
  if (a1 && a7)
  {
    v16 = (a2 + -1.0) * 0.5;
    v17 = (a3 + -1.0) * 0.5;
    v22.f64[0] = v16;
    v22.f64[1] = v17;
    if (CFDictionaryGetValueIfPresent(a1, *off_1E798B520, &value) && CGPointMakeWithDictionaryRepresentation(value, &point) && FigMotionComputeSensorCroppedReferenceCenter(a1, &v19))
    {
      v22.f64[0] = v16 + (point.x - v19.x) * a9 * a4;
      v22.f64[1] = v17 + (point.y - v19.y) * a9 * a5;
    }

    if (!a6 || (result = FigMotionAdjustPointForSphereMovement(a1, &v22, a8, a9), !result))
    {
      result = 0;
      *a7 = v22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_5();
    FigDebugAssert3();
    OUTLINED_FUNCTION_7_5();

    return FigSignalErrorAtGM();
  }

  return result;
}

BOOL FigMotionComputeSensorCroppedReferenceCenter(const __CFDictionary *a1, float64x2_t *a2)
{
  v12 = *MEMORY[0x1E695F058];
  v13 = *(MEMORY[0x1E695F058] + 16);
  SensorValidCropRect = FigMotionGetSensorValidCropRect(a1);
  if (!SensorValidCropRect)
  {
    __asm { FMOV            V2.2D, #-1.0 }

    v9 = vaddq_f64(v13, _Q2);
    __asm { FMOV            V2.2D, #0.5 }

    *a2 = vmlaq_f64(v12, _Q2, v9);
  }

  return SensorValidCropRect == 0;
}

uint64_t FigMotionAdjustPointForSphereMovement(uint64_t a1, float64x2_t *a2, float a3, float a4)
{
  if (a1)
  {
    v7 = FigMotionComputeAverageSpherePosition();
    if (v7)
    {
      FigMotionAdjustPointForSphereMovement_cold_1();
    }

    else
    {
      *a2 = vaddq_f64(*a2, vcvtq_f64_f32(vmul_n_f32(0, a3 * a4)));
    }
  }

  else
  {
    FigMotionAdjustPointForSphereMovement_cold_2(&v9);
    return v9;
  }

  return v7;
}

uint64_t FigMotionComputeAverageSpherePosition()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v24 = 0;
  valuePtr = 0.0;
  Value = CFDictionaryGetValue(v0, *off_1E798B2A8);
  if (!Value)
  {
    FigMotionComputeAverageSpherePosition_cold_3(v25);
    return LODWORD(v25[0]);
  }

  CFNumberGetValue(Value, kCFNumberFloat64Type, &valuePtr);
  v7 = CFDictionaryGetValue(v5, *off_1E798B328);
  if (!v7)
  {
    FigMotionComputeAverageSpherePosition_cold_2(v25);
    return LODWORD(v25[0]);
  }

  CFNumberGetValue(v7, kCFNumberSInt32Type, &v24);
  v8 = v24;
  v9 = valuePtr;
  *v2 = 0;
  v27 = 0;
  *v2 = 0;
  v10 = CFDictionaryGetValue(v5, *off_1E798B3B8);
  if (v10)
  {
    ISPHallData = FigMotionGetISPHallData(v10, v25, &v27, 510);
    if (ISPHallData)
    {
      v21 = ISPHallData;
      FigMotionComputeAverageSpherePosition_cold_1();
      return v21;
    }

    v12 = v27;
    if (v27 >= 1)
    {
      v13 = 0;
      v14 = v4 + v9 * -0.5;
      v15 = v8 / 1000000.0 + v14;
      v16 = &v26;
      v17 = v27;
      do
      {
        v18 = *&v16[-1];
        if (v18 >= v14 && v18 <= v15)
        {
          *v2 = vadd_f32(*v16, *v2);
          ++v13;
        }

        v16 += 3;
        --v17;
      }

      while (v17);
      if (v13)
      {
        *&v15 = v13;
        *v2 = vdiv_f32(*v2, vdup_lane_s32(*&v15, 0));
      }

      else
      {
        v20 = v12 - 1;
        if (*v25 > v15)
        {
          v20 = 0;
        }

        *v2 = v25[3 * v20 + 1];
        low_freq_error_logging();
      }
    }
  }

  return 0;
}

uint64_t FigMotionGetISPHallData(const __CFData *a1, uint64_t a2, int *a3, int a4)
{
  Length = CFDataGetLength(a1);
  if (Length <= 7)
  {
    FigMotionGetISPHallData_cold_3(&time);
  }

  else
  {
    v9 = Length;
    BytePtr = CFDataGetBytePtr(a1);
    if (*BytePtr >= 2u)
    {
      FigMotionGetISPHallData_cold_2(&time);
    }

    else
    {
      v11 = 16;
      if (*BytePtr == 1)
      {
        v11 = 24;
      }

      if (v9 == v11 * *(BytePtr + 1) + 8)
      {
        if (a3)
        {
          goto LABEL_7;
        }

LABEL_26:
        FigMotionGetISPHallData_cold_4(&time);
        return LODWORD(time.value);
      }

      FigMotionGetISPHallData_cold_1(&time);
    }
  }

  value_low = LODWORD(time.value);
  if (LODWORD(time.value))
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    return value_low;
  }

  BytePtr = 0;
  if (!a3)
  {
    goto LABEL_26;
  }

LABEL_7:
  v12 = *(BytePtr + 1);
  if (v12 >= a4)
  {
    v12 = a4;
  }

  *a3 = v12;
  if (*BytePtr == 1)
  {
    if (v12 >= 1)
    {
      v18 = 0;
      v19 = (BytePtr + 16);
      v20 = (a2 + 12);
      do
      {
        v21 = FigHostTimeToNanoseconds();
        CMTimeMake(&time, v21, 1000000000);
        *(v20 - 3) = CMTimeGetSeconds(&time);
        *(v20 - 1) = *v19 * 0.0039062;
        *v20 = v19[1] * 0.0039062;
        v20[1] = v19[2] * 0.0039062;
        v20[2] = v19[3] * 0.0039062;
        ++v18;
        v19 += 6;
        v20 += 6;
      }

      while (v18 < *a3);
    }
  }

  else
  {
    if (*BytePtr)
    {
      return 4294954515;
    }

    if (v12 >= 1)
    {
      v13 = 0;
      v14 = (a2 + 16);
      v15 = (BytePtr + 20);
      do
      {
        v16 = FigHostTimeToNanoseconds();
        CMTimeMake(&time, v16, 1000000000);
        *(v14 - 2) = CMTimeGetSeconds(&time);
        *(v14 - 2) = *(v15 - 1) * 0.0039062;
        v17 = *v15;
        v15 += 4;
        *(v14 - 1) = v17 * 0.0039062;
        *v14 = 0.0;
        v14 += 3;
        ++v13;
      }

      while (v13 < *a3);
    }
  }

  return 0;
}

uint64_t FigImageControl_SetContinuousAutoFocusAreaOfInterestByPortType(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 7612) != 1)
  {
    return 4294954516;
  }

  v5 = DerivedStorage;
  if (([*(DerivedStorage + 9064) isEqualToDictionary:a2] & 1) == 0)
  {

    *(v5 + 9064) = a2;
    v6 = *(MEMORY[0x1E695F050] + 16);
    rect.origin = *MEMORY[0x1E695F050];
    rect.size = v6;
    CGRectMakeWithDictionaryRepresentation([a2 objectForKeyedSubscript:{objc_msgSend(objc_msgSend(a2, "allKeys"), "firstObject")}], &rect);
    if (CGRectIsNull(rect))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }

    else
    {
      width = rect.size.width;
      height = rect.size.height;
      v9 = CMBaseObjectGetDerivedStorage();
      v10 = v9[4536] * width / 1000;
      v11 = v9[4537] * height / 1000;
      v12 = __OFSUB__(v11, v10);
      v13 = v11 - v10;
      v15 = v13 < 0 != v12 || v13 < 5;
      if (v15)
      {
        v16 = 5;
      }

      else
      {
        v16 = 3;
      }

      if (v15)
      {
        v17 = 3;
      }

      else
      {
        v17 = 5;
      }

      v9[1909] = v16;
      v9[1910] = v17;
      if (*(v5 + 625) != 1)
      {
        result = 0;
        *(v5 + 9056) = 1;
        return result;
      }

      setupFocusWindowMatrixByPortType(a1, a2, *(v5 + 560), *(v5 + 7636), *(v5 + 7640), 1);
    }
  }

  return 0;
}

uint64_t FigImageControl_SetAutoExposureAreaOfInterest(uint64_t a1, int a2, int a3, int a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 7464) == 1)
  {
    if (*(DerivedStorage + 7476) != a2 || *(DerivedStorage + 7480) != a3 || *(DerivedStorage + 7484) != a4 || *(DerivedStorage + 7488) != a5)
    {
      *(DerivedStorage + 7476) = a2;
      *(DerivedStorage + 7480) = a3;
      *(DerivedStorage + 7484) = a4;
      *(DerivedStorage + 7488) = a5;
      *(DerivedStorage + 7457) = 1;
    }
  }

  else
  {
    FigImageControl_AutoExposure(a1, a2, a3, a4, a5);
  }

  return 0;
}

uint64_t FigMotionGetMotionDataFromISP(CFDictionaryRef theDict, float64x2_t *a2, uint64_t a3, int a4, int *a5, float32x2_t *a6, uint64_t a7, int a8, int *a9)
{
  if (!theDict)
  {
    FigMotionGetMotionDataFromISP_cold_3(&time);
    return LODWORD(time.value);
  }

  if (a2 && a5)
  {
    Value = CFDictionaryGetValue(theDict, *off_1E798B3D0);
    if (Value)
    {
      v39 = 0;
      v18 = FigMotionISPMotionDataFromCFData(Value, &v39);
      if (v18)
      {
        ISPHallData = v18;
        FigMotionGetMotionDataFromISP_cold_1();
        return ISPHallData;
      }

      LODWORD(v20) = *(v39 + 1);
      if (v20 >= a4)
      {
        LODWORD(v20) = a4;
      }

      *a5 = v20;
      if (v20 >= 1)
      {
        v21 = 0;
        v22 = (a3 + 8);
        v23 = a2 + 1;
        v24 = 0;
        v25 = 0.0;
        v26 = 44;
        v37 = vdupq_n_s64(0x3E10000000000000uLL);
        v27 = vdup_n_s32(0x37800000u);
        do
        {
          v28 = FigHostTimeToNanoseconds();
          CMTimeMake(&time, v28, 1000000000);
          v23[-1].f64[1] = CMTimeGetSeconds(&time);
          v29 = &v39[v26];
          v30 = *&v39[v26 - 24];
          v31.i64[0] = v30;
          v31.i64[1] = SHIDWORD(v30);
          *v23 = vmulq_f64(vcvtq_f64_s64(v31), v37);
          v32 = *(v29 - 2);
          v31.i64[0] = v32;
          v31.i64[1] = SHIDWORD(v32);
          v23[1] = vmulq_f64(vcvtq_f64_s64(v31), v37);
          v19 = vmul_f32(vcvt_f32_s32(*(v29 - 2)), v27);
          v33 = *v29 * 0.000015259;
          if (a3)
          {
            *(v22 - 1) = v19;
            *v22 = v33;
          }

          v24 = vadd_f32(v24, v19);
          v25 = v25 + v33;
          ++v21;
          v20 = *a5;
          v22 += 3;
          v23 += 3;
          v26 += 40;
        }

        while (v21 < v20);
        if (!a6)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }

      v24 = 0;
      v25 = 0.0;
      if (a6)
      {
LABEL_17:
        if (v20)
        {
          v19.f32[0] = v20;
          *a6 = vdiv_f32(v24, vdup_lane_s32(v19, 0));
          a6[1].f32[0] = v25 / v20;
        }
      }
    }

    else
    {
      *a5 = 0;
    }
  }

LABEL_19:
  ISPHallData = 0;
  if (a7 && a9)
  {
    v35 = CFDictionaryGetValue(theDict, *off_1E798B3B8);
    if (v35)
    {
      ISPHallData = FigMotionGetISPHallData(v35, a7, a9, a8);
      if (ISPHallData)
      {
        FigMotionGetMotionDataFromISP_cold_2();
      }
    }

    else
    {
      ISPHallData = 0;
      *a9 = 0;
    }
  }

  return ISPHallData;
}

uint64_t FigMotionISPMotionDataFromCFData(const __CFData *a1, const UInt8 **a2)
{
  if (!a2)
  {
    FigMotionISPMotionDataFromCFData_cold_5(&v9);
    return v9;
  }

  Length = CFDataGetLength(a1);
  if (Length <= 7)
  {
    FigMotionISPMotionDataFromCFData_cold_4(&v9);
    return v9;
  }

  v5 = Length;
  BytePtr = CFDataGetBytePtr(a1);
  if (!BytePtr)
  {
    FigMotionISPMotionDataFromCFData_cold_3(&v9);
    return v9;
  }

  v7 = BytePtr;
  if (v5 != 40 * *(BytePtr + 1) + 8)
  {
    FigMotionISPMotionDataFromCFData_cold_1(&v9);
    return v9;
  }

  if (*BytePtr)
  {
    FigMotionISPMotionDataFromCFData_cold_2(&v9);
    return v9;
  }

  result = 0;
  *a2 = v7;
  return result;
}

uint64_t processBuffer(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 88))
  {
    return 4294954511;
  }

  v7 = DerivedStorage;
  v8 = *off_1E798A3C8;
  result = CMGetAttachment(a2, *off_1E798A3C8, 0);
  if (result)
  {
    v352 = v7;
    v9 = (v7 + 7536);
    FigImageControl_Sharpness(a1);
    FigImageControl_ToneMapping(a1, a2);
    v10 = CMBaseObjectGetDerivedStorage();
    pixelBuffer = CMSampleBufferGetImageBuffer(a2);
    v353 = v8;
    sbuf = a2;
    v11 = CMGetAttachment(a2, v8, 0);
    Value = CFDictionaryGetValue(v11, *off_1E798B0A8);
    v13 = CFDictionaryGetValue(v11, *off_1E798B0A0);
    LODWORD(v357) = 0;
    *v367 = 0;
    v14 = *off_1E798B300;
    if (!CFDictionaryGetValue(v11, *off_1E798B300))
    {
      goto LABEL_221;
    }

    v344 = v13;
    *&valuePtr = 0.0;
    v15 = *(v10 + 48);
    if (v15)
    {
      CMSampleBufferGetPresentationTimeStamp(&time, sbuf);
      CMTimeGetSeconds(&time);
      FigCoreMotionGetVector(v15, &v357, &v367[1], v367);
      v16 = *&v357;
      v17 = *&v367[1];
      v18 = *v367;
    }

    else
    {
      v18 = 0.0;
      v17 = 0.0;
      v16 = 0.0;
    }

    v19 = (((*(v10 + 5636) - v16) * (*(v10 + 5636) - v16)) + ((*(v10 + 5640) - v17) * (*(v10 + 5640) - v17))) + ((*(v10 + 5644) - v18) * (*(v10 + 5644) - v18));
    valuePtr = *(v10 + 5500);
    v20 = valuePtr;
    *(v10 + 4 * valuePtr + 5508) = v19;
    *(v10 + 5636) = v16;
    *(v10 + 5640) = v17;
    *(v10 + 5644) = v18;
    *(v10 + 5500) = (v20 + 1) & 0x1F;
    v21 = ((v17 * v17) + (v16 * v16)) + (v18 * v18);
    if (v21 < 1.3225 && v21 > 0.7225)
    {
      v22 = *(v10 + 5504);
      if (v22 <= 6)
      {
        v23 = v22 + 1;
      }

      else
      {
        v23 = 0;
      }

      *(v10 + 5504) = v23;
      if (fabsf((v18 * v18) / v21) <= 0.81)
      {
        if (!*(v10 + 573))
        {
          v16 = -v16;
        }

        v27 = atan2f(v17, v16);
        if (v27 < 0.0)
        {
          v27 = v27 + 6.2832;
        }

        v25 = llroundf(v27 * 0.63662);
        v26 = v25 - 4;
        v24 = v25 <= 3;
      }

      else
      {
        v24 = v18 <= 0.0;
        LOWORD(v25) = 4;
        v26 = 5;
      }

      if (v24)
      {
        v28 = v25;
      }

      else
      {
        v28 = v26;
      }

      v29 = 0;
      v30 = 0;
      *(v10 + 5648 + 2 * v22) = v28;
      memset(&time, 0, 24);
      do
      {
        v31 = *(v10 + 5648 + v29);
        if (v31 <= 5)
        {
          ++*(&time.origin.x + v31);
          ++v30;
        }

        v29 += 2;
      }

      while (v29 != 16);
      v32 = 0;
      v33 = v30 / 2;
      while (*(&time.origin.x + v32) <= v33)
      {
        if (++v32 == 6)
        {
          valuePtr = 6;
          goto LABEL_35;
        }
      }

      valuePtr = v32;
      if (*(v10 + 5664) != v32)
      {
        *(v10 + 5664) = v32;
        if (v32 <= 3 && (*(v10 + 518) & 1) != 0)
        {
          *(v10 + 5666) = v32;
          v34 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
          captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BE00, v34);
          CFRelease(v34);
        }
      }
    }

LABEL_35:
    v35 = CFDictionaryGetValue(v11, *off_1E798D030);
    if (v35)
    {
      v36 = *(v10 + 9032);
      *(v10 + 9032) = v35;
      CFRetain(v35);
      if (v36)
      {
        CFRelease(v36);
      }
    }

    v37 = CFDictionaryGetValue(v11, v14);
    theDict = v9;
    if (v37)
    {
      v38 = v37;
      v39 = a1;
      v40 = CFGetTypeID(v37);
      if (v40 == CFArrayGetTypeID())
      {
        Count = CFArrayGetCount(v38);
        v42 = Count >= 0x10 ? 16 : Count;
        if (Count)
        {
          v43 = Count;
          x_low = 0;
          v45 = 0;
          do
          {
            LODWORD(time.origin.x) = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(v38, v45);
            CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &time);
            if (v43 == 1)
            {
              x_low = LODWORD(time.origin.x);
            }

            else
            {
              x_low += LODWORD(time.origin.x) * *(v10 + 436 + 4 * v45);
            }

            ++v45;
          }

          while (v42 != v45);
LABEL_52:
          a1 = v39;
          v9 = theDict;
          if (Value && v344)
          {
            *v359 = 0;
            v356 = 0.0;
            CFNumberGetValue(Value, kCFNumberIntType, v359);
            CFNumberGetValue(v344, kCFNumberIntType, &v356);
            if (*v359 != 4)
            {
              v48 = *(v10 + 640) != 0;
              v47 = v10 + 4096;
LABEL_63:
              *(v47 + 2120) = v48;
              if (LODWORD(v356) == 1)
              {
                v355 = -1;
                v54 = CFDictionaryGetValue(v11, *off_1E798B208);
                if (v54)
                {
                  CFNumberGetValue(v54, kCFNumberIntType, &v355);
                }

                v55 = v355;
                if (*(v10 + 6220) > 0 || v355 == *(v10 + 92))
                {
                  v56 = CMBaseObjectGetDerivedStorage();
                  v57 = v56;
                  v58 = *(v56 + 6220);
                  if (v58 < 1)
                  {
                    v63 = v39;
                    v64 = 0;
                  }

                  else
                  {
                    v59 = (v56 + 5736);
                    v60 = (v56 + 5896);
                    v61 = *(v56 + 6220);
                    do
                    {
                      v62 = *v59++;
                      if (v62 == v55)
                      {
                        *v60 = x_low;
                        goto LABEL_175;
                      }

                      ++v60;
                      --v61;
                    }

                    while (v61);
                    if (v58 > 19)
                    {
                      goto LABEL_175;
                    }

                    v63 = v39;
                    v64 = 0;
                    v65 = 0;
                    v66 = v56 + 5904;
                    v67 = 8 * v58;
                    v68 = (v56 + 5904);
                    while (*(v66 + v65 - 168) < v55)
                    {
                      v68 += 8;
                      v65 += 4;
                      ++v64;
                      v67 -= 8;
                      if (4 * v58 == v65)
                      {
                        v64 = *(v56 + 6220);
                        goto LABEL_173;
                      }
                    }

                    memmove((v66 + v65 - 164), (v66 + v65 - 168), 4 * v58 - v65);
                    memmove(v68, v68 - 8, v67);
LABEL_173:
                    v9 = theDict;
                    v47 = v10 + 4096;
                  }

                  *(v57 + 4 * v64 + 5736) = v55;
                  *(v57 + 8 * v64 + 5896) = x_low;
                  ++*(v57 + 6220);
                  a1 = v63;
LABEL_175:
                  CMSampleBufferGetPresentationTimeStamp(&time, sbuf);
                  *(v10 + 5672) = CMTimeGetSeconds(&time);
                }

                if (*(v10 + 640))
                {
                  if (*v359 == 4)
                  {
                    v151 = x_low;
                    *(v10 + 6232) = (x_low * 0.85);
                    *(v10 + 6248) = (x_low * 1.4);
                    *(v10 + 6280) = v355;
                    *(v10 + 6264) = x_low;
                    if (*(v47 + 3486) == 1)
                    {
                      v152 = *(v10 + 6220);
                      v153 = v152 >= 20 ? 20 : v152;
                      if (v152 < 2)
                      {
                        goto LABEL_438;
                      }

                      v154 = 0;
                      v155 = (v10 + 5904);
                      v156 = 1;
                      do
                      {
                        v157 = *v155++;
                        if (v157 > *(v10 + 5896 + 8 * v154))
                        {
                          v154 = v156;
                        }

                        ++v156;
                      }

                      while (v153 != v156);
                      if (!v154)
                      {
LABEL_438:
                        v154 = *(v10 + 5736);
                        if (v154)
                        {
                          goto LABEL_191;
                        }
                      }

                      if (v154 == v153 - 1 && *(v10 + 4 * v154 + 5736) != 255)
                      {
LABEL_191:
                        *(v10 + 6232) = (v151 * 0.98);
                        *(v10 + 6248) = (v151 * 1.02);
                      }
                    }
                  }
                }

                else
                {
                  LODWORD(v158) = *(v10 + 6220);
                  if (v158 < 1)
                  {
                    v162 = 0;
                    v161 = 0;
                    v160 = 0;
                  }

                  else
                  {
                    v159 = 0;
                    v160 = 0;
                    v161 = 0;
                    v162 = 0;
                    if (v158 >= 0x14)
                    {
                      v158 = 20;
                    }

                    else
                    {
                      v158 = v158;
                    }

                    v163 = (v10 + 5912);
                    v164 = (v10 + 5744);
                    do
                    {
                      v165 = *(v163 - 2);
                      if (v165 > v162)
                      {
                        v160 = *(v164 - 2);
                        v166 = ((6844998857600 * v160) >> 32) - 3200 * v160;
                        v167 = ((v166 >> 7) + (v166 >> 31) + 9600) >> 8;
                        if (v159)
                        {
                          v168 = v160 - *(v164 - 3);
                          v169 = (v165 - *(v163 - 3)) * v167;
                          if (v169 >= v168)
                          {
                            v161 = v169 / v168;
                          }

                          else
                          {
                            v161 = 0;
                          }

                          if (v159 != 1)
                          {
                            v170 = v165 - *(v163 - 4);
                            v171 = v160 - *(v164 - 4);
                            if (v170 * v167 / v171 > v161)
                            {
                              v161 = v170 * v167 / v171;
                            }
                          }
                        }

                        else
                        {
                          v161 = 0;
                        }

                        if (v159 < (v158 - 1))
                        {
                          v172 = *(v164 - 1) - v160;
                          if ((v165 - *(v163 - 1)) * v167 / v172 > v161)
                          {
                            v161 = (v165 - *(v163 - 1)) * v167 / v172;
                          }

                          if (v159 < v158 - 2)
                          {
                            v173 = *v164;
                            v174 = (v165 - *v163) * v167;
                            if (v174 / (v160 - v173) > v161)
                            {
                              v161 = v174 / (v160 - v173);
                            }
                          }
                        }

                        v162 = *(v163 - 2);
                      }

                      ++v159;
                      ++v163;
                      ++v164;
                    }

                    while (v158 != v159);
                  }

                  v175 = v162 >> 5;
                  if (v161 > v162 >> 5)
                  {
                    v175 = v161;
                  }

                  if (v175 >= v162 >> 2)
                  {
                    v175 = v162 >> 2;
                  }

                  *(v10 + 6232) = v162 - v175;
                  *(v10 + 6248) = v162 + ((7 * v175) >> 2);
                  *(v10 + 6280) = v160;
                  *(v10 + 6264) = v162;
                }
              }

LABEL_221:
              v176 = sbuf;
              FigImageControl_Focus(a1, sbuf);
              FigImageControl_Exposure(a1, sbuf);
              FigImageControl_WhiteBalance(a1, sbuf);
              v177 = v352;
              v178 = v353;
              if (((*(v9 + 1) | *(v9 + 1557)) & (*v9 ^ 0xFF)) == 0)
              {
                goto LABEL_276;
              }

              v179 = CMBaseObjectGetDerivedStorage();
              v180 = CMGetAttachment(sbuf, v353, 0);
              v181 = *off_1E798B540;
              theDicta = v180;
              v182 = CFDictionaryGetValue(v180, *off_1E798B540);
              CameraParametersForPortType = af_sbp_getCameraParametersForPortType();
              if (CameraParametersForPortType && (v184 = CameraParametersForPortType, *(CameraParametersForPortType + 1236)))
              {
                v185 = *(CameraParametersForPortType + 1204);
                v186 = *(v179 + 9092);
                v340 = *(v179 + 17353);
                *v367 = 0;
                v187 = CFDictionaryGetValue(theDicta, *off_1E798B510);
                if (v187)
                {
                  CFNumberGetValue(v187, kCFNumberFloatType, v367);
                }

                pixelBufferb = v181;
                key = *off_1E798B078;
                v188 = CFDictionaryGetValue(theDicta, *off_1E798B078);
                if (v188)
                {
                  CFNumberGetValue(v188, kCFNumberSInt32Type, &v367[1]);
                }

                v189 = 1224;
                if (!v367[1])
                {
                  v189 = 1220;
                }

                if (v186)
                {
                  v190 = -*(v184 + v189);
                }

                else
                {
                  v190 = *(v184 + v189);
                }

                *(v179 + 9092) = 0;
                v191 = CFDictionaryGetValue(theDicta, *off_1E798B398);
                if (v191)
                {
                  v192 = v191;
                  if (CFDataGetLength(v191) == 1024)
                  {
                    v336 = (v179 + 17336);
                    v193 = *(v184 + 1200);
                    BytePtr = CFDataGetBytePtr(v192);
                    v195 = CFDictionaryGetValue(theDicta, *off_1E798B390);
                    v196 = CFDataGetBytePtr(v195);
                    v197 = CFDictionaryGetValue(theDicta, *off_1E798B388);
                    v198 = CFDataGetBytePtr(v197);
                    v199 = v198;
                    v335 = *(v179 + 10212);
                    if (!v335)
                    {
                      v200 = 0;
                      v201 = 0uLL;
                      do
                      {
                        v201 = vaddq_s32(*&BytePtr[v200], v201);
                        v200 += 16;
                      }

                      while (v200 != 1024);
                      v202 = vaddvq_s32(v201);
                      *(v179 + 10212) = v202;
                      v335 = v202;
                    }

                    if (*(v179 + 7538) == 1)
                    {
                      v203 = 0;
                      v204 = (v179 + 10216);
                      do
                      {
                        v205 = *&BytePtr[v203];
                        v206.i64[0] = v205;
                        v206.i64[1] = DWORD1(v205);
                        v207 = vcvtq_f64_u64(v206);
                        v206.i64[0] = DWORD2(v205);
                        v206.i64[1] = HIDWORD(v205);
                        *v204 = v207;
                        v204[1] = vcvtq_f64_u64(v206);
                        v208 = *&v196[v203];
                        v206.i64[0] = v208;
                        v206.i64[1] = DWORD1(v208);
                        v209 = vcvtq_f64_u64(v206);
                        v206.i64[0] = DWORD2(v208);
                        v206.i64[1] = HIDWORD(v208);
                        v204[129] = vcvtq_f64_u64(v206);
                        v204[128] = v209;
                        v210 = *&v198[v203];
                        v206.i64[0] = v210;
                        v206.i64[1] = DWORD1(v210);
                        v211 = vcvtq_f64_u64(v206);
                        v206.i64[0] = DWORD2(v210);
                        v206.i64[1] = HIDWORD(v210);
                        v204[257] = vcvtq_f64_u64(v206);
                        v204[256] = v211;
                        v203 += 16;
                        v204 += 2;
                      }

                      while (v203 != 1024);
                    }

                    v357 = 0;
                    v358 = 0;
                    LOWORD(v355) = 0;
                    FigCFDictionaryGetInt16IfPresent();
                    v346 = v184;
                    if (v355 <= 0)
                    {
                      if ((*(v184 + 1216) - 256) >= 0xFFFFFFC8)
                      {
                        v212 = *(v184 + 1216);
                      }

                      else
                      {
                        v212 = 255;
                      }
                    }

                    else
                    {
                      HIWORD(v357) = v355;
                      FigCFDictionaryGetInt16IfPresent();
                      FigCFDictionaryGetInt16IfPresent();
                      FigCFDictionaryGetInt16IfPresent();
                      if ((*(v184 + 1216) - 256) >= 0xFFFFFFC8)
                      {
                        v212 = *(v184 + 1216);
                      }

                      else
                      {
                        v212 = 255;
                      }

                      if (v355 >= 1)
                      {
                        v213 = 0;
                        v214 = vcvts_n_f32_s32(SWORD2(v357), 8uLL);
                        v215 = vcvts_n_f32_s32(SHIWORD(v357), 8uLL);
                        v216 = vcvts_n_f32_s32(v358, 8uLL);
                        v217 = (v216 + vcvts_n_f32_s32(SWORD1(v358), 8uLL)) + -2.0;
                        do
                        {
                          v218 = vcvts_n_f32_u32(v213, 8uLL);
                          *&v359[4 * v213] = v218;
                          v219 = fminf(v215 * fmaxf(v218 - v214, 0.0), 1.0);
                          v220 = v219 * (v216 + (v219 * (((1.0 - v216) - v217) + (v219 * v217))));
                          if (v220 < 0.0)
                          {
                            v220 = 0.0;
                          }

                          if (v220 > 1.0)
                          {
                            v220 = 1.0;
                          }

                          *(&time.origin.x + v213++) = v220;
                        }

                        while (v213 != 257);
                        v221 = 0;
                        v222 = 0;
                        LODWORD(time.origin.x) = 0;
                        v365 = 1065353216;
                        v223 = 1;
                        v224 = v361;
                        do
                        {
                          v225 = *(v179 + 9184 + 4 * v221);
                          if (v225 >= v224)
                          {
                            v225 = v224;
                          }

                          if (v222 <= 0xFF)
                          {
                            v226 = v222;
                            do
                            {
                              v227 = *&v359[4 * v226];
                              if (v227 >= v225)
                              {
                                break;
                              }

                              if (v225 >= v227 && v227 > *&v359[4 * v222])
                              {
                                v222 = v226;
                              }

                              ++v226;
                            }

                            while (v226 != 256);
                          }

                          if (v223 <= 0x100)
                          {
                            v228 = v223;
                            do
                            {
                              v229 = *&v359[4 * v228];
                              if (v225 <= v229)
                              {
                                v223 = v228;
                                if (v229 > *&v359[4 * v222])
                                {
                                  break;
                                }
                              }

                              ++v228;
                            }

                            while (v228 != 257);
                          }

                          ispToneCurve[v221++] = *(&time.origin.x + v222) + (((*(&time.origin.x + v223) - *(&time.origin.x + v222)) / (*&v359[4 * v223] - *&v359[4 * v222])) * (v225 - *&v359[4 * v222]));
                        }

                        while (v221 != 257);
                        goto LABEL_332;
                      }
                    }

                    v269 = CFDictionaryGetValue(theDicta, *off_1E798B358);
                    if (v269)
                    {
                      v270 = CFDataGetBytePtr(v269);
                      if (v270)
                      {
                        if (*v270 == 257)
                        {
                          for (i = 0; i != 257; ++i)
                          {
                            LOWORD(v271) = *&v270[2 * i + 2];
                            v271 = LODWORD(v271) * 0.000015259;
                            ispToneCurve[i] = v271;
                          }
                        }
                      }
                    }

LABEL_332:
                    v273 = v185 + v190;
                    v274 = 256;
                    do
                    {
                      v275 = v274;
                      v276 = ispToneCurve[v274--];
                    }

                    while (v276 > (v212 / 255.0));
                    v277 = v275 - 1;
                    v278 = v275 - 1;
                    do
                    {
                      v279 = v278;
                      v280 = ispToneCurve[v278--];
                    }

                    while (v280 > ((v212 - 1) / 255.0));
                    if (v275 <= 0xFE)
                    {
                      for (j = 254; j >= v275; --j)
                      {
                        *(BytePtr + 255) += *&BytePtr[4 * j];
                        *(v196 + 255) += *&v196[4 * j];
                        *(v199 + 255) += *&v199[4 * j];
                      }
                    }

                    *(BytePtr + 254) = *&BytePtr[4 * v277];
                    *(v196 + 254) = *&v196[4 * v277];
                    v282 = *&v199[4 * v277];
                    *(v199 + 254) = v282;
                    v283 = v275 - 2;
                    if ((v275 - 2) >= v279 && v277 > v279)
                    {
                      do
                      {
                        *(BytePtr + 254) += *&BytePtr[4 * v283];
                        *(v196 + 254) += *&v196[4 * v283];
                        v282 = *(v199 + 254) + *&v199[4 * v283];
                        *(v199 + 254) = v282;
                        --v283;
                      }

                      while (v283 >= v279);
                    }

                    v334 = v186;
                    v284 = *(v346 + 1000);
                    if (v284 >= 1)
                    {
                      v285 = 0;
                      v351 = v346 + 1008;
                      v286 = *(v346 + 1004);
                      do
                      {
                        v287 = v285;
                        v288 = *(v346 + 1072 + 4 * v285);
                        v289 = 0.0;
                        if (v288 > 4)
                        {
                          switch(v288)
                          {
                            case 5:
                              v291 = *&BytePtr[4 * *(v351 + 4 * v287)];
                              v292 = *(BytePtr + 255);
                              goto LABEL_358;
                            case 6:
                              v291 = *&v196[4 * *(v351 + 4 * v287)];
                              v292 = *(v196 + 255);
                              goto LABEL_358;
                            case 7:
                              v291 = *&v199[4 * *(v351 + 4 * v287)];
                              v292 = *(v199 + 255);
LABEL_358:
                              v289 = v291 / v292;
                              break;
                          }
                        }

                        else
                        {
                          switch(v288)
                          {
                            case 1:
                              v290 = *&BytePtr[4 * *(v351 + 4 * v287)];
                              goto LABEL_356;
                            case 2:
                              v290 = *&v196[4 * *(v351 + 4 * v287)];
                              goto LABEL_356;
                            case 3:
                              v290 = *&v199[4 * *(v351 + 4 * v287)];
LABEL_356:
                              v289 = v290 / v335;
                              break;
                          }
                        }

                        v293 = *(v346 + 1136 + 4 * v287);
                        v193 = v193 + (v293 * powf(v289, v286));
                        v285 = v287 + 1;
                      }

                      while (v284 > (v287 + 1));
                    }

                    *(v179 + 16360) = v275;
                    *(v179 + 16368) = v279;
                    v294 = *(BytePtr + 127);
                    v295.i64[0] = v294;
                    v295.i64[1] = HIDWORD(v294);
                    *(v179 + 9128) = vcvtq_f64_u64(v295);
                    v296 = *(v196 + 127);
                    v295.i64[0] = v296;
                    v295.i64[1] = HIDWORD(v296);
                    v297 = vcvtq_f64_u64(v295);
                    *(v179 + 9144) = v297;
                    *(v179 + 9160) = v282;
                    LODWORD(v297.f64[0]) = *(v199 + 255);
                    *(v179 + 9168) = *&v297.f64[0];
                    *(v179 + 9176) = v335;
                    *&valuePtr = 0.0;
                    FigCFDictionaryGetFloatIfPresent();
                    v356 = 0.0;
                    if (*(v346 + 1248) > 0.0)
                    {
                      FigCaptureComputeImageGainFromMetadata();
                    }

                    v298 = *(v346 + 1236);
                    v299 = v193;
                    v300 = *(v179 + 17344) % v298;
                    *(v179 + 16376 + 8 * v300) = v193;
                    v178 = v353;
                    if (*(v179 + 17354))
                    {
                      goto LABEL_363;
                    }

                    v302 = *(v346 + 1244);
                    if (v356 <= 0.0)
                    {
                      if (*&valuePtr > v302 || *v367 < *(v346 + 1212))
                      {
                        goto LABEL_370;
                      }
                    }

                    else if (*&valuePtr >= v302 || v356 >= *(v346 + 1248))
                    {
LABEL_370:
                      v301 = 1;
LABEL_371:
                      v303 = (*v336 + v301) & ~((*v336 + v301) >> 31);
                      *v336 = v303;
                      if (v303 >= *(v346 + 1232))
                      {
                        v303 = *(v346 + 1232);
                      }

                      *v336 = v303;
                      *(v179 + 16856 + 8 * v300) = vabdd_f64(v299, *(v179 + 9104));
                      *(v179 + 9104) = v299;
                      *(v179 + 17344) = v300 + 1;
                      if (v298 < 1)
                      {
                        v304 = 0;
                        v306 = 0.0;
                      }

                      else
                      {
                        v304 = 0;
                        v305 = 0;
                        v306 = 0.0;
                        v307 = 0.0;
                        do
                        {
                          v308 = *(v179 + 16376 + 8 * v305);
                          if (v308 < 1.79769313e308)
                          {
                            ++v304;
                            v307 = v307 + v308;
                            v306 = v306 + *(v179 + 16856 + 8 * v305);
                          }

                          ++v305;
                        }

                        while (v298 > v305);
                        if (v304)
                        {
                          *(v179 + 9096) = v307 / v304;
                          v306 = v306 / v304;
                          *(v179 + 17353) = v303 > 0;
                        }
                      }

                      if (v304 >= *(v346 + 1240))
                      {
                        v309 = v273;
                      }

                      else
                      {
                        v309 = v273 + v273;
                      }

                      if (*(v179 + 7464) == 2)
                      {
                        if (v340)
                        {
                          goto LABEL_390;
                        }

                        v310 = *(v179 + 17353);
                        if (v310 != 1)
                        {
                          goto LABEL_390;
                        }
                      }

                      else
                      {
                        LOBYTE(v310) = 0;
                      }

                      *(v179 + 17352) = v310;
LABEL_390:
                      v311 = CMBaseObjectGetDerivedStorage();
                      v312 = CMGetAttachment(sbuf, v353, 0);
                      CFDictionaryGetValue(v312, pixelBufferb);
                      v313 = af_sbp_getCameraParametersForPortType();
                      if (v313)
                      {
                        v314 = v313;
                        v315 = *(v313 + 1208);
                        v316 = v346;
                        LODWORD(time.origin.x) = 0;
                        v317 = CFDictionaryGetValue(v312, *off_1E798CEC8);
                        if (v317)
                        {
                          CFNumberGetValue(v317, kCFNumberFloatType, &time);
                          v318 = *(v314 + 1236);
                          v319 = *(v311 + 17348) % v318;
                          v320 = *&time.origin.x;
                          *(v311 + 16616 + 8 * v319) = *&time.origin.x;
                          *(v311 + 17096 + 8 * v319) = vabdd_f64(v320, *(v311 + 9120));
                          *(v311 + 9120) = v320;
                          *(v311 + 17348) = v319 + 1;
                          if (v318 < 1)
                          {
                            v321 = 0;
                            v323 = 0.0;
                          }

                          else
                          {
                            v321 = 0;
                            v322 = 0;
                            v323 = 0.0;
                            v324 = 0.0;
                            do
                            {
                              v325 = *(v311 + 16616 + 8 * v322);
                              if (v325 < 1.79769313e308)
                              {
                                ++v321;
                                v324 = v324 + v325;
                                v323 = v323 + *(v311 + 17096 + 8 * v322);
                              }

                              ++v322;
                            }

                            while (v318 > v322);
                            if (v321)
                            {
                              *(v311 + 9112) = v324 / v321;
                              v323 = v323 / v321;
                            }
                          }

                          if (v321 < *(v314 + 1240))
                          {
                            v315 = v315 + v315;
                          }

                          *v359 = 0;
                          v327 = CFDictionaryGetValue(v312, key);
                          if (v327)
                          {
                            CFNumberGetValue(v327, kCFNumberSInt32Type, v359);
                            v328 = 1224;
                            if (!*v359)
                            {
                              v328 = 1220;
                            }
                          }

                          else
                          {
                            v328 = 1220;
                          }

                          v176 = sbuf;
                          v329 = *(v314 + v328);
                          if (v334)
                          {
                            v329 = -v329;
                          }

                          v326 = *(v311 + 9112) > (v315 + v329);
                        }

                        else
                        {
                          v326 = 0;
                          v323 = 0.0;
                          v176 = sbuf;
                        }

                        v177 = v352;
                      }

                      else
                      {
                        v326 = 0;
                        v323 = 0.0;
                        v176 = sbuf;
                        v177 = v352;
                        v316 = v346;
                      }

                      v330 = *(v179 + 9096) <= v309 && !v326;
                      if (!v330 && (*(v179 + 17353) != 1 || *(v179 + 17352) == 1))
                      {
                        *(v179 + 9092) = 1;
                      }

                      v331 = *(v316 + 1228);
                      if (v306 > v331 && v323 > v331 && *(v179 + 9092) != v334)
                      {
                        *(v179 + 9092) = v334;
                      }

                      goto LABEL_276;
                    }

LABEL_363:
                    v301 = -1;
                    goto LABEL_371;
                  }
                }
              }

              else
              {
                FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
                LODWORD(v357) = 0;
                LOBYTE(v367[1]) = 0;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v232 = v357;
                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v367[1]))
                {
                  v233 = v232;
                }

                else
                {
                  v233 = v232 & 0xFFFFFFFE;
                }

                if (v233)
                {
                  *v359 = 136315394;
                  *&v359[4] = "hdrSceneDetectionProcessing";
                  *&v359[12] = 2112;
                  *&v359[14] = v182;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                LODWORD(time.origin.x) = 138412290;
                *(&time.origin.x + 4) = v182;
                v234 = _os_log_send_and_compose_impl();
                v333 = 0.0;
                FigCapturePleaseFileRadar(FrameworkRadarComponent, v234, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/VideoProcessors/Autofocus/FigSampleBufferProcessor_Autofocus.m", 915, @"LastShownDate:FigSampleBufferProcessor_Autofocus.m:915", @"LastShownBuild:FigSampleBufferProcessor_Autofocus.m:915", 0);
                free(v234);
              }

LABEL_276:
              v235 = *(v177 + 7460);
              v236 = *(v177 + 7604);
              if (v235 <= 0 && v236 < 1)
              {
                goto LABEL_291;
              }

              if (v235 >= 1)
              {
                v237 = *(v177 + 7544);
                if (v237)
                {
                  captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BC30, v237);
                }
              }

              if (v236 >= 1)
              {
                v238 = *(v177 + 9072);
                if (v238)
                {
                  v239 = off_1E798CC68;
LABEL_286:
                  captureStreamSetPropertyOnActivityScheduler(a1, *v239, v238);
                  goto LABEL_287;
                }

                v238 = *(v177 + 9040);
                if (v238)
                {
                  v239 = off_1E798BC50;
                  goto LABEL_286;
                }
              }

LABEL_287:
              captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BC80, *MEMORY[0x1E695E4D0]);
              if (v235)
              {
                atomic_fetch_add_explicit((v177 + 7460), -v235, memory_order_relaxed);
              }

              if (v236)
              {
                atomic_fetch_add_explicit((v177 + 7604), -v236, memory_order_relaxed);
              }

LABEL_291:
              v240 = CMBaseObjectGetDerivedStorage();
              v241 = objc_alloc_init(MEMORY[0x1E695DF90]);
              v242 = CMBaseObjectGetDerivedStorage();
              v243 = CMGetAttachment(v176, v178, 0);
              LODWORD(v357) = 0;
              *v367 = 0;
              *&valuePtr = 0.0;
              if (*(v242 + 7464) == 2)
              {
                v244 = 3;
              }

              else
              {
                v244 = 1;
              }

              [v241 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v244, v332, *&v333), *off_1E798B4E8}];
              [v241 setObject:objc_msgSend(v243 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C0E0), *off_1E798C0E0}];
              FigImageControl_CurrentFocusRectByPortType();
              v245 = *(MEMORY[0x1E695F050] + 16);
              time.origin = *MEMORY[0x1E695F050];
              time.size = v245;
              if (FigCFDictionaryGetCGRectIfPresent())
              {
                v246 = (time.origin.y * 1000.0);
                v247 = (time.size.width * 1000.0);
                LODWORD(v357) = (time.origin.x * 1000.0);
                v367[0] = (time.size.width * 1000.0);
                v367[1] = (time.origin.y * 1000.0);
                v248 = (time.size.height * 1000.0);
                valuePtr = (time.size.height * 1000.0);
                *v359 = [MEMORY[0x1E696AD98] numberWithInt:?];
                *&v359[8] = [MEMORY[0x1E696AD98] numberWithInt:v246];
                *&v359[16] = [MEMORY[0x1E696AD98] numberWithInt:v247];
                v249 = MEMORY[0x1E696AD98];
                v250 = v248;
              }

              else
              {
                FigImageControl_CurrentFocusRect(a1, &v357, &v367[1], v367, &valuePtr);
                if (v367[0] < 1 || valuePtr < 1)
                {
                  goto LABEL_297;
                }

                if (*(v242 + 7672) == 1)
                {
                  v266 = v357;
                }

                else
                {
                  v267 = af_sbp_getCameraParametersForPortType();
                  if (!v267)
                  {
LABEL_308:
                    if ((*(v240 + 88) & 1) == 0)
                    {
                      FigSimpleMutexLock();
                      if ((*(v240 + 88) & 1) == 0)
                      {
                        v261 = v240 + 17376;
                        v262 = *(v240 + 17376 + 16 * *(v240 + 17360) + 8);
                        if (v262)
                        {
                          CFRelease(v262);
                          *(v261 + 16 * *(v240 + 17360) + 8) = 0;
                        }

                        CMSampleBufferGetPresentationTimeStamp(&time, v176);
                        *(v261 + 16 * *(v240 + 17360)) = CMTimeGetSeconds(&time);
                        v263 = v241;
                        v264 = *(v240 + 17360);
                        *(v261 + 16 * v264 + 8) = v263;
                        *(v240 + 17360) = (v264 + 1) % 20;
                      }

                      FigSimpleMutexUnlock();
                    }

                    return 0;
                  }

                  LODWORD(v265) = *v267;
                  v266 = v357;
                  if (*v267 != 1.0)
                  {
                    v268 = (1000.0 - 1000.0 / *&v265) * 0.5;
                    v266 = (*&v265 * (v357 - v268));
                    LODWORD(v357) = (*&v265 * (v357 - v268));
                    v367[0] = (*&v265 * v367[0]);
                    v367[1] = (*&v265 * (v367[1] - v268));
                    *&v265 = *&v265 * valuePtr;
                    valuePtr = *&v265;
                  }
                }

                *v359 = [MEMORY[0x1E696AD98] numberWithInt:{v266, v265}];
                *&v359[8] = [MEMORY[0x1E696AD98] numberWithInt:v367[1]];
                *&v359[16] = [MEMORY[0x1E696AD98] numberWithInt:v367[0]];
                v249 = MEMORY[0x1E696AD98];
                v250 = valuePtr;
              }

              v360 = [v249 numberWithInt:v250];
              [v241 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", v359, 4), *off_1E7989DF8}];
LABEL_297:
              v251 = [v243 objectForKeyedSubscript:*off_1E798B088];
              v252 = [v243 objectForKeyedSubscript:*off_1E798B048];
              if (v251 && v252)
              {
                *&v253 = log2f(([v252 intValue] / objc_msgSend(v251, "intValue")));
                [v241 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v253), @"AEOffset"}];
              }

              v254 = *(v242 + 7464);
              if (v254 - 1 >= 5)
              {
                v255 = 0;
              }

              else
              {
                v255 = v254;
              }

              [v241 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v255), *off_1E798A5C0}];
              ImageBuffer = CMSampleBufferGetImageBuffer(v176);
              if (ImageBuffer)
              {
                v257 = CVBufferCopyAttachment(ImageBuffer, v178, 0);
                if (v257)
                {
                  v258 = CFAutorelease(v257);
                  if (v258)
                  {
                    v259 = v258;
                    v260 = *off_1E798A658;
                    if ([v258 objectForKeyedSubscript:*off_1E798A658])
                    {
                      [v241 setObject:objc_msgSend(v259 forKeyedSubscript:{"objectForKeyedSubscript:", v260), v260}];
                    }
                  }
                }
              }

              goto LABEL_308;
            }

            v47 = v10 + 4096;
            if (*(v10 + 6216))
            {
              v48 = 0;
              goto LABEL_63;
            }
          }

          if (v19 < 0.0016)
          {
            *(v10 + 6264) = (((1.0 - ((v19 * 62.5) + 0.9)) * x_low) + (*(v10 + 6264) * ((v19 * 62.5) + 0.9)));
          }

          if (*(v10 + 9064))
          {
            v49 = [*(v10 + 9064) objectForKeyedSubscript:{CFDictionaryGetValue(v11, *off_1E798B540)}];
            v50 = *(MEMORY[0x1E695F050] + 16);
            time.origin = *MEMORY[0x1E695F050];
            time.size = v50;
            CGRectMakeWithDictionaryRepresentation(v49, &time);
            if (CGRectIsNull(time))
            {
              goto LABEL_221;
            }

            v51 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(time.origin, vdupq_n_s64(0x408F400000000000uLL))));
            v52 = (time.size.width * 1000.0);
            v53 = (time.size.height * 1000.0);
          }

          else
          {
            v52 = *(v10 + 7628);
            if (v52 < 1 || (v53 = *(v10 + 7632), v53 < 1))
            {
              v52 = *(v10 + 7484);
              if (!v52)
              {
                goto LABEL_221;
              }

              v53 = *(v10 + 7488);
              if (!v53)
              {
                goto LABEL_221;
              }

              v69 = (v10 + 7476);
            }

            else
            {
              v69 = (v10 + 7620);
            }

            v51 = *v69;
          }

          if ((*(v10 + 4336) & 1) == 0)
          {
            v84 = *(v10 + 6296);
            if (v84)
            {
              CFRelease(v84);
              *(v10 + 6296) = 0;
            }

            goto LABEL_221;
          }

          v349 = v51;
          CMSampleBufferGetPresentationTimeStamp(&time, sbuf);
          Seconds = CMTimeGetSeconds(&time);
          if (Seconds - *(v10 + 6304) < 0.00826446281)
          {
            goto LABEL_221;
          }

          *(v10 + 6304) = Seconds;
          v71 = (*(v10 + 5492) + 1) & 0x1F;
          *(v10 + 5492) = *&v71;
          valuePtr = v71;
          v72 = pixelBuffer;
          PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
          v337 = a1;
          if (!FigCapturePixelFormatGetCompressionType(PixelFormatType) && !FigCapturePixelFormatIsTenBit(PixelFormatType))
          {
            if (!pixelBuffer)
            {
              processBuffer_cold_1();
              goto LABEL_131;
            }

LABEL_102:
            v83 = CVPixelBufferGetPixelFormatType(v72);
            if (v83 > 2037741157)
            {
              if (v83 != 2037741171 && v83 != 2037741158)
              {
                goto LABEL_167;
              }

              v345 = 0;
            }

            else
            {
              v345 = 1;
              if (v83 != 875704422 && v83 != 875704438)
              {
LABEL_167:
                fig_log_get_emitter();
                x = v2;
                FigDebugAssert3();
                goto LABEL_168;
              }
            }

            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v72, 0);
            WidthOfPlane = CVPixelBufferGetWidthOfPlane(v72, 0);
            pixelBuffera = v72;
            HeightOfPlane = CVPixelBufferGetHeightOfPlane(v72, 0);
            v88 = v349.i32[0] * WidthOfPlane / 1000;
            v89 = v52 * WidthOfPlane / 1000;
            v90 = v349.i32[1] * HeightOfPlane / 1000;
            v91 = v53 * HeightOfPlane / 1000;
            if (v349.i32[0] * WidthOfPlane >= -999)
            {
              v92 = (v349.i32[0] * WidthOfPlane / 1000) & 0xF;
            }

            else
            {
              v92 = v349.i32[0] * WidthOfPlane / 1000;
            }

            v93 = v88 - v92;
            v94 = v92 + v89;
            if (v349.i32[1] * HeightOfPlane >= -999)
            {
              v95 = (v349.i32[1] * HeightOfPlane / 1000) & 3;
            }

            else
            {
              v95 = v349.i32[1] * HeightOfPlane / 1000;
            }

            v96 = WidthOfPlane - (v89 + v88);
            if (WidthOfPlane >= v89 + v88)
            {
              v96 = ((v94 + 7) & 0xFFFFFFF0) - v94;
            }

            if (v91 + v90 <= HeightOfPlane)
            {
              v97 = v91 + v90 - ((v95 + v91) & 3);
            }

            else
            {
              v97 = HeightOfPlane;
            }

            if (v93 >= WidthOfPlane)
            {
              processBuffer_cold_5();
              goto LABEL_131;
            }

            v98 = v90 - v95;
            if (v90 - v95 >= HeightOfPlane)
            {
              processBuffer_cold_6();
              goto LABEL_131;
            }

            v99 = v96 + v94;
            if ((v96 + v94 + v93) > WidthOfPlane)
            {
              processBuffer_cold_12();
              goto LABEL_131;
            }

            if (v97 > HeightOfPlane)
            {
              processBuffer_cold_11();
              goto LABEL_131;
            }

            if (v345)
            {
              if (BytesPerRowOfPlane < WidthOfPlane)
              {
LABEL_130:
                processBuffer_cold_10();
LABEL_131:
                x = time.origin.x;
LABEL_168:
                v150 = -12780;
LABEL_169:
                fig_log_get_emitter();
                v333 = x;
                LODWORD(v332) = v150;
                FigDebugAssert3();
                a1 = v337;
                v9 = theDict;
                goto LABEL_221;
              }
            }

            else if (BytesPerRowOfPlane < 2 * WidthOfPlane)
            {
              goto LABEL_130;
            }

            v350 = v95;
            v339 = v92;
            v363 = 0u;
            v364 = 0u;
            memset(&time, 0, sizeof(time));
            v101 = CVPixelBufferLockBaseAddress(pixelBuffera, 1uLL);
            if (v101)
            {
              v150 = v101;
              processBuffer_cold_7();
            }

            else
            {
              BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffera, 0);
              if (!BaseAddressOfPlane)
              {
                processBuffer_cold_9();
                x = *v359;
                goto LABEL_168;
              }

              if (v345)
              {
                if (v98 < v97)
                {
                  v103 = v98;
                  v104 = &BaseAddressOfPlane[BytesPerRowOfPlane * v98 + v88 - v339];
                  v105 = 4 * BytesPerRowOfPlane;
                  v106 = v90 - v350;
                  v107 = &BaseAddressOfPlane[BytesPerRowOfPlane + BytesPerRowOfPlane * v106 + v88 - v339];
                  v108 = &BaseAddressOfPlane[BytesPerRowOfPlane * (v106 + 2) + v88 - v339];
                  v109 = &BaseAddressOfPlane[BytesPerRowOfPlane * (v106 + 3) + v88 - v339];
                  do
                  {
                    if (v99 >= 1)
                    {
                      v110 = 0;
                      do
                      {
                        v111 = vshrq_n_u32(vpaddlq_u16(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(*&v107[v110]), *&v104[v110]), *&v108[v110]), *&v109[v110])), 8uLL);
                        ++*(&time.origin.x + v111.u32[0]);
                        ++*(&time.origin.x + v111.u32[1]);
                        ++*(&time.origin.x + v111.u32[2]);
                        ++*(&time.origin.x + v111.u32[3]);
                        v110 += 16;
                      }

                      while (v110 < v99);
                    }

                    v103 += 4;
                    v104 += v105;
                    v107 += v105;
                    v108 += v105;
                    v109 += v105;
                  }

                  while (v103 < v97);
                }
              }

              else if (v98 < v97)
              {
                v112 = 2 * v93;
                v113 = v98;
                v114 = &BaseAddressOfPlane[BytesPerRowOfPlane * v98];
                v115 = 4 * BytesPerRowOfPlane;
                v116 = v90 - v350;
                v117 = &BaseAddressOfPlane[BytesPerRowOfPlane + BytesPerRowOfPlane * v116];
                v118 = &BaseAddressOfPlane[BytesPerRowOfPlane * (v116 + 2)];
                v119 = &BaseAddressOfPlane[BytesPerRowOfPlane * (v116 + 3)];
                do
                {
                  if (v99 >= 1)
                  {
                    v120 = 0;
                    v121 = v119;
                    v122 = v118;
                    v123 = v117;
                    v124 = v114;
                    do
                    {
                      v125 = &v123[v112];
                      v126 = vld2q_s8(v125);
                      v127 = &v124[v112];
                      v128 = vld2q_s8(v127);
                      v129 = &v122[v112];
                      v130 = vld2q_s8(v129);
                      v131 = &v121[v112];
                      v132 = vld2q_s8(v131);
                      v133 = vshrq_n_u32(vpaddlq_u16(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(v126), v128), v130), v132)), 8uLL);
                      ++*(&time.origin.x + v133.u32[0]);
                      ++*(&time.origin.x + v133.u32[1]);
                      ++*(&time.origin.x + v133.u32[2]);
                      ++*(&time.origin.x + v133.u32[3]);
                      v120 += 16;
                      v124 += 32;
                      v123 += 32;
                      v122 += 32;
                      v121 += 32;
                    }

                    while (v120 < v99);
                  }

                  v113 += 4;
                  v114 += v115;
                  v117 += v115;
                  v118 += v115;
                  v119 += v115;
                }

                while (v113 < v97);
              }

              v134 = CVPixelBufferUnlockBaseAddress(pixelBuffera, 1uLL);
              if (!v134)
              {
                v135 = 0;
                v136 = 0uLL;
                do
                {
                  v136 = vaddq_s32(*(&time.origin + v135), v136);
                  v135 += 16;
                }

                while (v135 != 64);
                v137 = 0;
                v138 = vaddvq_s32(v136);
                v139 = valuePtr;
                v140 = v10 + 32 * valuePtr;
                do
                {
                  *(v140 + 4338 + 2 * v137) = 4095 * *(&time.origin.x + v137) / v138;
                  ++v137;
                }

                while (v137 != 16);
                v141 = 0;
                v142 = v140 + 4338;
                v143 = v10 + 32 * ((v139 + 26) & 0x1F) + 4338;
                v144 = 0.0;
                do
                {
                  if (*(v143 + v141) && *(v142 + v141))
                  {
                    v145 = *(v143 + v141);
                    v144 = v144 + (v145 * log2f(v145 / *(v142 + v141)));
                  }

                  v141 += 2;
                }

                while (v141 != 32);
                v146 = 0;
                ++*(v10 + 5496);
                *(v10 + 5364 + 4 * v139) = fmaxf(v144, 0.0);
                v147 = v139 - 1;
                v148 = -5;
                do
                {
                  if (*(v10 + 5364 + 4 * (v147 & 0x1F)) > *(v10 + 9088))
                  {
                    ++v146;
                  }

                  --v147;
                }

                while (!__CFADD__(v148++, 1));
                a1 = v337;
                v9 = theDict;
                if (v146 >= 4 && *(v10 + 5496) >= 49)
                {
                  CMNotificationCenterGetDefaultLocalCenter();
                  CMNotificationCenterPostNotification();
                }

                goto LABEL_221;
              }

              v150 = v134;
              processBuffer_cold_8();
            }

            x = *v359;
            goto LABEL_169;
          }

          v74 = CMBaseObjectGetDerivedStorage();
          if (*(v74 + 6296))
          {
            goto LABEL_97;
          }

          v75 = CVPixelBufferGetPixelFormatType(pixelBuffer);
          Width = CVPixelBufferGetWidth(pixelBuffer);
          Height = CVPixelBufferGetHeight(pixelBuffer);
          if (FigCapturePixelFormatIsFullRange(v75))
          {
            v78 = 875704422;
          }

          else
          {
            v78 = 875704438;
          }

          v79 = Width >> 2;
          if (Width <= 0xA03)
          {
            v79 = 640;
          }

          if (v79 >= Width)
          {
            v79 = Width;
          }

          v80 = 2 * llroundf(vcvts_n_f32_u64(v79, 1uLL));
          v81 = Height * v80 / Width;
          v9 = theDict;
          if (BWCreateIOSurfaceBackedCVPixelBuffer(v80, 2 * llroundf(vcvts_n_f32_u64(v81, 1uLL)), v78, (v74 + 6296), @"AF SBP: Scene Monitoring Intermediate"))
          {
            processBuffer_cold_2();
          }

          else
          {
LABEL_97:
            v82 = *(v74 + 6288);
            if (!v82)
            {
              if (VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], (v74 + 6288)))
              {
                processBuffer_cold_3();
                goto LABEL_435;
              }

              v82 = *(v74 + 6288);
            }

            if (VTPixelTransferSessionTransferImage(v82, pixelBuffer, *(v74 + 6296)))
            {
              processBuffer_cold_4();
            }

            else
            {
              v72 = *(v74 + 6296);
              if (v72)
              {
                goto LABEL_102;
              }
            }
          }

LABEL_435:
          processBuffer_cold_13();
          goto LABEL_221;
        }
      }
    }

    else
    {
      v39 = a1;
    }

    x_low = 0;
    goto LABEL_52;
  }

  return result;
}

uint64_t FigImageControl_Sharpness(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 736))
  {
    return 0;
  }

  v3 = DerivedStorage;
  if (*(DerivedStorage + 7448))
  {
    return 0;
  }

  v5 = CMBaseObjectGetDerivedStorage();
  v6 = v5;
  v7 = 0;
  v47 = 0u;
  v48 = 0u;
  *values = 0u;
  v46 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = (v5 + 736);
  *keys = 0u;
  v41 = 0u;
  while (*&v8[4 * v7])
  {
    if (++v7 == 10)
    {
      goto LABEL_9;
    }
  }

  if (v7)
  {
LABEL_9:
    keys[0] = *off_1E798BB58;
    v9 = v7;
    values[0] = createCFArrayFromIntArray((v5 + 696), v7);
    keys[1] = *off_1E798BB50;
    values[1] = createCFArrayFromIntArray(v8, v9);
    v10 = 2;
    goto LABEL_10;
  }

  v10 = 0;
LABEL_10:
  v11 = 0;
  while (*&v6[4 * v11 + 896])
  {
    if (++v11 == 10)
    {
      goto LABEL_15;
    }
  }

  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_15:
  keys[v10] = *off_1E798BB28;
  v12 = v11;
  values[v10] = createCFArrayFromIntArray(v6 + 856, v11);
  v13 = a1;
  v14 = v10 | 1;
  keys[v10 | 1u] = *off_1E798BB20;
  v10 += 2;
  values[v14] = createCFArrayFromIntArray(v6 + 896, v12);
  a1 = v13;
LABEL_16:
  v15 = 0;
  v16 = v6 + 936;
  while (*&v16[4 * v15])
  {
    if (++v15 == 10)
    {
      goto LABEL_21;
    }
  }

  if (!v15)
  {
    goto LABEL_22;
  }

LABEL_21:
  keys[v10] = *off_1E798BA48;
  v17 = v15;
  values[v10] = createCFArrayFromIntArray(v16, v15);
  v18 = v10 + 1;
  keys[v10 + 1] = *off_1E798BA40;
  v10 += 2;
  values[v18] = createCFArrayFromIntArray(v6 + 976, v17);
LABEL_22:
  v19 = MEMORY[0x1E695E480];
  if (v10 >= 1)
  {
    v20 = v10;
    v21 = values;
    v22 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, v10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BFD0, v22);
    do
    {
      v23 = *v21++;
      CFRelease(v23);
      --v20;
    }

    while (v20);
    CFRelease(v22);
  }

  v24 = CMBaseObjectGetDerivedStorage();
  v25 = 0;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  *values = 0u;
  v46 = 0u;
  v26 = (v24 + 1448);
  v27 = (v24 + 1448);
  while (*(v27 - 8) && *v27)
  {
    ++v27;
    if (++v25 == 8)
    {
      goto LABEL_32;
    }
  }

  if (!v25)
  {
    v4 = 0;
    goto LABEL_57;
  }

LABEL_32:
  v39 = a1;
  v28 = 0;
  v29 = *v19;
  v30 = *off_1E798ADD0;
  v31 = *off_1E798ADD8;
  do
  {
    v32 = CFNumberCreate(v29, kCFNumberSInt32Type, v26 - 32);
    v33 = CFNumberCreate(v29, kCFNumberSInt32Type, v26);
    v34 = v33;
    keys[0] = v30;
    keys[1] = v31;
    v44[0] = v32;
    v44[1] = v33;
    if (v32 && v33)
    {
      v35 = CFDictionaryCreate(v29, keys, v44, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      values[v28] = v35;
      if (v35)
      {
        v4 = 0;
      }

      else
      {
        v4 = 4294954510;
      }
    }

    else
    {
      v4 = 4294954510;
      if (!v32)
      {
        goto LABEL_40;
      }
    }

    CFRelease(v32);
LABEL_40:
    if (v34)
    {
      CFRelease(v34);
    }

    if (v4)
    {
      FigImageControl_Sharpness_cold_1();
      v36 = 0;
      goto LABEL_48;
    }

    ++v28;
    v26 += 4;
  }

  while (v25 != v28);
  v49 = CFArrayCreate(v29, values, v25, MEMORY[0x1E695E9C0]);
  if (!v49)
  {
    FigImageControl_Sharpness_cold_4();
    v36 = 0;
LABEL_63:
    v4 = 4294954510;
    goto LABEL_48;
  }

  v36 = CFDictionaryCreate(v29, off_1E798ADE0, &v49, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v36)
  {
    FigImageControl_Sharpness_cold_3();
    goto LABEL_63;
  }

  v4 = captureStreamSetPropertyOnActivityScheduler(v39, *off_1E798BEB0, v36);
  if (v4)
  {
    FigImageControl_Sharpness_cold_2();
  }

LABEL_48:
  v37 = values;
  do
  {
    if (*v37)
    {
      CFRelease(*v37);
    }

    ++v37;
    --v25;
  }

  while (v25);
  if (v49)
  {
    CFRelease(v49);
  }

  if (v36)
  {
    CFRelease(v36);
  }

LABEL_57:
  *(v3 + 7448) = 1;
  return v4;
}

uint64_t FigImageControl_ToneMapping(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMGetAttachment(a2, *off_1E798A3C8, 0);
  v6 = 0;
  v117 = 256;
  v118 = 256;
  valuePtr = 64;
  v116 = 256;
  v113 = 64;
  v114 = 64;
  v112 = 0;
  if ((*(DerivedStorage + 6336) & 1) == 0)
  {
    if (*(DerivedStorage + 508))
    {
      v6 = 0;
    }

    else
    {
      *(DerivedStorage + 6348) = 1065353216;
      *(DerivedStorage + 6352) = *(DerivedStorage + 584);
      v7 = *(DerivedStorage + 580);
      *(DerivedStorage + 6368) = v7;
      *(DerivedStorage + 6372) = 1.0 / (1.0 - v7);
      atomic_fetch_add_explicit((DerivedStorage + 6340), 1u, memory_order_relaxed);
      keys[0] = *off_1E798BA80;
      values[0] = *MEMORY[0x1E695E4D0];
      v8 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v6 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BEE8, v8);
      CFRelease(v8);
    }

    *(DerivedStorage + 6336) = 1;
  }

  if (*(DerivedStorage + 508))
  {
    return v6;
  }

  Value = CFDictionaryGetValue(v5, *off_1E798B120);
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  }

  v10 = CFDictionaryGetValue(v5, *off_1E798B0F8);
  if (v10)
  {
    CFNumberGetValue(v10, kCFNumberIntType, &v114);
  }

  v11 = CFDictionaryGetValue(v5, *off_1E798B0C0);
  if (v11)
  {
    CFNumberGetValue(v11, kCFNumberIntType, &v113);
  }

  v12 = CFDictionaryGetValue(v5, *off_1E798B0B8);
  if (v12)
  {
    CFNumberGetValue(v12, kCFNumberIntType, &v118);
  }

  v13 = CFDictionaryGetValue(v5, *off_1E798B7D0);
  if (v13)
  {
    CFNumberGetValue(v13, kCFNumberIntType, &v117);
  }

  v14 = CFDictionaryGetValue(v5, *off_1E798B7B8);
  if (v14)
  {
    CFNumberGetValue(v14, kCFNumberIntType, &v116);
  }

  v16 = v117;
  v15 = v118;
  v17 = v116;
  v18 = CFDictionaryGetValue(v5, *off_1E798B398);
  v19 = CFDictionaryGetValue(v5, *off_1E798B390);
  v20 = CFDictionaryGetValue(v5, *off_1E798B388);
  if (v18)
  {
    if (v19)
    {
      v21 = v20;
      if (v20)
      {
        BytePtr = CFDataGetBytePtr(v18);
        v23 = CFDataGetBytePtr(v19);
        v24 = CFDataGetBytePtr(v21);
        v25 = 0;
        v26 = DerivedStorage + 6388;
        do
        {
          v27 = *&v23[v25] + *&BytePtr[v25] + *&v24[v25];
          v28 = *(v26 + v25);
          if (v28)
          {
            v27 = (5 * v27 + 11 * v28 + 7) >> 4;
          }

          *(v26 + v25) = v27;
          v25 += 4;
        }

        while (v25 != 1024);
      }
    }
  }

  v29 = *(DerivedStorage + 6344);
  *(DerivedStorage + 6344) = v29 + 1;
  if ((v29 & 1) == 0)
  {
    return v6;
  }

  v30 = *(DerivedStorage + 7468);
  if (!v30)
  {
    v30 = *(DerivedStorage + 7464);
  }

  if ((v30 - 3) < 2)
  {
    return v6;
  }

  v110 = *(DerivedStorage + 584);
  v31 = *(DerivedStorage + 580);
  if (*(DerivedStorage + 522) == 1)
  {
    v32 = *(DerivedStorage + 604);
    if (*(DerivedStorage + 40))
    {
      v32 = v32 + (((v32 - *(DerivedStorage + 600)) * -0.066667) * ((((v15 * v16) * v17) * 0.000000059605) + -1.0));
    }

    if (v32 != *(DerivedStorage + 6348))
    {
      *(DerivedStorage + 6348) = v32;
      v112 = vcvts_n_s32_f32(v32, 0xAuLL);
      v33 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v112);
      v6 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BD60, v33);
      CFRelease(v33);
    }
  }

  v34 = CFDictionaryGetValue(v5, *off_1E798B3A0);
  if (v34)
  {
    *(DerivedStorage + 6384) = 1;
    v36 = CFDataGetBytePtr(v34);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = *(DerivedStorage + 592);
    v43.i32[0] = *(DerivedStorage + 596);
    do
    {
      v41 += *(DerivedStorage + 6388 + v39);
      v40 += *&v36[v39];
      *(keys + v39) = v41;
      *(values + v39) = v40;
      v39 += 4;
    }

    while (v39 != 1024);
    v44 = v41;
    v45 = ((v41 * 0.001) + 0.5);
    v46 = keys[0];
    if (SLODWORD(keys[0]) >= v45)
    {
      v50 = 0;
      v48 = 0;
      v47 = 0;
      v49 = ((v44 * 0.985) + 0.5);
LABEL_47:
      if (v46 < v49)
      {
        v53 = v46;
        while (1)
        {
          v54 = v53;
          if (v47 == 255)
          {
            break;
          }

          v53 = *(keys + ++v47);
          if (v53 >= v49)
          {
            goto LABEL_58;
          }
        }

        LODWORD(v47) = 256;
        goto LABEL_58;
      }

      LODWORD(v47) = v50;
    }

    else
    {
      v47 = 0;
      do
      {
        v48 = v46;
        if (v47 == 255)
        {
          v50 = 256;
          v49 = ((v44 * 0.985) + 0.5);
          LODWORD(v47) = 256;
          v54 = v46;
          v53 = v46;
          goto LABEL_58;
        }

        v46 = *(keys + ++v47);
      }

      while (v46 < v45);
      v49 = ((v44 * 0.985) + 0.5);
      if ((v47 - 1) <= 0xFE)
      {
        v50 = v47;
        goto LABEL_47;
      }

      v50 = v47;
    }

    v54 = v48;
    v53 = v46;
LABEL_58:
    v55 = v42 + ((1.0 - v42) * ((((v49 - v54) / (v53 - v54)) + v47) * 0.0039062));
    v56 = 0.005625;
    if ((v31 * ((((v45 - v48) / (v46 - v48)) + v50) * 0.0039062)) <= 0.005625)
    {
      v56 = v31 * ((((v45 - v48) / (v46 - v48)) + v50) * 0.0039062);
    }

    if (v55 >= 0.62996)
    {
      v57 = v55;
    }

    else
    {
      v57 = 0.62996;
    }

    v58 = v56 + ((v57 - v56) * 0.18);
    v59 = *(values + ((v58 * 90.51) + 0.5));
    v60 = v59 - *(values + ((v58 * 11.314) + 0.5));
    v61 = ((v58 * 724.08) + 0.5);
    if (v61 >= 255)
    {
      v61 = 255;
    }

    v62 = *(values + v61);
    v63 = v62 - v59;
    if (((v58 * 5792.6) + 0.5) >= 255)
    {
      v64 = 255;
    }

    else
    {
      v64 = ((v58 * 5792.6) + 0.5);
    }

    *v37.i32 = v40;
    v65 = v63 / v40;
    *v38.i32 = 1.2 - v65;
    v66 = vdiv_f32(vcvt_f32_s32(__PAIR64__(*(values + v64) - v62, v60)), vdup_lane_s32(v37, 0));
    v67 = vmla_n_f32(vdup_lane_s32(v43, 0), vsub_f32(vdup_lane_s32(v38, 0), v66), 1.0 - *v43.i32);
    v68 = vdup_n_s32(0x3DCCCCCDu);
    v69 = vdup_n_s32(0x3F99999Au);
    v111 = vbsl_s8(vcgt_f32(v67, v68), vbsl_s8(vcgt_f32(v67, v69), v69, v67), v68);
    *(DerivedStorage + 7412) = v66.i32[0];
    *(DerivedStorage + 7416) = v65;
    *(DerivedStorage + 7420) = v66.i32[1];
    v31 = powf(v56, 0.45455);
    v70 = powf(v57, 0.45455);
    v51 = v111;
    v52 = 1.0 / (v70 - v31);
    goto LABEL_69;
  }

  if (*(DerivedStorage + 6384) == 1)
  {
    v51 = *(DerivedStorage + 6360);
    v31 = *(DerivedStorage + 6376);
    v52 = *(DerivedStorage + 6380);
  }

  else
  {
    v52 = 1.0 / (1.0 - v31);
    v51 = v110;
  }

LABEL_69:
  v71 = *(DerivedStorage + 6340);
  v72 = *(DerivedStorage + 6352);
  v73 = vsub_f32(v72, v51);
  if (fabsf(v73.f32[0]) > 0.02 || fabsf(v73.f32[1]) > 0.02 || ((v74 = *(DerivedStorage + 6372), v74 <= (v52 * 1.02)) ? (_NF = (v74 * 1.02) < v52) : (_NF = 1), _NF))
  {
    v76 = (DerivedStorage + 6385);
    v77 = *(DerivedStorage + 6368);
    v74 = *(DerivedStorage + 6372);
  }

  else
  {
    v77 = *(DerivedStorage + 6368);
    v76 = (DerivedStorage + 6385);
    if ((*(DerivedStorage + 6385) & 1) == 0 && vabds_f32(v77, v31) <= 0.01 && v71 == 0)
    {
      return v6;
    }
  }

  *(DerivedStorage + 6360) = v51;
  *(DerivedStorage + 6376) = v31;
  *(DerivedStorage + 6380) = v52;
  v78 = vsub_f32(v51, v72);
  v79 = 0.01;
  if ((v31 - v77) <= 0.01)
  {
    v79 = v31 - v77;
  }

  if ((v31 - v77) <= -0.01)
  {
    v80 = -0.01;
  }

  else
  {
    v80 = v79;
  }

  *v35.i32 = v77 + v80;
  v81 = 1.008;
  if ((v52 / v74) <= 1.008)
  {
    v81 = v52 / v74;
  }

  if ((v52 / v74) <= 0.99206)
  {
    v82 = 0.99206;
  }

  else
  {
    v82 = v81;
  }

  v83 = v74 * v82;
  v84 = vdup_n_s32(0xBC23D70A);
  v85 = vdup_n_s32(0x3C23D70Au);
  v86 = vbsl_s8(vcgt_f32(v78, v84), vbsl_s8(vcgt_f32(v78, v85), v85, v78), v84);
  v87 = vadd_f32(v72, v86);
  *(DerivedStorage + 6352) = v87;
  *(DerivedStorage + 6368) = v35.i32[0];
  *(DerivedStorage + 6372) = v83;
  v88 = vsub_f32(v51, v87);
  v89 = fabsf(*v88.i32) > 0.00001 || fabsf(*&v88.i32[1]) > 0.00001 || vabds_f32(v52, v83) > 0.00001 || vabds_f32(v31, *v35.i32) > 0.00001;
  v90 = 0;
  *v76 = v89;
  *v88.i32 = vaddv_f32(v87) + -2.0;
  v91 = vdupq_lane_s32(v35, 0);
  v92 = vdupq_lane_s32(v88, 0);
  v86.f32[0] = (1.0 - v87.f32[0]) - *v88.i32;
  v93 = vdupq_lane_s32(v86, 0);
  v94 = vdupq_lane_s32(v87, 0);
  v95 = xmmword_1ACF06180;
  v96 = vdupq_n_s32(0x3B808081u);
  __asm { FMOV            V16.4S, #1.0 }

  v100 = vdupq_n_s32(0x437F0000u);
  v101.i64[0] = 0xFF000000FFLL;
  v101.i64[1] = 0xFF000000FFLL;
  v102.i64[0] = 0x400000004;
  v102.i64[1] = 0x400000004;
  do
  {
    v103 = vminnmq_f32(vmulq_n_f32(vmaxnmq_f32(vsubq_f32(vmulq_f32(vcvtq_f32_u32(v95), v96), v91), 0), v83), _Q16);
    v104.i64[0] = 0x3F0000003F000000;
    v104.i64[1] = 0x3F0000003F000000;
    v105 = vminq_s32(vmaxq_s32(vcvtq_s32_f32(vmlaq_f32(v104, v100, vmulq_f32(v103, vmlaq_f32(v94, vmlaq_f32(v93, v92, v103), v103)))), 0), v101);
    *(keys + v90) = vuzp1_s8(vmovn_s32(v105), *v91.f32).u32[0];
    v90 += 4;
    v95 = vaddq_s32(v95, v102);
  }

  while (v90 != 256);
  v112 = v105.u32[3];
  v106 = *MEMORY[0x1E695E480];
  values[0] = CFDataCreate(*MEMORY[0x1E695E480], keys, 256);
  values[1] = values[0];
  values[2] = values[0];
  v107 = CFArrayCreate(v106, values, 3, MEMORY[0x1E695E9C0]);
  if (*(DerivedStorage + 508) == 1)
  {
    v6 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BD70, v107);
  }

  if (v71)
  {
    atomic_fetch_add_explicit((DerivedStorage + 6340), -v71, memory_order_relaxed);
  }

  CFRelease(values[0]);
  CFRelease(v107);
  return v6;
}

uint64_t FigImageControl_Focus(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  v6 = *(DerivedStorage + 7616);
  if (!v6)
  {
    v6 = *(DerivedStorage + 7612);
  }

  v226 = v6;
  v232 = a1;
  v7 = CMBaseObjectGetDerivedStorage();
  v229 = a2;
  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  v9 = *(v7 + 6220);
  target = ImageBuffer;
  key = *off_1E798A3C8;
  v10 = CMGetAttachment(ImageBuffer, *off_1E798A3C8, 0);
  Mutable = v10;
  v230 = v5;
  if (!v10)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      FigImageControl_Focus_cold_9(&keys);
      x_low = LODWORD(keys.origin.x);
      v45 = v232;
      goto LABEL_45;
    }
  }

  *time = 0;
  v12 = CFArrayCreateMutable(0, v9, MEMORY[0x1E695E9C0]);
  if (!v12)
  {
    v179 = FigImageControl_Focus_cold_8(v10 == 0, &keys);
    x_low = LODWORD(keys.origin.x);
    v45 = v232;
    if ((v179 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v13 = v12;
  theDict = Mutable;
  if (v9 < 1)
  {
LABEL_12:
    if (*(v7 + 8297) == 1 && *(v7 + 8296) != 1)
    {
      v23 = MEMORY[0x1E695E4D0];
    }

    else if (*(v7 + 7612))
    {
      v23 = MEMORY[0x1E695E4C0];
    }

    else
    {
      v23 = MEMORY[0x1E695E4D0];
    }

    Mutable = theDict;
    CFDictionaryAddValue(theDict, *off_1E798B098, *v23);
    v24 = *MEMORY[0x1E695E480];
    v25 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E9C0]);
    v26 = CFNumberCreate(v24, kCFNumberFloat32Type, (v7 + 5636));
    if (v26)
    {
      v27 = v26;
      CFArrayAppendValue(v25, v26);
      CFRelease(v27);
      v28 = CFNumberCreate(v24, kCFNumberFloat32Type, (v7 + 5640));
      if (v28)
      {
        v29 = v28;
        CFArrayAppendValue(v25, v28);
        CFRelease(v29);
        v30 = (v7 + 5644);
        v31 = CFNumberCreate(v24, kCFNumberFloat32Type, (v7 + 5644));
        if (v31)
        {
          v32 = v31;
          CFArrayAppendValue(v25, v31);
          CFRelease(v32);
          CFDictionaryAddValue(theDict, *off_1E798A658, v25);
          CMSetAttachment(target, key, theDict, 1u);
          Value = CFDictionaryGetValue(v10, *off_1E798B540);
          if (Value)
          {
            v34 = Value;
            if (!CFEqual(Value, *off_1E798A0E0) && !CFEqual(v34, *off_1E798A0E8) && !CFEqual(v34, *off_1E798A0F8))
            {
              v35 = portIndexFromPortType(v34, time);
              if (v35)
              {
                x_low = v35;
                FigImageControl_Focus_cold_1();
                goto LABEL_40;
              }

              if (*(v7 + 18160) == 1)
              {
                v36 = v7 + 56 * *time + 17744;
                if ((*(v7 + 56 * *time + 17760) & 1) != 0 || *(v7 + *time + 18136))
                {
                  v37 = [-[__CFDictionary objectForKeyedSubscript:](v10 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
                  if (v37 <= 1)
                  {
                    v38 = 1;
                  }

                  else
                  {
                    v38 = v37;
                  }

                  v224 = *(v7 + 18152) * v38;
                  v39 = (*(v7 + 18156) * v38);
                  LODWORD(keys.origin.x) = 1065353216;
                  v40 = v36;
                  Width = CVPixelBufferGetWidth(target);
                  Height = CVPixelBufferGetHeight(target);
                  v43 = v39;
                  Mutable = theDict;
                  FigMotionComputeLensPositionScalingFactor(v10, Width, Height, v224, v43, &keys);
                  LODWORD(valuePtr.origin.x) = 0;
                  v44 = *(v7 + *time + 18136);
                  v45 = v232;
                  if (!v44)
                  {
                    goto LABEL_36;
                  }

                  FloatIfPresent = FigCFDictionaryGetFloatIfPresent();
                  v47 = *&valuePtr.origin.x;
                  if (FloatIfPresent)
                  {
                    v47 = *&valuePtr.origin.x * (*(v40 + 44) * *&keys.origin.x);
                    *&valuePtr.origin.x = v47;
                  }

                  if (v47 == 0.0)
                  {
LABEL_36:
                    if (*(v40 + 16) == 1)
                    {
                      FigMotionCalculateAdjustedLensPosition(v10, v40, &valuePtr, *v30, *&keys.origin.x);
                    }
                  }

                  v48 = CFNumberCreate(v24, kCFNumberFloat32Type, &valuePtr);
                  CFDictionaryAddValue(theDict, *off_1E798B538, v48);
                  CFRelease(v48);
                  x_low = 0;
LABEL_41:
                  CFRelease(v13);
                  if (v25)
                  {
                    CFRelease(v25);
                  }

                  v5 = v230;
                  if (v10)
                  {
                    goto LABEL_45;
                  }

LABEL_44:
                  CFRelease(Mutable);
                  goto LABEL_45;
                }
              }
            }
          }

          x_low = 0;
LABEL_40:
          v45 = v232;
          goto LABEL_41;
        }

        FigImageControl_Focus_cold_2(&keys);
      }

      else
      {
        FigImageControl_Focus_cold_3(&keys);
      }
    }

    else
    {
      FigImageControl_Focus_cold_4(&keys);
    }

    x_low = LODWORD(keys.origin.x);
    goto LABEL_40;
  }

  v14 = (v7 + 5736);
  v15 = (v7 + 5896);
  v16 = MEMORY[0x1E695E9C0];
  while (1)
  {
    v17 = CFArrayCreateMutable(0, 2, v16);
    if (!v17)
    {
      FigImageControl_Focus_cold_7(&keys);
      x_low = LODWORD(keys.origin.x);
      goto LABEL_242;
    }

    v18 = v17;
    v19 = CFNumberCreate(0, kCFNumberIntType, v14);
    if (!v19)
    {
      FigImageControl_Focus_cold_6(&keys);
      goto LABEL_241;
    }

    v20 = v19;
    CFArraySetValueAtIndex(v18, 0, v19);
    v21 = CFNumberCreate(0, kCFNumberSInt64Type, v15);
    if (!v21)
    {
      break;
    }

    v22 = v21;
    CFArraySetValueAtIndex(v18, 1, v21);
    CFArrayAppendValue(v13, v18);
    CFRelease(v20);
    CFRelease(v22);
    CFRelease(v18);
    v15 += 8;
    v14 += 4;
    if (!--v9)
    {
      goto LABEL_12;
    }
  }

  FigImageControl_Focus_cold_5(v20, &keys);
LABEL_241:
  x_low = LODWORD(keys.origin.x);
  CFRelease(v18);
LABEL_242:
  v45 = v232;
  CFRelease(v13);
  v5 = v230;
  Mutable = theDict;
  if (!v10)
  {
    goto LABEL_44;
  }

LABEL_45:
  if (!*(v5 + 652))
  {
    goto LABEL_135;
  }

  v50 = CMBaseObjectGetDerivedStorage();
  v51 = CMGetAttachment(v229, key, 0);
  v52 = CFDictionaryGetValue(v51, *off_1E798B0A8);
  v53 = CFDictionaryGetValue(v51, *off_1E798B0A0);
  v54 = CFDictionaryGetValue(v51, *off_1E798B320);
  LODWORD(v235.value) = 0;
  v249[0] = 0uLL;
  v244 = 0u;
  v245 = 0u;
  v242 = 0u;
  v243 = 0u;
  v240 = 0u;
  v241 = 0u;
  memset(&keys, 0, sizeof(keys));
  v55 = *(v50 + 40);
  FigCFDictionaryGetInt32IfPresent();
  if (!CFDictionaryGetValue(v51, *off_1E798B300))
  {
    goto LABEL_134;
  }

  v56 = ((v55 - 1) & 0xFFFFFFFA) == 0;
  v57 = *(v50 + 7585);
  getFocusPeakSums(v51, &keys);
  LODWORD(v249[0]) = -1;
  v58 = CFDictionaryGetValue(v51, *off_1E798B208);
  if (v58)
  {
    CFNumberGetValue(v58, kCFNumberIntType, v249);
  }

  v59 = *(v50 + 48);
  if (v59)
  {
    CMSampleBufferGetPresentationTimeStamp(time, v229);
    CMTimeGetSeconds(time);
    FigCoreMotionGetVector(v59, v249 + 12, v249 + 8, v249 + 4);
  }

  if (!v52 || !v53)
  {
    goto LABEL_134;
  }

  v248 = 0;
  v246 = 0;
  CFNumberGetValue(v52, kCFNumberIntType, &v246 + 4);
  CFNumberGetValue(v53, kCFNumberIntType, &v246);
  if (v54)
  {
    CFNumberGetValue(v54, kCFNumberSInt32Type, &v248);
  }

  if ((*(v50 + 7664) > 0 || *(v50 + 81) == 1) && HIDWORD(v246) != 2 && (*(v50 + 7586) != 1 || *(v50 + 7588) == *(v50 + 7592)))
  {
    v60 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v61 = v60;
    v62 = *(v50 + 84);
    if (v62 == 1)
    {
      v63 = kFigAutofocusSampleBufferProcessorFocusMode_FixedFocusPoints;
    }

    else
    {
      if (v62 != 5)
      {
LABEL_65:
        *(v50 + 81) = 0;
        v64 = *(v50 + 7664);
        v65 = __OFSUB__(v64, 1);
        v66 = v64 - 1;
        if (v66 < 0 == v65)
        {
          *(v50 + 7664) = v66;
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
        }

        if (v61)
        {
          CFRelease(v61);
        }

        goto LABEL_69;
      }

      v63 = kFigAutofocusSampleBufferProcessorFocusMode_FocusAtPoint;
    }

    CFDictionaryAddValue(v60, @"FocusMode", *v63);
    goto LABEL_65;
  }

LABEL_69:
  v67 = HIDWORD(v246);
  if (HIDWORD(v246) != *(v50 + 7668))
  {
    if (HIDWORD(v246) == 2 && !*(v50 + 7664) && (v248 - 13) <= 0xFFFFFFF6)
    {
      sendFocusStartNotification(v232, 0);
      v67 = HIDWORD(v246);
    }

    *(v50 + 7668) = v67;
  }

  if (v67 == 4)
  {
    if (*(v50 + 8296))
    {
      v68 = v57 | v56;
      HIDWORD(v237) = 0;
      *(v50 + 8296) = 0;
      v69 = *(v50 + 9024);
      v70 = 1.0;
      if (v69 >= 2)
      {
        v71 = 0;
        v72 = (v69 - 1);
        v73 = v69 - 1;
        v74 = (v50 + 8304);
        do
        {
          v75 = *(v50 + 8300 + 4 * v71);
          v76 = *(v50 + 8540 + 4 * v71);
          v77 = *(v50 + 8780 + 4 * v71);
          v78 = sqrtf(((v76 * v76) + (v75 * v75)) + (v77 * v77));
          if (v78 > 0.0)
          {
            v79 = 1.0 / v78;
            v80 = v75 * v79;
            v81 = v76 * v79;
            v82 = v77 * v79;
            v83 = v74;
            v84 = v73;
            do
            {
              v85 = *v83;
              v86 = v83[60];
              v87 = v83[120];
              v88 = sqrtf(((v86 * v86) + (v85 * v85)) + (v87 * v87));
              if (v88 > 0.0)
              {
                v89 = (((v81 * v86) + (v80 * v85)) + (v82 * v87)) / v88;
                if (v89 < v70)
                {
                  v70 = v89;
                }
              }

              ++v83;
              --v84;
            }

            while (v84);
          }

          ++v71;
          --v73;
          ++v74;
        }

        while (v71 != v72);
      }

      *(v50 + 9020) = acosf(v70);
      if ((v57 | v56))
      {
        v90 = 0;
        v91 = 0;
        v92 = 0;
      }

      else
      {
        v95 = [*(v50 + 8) copyProperty:*off_1E798BE70 error:&v237 + 4];
        v92 = v95;
        v90 = HIDWORD(v237);
        v91 = v95 != 0;
        if (HIDWORD(v237) && v95)
        {
          FigImageControl_Focus_cold_10();
        }
      }

      v96 = *(v50 + 8288);
      if (v96)
      {
        CFRelease(v96);
        *(v50 + 8288) = 0;
        v90 = HIDWORD(v237);
      }

      *time = 0x101010101010101;
      *&time[8] = 0x101010101010101;
      if (v90)
      {
        v97 = 0;
      }

      else
      {
        v97 = v91;
      }

      if (v97)
      {
        v236 = 0;
        LODWORD(v237) = 0;
        *(v50 + 8288) = v92;
        v98 = CFDictionaryGetValue(v92, *off_1E798A1E0);
        if (v98)
        {
          CFNumberGetValue(v98, kCFNumberIntType, &v237);
        }

        v99 = CFDictionaryGetValue(v92, *off_1E798A1F0);
        if (v99)
        {
          CFNumberGetValue(v99, kCFNumberIntType, &v236);
        }

        v100 = CFDictionaryGetValue(v92, *off_1E798A1E8);
        if (!v100)
        {
          goto LABEL_122;
        }

        v101 = v236;
        if (v236 < 1)
        {
          goto LABEL_122;
        }

        v102 = v100;
        theDicta = x_low;
        v103 = 0;
        v104 = 0;
        v105 = v237;
        do
        {
          valuePtr.origin.x = 0.0;
          if (v105 < 1)
          {
            v107 = 0.0;
            x = NAN;
          }

          else
          {
            v106 = 0;
            v107 = 0.0;
            x = NAN;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v102, v106 + v103 * v105);
              if (ValueAtIndex)
              {
                CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
                if (*&valuePtr.origin.x < *&x)
                {
                  x = valuePtr.origin.x;
                }

                if (*&valuePtr.origin.x > *&v107)
                {
                  v107 = valuePtr.origin.x;
                }
              }

              v105 = v237;
              ++v106;
            }

            while (v106 < v237);
            v101 = v236;
          }

          time[v103] = 100 * (*&v107 - *&x) <= 20 * *&v107;
          if (100 * (*&v107 - *&x) > 20 * *&v107)
          {
            ++v104;
          }

          ++v103;
        }

        while (v103 < v101);
        x_low = theDicta;
        if (!v104)
        {
LABEL_122:
          *time = 0uLL;
        }
      }

      v110 = 0;
      v111 = (v50 + 7712);
      v112 = (v50 + 7840);
      do
      {
        v113 = *(&keys.origin.x + v110);
        v111[v110] = (v113 * 0.85);
        *(v112 + v110) = (v113 * 1.4);
        if (v113 < 1)
        {
          v117 = 0;
        }

        else if (v68)
        {
          v114 = 0;
          v115 = vdupq_n_s64(v113);
          v116 = 0uLL;
          do
          {
            v116 = vsubq_s32(v116, vuzp1q_s32(vcgtq_s64(*(&keys.origin + v114), v115), vcgtq_s64(*(&keys.size + v114), v115)));
            v114 += 32;
          }

          while (v114 != 128);
          v117 = 16 - vaddvq_s32(v116);
        }

        else
        {
          v117 = time[v110] ^ 1;
        }

        *(v50 + 7968 + 4 * v110++) = v117;
      }

      while (v110 != 16);
      if (*(v50 + 9020) > 0.044)
      {
        memset_pattern16(v111, &unk_1AD056010, 0x80uLL);
        *(v50 + 7936) = 0u;
        *(v50 + 7952) = 0u;
        *(v50 + 7904) = 0u;
        *(v50 + 7920) = 0u;
        *(v50 + 7872) = 0u;
        *(v50 + 7888) = 0u;
        *v112 = 0u;
        *(v50 + 7856) = 0u;
        memset_pattern16((v50 + 7968), &unk_1AD056030, 0x40uLL);
      }
    }

    goto LABEL_134;
  }

  if (*(v50 + 8296))
  {
    v93 = *(v50 + 9024);
    if (v93 > 59)
    {
      goto LABEL_134;
    }
  }

  else
  {
    v93 = 0;
    *(v50 + 8296) = 1;
  }

  *(v50 + 9024) = v93 + 1;
  v94 = (v50 + 4 * v93);
  v94[2075] = HIDWORD(v249[0]);
  v94[2135] = DWORD2(v249[0]);
  v94[2195] = DWORD1(v249[0]);
LABEL_134:
  v45 = v232;
  v5 = v230;
LABEL_135:
  if (v226 > 2)
  {
    if (v226 == 3)
    {
      if ((*(v5 + 7580) & 1) == 0)
      {
        doLockFocusNow(v45);
        *(v5 + 7580) = 1;
      }

      return x_low;
    }

    if (v226 != 4 || (*(v5 + 7580) & 1) != 0 || (*(v5 + 81) & 1) != 0)
    {
      return x_low;
    }

    doLockFocusNow(v45);
    v125 = *(v5 + 7656);
    LODWORD(valuePtr.origin.x) = v125;
    if (v125 == -1)
    {
      v125 = *(v5 + 7652);
      LODWORD(valuePtr.origin.x) = v125;
    }

    if (v125 == 0x7FFFFFFF)
    {
      v126 = CMGetAttachment(v229, key, 0);
      if (v126)
      {
        v127 = CFDictionaryGetValue(v126, *off_1E798B208);
        if (v127)
        {
          CFNumberGetValue(v127, kCFNumberSInt32Type, &valuePtr);
        }
      }
    }

    if (*(v5 + 516))
    {
      v128 = *MEMORY[0x1E695E480];
      if (*(v5 + 7660))
      {
        v129 = *off_1E798A1C8;
        keys.origin.x = *off_1E798AEB8;
        keys.origin.y = v129;
        *time = CFNumberCreate(v128, kCFNumberSInt32Type, &valuePtr);
        *&time[8] = CFNumberCreate(v128, kCFNumberSInt32Type, (v5 + 7660));
        v130 = CFDictionaryCreate(v128, &keys, time, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFRelease(*time);
        CFRelease(*&time[8]);
LABEL_203:
        x_low = captureStreamSetPropertyOnActivityScheduler(v45, *off_1E798BFF0, v130);
        CFRelease(v130);
        *(v5 + 7580) = 1;
        return x_low;
      }
    }

    else
    {
      v128 = *MEMORY[0x1E695E480];
    }

    v130 = CFNumberCreate(v128, kCFNumberSInt32Type, &valuePtr);
    goto LABEL_203;
  }

  if (v226 == 1)
  {
    v131 = CMBaseObjectGetDerivedStorage();
    v132 = (v131 + 7580);
    v133 = CMGetAttachment(v229, key, 0);
    v249[0] = 0uLL;
    v248 = 0;
    v134 = *(MEMORY[0x1E695F058] + 16);
    *keya = *MEMORY[0x1E695F058];
    valuePtr.origin = *MEMORY[0x1E695F058];
    valuePtr.size = v134;
    v231 = v134;
    HIDWORD(v246) = 0;
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetInt32IfPresent();
    v135 = 0;
    if (*(v249 + 4) && LODWORD(v249[0]))
    {
      v135 = *(v131 + 7700) + 1;
    }

    *(v131 + 7700) = v135;
    v136 = CFDictionaryGetValue(v133, *off_1E798B090);
    if (v136 && *(v131 + 560) == 1)
    {
      CGRectMakeWithDictionaryRepresentation(v136, &valuePtr);
      *(v131 + 7676) = CGRectGetMinX(valuePtr);
      *(v131 + 7680) = CGRectGetMinY(valuePtr);
      *(v131 + 7684) = CGRectGetWidth(valuePtr);
      *(v131 + 7688) = CGRectGetHeight(valuePtr);
      *(v131 + 7672) = CGRectGetHeight(valuePtr) > 0.0;
      *(v131 + 556) = 0;
      v137 = *(v131 + 9032);
      if (v137)
      {
        Count = CFArrayGetCount(v137);
        if (Count >= 1)
        {
          v139 = 0;
          v140 = *off_1E798D040;
          v141 = Count & 0x7FFFFFFF;
          v142 = 1000000.0;
          do
          {
            v143 = CFArrayGetValueAtIndex(*(v131 + 9032), v139);
            if (v143)
            {
              keys.origin = *keya;
              keys.size = v231;
              v144 = CFDictionaryGetValue(v143, v140);
              if (v144)
              {
                CGRectMakeWithDictionaryRepresentation(v144, &keys);
              }

              MidX = CGRectGetMidX(valuePtr);
              v146 = MidX - CGRectGetMidX(keys);
              v147 = fabsf(v146);
              MidY = CGRectGetMidY(valuePtr);
              v149 = MidY - CGRectGetMidY(keys);
              v150 = v147 + fabsf(v149);
              if (v150 < v142)
              {
                *(v131 + 556) = v139;
                v142 = v150;
              }
            }

            ++v139;
          }

          while (v141 != v139);
        }
      }
    }

    else
    {
      *(v131 + 7672) = 0;
    }

    if (*v132)
    {
      if (*(v131 + 7581) == 1)
      {
        setupFocusWindowMatrix(v45, *(v131 + 7620), *(v131 + 7624), *(v131 + 7628), *(v131 + 7632), *(v131 + 560), *(v131 + 7636), *(v131 + 7640), 1);
        x_low = 0;
        *(v131 + 7581) = 0;
        return x_low;
      }

      if (*(v131 + 9056) == 1)
      {
        FigImageControl_Focus_cold_13(v131, v45, (v131 + 9056));
        return 0;
      }

      if (HIDWORD(v249[0]) == 4)
      {
        v157 = *(v131 + 7692);
        v65 = __OFSUB__(v157, 1);
        v158 = v157 - 1;
        if (v158 < 0 == v65)
        {
          x_low = 0;
          *(v131 + 7692) = v158;
          return x_low;
        }
      }

      else
      {
        *(v131 + 7692) = 0;
      }

      if ((*(v131 + 81) & 1) != 0 || (*(v131 + 8296) & 1) != 0 || *(v131 + 44) != 1)
      {
        return 0;
      }

      v159 = CFDictionaryGetValue(v133, *off_1E798B208);
      if (v159)
      {
        CFNumberGetValue(v159, kCFNumberIntType, &v246 + 4);
      }

      if (v248)
      {
        x_low = 0;
        *(v131 + 7608) = 0;
        goto LABEL_212;
      }

      os_unfair_lock_lock((v131 + 7576));
      v176 = *(v131 + 7608);
      v65 = __OFSUB__(v176, 1);
      v177 = v176 - 1;
      if (v177 < 0 == v65)
      {
        *(v131 + 7608) = v177;
        os_unfair_lock_unlock((v131 + 7576));
        return 0;
      }

      os_unfair_lock_unlock((v131 + 7576));
      if (*(v131 + 7582))
      {
        x_low = 0;
        goto LABEL_295;
      }

      if (*(v131 + 40))
      {
        v178 = *(v131 + 692) + 1;
      }

      else
      {
        v178 = 1;
      }

      LODWORD(keys.origin.x) = v178;
      v180 = *(v131 + 5500);
      v181 = v131 + 5508;
      v182 = 20;
      v183 = 3.4028e38;
      LOBYTE(v184) = v180;
      do
      {
        v184 = (v184 - 1) & 0x1F;
        if (*(v181 + 4 * v184) < v183)
        {
          v183 = *(v181 + 4 * v184);
        }

        --v182;
      }

      while (v182);
      if (v183 > 0.0004)
      {
        if (*(v131 + 652))
        {
          if (*(v131 + 7712 + 8 * v184) >= 2)
          {
            memset_pattern16((v131 + 7712), &unk_1AD056020, 0x80uLL);
            *(v131 + 7952) = 0u;
            *(v131 + 7936) = 0u;
            *(v131 + 7920) = 0u;
            *(v131 + 7904) = 0u;
            *(v131 + 7888) = 0u;
            *(v131 + 7872) = 0u;
            *(v131 + 7856) = 0u;
            *(v131 + 7840) = 0u;
            memset_pattern16((v131 + 7968), &unk_1AD056030, 0x40uLL);
          }
        }

        else if (HIDWORD(v246) != v178)
        {
          v220 = CFNumberCreate(0, kCFNumberIntType, &keys);
          x_low = doManualFocusNow(v45, v220);
          CFRelease(v220);
          *(v131 + 6232) = 1;
          *(v131 + 6248) = 1;
          v180 = *(v131 + 5500);
          goto LABEL_290;
        }
      }

      x_low = 0;
LABEL_290:
      v185 = 0.0;
      v186 = 3;
      do
      {
        v180 = (v180 - 1) & 0x1F;
        if (*(v181 + 4 * v180) > v185)
        {
          v185 = *(v181 + 4 * v180);
        }

        --v186;
      }

      while (v186);
      if (v185 > 0.0004)
      {
        return x_low;
      }

LABEL_295:
      if (*(v131 + 573) != 1 || (*(v131 + 7587) & 1) == 0)
      {
        v187 = *(v131 + 628);
        if (v187 < 1)
        {
          if (!*(v249 + 4))
          {
            return x_low;
          }
        }

        else if (*(v131 + 7700) < v187)
        {
          return x_low;
        }
      }

      if (*(v131 + 560) == 1 && CGRectGetHeight(valuePtr) > 0.0)
      {
        v188 = *(v131 + 6284);
        if (CGRectGetHeight(valuePtr) * 0.800000012 < v188 && CGRectGetHeight(valuePtr) > (v188 * 0.8))
        {
          return x_low;
        }
      }

      v189 = currentGain(v229);
      if (*(v131 + 652))
      {
        v190 = CFDictionaryGetValue(v133, *off_1E798B300);
        if (!v190)
        {
          return x_low;
        }

        v191 = CFArrayGetCount(v190);
        v244 = 0u;
        v245 = 0u;
        v242 = 0u;
        v243 = 0u;
        v240 = 0u;
        v241 = 0u;
        memset(&keys, 0, sizeof(keys));
        getFocusPeakSums(v133, &keys);
        v192 = 0;
        memset(time, 0, sizeof(time));
        do
        {
          *&time[v192] = CFNumberCreate(0, kCFNumberSInt64Type, &keys + v192);
          v192 += 8;
        }

        while (v192 != 128);
        v193 = CFArrayCreate(0, time, 16, MEMORY[0x1E695E9C0]);
        for (i = 0; i != 128; i += 8)
        {
          CFRelease(*&time[i]);
        }

        if (v191 < 1)
        {
          v196 = 0;
          v195 = 0;
        }

        else
        {
          v195 = 0;
          v196 = 0;
          if (v191 >= 0x10)
          {
            v197 = 16;
          }

          else
          {
            v197 = v191;
          }

          v198 = (v131 + 7968);
          v199 = (v131 + 7840);
          p_keys = &keys;
          do
          {
            v202 = *v198++;
            v201 = v202;
            v204 = p_keys->origin.x;
            p_keys = (p_keys + 8);
            v203 = v204;
            if (*&v204 < *(v199 - 16) || *&v203 > *v199)
            {
              v195 += v201;
            }

            v196 += v201;
            ++v199;
            --v197;
          }

          while (v197);
        }

        if (v193)
        {
          v208 = *(v131 + 7704);
          v209 = *(v131 + 8032 + 8 * v208);
          if (v209)
          {
            CFRelease(v209);
          }

          *(v131 + 8032 + 8 * v208) = v193;
          if (v208 <= 30)
          {
            v210 = v208 + 1;
          }

          else
          {
            v210 = 0;
          }

          *(v131 + 7704) = v210;
        }

        v211 = v195 > (v196 * 0.666) || v196 == 0;
        if (v211 || *(v131 + 7587) == 1)
        {
          v212 = *(v131 + 7696);
          *(v131 + 7696) = v212 + 1;
          if (v212 >= 4)
          {
            LODWORD(v246) = 0;
            v237 = 0;
            v236 = 0;
            getDefaultFocusScanRange(v45, &v246, &v237 + 1, &v237, &v236);
            setupSearchPositions(v45, v246, SHIDWORD(v237), v237, v236, 1, 1, v189);
            if (*(v131 + 7587) == 1)
            {
              v213 = off_1E798C2F0;
              if (!*(v131 + 561))
              {
                v213 = off_1E798C2E8;
              }

              x_low = doFocusNow(v45, 0, *v213, 1);
              *(v131 + 7587) = 0;
            }

            else if ((*(v131 + 7586) & 1) != 0 || *(v131 + 7585) == 1)
            {
              x_low = captureStreamSetPropertyOnActivityScheduler(v45, *off_1E798BCA0, 0);
              *(v131 + 6220) = 0;
              *(v131 + 5496) = 0;
            }

            else if (*(v131 + 7583) == 1)
            {
              if (*(v131 + 660) <= 1)
              {
                v223 = 1;
              }

              else
              {
                v223 = *(v131 + 660);
              }

              v45 = v232;
              doPeakTrackingAutofocusNow(v232, v223);
            }

            else
            {
              v45 = v232;
              x_low = doAutofocusNow(v232);
            }

            CMSampleBufferGetPresentationTimeStamp(&v235, v229);
            *(v131 + 5688) = CMTimeGetSeconds(&v235);
            FigImageControl_CurrentFocusRect(v45, (v131 + 5704), (v131 + 5708), (v131 + 5712), (v131 + 5716));
            *(v131 + 7692) = 10;
            ++*(v131 + 9052);
          }

          return x_low;
        }

LABEL_212:
        *(v131 + 7696) = 0;
        return x_low;
      }

      v205 = *(v131 + 6264);
      if (v205 >= *(v131 + 6232) && v205 <= *(v131 + 6248))
      {
        goto LABEL_212;
      }

      v206 = *(v131 + 7696);
      *(v131 + 7696) = v206 + 1;
      if (v206 < 2)
      {
        return x_low;
      }

      HIDWORD(v237) = 0;
      *time = 0;
      LODWORD(v235.value) = 0;
      LODWORD(v246) = 0;
      if (*(v131 + 560) == 1 && CGRectGetHeight(valuePtr) > 0.0)
      {
        v207 = 0;
        *(v131 + 6284) = CGRectGetHeight(valuePtr);
      }

      else
      {
        v207 = 0;
        *(v131 + 6284) = 0;
        v214 = v229;
        if (SHIDWORD(v246) < 97)
        {
LABEL_361:
          getDefaultFocusScanRange(v45, time, &v235, &v246, &v237 + 1);
          if (*(v131 + 7582))
          {
            v221 = v246;
          }

          else
          {
            v221 = v207;
          }

          setupSearchPositions(v45, *time, v235.value, v221, SHIDWORD(v237), 0, 1, v189);
          ++*(v131 + 9052);
          if (*(v131 + 7583) == 1)
          {
            if (*(v131 + 660) <= 1)
            {
              v222 = 1;
            }

            else
            {
              v222 = *(v131 + 660);
            }

            doPeakTrackingAutofocusNow(v45, v222);
          }

          else
          {
            x_low = doAutofocusNow(v45);
          }

          CMSampleBufferGetPresentationTimeStamp(&keys, v214);
          *(v131 + 5688) = CMTimeGetSeconds(&keys);
          FigImageControl_CurrentFocusRect(v45, (v131 + 5704), (v131 + 5708), (v131 + 5712), (v131 + 5716));
          *(v131 + 7692) = 10;
          return x_low;
        }

        v207 = HIDWORD(v246) - 80;
        if (v205 < *(v131 + 6232))
        {
          v215 = *(v131 + 6220);
          if (v215 >= 2)
          {
            v216 = (v215 - 1);
            v217 = (v131 + 5740);
            v218 = (v131 + 5904);
            v45 = v232;
            v214 = v229;
            do
            {
              v219 = *(v218 - 1);
              if (v205 > v219 && *v218 >= v205)
              {
                v207 = *(v217 - 1) + (v205 - v219) * (*v217 - *(v217 - 1)) / (*v218 - v219) - 20;
              }

              ++v217;
              ++v218;
              --v216;
            }

            while (v216);
            goto LABEL_361;
          }
        }

        v45 = v232;
      }

      v214 = v229;
      goto LABEL_361;
    }

    if (*(v131 + 652))
    {
      if (HIDWORD(v249[0]) != 4 || (*(v131 + 81) & 1) != 0)
      {
        return 0;
      }

      if (*(v131 + 9064))
      {
        FigImageControl_Focus_cold_12(v131, v45);
      }

      else
      {
        setupFocusWindowMatrix(v45, *(v131 + 7620), *(v131 + 7624), *(v131 + 7628), *(v131 + 7632), *(v131 + 560), *(v131 + 7636), *(v131 + 7640), 1);
      }

      if (*(v131 + 7586) == 1)
      {
        if (*(v131 + 7585))
        {
          LODWORD(keys.origin.x) = 0;
          *time = 0;
          LODWORD(v235.value) = 0;
          LODWORD(v246) = 0;
          getDefaultFocusScanRange(v45, &keys, time, &v235, &v246);
          setupSearchPositions(v45, SLODWORD(keys.origin.x), *time, v235.value, v246, 1, 1, 1.0);
          v156 = off_1E798C2F0;
          if (!*(v131 + 561))
          {
            v156 = off_1E798C2E8;
          }

          x_low = doFocusNow(v45, 0, *v156, 1);
          *(v131 + 7587) = 0;
        }

        else
        {
          x_low = 0;
          *(v131 + 7587) = 1;
        }

        goto LABEL_236;
      }

      if (*(v131 + 7585))
      {
        captureStreamSetPropertyOnActivityScheduler(v45, *off_1E798BD90, 0);
        x_low = 0;
        *(v131 + 8297) = 0;
LABEL_236:
        *(v131 + 540) = vmulq_f32(vcvtq_f32_s32(*(v131 + 7620)), vdupq_n_s32(0x3A83126Fu));
        *(v131 + 7672) = 0;
        *v132 = 1;
        *(v131 + 6232) = 1;
        *(v131 + 6248) = 0;
        *(v131 + 7608) = 0;
        return x_low;
      }
    }

    else
    {
      setupFocusWindows(*(v131 + 7620) * 0.001, *(v131 + 7624) * 0.001, *(v131 + 7628) * 0.001, *(v131 + 7632) * 0.001, v45, *(v131 + 560));
    }

    x_low = 0;
    goto LABEL_236;
  }

  if (v226 != 2)
  {
    return x_low;
  }

  v118 = CMBaseObjectGetDerivedStorage();
  v119 = CMGetAttachment(v229, key, 0);
  v120 = CFDictionaryGetValue(v119, *off_1E798B078);
  v121 = CFDictionaryGetValue(v119, *off_1E798B148);
  v122 = CFDictionaryGetValue(v119, *off_1E798B060);
  if (*(v118 + 636) >= 1)
  {
    v123 = *(v118 + 636);
  }

  else
  {
    v123 = 12;
  }

  v124 = 692;
  if (!*(v118 + 40))
  {
    v124 = 688;
  }

  if (*(v118 + 81))
  {
    return 0;
  }

  v151 = v122;
  v152 = *(v118 + v124);
  v153 = currentGain(v229);
  v154 = *(v118 + 652);
  if (*(v118 + 626) == 1)
  {
    v155 = v154 != 0;
  }

  else if (v154)
  {
    v155 = *(v118 + 7583) ^ 1;
  }

  else
  {
    v155 = 0;
  }

  if (*(v118 + 7580))
  {
    if (*(v118 + 44))
    {
      v160 = *(v118 + 524);
      v65 = __OFSUB__(v160, 1);
      v161 = v160 - 1;
      if (v161 < 0 == v65)
      {
        x_low = 0;
        *(v118 + 524) = v161;
        return x_low;
      }

      if (v120 && v121)
      {
        LODWORD(keys.origin.x) = 0;
        *time = 0;
        LODWORD(valuePtr.origin.x) = 0;
        CFNumberGetValue(v120, kCFNumberIntType, &keys);
        CFNumberGetValue(v121, kCFNumberIntType, time);
        if (v151)
        {
          CFNumberGetValue(v151, kCFNumberIntType, &valuePtr);
        }

        if (!((LODWORD(valuePtr.origin.x) != 0) | *(v118 + 7472) & 1 | (LODWORD(keys.origin.x) != 0)) || !*time)
        {
          v172 = *(v118 + 528);
          v65 = __OFSUB__(v172, 1);
          v173 = v172 - 1;
          if (v173 < 0 == v65)
          {
            x_low = 0;
            *(v118 + 528) = v173;
            return x_low;
          }
        }
      }

      if (*(v118 + 7586) == 1)
      {
        v174 = doFocusNow(v45, 1, *off_1E798C2F0, 1);
      }

      else
      {
        if (*(v118 + 7583) == 1)
        {
          if (*(v118 + 660) <= 1)
          {
            v175 = 1;
          }

          else
          {
            v175 = *(v118 + 660);
          }

          doPeakTrackingAutofocusNow(v45, v175);
          x_low = 0;
          goto LABEL_263;
        }

        v174 = doAutofocusNow(v45);
      }

      x_low = v174;
LABEL_263:
      CMSampleBufferGetPresentationTimeStamp(&keys, v229);
      *(v118 + 5688) = CMTimeGetSeconds(&keys);
      FigImageControl_CurrentFocusRect(v45, (v118 + 5704), (v118 + 5708), (v118 + 5712), (v118 + 5716));
      *(v118 + 6284) = 0;
      if (*(v118 + 7612) == 2)
      {
        *(v118 + 7612) = 3;
        *(v118 + 8297) = 1;
      }

      return x_low;
    }

    v163 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigAutofocusSampleBufferProcessorProperty_FocusMode, kFigAutofocusSampleBufferProcessorFocusMode_FocusAtPoint, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (v163)
    {
      CFRelease(v163);
    }

    return 0;
  }

  if (*(v118 + 515) == 1)
  {
    captureStreamSetPropertyOnActivityScheduler(v45, *off_1E798BF98, 0);
  }

  if (v155)
  {
    v162 = *(v118 + 9064);
    if (v162)
    {
      FigImageControl_Focus_cold_11(v118, v45, v162);
    }

    else
    {
      setupFocusWindowMatrix(v45, *(v118 + 7620), *(v118 + 7624), *(v118 + 7628), *(v118 + 7632), 0, *(v118 + 7636), *(v118 + 7640), 1);
    }
  }

  else
  {
    setupFocusWindows(*(v118 + 7620) * 0.001, *(v118 + 7624) * 0.001, *(v118 + 7628) * 0.001, *(v118 + 7632) * 0.001, v45, 0);
  }

  *(v118 + 540) = vmulq_f32(vcvtq_f32_s32(*(v118 + 7620)), vdupq_n_s32(0x3A83126Fu));
  *(v118 + 7672) = 0;
  if (*(v118 + 7582) == 1)
  {
    v164 = *(v118 + 7648);
    v165 = *(v118 + 7644);
    v166 = 2 * v123 * (v164 - v165) / 255;
    if (v166 >= v123)
    {
      v166 = v123;
    }

    if (v166 <= 5)
    {
      v167 = 5;
    }

    else
    {
      v167 = v166;
    }

    v168 = v155 & 1;
    v169 = v45;
    v170 = *(v118 + 7644);
  }

  else
  {
    v168 = v155 & 1;
    v169 = v45;
    v165 = v152;
    v164 = 255;
    v170 = v152;
    v167 = v123;
  }

  x_low = setupSearchPositions(v169, v165, v164, v170, v167, v168, 1, v153);
  *(v118 + 524) = 0x1400000004;
  *(v118 + 7580) = 1;
  return x_low;
}

CFIndex getFocusPeakSums(const __CFDictionary *a1, char *a2)
{
  result = CFDictionaryGetValue(a1, *off_1E798B300);
  if (result)
  {
    v4 = result;
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v5 = 0;
      if (result >= 0x10)
      {
        v6 = 16;
      }

      else
      {
        v6 = result;
      }

      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
        result = CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, a2);
        ++v5;
        a2 += 8;
      }

      while (v6 != v5);
    }
  }

  return result;
}

_BYTE *FigImageControl_Focus_cold_13(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = setupFocusWindowMatrixByPortType(a2, *(a1 + 9064), *(a1 + 560), *(a1 + 7636), *(a1 + 7640), 1);
  *a3 = 0;
  return result;
}

uint64_t FigImageControl_Exposure(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage + 4096;
  v6 = *off_1E798A3C8;
  v7 = CMGetAttachment(a2, *off_1E798A3C8, 0);
  v8 = *(DerivedStorage + 7468);
  if (!v8)
  {
    v8 = *(DerivedStorage + 7464);
  }

  if (*(DerivedStorage + 7456) == 1 && *(DerivedStorage + 7457) != 1)
  {
    v13 = 0;
    goto LABEL_156;
  }

  v9 = *(DerivedStorage + 7484);
  if (!v9 || (v10 = *(DerivedStorage + 7488)) == 0)
  {
    v11 = *(DerivedStorage + 608);
    v12 = (((v11 * -1000.0) + 1000.0) * 0.5);
    *(DerivedStorage + 7476) = v12;
    *(DerivedStorage + 7480) = v12;
    v10 = (v11 * 1000.0);
    *(DerivedStorage + 7484) = v10;
    *(DerivedStorage + 7488) = v10;
    LOWORD(v9) = v10;
  }

  v13 = 0;
  if (v8 <= 3)
  {
    if (v8 >= 2)
    {
      if (v8 == 2)
      {
        if (*(DerivedStorage + 7472) == 1)
        {
          unlockAEnow(a1);
          v9 = *(DerivedStorage + 7484);
          v10 = *(DerivedStorage + 7488);
        }

        setupExposureWindow(a1, *(DerivedStorage + 7476), *(DerivedStorage + 7480), v9, v10, *(DerivedStorage + 40) != 3);
        if ((*(DerivedStorage + 7456) & 1) != 0 || *(DerivedStorage + 512) != 1)
        {
          v13 = 0;
        }

        else
        {
          v13 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BC08, *off_1E798BB10);
        }

        if (*(DerivedStorage + 40) == 3)
        {
          *buffer = 204;
          LODWORD(v292[0]) = 60;
          LODWORD(v278[0]) = 75;
          LODWORD(v270[0]) = 8;
          v33 = CFNumberCreate(0, kCFNumberIntType, v278);
          if (*(DerivedStorage + 511) == 1)
          {
            keys[0].origin.y = 0.0;
            keys[0].origin.x = 0.0;
            values[1] = 0;
            values[0] = 0;
            v34 = *MEMORY[0x1E695E480];
            v35 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, v270);
            v36 = *off_1E798B9D8;
            keys[0].origin.x = *off_1E798B9E0;
            keys[0].origin.y = v36;
            values[0] = v33;
            values[1] = v35;
            v37 = CFDictionaryCreate(v34, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BC18, v37))
            {
              FigImageControl_Exposure_cold_11();
            }

            CFRelease(v37);
            CFRelease(v35);
          }

          else if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BC18, v33))
          {
            FigImageControl_Exposure_cold_10();
          }

          v45 = CFNumberCreate(0, kCFNumberIntType, v292);
          if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BBD0, v45))
          {
            FigImageControl_Exposure_cold_12();
          }

          v46 = CFNumberCreate(0, kCFNumberIntType, buffer);
          v13 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BE20, v46);
          if (v13)
          {
            FigImageControl_Exposure_cold_13();
          }

          CFRelease(v33);
          CFRelease(v45);
          CFRelease(v46);
        }
      }

      else if (v8 == 3)
      {
        v14 = CMBaseObjectGetDerivedStorage();
        if (*(v14 + 40) == 4)
        {
          *(v14 + 17737) = 1;
          if (*(v14 + 1548))
          {
            v15 = *(v14 + 9080);
            if (v15 < 1)
            {
              v16 = 0.001;
            }

            else
            {
              v16 = 1.0 / v15;
            }

            FigImageControl_SetExposureStabilityZone(a1, 1, v16);
            v47 = *MEMORY[0x1E695E480];
            v48 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (v14 + 1552));
            keys[0].origin.x = *off_1E798BBB8;
            values[0] = v48;
            v49 = CFNumberCreate(v47, kCFNumberIntType, (v14 + 1556));
            keys[0].origin.y = *off_1E798BAC8;
            values[1] = v49;
            v50 = CFDictionaryCreate(v47, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BF70, v50))
            {
              FigImageControl_Exposure_cold_3();
            }

            CFRelease(v50);
            CFRelease(v48);
            CFRelease(v49);
            v51 = CFNumberCreate(0, kCFNumberIntType, (v14 + 1560));
            if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BAF0, v51))
            {
              FigImageControl_Exposure_cold_4();
            }

            CFRelease(v51);
            if ((*(v14 + 1566) & 1) == 0)
            {
              v52 = CFNumberCreate(0, kCFNumberIntType, (v14 + 612));
              if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BBD0, v52))
              {
                FigImageControl_Exposure_cold_5();
              }

              CFRelease(v52);
            }
          }

          else if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BF90, *MEMORY[0x1E695E4D0]))
          {
            FigImageControl_Exposure_cold_6();
          }

          if ((*(v14 + 1564) & 1) == 0 && captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BFA8, *MEMORY[0x1E695E4D0]))
          {
            FigImageControl_Exposure_cold_7();
          }
        }

        else if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BF90, *MEMORY[0x1E695E4D0]))
        {
          FigImageControl_Exposure_cold_2();
        }

        if ((*(v14 + 40) != 4 || (*(v14 + 1565) & 1) == 0) && (*(v14 + 620) & 1) == 0)
        {
          if (*(v14 + 508) == 1 && captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BFB0, *MEMORY[0x1E695E4D0]))
          {
            FigImageControl_Exposure_cold_8();
          }

          if (*(v14 + 520) == 1 && captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BFB8, *MEMORY[0x1E695E4D0]))
          {
            FigImageControl_Exposure_cold_9();
          }
        }

        v13 = 0;
        *(v14 + 7472) = 1;
      }

      goto LABEL_155;
    }

    if (*(DerivedStorage + 7472) == 1)
    {
      unlockAEnow(a1);
    }

    if (*(DerivedStorage + 1508) > 0.0)
    {
      v22 = setupMeteringFaceDetection(a1, *(DerivedStorage + 8), 1);
LABEL_55:
      v13 = v22;
      goto LABEL_155;
    }

    v17 = *(DerivedStorage + 7476);
    v18 = *(DerivedStorage + 7480);
    v9 = *(DerivedStorage + 7484);
    v10 = *(DerivedStorage + 7488);
    goto LABEL_57;
  }

  if (v8 > 7)
  {
    if (v8 != 8)
    {
      if (v8 != 10)
      {
        goto LABEL_155;
      }

      if (*(DerivedStorage + 7472) == 1)
      {
        unlockAEnow(a1);
        v9 = *(DerivedStorage + 7484);
        v10 = *(DerivedStorage + 7488);
      }

      setupExposureWindow(a1, *(DerivedStorage + 7476), *(DerivedStorage + 7480), v9, v10, *(DerivedStorage + 40) != 3);
      if ((*(DerivedStorage + 7456) & 1) != 0 || *(DerivedStorage + 512) != 1)
      {
        goto LABEL_58;
      }

      v19 = *off_1E798BC08;
      v20 = *off_1E798BB08;
      v21 = a1;
LABEL_54:
      v22 = captureStreamSetPropertyOnActivityScheduler(v21, v19, v20);
      goto LABEL_55;
    }

    HIDWORD(valuePtr) = 1032358025;
    *(DerivedStorage + 7472) = 1;
    *(DerivedStorage + 7532) = 0;
    v26 = *MEMORY[0x1E695E4D0];
    v268 = a1;
    v13 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BF90, *MEMORY[0x1E695E4D0]);
    v27 = CFPreferencesCopyAppValue(@"exposure_table:Disable", @"com.apple.coremedia");
    if (v27)
    {
      v28 = v27;
      v29 = CFGetTypeID(v27);
      if (v29 == CFBooleanGetTypeID())
      {
        *(DerivedStorage + 7568) = CFBooleanGetValue(v28) != 0;
      }

      CFRelease(v28);
    }

    if (*(DerivedStorage + 7568) == 1)
    {
      Value = CFDictionaryGetValue(v7, *off_1E798B2A8);
      LODWORD(keys[0].origin.x) = 256;
      a1 = v268;
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr + 4);
      }

      v31 = CFDictionaryGetValue(v7, *off_1E798B0B8);
      if (v31)
      {
        CFNumberGetValue(v31, kCFNumberIntType, keys);
      }

      v32 = (*(&valuePtr + 1) * SLODWORD(keys[0].origin.x)) * 0.0039062;
      if (v32 < 0.000125)
      {
        v32 = 0.000125;
      }

      *(&valuePtr + 1) = v32;
      *(DerivedStorage + 7528) = v32;
      v19 = *off_1E798BBF8;
      v21 = v268;
      v20 = v26;
      goto LABEL_54;
    }

    a1 = v268;
    if (*(DerivedStorage + 7560))
    {
      goto LABEL_155;
    }

    *buffer = 0u;
    v285 = 0u;
    v293 = 0u;
    *v292 = 0u;
    v43 = CFPreferencesCopyAppValue(@"exposure_table:IntegrationTime", @"com.apple.coremedia");
    if (v43)
    {
      *buffer = @"IntegrationTime";
      v292[0] = v43;
      LODWORD(v44) = 1;
    }

    else
    {
      LODWORD(v44) = 0;
    }

    v62 = CFPreferencesCopyAppValue(@"exposure_table:MaxGain", @"com.apple.coremedia");
    if (v62)
    {
      *(buffer | (8 * v44)) = @"MaxGain";
      *(v292 & 0xFFFFFFFFFFFFFFF7 | (8 * (v44 & 1))) = v62;
      LODWORD(v44) = v44 + 1;
    }

    v63 = CFPreferencesCopyAppValue(@"exposure_table:ExposureDelta", @"com.apple.coremedia");
    if (v63)
    {
      *&buffer[8 * v44] = @"ExposureDelta";
      v292[v44] = v63;
      LODWORD(v44) = v44 + 1;
    }

    v64 = CFPreferencesCopyAppValue(@"exposure_table:StabilityZone", @"com.apple.coremedia");
    if (v64)
    {
      *&buffer[8 * v44] = @"StabilityZone";
      v292[v44] = v64;
      LODWORD(v44) = v44 + 1;
    }

    else if (!v44)
    {
      goto LABEL_351;
    }

    v44 = v44;
    v137 = CFDictionaryCreate(*MEMORY[0x1E695E480], buffer, v292, v44, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v138 = malloc_type_malloc(0x20uLL, 0x1020040A02120EAuLL);
    v139 = exposure_table_initialize(v138, v137);
    if (v139)
    {
      free(v138);
    }

    else
    {
      *(DerivedStorage + 7560) = v138;
    }

    CFRelease(v137);
    v241 = v292;
    do
    {
      v242 = *v241++;
      CFRelease(v242);
      --v44;
    }

    while (v44);
    if (!v139)
    {
      v13 = 0;
LABEL_359:
      a1 = v268;
      goto LABEL_155;
    }

LABEL_351:
    v243 = 0;
    v295 = 0;
    memset(keys, 0, sizeof(keys));
    v291 = 0;
    v290 = 0u;
    *v289 = 0u;
    *cf = 0u;
    *values = 0u;
    v244 = *MEMORY[0x1E695E480];
    v245 = &gDefaultExposureTable;
    do
    {
      *(&keys[0].origin.x + v243 * 8) = CFNumberCreate(v244, kCFNumberDoubleType, v245);
      values[v243] = CFNumberCreate(v244, kCFNumberDoubleType, v245 + 72);
      v245 += 8;
      ++v243;
    }

    while (v243 != 9);
    v246 = MEMORY[0x1E695E9C0];
    v247 = CFArrayCreate(v244, keys, 9, MEMORY[0x1E695E9C0]);
    v248 = CFArrayCreate(v244, values, 9, v246);
    *v278 = xmmword_1E799DFC0;
    v270[0] = v247;
    v270[1] = v248;
    v249 = CFDictionaryCreate(v244, v278, v270, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v250 = malloc_type_malloc(0x20uLL, 0x1020040A02120EAuLL);
    v13 = exposure_table_initialize(v250, v249);
    if (v13)
    {
      free(v250);
    }

    else
    {
      *(DerivedStorage + 7560) = v250;
    }

    CFRelease(v249);
    CFRelease(v247);
    CFRelease(v248);
    for (i = 0; i != 9; ++i)
    {
      CFRelease(*(&keys[0].origin.x + i * 8));
      CFRelease(values[i]);
    }

    goto LABEL_359;
  }

  if (v8 == 4)
  {
    *buffer = 0;
    if ((*(DerivedStorage + 7472) & 1) == 0)
    {
      if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BF90, *MEMORY[0x1E695E4D0]))
      {
        FigImageControl_Exposure_cold_1();
      }

      *(DerivedStorage + 7472) = 1;
    }

    v23 = *(DerivedStorage + 7492);
    if (v23 <= 0.125)
    {
      v24 = ((1.0 / v23) + 0.5);
      v25 = 1;
    }

    else
    {
      if (v23 >= 0.01)
      {
        v24 = 1000;
      }

      else
      {
        v24 = 100000;
      }

      v25 = ((v24 * v23) + 0.5);
    }

    LODWORD(v278[0]) = v24;
    LODWORD(v292[0]) = v25;
    v38 = *(DerivedStorage + 7504);
    if (v38 != 0.0)
    {
      v39 = *(DerivedStorage + 7512);
      if (v39 != 0.0)
      {
        v40 = v24 / v25;
        if (v40 >= v38)
        {
          if (v40 <= v39)
          {
            *buffer = floor(v40);
          }

          else
          {
            *buffer = *(DerivedStorage + 7512);
          }
        }

        else
        {
          *buffer = *(DerivedStorage + 7504);
          v41 = 1.0 / v38;
          *(DerivedStorage + 7492) = v41;
          if (v41 <= 0.125)
          {
            LODWORD(v292[0]) = 1;
            LODWORD(v278[0]) = ((1.0 / v41) + 0.5);
          }

          else
          {
            if (v41 >= 0.01)
            {
              v42 = 1000;
            }

            else
            {
              v42 = 100000;
            }

            LODWORD(v278[0]) = v42;
            LODWORD(v292[0]) = ((v42 * v41) + 0.5);
          }
        }
      }
    }

    LODWORD(v270[0]) = 256;
    valuePtr = 0x10000000100;
    v53 = *(DerivedStorage + 7500);
    if (v53 == 3.4028e38)
    {
      v54 = CFDictionaryGetValue(v7, *off_1E798B3B0);
      if (v54)
      {
        CFNumberGetValue(v54, kCFNumberFloatType, (DerivedStorage + 7500));
      }

      v55 = CFDictionaryGetValue(v7, *off_1E798B0B8);
      if (v55)
      {
        CFNumberGetValue(v55, kCFNumberIntType, &valuePtr);
      }

      v56 = CFDictionaryGetValue(v7, *off_1E798B7D0);
      if (v56)
      {
        CFNumberGetValue(v56, kCFNumberIntType, v270);
      }

      v57 = CFDictionaryGetValue(v7, *off_1E798B7B8);
      if (v57)
      {
        CFNumberGetValue(v57, kCFNumberIntType, &valuePtr + 4);
      }

      LODWORD(keys[0].origin.x) = 1065353216;
      v58 = CFDictionaryGetValue(v7, *off_1E798B7C0);
      if (v58)
      {
        CFNumberGetValue(v58, kCFNumberFloatType, keys);
      }

      HIDWORD(valuePtr) = vcvtps_s32_f32(SHIDWORD(valuePtr) / *&keys[0].origin.x);
    }

    else
    {
      if (v53 <= 0.0)
      {
        v61 = vcvts_n_s32_f32(*(DerivedStorage + 7496), 8uLL);
      }

      else
      {
        LODWORD(keys[0].origin.x) = 1112014848;
        v59 = CFDictionaryGetValue(v7, *off_1E798B3A8);
        if (v59)
        {
          CFNumberGetValue(v59, kCFNumberFloatType, keys);
          v60 = *&keys[0].origin.x;
        }

        else
        {
          v60 = 50.0;
        }

        v65 = *(DerivedStorage + 7500) / v60;
        v66 = v65 * 256.0;
        if (v65 <= 255.0)
        {
          v61 = v66;
        }

        else
        {
          HIDWORD(valuePtr) = (v66 / 255.0);
          v61 = 65280;
        }
      }

      LODWORD(valuePtr) = v61;
    }

    memset(&keys[0].origin.y, 0, 48);
    *&v290 = 0;
    *v289 = 0u;
    *cf = 0u;
    *values = 0u;
    keys[0].origin.x = *off_1E798A2A8;
    v67 = *MEMORY[0x1E695E480];
    values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, v292);
    keys[0].origin.y = *off_1E798A2A0;
    values[1] = CFNumberCreate(v67, kCFNumberIntType, v278);
    keys[0].size.width = *off_1E798A1B0;
    cf[0] = CFNumberCreate(v67, kCFNumberIntType, &valuePtr);
    keys[0].size.height = *off_1E798A298;
    cf[1] = CFNumberCreate(v67, kCFNumberIntType, v270);
    keys[1].origin.x = *off_1E798A290;
    v289[0] = CFNumberCreate(v67, kCFNumberIntType, &valuePtr + 4);
    if (*buffer <= 0.0)
    {
      v68 = 5;
    }

    else
    {
      keys[1].origin.y = *off_1E798A200;
      v289[1] = CFNumberCreate(v67, kCFNumberDoubleType, buffer);
      v68 = 6;
    }

    if (*(DerivedStorage + 7520) >= 1)
    {
      *(&keys[0].origin.x + v68) = *off_1E798A1C8;
      values[v68++] = CFNumberCreate(v67, kCFNumberSInt32Type, (DerivedStorage + 7520));
    }

    v69 = CFDictionaryCreate(v67, keys, values, v68, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v70 = a1;
    v13 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BFE8, v69);
    v71 = 0;
    v72 = 8 * v68;
    do
    {
      CFRelease(values[v71 / 8]);
      v71 += 8;
    }

    while (v72 != v71);
    CFRelease(v69);
    a1 = v70;
    goto LABEL_155;
  }

  if (v8 == 5)
  {
    if (*(DerivedStorage + 1508) > 0.0)
    {
LABEL_58:
      v13 = 0;
      goto LABEL_155;
    }

    v17 = *(DerivedStorage + 7476);
    v18 = *(DerivedStorage + 7480);
LABEL_57:
    setupExposureWindow(a1, v17, v18, v9, v10, 1);
    goto LABEL_58;
  }

LABEL_155:
  *(v5 + 3360) = 1;
LABEL_156:
  if (v8 != 8)
  {
    return v13;
  }

  if (*(v5 + 3472))
  {
    v73 = CMBaseObjectGetDerivedStorage();
    v74 = CMGetAttachment(a2, v6, 0);
    v75 = CFDictionaryGetValue(v74, *off_1E798B070);
    if (v75)
    {
      BytePtr = CFDataGetBytePtr(v75);
      v77 = 0;
      v78 = values;
      do
      {
        v79 = 0;
        v80 = v78;
        do
        {
          v81 = *&BytePtr[v79];
          *v80 = vmovl_u16(*v81.i8);
          v80[1] = vmovl_high_u16(v81);
          v80 += 2;
          v79 += 16;
        }

        while (v79 != 32);
        ++v77;
        v78 += 8;
        BytePtr += 32;
      }

      while (v77 != 16);
      LODWORD(v270[0]) = 0;
      valuePtr = 0;
      v82 = CFDictionaryGetValue(v74, *off_1E798B120);
      if (v82)
      {
        CFNumberGetValue(v82, kCFNumberIntType, v270);
      }

      v83 = CFDictionaryGetValue(v74, *off_1E798B0F8);
      if (v83)
      {
        CFNumberGetValue(v83, kCFNumberIntType, &valuePtr + 4);
      }

      v84 = CFDictionaryGetValue(v74, *off_1E798B0C0);
      if (v84)
      {
        CFNumberGetValue(v84, kCFNumberIntType, &valuePtr);
      }

      v85 = CFDictionaryGetValue(v74, *off_1E798B3A0);
      if (v85)
      {
        v86 = v85;
        if (CFDataGetLength(v85) == 1024)
        {
          v296.location = 0;
          v296.length = 1024;
          CFDataGetBytes(v86, v296, buffer);
          v87 = 0;
          v88 = 0uLL;
          do
          {
            v88 = vaddq_s32(*&buffer[v87], v88);
            v87 += 16;
          }

          while (v87 != 1024);
          v89 = 0;
          v90 = vdupq_lane_s64(COERCE__INT64(vaddvq_s32(v88)), 0);
          v91 = vdupq_n_s64(0x4117E80000000000uLL);
          do
          {
            v92 = *&buffer[v89];
            v93.i64[0] = v92;
            v93.i64[1] = DWORD1(v92);
            v94 = vcvtq_f64_u64(v93);
            v93.i64[0] = DWORD2(v92);
            v93.i64[1] = HIDWORD(v92);
            *&buffer[v89] = vuzp1q_s32(vcvtq_u64_f64(vdivq_f64(vmulq_f64(v94, v91), v90)), vcvtq_u64_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v93), v91), v90)));
            v89 += 16;
          }

          while (v89 != 1024);
          v95 = 0;
          v96 = 0;
          v97 = 0;
          do
          {
            v98 = *&buffer[4 * v95];
            v97 += v98;
            if (v98 > *&buffer[4 * v96])
            {
              v96 = v95;
            }

            ++v95;
          }

          while (v95 != 256);
          *&buffer[4 * v96] = *&buffer[4 * v96] - v97 + 391680;
          v99 = *(v73 + 7532);
          *(v73 + 7532) = v99 + 1;
          if (v99)
          {
            v100 = CFDictionaryGetValue(v74, *off_1E798D030);
            v269 = a1;
            if (v100)
            {
              v101 = v100;
              memset(keys, 0, 32);
              Count = CFArrayGetCount(v100);
              if (Count >= 8)
              {
                v103 = 8;
              }

              else
              {
                v103 = Count;
              }

              if (Count)
              {
                v104 = 0;
                v105 = 0;
                v106 = *off_1E798D040;
                do
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v101, v104);
                  if (ValueAtIndex)
                  {
                    v108 = CFDictionaryGetValue(ValueAtIndex, v106);
                    if (v108)
                    {
                      CGRectMakeWithDictionaryRepresentation(v108, keys);
                      v109 = &v292[2 * v105];
                      *v109 = (CGRectGetMinX(keys[0]) * 3264.0 + 0.5);
                      *(v109 + 1) = (CGRectGetMinY(keys[0]) * 2448.0 + 0.5);
                      *(v109 + 2) = (CGRectGetWidth(keys[0]) * 3264.0 + 0.5);
                      *(v109 + 3) = (CGRectGetHeight(keys[0]) * 2448.0 + 0.5);
                      ++v105;
                    }
                  }

                  ++v104;
                }

                while (v103 != v104);
              }

              else
              {
                v105 = 0;
              }
            }

            else
            {
              v105 = 0;
            }

            v267 = fopen("/tmp/ae.txt", "a");
            v140 = 0;
            v141 = 0;
            v142 = *(v73 + 7532);
            v143 = &centerWeight;
            do
            {
              v144 = 0;
              v145 = v140;
              do
              {
                v146 = *&v143[v144];
                v147 = vorrq_s8(vshlq_n_s32(*(&values[2] + v145), 0x10uLL), vmovl_high_u16(v146));
                v148 = (keys + v145);
                *v148 = vorrq_s8(vshlq_n_s32(*(values + v145), 0x10uLL), vmovl_u16(*v146.i8));
                v148[1] = v147;
                v145 += 32;
                v144 += 16;
              }

              while (v144 != 32);
              ++v141;
              v140 += 64;
              v143 += 32;
            }

            while (v141 != 16);
            for (j = 0; j != 9; ++j)
            {
              if ((j - 3) <= 5)
              {
                v150 = sort_uint32_increments[j];
                if (v150 <= 0xFF)
                {
                  v151 = 255;
                }

                else
                {
                  v151 = sort_uint32_increments[j];
                }

                v152 = keys;
                v153 = keys + 4 * v150;
                v154 = sort_uint32_increments[j];
                do
                {
                  v155 = *(&keys[0].origin.x + v154);
                  v156 = v154;
                  if (v154 >= v150)
                  {
                    v157 = 0;
                    while (1)
                    {
                      v158 = *(&v152->origin.x + v157);
                      if (v158 <= v155)
                      {
                        break;
                      }

                      *&v153[4 * v157] = v158;
                      v157 -= v150;
                      v156 = v154 + v157;
                      if (v154 + v157 < v150)
                      {
                        goto LABEL_233;
                      }
                    }

                    v156 = v154 + v157;
                  }

LABEL_233:
                  *(&keys[0].origin.x + v156) = v155;
                  v153 += 4;
                  v152 = (v152 + 4);
                }

                while (v154++ != v151);
              }
            }

            v266 = v73;
            v160 = 0;
            v161 = 0;
            v162 = 0;
            v163 = 0;
            v164 = 0;
            v165 = 0;
            do
            {
              v166 = *(&keys[0].origin.x + v160);
              v167 = v166;
              v163 += v166;
              if (v163 > 319)
              {
                v168 = v162;
              }

              else
              {
                v168 = v162 + 1;
              }

              if (v163 <= 319)
              {
                v169 = v161;
              }

              else
              {
                v169 = v161 + 1;
              }

              v170 = v165 + v166 * HIWORD(v166);
              v171 = v167 + v164;
              if ((v163 - 15569) < 0xFFFFC46F)
              {
                v162 = v168;
                v161 = v169;
              }

              else
              {
                v165 = v170;
                v164 = v171;
              }

              v160 += 4;
            }

            while (v160 != 1024);
            if (v164 < 1)
            {
              v172 = 0;
            }

            else
            {
              v172 = v165 / v164;
            }

            for (k = 0; k != 16; ++k)
            {
              v174 = 0;
              v175 = &autoExposureSimulation_state + 32 * k;
              do
              {
                if (v105 < 1)
                {
                  v176 = 0;
                }

                else
                {
                  v176 = 0;
                  v177 = &v292[1];
                  v178 = v105;
                  do
                  {
                    v179 = *(v177 - 2);
                    v180 = *(v177 - 1);
                    v181 = (v179 << 12) / 3264;
                    v182 = (v180 << 12) / 2448;
                    v183 = ((*v177 + v179) << 12) / 0xCC0u;
                    v184 = ((*(v177 + 1) + v180) << 12) / 0x990u;
                    if (v181 <= v174 << 8)
                    {
                      v181 = v174 << 8;
                    }

                    if (v182 <= k << 8)
                    {
                      v185 = k << 8;
                    }

                    else
                    {
                      v185 = v182;
                    }

                    if (v183 >= (v174 << 8) + 256)
                    {
                      v186 = (v174 << 8) + 256;
                    }

                    else
                    {
                      v186 = v183;
                    }

                    if (v184 >= (k << 8) + 256)
                    {
                      v184 = (k << 8) + 256;
                    }

                    v187 = v186 >= v181;
                    v188 = v186 - v181;
                    if (v188 != 0 && v187 && v184 > v185)
                    {
                      v176 += ((v184 - v185) * v188) >> 8;
                    }

                    v177 += 2;
                    --v178;
                  }

                  while (v178);
                }

                if (v142 > 1)
                {
                  v176 = (9 * v176 - *&v175[2 * v174] + 8 * *&v175[2 * v174] + 7) >> 4;
                }

                *&v175[2 * v174++] = v176;
              }

              while (v174 != 16);
            }

            v190 = 0;
            v191 = 0;
            v192 = 0;
            v193 = values;
            v194 = &autoExposureSimulation_state;
            do
            {
              v195 = 0;
              v196 = v191;
              v197 = 0uLL;
              v198 = v192;
              v199 = v193;
              v200 = 0uLL;
              do
              {
                v201 = *&v194[v195];
                v203 = *v199;
                v202 = v199[1];
                v199 += 2;
                v200 = vmlaq_s32(v200, v202, vmovl_high_u16(v201));
                v198 = vmlaq_s32(v198, v203, vmovl_u16(*v201.i8));
                v197 = vaddw_high_u16(v197, v201);
                v196 = vaddw_u16(v196, *v201.i8);
                v195 += 16;
              }

              while (v195 != 32);
              v191 = vaddvq_s32(vaddq_s32(v196, v197));
              v192 = vaddvq_s32(vaddq_s32(v198, v200));
              ++v190;
              v194 += 32;
              v193 += 8;
            }

            while (v190 != 16);
            v204 = 0;
            v205 = 0x10000;
            do
            {
              if (((v204 + v205) >> 1) * ((v204 + v205) >> 1) > v191)
              {
                v205 = (v204 + v205) >> 1;
              }

              else
              {
                v204 = (v204 + v205) >> 1;
              }
            }

            while (v204 + 1 < v205);
            v206 = 0;
            v207 = 0uLL;
            do
            {
              v207 = vaddq_s32(*&buffer[v206], v207);
              v206 += 16;
            }

            while (v206 != 1024);
            v208 = 0;
            v209 = 0;
            v210 = vaddvq_s32(v207);
            v211 = -1;
            v212 = -1;
            v213 = -1;
            do
            {
              v209 += *&buffer[4 * v208];
              if (v213 == -1 && v209 >= (10 * v210) >> 10)
              {
                v213 = v208;
              }

              if (v212 == -1 && v209 >= (665 * v210) >> 10)
              {
                v212 = v208;
              }

              if (v211 == -1 && v209 >= (972 * v210) >> 10)
              {
                v211 = v208;
              }

              ++v208;
            }

            while (v208 != 256);
            v217 = (v212 << 11) / (v211 + v213);
            if (v217 <= 512)
            {
              v218 = 512;
            }

            else
            {
              v218 = (v212 << 11) / (v211 + v213);
            }

            if (v218 >= 2048)
            {
              v219 = 2048;
            }

            else
            {
              v219 = v218;
            }

            v220 = v219 - 1024;
            v221 = v192 / v191;
            if (v217 < 1025)
            {
              v222 = (112976 * v220 + 192937984) >> 20;
            }

            else
            {
              v222 = (131744 * v220 + 192937984) >> 20;
              v223 = (((v286 << 10) / v210) + -51.2);
              if (v223 >= 1)
              {
                v224 = 4 * v223;
                if (v224 >= 1024)
                {
                  v224 = 1024;
                }

                v222 = (184 * v224 + (1024 - v224) * v222) >> 10;
              }
            }

            v225 = 8 * v204;
            if ((8 * v204) >= 768)
            {
              v225 = 768;
            }

            v226 = v225 & ~(v225 >> 31);
            v227 = ((1024 - v226) * v172 + v221 * v226) >> 10;
            v228 = (225 * v226 + v222 * (1024 - v226)) >> 10;
            if (v267)
            {
              v262 = v222;
              v263 = ((1024 - v226) * v172 + v221 * v226) >> 10;
              v264 = v219;
              v265 = v221;
              LODWORD(keys[0].origin.x) = 1065353216;
              LODWORD(v278[0]) = 256;
              v229 = CFDictionaryGetValue(v74, *off_1E798B2A8);
              if (v229)
              {
                CFNumberGetValue(v229, kCFNumberFloatType, keys);
              }

              v230 = CFDictionaryGetValue(v74, *off_1E798B0B8);
              if (v230)
              {
                CFNumberGetValue(v230, kCFNumberIntType, v278);
                v231 = vcvtd_n_f64_s32(v278[0], 8uLL);
              }

              else
              {
                v231 = 1.0;
              }

              fprintf(v267, "avg:%3d tgt:%3d  current: t=%.1fms %.1fx", v263, v228, *&keys[0].origin.x * 1000.0, v231);
              fprintf(v267, " faceAvg=%d faceWeight=%d (xl=%d xm=%d xh=%d) scale:%d sceneTarget:%d blend:%d average:%d target:%d outliers:%d/%d", v265, 4 * v204, v213, v212, v211, v264, v262, v226, v263, v228, v162, v161);
              v227 = v263;
            }

            if (v228 * 1.0443 < v227 || v228 * 0.9576 > v227)
            {
              v233 = 256;
              v282 = 256;
              v234 = (((v228 * 0.1) / v227) + 0.9) * *(v266 + 7528);
              v235 = 0.066667;
              if (v234 <= 0.066667)
              {
                v235 = (((v228 * 0.1) / v227) + 0.9) * *(v266 + 7528);
              }

              else
              {
                v233 = vcvts_n_s32_f32(v234 / 0.066667, 8uLL);
                if (v233 >= 3840)
                {
                  v233 = 3840;
                }
              }

              v276 = v233;
              if (v235 >= 0.000125)
              {
                v236 = v235;
              }

              else
              {
                v236 = 0.000125;
              }

              if (v236 >= 0.01)
              {
                v237 = 1000;
              }

              else
              {
                v237 = 100000;
              }

              LODWORD(v277) = v237;
              HIDWORD(v277) = ((v237 * v236) + 0.5);
              keys[0].origin.x = *off_1E798A2A8;
              v238 = *MEMORY[0x1E695E480];
              v278[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v277 + 4);
              keys[0].origin.y = *off_1E798A2A0;
              v278[1] = CFNumberCreate(v238, kCFNumberIntType, &v277);
              keys[0].size.width = *off_1E798A1B0;
              v279 = CFNumberCreate(v238, kCFNumberIntType, &v276);
              keys[0].size.height = *off_1E798A298;
              v280 = CFNumberCreate(v238, kCFNumberIntType, &v282);
              keys[1].origin.x = *off_1E798A290;
              v281 = CFNumberCreate(v238, kCFNumberIntType, &v282);
              v239 = CFDictionaryCreate(v238, keys, v278, 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              for (m = 0; m != 5; ++m)
              {
                CFRelease(v278[m]);
              }

              if (v267)
              {
                fprintf(v267, "  set: t=%.1fms %.1fx", v236 * 1000.0, (v276 * 0.0039062));
              }

              captureStreamSetPropertyOnActivityScheduler(v269, *off_1E798BFE8, v239);
              *(v266 + 7528) = (v236 * v276) * 0.0039062;
            }

            if (v267)
            {
              fputc(10, v267);
              fclose(v267);
            }
          }
        }
      }
    }

    return v13;
  }

  v110 = CMBaseObjectGetDerivedStorage();
  v111 = *(v110 + 7560);
  v112 = CMGetAttachment(a2, v6, 0);
  if (!v112)
  {
    FigImageControl_Exposure_cold_26();
    return v13;
  }

  if (v111)
  {
    if (*v111)
    {
      v113 = *(v110 + 7532);
      *(v110 + 7532) = v113 + 1;
      if (v113)
      {
        v114 = v112;
        valuePtr = 0;
        *buffer = 0;
        v292[0] = 0;
        v275 = 0;
        v277 = 0;
        v278[0] = 0;
        v282 = 0;
        v270[0] = 0;
        v115 = CFDictionaryGetValue(v112, *off_1E798B048);
        if (!v115)
        {
          FigImageControl_Exposure_cold_25();
          return v13;
        }

        CFNumberGetValue(v115, kCFNumberIntType, &valuePtr + 4);
        v116 = CFDictionaryGetValue(v114, *off_1E798B088);
        if (!v116)
        {
          FigImageControl_Exposure_cold_24();
          return v13;
        }

        CFNumberGetValue(v116, kCFNumberIntType, &valuePtr);
        v117 = CFDictionaryGetValue(v114, *off_1E798B2D0);
        if (!v117)
        {
          FigImageControl_Exposure_cold_23();
          return v13;
        }

        CFNumberGetValue(v117, kCFNumberDoubleType, buffer);
        v118 = CFDictionaryGetValue(v114, *off_1E798B2A8);
        if (!v118)
        {
          FigImageControl_Exposure_cold_22();
          return v13;
        }

        CFNumberGetValue(v118, kCFNumberDoubleType, v292);
        v119 = CFDictionaryGetValue(v114, *off_1E798B3B0);
        if (!v119)
        {
          FigImageControl_Exposure_cold_21();
          return v13;
        }

        CFNumberGetValue(v119, kCFNumberSInt16Type, &v275);
        v120 = CFDictionaryGetValue(v114, *off_1E798B3A8);
        if (!v120)
        {
          FigImageControl_Exposure_cold_20();
          return v13;
        }

        CFNumberGetValue(v120, kCFNumberDoubleType, v278);
        v121 = CFDictionaryGetValue(v114, *off_1E798B0B8);
        if (!v121)
        {
          FigImageControl_Exposure_cold_19();
          return v13;
        }

        CFNumberGetValue(v121, kCFNumberIntType, &v282);
        v122 = CFDictionaryGetValue(v114, *off_1E798B7B8);
        if (!v122)
        {
          FigImageControl_Exposure_cold_18();
          return v13;
        }

        CFNumberGetValue(v122, kCFNumberIntType, &v277 + 4);
        v123 = CFDictionaryGetValue(v114, *off_1E798B7D0);
        if (!v123)
        {
          FigImageControl_Exposure_cold_17();
          return v13;
        }

        CFNumberGetValue(v123, kCFNumberIntType, &v277);
        v124 = CFDictionaryGetValue(v114, *off_1E798B7C0);
        if (!v124)
        {
          FigImageControl_Exposure_cold_16();
          return v13;
        }

        CFNumberGetValue(v124, kCFNumberDoubleType, v270);
        v125 = *buffer * *buffer;
        v126 = log2(*buffer * *buffer / (*v292 * (v275 / 100.0)));
        v127 = log2(SHIDWORD(valuePtr));
        v128 = v126 + v127 - log2(valuePtr);
        if (vabdd_f64(v126, v128) > *(v111 + 3))
        {
          v129 = *v111;
          if (*v111)
          {
            v130 = *(v111 + 2);
            if (v130)
            {
              v131 = *v278 * *v270;
              v132 = log2(v125 / (*(v129 + 8) * ((*v278 * *v270 * *(v129 + 16)) / 100.0)));
              v133 = (*v129 + (v128 - v132) * ((*(v129 + 24 * v130 - 24) - *v129) / (log2(v125 / (*(v129 + 24 * v130 - 16) * ((v131 * *(v129 + 24 * v130 - 8)) / 100.0))) - v132)) + 0.5);
              if ((v133 & 0x80000000) == 0)
              {
                if (v130 <= v133)
                {
                  v133 = v130 - 1;
                }

                v134 = v129 + 24 * v133;
                v135 = *(v134 + 8);
                v136 = vcvtd_n_s64_f64(*(v134 + 16), 8uLL);
LABEL_375:
                if (v135 >= 0.01)
                {
                  v254 = 1000;
                }

                else
                {
                  v254 = 100000;
                }

                v276 = v254;
                v274 = (v254 * v135 + 0.5);
                v255 = v136 >> 3;
                v256 = v136 >> 5;
                if (v136 <= 256)
                {
                  v136 = 256;
                }

                if (v136 >= 2048)
                {
                  v136 = 2048;
                }

                v273 = v136;
                if (v255 <= 256)
                {
                  v257 = 256;
                }

                else
                {
                  v257 = v255;
                }

                if (v257 >= 1024)
                {
                  v257 = 1024;
                }

                v272 = v257;
                if (v256 <= 256)
                {
                  v258 = 256;
                }

                else
                {
                  v258 = v256;
                }

                if (v258 >= 512)
                {
                  v258 = 512;
                }

                v271 = v258;
                keys[0].origin.x = *off_1E798A2A8;
                v259 = *MEMORY[0x1E695E480];
                values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v274);
                keys[0].origin.y = *off_1E798A2A0;
                values[1] = CFNumberCreate(v259, kCFNumberIntType, &v276);
                keys[0].size.width = *off_1E798A1B0;
                cf[0] = CFNumberCreate(v259, kCFNumberIntType, &v273);
                keys[0].size.height = *off_1E798A290;
                cf[1] = CFNumberCreate(v259, kCFNumberIntType, &v272);
                keys[1].origin.x = *off_1E798A298;
                v289[0] = CFNumberCreate(v259, kCFNumberIntType, &v271);
                v260 = CFDictionaryCreate(v259, keys, values, 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BFE8, v260);
                CFRelease(values[0]);
                CFRelease(values[1]);
                CFRelease(cf[0]);
                CFRelease(cf[1]);
                CFRelease(v289[0]);
                CFRelease(v260);
                return v13;
              }
            }

            else
            {
              FigImageControl_Exposure_cold_14();
            }
          }

          else
          {
            FigImageControl_Exposure_cold_15();
          }

          v252 = v278[0];
          v253 = *buffer * *buffer;
          v135 = v253 / (exp2(v128) * (*&v252 / 100.0));
          v136 = 256;
          if (v135 < 0.00001)
          {
            v135 = 0.00001;
          }

          goto LABEL_375;
        }
      }
    }
  }

  return v13;
}

uint64_t FigImageControl_WhiteBalance(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage + 4096;
  if ((*(DerivedStorage + 7444) & 1) == 0)
  {
    v7 = DerivedStorage;
    v8 = *(DerivedStorage + 7428);
    if (v8 == 1)
    {
      if (*(DerivedStorage + 7424) == 1)
      {
        v6 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798C250, 0);
        *(v5 + 3328) = 0;
        goto LABEL_27;
      }
    }

    else if (!v8)
    {
      if (*(DerivedStorage + 7424))
      {
        v6 = 0;
      }

      else
      {
        v6 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BFA0, 0);
        *(v5 + 3328) = 1;
      }

      if (*(v7 + 3716))
      {
        if ((!*(v7 + 3717) || !*(v7 + 3718)) && !v7[1860])
        {
          goto LABEL_27;
        }

        goto LABEL_19;
      }

      if (v7[1860])
      {
        if (!*(v7 + 3717) && !*(v7 + 3718))
        {
          v15 = CMGetAttachment(a2, *off_1E798A3C8, 0);
          if (v15)
          {
            v16 = v15;
            Value = CFDictionaryGetValue(v15, *off_1E798B120);
            if (Value)
            {
              CFNumberGetValue(Value, kCFNumberSInt16Type, v7 + 1858);
            }

            v18 = CFDictionaryGetValue(v16, *off_1E798B0F8);
            if (v18)
            {
              CFNumberGetValue(v18, kCFNumberSInt16Type, v7 + 7434);
            }

            v19 = CFDictionaryGetValue(v16, *off_1E798B0C0);
            if (v19)
            {
              CFNumberGetValue(v19, kCFNumberSInt16Type, v7 + 1859);
            }
          }
        }

LABEL_19:
        if (v7[1860] <= 0)
        {
          v9 = 3;
        }

        else
        {
          v9 = 4;
        }

        v21 = 0;
        v10 = *off_1E798AED0;
        v23 = 0;
        keys[0] = v10;
        v11 = *MEMORY[0x1E695E480];
        v20[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, v7 + 1858);
        keys[1] = *off_1E798AEC8;
        v20[1] = CFNumberCreate(v11, kCFNumberSInt16Type, v7 + 7434);
        keys[2] = *off_1E798AEC0;
        v20[2] = CFNumberCreate(v11, kCFNumberSInt16Type, v7 + 1859);
        if (v7[1860] >= 1)
        {
          v23 = *off_1E798A1C8;
          v21 = CFNumberCreate(v11, kCFNumberSInt32Type, v7 + 1860);
        }

        v12 = CFDictionaryCreate(v11, keys, v20, v9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v6 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BFF8, v12);
        for (i = 0; i != v9; ++i)
        {
          CFRelease(v20[i]);
        }

        CFRelease(v12);
      }

LABEL_27:
      *(v5 + 3348) = 1;
      return v6;
    }

    v6 = 0;
    goto LABEL_27;
  }

  return 0;
}

uint64_t FigImageControl_CurrentFocusRectByPortType()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 7612);
  if ((v1 - 2) < 2 || v1 == 1 && (*(DerivedStorage + 7672) & 1) == 0)
  {
    return *(DerivedStorage + 9064);
  }

  else
  {
    return 0;
  }
}

uint64_t copyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    return 4294954516;
  }

  v9 = DerivedStorage;
  if (*(DerivedStorage + 88))
  {
    return 4294954511;
  }

  if (!CFEqual(a2, @"AutofocusProcessor_VideoMode"))
  {
    if (CFEqual(a2, @"AutoExposure"))
    {
      if (*(v9 + 7464) == 1)
      {
        valuePtr = *(v9 + 7476) * 0.001;
        keys = @"x";
        v13 = *MEMORY[0x1E695E480];
        values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
        valuePtr = *(v9 + 7480) * 0.001;
        v37 = @"y";
        v33 = CFNumberCreate(v13, kCFNumberFloatType, &valuePtr);
        valuePtr = *(v9 + 7484) * 0.001;
        v38 = @"w";
        v34 = CFNumberCreate(v13, kCFNumberFloatType, &valuePtr);
        valuePtr = *(v9 + 7488) * 0.001;
        v39 = @"h";
        v35 = CFNumberCreate(v13, kCFNumberFloatType, &valuePtr);
        v14 = CFDictionaryCreate(v13, &keys, &values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v15 = 0;
        *a4 = v14;
        do
        {
          CFRelease(*(&values + v15));
          v15 += 8;
        }

        while (v15 != 32);
        return 0;
      }

      goto LABEL_38;
    }

    if (CFEqual(a2, @"SpotMeteredExposure"))
    {
      if (*(v9 + 7464) == 2)
      {
        valuePtr = *(v9 + 7476) * 0.001;
        keys = @"x";
        v16 = *MEMORY[0x1E695E480];
        values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
        valuePtr = *(v9 + 7480) * 0.001;
        v37 = @"y";
        v33 = CFNumberCreate(v16, kCFNumberFloatType, &valuePtr);
        valuePtr = *(v9 + 7484) * 0.001;
        v38 = @"w";
        v34 = CFNumberCreate(v16, kCFNumberFloatType, &valuePtr);
        valuePtr = *(v9 + 7488) * 0.001;
        v39 = @"h";
        v35 = CFNumberCreate(v16, kCFNumberFloatType, &valuePtr);
        v17 = CFDictionaryCreate(v16, &keys, &values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v18 = 0;
        *a4 = v17;
        do
        {
          CFRelease(*(&values + v18));
          v18 += 8;
        }

        while (v18 != 32);
        return 0;
      }

      goto LABEL_38;
    }

    if (CFEqual(a2, @"FlashExposure"))
    {
      if (*(v9 + 7464) == 5)
      {
        valuePtr = *(v9 + 7476) * 0.001;
        keys = @"x";
        v21 = *MEMORY[0x1E695E480];
        values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
        valuePtr = *(v9 + 7480) * 0.001;
        v37 = @"y";
        v33 = CFNumberCreate(v21, kCFNumberFloatType, &valuePtr);
        valuePtr = *(v9 + 7484) * 0.001;
        v38 = @"w";
        v34 = CFNumberCreate(v21, kCFNumberFloatType, &valuePtr);
        valuePtr = *(v9 + 7488) * 0.001;
        v39 = @"h";
        v35 = CFNumberCreate(v21, kCFNumberFloatType, &valuePtr);
        v22 = CFDictionaryCreate(v21, &keys, &values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v23 = 0;
        *a4 = v22;
        do
        {
          CFRelease(*(&values + v23));
          v23 += 8;
        }

        while (v23 != 32);
        return 0;
      }

LABEL_38:
      *a4 = 0;
      return 4294954513;
    }

    if (CFEqual(a2, @"MonitorSubjectArea"))
    {
      v24 = MEMORY[0x1E695E4D0];
      v25 = *(v9 + 4336);
LABEL_43:
      if (!v25)
      {
        v24 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_50;
    }

    if (CFEqual(a2, @"ProvidesStortorgetMetadata"))
    {
      if (*(v9 + 18160))
      {
        v24 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v24 = MEMORY[0x1E695E4C0];
      }

LABEL_50:
      v12 = *v24;
      goto LABEL_31;
    }

    if (CFEqual(a2, @"ExposureBias"))
    {
      p_keys = (v9 + 7524);
      v27 = a3;
      v28 = kCFNumberFloatType;
    }

    else
    {
      if (CFEqual(a2, @"PreFlashAFParameters"))
      {
        v19 = FigImageControl_CopyPreFlashAFParameters(a1);
        goto LABEL_32;
      }

      if (!CFEqual(a2, @"DeviceRotationDegrees"))
      {
        if (CFEqual(a2, @"AutoWhiteBalanceLock"))
        {
          v24 = MEMORY[0x1E695E4D0];
          v25 = *(v9 + 7424);
        }

        else if (CFEqual(a2, @"ExposureLock"))
        {
          v24 = MEMORY[0x1E695E4D0];
          v25 = *(v9 + 7472);
        }

        else if (CFEqual(a2, @"HDRScene"))
        {
          if (*(v9 + 9093) != 1)
          {
            return 4294954513;
          }

          v24 = MEMORY[0x1E695E4D0];
          v25 = *(v9 + 9092);
        }

        else
        {
          if (!CFEqual(a2, @"HDRSceneDetectionEnabled"))
          {
            if (CFEqual(a2, @"FocusPreset"))
            {
              if (CFEqual(*(v9 + 680), *off_1E798AD98))
              {
                v12 = @"Still";
                goto LABEL_31;
              }

              if (CFEqual(*(v9 + 680), *off_1E798ADB0))
              {
                v12 = @"Video";
                goto LABEL_31;
              }

              if (CFEqual(*(v9 + 680), *off_1E798ADB8))
              {
                v12 = @"CinematicVideo";
                goto LABEL_31;
              }

              result = CFEqual(*(v9 + 680), *off_1E798ADA8);
              if (result)
              {
                v12 = @"TimeLapse";
                goto LABEL_31;
              }

              *a4 = 0;
            }

            else
            {
              if (CFEqual(a2, @"FaceDetectionMode"))
              {
                if (*(v9 + 7473) == 1 && *(v9 + 560))
                {
                  v12 = @"AEAndAF";
                }

                else if (*(v9 + 7473))
                {
                  v12 = @"AEOnly";
                }

                else if (*(v9 + 560))
                {
                  v12 = @"AFOnly";
                }

                else
                {
                  v12 = @"Disable";
                }

                goto LABEL_31;
              }

              return 4294954512;
            }

            return result;
          }

          v24 = MEMORY[0x1E695E4D0];
          v25 = *(v9 + 9093);
        }

        goto LABEL_43;
      }

      v29 = *(v9 + 5666);
      if (v29 > 3)
      {
        return 4294954513;
      }

      if (*(v9 + 5666))
      {
        v30 = 360 - 90 * v29;
      }

      else
      {
        v30 = 0;
      }

      LODWORD(keys) = v30;
      v27 = *MEMORY[0x1E695E480];
      p_keys = &keys;
      v28 = kCFNumberSInt32Type;
    }

    v19 = CFNumberCreate(v27, v28, p_keys);
    goto LABEL_32;
  }

  result = 0;
  v11 = *(v9 + 40);
  if (v11 <= 2)
  {
    switch(v11)
    {
      case 0:
        v12 = @"Mode_StillPreview";
        goto LABEL_31;
      case 1:
        v12 = @"Mode_VideoPreview";
        goto LABEL_31;
      case 2:
        v12 = @"Mode_VideoRecording";
LABEL_31:
        v19 = CFRetain(v12);
LABEL_32:
        v20 = v19;
        result = 0;
        *a4 = v20;
        break;
    }
  }

  else
  {
    if (v11 <= 4)
    {
      if (v11 == 3)
      {
        v12 = @"Mode_Conference";
      }

      else
      {
        v12 = @"Mode_Panorama";
      }

      goto LABEL_31;
    }

    if (v11 == 5)
    {
      v12 = @"Mode_TimeLapsePreview";
      goto LABEL_31;
    }

    if (v11 == 6)
    {
      v12 = @"Mode_TimeLapseCapture";
      goto LABEL_31;
    }
  }

  return result;
}

void *fs_updateFrameStatisticsWithFrameMetadata(void *result, void *a2)
{
  if (result)
  {
    if (a2)
    {
      [result frameStatisticsStorage];
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B0A8), "intValue"}];
      [OUTLINED_FUNCTION_0_82() intValue];
      FigCaptureStreamFocusingMethodIsContrastBased();
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_125_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{

  return [v41 countByEnumeratingWithState:&a41 objects:&a25 count:16];
}

uint64_t OUTLINED_FUNCTION_125_2()
{
  v3 = *(v0 + *(v1 + 476));

  return [v3 inputFormat];
}

BOOL OUTLINED_FUNCTION_125_5(NSObject *a1)
{
  v3 = *(v1 - 93);

  return os_log_type_enabled(a1, v3);
}

CMTime *OUTLINED_FUNCTION_186@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, __int128 rhsa, uint64_t rhs_16, uint64_t a6, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a10, uint64_t a11)
{
  lhs_16 = a1;
  rhsa = *(v14 - 80);
  rhs_16 = *(v14 - 64);

  return CMTimeAdd(&a11, &lhsa, &rhsa);
}

CGFloat FigCaptureMetadataUtilitiesScaleRect2D(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = CGRectGetWidth(*&a1) * a5;
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetHeight(v12);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  v10 = CGRectGetMidX(v13) - v9 * 0.5;
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  CGRectGetMidY(v14);
  return v10;
}

__n128 OUTLINED_FUNCTION_310()
{
  result = v0[85];
  *v1 = result;
  v1[1].n128_u64[0] = v0[86].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_105_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{

  return [a13 countByEnumeratingWithState:&a53 objects:&a37 count:16];
}

uint64_t OUTLINED_FUNCTION_243_0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = *(v3 + a2);

  return [v5 setObject:a1 forKeyedSubscript:v2];
}

uint64_t compareDoubleToBin(double *a1, double *a2)
{
  if (*a1 >= *a2)
  {
    return *a1 >= a2[1];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t BWPixelBufferColorSpace(__CVBuffer *a1)
{
  if (BWPixelBufferIsHDR(a1))
  {
    return 1;
  }

  v3 = CVBufferCopyAttachments(a1, kCVAttachmentMode_ShouldPropagate);
  if (v3)
  {
    v4 = CFAutorelease(v3);
  }

  else
  {
    v4 = 0;
  }

  if ([BWVideoFormat colorSpacePropertiesForPixelBufferAttachments:v4]== 10)
  {
    return 2;
  }

  v5 = CVBufferCopyAttachments(a1, kCVAttachmentMode_ShouldPropagate);
  if (v5)
  {
    v6 = CFAutorelease(v5);
  }

  else
  {
    v6 = 0;
  }

  if ([BWVideoFormat colorSpacePropertiesForPixelBufferAttachments:v6]== 12)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

BOOL BWPixelBufferIsHDR(__CVBuffer *a1)
{
  v1 = CVBufferCopyAttachments(a1, kCVAttachmentMode_ShouldPropagate);
  if (v1)
  {
    v2 = CFAutorelease(v1);
  }

  else
  {
    v2 = 0;
  }

  return [BWVideoFormat colorSpacePropertiesForPixelBufferAttachments:v2]- 5 < 3;
}

uint64_t captureSource_restoreCurrentValuesForManualControlProperties(uint64_t a1, int a2, void *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if ([a4 isEqualToString:0x1F21A1B90])
  {
    v8 = @"FocusOperation";
    if ([objc_msgSend(objc_msgSend(*(DerivedStorage + 144) objectForKeyedSubscript:{@"FocusOperation", "objectForKeyedSubscript:", @"RequestID", "intValue"}] != a2)
    {
      return FigSimpleMutexUnlock();
    }

    v9 = @"FocusPosition";
    [objc_msgSend(objc_msgSend(*(DerivedStorage + 144) objectForKeyedSubscript:{@"FocusOperation", "objectForKeyedSubscript:", @"FocusPosition", "floatValue"}];
    if (v10 != 3.4028e38)
    {
      return FigSimpleMutexUnlock();
    }

    v11 = 0x1F21A5E50;
LABEL_5:
    v12 = [a3 objectForKeyedSubscript:v11];
    if (v12)
    {
      v13 = v12;
      v14 = [objc_msgSend(*(DerivedStorage + 144) objectForKeyedSubscript:{v8), "mutableCopy"}];
      v15 = v14;
      v16 = v13;
      goto LABEL_7;
    }

    return FigSimpleMutexUnlock();
  }

  if (![a4 isEqualToString:0x1F21A1BB0])
  {
    if ([a4 isEqualToString:0x1F21A1BD0])
    {
      v8 = @"ExposureTargetBiasOperation";
      if ([objc_msgSend(objc_msgSend(*(DerivedStorage + 144) objectForKeyedSubscript:{@"ExposureTargetBiasOperation", "objectForKeyedSubscript:", @"RequestID", "intValue"}] != a2)
      {
        return FigSimpleMutexUnlock();
      }

      v9 = @"Bias";
      [objc_msgSend(objc_msgSend(*(DerivedStorage + 144) objectForKeyedSubscript:{@"ExposureTargetBiasOperation", "objectForKeyedSubscript:", @"Bias", "floatValue"}];
      if (v21 != 3.4028e38)
      {
        return FigSimpleMutexUnlock();
      }

      v11 = 0x1F21A5EB0;
    }

    else
    {
      if (![a4 isEqualToString:0x1F21A1BF0])
      {
        return FigSimpleMutexUnlock();
      }

      v8 = @"WhiteBalanceOperation";
      if ([objc_msgSend(objc_msgSend(*(DerivedStorage + 144) objectForKeyedSubscript:{@"WhiteBalanceOperation", "objectForKeyedSubscript:", @"RequestID", "intValue"}] != a2)
      {
        return FigSimpleMutexUnlock();
      }

      v28.timescale = 0;
      v28.value = 0;
      v9 = @"DeviceWhiteBalanceGains";
      [objc_msgSend(objc_msgSend(*(DerivedStorage + 144) objectForKeyedSubscript:{@"WhiteBalanceOperation", "objectForKeyedSubscript:", @"DeviceWhiteBalanceGains", "getBytes:length:", &v28, 12}];
      if (v28.value || v28.timescale != 0)
      {
        return FigSimpleMutexUnlock();
      }

      v11 = 0x1F21A5ED0;
    }

    goto LABEL_5;
  }

  v8 = @"ExposureOperation";
  if ([objc_msgSend(objc_msgSend(*(DerivedStorage + 144) objectForKeyedSubscript:{@"ExposureOperation", "objectForKeyedSubscript:", @"RequestID", "intValue"}] == a2)
  {
    v9 = @"ExposureDuration";
    v17 = [objc_msgSend(*(DerivedStorage + 144) objectForKeyedSubscript:{@"ExposureOperation", "objectForKeyedSubscript:", @"ExposureDuration"}];
    memset(&v28, 0, sizeof(v28));
    CMTimeMakeFromDictionary(&v28, v17);
    [objc_msgSend(objc_msgSend(*(DerivedStorage + 144) objectForKeyedSubscript:{@"ExposureOperation", "objectForKeyedSubscript:", @"ISO", "floatValue"}];
    v19 = v18;
    time1 = v28;
    memset(&time2, 0, sizeof(time2));
    if (!CMTimeCompare(&time1, &time2) || v19 == 3.4028e38)
    {
      v15 = [objc_msgSend(*(DerivedStorage + 144) objectForKeyedSubscript:{@"ExposureOperation", BWFigVideoCaptureDeviceExposureDurationCurrent), "mutableCopy"}];
      if (v19 == 3.4028e38)
      {
        v20 = [a3 objectForKeyedSubscript:0x1F21A5E70];
        if (v20)
        {
          [v15 setObject:v20 forKeyedSubscript:@"ISO"];
        }
      }

      time1 = v28;
      *&time2.value = v25;
      time2.epoch = 0;
      if (CMTimeCompare(&time1, &time2))
      {
        goto LABEL_16;
      }

      v24 = [a3 objectForKeyedSubscript:0x1F21A5E90];
      if (!v24)
      {
        goto LABEL_16;
      }

      v16 = v24;
      v14 = v15;
LABEL_7:
      [v14 setObject:v16 forKeyedSubscript:v9];
LABEL_16:
      [*(DerivedStorage + 144) setObject:v15 forKeyedSubscript:v8];
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t __captureSource_handleDeviceNotification_block_invoke(uint64_t a1, uint64_t a2)
{
  if ([objc_msgSend(*(a2 + 104) objectForKeyedSubscript:{@"Flash", "BOOLValue"}])
  {
    *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) objectForKeyedSubscript:0x1F21A1CF0];
  }

  if ([objc_msgSend(*(a2 + 104) objectForKeyedSubscript:{@"SIS", "BOOLValue"}])
  {
    *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) objectForKeyedSubscript:0x1F21A1D10];
  }

  return 0;
}

uint64_t FigCaptureDeviceIORegValuesByKeys()
{
  if (qword_1ED845228 != -1)
  {
    FigCaptureXPCServerStart_cold_1();
  }

  if (FigCaptureDeviceIORegValuesByKeys_sOnceToken != -1)
  {
    FigCaptureDeviceIORegValuesByKeys_cold_2();
  }

  return FigCaptureDeviceIORegValuesByKeys_sDeviceIORegValuesByKeys;
}