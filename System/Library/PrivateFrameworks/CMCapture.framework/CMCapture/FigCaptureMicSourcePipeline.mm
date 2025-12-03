@interface FigCaptureMicSourcePipeline
- (char)addPipelineOutputs:(uint64_t)outputs toParentNodeOutput:(int)output withAudioChannelLayoutTag:(int)tag atPosition:;
- (id)nextOutputForMicSourcePosition:(int)position forAudioChannelLayoutTag:;
- (uint64_t)_buildMicSourcePipelineWithConfiguration:(void *)configuration graph:(uint64_t)graph audioSession:(uint64_t)session cmSession:(char)cmSession isAppAudioSession:(char)audioSession audioSessionIsProxy:(int)proxy audioIsPlayingToBuiltinSpeaker:(int)speaker numberOfCinematicStereoAudioOutputs:(int)self0 numberOfCinematicFOAAudioOutputs:(char)self1 audioSessionActivatedByBWGraph:(uint64_t)self2 renderDelegate:;
- (uint64_t)clock;
- (uint64_t)sourceNode;
- (uint64_t)updateWithAudioSession:(_OWORD *)session clientAuditToken:;
- (void)dealloc;
- (void)initWithConfiguration:(void *)configuration graph:(uint64_t)graph name:(uint64_t)name audioSession:(uint64_t)session cmSession:(char)cmSession isAppAudioSession:(char)audioSession audioSessionIsProxy:(unsigned __int8)proxy audioIsPlayingToBuiltinSpeaker:(int)self0 numberOfCinematicStereoAudioOutputs:(int)self1 numberOfCinematicFOAAudioOutputs:(char)self2 audioSessionActivatedByBWGraph:(uint64_t)self3 renderDelegate:(_DWORD *)self4 outErr:;
@end

@implementation FigCaptureMicSourcePipeline

- (uint64_t)sourceNode
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)clock
{
  if (result)
  {
    return [*(result + 40) clock];
  }

  return result;
}

- (uint64_t)_buildMicSourcePipelineWithConfiguration:(void *)configuration graph:(uint64_t)graph audioSession:(uint64_t)session cmSession:(char)cmSession isAppAudioSession:(char)audioSession audioSessionIsProxy:(int)proxy audioIsPlayingToBuiltinSpeaker:(int)speaker numberOfCinematicStereoAudioOutputs:(int)self0 numberOfCinematicFOAAudioOutputs:(char)self1 audioSessionActivatedByBWGraph:(uint64_t)self2 renderDelegate:
{
  if (!result)
  {
    return result;
  }

  v97 = 0;
  v96 = 0;
  if (session)
  {
    [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:];
  }

  v17 = result;
  cf = 0;
  v95 = 0;
  if (a2)
  {
    v18 = *(a2 + 8);
  }

  else
  {
    v18 = 0;
  }

  source = [v18 source];
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v20)
  {
    v97 = -12782;
    goto LABEL_88;
  }

  v21 = *MEMORY[0x1E695E480];
  v97 = v20(source, @"AttributesDictionary", *MEMORY[0x1E695E480], &v95);
  if (v97)
  {
LABEL_88:
    [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:];
    goto LABEL_91;
  }

  if (!FigCaptureAudiomxdSupportEnabled())
  {
    if (a2)
    {
      v22 = *(a2 + 8);
    }

    else
    {
      v22 = 0;
    }

    source2 = [v22 source];
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v24)
    {
      v97 = v24(source2, @"Clock", v21, &cf);
      if (!v97)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v97 = -12782;
    }

    [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:];
    goto LABEL_91;
  }

  if (!graph)
  {
    [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:];
    goto LABEL_91;
  }

  v97 = FigAudioSessionClockCreateForAVAudioSession();
  if (v97)
  {
    [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:];
    goto LABEL_91;
  }

LABEL_15:
  configurationCopy = configuration;
  cmSessionCopy = cmSession;
  if (a2)
  {
    v25 = *(a2 + 16);
  }

  else
  {
    v25 = 0;
  }

  graphCopy = graph;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v26 = [v25 countByEnumeratingWithState:&v100 objects:&v98 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v101;
    while (2)
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v101 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v100 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v30 audioCaptureMode] == 3 || objc_msgSend(v30, "audioCaptureMode") == 4 || objc_msgSend(v30, "audioCaptureMode") == 5 || objc_msgSend(v30, "audioCaptureMode") == 7))
        {
          v31 = 1;
          goto LABEL_32;
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v100 objects:&v98 count:16];
      v31 = 0;
      if (v27)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v31 = 0;
  }

