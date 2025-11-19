uint64_t FigWaitForDeferredShaderCacheCopyCompletion()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigWaitForDeferredShaderCacheCopyCompletion_block_invoke;
  block[3] = &unk_1E798FC38;
  block[4] = &v3;
  if (FigWaitForDeferredShaderCacheCopyCompletion_onceToken != -1)
  {
    dispatch_once(&FigWaitForDeferredShaderCacheCopyCompletion_onceToken, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

intptr_t __FigWaitForDeferredShaderCacheCopyCompletion_block_invoke(uint64_t a1)
{
  if (FigInitialiseDeferredShaderCacheCopySemaphore_onceToken != -1)
  {
    __FigWaitForDeferredShaderCacheCopyCompletion_block_invoke_cold_1();
  }

  v2 = sDeferredShaderCacheCopySemaphore;
  v3 = dispatch_time(0, 180000000000);
  result = dispatch_semaphore_wait(v2, v3);
  if (result)
  {
    return __FigWaitForDeferredShaderCacheCopyCompletion_block_invoke_cold_2(a1);
  }

  return result;
}

uint64_t gl_UtilsCreateShader(GLenum a1, GLchar *a2)
{
  string = a2;
  Shader = glCreateShader(a1);
  v3 = Shader;
  if (Shader)
  {
    params = 0;
    glShaderSource(Shader, 1, &string, 0);
    glCompileShader(v3);
    glGetShaderiv(v3, 0x8B81u, &params);
    if (!params)
    {
      glDeleteShader(v3);
      return 0;
    }
  }

  else
  {
    gl_UtilsCreateShader_cold_1();
  }

  return v3;
}

dispatch_semaphore_t __FigInitialiseDeferredShaderCacheCopySemaphore_block_invoke()
{
  result = dispatch_semaphore_create(0);
  sDeferredShaderCacheCopySemaphore = result;
  return result;
}

void BWInferenceTextureStorageEntryRelinquish(id *a1)
{

  free(a1);
}

uint64_t VisionCoreLibraryCore()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = VisionCoreLibraryCore_frameworkLibrary;
  v5 = VisionCoreLibraryCore_frameworkLibrary;
  if (!VisionCoreLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_1E7991970;
    v7 = *off_1E7991980;
    v8 = 0;
    v3[3] = _sl_dlopen();
    VisionCoreLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1ACA6BEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __VisionCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  VisionCoreLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t VisionCoreLibrary()
{
  v1 = 0;
  result = VisionCoreLibraryCore();
  if (!result)
  {
    VisionCoreLibrary_cold_1(&v1);
  }

  return result;
}

uint64_t __BWCaptureIsRunningInIOSAppOnMacEnvironment_block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  BWCaptureIsRunningInIOSAppOnMacEnvironment_isIOSAppOnMac = result;
  return result;
}

uint64_t __BWCaptureIsRunningInMacCatalystEnvironment_block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  BWCaptureIsRunningInMacCatalystEnvironment_isCatalystApp = result;
  return result;
}

uint64_t BWOSTypeForString(void *a1)
{
  v5 = 0;
  v2 = [a1 length];
  if (v2 >= 4)
  {
    v3 = 4;
  }

  else
  {
    v3 = v2;
  }

  [a1 getBytes:&v5 - v3 + 4 maxLength:0 usedLength:v3 encoding:0 options:? range:? remainingRange:?];
  return bswap32(v5);
}

uint64_t BWDeviceIsiPad()
{
  if (BWDeviceIsiPad_onceToken != -1)
  {
    BWDeviceIsiPad_cold_1();
  }

  return BWDeviceIsiPad_isiPad;
}

uint64_t __BWDeviceIsiPad_block_invoke()
{
  result = [MGCopyAnswer() intValue];
  BWDeviceIsiPad_isiPad = result == 3;
  return result;
}

uint64_t __BWDeviceIsiPhone_block_invoke()
{
  result = [MGCopyAnswer() intValue];
  BWDeviceIsiPhone_isiPhone = result == 1;
  return result;
}

uint64_t __BWDeviceModelIsD23Proto1_block_invoke()
{
  result = [@"D23" isEqualToString:FigCaptureGetModelSpecificName()];
  if (result)
  {
    result = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], "IODeviceTree:/arm-io/isp");
    if (result)
    {
      v1 = result;
      CFProperty = IORegistryEntryCreateCFProperty(result, @"cam-connections-scheme", *MEMORY[0x1E695E480], 0);
      if (CFProperty)
      {
        v3 = CFProperty;
        v4 = CFGetTypeID(CFProperty);
        if (v4 == CFDataGetTypeID())
        {
          v5 = v3;
        }

        else
        {
          v5 = 0;
        }

        if ([v5 length])
        {
          BWDeviceModelIsD23Proto1_isD23Proto1 = *[v5 bytes] == 32;
        }

        CFRelease(v3);
      }

      return IOObjectRelease(v1);
    }
  }

  return result;
}

__CFString *BWStringFromCGRectDict(const __CFDictionary *a1)
{
  v1 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v1;
  if (!a1)
  {
    return @"{nil}";
  }

  if (CGRectMakeWithDictionaryRepresentation(a1, &rect))
  {
    return CMIStringFromCGRect();
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"{not a valid CGRect dictionary}:%@", a1];
}

uint64_t BWStringFromCGRectDictMidPoint(const __CFDictionary *a1)
{
  v1 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v1;
  CGRectMakeWithDictionaryRepresentation(a1, &rect);
  v2 = FigCaptureRectMidPoint(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"{%g, %g}", *&v2, v3];
}

__CFString *BWStringFromPixelBufferSurface(__CVBuffer *a1)
{
  if (!a1)
  {
    return @"<CVPixelBuffer/IOSurface NULL>";
  }

  IOSurface = CVPixelBufferGetIOSurface(a1);

  return MEMORY[0x1EEDF10F0](IOSurface);
}

__CFString *BWShortStringFromVideoFormat(void *a1)
{
  if (!a1)
  {
    return @"<BWVideoFormat nil>";
  }

  v2 = [a1 extendedWidth];
  if (v2 == [a1 width] && (v3 = objc_msgSend(a1, "extendedHeight"), v3 == objc_msgSend(a1, "height")))
  {
    v4 = &stru_1F216A3D0;
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (%lux%lu)", objc_msgSend(a1, "extendedWidth"), objc_msgSend(a1, "extendedHeight")];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = [a1 width];
  v8 = [a1 height];
  [a1 pixelFormat];
  return [v5 stringWithFormat:@"<%@ %p> %lux%lu%@, '%@'", v6, a1, v7, v8, v4, CMIStringFromCVPixelFormatType()];
}

uint64_t BWPrettyStringFromBytes(unint64_t a1)
{
  if (((flsll(a1 | 1) - 1) / 10) <= 5)
  {
    v2 = (flsll(a1 | 1) - 1) / 10;
  }

  else
  {
    v2 = 5;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%.1f %s", a1 / (1 << (10 * v2)), off_1E7991998[v2]];
}

__CFString *BWStringFromAudioChannelLayout(unsigned int *a1)
{
  if (!a1)
  {
    return @"NULL";
  }

  v2 = [MEMORY[0x1E696AD60] string];
  if (a1[2])
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = &a1[5 * v4 + 3];
      [v2 appendFormat:@"mChannelLayoutTag[%d]: mChannelLabel: 0x%08X, mChannelFlags: 0x%08X, mChannelCoordinates: %f, %f, %f\n", v3, *v5, v5[1], *(v5 + 2), *(v5 + 3), *(v5 + 4)];
      v3 = ++v4;
    }

    while (a1[2] > v4);
  }

  v6 = [MEMORY[0x1E696AD60] stringWithFormat:@"0x%08X", *a1];
  v7 = v6;
  v8 = *(a1 + 1) << 16;
  if (!v8)
  {
    v9 = @" (Use Channel Descriptions)";
    goto LABEL_10;
  }

  if (v8 == 12451840)
  {
    v9 = @" (HOA_ACN_SN3D)";
LABEL_10:
    [v6 appendString:v9];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"\n[AudioChannelLayout]\nmChannelLayoutTag: %@\nmNumberChannelDescriptions: %d\n%@", v7, a1[2], v2];
}

__CFString *BWStringFromFigCaptureSourceDeviceTypes(void *a1)
{
  if (![a1 count])
  {
    return &stru_1F216A3D0;
  }

  v2 = [MEMORY[0x1E696AD60] string];
  if ([a1 count])
  {
    v3 = 0;
    do
    {
      if (v3)
      {
        [v2 appendString:@"+"];
      }

      [v2 appendString:{BWStringFromCaptureDeviceType(objc_msgSend(objc_msgSend(a1, "objectAtIndexedSubscript:", v3++), "intValue"))}];
    }

    while ([a1 count] > v3);
  }

  return v2;
}

BOOL BWCIFilterArrayOnlyContainsPortraitFilters(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(a1);
        }

        NSClassFromString(&cfstr_Cideptheffect.isa);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          NSClassFromString(&cfstr_Ciportraiteffe_8.isa);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            NSClassFromString(&cfstr_Ciportraiteffe_9.isa);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              return 0;
            }
          }
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [a1 countByEnumeratingWithState:&v8 objects:v7 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return [a1 count] != 0;
}

uint64_t BWCIFilterArrayContainsPortraitEffectStageFilters(void *a1, char a2)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  result = [a1 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(a1);
        }

        NSClassFromString(&cfstr_Ciportraiteffe_6.isa);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          NSClassFromString(&cfstr_Ciportraiteffe_7.isa);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (a2)
            {
              continue;
            }

            NSClassFromString(&cfstr_Ciportraiteffe_4.isa);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }
          }
        }

        return 1;
      }

      v5 = [a1 countByEnumeratingWithState:&v9 objects:v8 count:16];
      result = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t BWSemanticSegmentationMatteAttachedMediaKeysSupportedByDemosaicedRaw()
{
  v1[0] = @"PersonSemanticsSkin";
  v1[1] = 0x1F21AAD30;
  v1[2] = 0x1F21AABB0;
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v1 count:3];
}

uint64_t BWSmartStyleRenderingShouldBeBypassed(const void *a1)
{
  AttachedMedia = BWSampleBufferGetAttachedMedia(a1, 0x1F21AB070);
  if (!AttachedMedia)
  {
    return 0;
  }

  v2 = CMGetAttachment(AttachedMedia, *off_1E798A3C8, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 objectForKeyedSubscript:*off_1E798A908];
  if (!v4)
  {
    v4 = [v3 objectForKeyedSubscript:*off_1E798A8E0];
  }

  return [v4 BOOLValue];
}

uint64_t BWSampleBufferContainsSemanticSegmentationMatteAttachedMediaSupportedByDemosaicedRaw(const void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v12[0] = @"PersonSemanticsSkin";
  v12[1] = 0x1F21AAD30;
  v12[2] = 0x1F21AABB0;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (BWSampleBufferGetAttachedMedia(a1, *(*(&v8 + 1) + 8 * v6)))
        {
          return 1;
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

__CFString *BWCaptureDevicePositionToString(int a1)
{
  v1 = @"Unspecified";
  if (a1 == 1)
  {
    v1 = @"Back";
  }

  if (a1 == 2)
  {
    return @"Front";
  }

  else
  {
    return v1;
  }
}

void *BWLoadProcessorBundle(uint64_t a1, uint64_t a2)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v4 = [@"/System/Library/VideoProcessors" stringByAppendingPathComponent:a1];
  if (a2 != -1)
  {
    v4 = [v4 stringByAppendingFormat:@"V%d", a2];
  }

  v5 = [v4 stringByAppendingPathExtension:@"bundle"];
  v6 = [MEMORY[0x1E696AAE8] bundleWithPath:v5];
  if (!v6)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v16 = 0;
    v15 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v13 = 138412290;
    v14 = v5;
    v11 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v11, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Utilities/BWUtilities.m", 940, @"LastShownDate:BWUtilities.m:940", @"LastShownBuild:BWUtilities.m:940", 0);
    free(v11);
    return 0;
  }

  v7 = v6;
  v12 = 0;
  if (([v6 loadAndReturnError:&v12] & 1) == 0)
  {
    return 0;
  }

  return v7;
}

uint64_t BWLoadCreateAndSetupMetalImageBufferProcessor(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8, uint64_t a9, uint64_t a10, void *a11)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a5)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@ProcessorV%d", a3, a4, a5];
  }

  else
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@Processor", a3, a4, v30];
  }

  v17 = v16;
  v18 = a4;
  v19 = BWLoadProcessorBundle(a1, a2);
  if (!v19)
  {
    v21 = 0;
    goto LABEL_29;
  }

  v20 = objc_alloc_init([v19 classNamed:v17]);
  v21 = v20;
  if (!v20)
  {
LABEL_29:
    v28 = 4294954510;
    goto LABEL_30;
  }

  if (![v20 conformsToProtocol:a6])
  {
LABEL_27:
    v28 = 4294954516;
    goto LABEL_30;
  }

  if (a7)
  {
    v22 = BWProcessorTuningParametersWithStandardStructure(v18, a5, a8);
    if (v22)
    {
      [v21 setTuningParameters:v22];
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_10:
  if ([a8 count])
  {
    v23 = [MEMORY[0x1E695DF90] dictionary];
  }

  else
  {
    v23 = 0;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v24 = [a8 countByEnumeratingWithState:&v35 objects:v34 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v36;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(a8);
        }

        [v23 setObject:objc_msgSend(objc_msgSend(a8 forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v35 + 1) + 8 * i)), "cameraInfo"), *(*(&v35 + 1) + 8 * i)}];
      }

      v25 = [a8 countByEnumeratingWithState:&v35 objects:v34 count:16];
    }

    while (v25);
  }

  if ([v23 count])
  {
    [v21 setCameraInfoByPortType:{objc_msgSend(v23, "copy")}];
  }

  [v21 setMetalCommandQueue:a9];
  if (a10 && (*(a10 + 16))(a10, v21) || [v21 setup])
  {
    goto LABEL_27;
  }

  v28 = 0;
  if (!a11)
  {
LABEL_30:

    return v28;
  }

  *a11 = v21;
  return v28;
}

uint64_t BWStandardProcessorNameForBundleBaseName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@ProcessorV%d", a1, a2, a3];
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@Processor", a1, a2, v4];
  }
}

id BWProcessorTuningParametersWithStandardStructure(uint64_t a1, uint64_t a2, void *a3)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a1)
  {
    BWProcessorTuningParametersWithStandardStructure_cold_3();
    return 0;
  }

  if (!a2)
  {
    BWProcessorTuningParametersWithStandardStructure_cold_2();
    return 0;
  }

  if (!a3)
  {
    BWProcessorTuningParametersWithStandardStructure_cold_1();
    return 0;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v18 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = a3;
        v12 = [a3 objectForKeyedSubscript:v10];
        v13 = [objc_msgSend(v12 "sensorIDDictionary")];
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@V%d", a1, a2];
        v15 = v13;
        a3 = v11;
        [v6 setObject:objc_msgSend(v15 forKeyedSubscript:{"objectForKeyedSubscript:", v14), v10}];
      }

      v8 = [v11 countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v8);
  }

  if ([v6 count])
  {
    v16 = [v6 copy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t BWLoadCreateSetupAndPrepareMetalImageBufferProcessor(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, void *a13)
{
  v16 = 0;
  v13 = BWLoadCreateAndSetupMetalImageBufferProcessor(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v16);
  if (v13)
  {
    v14 = v13;
    BWLoadCreateSetupAndPrepareMetalImageBufferProcessor_cold_1();
    goto LABEL_9;
  }

  if (a11 && (*(a11 + 16))(a11, v16) || [v16 prepareToProcess:a12])
  {
    v14 = 4294954516;
    goto LABEL_9;
  }

  v14 = 0;
  if (!a13)
  {
LABEL_9:

    return v14;
  }

  *a13 = v16;
  return v14;
}

id BWEnumArrayToShortStrings(void *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a1 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(a1);
        }

        [v4 addObject:{(*(a2 + 16))(a2, objc_msgSend(*(*(&v11 + 1) + 8 * v8++), "intValue"))}];
      }

      while (v6 != v8);
      v6 = [a1 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  return [v4 copy];
}

uint64_t BWBuildVideoTrackMatrix(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, char a6, unint64_t a7)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  result = 0;
  if ((a2 & a3 & 1) == 0 && HIDWORD(a7) && a7)
  {
    v13 = MEMORY[0x1E695EFD0];
    v14 = *(MEMORY[0x1E695EFD0] + 32);
    v15 = *(MEMORY[0x1E695EFD0] + 40);
    v33 = *MEMORY[0x1E695EFD0];
    v36 = *(MEMORY[0x1E695EFD0] + 16);
    if (a2)
    {
      CGAffineTransformMakeScale(&t2, -1.0, 1.0);
      *&t1.a = v33;
      *&t1.c = v36;
      t1.tx = v14;
      t1.ty = v15;
      CGAffineTransformConcat(&v42, &t1, &t2);
      tx = v42.tx;
      ty = v42.ty;
      v34 = *&v42.c;
      v37 = *&v42.a;
      CGAffineTransformMakeTranslation(&t2, a7, 0.0);
      *&t1.a = v37;
      *&t1.c = v34;
      t1.tx = tx;
      t1.ty = ty;
      CGAffineTransformConcat(&v42, &t1, &t2);
      v33 = *&v42.a;
      v36 = *&v42.c;
      v14 = v42.tx;
      v15 = v42.ty;
    }

    v18 = FigCaptureRotationDegreesWithMirroring(a1, a2 | a3);
    v19 = SHIDWORD(a7);
    if (v18 == 90)
    {
      v20 = SHIDWORD(a7);
    }

    else
    {
      v20 = 0.0;
    }

    if (v18 == 180)
    {
      v20 = a7;
    }

    else
    {
      v19 = 0.0;
    }

    if (v18 == 270)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = v20;
    }

    if (v18 == 270)
    {
      v22 = a7;
    }

    else
    {
      v22 = v19;
    }

    CGAffineTransformMakeRotation(&t2, v18 * 3.14159265 / 180.0);
    *&t1.a = v33;
    *&t1.c = v36;
    t1.tx = v14;
    t1.ty = v15;
    CGAffineTransformConcat(&v42, &t1, &t2);
    v23 = v42.tx;
    v24 = v42.ty;
    v35 = *&v42.c;
    v38 = *&v42.a;
    CGAffineTransformMakeTranslation(&t2, v21, v22);
    *&t1.a = v38;
    *&t1.c = v35;
    t1.tx = v23;
    t1.ty = v24;
    CGAffineTransformConcat(&v42, &t1, &t2);
    a = v42.a;
    b = v42.b;
    c = v42.c;
    d = v42.d;
    v30 = v42.tx;
    v29 = v42.ty;
    if ((a6 & 1) != 0 || (v31 = v13[1], *&t2.a = *v13, v32 = v13[2], *&t2.c = v31, *&t2.tx = v32, !CGAffineTransformEqualToTransform(&v42, &t2)))
    {
      v39[0] = [MEMORY[0x1E696AD98] numberWithDouble:{a, v35, v38}];
      v39[1] = [MEMORY[0x1E696AD98] numberWithDouble:b];
      v39[2] = &unk_1F224C160;
      v39[3] = [MEMORY[0x1E696AD98] numberWithDouble:c];
      v39[4] = [MEMORY[0x1E696AD98] numberWithDouble:d];
      v39[5] = &unk_1F224C160;
      v39[6] = [MEMORY[0x1E696AD98] numberWithDouble:v30];
      v39[7] = [MEMORY[0x1E696AD98] numberWithDouble:v29];
      v39[8] = &unk_1F224C170;
      return [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:9];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t BWRowMajorArrayFrom3x3Matrix(__n128 a1, __n128 a2, __n128 a3)
{
  v10[0] = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v10[1] = [MEMORY[0x1E696AD98] numberWithFloat:a2.n128_f64[0]];
  v10[2] = [MEMORY[0x1E696AD98] numberWithFloat:a3.n128_f64[0]];
  HIDWORD(v3) = a1.n128_u32[1];
  LODWORD(v3) = a1.n128_u32[1];
  v10[3] = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  HIDWORD(v4) = a2.n128_u32[1];
  LODWORD(v4) = a2.n128_u32[1];
  v10[4] = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  HIDWORD(v5) = a3.n128_u32[1];
  LODWORD(v5) = a3.n128_u32[1];
  v10[5] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  v10[6] = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];
  v10[7] = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[2]))}];
  v10[8] = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a3.n128_u32[1], a3.n128_u32[2]))}];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:9];
}

uint64_t BWScalePixelBuffer(__CVBuffer *a1, __CVBuffer *a2, OpaqueVTPixelTransferSession *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11)
{
  pixelTransferSessionOut = a3;
  if (!a1)
  {
    BWScalePixelBuffer_cold_11();
    return 0;
  }

  if (!a2)
  {
    BWScalePixelBuffer_cold_10();
    return 0;
  }

  v12 = a3;
  if (CGRectIsNull(*&a4))
  {
    v22 = 0;
  }

  else
  {
    v40.origin.x = a4;
    v40.origin.y = a5;
    v40.size.width = a6;
    v40.size.height = a7;
    v22 = CGRectCreateDictionaryRepresentation(v40);
    if (!v22)
    {
      BWScalePixelBuffer_cold_1();
      return 4294954516;
    }
  }

  v41.origin.x = a8;
  v41.origin.y = a9;
  v41.size.width = a10;
  v41.size.height = a11;
  if (CGRectIsNull(v41))
  {
    v23 = 0;
    if (v12)
    {
LABEL_8:
      v24 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    Width = CVPixelBufferGetWidth(a2);
    Height = CVPixelBufferGetHeight(a2);
    v42.origin.x = a8;
    v42.origin.y = a9;
    v42.size.width = a10;
    v42.size.height = a11;
    LODWORD(Width) = llround(CGRectGetMidX(v42) - vcvtd_n_f64_u64(Width, 1uLL));
    v43.origin.x = a8;
    v43.origin.y = a9;
    v43.size.width = a10;
    v43.size.height = a11;
    LODWORD(Height) = llround(CGRectGetMidY(v43) - vcvtd_n_f64_u64(Height, 1uLL));
    v37[0] = *MEMORY[0x1E6965D68];
    v38[0] = [MEMORY[0x1E696AD98] numberWithInt:Width];
    v37[1] = *MEMORY[0x1E6965D78];
    v38[1] = [MEMORY[0x1E696AD98] numberWithInt:Height];
    v37[2] = *MEMORY[0x1E6965D80];
    v38[2] = [MEMORY[0x1E696AD98] numberWithDouble:a10];
    v37[3] = *MEMORY[0x1E6965D60];
    v38[3] = [MEMORY[0x1E696AD98] numberWithDouble:a11];
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:4];
    if (v12)
    {
      goto LABEL_8;
    }
  }

  v27 = VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &pixelTransferSessionOut);
  if (v27)
  {
    v30 = v27;
    BWScalePixelBuffer_cold_2();
    return v30;
  }

  v12 = pixelTransferSessionOut;
  v24 = pixelTransferSessionOut;
LABEL_12:
  v28 = *MEMORY[0x1E6983E40];
  if (v22)
  {
    v29 = VTSessionSetProperty(v12, v28, v22);
    if (v29)
    {
      v30 = v29;
      BWScalePixelBuffer_cold_3();
      goto LABEL_24;
    }
  }

  else
  {
    v31 = VTSessionSetProperty(v12, v28, 0);
    if (v31)
    {
      v30 = v31;
      BWScalePixelBuffer_cold_4();
      goto LABEL_24;
    }
  }

  if (v23)
  {
    v32 = VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983DB8], v23);
    if (v32)
    {
      v30 = v32;
      BWScalePixelBuffer_cold_5();
    }

    else
    {
      v33 = VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983E30], *MEMORY[0x1E69840E0]);
      if (!v33)
      {
        v34 = VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983E58], *MEMORY[0x1E695E4C0]);
        if (v34)
        {
          v30 = v34;
          BWScalePixelBuffer_cold_7();
          goto LABEL_24;
        }

LABEL_22:
        v30 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, a1, a2);
        if (v30)
        {
          BWScalePixelBuffer_cold_9();
        }

        goto LABEL_24;
      }

      v30 = v33;
      BWScalePixelBuffer_cold_6();
    }
  }

  else
  {
    v35 = VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983E30], *MEMORY[0x1E69840F0]);
    if (!v35)
    {
      goto LABEL_22;
    }

    v30 = v35;
    BWScalePixelBuffer_cold_8();
  }

LABEL_24:
  if (v24)
  {
    CFRelease(v24);
  }

  return v30;
}

uint64_t BWCreateIOSurfaceBackedCVPixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3, CVPixelBufferRef *a4, __CFString *a5)
{
  if (FigCapturePlatformIOSurfaceWiringAssertionEnabled())
  {
    v11 = *MEMORY[0x1E69660F0];
    v12 = MEMORY[0x1E695E118];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  }

  IOSurfaceBackedCVPixelBufferWithAttributes = FigCreateIOSurfaceBackedCVPixelBufferWithAttributes();
  IOSurface = CVPixelBufferGetIOSurface(*a4);
  if ([(__CFString *)a5 length])
  {
    v9 = a5;
  }

  else
  {
    v9 = @"CMCapture: unnamed";
  }

  IOSurfaceSetValue(IOSurface, *MEMORY[0x1E696CF98], v9);
  return IOSurfaceBackedCVPixelBufferWithAttributes;
}

void BWPropagatePixelBufferDolbyVisionRPUData(__CVBuffer *a1, CVBufferRef buffer)
{
  v4 = *MEMORY[0x1E6965E48];
  v5 = CVBufferCopyAttachment(buffer, *MEMORY[0x1E6965E48], 0);
  v6 = CVBufferCopyAttachment(a1, v4, 0);
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    CVBufferSetAttachment(buffer, v4, v6, kCVAttachmentMode_ShouldPropagate);
LABEL_10:

    CFRelease(v6);
    return;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    goto LABEL_10;
  }
}

void BWPropagatePixelBufferAmbientViewingEnvironment(__CVBuffer *a1, __CVBuffer *a2)
{
  IOSurface = CVPixelBufferGetIOSurface(a1);
  v4 = CVPixelBufferGetIOSurface(a2);
  v5 = *MEMORY[0x1E6965CD8];
  v6 = IOSurfaceCopyValue(IOSurface, *MEMORY[0x1E6965CD8]);
  IOSurfaceSetValue(v4, v5, v6);
  if (v6)
  {

    CFRelease(v6);
  }
}

unint64_t BWExtendDimensionsToConformToAlignmentRequirements(unint64_t a1, int a2, int a3)
{
  v4 = HIDWORD(a1);
  v5 = FigCaptureCeilFloatToMultipleOf(a2, a1);
  return v5 | (FigCaptureCeilFloatToMultipleOf(a3, v4) << 32);
}

uint64_t BWShiftedValueWithBitmask(int a1, unsigned int a2)
{
  v2 = __clz(__rbit32(a2));
  if (!a2)
  {
    v2 = -1;
  }

  return (a1 << v2) & a2;
}

uint64_t BWPortTypeIsColorCamera(void *a1)
{
  if ([a1 isEqualToString:*off_1E798A0D0] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", *off_1E798A0C0) & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", *off_1E798A0D8) & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", *off_1E798A0E0) & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", *off_1E798A0F8))
  {
    return 1;
  }

  if (([a1 isEqualToString:*off_1E798A0E8] & 1) == 0 && (objc_msgSend(a1, "isEqualToString:", *off_1E798A0C8) & 1) == 0 && (objc_msgSend(a1, "isEqualToString:", *off_1E798A0F0) & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Unknown port type %@", a1), 0}]);
  }

  return 0;
}

uint64_t BWUnderlyingDeviceTypesForCompositeDeviceType(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = v2;
  if (a1 <= 7)
  {
    if (a1 <= 3)
    {
      if ((a1 - 1) >= 3)
      {
        goto LABEL_16;
      }
    }

    else if (a1 > 5)
    {
      if (a1 == 6)
      {
        v8 = &unk_1F22438A0;
LABEL_27:
        [v2 addObject:v8];
        v4 = &unk_1F22438E8;
        goto LABEL_15;
      }
    }

    else if (a1 == 4)
    {
      v7 = &unk_1F22438A0;
      goto LABEL_24;
    }

LABEL_14:
    v4 = [MEMORY[0x1E696AD98] numberWithInt:a1];
    goto LABEL_15;
  }

  if (a1 > 0x14)
  {
    goto LABEL_20;
  }

  if (((1 << a1) & 0x1FCC00) != 0)
  {
    goto LABEL_14;
  }

  if (a1 == 12)
  {
    v8 = &unk_1F2243900;
    goto LABEL_27;
  }

  if (a1 == 13)
  {
    [v2 addObject:&unk_1F22438A0];
    v4 = &unk_1F2243918;
LABEL_15:
    [v3 addObject:v4];
    goto LABEL_16;
  }

LABEL_20:
  if (a1 == 8)
  {
    [v2 addObject:&unk_1F22438A0];
    v4 = &unk_1F22438D0;
    goto LABEL_15;
  }

  if (a1 == 9)
  {
    [v2 addObject:&unk_1F22438A0];
    v7 = &unk_1F22438D0;
LABEL_24:
    [v3 addObject:v7];
    v4 = &unk_1F22438B8;
    goto LABEL_15;
  }

LABEL_16:
  if (![v3 count])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Unknown composite device type %d.  Does not align with device types", a1), 0}]);
  }

  v5 = MEMORY[0x1E695DEC8];

  return [v5 arrayWithArray:v3];
}

