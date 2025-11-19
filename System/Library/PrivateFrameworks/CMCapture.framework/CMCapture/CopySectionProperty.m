@interface CopySectionProperty
@end

@implementation CopySectionProperty

uint64_t __captureSession_CopySectionProperty_block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 40) + 784) movieFileSinkPipelineWithSinkID:*(a1 + 48)];
  v3 = [*(*(a1 + 40) + 784) audioFileSinkPipelineWithSinkID:*(a1 + 48)];
  v4 = [*(*(a1 + 40) + 784) videoDataSinkPipelineWithSinkID:*(a1 + 48)];
  [v2 sinkID];
  if (FigCFEqual())
  {
    v5 = [-[FigCaptureMovieFileSinkPipeline movieFileSinkNodes](v2) objectAtIndexedSubscript:0];
    v4 = 0;
    v6 = 0;
    v7 = v5;
  }

  else if (v3)
  {
    v7 = [(FigCaptureAudioFileSinkPipeline *)v3 audioFileSinkNode];
    v4 = 0;
    v6 = 0;
    v5 = 0;
  }

  else
  {
    [objc_msgSend(*(*(a1 + 40) + 784) "micSourcePipeline")];
    if (FigCFEqual())
    {
      v6 = -[FigCaptureMicSourcePipeline sourceNode]([*(*(a1 + 40) + 784) micSourcePipeline]);
      v4 = 0;
    }

    else
    {
      if (v4)
      {
        v4 = [v4 sinkNode];
      }

      v6 = 0;
    }

    v5 = 0;
    v7 = 0;
  }

  if (CFEqual(*(a1 + 56), @"CaptureSessionFileSink_RecordedDuration"))
  {
    v8 = [*(*(a1 + 40) + 880) objectForKeyedSubscript:*(a1 + 48)];
    if (v8)
    {
      memset(&valuePtr, 0, sizeof(valuePtr));
      CMTimeMakeFromDictionary(&valuePtr, v8);
LABEL_19:
      v11 = *(a1 + 72);
      time = valuePtr;
      result = CMTimeCopyAsDictionary(&time, v11);
LABEL_33:
      **(a1 + 64) = result;
      return result;
    }

    if (v7)
    {
      memset(&valuePtr, 0, sizeof(valuePtr));
      [v7 lastFileDuration];
      goto LABEL_19;
    }

    goto LABEL_44;
  }

  if (CFEqual(*(a1 + 56), @"CaptureSessionFileSink_RecordedSize"))
  {
    v9 = [*(*(a1 + 40) + 888) objectForKeyedSubscript:*(a1 + 48)];
    if (v9)
    {
      v10 = [v9 unsignedLongLongValue];
    }

    else
    {
      if (!v7)
      {
LABEL_44:
        result = FigSignalErrorAtGM();
        *(*(*(a1 + 32) + 8) + 24) = result;
        return result;
      }

      v10 = [v7 lastFileSize];
    }

    valuePtr.value = v10;
    result = CFNumberCreate(*(a1 + 72), kCFNumberSInt64Type, &valuePtr);
    goto LABEL_33;
  }

  if (v5 && CFEqual(*(a1 + 56), @"CaptureSessionMovieFileSink_MovieLevelMetadata"))
  {
    v13 = v5;
    goto LABEL_23;
  }

  if (v6 && CFEqual(*(a1 + 56), @"CaptureSessionAudioSource_AudioMeteringLevels"))
  {
    result = [v6 audioLevels];
    if (!result)
    {
      goto LABEL_33;
    }

LABEL_32:
    result = CFRetain(result);
    goto LABEL_33;
  }

  result = CFEqual(*(a1 + 56), @"CaptureSessionMetadataSource_MetadataFormatDescription");
  if (result)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = [*(*(a1 + 40) + 784) metadataSourcePipelines];
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
LABEL_37:
      v18 = 0;
      while (1)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * v18);
        if ([objc_msgSend(v19 "sourceID")])
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = [v14 countByEnumeratingWithState:&v23 objects:v22 count:16];
          if (v16)
          {
            goto LABEL_37;
          }

          goto LABEL_43;
        }
      }

      v21 = [(FigCaptureMetadataSourcePipeline *)v19 sourceFormatDescription];
      if (!v21 || (result = CFRetain(v21), (v20 = result) == 0))
      {
        result = FigSignalErrorAtGM();
        v20 = 0;
        *(*(*(a1 + 32) + 8) + 24) = result;
      }

      if (v19)
      {
        goto LABEL_50;
      }
    }

    else
    {
LABEL_43:
      v20 = 0;
    }

    result = FigSignalErrorAtGM();
    *(*(*(a1 + 32) + 8) + 24) = result;
LABEL_50:
    **(a1 + 64) = v20;
  }

  else
  {
    if (v4)
    {
      result = CFEqual(*(a1 + 56), @"CaptureSessionVideoDataSinkProperty_MovieLevelMetadata");
      if (result)
      {
        v13 = v4;
LABEL_23:
        result = [v13 movieLevelMetadata];
        if (!result)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = -12784;
  }

  return result;
}

@end