LABEL_32:
  audioSessionCopy = audioSession;
  v90 = v17;
  v80 = v95;
  v89 = a2;
  if (a2)
  {
    v78 = *(a2 + 48);
    v79 = cf;
    v32 = *(a2 + 56);
    v33 = *(a2 + 57);
    v34 = *(a2 + 58);
    v35 = *(a2 + 59);
    v36 = *(a2 + 92);
    v98 = *(a2 + 76);
    v99 = v36;
    v37 = *(a2 + 120);
    v38 = *(a2 + 72);
    clientAudioClockDeviceUID = [*(a2 + 8) clientAudioClockDeviceUID];
    preferredIOBufferDuration = [*(a2 + 8) preferredIOBufferDuration];
    v41 = *(a2 + 16);
    v42 = *(a2 + 108);
    v43 = *(a2 + 112);
  }

  else
  {
    v79 = cf;
    v98 = 0u;
    v99 = 0u;
    clientAudioClockDeviceUID = [0 clientAudioClockDeviceUID];
    preferredIOBufferDuration = [0 preferredIOBufferDuration];
    v42 = 0;
    v38 = 0;
    v34 = 0;
    v32 = 0;
    v78 = 0;
    v33 = 0;
    v35 = 0;
    v37 = 0;
    v41 = 0;
    v43 = 0;
  }

  BYTE1(v76) = v42 & 1;
  LOBYTE(v76) = v31;
  LOBYTE(v75) = v38 & 1;
  BYTE4(v74) = audioOutputs;
  BYTE3(v74) = proxy;
  BYTE2(v74) = audioSessionCopy;
  BYTE1(v74) = v35 & 1;
  LOBYTE(v74) = cmSessionCopy;
  v44 = [BWAudioSourceNode audioSourceNodeWithAttributes:"audioSourceNodeWithAttributes:sessionPreset:clock:doConfigureAudio:doMixWithOthers:doAllowHQBluetoothRecording:audioSession:isAppAudioSession:doEndInterruption:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:audioSessionActivatedByBWGraph:clientAuditToken:clientSDKVersionToken:clientOSVersionSupportsDecoupledIO:clientAudioClockDeviceUID:preferredIOBufferDuration:audioCaptureConnectionConfigurations:isConfiguredForContinuityCapture:isAudioOnlyRecordingSession:remoteIOOutputFormat:outErr:" sessionPreset:v80 clock:v78 doConfigureAudio:v79 doMixWithOthers:v32 & 1 doAllowHQBluetoothRecording:v33 & 1 audioSession:v34 & 1 isAppAudioSession:graphCopy doEndInterruption:v74 audioSessionIsProxy:&v98 audioIsPlayingToBuiltinSpeaker:v37 audioSessionActivatedByBWGraph:v75 clientAuditToken:clientAudioClockDeviceUID clientSDKVersionToken:preferredIOBufferDuration clientOSVersionSupportsDecoupledIO:v41 clientAudioClockDeviceUID:v76 preferredIOBufferDuration:v43 audioCaptureConnectionConfigurations:&v97 isConfiguredForContinuityCapture:? isAudioOnlyRecordingSession:? remoteIOOutputFormat:? outErr:?];
  if (cf)
  {
    CFRelease(cf);
  }

  v45 = a2;
  v46 = v90;
  if (!v44)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    if (!v97)
    {
      v97 = -12786;
    }

    goto LABEL_91;
  }

  if (v97)
  {
    [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:];
  }

  else
  {
    [(BWNode *)v44 setRenderDelegate:wGraph];
    if (a2)
    {
      v47 = *(a2 + 16);
      v84 = *(v89 + 24);
      v86 = *(v89 + 32);
      v88 = *(v89 + 40);
      v48 = *(v89 + 56);
    }

    else
    {
      v88 = 0;
      v84 = 0;
      v86 = 0;
      v47 = 0;
      v48 = 0;
    }

    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v49 = [v47 countByEnumeratingWithState:&v100 objects:&v98 count:16];
    if (!v49)
    {
      [(BWAudioSourceNode *)v44 setLivePhotoCaptureEnabled:0];
      v52 = 0;
      LOBYTE(v53) = 0;
      v60 = 0;
      v62 = 0;
LABEL_64:
      [(BWAudioSourceNode *)v44 setAudioCaptureMode:v62];
      [(BWAudioSourceNode *)v44 setWindNoiseRemovalEnabled:v53 & 1];
      [(BWAudioSourceNode *)v44 setVideoRecordingEnabled:v52 & 1];
      [(BWAudioSourceNode *)v44 setLevelMeteringEnabled:1];
      if (BWAudioCaptureModeIsSpatial(v60))
      {
        [objc_msgSend(v84 "requiredFormat")];
        [(BWAudioSourceNode *)v44 setStereoAudioCapturePairedCameraBaseFieldOfView:?];
        [v84 videoZoomFactor];
        [(BWAudioSourceNode *)v44 setStereoAudioCapturePairedCameraZoomFactor:?];
        [v86 setZoomCompletionDelegateForStereoAudio:v44];
        [(BWAudioSourceNode *)v44 setFlipStereoAudioCaptureChannels:v88 & 1];
      }

      v97 = 0;
      v63 = &classRef_BWStillImageSmartStyleAttachmentTransferNode;
      v93.receiver = v46;
      v93.super_class = FigCaptureMicSourcePipeline;
      if (objc_msgSendSuper2(&v93, sel_addNode_error_, v44, &v96))
      {
        v64 = v44;
        v65 = 0;
        v46[5] = v64;
        v67 = speaker > 2 || outputs > 2;
        while (1)
        {
          v68 = [-[FigCaptureMicSourcePipelineConfiguration micConnectionConfigurationsForMicSourcePosition:](v45 v65)];
          if (v68 >= 1)
          {
            if ([v46[5] audioCaptureMode] == 2)
            {
              if (v67)
              {
                [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:? graph:? audioSession:? cmSession:? isAppAudioSession:? audioSessionIsProxy:? audioIsPlayingToBuiltinSpeaker:? numberOfCinematicStereoAudioOutputs:? numberOfCinematicFOAAudioOutputs:? audioSessionActivatedByBWGraph:? renderDelegate:?];
                goto LABEL_91;
              }

              v69 = [[BWAudioSplitNode alloc] initWithInputChannelLayoutTag:4027580422 output1ChannelLayoutTag:6619138 output2ChannelLayoutTag:12451844];
              -[BWNode setName:](v69, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"AudioSplitNode (%d -> %d:%d)", 6, 2, 4]);
              v70 = v63[166];
              v92.receiver = v46;
              v92.super_class = v70;
              if ((objc_msgSendSuper2(&v92, sel_addNode_error_, v69, &v96) & 1) == 0)
              {
                [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:];
                goto LABEL_91;
              }

              if (([configurationCopy connectOutput:objc_msgSend(v46[5] toInput:"outputForMicSourcePosition:" pipelineStage:{v65), -[BWNode input](v69, "input"), 0}] & 1) == 0)
              {
                [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:];
                goto LABEL_91;
              }

              v71 = [(NSArray *)[(BWNode *)v69 outputs] objectAtIndexedSubscript:0];
              v72 = [(NSArray *)[(BWNode *)v69 outputs] objectAtIndexedSubscript:1];
              if (!v71 || (v73 = v72) == 0)
              {
                [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:];
                goto LABEL_91;
              }

              v46 = v90;
              v97 = [(FigCaptureMicSourcePipeline *)v90 addPipelineOutputs:speaker toParentNodeOutput:v71 withAudioChannelLayoutTag:6619138 atPosition:v65];
              if (v97)
              {
                [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:];
                goto LABEL_91;
              }

              v97 = [(FigCaptureMicSourcePipeline *)v90 addPipelineOutputs:outputs toParentNodeOutput:v73 withAudioChannelLayoutTag:12451844 atPosition:v65];
              v63 = &classRef_BWStillImageSmartStyleAttachmentTransferNode;
              if (v97)
              {
                [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:];
                goto LABEL_91;
              }
            }

            else
            {
              v97 = -[FigCaptureMicSourcePipeline addPipelineOutputs:toParentNodeOutput:withAudioChannelLayoutTag:atPosition:](v46, v68, [v46[5] outputForMicSourcePosition:v65], -65536, v65);
              if (v97)
              {
                [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:];
                goto LABEL_91;
              }
            }
          }

          v65 = (v65 + 1);
          if (v65 == 3)
          {
            goto LABEL_91;
          }
        }
      }

      [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:];
      goto LABEL_91;
    }

    v50 = v49;
    v82 = v48;
    v81 = v44;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    audioCaptureMode = 0;
    v55 = *v101;
    do
    {
      for (j = 0; j != v50; ++j)
      {
        if (*v101 != v55)
        {
          objc_enumerationMutation(v47);
        }

        v57 = *(*(&v100 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v58 = [objc_msgSend(v57 "sinkConfiguration")] == 4 ? 1 : objc_msgSend(objc_msgSend(v57, "irisSinkConfiguration"), "irisMovieCaptureEnabled");
          v52 = v58 | v52 & 1;
          v51 |= [objc_msgSend(v57 "irisSinkConfiguration")];
          v53 |= [v57 windNoiseRemovalEnabled];
          if ([v57 audioCaptureMode])
          {
            audioCaptureMode = [v57 audioCaptureMode];
          }
        }
      }

      v50 = [v47 countByEnumeratingWithState:&v100 objects:&v98 count:16];
    }

    while (v50);
    v59 = proxy ^ 1;
    if (audioCaptureMode != 2)
    {
      v59 = 1;
    }

    if ((v82 | v59))
    {
      if (v59)
      {
        v60 = audioCaptureMode;
      }

      else
      {
        v60 = 0;
      }

      v61 = v51 & 1;
      if (v51)
      {
        v62 = 0;
      }

      else
      {
        v62 = v60;
      }

      v44 = v81;
      [(BWAudioSourceNode *)v81 setLivePhotoCaptureEnabled:v61];
      v45 = v89;
      v46 = v90;
      goto LABEL_64;
    }

    [FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:&v98 graph:&v97 audioSession:? cmSession:? isAppAudioSession:? audioSessionIsProxy:? audioIsPlayingToBuiltinSpeaker:? numberOfCinematicStereoAudioOutputs:? numberOfCinematicFOAAudioOutputs:? audioSessionActivatedByBWGraph:? renderDelegate:?];
  }