uint64_t BWGetDiskCapacityInGB()
{
  if (BWGetDiskCapacityInGB_onceToken != -1)
  {
    BWGetDiskCapacityInGB_cold_1();
  }

  return BWGetDiskCapacityInGB_sDiskCapacityInGB;
}

void __BWGetDiskCapacityInGB_block_invoke()
{
  v0 = MGCopyAnswer();
  BWGetDiskCapacityInGB_sDiskCapacityInGB = ([objc_msgSend(v0 objectForKeyedSubscript:{*MEMORY[0x1E69E5128]), "longLongValue"}] / 1000000000.0);
}

uint64_t BWGetDataCapacityInBytes()
{
  if (BWGetDataCapacityInBytes_onceToken != -1)
  {
    BWGetDataCapacityInBytes_cold_1();
  }

  return BWGetDataCapacityInBytes_sDataCapacityInBytes;
}

void __BWGetDataCapacityInBytes_block_invoke()
{
  v0 = MGCopyAnswer();
  BWGetDataCapacityInBytes_sDataCapacityInBytes = [objc_msgSend(v0 objectForKeyedSubscript:{*MEMORY[0x1E69E5120]), "longLongValue"}];
}

uint64_t BWGetFreeDiskSpaceAtPath(const char *a1)
{
  memset(&v2, 0, 512);
  if (!statfs(a1, &v2))
  {
    return v2.f_bavail * v2.f_bsize;
  }

  __error();
  return 0;
}

uint64_t BWGetCurrentTotalNANDReadAndWriteBytes(uint64_t *a1, uint64_t *a2)
{
  existing = 0;
  v4 = *MEMORY[0x1E696CD60];
  v5 = IOServiceMatching("IONVMeController");
  MatchingServices = IOServiceGetMatchingServices(v4, v5, &existing);
  if (MatchingServices)
  {
    BWGetCurrentTotalNANDReadAndWriteBytes_cold_1();
  }

  else if (existing)
  {
    v16 = a1;
    v7 = IOIteratorNext(existing);
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      v11 = *MEMORY[0x1E695E480];
      do
      {
        v12 = IORegistryEntrySearchCFProperty(v8, "IOService", @"Physical Interconnect Location", v11, 1u);
        if ([v12 isEqualToString:@"Internal"])
        {
          v13 = IORegistryEntrySearchCFProperty(v8, "IOService", @"Statistics", v11, 1u);
          v14 = v13;
          if (v13)
          {
            v10 = [objc_msgSend(v13 objectForKey:{@"Bytes (Read)", "unsignedLongLongValue"}];
            v9 = [objc_msgSend(v14 objectForKey:{@"Bytes (Write)", "unsignedLongLongValue"}];

            LOBYTE(v14) = 1;
          }
        }

        else
        {
          LOBYTE(v14) = 0;
        }

        IOObjectRelease(v8);
        if (v14)
        {
          break;
        }

        v8 = IOIteratorNext(existing);
      }

      while (v8);
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    if (v16)
    {
      *v16 = v10;
    }

    MatchingServices = 0;
    if (a2)
    {
      *a2 = v9;
    }
  }

  else
  {
    BWGetCurrentTotalNANDReadAndWriteBytes_cold_2();
  }

  if (existing)
  {
    IOObjectRelease(existing);
  }

  return MatchingServices;
}

uint64_t BWGetDisplaySupportsPerseus()
{
  if (BWGetDisplaySupportsPerseus_onceToken != -1)
  {
    BWGetDisplaySupportsPerseus_cold_1();
  }

  return BWGetDisplaySupportsPerseus_displaySupportsPerseus;
}

uint64_t __BWGetDisplaySupportsPerseus_block_invoke()
{
  result = MGGetBoolAnswer();
  BWGetDisplaySupportsPerseus_displaySupportsPerseus = result;
  return result;
}

void *BWPreviewRegistrationTypeFromShortString(uint64_t a1)
{
  if (BWPreviewRegistrationTypeFromShortString_sBWShortStringToPreviewRegistrationTypeOnceToken != -1)
  {
    BWPreviewRegistrationTypeFromShortString_cold_1();
  }

  result = [BWPreviewRegistrationTypeFromShortString_sBWShortStringToPreviewRegistrationTypeDictionary objectForKeyedSubscript:a1];
  if (result)
  {

    return [result intValue];
  }

  return result;
}

uint64_t bwu_validateLongConversion(void *a1, uint64_t *a2)
{
  v3 = [a1 UTF8String];
  __endptr = 0;
  v4 = strtol(v3, &__endptr, 0);
  if (__endptr == v3 || *__endptr)
  {
    return 0;
  }

  *a2 = v4;
  return 1;
}

uint64_t BWGetPixelBufferRotationAndMirroring(const void *a1, _DWORD *a2, _BYTE *a3)
{
  v6 = [CMGetAttachment(a1 @"RotationDegrees"];
  v7 = [CMGetAttachment(a1 @"MirroredHorizontal"];
  result = [CMGetAttachment(a1 @"MirroredVertical"];
  v9 = result;
  if (v7)
  {
    v10 = result == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (result)
    {
      goto LABEL_13;
    }

LABEL_7:
    if (!a2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  result = BWGetPixelBufferRotationAndMirroring_cold_1();
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_13:
  result = FigCaptureNormalizeAngle(v6 + 180);
  v6 = result;
  LOBYTE(v7) = 1;
  if (a2)
  {
LABEL_8:
    *a2 = v6;
  }

LABEL_9:
  if (a3)
  {
    *a3 = v7;
  }

  return result;
}

CGAffineTransform *BWGetAffineTransformFromSensorToPreview@<X0>(int a1@<W0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = MEMORY[0x1E695EFD0];
  v9 = *MEMORY[0x1E695EFD0];
  v10 = *(MEMORY[0x1E695EFD0] + 16);
  *a4 = *MEMORY[0x1E695EFD0];
  *(a4 + 16) = v10;
  v11 = *(v8 + 32);
  *(a4 + 32) = v11;
  if (a1 > 0 || a2)
  {
    v29 = v10;
    v30 = v9;
    v28 = v11;
    CGAffineTransformMakeTranslation(&t2, -0.5, -0.5);
    *&t1.a = v30;
    *&t1.c = v29;
    *&t1.tx = v28;
    CGAffineTransformConcat(a4, &t1, &t2);
    if (a1 >= 1)
    {
      CGAffineTransformMakeRotation(&t1, a1 * 0.0174532925);
      v12 = *(a4 + 16);
      *&v32.a = *a4;
      *&v32.c = v12;
      *&v32.tx = *(a4 + 32);
      CGAffineTransformConcat(&t2, &v32, &t1);
      v13 = *&t2.c;
      *a4 = *&t2.a;
      *(a4 + 16) = v13;
      *(a4 + 32) = *&t2.tx;
    }

    if (a2)
    {
      CGAffineTransformMakeScale(&t1, -1.0, 1.0);
      v14 = *(a4 + 16);
      *&v32.a = *a4;
      *&v32.c = v14;
      *&v32.tx = *(a4 + 32);
      CGAffineTransformConcat(&t2, &v32, &t1);
      v15 = *&t2.c;
      *a4 = *&t2.a;
      *(a4 + 16) = v15;
      *(a4 + 32) = *&t2.tx;
    }

    CGAffineTransformMakeTranslation(&t1, 0.5, 0.5);
    v16 = *(a4 + 16);
    *&v32.a = *a4;
    *&v32.c = v16;
    *&v32.tx = *(a4 + 32);
    CGAffineTransformConcat(&t2, &v32, &t1);
    v17 = *&t2.c;
    *a4 = *&t2.a;
    *(a4 + 16) = v17;
    *(a4 + 32) = *&t2.tx;
  }

  [objc_msgSend(a3 objectForKeyedSubscript:{*off_1E798B7B0, v28, v29, v30), "floatValue"}];
  v19 = v18;
  result = [a3 objectForKeyedSubscript:*off_1E798A5D8];
  v21 = *(MEMORY[0x1E695F058] + 16);
  rect.origin = *MEMORY[0x1E695F058];
  rect.size = v21;
  if (result)
  {
    result = CGRectMakeWithDictionaryRepresentation(result, &rect);
    if (result)
    {
      v19 = 2.0 / (rect.size.width + rect.size.height) * v19;
    }
  }

  if (v19 > 1.0)
  {
    CGAffineTransformMakeTranslation(&t1, -0.5, -0.5);
    v22 = *(a4 + 16);
    *&v32.a = *a4;
    *&v32.c = v22;
    *&v32.tx = *(a4 + 32);
    CGAffineTransformConcat(&t2, &v32, &t1);
    v23 = *&t2.c;
    *a4 = *&t2.a;
    *(a4 + 16) = v23;
    *(a4 + 32) = *&t2.tx;
    CGAffineTransformMakeScale(&t1, v19, v19);
    v24 = *(a4 + 16);
    *&v32.a = *a4;
    *&v32.c = v24;
    *&v32.tx = *(a4 + 32);
    CGAffineTransformConcat(&t2, &v32, &t1);
    v25 = *&t2.c;
    *a4 = *&t2.a;
    *(a4 + 16) = v25;
    *(a4 + 32) = *&t2.tx;
    CGAffineTransformMakeTranslation(&t1, 0.5, 0.5);
    v26 = *(a4 + 16);
    *&v32.a = *a4;
    *&v32.c = v26;
    *&v32.tx = *(a4 + 32);
    result = CGAffineTransformConcat(&t2, &v32, &t1);
    v27 = *&t2.c;
    *a4 = *&t2.a;
    *(a4 + 16) = v27;
    *(a4 + 32) = *&t2.tx;
  }

  return result;
}

uint64_t BWUtilitiesGetPortTypeForInputFromInputByPortTypes(uint64_t a1, void *a2)
{
  if ([objc_msgSend(a2 "allKeys")] == 1)
  {
    v4 = [a2 allKeys];

    return [v4 objectAtIndexedSubscript:0];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [a2 countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (!v6)
    {
      return 0;
    }

    v7 = v6;
    v8 = *v13;
LABEL_7:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(a2);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      if ([a2 objectForKeyedSubscript:v10] == a1)
      {
        return v10;
      }

      if (v7 == ++v9)
      {
        v7 = [a2 countByEnumeratingWithState:&v12 objects:v11 count:16];
        if (v7)
        {
          goto LABEL_7;
        }

        return 0;
      }
    }
  }
}

uint64_t BWUtilitiesGetPortTypeForUnderlyingDeviceType(unsigned int a1, void *a2)
{
  if ([a2 count] == 1)
  {

    return [a2 objectAtIndexedSubscript:0];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [a2 countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (!v5)
    {
      return 0;
    }

    v6 = v5;
    v7 = *v12;
LABEL_7:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(a2);
      }

      v9 = *(*(&v11 + 1) + 8 * v8);
      if (BWUtilitiesUnderlyingDeviceTypeFromPortType(v9, a1) == a1)
      {
        return v9;
      }

      if (v6 == ++v8)
      {
        v6 = [a2 countByEnumeratingWithState:&v11 objects:v10 count:16];
        if (v6)
        {
          goto LABEL_7;
        }

        return 0;
      }
    }
  }
}

void BWUtilitiesApplyAVEStrength(__IOSurface *a1, void *a2)
{
  [a2 floatValue];
  if (v4 == 1.0)
  {

    IOSurfaceRemoveValue(a1, @"AVEStrength");
  }

  else
  {

    IOSurfaceSetValue(a1, @"AVEStrength", a2);
  }
}

void *isn_addVariantToURL(void *result)
{
  if (result)
  {
    v1 = [objc_msgSend(objc_msgSend(objc_msgSend(result "resourceSpecifier")];
    v2 = MEMORY[0x1E695DFF8];

    return [v2 fileURLWithPath:v1];
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_91_2()
{
  v3 = *(v0 + *(v1 + 2936));

  return [v3 objectAtIndexedSubscript:0];
}

void sub_1ACA7999C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACA79DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACA79EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t DuetActivitySchedulerLibrary()
{
  v2[0] = 0;
  if (!DuetActivitySchedulerLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __DuetActivitySchedulerLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7991C30;
    v4 = 0;
    DuetActivitySchedulerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = DuetActivitySchedulerLibraryCore_frameworkLibrary;
  if (!DuetActivitySchedulerLibraryCore_frameworkLibrary)
  {
    DuetActivitySchedulerLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __DuetActivitySchedulerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  DuetActivitySchedulerLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t BWAddStillImageProcessingMetadataToMetadata(void *a1, void *a2)
{
  v4 = *off_1E798A940;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(a2, "objectForKeyedSubscript:", *off_1E798A940)}];
  if ([objc_msgSend(a1 "requestedSettings")] && objc_msgSend(objc_msgSend(a1, "requestedSettings"), "outputHeight"))
  {
    v6 = [objc_msgSend(a1 "requestedSettings")];
    v7 = [objc_msgSend(a1 "requestedSettings")];
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:v6 / v7];
    v9 = *off_1E798AA00;
    v10 = v5;
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [a1 settingsID];
    v12 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(7, v12, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Utilities/BWStillImageMetadataUtilities.m", 102, @"LastShownDate:BWStillImageMetadataUtilities.m:102", @"LastShownBuild:BWStillImageMetadataUtilities.m:102", 0);
    free(v12);
    v9 = *off_1E798AA00;
    v10 = v5;
    v8 = 0;
  }

  [v10 setObject:v8 forKeyedSubscript:v9];
  if ([objc_msgSend(a1 "processingSettings")])
  {
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798AA08];
  }

  if ([objc_msgSend(a1 "processingSettings")])
  {
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798A9F8];
  }

  if ([v5 count])
  {
    v13 = v5;
  }

  else
  {
    v13 = 0;
  }

  return [a2 setObject:v13 forKeyedSubscript:v4];
}

uint64_t simu_faceObservationsContainFacesWithinNormalizedRect(void *a1, CGAffineTransform *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = BWDetectedFacesInBufferCoordinatesFromVisionFaceObservations(a1, a2);
  result = [v10 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (result)
  {
    v12 = result;
    v13 = *v21;
    v16 = *(MEMORY[0x1E695F050] + 16);
    v17 = *MEMORY[0x1E695F050];
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * v14);
        rect.origin = v17;
        rect.size = v16;
        if (CGRectMakeWithDictionaryRepresentation(v15, &rect))
        {
          v24.origin.x = a3;
          v24.origin.y = a4;
          v24.size.width = a5;
          v24.size.height = a6;
          if (CGRectIntersectsRect(rect, v24))
          {
            return 1;
          }
        }

        ++v14;
      }

      while (v12 != v14);
      result = [v10 countByEnumeratingWithState:&v20 objects:v19 count:16];
      v12 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t BWMetadataHasDetectedFaces(void *a1, int a2)
{
  v4 = [objc_msgSend(objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798B220), "objectForKeyedSubscript:", *off_1E798ACB8), "objectForKeyedSubscript:", *off_1E798ACE8}];
  if (!v4)
  {
    v4 = [a1 objectForKeyedSubscript:*off_1E798B218];
  }

  v5 = v4;
  v6 = [v4 count];
  v8 = v6 == 0;
  result = v6 != 0;
  v8 = v8 || a2 == 0;
  if (!v8)
  {
    FinalCropRectFromSource = FigCaptureMetadataUtilitiesGetFinalCropRectFromSource();

    return simu_detectedFacesArrayContainFacesWithinNormalizedRect(v5, FinalCropRectFromSource, v10, v11, v12);
  }

  return result;
}

uint64_t simu_detectedFacesArrayContainFacesWithinNormalizedRect(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  result = [a1 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (result)
  {
    v11 = result;
    v12 = *v21;
    v13 = *off_1E798B5C0;
    v16 = *(MEMORY[0x1E695F050] + 16);
    v17 = *MEMORY[0x1E695F050];
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(a1);
        }

        v15 = *(*(&v20 + 1) + 8 * v14);
        rect.origin = v17;
        rect.size = v16;
        if (CGRectMakeWithDictionaryRepresentation([v15 objectForKeyedSubscript:{v13, v16, v17}], &rect))
        {
          v24.origin.x = a2;
          v24.origin.y = a3;
          v24.size.width = a4;
          v24.size.height = a5;
          if (CGRectIntersectsRect(rect, v24))
          {
            return 1;
          }
        }

        ++v14;
      }

      while (v11 != v14);
      result = [a1 countByEnumeratingWithState:&v20 objects:v19 count:16];
      v11 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

float BWSmartStylePersonMasksValidHint(void *a1)
{
  HasDetectedFaces = BWMetadataHasDetectedFaces(a1, 1);
  v3 = HasDetectedFaces | BWMetadataHasDetectedHumanBodies(a1);
  v4 = *off_1E798A8D8;
  v5 = [a1 objectForKeyedSubscript:*off_1E798A8D8];
  v6 = *MEMORY[0x1E6991670];
  if ([v5 objectForKeyedSubscript:*MEMORY[0x1E6991670]])
  {
    [objc_msgSend(objc_msgSend(a1 objectForKeyedSubscript:{v4), "objectForKeyedSubscript:", v6), "floatValue"}];
    v8 = v7;
    result = 1.0;
    if ((v3 & 1) == 0)
    {
      result = -1.0;
      if (v8 >= 0.0)
      {
        return v8;
      }
    }
  }

  else
  {
    result = -1.0;
    if (v3)
    {
      return 1.0;
    }
  }

  return result;
}

CGAffineTransform *BWISPBufferCoordinatesToVisionCoordinatesTransform@<X0>(CGAffineTransform *a1@<X0>, CGAffineTransform *a2@<X8>)
{
  memset(&v7, 0, sizeof(v7));
  FigCaptureExifOrientationGetAffineTransform(a1, 0x100000001uLL, &v7);
  CGAffineTransformMakeTranslation(&t2, 0.0, -1.0);
  v4 = v7;
  CGAffineTransformConcat(&v6, &v4, &t2);
  v7 = v6;
  CGAffineTransformMakeScale(&v6, 1.0, -1.0);
  t2 = v7;
  return CGAffineTransformConcat(a2, &t2, &v6);
}

uint64_t BWVisionFaceObservationsFromISPDetectedFacesInBufferCoordinates(void *a1, CGAffineTransform *a2)
{
  v4 = [MEMORY[0x1E695DF70] array];
  memset(&v21, 0, sizeof(v21));
  BWISPBufferCoordinatesToVisionCoordinatesTransform(a2, &v21);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [a1 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v8 = *off_1E798D040;
    v9 = *off_1E798D038;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(a1);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        memset(&rect, 0, sizeof(rect));
        CGRectMakeWithDictionaryRepresentation([v11 objectForKeyedSubscript:v8], &rect);
        v14 = v21;
        v22 = CGRectApplyAffineTransform(rect, &v14);
        v12 = [getVNFaceObservationClass() faceObservationWithRequestRevision:0 boundingBox:0 roll:0 yaw:0 pitch:{v22.origin.x, v22.origin.y, v22.size.width, v22.size.height}];
        [v12 setFaceId:{objc_msgSend(objc_msgSend(v11, "objectForKeyedSubscript:", v9), "unsignedLongValue")}];
        [v4 addObject:v12];
        ++v10;
      }

      while (v6 != v10);
      v6 = [a1 countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v6);
  }

  return [MEMORY[0x1E695DEC8] arrayWithArray:v4];
}

id BWDetectedFacesInBufferCoordinatesFromVisionFaceObservations(void *a1, CGAffineTransform *a2)
{
  v4 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [a1 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(a1);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        memset(&v14, 0, sizeof(v14));
        BWISPBufferCoordinatesToVisionCoordinatesTransform(a2, &v13);
        CGAffineTransformInvert(&v14, &v13);
        [v9 boundingBox];
        v13 = v14;
        v21 = CGRectApplyAffineTransform(v20, &v13);
        DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v21);
        if (DictionaryRepresentation)
        {
          v11 = DictionaryRepresentation;
          [v4 addObject:DictionaryRepresentation];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [a1 countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v6);
  }

  return [v4 copy];
}

double simu_oisAdjustedOpticalCenter(void *a1, float a2)
{
  v5 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  v6 = [a1 objectForKeyedSubscript:*off_1E798B3B8];
  if (!v6)
  {
    return v5;
  }

  v7 = v6;
  if (![v6 length])
  {
    return v5;
  }

  v8 = [v7 bytes];
  if ((*v8 - 1) > 1)
  {
    return v5;
  }

  v9 = v8;
  v27 = a2;
  CMTimeMakeFromDictionary(&time, [a1 objectForKeyedSubscript:*off_1E798A420]);
  Seconds = CMTimeGetSeconds(&time);
  [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798B2A8), "doubleValue"}];
  v12 = v11;
  [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798B328), "doubleValue"}];
  v14 = v5;
  if (v9[1] < 1)
  {
    return v5 + v14;
  }

  v15 = 0;
  v16 = 0;
  v17 = Seconds - v12;
  v18 = Seconds + v13 / 1000000.0;
  v19 = v9 + 2;
  v20 = v4;
  v14 = v5;
  do
  {
    if (*v9 == 1)
    {
      v21 = v19;
      goto LABEL_10;
    }

    if (!*v9)
    {
      v21 = &v9[4 * v15 + 2];
LABEL_10:
      v22 = *(v21 + 8);
      v23 = *(v21 + 12);
      goto LABEL_12;
    }

    v22 = 0.0;
    v23 = 0.0;
LABEL_12:
    v24 = FigHostTimeToNanoseconds();
    CMTimeMake(&time, v24, 1000000000);
    v25 = CMTimeGetSeconds(&time);
    if (v25 >= v17 && v25 < v18)
    {
      v14 = v14 + v22;
      v20 = v20 + v23;
    }

    v16 += v25 >= v17 && v25 < v18;
    ++v15;
    v19 += 6;
  }

  while (v15 < v9[1]);
  if (v16)
  {
    v14 = v14 / ((v16 * v27) * 256.0);
  }

  return v5 + v14;
}

void *BWCreateDNGDictionaryForZoom(void *a1, double a2, double a3, double a4, double a5)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a1)
  {
    goto LABEL_14;
  }

  a1 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:a1];
  [a1 setObject:0 forKeyedSubscript:*MEMORY[0x1E696D768]];
  [a1 setObject:0 forKeyedSubscript:*MEMORY[0x1E696D7F8]];
  [a1 setObject:0 forKeyedSubscript:*MEMORY[0x1E696D800]];
  if ([a1 objectForKeyedSubscript:*MEMORY[0x1E696D810]])
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v28 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v28, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Utilities/BWStillImageMetadataUtilities.m", 2026, @"LastShownDate:BWStillImageMetadataUtilities.m:2026", @"LastShownBuild:BWStillImageMetadataUtilities.m:2026", 0);
    free(v28);
LABEL_14:

    return 0;
  }

  v12 = [a1 objectForKeyedSubscript:@"ProfileGainTableMap"];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 objectForKeyedSubscript:@"MapPointsH"];
    v15 = [v13 objectForKeyedSubscript:@"MapPointsV"];
    v16 = [v13 objectForKeyedSubscript:@"MapPointsN"];
    v17 = [v13 objectForKeyedSubscript:@"MapSpacingH"];
    v18 = [v13 objectForKeyedSubscript:@"MapSpacingV"];
    v19 = [v13 objectForKeyedSubscript:@"MapOriginH"];
    v20 = [v13 objectForKeyedSubscript:@"MapOriginV"];
    if (!v15 || !v14 || !v16)
    {
      BWCreateDNGDictionaryForZoom_cold_3();
      goto LABEL_14;
    }

    if (!v17 || !v18 || !v19 || (v21 = v20) == 0)
    {
      BWCreateDNGDictionaryForZoom_cold_2();
      goto LABEL_14;
    }

    [v19 floatValue];
    v23 = a2 - v22;
    [v17 floatValue];
    if (floor(v23 / v24) <= 0.0)
    {
      v94 = 0;
    }

    else
    {
      [v19 floatValue];
      v26 = a2 - v25;
      [v17 floatValue];
      v94 = vcvtmd_u64_f64(v26 / v27);
    }

    [v19 floatValue];
    v30 = a2 + a4 - v29;
    [v17 floatValue];
    v88 = a2;
    if (ceil(v30 / v31) >= ([v14 intValue] - 1))
    {
      v35 = ([v14 intValue] - 1);
    }

    else
    {
      [v19 floatValue];
      v33 = a2 + a4 - v32;
      [v17 floatValue];
      v35 = ceil(v33 / v34);
    }

    v92 = v35;
    [v19 floatValue];
    v37 = v36;
    [v17 floatValue];
    v39 = v38;
    [v21 floatValue];
    v41 = a3 - v40;
    [v18 floatValue];
    v90 = v37;
    if (floor(v41 / v42) <= 0.0)
    {
      v46 = 0;
    }

    else
    {
      [v21 floatValue];
      v44 = a3 - v43;
      [v18 floatValue];
      v46 = vcvtmd_u64_f64(v44 / v45);
    }

    v47 = a3 + a5;
    [v21 floatValue];
    v49 = a3 + a5 - v48;
    [v18 floatValue];
    v96 = a3;
    v51 = a5;
    if (ceil(v49 / v50) >= ([v15 intValue] - 1))
    {
      v55 = ([v15 intValue] - 1);
    }

    else
    {
      [v21 floatValue];
      v53 = v47 - v52;
      [v18 floatValue];
      v55 = ceil(v53 / v54);
    }

    v56 = v15;
    [v21 floatValue];
    v58 = v57;
    [v18 floatValue];
    v60 = v59;
    [v17 floatValue];
    v62 = v61;
    [v18 floatValue];
    v64 = v63;
    v65 = 4 * [v16 intValue];
    v95 = v13;
    v66 = [v13 objectForKeyedSubscript:@"GainValues"];
    v67 = [v56 intValue] * v65;
    v68 = v67 * [v14 intValue];
    if ([v66 length] < v68)
    {
      BWCreateDNGDictionaryForZoom_cold_1();
      goto LABEL_14;
    }

    v69 = 1.0 / a4;
    v70 = v92 - v94 + 1;
    v71 = 1.0 / v51;
    v72 = ((v90 + (v94 * v39)) - v88) * v69;
    v93 = v72;
    v73 = v55;
    v74 = ((v58 + (v46 * v60)) - v96) * v71;
    v75 = v62 * v69;
    v76 = v64 * v71;
    v91 = v70;
    v77 = v65 * v70;
    v89 = v73 - v46 + 1;
    v97 = [MEMORY[0x1E695DF88] dataWithLength:v77 * v89];
    v78 = [v97 mutableBytes];
    if (v73 >= v46)
    {
      v79 = v78;
      v80 = v46;
      v81 = v73 + 1;
      do
      {
        memcpy(v79, ([v66 bytes] + (v94 + v80 * objc_msgSend(v14, "intValue")) * v65), v77);
        v79 += v77;
        ++v80;
      }

      while (v81 != v80);
    }

    v82 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v95];
    [v82 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v89), @"MapPointsV"}];
    [v82 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v91), @"MapPointsH"}];
    *&v83 = v76;
    [v82 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v83), @"MapSpacingV"}];
    *&v84 = v75;
    [v82 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v84), @"MapSpacingH"}];
    *&v85 = v74;
    [v82 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v85), @"MapOriginV"}];
    *&v86 = v93;
    [v82 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v86), @"MapOriginH"}];
    [v82 setObject:v97 forKeyedSubscript:@"GainValues"];
    [a1 setObject:v82 forKeyedSubscript:@"ProfileGainTableMap"];
  }

  return a1;
}

uint64_t BWSetRawDenormalizedActiveRectToDNGDictionary(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a1)
  {
    return BWSetRawDenormalizedActiveRectToDNGDictionary_cold_1();
  }

  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  if (CGRectIsNull(v20))
  {
    v11 = *MEMORY[0x1E696D768];

    return [a1 setObject:0 forKeyedSubscript:v11];
  }

  else
  {
    LODWORD(v10) = llround(a3);
    v13 = [MEMORY[0x1E696AD98] numberWithInt:v10];
    LODWORD(v14) = llround(a2);
    v18[1] = [MEMORY[0x1E696AD98] numberWithInt:{v14, v13}];
    LODWORD(v15) = llround(a3 + a5);
    v18[2] = [MEMORY[0x1E696AD98] numberWithInt:v15];
    LODWORD(v16) = llround(a2 + a4);
    v18[3] = [MEMORY[0x1E696AD98] numberWithInt:v16];
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];
    return [a1 setObject:v17 forKeyedSubscript:*MEMORY[0x1E696D768]];
  }
}

uint64_t __simu_createDNGDictionary_block_invoke()
{
  result = MGCopyAnswer();
  _MergedGlobals_3 = result;
  return result;
}

uint64_t BWStillImageProcessingCoordinatorCreate(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [a2 deferredPhotoProcessorEnabled];
  if ([a2 deferredPhotoProcessorEnabled])
  {
    v9 = 0;
  }

  else
  {
    v9 = [a2 deferredCaptureSupportEnabled] ^ 1;
  }

  v10 = [objc_msgSend(objc_msgSend(a1 "captureSettings")];
  v11 = [objc_msgSend(a1 "captureSettings")];
  if ((v10 & 0x4000000000) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = v8;
  }

  if (v11 == 12)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_msgSend(a1 "captureSettings")] == 13;
  if ((v13 & 1) == 0 && (v14 & (v8 | v9)) == 0)
  {
    return 0;
  }

  v16 = [EGStillImageFusionGraph alloc];

  return [(EGStillImageFusionGraph *)v16 initWithStillImageSettings:a1 nodeConfiguration:a2 resourceCoordinator:a3 delegate:a4];
}

uint64_t fcdpe_demosaicedRawEnabled(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v1 = [objc_msgSend(a1 "photoManifest")];
  result = [v1 countByEnumeratingWithState:&v7 objects:v6 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        if (([*(*(&v7 + 1) + 8 * v5) processingFlags] & 0x10000) != 0)
        {
          return 1;
        }

        ++v5;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v7 objects:v6 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

unint64_t cdpe_resolvedSourceNodeOutputDimensionsForSettingsAndSourceNodePixelBufferAttributes(void *a1, void *a2)
{
  if (!a1)
  {
    cdpe_resolvedSourceNodeOutputDimensionsForSettingsAndSourceNodePixelBufferAttributes_cold_2();
    return 0;
  }

  if (!a2)
  {
    cdpe_resolvedSourceNodeOutputDimensionsForSettingsAndSourceNodePixelBufferAttributes_cold_1();
    return 0;
  }

  v4 = [objc_msgSend(a2 objectForKeyedSubscript:{*MEMORY[0x1E6966208]), "unsignedLongValue"}];
  v5 = [objc_msgSend(a2 objectForKeyedSubscript:{*MEMORY[0x1E69660B8]), "unsignedLongValue"}];
  if (![a1 aspectRatio])
  {
    return v4 | (v5 << 32);
  }

  return [a1 outputDimensions];
}

uint64_t __fcdpe_resolveFormatsAndUpdateSettings_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = *(a1 + 32);

  return [v3 isEqualToString:v4];
}

uint64_t __fcdpe_resolveFormatsAndUpdateSettings_block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = *(a1 + 32);

  return [v3 isEqualToString:v4];
}

uint64_t __fcdpe_resolveFormatsAndUpdateSettings_block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = *(a1 + 32);

  return [v3 isEqualToString:v4];
}

uint64_t ReportMemoryException()
{
  host_info_outCnt = 0;
  v45 = 0;
  v43 = 0u;
  memset(v44, 0, sizeof(v44));
  *host_info_out = 0u;
  LOBYTE(task_info_out[0]) = 0;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v41 = 0;
  *task_info_out = 0u;
  v40 = 0u;
  task_info_outCnt = 10;
  *v36 = 0;
  v37 = 0;
  v35 = 4;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *v11 = 0u;
  v10 = 93;
  v1 = MEMORY[0x1E69E9A60];
  task_info(*MEMORY[0x1E69E9A60], 0x12u, task_info_out, &task_info_outCnt);
  v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  task_info(*v1, 3u, v36, &v35);
  v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (!task_info(*v1, 0x16u, v11, &v10))
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  v6 = fig_log_call_emit_and_clean_up_after_send_and_compose();
  v7 = MEMORY[0x1B26F1E40](v6);
  host_info_outCnt = 15;
  host_page_size(v7, &v45);
  host_statistics(v7, 2, host_info_out, &host_info_outCnt);
  v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t SoundAnalysisLibraryCore()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = SoundAnalysisLibraryCore_frameworkLibrary;
  v5 = SoundAnalysisLibraryCore_frameworkLibrary;
  if (!SoundAnalysisLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_1E7991E18;
    v7 = *off_1E7991E28;
    v8 = 0;
    v3[3] = _sl_dlopen();
    SoundAnalysisLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1ACA85FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SoundAnalysisLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  SoundAnalysisLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SoundAnalysisLibrary()
{
  v1 = 0;
  result = SoundAnalysisLibraryCore();
  if (!result)
  {
    SoundAnalysisLibrary_cold_1(&v1);
  }

  return result;
}

uint64_t getSNMovieRemixClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__18;
  v0 = getSNMovieRemixClass_softClass;
  v7 = __Block_byref_object_dispose__18;
  v8 = getSNMovieRemixClass_softClass;
  if (!getSNMovieRemixClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getSNMovieRemixClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getSNMovieRemixClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACA8616C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSNMovieRemixClass_block_invoke(uint64_t a1)
{
  SoundAnalysisLibrary();
  result = objc_getClass("SNMovieRemix");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getSNMovieRemixClass_block_invoke_cold_1();
  }

  getSNMovieRemixClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getSNMovieRemixRequestClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__18;
  v0 = getSNMovieRemixRequestClass_softClass;
  v7 = __Block_byref_object_dispose__18;
  v8 = getSNMovieRemixRequestClass_softClass;
  if (!getSNMovieRemixRequestClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getSNMovieRemixRequestClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getSNMovieRemixRequestClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACA862B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSNMovieRemixRequestClass_block_invoke(uint64_t a1)
{
  SoundAnalysisLibrary();
  result = objc_getClass("SNMovieRemixRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getSNMovieRemixRequestClass_block_invoke_cold_1();
  }

  getSNMovieRemixRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

double FigCaptureMakeCenteredRectWithDimensionsInsideDimensions(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = HIDWORD(a2);
  FigCaptureMetadataUtilitiesRoundRectToMultipleOf();
  v10 = 0;
  v11 = 0;

  v8 = v2;
  v9 = v3;
  *&result = CGRectIntersection(*&v4, *&v10);
  return result;
}

double FigCaptureUpdateRectSizeAndMaintainCenter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  MidX = CGRectGetMidX(*&a1);
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetMidY(v12);
  return MidX - a5 * 0.5;
}

uint64_t FigCaptureRotationDegreesFromOrientation(int a1, int a2, int a3, int a4)
{
  v8 = FigCaptureCameraRequires180DegreesRotation(a2, a3);
  if (FigCapturePlatformMountsCamerasInLandscapeOrientation(a2, a3))
  {
    v9 = 0;
    if (a1 <= 2)
    {
      if (a1 != 1)
      {
        v10 = 0;
        if (a1 != 2)
        {
          goto LABEL_23;
        }

        v11 = ((a3 | a2 & ~v8) & 1) == 0;
        goto LABEL_10;
      }

      v11 = ((a3 | a2 & ~v8) & 1) == 0;
LABEL_19:
      v9 = 90;
      v12 = 270;
LABEL_20:
      if (!v11)
      {
        v9 = v12;
      }

      goto LABEL_22;
    }

    if (a1 != 4)
    {
      v10 = 0;
      if (a1 != 3)
      {
        goto LABEL_23;
      }

      if (v8)
      {
        goto LABEL_14;
      }

LABEL_17:
      v9 = 0;
      v10 = 0;
      goto LABEL_23;
    }

    if (v8)
    {
      goto LABEL_17;
    }
  }

  else if (a1 != 2)
  {
    if (a1 == 4)
    {
      v11 = a2 == 0;
      goto LABEL_19;
    }

    if (a1 == 3)
    {
      v11 = a2 == 0;
LABEL_10:
      v9 = 270;
      v12 = 90;
      goto LABEL_20;
    }

    goto LABEL_17;
  }

LABEL_14:
  v9 = 180;
LABEL_22:
  v10 = 360;
LABEL_23:
  v13 = v10 - v9;
  if (a4)
  {
    return v13;
  }

  else
  {
    return v9;
  }
}

uint64_t FigCaptureOrientationFromRotationDegrees(int a1, int a2, int a3, int a4)
{
  v8 = FigCaptureCameraRequires180DegreesRotation(a2, a3);
  if (a4)
  {
    if (a1 % 360 <= 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = 360;
    }

    a1 = v9 - a1 % 360;
  }

  if (FigCapturePlatformMountsCamerasInLandscapeOrientation(a2, a3))
  {
    if (v8)
    {
      v10 = 3;
    }

    else
    {
      v10 = 4;
    }

    if ((a3 | (a2 & ~v8)))
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (a1 != 270)
    {
      v11 = 0;
    }

    if (a1 != 180)
    {
      v10 = v11;
    }

    if (v8)
    {
      v12 = 4;
    }

    else
    {
      v12 = 3;
    }

    if ((a3 | (a2 & ~v8)))
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    if (a1 != 90)
    {
      v13 = 0;
    }

    if (a1)
    {
      v12 = v13;
    }

    if (a1 <= 179)
    {
      return v12;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    if (a2)
    {
      v15 = 4;
    }

    else
    {
      v15 = 3;
    }

    if (a1 != 270)
    {
      v15 = 0;
    }

    if (a1 == 180)
    {
      v16 = 2;
    }

    else
    {
      v16 = v15;
    }

    if (a2)
    {
      v17 = 3;
    }

    else
    {
      v17 = 4;
    }

    if (a1 != 90)
    {
      v17 = 0;
    }

    if (!a1)
    {
      v17 = 1;
    }

    if (a1 <= 179)
    {
      return v17;
    }

    else
    {
      return v16;
    }
  }
}

CGAffineTransform *FigCaptureExifOrientationGetAffineTransform@<X0>(CGAffineTransform *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result - 9) > 0xFFFFFFF8)
  {
    v7 = a2;
    v8 = HIDWORD(a2);
    v25 = 0;
    v9 = FigCaptureRotationDegreesAndMirroringFromExifOrientation(result, &v25);
    v10 = MEMORY[0x1E695EFD0];
    v20 = *(MEMORY[0x1E695EFD0] + 16);
    v21 = *MEMORY[0x1E695EFD0];
    *a3 = *MEMORY[0x1E695EFD0];
    *(a3 + 16) = v20;
    v19 = *(v10 + 32);
    *(a3 + 32) = v19;
    CGAffineTransformMakeTranslation(&t2, -(v7 * 0.5), -(v8 * 0.5));
    *&t1.a = v21;
    *&t1.c = v20;
    *&t1.tx = v19;
    CGAffineTransformConcat(a3, &t1, &t2);
    if (v25)
    {
      CGAffineTransformMakeScale(&t1, -1.0, 1.0);
      v11 = *(a3 + 16);
      *&v22.a = *a3;
      *&v22.c = v11;
      *&v22.tx = *(a3 + 32);
      CGAffineTransformConcat(&t2, &v22, &t1);
      v12 = *&t2.c;
      *a3 = *&t2.a;
      *(a3 + 16) = v12;
      *(a3 + 32) = *&t2.tx;
    }

    v13 = vcvtd_n_f64_s32(v7, 1uLL);
    v14 = vcvtd_n_f64_s32(v8, 1uLL);
    if (v9)
    {
      CGAffineTransformMakeRotation(&t1, v9 * 0.0174532925);
      v15 = *(a3 + 16);
      *&v22.a = *a3;
      *&v22.c = v15;
      *&v22.tx = *(a3 + 32);
      CGAffineTransformConcat(&t2, &v22, &t1);
      v16 = *&t2.c;
      *a3 = *&t2.a;
      *(a3 + 16) = v16;
      *(a3 + 32) = *&t2.tx;
    }

    CGAffineTransformMakeTranslation(&t1, v13, v14);
    v17 = *(a3 + 16);
    *&v22.a = *a3;
    *&v22.c = v17;
    *&v22.tx = *(a3 + 32);
    result = CGAffineTransformConcat(&t2, &v22, &t1);
    v18 = *&t2.c;
    *a3 = *&t2.a;
    *(a3 + 16) = v18;
    v6 = *&t2.tx;
  }

  else
  {
    v4 = MEMORY[0x1E695EFD0];
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    *a3 = *MEMORY[0x1E695EFD0];
    *(a3 + 16) = v5;
    v6 = *(v4 + 32);
  }

  *(a3 + 32) = v6;
  return result;
}

CGFloat FigCaptureComputeAffineTransformFromSourceAndDestRects@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, CGFloat a6@<D4>, CGFloat a7@<D5>, CGFloat a8@<D6>, CGFloat a9@<D7>)
{
  v23 = a8 / a4;
  v24 = a9 / a5;
  v22 = a8 * CGRectGetMidX(*&a2) / a4;
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  v18 = a9 * CGRectGetMidY(v25) / a5;
  v26.origin.x = a6;
  v26.origin.y = a7;
  v26.size.width = a8;
  v26.size.height = a9;
  v19 = CGRectGetMidX(v26) - v22;
  v27.origin.x = a6;
  v27.origin.y = a7;
  v27.size.width = a8;
  v27.size.height = a9;
  MidY = CGRectGetMidY(v27);
  *a1 = v23;
  result = MidY - v18;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v24;
  *(a1 + 32) = v19;
  *(a1 + 40) = result;
  return result;
}

double FigCaptureAspectRatioForDimensions(unint64_t a1)
{
  result = 0.0;
  if (HIDWORD(a1))
  {
    return a1 / SHIDWORD(a1);
  }

  return result;
}

BOOL FigCaptureOrientationIsEqualForDimensions(unint64_t a1, unint64_t a2)
{
  if (a1 == HIDWORD(a1) && a2 == HIDWORD(a2))
  {
    return 1;
  }

  v2 = 0;
  if (a1 != HIDWORD(a1) && a2 != HIDWORD(a2))
  {
    v3 = 0.0;
    v4 = 0.0;
    if (HIDWORD(a1))
    {
      v4 = a1 / SHIDWORD(a1);
    }

    if (HIDWORD(a2))
    {
      v3 = a2 / SHIDWORD(a2);
      if (v4 > 1.0 && v3 > 1.0)
      {
        return 1;
      }
    }

    return v3 < 1.0 && v4 < 1.0;
  }

  return v2;
}

uint64_t FigCaptureSquareDimensionsUsingLongerDimension(uint64_t a1)
{
  if (a1 <= SHIDWORD(a1))
  {
    v1 = HIDWORD(a1);
  }

  else
  {
    v1 = a1;
  }

  return v1 | (v1 << 32);
}

uint64_t FigCaptureScaledDimensions(unint64_t a1, float a2)
{
  v3 = HIDWORD(a1);
  LODWORD(v2) = llroundf(a1 * a2);
  LODWORD(v3) = llroundf(SHIDWORD(a1) * a2);
  return v2 | (v3 << 32);
}

uint64_t FigCaptureContainsAffineTransformDictionaryRepresentation(void *a1)
{
  if ([a1 count] != 6)
  {
    return 0;
  }

  result = [a1 objectForKeyedSubscript:@"a"];
  if (result)
  {
    result = [a1 objectForKeyedSubscript:@"b"];
    if (result)
    {
      result = [a1 objectForKeyedSubscript:@"c"];
      if (result)
      {
        result = [a1 objectForKeyedSubscript:@"d"];
        if (result)
        {
          result = [a1 objectForKeyedSubscript:@"tx"];
          if (result)
          {
            return [a1 objectForKeyedSubscript:@"ty"] != 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t FigCaptureDictionaryRepresentationForAffineTransform(double *a1)
{
  v4[0] = [MEMORY[0x1E696AD98] numberWithDouble:{*a1, @"a"}];
  v3[1] = @"b";
  v4[1] = [MEMORY[0x1E696AD98] numberWithDouble:a1[1]];
  v3[2] = @"c";
  v4[2] = [MEMORY[0x1E696AD98] numberWithDouble:a1[2]];
  v3[3] = @"d";
  v4[3] = [MEMORY[0x1E696AD98] numberWithDouble:a1[3]];
  v3[4] = @"tx";
  v4[4] = [MEMORY[0x1E696AD98] numberWithDouble:a1[4]];
  v3[5] = @"ty";
  v4[5] = [MEMORY[0x1E696AD98] numberWithDouble:a1[5]];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
}

BOOL FigCaptureVideoAspectRatiosAreEqual(uint64_t a1, uint64_t a2, float a3)
{
  if (SHIDWORD(a1) >= 1 && SHIDWORD(a2) >= 1)
  {
    return vabds_f32(a1 / HIDWORD(a1), a2 / HIDWORD(a2)) <= a3;
  }

  return SHIDWORD(a1) < 1 && SHIDWORD(a2) < 1;
}

uint64_t FigCaptureGetAspectRatioFractionalDimensionsForAspectRatio(int a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_1AD0552A8[a1 - 1];
  }
}

uint64_t FigCaptureGetAspectRatioFromFractionalAspectRatio(double a1)
{
  if (fabs(a1 + -1.33333337) < 0.00100000005)
  {
    return 1;
  }

  if (fabs(a1 + -0.75) < 0.00100000005)
  {
    return 2;
  }

  if (fabs(a1 + -1.77777779) < 0.00100000005)
  {
    return 3;
  }

  if (fabs(a1 + -0.5625) < 0.00100000005)
  {
    return 4;
  }

  if (fabs(a1 + -1.0) >= 0.00100000005)
  {
    return 0;
  }

  return 5;
}

BOOL FigCaptureIsUnityRect(double a1, double a2, double a3, double a4)
{
  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  v5.size.width = 1.0;
  v5.size.height = 1.0;
  return CGRectEqualToRect(*&a1, v5);
}

BOOL FigCaptureRectIsFullBufferRectForPixelBuffer(__CVBuffer *a1, double a2, double a3, double a4, double a5)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v14 = 0;
  v15 = 0;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;

  v13 = Height;
  v12 = Width;
  return CGRectEqualToRect(*&v16, *&v14);
}

double FigCaptureRectMidPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

double FigCaptureNormalizedRectCenterOffset(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (CGRectIsEmpty(*&a1))
  {
    return *MEMORY[0x1E695EFF8];
  }

  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  v8 = CGRectGetMidX(v10) + -0.5;
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMidY(v11);
  return v8;
}

CGFloat FigCaptureGetTransformFromCurrentSpaceRectToTargetSpaceRect@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, CGFloat a6@<D4>, CGFloat a7@<D5>, CGFloat a8@<D6>, CGFloat a9@<D7>)
{
  v17 = MEMORY[0x1E695EFD0];
  v31 = *(MEMORY[0x1E695EFD0] + 16);
  v32 = *MEMORY[0x1E695EFD0];
  *a1 = *MEMORY[0x1E695EFD0];
  *(a1 + 16) = v31;
  v30 = *(v17 + 32);
  *(a1 + 32) = v30;
  v18 = -CGRectGetMidX(*&a2);
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  MidY = CGRectGetMidY(v37);
  CGAffineTransformMakeTranslation(&t2, v18, -MidY);
  *&t1.a = v32;
  *&t1.c = v31;
  *&t1.tx = v30;
  CGAffineTransformConcat(a1, &t1, &t2);
  CGAffineTransformMakeScale(&t1, a4 / a8, a5 / a9);
  v20 = *(a1 + 16);
  *&v34.a = *a1;
  *&v34.c = v20;
  *&v34.tx = *(a1 + 32);
  CGAffineTransformConcat(&t2, &v34, &t1);
  v21 = *&t2.c;
  *a1 = *&t2.a;
  *(a1 + 16) = v21;
  *(a1 + 32) = *&t2.tx;
  v22 = a6;
  *&v21 = a7;
  v23 = a8;
  v24 = a9;
  MidX = CGRectGetMidX(*(&v21 - 8));
  v38.origin.x = a6;
  v38.origin.y = a7;
  v38.size.width = a8;
  v38.size.height = a9;
  v26 = CGRectGetMidY(v38);
  CGAffineTransformMakeTranslation(&t1, MidX, v26);
  v27 = *(a1 + 16);
  *&v34.a = *a1;
  *&v34.c = v27;
  *&v34.tx = *(a1 + 32);
  CGAffineTransformConcat(&t2, &v34, &t1);
  v28 = *&t2.c;
  *a1 = *&t2.a;
  *(a1 + 16) = v28;
  result = t2.tx;
  *(a1 + 32) = *&t2.tx;
  return result;
}

CGAffineTransform *FigCaptureGetTransformForMirroringRotationAndCrop@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>)
{
  v16 = MEMORY[0x1E695EFD0];
  v33 = *(MEMORY[0x1E695EFD0] + 16);
  v34 = *MEMORY[0x1E695EFD0];
  *a4 = *MEMORY[0x1E695EFD0];
  *(a4 + 16) = v33;
  v32 = *(v16 + 32);
  *(a4 + 32) = v32;
  CGAffineTransformMakeTranslation(&t2, -0.5, -0.5);
  *&t1.a = v34;
  *&t1.c = v33;
  *&t1.tx = v32;
  CGAffineTransformConcat(a4, &t1, &t2);
  if (a1)
  {
    v17 = -1.0;
    v18 = 1.0;
  }

  else
  {
    if (!a2)
    {
      goto LABEL_6;
    }

    v17 = 1.0;
    v18 = -1.0;
  }

  CGAffineTransformMakeScale(&t1, v17, v18);
  v19 = *(a4 + 16);
  *&v36.a = *a4;
  *&v36.c = v19;
  *&v36.tx = *(a4 + 32);
  CGAffineTransformConcat(&t2, &v36, &t1);
  v20 = *&t2.c;
  *a4 = *&t2.a;
  *(a4 + 16) = v20;
  *(a4 + 32) = *&t2.tx;
LABEL_6:
  if (a3)
  {
    v21 = -a3 * 3.14159265 / 180.0;
    CGAffineTransformMakeRotation(&t1, v21);
    v22 = *(a4 + 16);
    *&v36.a = *a4;
    *&v36.c = v22;
    *&v36.tx = *(a4 + 32);
    CGAffineTransformConcat(&t2, &v36, &t1);
    v23 = *&t2.c;
    *a4 = *&t2.a;
    *(a4 + 16) = v23;
    *(a4 + 32) = *&t2.tx;
  }

  CGAffineTransformMakeTranslation(&t1, 0.5, 0.5);
  v24 = *(a4 + 16);
  *&v36.a = *a4;
  *&v36.c = v24;
  *&v36.tx = *(a4 + 32);
  CGAffineTransformConcat(&t2, &v36, &t1);
  v25 = *&t2.c;
  *a4 = *&t2.a;
  *(a4 + 16) = v25;
  *(a4 + 32) = *&t2.tx;
  v26 = a5;
  *&v25 = a6;
  v27 = a7;
  v28 = a8;
  result = CGRectIsNull(*(&v25 - 8));
  if ((result & 1) == 0)
  {
    v40.origin.x = 0.0;
    v40.origin.y = 0.0;
    v40.size.width = 1.0;
    v40.size.height = 1.0;
    v39.origin.x = a5;
    v39.origin.y = a6;
    v39.size.width = a7;
    v39.size.height = a8;
    result = CGRectEqualToRect(v39, v40);
    if ((result & 1) == 0)
    {
      memset(&t2, 0, sizeof(t2));
      FigCaptureGetTransformFromCurrentSpaceRectToTargetSpaceRect(&t2, 0.0, 0.0, 1.0, 1.0, a5, a6, a7, a8);
      v30 = *(a4 + 16);
      *&v36.a = *a4;
      *&v36.c = v30;
      *&v36.tx = *(a4 + 32);
      v35 = t2;
      result = CGAffineTransformConcat(&t1, &v36, &v35);
      v31 = *&t1.c;
      *a4 = *&t1.a;
      *(a4 + 16) = v31;
      *(a4 + 32) = *&t1.tx;
    }
  }

  return result;
}

uint64_t FigCaptureOptimalVideoPreviewDimensionsForSourceDimensions(unint64_t a1, int a2, int a3)
{
  v4 = a1;
  v5 = HIDWORD(a1);
  v6 = FigCaptureMainScreenDimensions(a2);
  if (a3)
  {
    v7 = BWAspectRatioValueFromAspectRatio(a3);
  }

  else
  {
    v7 = v4 / v5;
  }

  FigCaptureMakeRectWithAspectRatioInsideDimensions(v6, 1, v7);
  v10 = v4;
  v11 = v8 > v4;
  v12 = v5;
  if (v9 > v5)
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = v9;
    v10 = v8;
  }

  v13 = v10;
  v14 = v12;
  if (v13 == 2048 && v14 == 1528)
  {
    v15 = 0x60000000000;
    v13 = 2048;
  }

  else if (v13 == 856 && v14 == 640)
  {
    v15 = 0x28000000000;
    v13 = 852;
  }

  else if (v13 == 998 && v14 == 750)
  {
    v15 = 0x2EE00000000;
    v13 = 1000;
  }

  else
  {
    v16 = v14 == 1080 && v13 == 1436;
    v15 = v14 << 32;
    if (v16)
    {
      v13 = 1440;
    }
  }

  return v13 | v15;
}

uint64_t FigSampleBufferProcessorCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(FigBaseObject, a2, 0, a3);
}

uint64_t acn_sampleBufferProcessorOutputCallback(void *a1, int a2, uint64_t a3)
{
  v5 = [a1 output];
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  return [v5 emitSampleBuffer:v6];
}

void sub_1ACA88BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t targetRectForSampleBuffer(const void *a1)
{
  v2 = *(MEMORY[0x1E695F058] + 16);
  v6.origin = *MEMORY[0x1E695F058];
  v6.size = v2;
  v3 = CMGetAttachment(a1, @"BWInferenceAttachmentKey_FusionTrackerTargetRect", 0);
  if (v3)
  {
    return CGRectMakeWithDictionaryRepresentation(v3, &v6);
  }

  v5 = CMGetAttachment(a1, @"FusionTrackerInput", 0);
  if (v5)
  {
    v5 = [v5 highPriorityTrackerState];
  }

  return [v5 targetRect];
}

__CFString *preventionReasonWithSampleBuffer(const void *a1, uint64_t a2)
{
  v3 = CMGetAttachment(a1, @"FusionTrackerInput", 0);
  if (!v3)
  {
    return @"MissingFusionTrackerState";
  }

  v4 = [v3 highPriorityTrackerState];
  if (!v4)
  {
    return @"MissingFusionTrackerState";
  }

  v5 = [v4 op];
  if (a2 == 1)
  {
    v6 = v5 == 3;
  }

  else
  {
    v6 = v5 == a2;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return @"FusionTrackerNoOp";
  }
}

Class __getMPSImageStatisticsMeanClass_block_invoke(uint64_t a1)
{
  v3[0] = 0;
  if (!MetalPerformanceShadersLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MetalPerformanceShadersLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7991ED8;
    v5 = 0;
    MetalPerformanceShadersLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MetalPerformanceShadersLibraryCore_frameworkLibrary)
  {
    __getMPSImageStatisticsMeanClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("MPSImageStatisticsMean");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getMPSImageStatisticsMeanClass_block_invoke_cold_1();
  }

  getMPSImageStatisticsMeanClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __MetalPerformanceShadersLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MetalPerformanceShadersLibraryCore_frameworkLibrary = result;
  return result;
}

void fvcs_handleStillImageCaptureFailureNotification(int a1, uint64_t a2, CFTypeRef cf, int a4, CFTypeRef a5)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a5)
  {
    CFRetain(a5);
  }

  v8 = *(a2 + 688);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __fvcs_handleStillImageCaptureFailureNotification_block_invoke;
  block[3] = &unk_1E7991EF8;
  block[4] = a2;
  block[5] = a5;
  block[6] = cf;
  dispatch_async(v8, block);
}