LABEL_91:
  result = v97;
  if (!v97)
  {
    if (v96)
    {
      return [v96 code];
    }
  }

  return result;
}

- (void)dealloc
{
  [(BWZoomCommandHandler *)self->_zoomCommandHandlerForStereoAudioCapture setZoomCompletionDelegateForStereoAudio:0];

  v3 = 0;
  pipelineOutputsByMicSourcePosition = self->_pipelineOutputsByMicSourcePosition;
  do
  {

    pipelineOutputsByMicSourcePosition[v3++] = 0;
  }

  while (v3 != 3);
  v5.receiver = self;
  v5.super_class = FigCaptureMicSourcePipeline;
  [(FigCaptureSourcePipeline *)&v5 dealloc];
}

- (void)initWithConfiguration:(void *)configuration graph:(uint64_t)graph name:(uint64_t)name audioSession:(uint64_t)session cmSession:(char)cmSession isAppAudioSession:(char)audioSession audioSessionIsProxy:(unsigned __int8)proxy audioIsPlayingToBuiltinSpeaker:(int)self0 numberOfCinematicStereoAudioOutputs:(int)self1 numberOfCinematicFOAAudioOutputs:(char)self2 audioSessionActivatedByBWGraph:(uint64_t)self3 renderDelegate:(_DWORD *)self4 outErr:
{
  if (!self)
  {
    return 0;
  }

  if (name && session)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"*** AVAudioSession and CMSession arguments cannot both be non-nil -- AVAudioSession: %@, CMSession: %@", name, session}];
  }

  if (a2)
  {
    v22 = *(a2 + 8);
  }

  else
  {
    v22 = 0;
  }

  v28.receiver = self;
  v28.super_class = FigCaptureMicSourcePipeline;
  v23 = objc_msgSendSuper2(&v28, sel_initWithGraph_name_sourceID_, configuration, graph, [v22 sourceID]);
  if (v23)
  {
    v24 = a2 ? *(a2 + 32) : 0;
    v23[9] = v24;
    v25 = [(FigCaptureMicSourcePipeline *)v23 _buildMicSourcePipelineWithConfiguration:a2 graph:configuration audioSession:name cmSession:session isAppAudioSession:cmSession audioSessionIsProxy:audioSession audioIsPlayingToBuiltinSpeaker:proxy numberOfCinematicStereoAudioOutputs:speaker numberOfCinematicFOAAudioOutputs:outputs audioSessionActivatedByBWGraph:audioOutputs renderDelegate:wGraph];
    if (v25)
    {
      v27 = v25;
      fig_log_get_emitter();
      FigDebugAssert3();
      if (delegate)
      {
        *delegate = v27;
      }

      return 0;
    }
  }

  return v23;
}