void __fvcs_handleStillImageCaptureFailureNotification_block_invoke(uint64_t *a1)
{
  os_unfair_lock_lock((a1[4] + 504));
  v2 = a1[4];
  if (*(v2 + 616))
  {
    [*(v2 + 512) settingsID];
    os_unfair_lock_unlock((a1[4] + 504));
    v6 = a1[5];
    if (v6)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"with payload %@", objc_msgSend(v6, "description")];
    }

    v13 = 0;
    v12 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [*(a1[4] + 496) captureStream:a1[4] stillImageCaptureError:4294950494];
    v8 = a1[4];
    v9 = *(v8 + 192);
    v10 = *MEMORY[0x1E6960C70];
    v11 = *(MEMORY[0x1E6960C70] + 16);
    [v9 captureStream:v8 didCompleteStillImageCaptureWithPTS:&v10 error:4294950494];
    [(BWFigVideoCaptureStream *)a1[4] _resetStillImageCaptureState];
  }

  else
  {
    os_unfair_lock_unlock((v2 + 504));
    v13 = 0;
    v12 = 0;
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }
}

void TimestampedAudioBufferListDispose(const __CFAllocator **ptr)
{
  if (ptr)
  {
    v2 = *ptr;
    v3 = ptr[6];
    if (v3)
    {
      v4 = *v3;
      if (v4)
      {
        v5 = 0;
        v6 = 16;
        do
        {
          if (*(v3 + v6))
          {
            CFAllocatorDeallocate(v2, *(v3 + v6));
            v3 = ptr[6];
            v4 = *v3;
          }

          ++v5;
          v6 += 16;
        }

        while (v5 < v4);
      }

      CFAllocatorDeallocate(v2, v3);
    }

    CFAllocatorDeallocate(v2, ptr);
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

uint64_t TimestampedAudioBufferListNew(const void *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v8 = MEMORY[0x1B26EDEF0](a1, 72, 0x1060040B97D584ELL, 0);
  v9 = v8;
  if (v8)
  {
    *(v8 + 64) = 0;
    *(v8 + 32) = 0u;
    *(v8 + 48) = 0u;
    *v8 = 0u;
    *(v8 + 16) = 0u;
    v10 = a1 ? CFRetain(a1) : 0;
    *v9 = v10;
    *(v9 + 16) = a4;
    if (a2)
    {
      v11 = MEMORY[0x1B26EDEF0](a1, (16 * a2) | 8, 0x10800404ACF7207, 0);
      *(v9 + 48) = v11;
      if (v11)
      {
        bzero(v11, (16 * a2) | 8);
        v12 = 0;
        v13 = *(v9 + 48);
        *v13 = a2;
        v14 = 16 * a2;
        while (1)
        {
          v15 = &v13[v12 / 4];
          v15[2] = a3;
          v15[3] = a4;
          v16 = MEMORY[0x1B26EDEF0](a1, a4, 1420686264, 0);
          v13 = *(v9 + 48);
          *&v13[v12 / 4 + 4] = v16;
          if (!v16)
          {
            break;
          }

          v12 += 16;
          if (v14 == v12)
          {
            return v9;
          }
        }
      }

      TimestampedAudioBufferListDispose(v9);
      return 0;
    }
  }

  return v9;
}

uint64_t TimestampedAudioBufferListReset(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 48);
    if (v1)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = *(result + 16);
        v4 = (v2 + 3) & 0x1FFFFFFFCLL;
        v5 = vdupq_n_s64(v2 - 1);
        v6 = xmmword_1AD055320;
        v7 = xmmword_1AD046360;
        v8 = v1 + 11;
        v9 = vdupq_n_s64(4uLL);
        do
        {
          v10 = vmovn_s64(vcgeq_u64(v5, v7));
          if (vuzp1_s16(v10, *v5.i8).u8[0])
          {
            *(v8 - 8) = v3;
          }

          if (vuzp1_s16(v10, *&v5).i8[2])
          {
            *(v8 - 4) = v3;
          }

          if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v6))).i32[1])
          {
            *v8 = v3;
            v8[4] = v3;
          }

          v6 = vaddq_s64(v6, v9);
          v7 = vaddq_s64(v7, v9);
          v8 += 16;
          v4 -= 4;
        }

        while (v4);
      }
    }

    *(result + 20) = 0;
    *(result + 56) = 0;
    *(result + 8) = 0;
  }

  return result;
}

void TimestampedAudioBufferListQueueReleaseAndClear(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      while (1)
      {
        v3 = CMSimpleQueueDequeue(v2);
        if (!v3)
        {
          break;
        }

        TimestampedAudioBufferListDispose(v3);
        v2 = *a1;
      }

      CFRelease(*a1);
      *a1 = 0;
    }
  }
}

opaqueCMSimpleQueue *TimestampedAudioBufferListQueueTransfer(opaqueCMSimpleQueue *result, opaqueCMSimpleQueue *a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = result;
      result = CMSimpleQueueDequeue(result);
      if (result)
      {
        v4 = result;
        v5 = vdupq_n_s64(4uLL);
        v15 = v5;
        do
        {
          v6 = *(v4 + 6);
          if (v6)
          {
            v7 = *v6;
            if (v7)
            {
              v8 = *(v4 + 4);
              v9 = (v7 + 3) & 0x1FFFFFFFCLL;
              v10 = vdupq_n_s64(v7 - 1);
              v11 = v6 + 11;
              v12 = xmmword_1AD046360;
              v13 = xmmword_1AD055320;
              do
              {
                v14 = vmovn_s64(vcgeq_u64(v10, v12));
                if (vuzp1_s16(v14, *v10.i8).u8[0])
                {
                  *(v11 - 8) = v8;
                }

                if (vuzp1_s16(v14, *&v10).i8[2])
                {
                  *(v11 - 4) = v8;
                }

                if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v13))).i32[1])
                {
                  *v11 = v8;
                  v11[4] = v8;
                }

                v13 = vaddq_s64(v13, v5);
                v12 = vaddq_s64(v12, v5);
                v11 += 16;
                v9 -= 4;
              }

              while (v9);
            }
          }

          *(v4 + 5) = 0;
          *(v4 + 14) = 0;
          *(v4 + 1) = 0;
          CMSimpleQueueEnqueue(a2, v4);
          result = CMSimpleQueueDequeue(v3);
          v5 = v15;
          v4 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

CFTypeRef FigCaptureAudioIngestSignalingInfoAtomData(unsigned int a1)
{
  *bytes = bswap32(a1);
  v4 = 0x100000002000100;
  v1 = CFDataCreate(0, bytes, 12);
  return CFAutorelease(v1);
}

void sub_1ACA91288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t bbn_StringForPTEffectReactionType(uint64_t a1)
{
  if (bbn_StringForPTEffectReactionType_onceToken != -1)
  {
    bbn_StringForPTEffectReactionType_cold_1();
  }

  v2 = bbn_StringForPTEffectReactionType_sMapReactionTypeToName;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];

  return [v2 objectForKeyedSubscript:v3];
}

id CMCaptureGestaltGetDeviceFeatures(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = 40;
  for (i = &off_1E7992090; ; i += 2)
  {
    result = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AEC0] stringWithUTF8String:{*(i - 1)), "componentsSeparatedByString:", @"-", "containsObject:", a1}];
    if (result)
    {
      break;
    }

    if (!--v10)
    {
      return result;
    }
  }

  v13 = *i;
  if (v13)
  {
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQCameraCapability", *v13) != 0), @"CMGQCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQCameraFlashCapability", v13[1]) != 0), @"CMGQCameraFlashCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQCameraFrontFlashCapability", v13[2]) != 0), @"CMGQCameraFrontFlashCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQCameraHDR2Capability", v13[3]) != 0), @"CMGQCameraHDR2Capability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQCameraLiveEffectsCapability", v13[4]) != 0), @"CMGQCameraLiveEffectsCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQCaptureSessionSupportsMultiCamCapture", v13[5]) != 0), @"CMGQCaptureSessionSupportsMultiCamCapture"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceHasAggregateCamera", v13[6]) != 0), @"CMGQDeviceHasAggregateCamera"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQB7LQTMQIRMWVL3QHSIGQY3YFAA", v13[7]) != 0), @"AVGQB7LQTMQIRMWVL3QHSIGQY3YFAA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsAutoLowLightVideo", v13[8]) != 0), @"CMGQDeviceSupportsAutoLowLightVideo"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsBravoCamera", v13[9]) != 0), @"CMGQDeviceSupportsBravoCamera"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsBravoPortrait", v13[10]) != 0), @"CMGQDeviceSupportsBravoPortrait"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsCameraCaptureOnTouchDown", v13[11]) != 0), @"CMGQDeviceSupportsCameraCaptureOnTouchDown"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsCameraDeferredProcessing", v13[12]) != 0), @"CMGQDeviceSupportsCameraDeferredProcessing"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsCinematicVideo", v13[13]) != 0), @"CMGQDeviceSupportsCinematicVideo"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQ3FYMJTRW4LUXTNAFCC6XVFTDHA", v13[14]) != 0), @"AVGQ3FYMJTRW4LUXTNAFCC6XVFTDHA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsContentAwareDistortionCorrection", v13[15]) != 0), @"CMGQDeviceSupportsContentAwareDistortionCorrection"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQ3J3FEVOOCNOKKTK3XQPUQ47DYY", v13[16]) != 0), @"AVGQ3J3FEVOOCNOKKTK3XQPUQ47DYY"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQBPMGIAYPLJA32XFRAAWDO5G4G4", v13[17]) != 0), @"AVGQBPMGIAYPLJA32XFRAAWDO5G4G4"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsDeferredPortraitRendering", v13[18]) != 0), @"CMGQDeviceSupportsDeferredPortraitRendering"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsDepthWithDeepFusion", v13[19]) != 0), @"CMGQDeviceSupportsDepthWithDeepFusion"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsExposureBiasWithoutExposureLock", v13[20]) != 0), @"CMGQDeviceSupportsExposureBiasWithoutExposureLock"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsExtendedEnhancedCinematicVideoStabilization", v13[21]) != 0), @"CMGQDeviceSupportsExtendedEnhancedCinematicVideoStabilization"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQODGWLXGASKA4RNU2OP6Z44TGZ4", v13[22]) != 0), @"AVGQODGWLXGASKA4RNU2OP6Z44TGZ4"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQN46I2BPHSDKPVN3YSGNPHPTAPE", v13[23]) != 0), @"AVGQN46I2BPHSDKPVN3YSGNPHPTAPE"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQVYXTSFZ3R7TURIB5WPPITDPJLY", v13[24]) != 0), @"AVGQVYXTSFZ3R7TURIB5WPPITDPJLY"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsFrontFacingCameraMirroredVideo", v13[25]) != 0), @"CMGQDeviceSupportsFrontFacingCameraMirroredVideo"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsFrontFacingCameraNightMode", v13[26]) != 0), @"CMGQDeviceSupportsFrontFacingCameraNightMode"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsFrontFacingCameraSmartHDR", v13[27]) != 0), @"CMGQDeviceSupportsFrontFacingCameraSmartHDR"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsFrontFacingCameraSuperWide", v13[28]) != 0), @"CMGQDeviceSupportsFrontFacingCameraSuperWide"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsFrontFacingCameraZoomToggle", v13[29]) != 0), @"CMGQDeviceSupportsFrontFacingCameraZoomToggle"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsFrontPortrait", v13[30]) != 0), @"CMGQDeviceSupportsFrontPortrait"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQ6HD7ZNZD33DG7SG4DOHIPW4SUQ", v13[31]) != 0), @"AVGQ6HD7ZNZD33DG7SG4DOHIPW4SUQ"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsHDREV0Capture", v13[32]) != 0), @"CMGQDeviceSupportsHDREV0Capture"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQLBZEVZETJU77LU4MEZH4LWJ54M", v13[33]) != 0), @"AVGQLBZEVZETJU77LU4MEZH4LWJ54M"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQCACKZRYIKJ5BE2QI3FAY65ZYJA", v13[34]) != 0), @"AVGQCACKZRYIKJ5BE2QI3FAY65ZYJA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsLinearDNG", v13[35]) != 0), @"CMGQDeviceSupportsLinearDNG"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsLivePhotoAuto", v13[36]) != 0), @"CMGQDeviceSupportsLivePhotoAuto"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsMomentCapture", v13[37]) != 0), @"CMGQDeviceSupportsMomentCapture"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsP3ColorspaceVideoRecording", v13[38]) != 0), @"CMGQDeviceSupportsP3ColorspaceVideoRecording"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsPortraitIntensityAdjustments", v13[39]) != 0), @"CMGQDeviceSupportsPortraitIntensityAdjustments"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsPortraitLightEffectFilters", v13[40]) != 0), @"CMGQDeviceSupportsPortraitLightEffectFilters"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQL72SILMBLRSKPL2V4VLPUD2TDU", v13[41]) != 0), @"AVGQL72SILMBLRSKPL2V4VLPUD2TDU"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsProResVideo", v13[42]) != 0), @"CMGQDeviceSupportsProResVideo"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsResponsiveShutter", v13[43]) != 0), @"CMGQDeviceSupportsResponsiveShutter"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQKYDMKTE2UUKHJCGGZGQNYH5GDE", v13[44]) != 0), @"AVGQKYDMKTE2UUKHJCGGZGQNYH5GDE"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQIIPQVVOWR6BFMGVVBAM7ZDTIW4", v13[45]) != 0), @"AVGQIIPQVVOWR6BFMGVVBAM7ZDTIW4"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQIDWZFGNLZOQVZINTCD5JZM57DE", v13[46]) != 0), @"AVGQIDWZFGNLZOQVZINTCD5JZM57DE"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsSemanticDevelopment", v13[47]) != 0), @"CMGQDeviceSupportsSemanticDevelopment"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsSemanticStyles", v13[48]) != 0), @"CMGQDeviceSupportsSemanticStyles"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsSingleCameraPortrait", v13[49]) != 0), @"CMGQDeviceSupportsSingleCameraPortrait"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQJQYPVTLPCNY4PHM26XACLZH4PU", v13[50]) != 0), @"AVGQJQYPVTLPCNY4PHM26XACLZH4PU"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQX3DWIDHL6QYY3OCER3G5UEM2QU", v13[51]) != 0), @"AVGQX3DWIDHL6QYY3OCER3G5UEM2QU"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsSpatialOverCapture", v13[52]) != 0), @"CMGQDeviceSupportsSpatialOverCapture"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsStageLightPortraitPreview", v13[53]) != 0), @"CMGQDeviceSupportsStageLightPortraitPreview"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsStereoAudioRecording", v13[54]) != 0), @"CMGQDeviceSupportsStereoAudioRecording"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQMZMLNHBX4MFF5QD4PJWZFEVCEI", v13[55]) != 0), @"AVGQMZMLNHBX4MFF5QD4PJWZFEVCEI"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQBWQSOG5QWWG276TG2HH4RGJZDA", v13[56]) != 0), @"AVGQBWQSOG5QWWG276TG2HH4RGJZDA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsStudioLightPortraitPreview", v13[57]) != 0), @"CMGQDeviceSupportsStudioLightPortraitPreview"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsSuperWideAutoMacro", v13[58]) != 0), @"CMGQDeviceSupportsSuperWideAutoMacro"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsTimelapseNightMode", v13[59]) != 0), @"CMGQDeviceSupportsTimelapseNightMode"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQDJVGPJA65CJA2ZPQZL4GRPYDYA", v13[60]) != 0), @"AVGQDJVGPJA65CJA2ZPQZL4GRPYDYA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsTrueVideo", v13[61]) != 0), @"CMGQDeviceSupportsTrueVideo"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsVariableFrameRateVideo", v13[62]) != 0), @"CMGQDeviceSupportsVariableFrameRateVideo"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsWideBravoCamera", v13[63]) != 0), @"CMGQDeviceSupportsWideBravoCamera"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsWideBravoPortrait", v13[64]) != 0), @"CMGQDeviceSupportsWideBravoPortrait"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsWideBravoPortraitNightMode", v13[65]) != 0), @"CMGQDeviceSupportsWideBravoPortraitNightMode"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQVNFDPYA37ZIZPRZOSYS4KMQIJ4", v13[66]) != 0), @"AVGQVNFDPYA37ZIZPRZOSYS4KMQIJ4"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDeviceSupportsZoomPictureInPicture", v13[67]) != 0), @"CMGQDeviceSupportsZoomPictureInPicture"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQFrontFacingCameraAutoHDRCapability", v13[68]) != 0), @"CMGQFrontFacingCameraAutoHDRCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQFrontFacingCameraBurstCapability", v13[69]) != 0), @"CMGQFrontFacingCameraBurstCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQFrontFacingCameraCapability", v13[70]) != 0), @"CMGQFrontFacingCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQFrontFacingCameraDeferredPrewarmingDisabled", v13[71]) != 0), @"CMGQFrontFacingCameraDeferredPrewarmingDisabled"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQFrontFacingCameraHDRCapability", v13[72]) != 0), @"CMGQFrontFacingCameraHDRCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQFrontFacingCameraHDROnCapability", v13[73]) != 0), @"CMGQFrontFacingCameraHDROnCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQFrontFacingCameraHFRCapability", v13[74]) != 0), @"CMGQFrontFacingCameraHFRCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQFrontFacingCameraPortraitModeCapability", v13[75]) != 0), @"CMGQFrontFacingCameraPortraitModeCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQFrontFacingCameraSingleCameraPortrait", v13[76]) != 0), @"CMGQFrontFacingCameraSingleCameraPortrait"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQFrontFacingCameraStageLightPortraitCaptureCapability", v13[77]) != 0), @"CMGQFrontFacingCameraStageLightPortraitCaptureCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQFrontFacingCameraSupportsCinematicVideo", v13[78]) != 0), @"CMGQFrontFacingCameraSupportsCinematicVideo"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQFrontFacingCameraSupportsCinematicVideo4K", v13[79]) != 0), @"CMGQFrontFacingCameraSupportsCinematicVideo4K"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQCB54MH3XAXNGTVD2SAMOV5WWOQ", v13[80]) != 0), @"AVGQCB54MH3XAXNGTVD2SAMOV5WWOQ"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQ4UHSO4KRGIJFZHZ3EAGDMAK6CA", v13[81]) != 0), @"AVGQ4UHSO4KRGIJFZHZ3EAGDMAK6CA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQOKRXQZPHFZ4X2XCPOHTANZXNGM", v13[82]) != 0), @"AVGQOKRXQZPHFZ4X2XCPOHTANZXNGM"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQBGWR3YSZWCQ7BKUUAOT5CCLHHE", v13[83]) != 0), @"AVGQBGWR3YSZWCQ7BKUUAOT5CCLHHE"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQT42HZJM7T4BHFEGWILGWIJSNEQ", v13[84]) != 0), @"AVGQT42HZJM7T4BHFEGWILGWIJSNEQ"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQFrontFacingCameraSupportsPortraitAutoSuggest", v13[85]) != 0), @"CMGQFrontFacingCameraSupportsPortraitAutoSuggest"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQYPHR3FTUAZCCTEYFPSINLTE7DI", v13[86]) != 0), @"AVGQYPHR3FTUAZCCTEYFPSINLTE7DI"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQHEVCEncodingCapability", v13[87]) != 0), @"CMGQHEVCEncodingCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQHasAppleNeuralEngine", v13[88]) != 0), @"CMGQHasAppleNeuralEngine"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQMedusaOverlayAppCapability", v13[89]) != 0), @"CMGQMedusaOverlayAppCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQPanoramaCameraCapability", v13[90]) != 0), @"CMGQPanoramaCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQPearlCameraCapability", v13[91]) != 0), @"CMGQPearlCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQPhotosPostEffectsCapability", v13[92]) != 0), @"CMGQPhotosPostEffectsCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQPipelinedStillImageProcessingCapability", v13[93]) != 0), @"CMGQPipelinedStillImageProcessingCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQDINRSVRALL7UYNXKHVSIWKZLRA", v13[94]) != 0), @"AVGQDINRSVRALL7UYNXKHVSIWKZLRA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingCamera60fpsVideoCaptureCapability", v13[95]) != 0), @"CMGQRearFacingCamera60fpsVideoCaptureCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingCameraAutoHDRCapability", v13[96]) != 0), @"CMGQRearFacingCameraAutoHDRCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingCameraBurstCapability", v13[97]) != 0), @"CMGQRearFacingCameraBurstCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingCameraCapability", v13[98]) != 0), @"CMGQRearFacingCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingCameraFocusPixelCalibrationCapability", v13[99]) != 0), @"CMGQRearFacingCameraFocusPixelCalibrationCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingCameraHDRCapability", v13[100]) != 0), @"CMGQRearFacingCameraHDRCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingCameraHDROnCapability", v13[101]) != 0), @"CMGQRearFacingCameraHDROnCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingCameraHFRCapability", v13[102]) != 0), @"CMGQRearFacingCameraHFRCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingCameraPortraitModeCapability", v13[103]) != 0), @"CMGQRearFacingCameraPortraitModeCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingCameraStageLightPortraitCaptureCapability", v13[104]) != 0), @"CMGQRearFacingCameraStageLightPortraitCaptureCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingCameraSuperWideCameraCapability", v13[105]) != 0), @"CMGQRearFacingCameraSuperWideCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQPEABAPB242SGF4J5L26EX5YTKA", v13[106]) != 0), @"AVGQPEABAPB242SGF4J5L26EX5YTKA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingCameraSupportsCinematicVideo", v13[107]) != 0), @"CMGQRearFacingCameraSupportsCinematicVideo"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingCameraSupportsCinematicVideo4K", v13[108]) != 0), @"CMGQRearFacingCameraSupportsCinematicVideo4K"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingCameraSupportsPortraitAutoSuggest", v13[109]) != 0), @"CMGQRearFacingCameraSupportsPortraitAutoSuggest"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQHSSMVIQNR3MAPIGELAQM7DWP4U", v13[110]) != 0), @"AVGQHSSMVIQNR3MAPIGELAQM7DWP4U"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingCameraTimeOfFlightCameraCapability", v13[111]) != 0), @"CMGQRearFacingCameraTimeOfFlightCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQQ4PFVIJ6WPTAHHYTAR5J5O7YNA", v13[112]) != 0), @"AVGQQ4PFVIJ6WPTAHHYTAR5J5O7YNA"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingLowLightCameraCapability", v13[113]) != 0), @"CMGQRearFacingLowLightCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingTelephotoCameraCapability", v13[114]) != 0), @"CMGQRearFacingTelephotoCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearWideCameraDisplayCustomZoomStops", v13[115]) != 0), @"CMGQRearWideCameraDisplayCustomZoomStops"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQSphereCapability", v13[116]) != 0), @"CMGQSphereCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQSupportsIrisCapture", v13[117]) != 0), @"CMGQSupportsIrisCapture"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQVideoCameraCapability", v13[118]) != 0), @"CMGQVideoCameraCapability"}];
    [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQVideoStillsCapability", v13[119]) != 0), @"CMGQVideoStillsCapability"}];
    LODWORD(v14) = *(v13 + 30);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v14), @"CMGQFrontFacingCameraMaxPhotoZoomFactor"}];
    ExperimentalCFPreferenceDoubleWithCFStringKeyAndDefault = CMCaptureGestaltGetExperimentalCFPreferenceDoubleWithCFStringKeyAndDefault(@"CMGQFrontFacingCameraMaxPhotoZoomFactor", NAN);
    *&ExperimentalCFPreferenceDoubleWithCFStringKeyAndDefault = ExperimentalCFPreferenceDoubleWithCFStringKeyAndDefault;
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", ExperimentalCFPreferenceDoubleWithCFStringKeyAndDefault), @"CMGQFrontFacingCameraMaxPhotoZoomFactor"}];
    LODWORD(v16) = *(v13 + 31);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v16), @"CMGQRearFacingAggregateDeviceMaxCinematicZoomFactor"}];
    v17 = CMCaptureGestaltGetExperimentalCFPreferenceDoubleWithCFStringKeyAndDefault(@"CMGQRearFacingAggregateDeviceMaxCinematicZoomFactor", NAN);
    *&v17 = v17;
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v17), @"CMGQRearFacingAggregateDeviceMaxCinematicZoomFactor"}];
    LODWORD(v18) = *(v13 + 32);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v18), @"CMGQRearFacingAggregateDeviceMaxPortraitZoomFactor"}];
    v19 = CMCaptureGestaltGetExperimentalCFPreferenceDoubleWithCFStringKeyAndDefault(@"CMGQRearFacingAggregateDeviceMaxPortraitZoomFactor", NAN);
    *&v19 = v19;
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v19), @"CMGQRearFacingAggregateDeviceMaxPortraitZoomFactor"}];
    LODWORD(v20) = *(v13 + 33);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v20), @"CMGQRearFacingCameraMaxPhotoZoomFactor"}];
    v21 = CMCaptureGestaltGetExperimentalCFPreferenceDoubleWithCFStringKeyAndDefault(@"CMGQRearFacingCameraMaxPhotoZoomFactor", NAN);
    *&v21 = v21;
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v21), @"CMGQRearFacingCameraMaxPhotoZoomFactor"}];
    LODWORD(v22) = *(v13 + 34);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v22), @"AVGQSN3QUOWTBFYIVAQOVNQEVK6G4M"}];
    v23 = CMCaptureGestaltGetExperimentalCFPreferenceDoubleWithCFStringKeyAndDefault(@"AVGQSN3QUOWTBFYIVAQOVNQEVK6G4M", NAN);
    *&v23 = v23;
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v23), @"AVGQSN3QUOWTBFYIVAQOVNQEVK6G4M"}];
    LODWORD(v24) = *(v13 + 35);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v24), @"AVGQAJT7KNQJHRRDW5Q5QTGETOLK2E"}];
    v25 = CMCaptureGestaltGetExperimentalCFPreferenceDoubleWithCFStringKeyAndDefault(@"AVGQAJT7KNQJHRRDW5Q5QTGETOLK2E", NAN);
    *&v25 = v25;
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v25), @"AVGQAJT7KNQJHRRDW5Q5QTGETOLK2E"}];
    LODWORD(v26) = *(v13 + 36);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v26), @"AVGQHDDMQ6RTH76PQ2HVCQ4MSWG63Q"}];
    v27 = CMCaptureGestaltGetExperimentalCFPreferenceDoubleWithCFStringKeyAndDefault(@"AVGQHDDMQ6RTH76PQ2HVCQ4MSWG63Q", NAN);
    *&v27 = v27;
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v27), @"AVGQHDDMQ6RTH76PQ2HVCQ4MSWG63Q"}];
    LODWORD(v28) = *(v13 + 37);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v28), @"AVGQ5RTE3RTRZZFRGK7IDFEQC7NFBE"}];
    v29 = CMCaptureGestaltGetExperimentalCFPreferenceDoubleWithCFStringKeyAndDefault(@"AVGQ5RTE3RTRZZFRGK7IDFEQC7NFBE", NAN);
    *&v29 = v29;
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v29), @"AVGQ5RTE3RTRZZFRGK7IDFEQC7NFBE"}];
    LODWORD(v30) = *(v13 + 38);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v30), @"AVGQQIBUFDUYMZTKVBF36FTLQON3DY"}];
    v31 = CMCaptureGestaltGetExperimentalCFPreferenceDoubleWithCFStringKeyAndDefault(@"AVGQQIBUFDUYMZTKVBF36FTLQON3DY", NAN);
    *&v31 = v31;
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v31), @"AVGQQIBUFDUYMZTKVBF36FTLQON3DY"}];
    LODWORD(v32) = *(v13 + 39);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v32), @"CMGQSuperWideCameraToWideCameraRelativeZoomFactor"}];
    v33 = CMCaptureGestaltGetExperimentalCFPreferenceDoubleWithCFStringKeyAndDefault(@"CMGQSuperWideCameraToWideCameraRelativeZoomFactor", NAN);
    *&v33 = v33;
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v33), @"CMGQSuperWideCameraToWideCameraRelativeZoomFactor"}];
    LODWORD(v34) = *(v13 + 40);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v34), @"CMGQTorchMaxBeamWidth"}];
    v35 = CMCaptureGestaltGetExperimentalCFPreferenceDoubleWithCFStringKeyAndDefault(@"CMGQTorchMaxBeamWidth", NAN);
    *&v35 = v35;
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v35), @"CMGQTorchMaxBeamWidth"}];
    LODWORD(v36) = *(v13 + 41);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v36), @"CMGQTorchMinBeamWidth"}];
    v37 = CMCaptureGestaltGetExperimentalCFPreferenceDoubleWithCFStringKeyAndDefault(@"CMGQTorchMinBeamWidth", NAN);
    *&v37 = v37;
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v37), @"CMGQTorchMinBeamWidth"}];
    LODWORD(v38) = *(v13 + 42);
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v38), @"CMGQWideCameraToTelephotoCameraRelativeZoomFactor"}];
    v39 = CMCaptureGestaltGetExperimentalCFPreferenceDoubleWithCFStringKeyAndDefault(@"CMGQWideCameraToTelephotoCameraRelativeZoomFactor", NAN);
    *&v39 = v39;
    [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v39), @"CMGQWideCameraToTelephotoCameraRelativeZoomFactor"}];
    if (*(v13 + 22) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQAggregateDevicePhotoZoomFactor"}];
    }

    ExperimentalCFPreferenceNumberWithCFStringKeyAndDefault = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQAggregateDevicePhotoZoomFactor", 0xFFFFFFFFLL);
    if (ExperimentalCFPreferenceNumberWithCFStringKeyAndDefault != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", ExperimentalCFPreferenceNumberWithCFStringKeyAndDefault), @"CMGQAggregateDevicePhotoZoomFactor"}];
    }

    if (*(v13 + 23) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQAggregateDeviceVideoZoomFactor"}];
    }

    v41 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQAggregateDeviceVideoZoomFactor", 0xFFFFFFFFLL);
    if (v41 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v41), @"CMGQAggregateDeviceVideoZoomFactor"}];
    }

    if (*(v13 + 24) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQBravoCameraVideoCapture4kMaxFPS"}];
    }

    v42 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQBravoCameraVideoCapture4kMaxFPS", 0xFFFFFFFFLL);
    if (v42 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v42), @"CMGQBravoCameraVideoCapture4kMaxFPS"}];
    }

    if (*(v13 + 25) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQCameraAppUIVersion"}];
    }

    v43 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQCameraAppUIVersion", 0xFFFFFFFFLL);
    if (v43 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v43), @"CMGQCameraAppUIVersion"}];
    }

    if (*(v13 + 26) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQCameraHDR10BitVideoCaptureMaxFPS"}];
    }

    v44 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQCameraHDR10BitVideoCaptureMaxFPS", 0xFFFFFFFFLL);
    if (v44 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v44), @"CMGQCameraHDR10BitVideoCaptureMaxFPS"}];
    }

    if (*(v13 + 27) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQCameraHDRVersion"}];
    }

    v45 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQCameraHDRVersion", 0xFFFFFFFFLL);
    if (v45 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v45), @"CMGQCameraHDRVersion"}];
    }

    if (*(v13 + 28) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQCameraMaxBurstLength"}];
    }

    v46 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQCameraMaxBurstLength", 0xFFFFFFFFLL);
    if (v46 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v46), @"CMGQCameraMaxBurstLength"}];
    }

    if (*(v13 + 29) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQCaptureSessionMaxMultiCamRGBStreamsSupported"}];
    }

    v47 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQCaptureSessionMaxMultiCamRGBStreamsSupported", 0xFFFFFFFFLL);
    if (v47 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v47), @"CMGQCaptureSessionMaxMultiCamRGBStreamsSupported"}];
    }

    if (*(v13 + 30) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQDefaultVariableFrameRateVideoMaxFPS"}];
    }

    v48 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQDefaultVariableFrameRateVideoMaxFPS", 0xFFFFFFFFLL);
    if (v48 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v48), @"CMGQDefaultVariableFrameRateVideoMaxFPS"}];
    }

    if (*(v13 + 31) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQFrontFacingCameraFocalLengthIn35mm"}];
    }

    v49 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQFrontFacingCameraFocalLengthIn35mm", 0xFFFFFFFFLL);
    if (v49 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v49), @"CMGQFrontFacingCameraFocalLengthIn35mm"}];
    }

    if (*(v13 + 32) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQFrontFacingCameraHFRVideoCapture1080pMaxFPS"}];
    }

    v50 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQFrontFacingCameraHFRVideoCapture1080pMaxFPS", 0xFFFFFFFFLL);
    if (v50 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v50), @"CMGQFrontFacingCameraHFRVideoCapture1080pMaxFPS"}];
    }

    if (*(v13 + 33) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQFrontFacingCameraHFRVideoCapture720pMaxFPS"}];
    }

    v51 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQFrontFacingCameraHFRVideoCapture720pMaxFPS", 0xFFFFFFFFLL);
    if (v51 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v51), @"CMGQFrontFacingCameraHFRVideoCapture720pMaxFPS"}];
    }

    if (*(v13 + 34) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQFrontFacingCameraMaxVideoZoomFactor"}];
    }

    v52 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQFrontFacingCameraMaxVideoZoomFactor", 0xFFFFFFFFLL);
    if (v52 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v52), @"CMGQFrontFacingCameraMaxVideoZoomFactor"}];
    }

    if (*(v13 + 35) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQFrontFacingCameraStillDurationForBurst"}];
    }

    v53 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQFrontFacingCameraStillDurationForBurst", 0xFFFFFFFFLL);
    if (v53 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v53), @"CMGQFrontFacingCameraStillDurationForBurst"}];
    }

    if (*(v13 + 36) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQFrontFacingCameraVideoCapture1080pMaxFPS"}];
    }

    v54 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQFrontFacingCameraVideoCapture1080pMaxFPS", 0xFFFFFFFFLL);
    if (v54 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v54), @"CMGQFrontFacingCameraVideoCapture1080pMaxFPS"}];
    }

    if (*(v13 + 37) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQFrontFacingCameraVideoCapture4kMaxFPS"}];
    }

    v55 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQFrontFacingCameraVideoCapture4kMaxFPS", 0xFFFFFFFFLL);
    if (v55 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v55), @"CMGQFrontFacingCameraVideoCapture4kMaxFPS"}];
    }

    if (*(v13 + 38) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQFrontFacingCameraVideoCapture720pMaxFPS"}];
    }

    v56 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQFrontFacingCameraVideoCapture720pMaxFPS", 0xFFFFFFFFLL);
    if (v56 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v56), @"CMGQFrontFacingCameraVideoCapture720pMaxFPS"}];
    }

    if (*(v13 + 39) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQMinimumDiskSpaceReserved"}];
    }

    v57 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQMinimumDiskSpaceReserved", 0xFFFFFFFFLL);
    if (v57 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v57), @"CMGQMinimumDiskSpaceReserved"}];
    }

    if (*(v13 + 40) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQRearFacingCameraHFRVideoCapture1080pMaxFPS"}];
    }

    v58 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingCameraHFRVideoCapture1080pMaxFPS", 0xFFFFFFFFLL);
    if (v58 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v58), @"CMGQRearFacingCameraHFRVideoCapture1080pMaxFPS"}];
    }

    if (*(v13 + 41) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQRearFacingCameraHFRVideoCapture4kMaxFPS"}];
    }

    v59 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingCameraHFRVideoCapture4kMaxFPS", 0xFFFFFFFFLL);
    if (v59 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v59), @"CMGQRearFacingCameraHFRVideoCapture4kMaxFPS"}];
    }

    if (*(v13 + 42) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQRearFacingCameraHFRVideoCapture720pMaxFPS"}];
    }

    v60 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingCameraHFRVideoCapture720pMaxFPS", 0xFFFFFFFFLL);
    if (v60 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v60), @"CMGQRearFacingCameraHFRVideoCapture720pMaxFPS"}];
    }

    if (*(v13 + 43) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQRearFacingCameraMaxVideoZoomFactor"}];
    }

    v61 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingCameraMaxVideoZoomFactor", 0xFFFFFFFFLL);
    if (v61 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v61), @"CMGQRearFacingCameraMaxVideoZoomFactor"}];
    }

    if (*(v13 + 44) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQRearFacingCameraStillDurationForBurst"}];
    }

    v62 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingCameraStillDurationForBurst", 0xFFFFFFFFLL);
    if (v62 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v62), @"CMGQRearFacingCameraStillDurationForBurst"}];
    }

    if (*(v13 + 45) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQRearFacingCameraVideoCapture1080pMaxFPS"}];
    }

    v63 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingCameraVideoCapture1080pMaxFPS", 0xFFFFFFFFLL);
    if (v63 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v63), @"CMGQRearFacingCameraVideoCapture1080pMaxFPS"}];
    }

    if (*(v13 + 46) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQRearFacingCameraVideoCapture4kMaxFPS"}];
    }

    v64 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingCameraVideoCapture4kMaxFPS", 0xFFFFFFFFLL);
    if (v64 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v64), @"CMGQRearFacingCameraVideoCapture4kMaxFPS"}];
    }

    if (*(v13 + 47) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQRearFacingCameraVideoCapture720pMaxFPS"}];
    }

    v65 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingCameraVideoCapture720pMaxFPS", 0xFFFFFFFFLL);
    if (v65 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v65), @"CMGQRearFacingCameraVideoCapture720pMaxFPS"}];
    }

    if (*(v13 + 48) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQRearFacingSuperWideCameraFocalLengthIn35mm"}];
    }

    v66 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingSuperWideCameraFocalLengthIn35mm", 0xFFFFFFFFLL);
    if (v66 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v66), @"CMGQRearFacingSuperWideCameraFocalLengthIn35mm"}];
    }

    if (*(v13 + 49) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQRearFacingTeleCameraFocalLengthIn35mm"}];
    }

    v67 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingTeleCameraFocalLengthIn35mm", 0xFFFFFFFFLL);
    if (v67 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v67), @"CMGQRearFacingTeleCameraFocalLengthIn35mm"}];
    }

    if (*(v13 + 50) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQRearFacingWideCameraFocalLengthIn35mm"}];
    }

    v68 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQRearFacingWideCameraFocalLengthIn35mm", 0xFFFFFFFFLL);
    if (v68 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v68), @"CMGQRearFacingWideCameraFocalLengthIn35mm"}];
    }

    if (*(v13 + 51) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"AVGQGYSWMQKMTMQOUYQ2AKUCKEN6AA"}];
    }

    v69 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"AVGQGYSWMQKMTMQOUYQ2AKUCKEN6AA", 0xFFFFFFFFLL);
    if (v69 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v69), @"AVGQGYSWMQKMTMQOUYQ2AKUCKEN6AA"}];
    }

    if (*(v13 + 52) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQSuperBravoCameraVideoCapture1080pMaxFPS"}];
    }

    v70 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQSuperBravoCameraVideoCapture1080pMaxFPS", 0xFFFFFFFFLL);
    if (v70 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v70), @"CMGQSuperBravoCameraVideoCapture1080pMaxFPS"}];
    }

    if (*(v13 + 53) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQSuperBravoCameraVideoCapture4kMaxFPS"}];
    }

    v71 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQSuperBravoCameraVideoCapture4kMaxFPS", 0xFFFFFFFFLL);
    if (v71 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v71), @"CMGQSuperBravoCameraVideoCapture4kMaxFPS"}];
    }

    if (*(v13 + 54) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:"), @"CMGQWideBravoCameraVideoCapture4kMaxFPS"}];
    }

    v72 = CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(@"CMGQWideBravoCameraVideoCapture4kMaxFPS", 0xFFFFFFFFLL);
    if (v72 != -1)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v72), @"CMGQWideBravoCameraVideoCapture4kMaxFPS"}];
    }

    if (*(v13 + 55))
    {
      [a5 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithUTF8String:"), @"CMGQFirstSupportedReleaseVersion"}];
    }

    result = CMCaptureGestaltGetExperimentalCFPreferenceStringWithCFStringKeyAndDefault(@"CMGQFirstSupportedReleaseVersion", 0);
    if (result)
    {

      return [a5 setObject:result forKeyedSubscript:@"CMGQFirstSupportedReleaseVersion"];
    }
  }

  return result;
}

double FigCaptureTransformExtrinsicMatrix(float32x4_t a1, float32x4_t a2, float32x4_t a3, double a4, simd_float3 a5, simd_float3 a6, simd_float3 a7)
{
  v22.columns[0] = a5;
  v22.columns[1] = a6;
  v22.columns[2] = a7;
  v23 = __invert_f3(v22);
  v7 = 0;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  do
  {
    *(&v19 + v7 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1, COERCE_FLOAT(*(&v16 + v7 * 4))), a2, *&v16.f32[v7], 1), a3, *(&v16 + v7 * 4), 2);
    v7 += 4;
  }

  while (v7 != 12);
  v8 = 0;
  v16 = v19;
  v17 = v20;
  v18 = v21;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  do
  {
    *(&v19 + v8 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23.columns[0], COERCE_FLOAT(*(&v16 + v8 * 4))), v23.columns[1], *&v16.f32[v8], 1), v23.columns[2], *(&v16 + v8 * 4), 2);
    v8 += 4;
  }

  while (v8 != 12);
  return *v19.i64;
}

uint64_t FigCaptureConvertRotationAndMirroringToExifOrientation(int a1, int a2)
{
  if (a1 > 179)
  {
    if (a1 != 180)
    {
      if (a1 == 270)
      {
        v2 = a2 == 0;
        v3 = 7;
LABEL_8:
        if (v2)
        {
          return v3 + 1;
        }

        else
        {
          return v3;
        }
      }

LABEL_11:
      fig_log_get_emitter();
      FigSignalErrorAtGM();
      return 1;
    }

    v5 = a2 == 0;
    v6 = 3;
  }

  else
  {
    if (a1)
    {
      if (a1 == 90)
      {
        v2 = a2 == 0;
        v3 = 5;
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    v5 = a2 == 0;
    v6 = 1;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return v6 + 1;
  }
}

uint64_t FigCaptureRotateCalibrationData(double *a1, float32x4_t *a2, uint64_t a3, float32x4_t *a4, int a5, double a6, double a7, double a8, double a9, double a10, double a11, int8x16_t a12)
{
  if ((a5 - 9) <= 0xFFFFFFF7)
  {
    FigCaptureRotateCalibrationData_cold_2(&v41);
    return v41.u32[0];
  }

  v13 = *MEMORY[0x1E69E9B10];
  v12 = *(MEMORY[0x1E69E9B10] + 16);
  v14 = *(MEMORY[0x1E69E9B10] + 32);
  if (a5 <= 4)
  {
    if (a5 == 2)
    {
      v14 = xmmword_1ACF06340;
      v12 = xmmword_1AD046FF0;
    }

    else
    {
      if (a5 != 3)
      {
        if (a5 == 4)
        {
          v14 = xmmword_1ACF06340;
          v12 = xmmword_1AD055210;
          v13 = xmmword_1AD046FE0;
        }

        goto LABEL_20;
      }

      v14 = xmmword_1ACF06340;
      v12 = xmmword_1AD055210;
    }

    v13 = xmmword_1AD055220;
    goto LABEL_20;
  }

  if (a5 > 6)
  {
    if (a5 == 7)
    {
      v14 = xmmword_1ACF06340;
      v12 = xmmword_1AD055220;
    }

    else
    {
      if (a5 != 8)
      {
        goto LABEL_20;
      }

      v14 = xmmword_1ACF06340;
      v12 = xmmword_1AD046FE0;
    }

    v13 = xmmword_1AD055210;
  }

  else
  {
    v14 = xmmword_1ACF06340;
    if (a5 == 5)
    {
      v12 = xmmword_1AD046FE0;
    }

    else
    {
      v12 = xmmword_1AD055220;
    }

    v13 = xmmword_1AD046FF0;
  }

LABEL_20:
  if (!a1)
  {
    FigCaptureRotateCalibrationData_cold_1(&v41);
    return v41.u32[0];
  }

  v15 = *a1;
  v16 = a1[1];
  v17 = vabsq_f32(vaddq_f32(v14, vmlaq_n_f32(vmulq_n_f32(v13, v15), v12, v16)));
  v18 = v17.f32[1];
  *a1 = vcvtq_f64_f32(*v17.f32);
  if (a2)
  {
    v19 = a2[2];
    v20 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, v19.f32[0]), v12, *v19.f32, 1), v14, v19, 2);
    v19.i64[0] = 0;
    v21 = v20;
    v21.i32[0] = vaddq_f32(v17, v20).u32[0];
    a12 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v19, v20), 0), v21, v20);
    v22 = a12;
    *&v22.i32[1] = v17.f32[1] + *&a12.i32[1];
    v22.i32[2] = a12.i32[2];
    a2[2] = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v19, vdupq_lane_s32(*a12.i8, 1)), 0), v22, a12);
  }

  if (a3)
  {
    a12.i64[0] = *(a3 + 8);
    if (*a3 != *MEMORY[0x1E695EFF8] || *a12.i64 != *(MEMORY[0x1E695EFF8] + 8))
    {
      v24 = *a3;
      *a12.i32 = *a12.i64;
      v25 = vaddq_f32(v14, vmlaq_n_f32(vmulq_n_f32(v13, v24), v12, *a12.i32));
      a12.i64[0] = 0;
      v26 = v25;
      v26.i32[0] = vaddq_f32(v17, v25).u32[0];
      v27 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a12, v25), 0), v26, v25);
      v28 = v27;
      *&v28.i32[1] = v18 + *&v27.i32[1];
      *a3 = vcvtq_f64_f32(*&vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a12, vdupq_lane_s32(*v27.i8, 1)), 0), v28, v27));
    }
  }

  if (!a4)
  {
    return 0;
  }

  v29 = 0;
  v30 = vzip1q_s32(v13, v14);
  v31 = vzip1q_s32(v30, v12);
  v32 = vzip1q_s32(vzip2q_s32(v13, v14), vdupq_laneq_s32(v12, 2));
  v33 = vzip2q_s32(v30, vdupq_lane_s32(*v12.f32, 1));
  v31.i32[3] = 0;
  v33.i32[3] = 0;
  v32.i32[3] = 0;
  v34 = *a4;
  v35 = a4[1];
  v36 = a4[2];
  v40[0] = v31;
  v40[1] = v33;
  v40[2] = v32;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  do
  {
    *(&v41 + v29 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, COERCE_FLOAT(v40[v29])), v35, *&v40[v29], 1), v36, v40[v29], 2);
    ++v29;
  }

  while (v29 != 3);
  result = 0;
  v38 = v42;
  v39 = v43;
  *a4 = v41;
  a4[1] = v38;
  a4[2] = v39;
  return result;
}

uint64_t FigCaptureCreateCalibrationDataDictionaryFromSampleBufferMetadata(void *a1, __int128 *a2, void *a3, int a4, int a5, void *a6, const __CFDictionary *a7, int a8, unsigned __int8 a9, char a10)
{
  v11 = *a2;
  v12 = *(a2 + 2);
  return FigCaptureCreateScaledCalibrationDataDictionaryFromSampleBufferMetadata(a1, &v11, a3, a4, a5, a6, a7, a8, a9, a10, 0);
}

uint64_t FigCaptureSensorIDFromSampleBufferMetadata(void *a1, void *a2)
{
  v2 = [objc_msgSend(objc_msgSend(a2 objectForKeyedSubscript:{objc_msgSend(a1, "objectForKeyedSubscript:", *off_1E798B540)), "objectForKeyedSubscript:", *off_1E7989EF8), "objectForKeyedSubscript:", *off_1E798A270}];

  return [v2 intValue];
}

uint64_t BWUpdateFrameLevelMetadataForProResRaw(opaqueCMSampleBuffer *a1, void *a2, void *a3, void *a4)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a1)
  {
    BWUpdateFrameLevelMetadataForProResRaw_cold_13(v112);
    return LODWORD(v112[0]);
  }

  if (!a2)
  {
    BWUpdateFrameLevelMetadataForProResRaw_cold_12(v112);
    return LODWORD(v112[0]);
  }

  if (!a3)
  {
    BWUpdateFrameLevelMetadataForProResRaw_cold_11(v112);
    return LODWORD(v112[0]);
  }

  v104 = a4;
  ImageBuffer = CMSampleBufferGetImageBuffer(a1);
  v9 = [MEMORY[0x1E695DF88] data];
  Width = CVPixelBufferGetWidth(ImageBuffer);
  target = ImageBuffer;
  Height = CVPixelBufferGetHeight(ImageBuffer);
  [objc_msgSend(a3 objectForKeyedSubscript:{*off_1E7989F18), "floatValue"}];
  v13 = v12;
  v103 = *off_1E798B540;
  v14 = [a2 objectForKeyedSubscript:?];
  if ((([v14 isEqualToString:*off_1E798A0D0] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", *off_1E798A0F8)) && objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", *off_1E798A690), "BOOLValue") && BWCreateProResRawGDCMetadata(Width | (Height << 32), a2, a3, v13))
  {
    LODWORD(v112[0]) = 0;
    LOBYTE(point.x) = 0;
    v15 = [MEMORY[0x1E695DF88] data];
    prrmu_appendPSIMData(v9, @"com.apple.gdc", 77);
    FigCFArrayGetFloat32AtIndex();
    *v106 = bswap32(0);
    [v15 appendBytes:v106 length:4];
    FigCFArrayGetFloat32AtIndex();
    *v106 = bswap32(v112[0]);
    [v15 appendBytes:v106 length:4];
    for (i = 0; i != 15; ++i)
    {
      FigCFArrayGetFloat32AtIndex();
      *v106 = bswap32(v112[0]);
      [v15 appendBytes:v106 length:4];
    }

    FigCFArrayGetFloat32AtIndex();
    *v106 = bswap32(v112[0]);
    [v15 appendBytes:v106 length:4];
    FigCFArrayGetFloat32AtIndex();
    *v106 = bswap32(v112[0]);
    [v15 appendBytes:v106 length:4];
    FigCFArrayGetIntAtIndex();
    [v15 appendBytes:&point length:1];
    [v9 appendData:v15];
  }

  v105 = v9;
  v17 = [MEMORY[0x1E695DF90] dictionary];
  v18 = *off_1E798B1F8;
  [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B1F8), "floatValue"}];
  *&v20 = v19 * 0.000015259;
  [v17 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v20), v18}];
  v21 = *off_1E798B5B0;
  [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B5B0), "floatValue"}];
  *&v23 = v22 * 0.000015259;
  [v17 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v23), v21}];
  v24 = *off_1E798B5B8;
  [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B5B8), "floatValue"}];
  *&v26 = v25 * 0.000015259;
  [v17 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v26), v24}];
  v27 = *off_1E798B0B8;
  [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B0B8), "floatValue"}];
  *&v29 = v28 * 0.0039062;
  [v17 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v29), v27}];
  v30 = *off_1E798B0D8;
  *&v31 = vcvts_n_f32_u32([objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B0D8), "unsignedShortValue"}], 0xCuLL);
  [v17 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v31), v30}];
  v32 = *off_1E798B0D0;
  *&v33 = vcvts_n_f32_u32([objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B0D0), "unsignedShortValue"}], 0xCuLL);
  [v17 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v33), v32}];
  v34 = *off_1E798B0C8;
  *&v35 = vcvts_n_f32_u32([objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B0C8), "unsignedShortValue"}], 0xCuLL);
  [v17 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v35), v34}];
  if ([v17 count])
  {
    [objc_msgSend(a2 objectForKeyedSubscript:{v18), "floatValue"}];
    v37 = v36 * 0.000015259;
    [objc_msgSend(a2 objectForKeyedSubscript:{v21), "floatValue"}];
    v39 = v38 * 0.000015259;
    [objc_msgSend(a2 objectForKeyedSubscript:{v24), "floatValue"}];
    v41 = v40 * 0.000015259;
    [objc_msgSend(a2 objectForKeyedSubscript:{v27), "floatValue"}];
    v43 = v42 * 0.0039062;
    [objc_msgSend(a2 objectForKeyedSubscript:{v30), "floatValue"}];
    v45 = v44 * 0.00024414;
    [objc_msgSend(a2 objectForKeyedSubscript:{v34), "floatValue"}];
    v47 = v46 * 0.00024414;
    [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B560), "floatValue"}];
    v49 = v48;
    [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B548), "floatValue"}];
    v51 = v50;
    v114 = 0u;
    memset(v112 + 8, 0, 24);
    *&v112[0] = 0x3FF0000000000000;
    v113 = 0x3FF0000000000000;
    v115 = 0;
    v116 = 0x3FF0000000000000;
    v107 = 0;
    v109 = 0u;
    *&v106[8] = 0u;
    *v106 = 0x3FF0000000000000;
    v108 = 0x3FF0000000000000;
    v110 = 0;
    v111 = 0x3FF0000000000000;
    v52 = [a2 objectForKeyedSubscript:*off_1E798B748];
    if (v52)
    {
      v53 = v52;
      if ([v52 length] >= 0x24)
      {
        v54 = [v53 bytes];
        for (j = 0; j != 9; ++j)
        {
          *(v112 + j) = *(v54 + 4 * j);
        }
      }
    }

    *&v56 = v37 * v37 * (v41 * v41 * ((v43 * v43 + -1.0) * 64.0) + (64.0 - v43 * v43) * (v39 * v39)) / 63.0;
    v57 = [MEMORY[0x1E695DF88] data];
    prrmu_appendPSIMData(v105, @"com.apple.vdd", 64);
    LODWORD(point.x) = bswap32(LODWORD(v45));
    [v57 appendBytes:&point length:4];
    LODWORD(point.x) = bswap32(LODWORD(v47));
    [v57 appendBytes:&point length:4];
    LODWORD(point.x) = bswap32(v49);
    [v57 appendBytes:&point length:4];
    LODWORD(point.x) = bswap32(v51);
    [v57 appendBytes:&point length:4];
    LODWORD(point.x) = bswap32(LODWORD(v43));
    [v57 appendBytes:&point length:4];
    LODWORD(point.x) = bswap32(v56);
    [v57 appendBytes:&point length:4];
    LODWORD(point.x) = bswap32(COERCE_UNSIGNED_INT(v37 * v43));
    [v57 appendBytes:&point length:4];
    if (invert3x3Matrix(v112, v106))
    {
      for (k = 0; k != 72; k += 8)
      {
        *&v59 = *&v106[k];
        LODWORD(point.x) = bswap32(v59);
        [v57 appendBytes:&point length:4];
      }

      [v105 appendData:v57];
    }
  }

  v60 = [MEMORY[0x1E695DF88] data];
  v61 = [a3 objectForKeyedSubscript:*off_1E7989EE0];
  v62 = *(MEMORY[0x1E695F058] + 16);
  v112[0] = *MEMORY[0x1E695F058];
  v112[1] = v62;
  FigCFDictionaryGetCGRectIfPresent();
  prrmu_appendPSIMData(v105, @"com.apple.lsc", 12);
  v117 = *MEMORY[0x1E695EFF8];
  point = v117;
  v102 = v117;
  [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B478), "floatValue"}];
  v119[0] = bswap32(v63);
  [v60 appendBytes:v119 length:4];
  if (CGPointMakeWithDictionaryRepresentation([a2 objectForKeyedSubscript:*off_1E798B258], &point))
  {
    v64 = [a3 objectForKeyedSubscript:*off_1E7989F28];
    v65 = v104;
    if (v64)
    {
      v66 = v64;
      v67 = [a3 objectForKeyedSubscript:*off_1E7989F08];
      if (v67)
      {
        v68 = v67;
        v69 = [objc_msgSend(a3 objectForKeyedSubscript:{*off_1E7989ED8), "BOOLValue"}];
        *v106 = v102;
        CGPointMakeWithDictionaryRepresentation(v68, v106);
        [objc_msgSend(v66 objectForKeyedSubscript:{*off_1E798A2C0), "floatValue"}];
        v71 = v70;
        [objc_msgSend(v66 objectForKeyedSubscript:{*off_1E798A288), "floatValue"}];
        v73 = v72;
        v74 = v71 * 0.5;
        v75 = v73 * 0.5;
        if (!v69)
        {
          v74 = v71;
          v75 = v73;
        }

        v120.x = *v106 + v74 * 0.5;
        v120.y = *&v106[8] + v75 * 0.5;
        DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v120);
        goto LABEL_26;
      }

      BWUpdateFrameLevelMetadataForProResRaw_cold_2();
    }

    else
    {
      BWUpdateFrameLevelMetadataForProResRaw_cold_3();
    }

    DictionaryRepresentation = 0;
LABEL_26:
    if (CGPointMakeWithDictionaryRepresentation(DictionaryRepresentation, &v117))
    {
      v77 = [v61 bytes];
      if (*v77 == 2)
      {
        v78 = v77;
        v79 = point.x - v117.x;
        v80 = point.y - v117.y;
        if ([objc_msgSend(a2 objectForKeyedSubscript:{v103), "isEqualToString:", *off_1E798A0C0}] && (v78[1] | 2) == 2)
        {
          v81 = 128.0;
          v82 = 128.0;
        }

        else
        {
          v82 = (2 * v78[2]);
          v81 = (2 * v78[3]);
        }

        if (v79 >= v82)
        {
          v83 = v82;
        }

        else
        {
          v83 = v79;
        }

        if (v83 <= -v82)
        {
          v83 = -v82;
        }

        if (v80 >= v81)
        {
          v84 = v81;
        }

        else
        {
          v84 = v80;
        }

        if (v84 <= -v81)
        {
          v84 = -v81;
        }

        *&v85 = (*v112 + v82 - v83) * 0.5;
        *&v86 = (*(v112 + 1) + v81 - v84) * 0.5;
        v119[0] = bswap32(v85);
        [v60 appendBytes:v119 length:4];
        v119[0] = bswap32(v86);
        [v60 appendBytes:v119 length:4];
        [v105 appendData:v60];
      }

      else
      {
        BWUpdateFrameLevelMetadataForProResRaw_cold_5();
      }
    }

    else
    {
      BWUpdateFrameLevelMetadataForProResRaw_cold_4();
    }

    goto LABEL_43;
  }

  BWUpdateFrameLevelMetadataForProResRaw_cold_1();
  v65 = v104;