- (id)nextOutputForMicSourcePosition:(int)position forAudioChannelLayoutTag:
{
  if (!self)
  {
    return 0;
  }

  v3 = *(self + 48 + 8 * a2);
  if (!v3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
LABEL_9:
    FigDebugAssert3();
    return 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__FigCaptureMicSourcePipeline_nextOutputForMicSourcePosition_forAudioChannelLayoutTag___block_invoke;
  v9[3] = &__block_descriptor_36_e50_B32__0__FigCaptureMicSourcePipelineOutput_8Q16_B24l;
  positionCopy = position;
  v4 = [v3 indexOfObjectPassingTest:v9];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v5 = v4, (v6 = [v3 objectAtIndex:v4]) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    goto LABEL_9;
  }

  Weak = objc_loadWeak((v6 + 8));
  [v3 removeObjectAtIndex:v5];
  return Weak;
}

BOOL __87__FigCaptureMicSourcePipeline_nextOutputForMicSourcePosition_forAudioChannelLayoutTag___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
  }

  else
  {
    v2 = 0;
  }

  return v2 == *(a1 + 32);
}

- (uint64_t)updateWithAudioSession:(_OWORD *)session clientAuditToken:
{
  if (result)
  {
    v3 = *(result + 40);
    v4 = session[1];
    v5[0] = *session;
    v5[1] = v4;
    return [v3 updateWithAudioSession:a2 clientAuditToken:v5];
  }

  return result;
}