LABEL_43:
  if (v65)
  {
    v87 = [MEMORY[0x1E695DF88] data];
    LODWORD(v112[0]) = 0;
    v88 = [v65 length];
    if (v88 <= 0x24)
    {
      BWUpdateFrameLevelMetadataForProResRaw_cold_10();
    }

    else
    {
      v89 = v88;
      v90 = [v65 bytes];
      v91 = v90[7];
      if (v91 <= 0)
      {
        BWUpdateFrameLevelMetadataForProResRaw_cold_9();
      }

      else
      {
        v92 = v90;
        v93 = v90[8];
        if (v93 <= 0)
        {
          BWUpdateFrameLevelMetadataForProResRaw_cold_8();
        }

        else if (v90[6] <= 0)
        {
          BWUpdateFrameLevelMetadataForProResRaw_cold_7();
        }

        else if (v89 == 36 * v91 * v93 + 36)
        {
          prrmu_appendPSIMData(v105, @"com.apple.vis", [v65 length] + 4);
          *v106 = 0x1000000;
          [v87 appendBytes:v106 length:4];
          *v106 = bswap32(*v92);
          [v87 appendBytes:v106 length:4];
          *v106 = bswap32(v92[1]);
          [v87 appendBytes:v106 length:4];
          *v106 = bswap32(v92[2]);
          [v87 appendBytes:v106 length:4];
          *v106 = bswap32(v92[3]);
          [v87 appendBytes:v106 length:4];
          *v106 = bswap32(v92[4]);
          [v87 appendBytes:v106 length:4];
          *v106 = bswap32(v92[5]);
          [v87 appendBytes:v106 length:4];
          *v106 = bswap32(v92[6]);
          [v87 appendBytes:v106 length:4];
          *v106 = bswap32(v92[7]);
          [v87 appendBytes:v106 length:4];
          *v106 = bswap32(v92[8]);
          [v87 appendBytes:v106 length:4];
          v94 = v92[7];
          if (v94 >= 1)
          {
            v95 = 0;
            v96 = v92[8];
            do
            {
              if (v96 >= 1)
              {
                for (m = 0; m < v96; ++m)
                {
                  v98 = v92 + 9;
                  v99 = 9;
                  do
                  {
                    LODWORD(v112[0]) = bswap32(v98[9 * v95 + 9 * v92[7] * m]);
                    [v87 appendBytes:v112 length:4];
                    ++v98;
                    --v99;
                  }

                  while (v99);
                  v96 = v92[8];
                }

                v94 = v92[7];
              }

              ++v95;
            }

            while (v95 < v94);
          }

          [v105 appendData:v87];
        }

        else
        {
          BWUpdateFrameLevelMetadataForProResRaw_cold_6();
        }
      }
    }
  }

  result = [v105 length];
  if (result)
  {
    LODWORD(v112[0]) = 0x8000000;
    *v106 = 1684893541;
    [v105 appendBytes:v112 length:4];
    [v105 appendBytes:v106 length:4];
    CMSetAttachment(target, *MEMORY[0x1E69661B0], v105, 1u);
    return 0;
  }

  return result;
}

uint64_t writeMatrixArrayRefDataEntry(unsigned int a1, void *a2, void *a3)
{
  v9 = bswap32(a1);
  [a3 appendBytes:&v9 length:4];
  for (i = 0; i != 9; ++i)
  {
    [objc_msgSend(a2 objectAtIndexedSubscript:{i), "floatValue"}];
    v8 = bswap32(v6);
    result = [a3 appendBytes:&v8 length:4];
  }

  return result;
}

uint64_t invert3x3Matrix(double *a1, double *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v4 = a1[7];
    v3 = a1[8];
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    v8 = v5 * v3 - v6 * v4;
    v9 = a1[2];
    v10 = a1[3];
    v11 = v10 * v4 - v5 * v7;
    v13 = *a1;
    v12 = a1[1];
    v14 = *a1 * v8 - (v10 * v3 - v6 * v7) * v12 + v9 * v11;
    if (v14 == 0.0)
    {
      return 0;
    }

    else
    {
      *a2 = v8 / v14;
      a2[1] = -(v12 * v3 - v9 * v4) / v14;
      a2[2] = (v12 * v6 - v9 * v5) / v14;
      a2[3] = -(v10 * v3 - v6 * v7) / v14;
      a2[4] = (v13 * v3 - v9 * v7) / v14;
      a2[5] = -(v13 * v6 - v9 * v10) / v14;
      a2[6] = v11 / v14;
      a2[7] = -(v13 * v4 - v12 * v7) / v14;
      a2[8] = (v13 * v5 - v12 * v10) / v14;
      return 1;
    }
  }

  return v2;
}

uint64_t prrmu_appendPSIMData(void *a1, void *a2, int a3)
{
  v9 = [a2 length];
  v6 = [a2 dataUsingEncoding:4];
  v8 = bswap32(a3 + v9 + 9);
  [a1 appendBytes:&v8 length:4];
  v8 = 1835627376;
  [a1 appendBytes:&v8 length:4];
  [a1 appendBytes:&v9 length:1];
  return [a1 appendData:v6];
}

uint64_t BWCMSampleBufferCreateCopyWithNewTimingIncludingMetadata(opaqueCMSampleBuffer *a1, CMTime *a2, __int128 *a3, CMSampleBufferRef *a4)
{
  timingArrayEntriesNeededOut = 0;
  memset(&v30, 0, sizeof(v30));
  CMSampleBufferGetPresentationTimeStamp(&lhs, a1);
  rhs = *a2;
  CMTimeSubtract(&v30, &lhs, &rhs);
  SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(a1, 0, 0, &timingArrayEntriesNeededOut);
  if (SampleTimingInfoArray)
  {
    v25 = SampleTimingInfoArray;
    BWCMSampleBufferCreateCopyWithNewTimingIncludingMetadata_cold_1();
    v9 = 0;
  }

  else
  {
    if (timingArrayEntriesNeededOut)
    {
      v9 = malloc_type_calloc(0x48uLL, timingArrayEntriesNeededOut, 0x1000040FF89C88EuLL);
      v10 = CMSampleBufferGetSampleTimingInfoArray(a1, timingArrayEntriesNeededOut, v9, &timingArrayEntriesNeededOut);
      if (v10)
      {
        v25 = v10;
        BWCMSampleBufferCreateCopyWithNewTimingIncludingMetadata_cold_2();
        goto LABEL_19;
      }

      v11 = timingArrayEntriesNeededOut;
      if (timingArrayEntriesNeededOut >= 1)
      {
        v12 = 0;
        p_decodeTimeStamp = &v9->decodeTimeStamp;
        do
        {
          v14 = *&p_decodeTimeStamp[-1].value;
          rhs.epoch = p_decodeTimeStamp[-1].epoch;
          *&rhs.value = v14;
          v27 = v30;
          CMTimeSubtract(&lhs, &rhs, &v27);
          v15 = *&lhs.value;
          p_decodeTimeStamp[-1].epoch = lhs.epoch;
          *&p_decodeTimeStamp[-1].value = v15;
          if (p_decodeTimeStamp->flags)
          {
            v16 = *&p_decodeTimeStamp->value;
            rhs.epoch = p_decodeTimeStamp->epoch;
            *&rhs.value = v16;
            v27 = v30;
            CMTimeSubtract(&lhs, &rhs, &v27);
            v17 = *&lhs.value;
            p_decodeTimeStamp->epoch = lhs.epoch;
            *&p_decodeTimeStamp->value = v17;
          }

          if (*(a3 + 12) & 1) != 0 && (p_decodeTimeStamp[-2].flags)
          {
            v18 = p_decodeTimeStamp - 2;
            v19 = *a3;
            v18->epoch = *(a3 + 2);
            *&v18->value = v19;
          }

          ++v12;
          v11 = timingArrayEntriesNeededOut;
          p_decodeTimeStamp += 3;
        }

        while (timingArrayEntriesNeededOut > v12);
      }
    }

    else
    {
      v11 = 0;
      v9 = 0;
    }

    v20 = *MEMORY[0x1E695E480];
    CopyWithNewTiming = CMSampleBufferCreateCopyWithNewTiming(*MEMORY[0x1E695E480], a1, v11, v9, a4);
    if (CopyWithNewTiming)
    {
      v25 = CopyWithNewTiming;
      BWCMSampleBufferCreateCopyWithNewTimingIncludingMetadata_cold_3();
    }

    else
    {
      v22 = *off_1E798A3C8;
      v23 = CMGetAttachment(a1, *off_1E798A3C8, 0);
      if (v23)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(v20, 0, v23);
        CMSetAttachment(*a4, v22, MutableCopy, 1u);
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }
      }

      sbu_replaceAttachedMediaWithDeepCopy(*a4);
      v25 = 0;
    }
  }

LABEL_19:
  free(v9);
  return v25;
}

id BWCMSampleBufferCopyReattachAndReturnMutableMetadata(const void *a1)
{
  if (a1)
  {
    v2 = *off_1E798A3C8;
    v3 = CMGetAttachment(a1, *off_1E798A3C8, 0);
    if (v3)
    {
      v4 = [v3 mutableCopy];
    }

    else
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v5 = v4;
    CMSetAttachment(a1, v2, v4, 1u);
  }

  else
  {
    BWCMSampleBufferCopyReattachAndReturnMutableMetadata_cold_1();
    v5 = 0;
  }

  return v5;
}

const __CFDictionary *BWCMSampleBufferCopyMetadataToSampleBuffer(const void *a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *off_1E798A3C8;
      result = CMGetAttachment(a1, *off_1E798A3C8, 0);
      if (result)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, result);
        CMSetAttachment(a2, v3, MutableCopy, 1u);
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        return 0;
      }
    }

    else
    {
      BWCMSampleBufferCopyMetadataToSampleBuffer_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    BWCMSampleBufferCopyMetadataToSampleBuffer_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t BWSampleBufferCreateFromEncodedImageSurface(__IOSurface *a1, size_t a2, CMVideoCodecType codecType, unint64_t width, CMTime *a5, CMVideoFormatDescriptionRef *formatDescriptionOut, CMSampleBufferRef *a7)
{
  blockBufferOut = 0;
  sampleSizeArray = a2;
  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  if (!a1)
  {
    BWSampleBufferCreateFromEncodedImageSurface_cold_7(v30);
LABEL_23:
    v24 = v30[0];
    goto LABEL_17;
  }

  if (!a7)
  {
    BWSampleBufferCreateFromEncodedImageSurface_cold_6(v30);
    goto LABEL_23;
  }

  if (!formatDescriptionOut)
  {
    BWSampleBufferCreateFromEncodedImageSurface_cold_5(v30);
    goto LABEL_23;
  }

  v10 = width;
  v14 = HIDWORD(width);
  v15 = MEMORY[0x1E695E480];
  if (*formatDescriptionOut)
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(*formatDescriptionOut);
    MediaSubType = CMFormatDescriptionGetMediaSubType(*formatDescriptionOut);
    v18 = *formatDescriptionOut;
    if (MediaSubType == codecType && Dimensions == v10 && HIDWORD(Dimensions) == v14)
    {
      if (v18)
      {
        goto LABEL_13;
      }
    }

    else if (v18)
    {
      CFRelease(v18);
      *formatDescriptionOut = 0;
    }
  }

  v19 = CMVideoFormatDescriptionCreate(*v15, codecType, v10, v14, 0, formatDescriptionOut);
  if (v19)
  {
    v24 = v19;
    BWSampleBufferCreateFromEncodedImageSurface_cold_1();
    goto LABEL_17;
  }

LABEL_13:
  v20 = IOSurfaceLock(a1, 1u, 0);
  if (v20)
  {
    v24 = v20;
    BWSampleBufferCreateFromEncodedImageSurface_cold_2();
  }

  else
  {
    BaseAddress = IOSurfaceGetBaseAddress(a1);
    *&customBlockSource.version = 0;
    HIDWORD(customBlockSource.AllocateBlock) = 0;
    customBlockSource.FreeBlock = sbu_unlockAndReleaseIOSurface;
    customBlockSource.refCon = CFRetain(a1);
    v22 = *v15;
    v23 = CMBlockBufferCreateWithMemoryBlock(*v15, BaseAddress, a2, *MEMORY[0x1E695E498], &customBlockSource, 0, a2, 0, &blockBufferOut);
    if (v23)
    {
      v24 = v23;
      BWSampleBufferCreateFromEncodedImageSurface_cold_3(v23, a1);
    }

    else
    {
      *&sampleTimingArray.duration.value = *MEMORY[0x1E6960C70];
      sampleTimingArray.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
      sampleTimingArray.presentationTimeStamp = *a5;
      sampleTimingArray.decodeTimeStamp = sampleTimingArray.duration;
      v24 = CMSampleBufferCreate(v22, blockBufferOut, 1u, 0, 0, *formatDescriptionOut, 1, 1, &sampleTimingArray, 1, &sampleSizeArray, a7);
      if (v24)
      {
        BWSampleBufferCreateFromEncodedImageSurface_cold_4();
      }
    }
  }

LABEL_17:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v24;
}

void sbu_unlockAndReleaseIOSurface(__IOSurface *a1)
{
  if (a1)
  {
    IOSurfaceUnlock(a1, 1u, 0);

    CFRelease(a1);
  }
}

uint64_t BWSampleBufferCreateForDroppedFrame(CMTime *a1, CMFormatDescriptionRef formatDescription, void *a3, CMAttachmentBearerRef *a4)
{
  target = 0;
  if (!formatDescription)
  {
    BWSampleBufferCreateForDroppedFrame_cold_3(&sampleTimingArray);
    return LODWORD(sampleTimingArray.duration.value);
  }

  if (!a4)
  {
    BWSampleBufferCreateForDroppedFrame_cold_2(&sampleTimingArray);
    return LODWORD(sampleTimingArray.duration.value);
  }

  sampleTimingArray.presentationTimeStamp = *a1;
  *&sampleTimingArray.duration.value = *MEMORY[0x1E6960C70];
  sampleTimingArray.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
  sampleTimingArray.decodeTimeStamp = sampleTimingArray.duration;
  v6 = CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, formatDescription, 0, 1, &sampleTimingArray, 0, 0, &target);
  if (v6)
  {
    v10 = v6;
    BWSampleBufferCreateForDroppedFrame_cold_1();
    return v10;
  }

  if ([a3 isEqualToString:@"HighFrameRateAutoFocusDiscontinuity"])
  {
    v7 = *MEMORY[0x1E69605B8];
  }

  else
  {
    if (([a3 isEqualToString:@"VideoDeviceDiscontinuity"] & 1) == 0)
    {
      v9 = [a3 isEqualToString:0x1F219BED0];
      v7 = 0;
      v8 = MEMORY[0x1E69605D0];
      if (v9)
      {
        v8 = MEMORY[0x1E69605C8];
      }

      goto LABEL_11;
    }

    v7 = 0;
  }

  v8 = MEMORY[0x1E69605C0];
LABEL_11:
  if (*v8)
  {
    CMSetAttachment(target, *MEMORY[0x1E6960498], *v8, 1u);
    if (v7)
    {
      CMSetAttachment(target, *MEMORY[0x1E69604A0], v7, 1u);
    }
  }

  v10 = 0;
  *a4 = target;
  return v10;
}

uint64_t BWSampleBufferCreateFromDataBuffer(__CVBuffer *a1, __int128 *a2, CMMediaType a3, CFTypeRef *a4, void *a5)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  return BWSampleBufferCreateFromDataBufferWithNumberOfPoints(a1, &v6, a3, a4, a5, 0xFFFFFFFF);
}

uint64_t BWSampleBufferCreateFromDataBufferWithNumberOfPoints(__CVBuffer *a1, uint64_t a2, CMMediaType a3, CFTypeRef *a4, void *a5, unsigned int a6)
{
  v6 = a4;
  v39 = 0;
  v38 = 0;
  v37 = 0u;
  v35 = 0u;
  memset(v36, 0, sizeof(v36));
  formatDescriptionOut = 0;
  if (!a1)
  {
    BWSampleBufferCreateFromDataBufferWithNumberOfPoints_cold_5();
LABEL_37:
    v26 = 4294954516;
    goto LABEL_27;
  }

  if (!a4)
  {
    BWSampleBufferCreateFromDataBufferWithNumberOfPoints_cold_4();
    goto LABEL_37;
  }

  if (!a5)
  {
    BWSampleBufferCreateFromDataBufferWithNumberOfPoints_cold_3();
    goto LABEL_37;
  }

  v9 = *a4;
  v35 = *MEMORY[0x1E6960C70];
  *&v36[0] = *(MEMORY[0x1E6960C70] + 16);
  *(v36 + 8) = *a2;
  *(&v36[1] + 1) = *(a2 + 16);
  v37 = v35;
  v38 = *&v36[0];
  v10 = *MEMORY[0x1E69627A8];
  v11 = *MEMORY[0x1E69600A0];
  v12 = *MEMORY[0x1E695E480];
  v13 = 1;
  v14 = v9;
  do
  {
    if (!v14)
    {
      if (a3 == 1885564004)
      {
        v32[0] = v10;
        v15 = [MEMORY[0x1E696AD98] numberWithInt:a6];
        v32[1] = v11;
        v33[0] = v15;
        v33[1] = MEMORY[0x1E695E0F8];
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
      }

      else
      {
        v16 = 0;
      }

      v17 = MEMORY[0x1B26EF550](a1);
      v18 = CMFormatDescriptionCreate(v12, a3, v17, v16, &formatDescriptionOut);
      if (v18)
      {
        v26 = v18;
        BWSampleBufferCreateFromDataBufferWithNumberOfPoints_cold_1();
        goto LABEL_26;
      }
    }

    ReadyForCVDataBuffer = CMSampleBufferCreateReadyForCVDataBuffer();
    v21 = ReadyForCVDataBuffer == -12743 && formatDescriptionOut == 0;
    if (ReadyForCVDataBuffer && !v21)
    {
      v26 = ReadyForCVDataBuffer;
      BWSampleBufferCreateFromDataBufferWithNumberOfPoints_cold_2();
      goto LABEL_26;
    }

    if (v21)
    {
      v14 = 0;
    }

    if (v39)
    {
      break;
    }

    v22 = (v9 != 0) & v13;
    v13 = 0;
  }

  while ((v22 & 1) != 0);
  v23 = *off_1E798A448;
  v24 = CVBufferCopyAttachment(a1, *off_1E798A448, 0);
  if (v24)
  {
    v25 = CFAutorelease(v24);
    if (v25)
    {
      CMSetAttachment(v39, v23, v25, 1u);
    }
  }

  v26 = 0;
  *a5 = v39;
LABEL_26:
  v6 = a4;
LABEL_27:
  v27 = formatDescriptionOut;
  if (formatDescriptionOut)
  {
    if (*v6)
    {
      CFRelease(*v6);
      v27 = formatDescriptionOut;
    }

    *v6 = v27;
  }

  return v26;
}

CFTypeRef BWSampleBufferGetCVDataBuffer(opaqueCMSampleBuffer *a1)
{
  DataBuffer = CMSampleBufferGetDataBuffer(a1);
  v2 = *MEMORY[0x1E695FF60];

  return CMGetAttachment(DataBuffer, v2, 0);
}

uint64_t BWSampleBufferCreateAttachedMediaFromPixelBuffer(opaqueCMSampleBuffer *a1, uint64_t a2, __CVBuffer *a3, CFTypeRef *a4, uint64_t a5, void *a6, int a7, void *a8)
{
  memset(&timingArrayOut, 0, sizeof(timingArrayOut));
  v34 = 0;
  if (!a1)
  {
    BWSampleBufferCreateAttachedMediaFromPixelBuffer_cold_5();
LABEL_28:
    v26 = 4294954516;
    goto LABEL_20;
  }

  if (!a2)
  {
    BWSampleBufferCreateAttachedMediaFromPixelBuffer_cold_4();
    goto LABEL_28;
  }

  if (!a3)
  {
    BWSampleBufferCreateAttachedMediaFromPixelBuffer_cold_3();
    goto LABEL_28;
  }

  SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(a1, 1, &timingArrayOut, 0);
  if (SampleTimingInfoArray)
  {
    v26 = SampleTimingInfoArray;
    BWSampleBufferCreateAttachedMediaFromPixelBuffer_cold_1();
  }

  else
  {
    sampleTiming = timingArrayOut;
    v16 = BWSampleBufferCreateFromPixelBufferWithTimingInfo(a3, &sampleTiming, a4, &v34);
    if (v16)
    {
      v26 = v16;
      BWSampleBufferCreateAttachedMediaFromPixelBuffer_cold_2();
    }

    else
    {
      v17 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a5];
      v18 = *off_1E798B540;
      v19 = [v17 objectForKeyedSubscript:*off_1E798B540];
      v20 = *off_1E798A3C8;
      if (!v19)
      {
        [v17 setObject:objc_msgSend(CMGetAttachment(a1 forKeyedSubscript:{*off_1E798A3C8, 0), "objectForKeyedSubscript:", v18), v18}];
      }

      CMSetAttachment(v34, v20, v17, 1u);
      if (a7)
      {
        BWPropagateZoomInformationToAttachedMediaSampleBuffer(a1, v34);
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v21 = [a6 countByEnumeratingWithState:&v29 objects:v28 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v30;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v30 != v23)
            {
              objc_enumerationMutation(a6);
            }

            CMSetAttachment(v34, *(*(&v29 + 1) + 8 * i), [a6 objectForKeyedSubscript:*(*(&v29 + 1) + 8 * i)], 1u);
          }

          v22 = [a6 countByEnumeratingWithState:&v29 objects:v28 count:16];
        }

        while (v22);
      }

      if (!CMGetAttachment(v34, @"StillSettings", 0))
      {
        v25 = CMGetAttachment(a1, @"StillSettings", 0);
        CMSetAttachment(v34, @"StillSettings", v25, 1u);
      }

      v26 = 0;
    }
  }

LABEL_20:
  if (a8)
  {
    *a8 = v34;
  }

  else if (v34)
  {
    CFRelease(v34);
  }

  return v26;
}

uint64_t BWSampleBufferSetAttachedMediaFromPixelBuffer(opaqueCMSampleBuffer *a1, uint64_t a2, __CVBuffer *a3, CFTypeRef *a4, uint64_t a5, void *a6, int a7)
{
  cf = 0;
  v9 = BWSampleBufferCreateAttachedMediaFromPixelBuffer(a1, a2, a3, a4, a5, a6, a7, &cf);
  if (v9)
  {
    BWSampleBufferSetAttachedMediaFromPixelBuffer_cold_1();
  }

  else
  {
    BWSampleBufferSetAttachedMedia(a1, a2, cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v9;
}

uint64_t BWSampleBufferAttachmentsGetAttachedMedia(void *a1, uint64_t a2)
{
  v3 = [a1 objectForKeyedSubscript:@"AttachedMedia"];

  return [v3 objectForKeyedSubscript:a2];
}

uint64_t BWSampleBufferFilterWithAllowedAttachedMedia(const void *a1, void *a2)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [CMGetAttachment(a1 @"AttachedMedia"];
  result = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (([a2 containsObject:v9] & 1) == 0)
        {
          BWSampleBufferSetAttachedMedia(a1, v9, 0);
        }

        ++v8;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t BWSampleBufferFilterWithDisallowedAttachedMedia(const void *a1, void *a2)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [CMGetAttachment(a1 @"AttachedMedia"];
  result = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if ([a2 containsObject:v9])
        {
          BWSampleBufferSetAttachedMedia(a1, v9, 0);
        }

        ++v8;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

void BWSampleBufferPropagateAttachedMedia(const void *a1, const void *a2)
{
  v3 = BWSampleBufferDeepCopyDictionaryOfAttachedMedia(a1);
  if (v3)
  {
    v4 = v3;
    CMSetAttachment(a2, @"AttachedMedia", v3, 1u);
  }
}

CFTypeRef BWSampleBufferCreateWithSwappingPrimaryAndAttachedMedia(const void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [CMGetAttachment(a1 @"AttachedMedia"];
  if (!v6)
  {
    return 0;
  }

  v7 = CFRetain(v6);
  if (v7)
  {
    BWSampleBufferSetAttachedMedia(a1, a3, 0);
    BWSampleBufferPropagateAttachedMedia(a1, v7);
    CMRemoveAttachment(a1, @"AttachedMedia");
    BWSampleBufferSetAttachedMedia(v7, a2, a1);
  }

  return v7;
}

uint64_t BWMetadataAttachmentKeyForAttachedMediaKey(void *a1)
{
  if ([a1 isEqualToString:@"Depth"])
  {
    v2 = off_1E798D2B8;
    return *v2;
  }

  if ([a1 isEqualToString:0x1F21AABB0])
  {
    v2 = off_1E798D2D8;
    return *v2;
  }

  if (([a1 isEqualToString:@"PersonSemanticsHair"] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"PersonSemanticsSkin") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"PersonSemanticsTeeth") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"PersonSemanticsGlasses") & 1) != 0 || objc_msgSend(a1, "isEqualToString:", 0x1F21AAD30))
  {
    v2 = off_1E798D2E0;
    return *v2;
  }

  return 0;
}

uint64_t BWSampleBufferGetPortType(const void *a1)
{
  v1 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  v2 = *off_1E798B540;

  return [v1 objectForKeyedSubscript:v2];
}

__CFString *BWStillImageSampleBufferToDisplayString(const void *a1)
{
  if (FigDebugIsInternalBuild())
  {
    return &stru_1F216A3D0;
  }

  return BWStillImageSampleBufferToShortDisplayString(a1);
}

uint64_t BWStillImageSampleBufferToShortDisplayString(const void *a1)
{
  v2 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  v3 = [v2 objectForKeyedSubscript:*off_1E798B540];
  v25 = BWPortTypeToDisplayString(v3, v4);
  v24 = [objc_msgSend(v2 objectForKeyedSubscript:{*off_1E798B558), "BOOLValue"}];
  v5 = *off_1E798B760;
  if ([v2 objectForKeyedSubscript:*off_1E798B760])
  {
    v23 = [objc_msgSend(v2 objectForKeyedSubscript:{v5), "intValue"}];
  }

  else
  {
    v23 = 0xFFFFFFFFLL;
  }

  v6 = [objc_msgSend(v2 objectForKeyedSubscript:{*off_1E798B1B8), "intValue"}];
  v7 = [objc_msgSend(v2 objectForKeyedSubscript:{*off_1E798A538), "intValue"}];
  v8 = [objc_msgSend(v2 objectForKeyedSubscript:{*off_1E798B5E8), "BOOLValue"}];
  v9 = [objc_msgSend(v2 objectForKeyedSubscript:{*off_1E798B2C8), "BOOLValue"}];
  v10 = [objc_msgSend(v2 objectForKeyedSubscript:{*off_1E798B150), "BOOLValue"}];
  v11 = [objc_msgSend(v2 objectForKeyedSubscript:{*off_1E798B5C8), "BOOLValue"}];
  v12 = [objc_msgSend(v2 objectForKeyedSubscript:{*off_1E798B708), "longValue"}];
  if (v10)
  {
    v13 = @"AmbientFL";
  }

  else
  {
    v13 = @"Aux";
  }

  if (v10)
  {
    if (!v8)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v11)
  {
    goto LABEL_23;
  }

  if (!v9)
  {
    if (v24)
    {
      v13 = @"PB";
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if ((v23 & 0x80000000) != 0)
    {
      if (v6 < 1)
      {
        v13 = @"SF";
        if (!v8)
        {
          goto LABEL_25;
        }

LABEL_24:
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, SIFR", v13];
        goto LABEL_25;
      }

      if (v7 < 1)
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"B%i", v6, v21];
      }

      else
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"G%iB%i", v7, v6];
      }
    }

    else
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TM%i", v23, v21];
    }

    v13 = v14;
LABEL_23:
    if (!v8)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if ([objc_msgSend(v2 objectForKeyedSubscript:{*off_1E798B350), "BOOLValue"}])
  {
    v13 = @"FL";
  }

  else
  {
    v13 = @"PF";
  }

  if (v8)
  {
    goto LABEL_24;
  }

LABEL_25:
  v15 = CMGetAttachment(a1, @"StillImageCaptureFrameFlags", 0);
  v16 = CMGetAttachment(a1, @"StillImageProcessingFlags", 0);
  if (v15 | v16)
  {
    v17 = v16;
    v18 = MEMORY[0x1E696AEC0];
    v19 = BWStillImageCaptureFrameFlagsToShortString([v15 unsignedLongLongValue]);
    v13 = [v18 stringWithFormat:@"%@ (%@ - %@)", v13, v19, FigAppleMakerNoteStillImageProcessingFlagsToShortString(objc_msgSend(v17, "unsignedIntValue"))];
  }

  if (v25)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@): CID:%ld", v13, v25, v12];
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: CID:%ld", v13, v12, v22];
  }
}

void sub_1ACAA404C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1ACAA41BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t FigExternalStorageDeviceManagerServerStart()
{
  v3[0] = 1;
  v3[1] = FigExternalStorageDeviceManagerServerReplyingMessageHandler;
  v3[2] = FigExternalStorageDeviceManagerServerNoReplyMessageHandler;
  memset(&v3[3], 0, 24);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6963408], *MEMORY[0x1E695E4D0]);
  v1 = FigCaptureXPCServerStart("com.apple.coremedia.externalstoragedevicemanager.xpc", v3, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v1;
}

uint64_t FigExternalStorageDeviceManagerServerReplyingMessageHandler(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v6 = OpCode;
    FigExternalStorageDeviceManagerServerReplyingMessageHandler_cold_1();
  }

  else
  {
    xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    value = 0;
    v4 = FigXPCServerLookupAndRetainAssociatedObject();
    if (v4)
    {
      v6 = v4;
      FigExternalStorageDeviceManagerServerReplyingMessageHandler_cold_2();
    }

    else
    {
      FigExternalStorageDeviceManagerServerReplyingMessageHandler_cold_4();
      v6 = 4294954513;
    }

    fig_log_get_emitter();
    FigDebugAssert3();
  }

  return v6;
}

uint64_t FigExternalStorageDeviceManagerServerNoReplyMessageHandler(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v4 = OpCode;
    FigExternalStorageDeviceManagerServerNoReplyMessageHandler_cold_1();
  }

  else
  {
    xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    return 4294951138;
  }

  return v4;
}

uint64_t HandleExternalStorageDeviceManagerBeginMonitoring(uint64_t a1, uint64_t a2)
{
  ConnectionRefcon = FigXPCServerGetConnectionRefcon();
  if (!ConnectionRefcon)
  {
    HandleExternalStorageDeviceManagerBeginMonitoring_cold_2(&v8);
    return v8;
  }

  v4 = ConnectionRefcon;
  FigSimpleMutexLock();
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v5)
  {
    v6 = 4294954514;
    goto LABEL_7;
  }

  v6 = v5(a2, 0, v4, externalStorageDeviceManagerCallback);
  if (v6)
  {
LABEL_7:
    HandleExternalStorageDeviceManagerBeginMonitoring_cold_1();
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableURLArray(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  cf = 0;
  ConnectionRefcon = FigXPCServerGetConnectionRefcon();
  if (!ConnectionRefcon)
  {
    HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableURLArray_cold_6(&v13);
    v9 = v13;
    goto LABEL_11;
  }

  v4 = ConnectionRefcon;
  FigSimpleMutexLock();
  if (*(v4 + 28) == 2)
  {
    v5 = FigXPCMessageCopyCFArray();
    if (v5)
    {
      v9 = v5;
      HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableURLArray_cold_2();
    }

    else
    {
      v6 = FigXPCMessageCopyCFString();
      if (v6)
      {
        v9 = v6;
        HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableURLArray_cold_3();
      }

      else
      {
        v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v7)
        {
          v8 = v7(a2, 0, 0, cf, &v11);
          if (!v8)
          {
            v9 = FigXPCMessageSetCFArray();
            if (v9)
            {
              HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableURLArray_cold_4();
            }

            goto LABEL_9;
          }

          v9 = v8;
        }

        else
        {
          v9 = 4294954514;
        }

        HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableURLArray_cold_5();
      }
    }
  }

  else
  {
    HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableURLArray_cold_1(&v13);
    v9 = v13;
  }

LABEL_9:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_11:
  if (v11)
  {
    CFRelease(v11);
  }

  return v9;
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  cf = 0;
  ConnectionRefcon = FigXPCServerGetConnectionRefcon();
  if (!ConnectionRefcon)
  {
    HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_6(&v13);
    v9 = v13;
    goto LABEL_11;
  }

  v4 = ConnectionRefcon;
  FigSimpleMutexLock();
  if (*(v4 + 28) == 2)
  {
    v5 = FigXPCMessageCopyCFArray();
    if (v5)
    {
      v9 = v5;
      HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_2();
    }

    else
    {
      v6 = FigXPCMessageCopyCFString();
      if (v6)
      {
        v9 = v6;
        HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_3();
      }

      else
      {
        v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v7)
        {
          v8 = v7(a2, 0, 0, cf, &v11);
          if (!v8)
          {
            v9 = FigXPCMessageSetCFArray();
            if (v9)
            {
              HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_4();
            }

            goto LABEL_9;
          }

          v9 = v8;
        }

        else
        {
          v9 = 4294954514;
        }

        HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_5();
      }
    }
  }

  else
  {
    HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_1(&v13);
    v9 = v13;
  }

LABEL_9:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_11:
  if (v11)
  {
    CFRelease(v11);
  }

  return v9;
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceProperty()
{
  v4 = 0;
  cf = 0;
  v3 = 0;
  if (FigXPCServerGetConnectionRefcon())
  {
    FigSimpleMutexLock();
    v0 = FigXPCMessageCopyCFString();
    if (v0)
    {
      v2 = v0;
      HandleExternalStorageDeviceManagerCopyStorageDeviceProperty_cold_1();
    }

    else
    {
      HandleExternalStorageDeviceManagerCopyStorageDeviceProperty_cold_5(&v6);
      v2 = v6;
    }

    FigSimpleMutexUnlock();
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    HandleExternalStorageDeviceManagerCopyStorageDeviceProperty_cold_6(&v6);
    v2 = v6;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v2;
}

uint64_t HandleExternalStorageDeviceManagerCheckAuthorizationStatus(uint64_t a1, int a2, uint64_t a3)
{
  ConnectionRefcon = FigXPCServerGetConnectionRefcon();
  if (!ConnectionRefcon)
  {
    HandleExternalStorageDeviceManagerCheckAuthorizationStatus_cold_2(v13);
    return LODWORD(v13[0]);
  }

  v7 = ConnectionRefcon;
  FigSimpleMutexLock();
  if (*(v7 + 28))
  {
    v8 = 0;
LABEL_6:
    v10 = 0;
    if (!a2)
    {
      if (a3)
      {
        [MEMORY[0x1E696AD98] numberWithInt:?];
        v10 = FigXPCMessageSetCFNumber();
        if (v10)
        {
          HandleExternalStorageDeviceManagerCheckAuthorizationStatus_cold_1();
        }
      }
    }

    goto LABEL_11;
  }

  memset(v13, 0, sizeof(v13));
  xpc_connection_get_audit_token();
  memset(v12, 0, sizeof(v12));
  v8 = FigCaptureCopyClientCodeSigningIdentifier(v12);
  v9 = [objc_msgSend(getICAccessManagerClass() connection:a1 stateForAccessType:{&unk_1F2243F60), "integerValue"}];
  if (v9 <= 2)
  {
    *(v7 + 28) = v9;
    goto LABEL_6;
  }

  fig_log_get_emitter();
  FigDebugAssert3();
  fig_log_get_emitter();
  v10 = FigSignalErrorAtGM();
LABEL_11:
  FigSimpleMutexUnlock();
  if (v8)
  {
  }

  return v10;
}

uint64_t HandleExternalStorageDeviceManagerRequestAuthorization(uint64_t a1)
{
  ConnectionRefcon = FigXPCServerGetConnectionRefcon();
  if (ConnectionRefcon)
  {
    v3 = ConnectionRefcon;
    FigSimpleMutexLock();
    global_queue = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __HandleExternalStorageDeviceManagerRequestAuthorization_block_invoke;
    block[3] = &unk_1E7990178;
    block[4] = a1;
    block[5] = v3;
    dispatch_async(global_queue, block);
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    HandleExternalStorageDeviceManagerRequestAuthorization_cold_1(&v7);
    return v7;
  }
}

void figExternalStorageDeviceManager_servedObjectRefconDestructor(uint64_t a1)
{
  if (a1)
  {
    _disposeExternalStorageDeviceManagerServerStorage(a1);
  }
}

void _disposeExternalStorageDeviceManagerServerStorage(uint64_t a1)
{
  if (a1)
  {
    FigSimpleMutexLock();
    *(a1 + 24) = 1;
    v2 = *(a1 + 32);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 32) = 0;
    }

    FigSimpleMutexUnlock();
    FigSimpleMutexDestroy();

    free(a1);
  }
}

uint64_t externalStorageDeviceManagerCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    FigSimpleMutexLock();
    if (!*(a3 + 24))
    {
      if (FigXPCCreateBasicMessage())
      {
        externalStorageDeviceManagerCallback_cold_1();
      }

      else if (FigXPCMessageSetCFArray())
      {
        externalStorageDeviceManagerCallback_cold_2();
      }

      else if (FigXPCMessageSetCFError())
      {
        externalStorageDeviceManagerCallback_cold_3();
      }

      else
      {
        xpc_connection_send_message(*(a3 + 8), 0);
      }
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    externalStorageDeviceManagerCallback_cold_4();
  }

  return FigXPCRelease();
}

uint64_t getICAccessManagerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__20;
  v0 = getICAccessManagerClass_softClass;
  v7 = __Block_byref_object_dispose__20;
  v8 = getICAccessManagerClass_softClass;
  if (!getICAccessManagerClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getICAccessManagerClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getICAccessManagerClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAA5730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getICAccessManagerClass_block_invoke(uint64_t a1)
{
  v3[0] = 0;
  if (!ImageCaptureCoreLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ImageCaptureCoreLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7997270;
    v5 = 0;
    ImageCaptureCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ImageCaptureCoreLibraryCore_frameworkLibrary)
  {
    __getICAccessManagerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("ICAccessManager");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getICAccessManagerClass_block_invoke_cold_1();
  }

  getICAccessManagerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __ImageCaptureCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ImageCaptureCoreLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __HandleExternalStorageDeviceManagerRequestAuthorization_block_invoke(uint64_t a1)
{
  xpc_connection_get_audit_token();
  v2 = *(a1 + 40);
  if (!*(v2 + 28))
  {
    *message = 0u;
    v16 = 0u;
    IsRunningInXCTest = FigCaptureClientIsRunningInXCTest(message);
    *message = 0u;
    v16 = 0u;
    IsRunningInCameraOrDerivative = FigCaptureClientIsRunningInCameraOrDerivative(message);
    *message = 0u;
    v16 = 0u;
    IsInternalCommandLineTool = FigCaptureClientIsInternalCommandLineTool(message);
    v2 = *(a1 + 40);
    if (IsRunningInCameraOrDerivative || IsRunningInXCTest || IsInternalCommandLineTool)
    {
      *(v2 + 28) = 2;
    }

    else
    {
      FigSimpleMutexLock();
      *message = 0u;
      v16 = 0u;
      v6 = FigCaptureCopyClientCodeSigningIdentifier(message);
      if (v6)
      {
        v7 = v6;
        v19 = 0;
        v8 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v6 allowPlaceholder:0 error:&v19];
        v9 = v8;
        if (v8)
        {
          if (v19)
          {
            __HandleExternalStorageDeviceManagerRequestAuthorization_block_invoke_cold_1();
          }

          else
          {
            v10 = [v8 localizedName];
            v14[0] = *MEMORY[0x1E695EE58];
            message[0] = [MEMORY[0x1E696AEC0] stringWithFormat:objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "bundleWithIdentifier:", @"com.apple.CMCapture", "localizedStringForKey:value:table:", @"SSD_APP_ACCESS_REQUEST_HEADER", &stru_1F216A3D0, @"FigExternalStorageDeviceManagerServer", v10];
            v14[1] = *MEMORY[0x1E695EE60];
            message[1] = [objc_msgSend(MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.CMCapture", "localizedStringForKey:value:table:", @"SSD_APP_ACCESS_REQUEST_MESSAGE", &stru_1F216A3D0, @"FigExternalStorageDeviceManagerServer"}];
            v14[2] = *MEMORY[0x1E695EE78];
            *&v16 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.CMCapture", "localizedStringForKey:value:table:", @"SSD_ALLOW_BUTTON", &stru_1F216A3D0, @"FigExternalStorageDeviceManagerServer"}];
            v14[3] = *MEMORY[0x1E695EE70];
            *(&v16 + 1) = [objc_msgSend(MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.CMCapture", "localizedStringForKey:value:table:", @"SSD_DONT_ALLOW_BUTTON", &stru_1F216A3D0, @"FigExternalStorageDeviceManagerServer"}];
            v14[4] = *MEMORY[0x1E695EE68];
            v17 = [MEMORY[0x1E696AD98] numberWithBool:1];
            v14[5] = *MEMORY[0x1E69D44E8];
            v18 = [MEMORY[0x1E696AD98] numberWithBool:1];
            v11 = [getICAccessManagerClass() captureUserIntentForBundleIdentifier:v7 withNotification:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", message, v14, 6)}];
            [getICAccessManagerClass() addBundleIdentifier:v7];
            ICAccessManagerClass = getICAccessManagerClass();
            if (v11)
            {
              [ICAccessManagerClass updateBundleIdentifier:v7 accessType:1 withState:2];
              *(v2 + 28) = 2;
            }

            else
            {
              [ICAccessManagerClass updateBundleIdentifier:v7 accessType:1 withState:1];
              *(v2 + 28) = 1;
            }
          }
        }

        else
        {
          __HandleExternalStorageDeviceManagerRequestAuthorization_block_invoke_cold_2();
        }

        FigSimpleMutexUnlock();

        if (v9)
        {
        }
      }

      else
      {
        __HandleExternalStorageDeviceManagerRequestAuthorization_block_invoke_cold_3();
      }

      v2 = *(a1 + 40);
    }
  }

  message[0] = 0;
  FigSimpleMutexLock();
  if (!*(v2 + 24))
  {
    if (FigXPCCreateBasicMessage())
    {
      __HandleExternalStorageDeviceManagerRequestAuthorization_block_invoke_cold_4();
    }

    else
    {
      [MEMORY[0x1E696AD98] numberWithInt:*(v2 + 28)];
      if (FigXPCMessageSetCFNumber())
      {
        __HandleExternalStorageDeviceManagerRequestAuthorization_block_invoke_cold_5();
      }

      else
      {
        xpc_connection_send_message(*(v2 + 8), message[0]);
      }
    }
  }

  FigSimpleMutexUnlock();
  return FigXPCRelease();
}

uint64_t FigCaptureDeferredContainerManagerRemoteCopyContainerManager()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __containerManager_ensureClientEstablished_block_invoke;
  block[3] = &unk_1E798FC38;
  block[4] = &v4;
  if (containerManager_ensureClientEstablished_onceToken != -1)
  {
    dispatch_once(&containerManager_ensureClientEstablished_onceToken, block);
  }

  v0 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    FigCaptureDeferredContainerManagerRemoteCopyContainerManager_cold_1();
LABEL_15:
    uint64 = 0;
    goto LABEL_9;
  }

  if (FigXPCCreateBasicMessage())
  {
    FigCaptureDeferredContainerManagerRemoteCopyContainerManager_cold_2();
    goto LABEL_15;
  }

  if (FigXPCRemoteClientSendSyncMessageCreatingReply())
  {
    FigCaptureDeferredContainerManagerRemoteCopyContainerManager_cold_3();
    goto LABEL_15;
  }

  uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
  if (!uint64)
  {
    FigCaptureDeferredContainerManagerRemoteCopyContainerManager_cold_5();
    goto LABEL_9;
  }

  block[0] = 0;
  FigCaptureDeferredContainerManagerGetClassID();
  if (CMDerivedObjectCreate())
  {
    FigCaptureDeferredContainerManagerRemoteCopyContainerManager_cold_4();
    goto LABEL_15;
  }

  *CMBaseObjectGetDerivedStorage() = uint64;
  FigXPCRemoteClientAssociateObject();
  uint64 = block[0];
LABEL_9:
  FigXPCRelease();
  FigXPCRelease();
  return uint64;
}

uint64_t FigCaptureDeferredContainerManagerRemoteIsConnectionValid(uint64_t a1)
{
  if (!a1)
  {
    FigCaptureDeferredContainerManagerRemoteIsConnectionValid_cold_2();
    return 0;
  }

  if (*(CMBaseObjectGetDerivedStorage() + 9))
  {
    FigCaptureDeferredContainerManagerRemoteIsConnectionValid_cold_1();
    return 0;
  }

  return 1;
}

void __containerManager_ensureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"ServerConnectionDied");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633C0], *MEMORY[0x1E695E4D0]);
  sDeadServerNotificationQueue_0 = dispatch_queue_create("com.apple.coremedia.capturedeferredcontainermanager.deadserver-notifications", 0);
  *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t containerManager_deadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v3 = result;
  if (!a1)
  {
    result = containerManager_deadConnectionCallback_cold_1();
  }

  *(v3 + 9) = 1;
  return result;
}

void __containerManager_deadServerCallback_block_invoke()
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, @"ServerConnectionDied", 0, 0, 0);
}

uint64_t captureDeferredContainerManagerRemote_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    return 0;
  }

  *(DerivedStorage + 8) = 1;
  if (*(DerivedStorage + 9))
  {
    return 0;
  }

  v3 = FigXPCCreateBasicMessage();
  if (v3)
  {
    v1 = v3;
    captureDeferredContainerManagerRemote_Invalidate_cold_1();
  }

  else
  {
    v1 = FigXPCRemoteClientSendSyncMessage();
    if (v1)
    {
      captureDeferredContainerManagerRemote_Invalidate_cold_2();
    }
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v1;
}

uint64_t captureDeferredContainerManagerRemote_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  captureDeferredContainerManagerRemote_Invalidate();
  result = sCaptureDeferredContainerManagerRemoteClient;
  if (sCaptureDeferredContainerManagerRemoteClient)
  {
    result = FigXPCRemoteClientDisassociateObject();
  }

  if (!*(DerivedStorage + 9))
  {
    if (FigXPCCreateBasicMessage())
    {
      captureDeferredContainerManagerRemote_Finalize_cold_1();
    }

    else if (FigXPCRemoteClientSendSyncMessage())
    {
      captureDeferredContainerManagerRemote_Finalize_cold_2();
    }

    FigXPCRelease();
    return FigXPCRemoteClientKillServerOnTimeout();
  }

  return result;
}

__CFString *captureDeferredContainerManagerRemote_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 8))
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptureDeferredContainerManagerRemote %p retainCount: %ld%s allocator: %p, objectID: %lld>", a1, v5, v6, v7, *DerivedStorage);
  return Mutable;
}

uint64_t captureDeferredContainerManagerRemote_CopyContainerIdentifiers(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (captureDeferredContainerManagerRemote_createContainerManagerMessage(a1, 1684235113, a2, 0, &v3))
  {
    captureDeferredContainerManagerRemote_CopyContainerIdentifiers_cold_1();
  }

  else if (FigXPCRemoteClientSendSyncMessageCreatingReply())
  {
    captureDeferredContainerManagerRemote_CopyContainerIdentifiers_cold_2();
  }

  else if (FigXPCMessageCopyCFObject())
  {
    captureDeferredContainerManagerRemote_CopyContainerIdentifiers_cold_3();
  }

  FigXPCRelease();
  FigXPCRelease();
  return 0;
}

uint64_t captureDeferredContainerManagerRemote_QueryContainerStatus(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v8 = 0;
  if (a4)
  {
    v5 = captureDeferredContainerManagerRemote_createContainerManagerMessage(a1, 1684238691, a2, a3, &v8);
    if (v5)
    {
      v6 = v5;
      captureDeferredContainerManagerRemote_QueryContainerStatus_cold_1();
    }

    else
    {
      v6 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (v6)
      {
        captureDeferredContainerManagerRemote_QueryContainerStatus_cold_2();
      }

      else
      {
        *a4 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615B0]);
      }
    }
  }

  else
  {
    captureDeferredContainerManagerRemote_QueryContainerStatus_cold_3();
    v6 = 4294951162;
  }

  FigXPCRelease();
  FigXPCRelease();
  return v6;
}

xpc_object_t captureDeferredContainerManagerRemote_CopyRemoteContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  if (captureDeferredContainerManagerRemote_createContainerManagerMessage(a1, 1684235107, a2, a3, &v6))
  {
    captureDeferredContainerManagerRemote_CopyRemoteContainer_cold_1();
LABEL_8:
    v4 = 0;
    goto LABEL_5;
  }

  if (FigXPCRemoteClientSendSyncMessageCreatingReply())
  {
    captureDeferredContainerManagerRemote_CopyRemoteContainer_cold_2();
    goto LABEL_8;
  }

  value = xpc_dictionary_get_value(0, *MEMORY[0x1E69615B0]);
  v4 = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    captureDeferredContainerManagerRemote_CopyRemoteContainer_cold_3();
  }

LABEL_5:
  FigXPCRelease();
  FigXPCRelease();
  return v4;
}