- (char)addPipelineOutputs:(uint64_t)outputs toParentNodeOutput:(int)output withAudioChannelLayoutTag:(int)tag atPosition:
{
  if (result)
  {
    v77[0] = 0;
    if (!a2)
    {
      return 0;
    }

    v9 = result;
    array = [MEMORY[0x1E695DF70] array];
    v11 = array;
    if (a2 == 1)
    {
      v12 = [array addObject:outputs];
    }

    else
    {
      v20 = @"Unknown";
      if (output == 12451844)
      {
        v20 = @"FOA";
      }

      if (output == 6619138)
      {
        v21 = @"Stereo";
      }

      else
      {
        v21 = v20;
      }

      v22 = [[BWFanOutNode alloc] initWithFanOutCount:a2 mediaType:1936684398];
      v23 = MEMORY[0x1E696AEC0];
      v39 = v21;
      v41 = BWCaptureDevicePositionToString(tag);
      -[BWNode setName:](v22, "setName:", [v23 stringWithFormat:@"%@ Audio BWFanOutNode (%@)"]);
      v76.receiver = v9;
      v76.super_class = FigCaptureMicSourcePipeline;
      if ((objc_msgSendSuper2(&v76, sel_addNode_error_, v22, v77) & 1) == 0 || ([objc_msgSend(v9 "graph")] & 1) == 0 || !v22)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
LABEL_24:
        result = v77[0];
        if (v77[0])
        {
          return [v77[0] code];
        }

        return result;
      }

      v12 = [v11 addObjectsFromArray:{-[BWNode outputs](v22, "outputs")}];
    }

    tagCopy = tag;
    if (!*&v9[8 * tag + 48])
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      *&v9[8 * tag + 48] = v12;
    }

    v25 = OUTLINED_FUNCTION_1_2(v12, v13, v14, v15, v16, v17, v18, v19, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, 0);
    if (v25)
    {
      v26 = v25;
      v27 = MEMORY[0];
      v28 = &v9[8 * tagCopy];
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (MEMORY[0] != v27)
          {
            objc_enumerationMutation(v11);
          }

          v30 = [[FigCaptureMicSourcePipelineOutput alloc] initWithOutput:output forAudioChannelLayoutTag:?];
          [v28[6] addObject:v30];
        }

        v26 = OUTLINED_FUNCTION_1_2(v31, v32, v33, v34, v35, v36, v37, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v75);
      }

      while (v26);
    }

    goto LABEL_24;
  }

  return result;
}

- (void)_buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:.cold.1()
{
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  __assert_rtn("[FigCaptureMicSourcePipeline _buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:]", "FigCaptureMicSourcePipeline.m", 345, "! cmSession");
}

- (uint64_t)_buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)_buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)_buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)_buildMicSourcePipelineWithConfiguration:(_DWORD *)a3 graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:.cold.5(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_111();
  FigDebugAssert3();
  *a3 = -12782;
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_111();
  return FigDebugAssert3();
}

- (uint64_t)_buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)_buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)_buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:.cold.8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)_buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:.cold.9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)_buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:.cold.10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)_buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:.cold.11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)_buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:.cold.12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)_buildMicSourcePipelineWithConfiguration:(_DWORD *)a1 graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:.cold.13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  result = FigDebugAssert3();
  *a1 = -12780;
  return result;
}

- (uint64_t)_buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:.cold.14()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)_buildMicSourcePipelineWithConfiguration:graph:audioSession:cmSession:isAppAudioSession:audioSessionIsProxy:audioIsPlayingToBuiltinSpeaker:numberOfCinematicStereoAudioOutputs:numberOfCinematicFOAAudioOutputs:audioSessionActivatedByBWGraph:renderDelegate:.cold.15()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

@end