uint64_t captureDeferredContainerManagerRemote_ReleaseRemoteContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v3 = captureDeferredContainerManagerRemote_createContainerManagerMessage(a1, 1684238947, a2, a3, &v6);
  if (v3)
  {
    v4 = v3;
    captureDeferredContainerManagerRemote_ReleaseRemoteContainer_cold_1();
  }

  else
  {
    v4 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    if (v4)
    {
      captureDeferredContainerManagerRemote_ReleaseRemoteContainer_cold_2();
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v4;
}

uint64_t captureDeferredContainerManagerRemote_DeleteContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v3 = captureDeferredContainerManagerRemote_createContainerManagerMessage(a1, 1684235363, a2, a3, &v6);
  if (v3)
  {
    v4 = v3;
    captureDeferredContainerManagerRemote_DeleteContainer_cold_1();
  }

  else
  {
    v4 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    if (v4)
    {
      captureDeferredContainerManagerRemote_DeleteContainer_cold_2();
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v4;
}

uint64_t captureDeferredContainerManagerRemote_WaitForShaderCompilation(uint64_t a1)
{
  v4 = 0;
  v1 = captureDeferredContainerManagerRemote_createContainerManagerMessage(a1, 1684239223, 0, 0, &v4);
  if (v1)
  {
    v2 = v1;
    captureDeferredContainerManagerRemote_WaitForShaderCompilation_cold_1();
  }

  else
  {
    v2 = FigXPCRemoteClientSendSyncMessageWithNoTimeoutCreatingReply();
    if (v2)
    {
      captureDeferredContainerManagerRemote_WaitForShaderCompilation_cold_2();
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v2;
}

uint64_t captureDeferredContainerManagerRemote_createContainerManagerMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a5)
  {
    captureDeferredContainerManagerRemote_createContainerManagerMessage_cold_6();
    return 4294954516;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    captureDeferredContainerManagerRemote_createContainerManagerMessage_cold_1(&v14);
    goto LABEL_15;
  }

  if (*(DerivedStorage + 9))
  {
    captureDeferredContainerManagerRemote_createContainerManagerMessage_cold_2(&v14);
LABEL_15:
    v12 = v14;
    if (v14)
    {
      fig_log_get_emitter();
      FigDebugAssert3();
      return v12;
    }
  }

  v9 = FigXPCCreateBasicMessage();
  if (v9)
  {
    v12 = v9;
    captureDeferredContainerManagerRemote_createContainerManagerMessage_cold_3();
  }

  else if (a3 && (v10 = FigXPCMessageSetCFString(), v10))
  {
    v12 = v10;
    captureDeferredContainerManagerRemote_createContainerManagerMessage_cold_4();
  }

  else if (a4 && (v11 = FigXPCMessageSetCFString(), v11))
  {
    v12 = v11;
    captureDeferredContainerManagerRemote_createContainerManagerMessage_cold_5();
  }

  else
  {
    v12 = 0;
    *a5 = 0;
  }

  return v12;
}

id udp_createUBStatisticsFromFrameStatistics(objc_class *a1, void *a2, uint64_t a3)
{
  v5 = objc_alloc_init(a1);
  *&v6 = vcvts_n_f32_u32([a2 conversionGain], 0x10uLL);
  [v5 setConversionGain:v6];
  *&v7 = vcvts_n_f32_u32([a2 readNoise_1x], 0x10uLL);
  [v5 setReadNoise_1x:v7];
  *&v8 = vcvts_n_f32_u32([a2 readNoise_8x], 0x10uLL);
  [v5 setReadNoise_8x:v8];
  [a2 integrationTime];
  [v5 setIntegrationTime:?];
  *&v9 = vcvts_n_f32_u32([a2 agc], 8uLL);
  [v5 setAgc:v9];
  *&v10 = vcvts_n_f32_u32([a2 ispDGain], 8uLL);
  [v5 setIspDGain:v10];
  *&v11 = vcvts_n_f32_u32([a2 sensorDGain], 8uLL);
  [v5 setSensorDGain:v11];
  [a2 ispDGainRangeExpansionFactor];
  [v5 setIspDGainRangeExpansionFactor:?];
  [a2 gain];
  [v5 setGain:?];
  [v5 setAeLimitsReached:{objc_msgSend(a2, "aeLimitsReached")}];
  *&v12 = [a2 aeAverage];
  [v5 setAeAverage:v12];
  *&v13 = [a2 aeTarget];
  [v5 setAeTarget:v13];
  [v5 setMotionFromAEMatrix:{objc_msgSend(a2, "motionFromAEMatrix")}];
  [v5 setStationary:a3];
  [a2 motionDataBiasErrorEstimate];
  [v5 setMotionDataBiasErrorEstimate:?];
  if ([a2 aeStatistics])
  {
    [v5 setAeThumbnail:{objc_msgSend(objc_msgSend(a2, "aeStatistics"), "objectForKeyedSubscript:", *off_1E798AA28)}];
    [v5 setAeThumbnailWidth:{objc_msgSend(objc_msgSend(objc_msgSend(a2, "aeStatistics"), "objectForKeyedSubscript:", *off_1E798AA38), "intValue")}];
    [v5 setAeThumbnailHeight:{objc_msgSend(objc_msgSend(objc_msgSend(a2, "aeStatistics"), "objectForKeyedSubscript:", *off_1E798AA30), "intValue")}];
  }

  return v5;
}

void *OUTLINED_FUNCTION_91_3()
{

  return [(BWNRFProcessorController *)v0 _generateGainMapMetadata:?];
}

uint64_t AppleCVALibraryCore()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = AppleCVALibraryCore_frameworkLibrary;
  v5 = AppleCVALibraryCore_frameworkLibrary;
  if (!AppleCVALibraryCore_frameworkLibrary)
  {
    v6 = xmmword_1E79972C8;
    v7 = *off_1E79972D8;
    v8 = 0;
    v3[3] = _sl_dlopen();
    AppleCVALibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1ACAAC144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AppleCVALibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  AppleCVALibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AppleCVALibrary()
{
  v1 = 0;
  result = AppleCVALibraryCore();
  if (!result)
  {
    AppleCVALibrary_cold_1(&v1);
  }

  return result;
}

uint64_t getkCVAFaceTracking_AddDebugInfoSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_AddDebugInfoSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_AddDebugInfoSymbolLoc_ptr;
  if (!getkCVAFaceTracking_AddDebugInfoSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_AddDebugInfo");
    getkCVAFaceTracking_AddDebugInfoSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAC2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_AddDebugInfo()
{
  v0 = getkCVAFaceTracking_AddDebugInfoSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_AddDebugInfo_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_AddMeshSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_AddMeshSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_AddMeshSymbolLoc_ptr;
  if (!getkCVAFaceTracking_AddMeshSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_AddMesh");
    getkCVAFaceTracking_AddMeshSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAC450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_AddMesh()
{
  v0 = getkCVAFaceTracking_AddMeshSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_AddMesh_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_CallbackSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_CallbackSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_CallbackSymbolLoc_ptr;
  if (!getkCVAFaceTracking_CallbackSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_Callback");
    getkCVAFaceTracking_CallbackSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAC5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_Callback()
{
  v0 = getkCVAFaceTracking_CallbackSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_Callback_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_CameraColorSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_CameraColorSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_CameraColorSymbolLoc_ptr;
  if (!getkCVAFaceTracking_CameraColorSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_CameraColor");
    getkCVAFaceTracking_CameraColorSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAC710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_CameraColor()
{
  v0 = getkCVAFaceTracking_CameraColorSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_CameraColor_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_CameraDepthSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_CameraDepthSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_CameraDepthSymbolLoc_ptr;
  if (!getkCVAFaceTracking_CameraDepthSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_CameraDepth");
    getkCVAFaceTracking_CameraDepthSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAC870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_CameraDepth()
{
  v0 = getkCVAFaceTracking_CameraDepthSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_CameraDepth_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_ColorSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_ColorSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_ColorSymbolLoc_ptr;
  if (!getkCVAFaceTracking_ColorSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_Color");
    getkCVAFaceTracking_ColorSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAC9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_Color()
{
  v0 = getkCVAFaceTracking_ColorSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_Color_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_ColorMetaDataSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_ColorMetaDataSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_ColorMetaDataSymbolLoc_ptr;
  if (!getkCVAFaceTracking_ColorMetaDataSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_ColorMetaData");
    getkCVAFaceTracking_ColorMetaDataSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAACB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_ColorMetaData()
{
  v0 = getkCVAFaceTracking_ColorMetaDataSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_ColorMetaData_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_ColorOnlySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_ColorOnlySymbolLoc_ptr;
  v6 = getkCVAFaceTracking_ColorOnlySymbolLoc_ptr;
  if (!getkCVAFaceTracking_ColorOnlySymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_ColorOnly");
    getkCVAFaceTracking_ColorOnlySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAACC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_ColorOnly()
{
  v0 = getkCVAFaceTracking_ColorOnlySymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_ColorOnly_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_DepthSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_DepthSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_DepthSymbolLoc_ptr;
  if (!getkCVAFaceTracking_DepthSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_Depth");
    getkCVAFaceTracking_DepthSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAACDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_Depth()
{
  v0 = getkCVAFaceTracking_DepthSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_Depth_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_DepthMetaDataSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_DepthMetaDataSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_DepthMetaDataSymbolLoc_ptr;
  if (!getkCVAFaceTracking_DepthMetaDataSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_DepthMetaData");
    getkCVAFaceTracking_DepthMetaDataSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAACF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_DepthMetaData()
{
  v0 = getkCVAFaceTracking_DepthMetaDataSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_DepthMetaData_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_DepthSourceSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_DepthSourceSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_DepthSourceSymbolLoc_ptr;
  if (!getkCVAFaceTracking_DepthSourceSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_DepthSource");
    getkCVAFaceTracking_DepthSourceSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAD0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_DepthSource()
{
  v0 = getkCVAFaceTracking_DepthSourceSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_DepthSource_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_DepthSource_PearlSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_DepthSource_PearlSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_DepthSource_PearlSymbolLoc_ptr;
  if (!getkCVAFaceTracking_DepthSource_PearlSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_DepthSource_Pearl");
    getkCVAFaceTracking_DepthSource_PearlSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAD210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_DepthSource_Pearl()
{
  v0 = getkCVAFaceTracking_DepthSource_PearlSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_DepthSource_Pearl_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_DepthSource_SMPRawSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_DepthSource_SMPRawSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_DepthSource_SMPRawSymbolLoc_ptr;
  if (!getkCVAFaceTracking_DepthSource_SMPRawSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_DepthSource_SMPRaw");
    getkCVAFaceTracking_DepthSource_SMPRawSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAD370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_DepthSource_SMPRaw()
{
  v0 = getkCVAFaceTracking_DepthSource_SMPRawSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_DepthSource_SMPRaw_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_DepthUnitSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_DepthUnitSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_DepthUnitSymbolLoc_ptr;
  if (!getkCVAFaceTracking_DepthUnitSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_DepthUnit");
    getkCVAFaceTracking_DepthUnitSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAD4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_DepthUnit()
{
  v0 = getkCVAFaceTracking_DepthUnitSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_DepthUnit_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_DetectedFaceAngleInfoRollSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_DetectedFaceAngleInfoRollSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_DetectedFaceAngleInfoRollSymbolLoc_ptr;
  if (!getkCVAFaceTracking_DetectedFaceAngleInfoRollSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_DetectedFaceAngleInfoRoll");
    getkCVAFaceTracking_DetectedFaceAngleInfoRollSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAD630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_DetectedFaceAngleInfoRoll()
{
  v0 = getkCVAFaceTracking_DetectedFaceAngleInfoRollSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_DetectedFaceAngleInfoRoll_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_DetectedFaceFaceIDSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_DetectedFaceFaceIDSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_DetectedFaceFaceIDSymbolLoc_ptr;
  if (!getkCVAFaceTracking_DetectedFaceFaceIDSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_DetectedFaceFaceID");
    getkCVAFaceTracking_DetectedFaceFaceIDSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAD790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_DetectedFaceFaceID()
{
  v0 = getkCVAFaceTracking_DetectedFaceFaceIDSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_DetectedFaceFaceID_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_DetectedFaceRectSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_DetectedFaceRectSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_DetectedFaceRectSymbolLoc_ptr;
  if (!getkCVAFaceTracking_DetectedFaceRectSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_DetectedFaceRect");
    getkCVAFaceTracking_DetectedFaceRectSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAD8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_DetectedFaceRect()
{
  v0 = getkCVAFaceTracking_DetectedFaceRectSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_DetectedFaceRect_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_DetectedFacesArraySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_DetectedFacesArraySymbolLoc_ptr;
  v6 = getkCVAFaceTracking_DetectedFacesArraySymbolLoc_ptr;
  if (!getkCVAFaceTracking_DetectedFacesArraySymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_DetectedFacesArray");
    getkCVAFaceTracking_DetectedFacesArraySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAADA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_DetectedFacesArray()
{
  v0 = getkCVAFaceTracking_DetectedFacesArraySymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_DetectedFacesArray_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_DisparityInvalidValueSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_DisparityInvalidValueSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_DisparityInvalidValueSymbolLoc_ptr;
  if (!getkCVAFaceTracking_DisparityInvalidValueSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_DisparityInvalidValue");
    getkCVAFaceTracking_DisparityInvalidValueSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAADBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_DisparityInvalidValue()
{
  v0 = getkCVAFaceTracking_DisparityInvalidValueSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_DisparityInvalidValue_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_DisparityNormalizationMultiplierSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_DisparityNormalizationMultiplierSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_DisparityNormalizationMultiplierSymbolLoc_ptr;
  if (!getkCVAFaceTracking_DisparityNormalizationMultiplierSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_DisparityNormalizationMultiplier");
    getkCVAFaceTracking_DisparityNormalizationMultiplierSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAADD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_DisparityNormalizationMultiplier()
{
  v0 = getkCVAFaceTracking_DisparityNormalizationMultiplierSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_DisparityNormalizationMultiplier_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_DisparityNormalizationOffsetSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_DisparityNormalizationOffsetSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_DisparityNormalizationOffsetSymbolLoc_ptr;
  if (!getkCVAFaceTracking_DisparityNormalizationOffsetSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_DisparityNormalizationOffset");
    getkCVAFaceTracking_DisparityNormalizationOffsetSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAADE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_DisparityNormalizationOffset()
{
  v0 = getkCVAFaceTracking_DisparityNormalizationOffsetSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_DisparityNormalizationOffset_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_ExtrinsicsSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_ExtrinsicsSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_ExtrinsicsSymbolLoc_ptr;
  if (!getkCVAFaceTracking_ExtrinsicsSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_Extrinsics");
    getkCVAFaceTracking_ExtrinsicsSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAADFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_Extrinsics()
{
  v0 = getkCVAFaceTracking_ExtrinsicsSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_Extrinsics_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_FaceIDSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_FaceIDSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_FaceIDSymbolLoc_ptr;
  if (!getkCVAFaceTracking_FaceIDSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_FaceID");
    getkCVAFaceTracking_FaceIDSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAE130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_FaceID()
{
  v0 = getkCVAFaceTracking_FaceIDSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_FaceID_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_FailureTypeSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_FailureTypeSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_FailureTypeSymbolLoc_ptr;
  if (!getkCVAFaceTracking_FailureTypeSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_FailureType");
    getkCVAFaceTracking_FailureTypeSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAE290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_FailureType()
{
  v0 = getkCVAFaceTracking_FailureTypeSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_FailureType_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_GeometrySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_GeometrySymbolLoc_ptr;
  v6 = getkCVAFaceTracking_GeometrySymbolLoc_ptr;
  if (!getkCVAFaceTracking_GeometrySymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_Geometry");
    getkCVAFaceTracking_GeometrySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAE3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_Geometry()
{
  v0 = getkCVAFaceTracking_GeometrySymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_Geometry_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_GeometryLandmarksSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_GeometryLandmarksSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_GeometryLandmarksSymbolLoc_ptr;
  if (!getkCVAFaceTracking_GeometryLandmarksSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_GeometryLandmarks");
    getkCVAFaceTracking_GeometryLandmarksSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAE550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_GeometryLandmarks()
{
  v0 = getkCVAFaceTracking_GeometryLandmarksSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_GeometryLandmarks_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_IntrinsicsSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_IntrinsicsSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_IntrinsicsSymbolLoc_ptr;
  if (!getkCVAFaceTracking_IntrinsicsSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_Intrinsics");
    getkCVAFaceTracking_IntrinsicsSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAE6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_Intrinsics()
{
  v0 = getkCVAFaceTracking_IntrinsicsSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_Intrinsics_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_LuxLevelSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_LuxLevelSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_LuxLevelSymbolLoc_ptr;
  if (!getkCVAFaceTracking_LuxLevelSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_LuxLevel");
    getkCVAFaceTracking_LuxLevelSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAE810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_LuxLevel()
{
  v0 = getkCVAFaceTracking_LuxLevelSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_LuxLevel_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_NetworkFailureThresholdMultiplierSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_NetworkFailureThresholdMultiplierSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_NetworkFailureThresholdMultiplierSymbolLoc_ptr;
  if (!getkCVAFaceTracking_NetworkFailureThresholdMultiplierSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_NetworkFailureThresholdMultiplier");
    getkCVAFaceTracking_NetworkFailureThresholdMultiplierSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAE970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_NetworkFailureThresholdMultiplier()
{
  v0 = getkCVAFaceTracking_NetworkFailureThresholdMultiplierSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_NetworkFailureThresholdMultiplier_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_NormalizedDisparitySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_NormalizedDisparitySymbolLoc_ptr;
  v6 = getkCVAFaceTracking_NormalizedDisparitySymbolLoc_ptr;
  if (!getkCVAFaceTracking_NormalizedDisparitySymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_NormalizedDisparity");
    getkCVAFaceTracking_NormalizedDisparitySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAEAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_NormalizedDisparity()
{
  v0 = getkCVAFaceTracking_NormalizedDisparitySymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_NormalizedDisparity_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_NumTrackedFacesSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_NumTrackedFacesSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_NumTrackedFacesSymbolLoc_ptr;
  if (!getkCVAFaceTracking_NumTrackedFacesSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_NumTrackedFaces");
    getkCVAFaceTracking_NumTrackedFacesSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAEC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_NumTrackedFaces()
{
  v0 = getkCVAFaceTracking_NumTrackedFacesSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_NumTrackedFaces_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_PoseSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_PoseSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_PoseSymbolLoc_ptr;
  if (!getkCVAFaceTracking_PoseSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_Pose");
    getkCVAFaceTracking_PoseSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAED90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_Pose()
{
  v0 = getkCVAFaceTracking_PoseSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_Pose_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_RotationSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_RotationSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_RotationSymbolLoc_ptr;
  if (!getkCVAFaceTracking_RotationSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_Rotation");
    getkCVAFaceTracking_RotationSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAEEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_Rotation()
{
  v0 = getkCVAFaceTracking_RotationSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_Rotation_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_SetCameraDepthFromColorSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_SetCameraDepthFromColorSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_SetCameraDepthFromColorSymbolLoc_ptr;
  if (!getkCVAFaceTracking_SetCameraDepthFromColorSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_SetCameraDepthFromColor");
    getkCVAFaceTracking_SetCameraDepthFromColorSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAF050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_SetCameraDepthFromColor()
{
  v0 = getkCVAFaceTracking_SetCameraDepthFromColorSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_SetCameraDepthFromColor_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_SmoothDataSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_SmoothDataSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_SmoothDataSymbolLoc_ptr;
  if (!getkCVAFaceTracking_SmoothDataSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_SmoothData");
    getkCVAFaceTracking_SmoothDataSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAF1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_SmoothData()
{
  v0 = getkCVAFaceTracking_SmoothDataSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_SmoothData_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_StructuredLightOccludedSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_StructuredLightOccludedSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_StructuredLightOccludedSymbolLoc_ptr;
  if (!getkCVAFaceTracking_StructuredLightOccludedSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_StructuredLightOccluded");
    getkCVAFaceTracking_StructuredLightOccludedSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAF310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_StructuredLightOccluded()
{
  v0 = getkCVAFaceTracking_StructuredLightOccludedSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_StructuredLightOccluded_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_ThreadPrioritySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_ThreadPrioritySymbolLoc_ptr;
  v6 = getkCVAFaceTracking_ThreadPrioritySymbolLoc_ptr;
  if (!getkCVAFaceTracking_ThreadPrioritySymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_ThreadPriority");
    getkCVAFaceTracking_ThreadPrioritySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAF470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_ThreadPriority()
{
  v0 = getkCVAFaceTracking_ThreadPrioritySymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_ThreadPriority_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_TimestampSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_TimestampSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_TimestampSymbolLoc_ptr;
  if (!getkCVAFaceTracking_TimestampSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_Timestamp");
    getkCVAFaceTracking_TimestampSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAF5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_Timestamp()
{
  v0 = getkCVAFaceTracking_TimestampSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_Timestamp_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_TrackedFacesArraySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_TrackedFacesArraySymbolLoc_ptr;
  v6 = getkCVAFaceTracking_TrackedFacesArraySymbolLoc_ptr;
  if (!getkCVAFaceTracking_TrackedFacesArraySymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_TrackedFacesArray");
    getkCVAFaceTracking_TrackedFacesArraySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAF730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_TrackedFacesArray()
{
  v0 = getkCVAFaceTracking_TrackedFacesArraySymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_TrackedFacesArray_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_TrackingFailureFieldOfViewModifierSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_TrackingFailureFieldOfViewModifierSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_TrackingFailureFieldOfViewModifierSymbolLoc_ptr;
  if (!getkCVAFaceTracking_TrackingFailureFieldOfViewModifierSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_TrackingFailureFieldOfViewModifier");
    getkCVAFaceTracking_TrackingFailureFieldOfViewModifierSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAF890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_TrackingFailureFieldOfViewModifier()
{
  v0 = getkCVAFaceTracking_TrackingFailureFieldOfViewModifierSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_TrackingFailureFieldOfViewModifier_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_TranslationSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_TranslationSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_TranslationSymbolLoc_ptr;
  if (!getkCVAFaceTracking_TranslationSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_Translation");
    getkCVAFaceTracking_TranslationSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAF9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_Translation()
{
  v0 = getkCVAFaceTracking_TranslationSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_Translation_cold_1();
  }

  return *v0;
}

uint64_t getkCVA_tmrLADzZUFnL94QtJ4Eb9fgiSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVA_tmrLADzZUFnL94QtJ4Eb9fgiSymbolLoc_ptr;
  v6 = getkCVA_tmrLADzZUFnL94QtJ4Eb9fgiSymbolLoc_ptr;
  if (!getkCVA_tmrLADzZUFnL94QtJ4Eb9fgiSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVA_tmrLADzZUFnL94QtJ4Eb9fgi");
    getkCVA_tmrLADzZUFnL94QtJ4Eb9fgiSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAFB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCVA_tmrLADzZUFnL94QtJ4Eb9fgiSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "kCVA_tmrLADzZUFnL94QtJ4Eb9fgi");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCVA_tmrLADzZUFnL94QtJ4Eb9fgiSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkCVA_tmrLADzZUFnL94QtJ4Eb9fgi()
{
  v0 = getkCVA_tmrLADzZUFnL94QtJ4Eb9fgiSymbolLoc();
  if (!v0)
  {
    getkCVA_tmrLADzZUFnL94QtJ4Eb9fgi_cold_1();
  }

  return *v0;
}

uint64_t getkCVAFaceTracking_UseRecognitionSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCVAFaceTracking_UseRecognitionSymbolLoc_ptr;
  v6 = getkCVAFaceTracking_UseRecognitionSymbolLoc_ptr;
  if (!getkCVAFaceTracking_UseRecognitionSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "kCVAFaceTracking_UseRecognition");
    getkCVAFaceTracking_UseRecognitionSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAFCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCVAFaceTracking_UseRecognition()
{
  v0 = getkCVAFaceTracking_UseRecognitionSymbolLoc();
  if (!v0)
  {
    getkCVAFaceTracking_UseRecognition_cold_1();
  }

  return *v0;
}

uint64_t getCVAFaceTrackingCreateSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCVAFaceTrackingCreateSymbolLoc_ptr;
  v6 = getCVAFaceTrackingCreateSymbolLoc_ptr;
  if (!getCVAFaceTrackingCreateSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "CVAFaceTrackingCreate");
    getCVAFaceTrackingCreateSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAFE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCVAFaceTrackingCreateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "CVAFaceTrackingCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVAFaceTrackingCreateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_CVAFaceTrackingCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SymbolLoc = getCVAFaceTrackingCreateSymbolLoc();
  if (!SymbolLoc)
  {
    soft_CVAFaceTrackingCreate_cold_1();
  }

  return SymbolLoc(a1, a2, a3);
}

uint64_t getCVAFaceTrackingProcessSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCVAFaceTrackingProcessSymbolLoc_ptr;
  v6 = getCVAFaceTrackingProcessSymbolLoc_ptr;
  if (!getCVAFaceTrackingProcessSymbolLoc_ptr)
  {
    v1 = AppleCVALibrary();
    v4[3] = dlsym(v1, "CVAFaceTrackingProcess");
    getCVAFaceTrackingProcessSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAAFFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCVAFaceTrackingProcessSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleCVALibrary();
  result = dlsym(v2, "CVAFaceTrackingProcess");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVAFaceTrackingProcessSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_CVAFaceTrackingProcess(uint64_t a1, uint64_t a2)
{
  CVAFaceTrackingProcessSymbolLoc = getCVAFaceTrackingProcessSymbolLoc();
  if (!CVAFaceTrackingProcessSymbolLoc)
  {
    soft_CVAFaceTrackingProcess_cold_1();
  }

  return CVAFaceTrackingProcessSymbolLoc(a1, a2);
}

void *sicn_cameraCalibrationDataMetadataAttachmentDictionaryFromCalibrationMetadata(void *a1, opaqueCMSampleBuffer *a2, int a3)
{
  if (!a1)
  {
    sicn_cameraCalibrationDataMetadataAttachmentDictionaryFromCalibrationMetadata_cold_2();
    return 0;
  }

  if (!a2)
  {
    sicn_cameraCalibrationDataMetadataAttachmentDictionaryFromCalibrationMetadata_cold_1();
    return 0;
  }

  v6 = [MEMORY[0x1E695DF90] dictionary];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  if (a3)
  {
    [a1 referenceIntrinsicMatrix];
  }

  else
  {
    [a1 auxiliaryIntrinsicMatrix];
  }

  DWORD2(v60) = v8;
  DWORD2(v61) = v10;
  *&v60 = v7;
  *&v61 = v9;
  DWORD2(v62) = v12;
  *&v62 = v11;
  [v6 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", &v60, 48), @"IntrinsicMatrix"}];
  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  Width = CVPixelBufferGetWidth(ImageBuffer);
  v63.height = CVPixelBufferGetHeight(ImageBuffer);
  v63.width = Width;
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v63);
  [v6 setObject:DictionaryRepresentation forKeyedSubscript:@"IntrinsicMatrixReferenceDimensions"];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  if (a3)
  {
    [a1 referenceExtrinsicMatrix];
  }

  else
  {
    [a1 auxiliaryExtrinsicMatrix];
  }

  DWORD2(v56) = v17;
  DWORD2(v57) = v19;
  *&v56 = v16;
  *&v57 = v18;
  DWORD2(v58) = v21;
  DWORD2(v59) = v23;
  *&v58 = v20;
  *&v59 = v22;
  [v6 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", &v56, 64), @"ExtrinsicMatrix"}];
  if (a3)
  {
    [a1 referencePixelSizeInMillimeters];
  }

  else
  {
    [a1 auxiliaryPixelSizeInMillimeters];
  }

  [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"PixelSize"}];
  if (a3)
  {
    v24 = [a1 referenceLensDistortionCoefficients];
  }

  else
  {
    v24 = [a1 auxiliaryLensDistortionCoefficients];
  }

  v25 = v24;
  if (v24)
  {
    v26 = [MEMORY[0x1E695DF88] dataWithLength:{4 * objc_msgSend(v24, "count")}];
    v27 = [v26 mutableBytes];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v28 = [v25 countByEnumeratingWithState:&v52 objects:v51 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v53;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v53 != v30)
          {
            objc_enumerationMutation(v25);
          }

          [*(*(&v52 + 1) + 8 * i) floatValue];
          *v27++ = v32;
        }

        v29 = [v25 countByEnumeratingWithState:&v52 objects:v51 count:16];
      }

      while (v29);
    }

    [v6 setObject:v26 forKeyedSubscript:@"LensDistortionCoefficients"];
  }

  if (a3)
  {
    v33 = [a1 referenceInverseLensDistortionCoefficients];
  }

  else
  {
    v33 = [a1 auxiliaryInverseLensDistortionCoefficients];
  }

  v34 = v33;
  if (v33)
  {
    v35 = [MEMORY[0x1E695DF88] dataWithLength:{4 * objc_msgSend(v33, "count")}];
    v36 = [v35 mutableBytes];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v37 = [v34 countByEnumeratingWithState:&v47 objects:v46 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v48;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v48 != v39)
          {
            objc_enumerationMutation(v34);
          }

          [*(*(&v47 + 1) + 8 * j) floatValue];
          *v36++ = v41;
        }

        v38 = [v34 countByEnumeratingWithState:&v47 objects:v46 count:16];
      }

      while (v38);
    }

    [v6 setObject:v35 forKeyedSubscript:@"InverseLensDistortionCoefficients"];
  }

  if (a3)
  {
    [a1 referenceLensDistortionOpticalCenter];
  }

  else
  {
    [a1 auxiliaryLensDistortionOpticalCenter];
  }

  v44 = CGPointCreateDictionaryRepresentation(*&v42);
  [v6 setObject:v44 forKeyedSubscript:@"LensDistortionCenter"];

  return v6;
}

BOOL FigCaptureFrameRateNominal(uint64_t a1, int a2)
{
  v4 = ((a1 & 0x7FFFFFFF) - 0x800000) >> 24 < 0x7F && a1 >= 0 || (a1 - 1) < 0x7FFFFF;
  v6 = a1 > 0 && SHIDWORD(a1) > 0;
  if (a2 != 1)
  {
    v6 = 0;
  }

  if (a2 == 2)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

uint64_t FigCaptureFrameRateClamp(uint64_t result, int a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  if (a2 == 2)
  {
    v6 = *&result;
  }

  else
  {
    v6 = 0.0;
    if (a2 == 1)
    {
      v6 = result / SHIDWORD(result);
    }
  }

  if (a4 == 2)
  {
    v7 = *&a3;
  }

  else
  {
    v7 = 0.0;
    if (a4 == 1)
    {
      v7 = a3 / SHIDWORD(a3);
    }
  }

  if (a6 == 2)
  {
    v8 = *&a5;
  }

  else
  {
    v8 = 0.0;
    if (a6 == 1)
    {
      v8 = a5 / SHIDWORD(a5);
    }
  }

  if (v7 <= v8)
  {
    if (v6 <= v8)
    {
      v9 = result;
    }

    else
    {
      v9 = a5;
    }

    if (v6 >= v7)
    {
      return v9;
    }

    else
    {
      return a3;
    }
  }

  return result;
}

uint64_t FigCaptureSimplifiedLeastCommonMultiple(uint64_t result, int a2, int a3, int *a4)
{
  if (a2 == 1)
  {
    if (result < 1 || SHIDWORD(result) < 1)
    {
      return result;
    }

    v6 = result >> 32;
  }

  else
  {
    if (a2 != 2)
    {
      return result;
    }

    v4 = result <= -1 || ((result & 0x7FFFFFFF) - 0x800000) >> 24 >= 0x7F;
    if (v4 && (result - 1) >= 0x7FFFFF)
    {
      return result;
    }

    result = (*&result * 1000.0);
    v6 = 1000;
  }

  if (v6 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = -v6;
  }

  v8 = 120000;
  if (v7 != 0x80000000 && result != 0x80000000)
  {
    if (result >= 0)
    {
      v9 = result;
    }

    else
    {
      v9 = -result;
    }

    if (v9 <= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    if (v9 < v7)
    {
      LODWORD(v7) = v9;
    }

    if (v7 < 1)
    {
      v8 = v10;
    }

    else
    {
      do
      {
        v8 = v7;
        LODWORD(v7) = v10 % v7;
        v10 = v8;
      }

      while (v7);
    }
  }

  v11 = result / v8;
  if (v11 >= 1)
  {
    v12 = *a4;
    if (*a4 >= 1)
    {
      if (v11 <= v12)
      {
        v13 = *a4;
      }

      else
      {
        v13 = v11;
      }

      if (v11 >= v12)
      {
        v14 = *a4;
      }

      else
      {
        v14 = v11;
      }

      do
      {
        v15 = v14;
        v14 = v13 % v14;
        v13 = v15;
      }

      while (v14);
      v11 *= v12 / v15;
    }

    if (v11 >= a3)
    {
      v11 = a3;
    }

    *a4 = v11;
  }

  return result;
}

uint64_t FigCaptureFrameRateAdjustedByMicroseconds(uint64_t timescale, int a2, double a3)
{
  v4 = timescale;
  if (a2 == 2)
  {
    v5 = *&timescale;
  }

  else
  {
    if (a2 != 1)
    {
      return v4;
    }

    v5 = timescale / SHIDWORD(timescale);
  }

  if (a3 != 0.0 && v5 > 0.0)
  {
    if (a2 == 2)
    {
      v6 = a3 / -1000000.0;
      v7 = (1.0 / v5) + v6;
      if (v7 > 0.0)
      {
        return COERCE_UNSIGNED_INT(1.0 / v7);
      }
    }

    else
    {
      memset(&v14, 0, sizeof(v14));
      CMTimeMake(&v14, timescale >> 32, timescale);
      memset(&v13, 0, sizeof(v13));
      CMTimeMakeWithSeconds(&v13, a3 / 1000000.0, v14.timescale);
      memset(&v12, 0, sizeof(v12));
      time = v13;
      CMTimeConvertScale(&v12, &time, v14.timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      memset(&time, 0, sizeof(time));
      lhs = v14;
      v9 = v12;
      CMTimeSubtract(&time, &lhs, &v9);
      if (time.value >= 1 && time.timescale > 0)
      {
        lhs = time;
        return FigCaptureFrameRateFromCMTime(&lhs);
      }
    }

    return 0;
  }

  return v4;
}

size_t FigDraw420Color(__CVBuffer *a1, int a2, int a3, char a4, char a5, char a6)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v22 = 0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  result = CVPixelBufferGetPlaneCount(a1);
  v13 = result;
  if (result)
  {
    v14 = 0;
    do
    {
      *(&v24 + v14) = CVPixelBufferGetBaseAddressOfPlane(a1, v14);
      result = CVPixelBufferGetBytesPerRowOfPlane(a1, v14);
      *(&v22 + v14++) = result;
    }

    while (v13 != v14);
  }

  if (PixelFormatType == 875704422 || PixelFormatType == 875704438)
  {
    if (v13 != 2)
    {
      return result;
    }

    v19 = HIDWORD(v22);
    v17 = v25;
    *(v24 + a2 + v22 * a3) = a4;
    v20 = v19 * (a3 >> 1);
    *(v17 + (a2 & 0xFFFFFFFFFFFFFFFELL) + v20) = a5;
    v18 = v20 + (a2 | 1);
    goto LABEL_11;
  }

  if (PixelFormatType == 2033463856 && v13 == 3)
  {
    v15 = HIDWORD(v22);
    v16 = v25;
    *(v24 + a2 + v22 * a3) = a4;
    *(v16 + v15 * (a3 >> 1) + (a2 >> 1)) = a5;
    v17 = v26;
    v18 = v23 * (a3 >> 1) + (a2 >> 1);
LABEL_11:
    *(v17 + v18) = a6;
  }

  return result;
}