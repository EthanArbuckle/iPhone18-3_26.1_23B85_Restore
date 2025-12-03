@interface BWCMPhotoEncoderManager
+ (void)initialize;
- (BWCMPhotoEncoderManager)initWithDeferredPhotoProcessorEnabled:(BOOL)enabled;
- (NSString)description;
- (int)addAlternateImageWithDerivedImageHandles:(id)handles options:(id)options parentImageHandle:(int64_t)handle alternateGroupHandleInOut:(int64_t *)out;
- (int)addAuxImage:(__CVBuffer *)image type:(int)type auxImageMetadata:(CGImageMetadata *)metadata options:(id)options parentImageHandle:(int64_t)handle auxImageHandleOut:(int64_t *)out;
- (int)addAuxImageMetadata:(CGImageMetadata *)metadata type:(int)type auxImageHandle:(int64_t)handle options:(id)options parentImageHandle:(int64_t)imageHandle;
- (int)addCustomMetadataContents:(id)contents URI:(id)i name:(id)name;
- (int)addMainImage:(__CVBuffer *)image metadata:(id)metadata options:(id)options imageHandleOut:(int64_t *)out;
- (int)addThumbnailImage:(__CVBuffer *)image options:(id)options parentImageHandle:(int64_t)handle;
- (int)closeContainer;
- (int)closeContainerAndCopySurfaceOut:(__IOSurface *)out;
- (int)openContainerWithOptions:(id)options settingsID:(int64_t)d;
- (int)tagStereoPairGroupWithStereoPhotoImageHandles:(id *)handles groupMetadata:(id)metadata;
- (void)dealloc;
@end

@implementation BWCMPhotoEncoderManager

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWCMPhotoEncoderManager)initWithDeferredPhotoProcessorEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v20.receiver = self;
  v20.super_class = BWCMPhotoEncoderManager;
  v21 = 0;
  v4 = [(BWCMPhotoEncoderManager *)&v20 init];
  v5 = v4;
  if (v4)
  {
    v4->_asyncEncoding = 1;
    v6 = *MEMORY[0x1E69919D8];
    v18[0] = *MEMORY[0x1E69919E8];
    v18[1] = v6;
    v19[0] = MEMORY[0x1E695E118];
    v19[1] = MEMORY[0x1E695E118];
    v7 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v19, v18, 2)}];
    v8 = v7;
    if (enabledCopy)
    {
      [v7 setObject:&unk_1F2246120 forKeyedSubscript:*MEMORY[0x1E69919D0]];
    }

    v9 = FigCapturePlatformIOSurfaceWiringAssertionEnabled() != 0;
    v16[0] = *MEMORY[0x1E6991BB8];
    v10 = [MEMORY[0x1E696AD98] numberWithBool:v9];
    v16[1] = *MEMORY[0x1E6991BB0];
    v17[0] = v10;
    v17[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BWMemoryPool poolIdentifier](+[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"), "poolIdentifier")}];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v12 = *MEMORY[0x1E6991BE0];
    v14[0] = *MEMORY[0x1E6991BE8];
    v14[1] = v12;
    v15[0] = v11;
    v15[1] = v11;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    if (!CMPhotoSurfacePoolCreate())
    {
      [v8 setObject:v21 forKeyedSubscript:*MEMORY[0x1E69919E0]];
    }

    if (CMPhotoCompressionSessionCreate())
    {

      v5 = 0;
    }
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v5;
}

- (void)dealloc
{
  if (self->_photoCompressionSession)
  {
    CMPhotoCompressionSessionReleaseHardwareResources();
    CMPhotoCompressionSessionFlushCachedBuffers();
    CMPhotoCompressionSessionInvalidate();
    CFRelease(self->_photoCompressionSession);
  }

  v3.receiver = self;
  v3.super_class = BWCMPhotoEncoderManager;
  [(BWCMPhotoEncoderManager *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  photoCompressionSession = self->_photoCompressionSession;
  if ([(BWCMPhotoEncoderManager *)self isContainerOpen])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (open for captureID:%lld)", self->_currentSettingsID];
  }

  else
  {
    v6 = &stru_1F216A3D0;
  }

  return [v3 stringWithFormat:@"<%@ %p>: CMPhotoCompressionSession: %p%@", v4, self, photoCompressionSession, v6];
}

- (int)openContainerWithOptions:(id)options settingsID:(int64_t)d
{
  v7 = CMPhotoCompressionSessionOpenEmptyContainer();
  if (!v7)
  {
    self->_currentSettingsID = d;
  }

  self->_containerFormat = [objc_msgSend(options objectForKeyedSubscript:{*MEMORY[0x1E6991870]), "intValue"}];
  return v7;
}

- (int)addMainImage:(__CVBuffer *)image metadata:(id)metadata options:(id)options imageHandleOut:(int64_t *)out
{
  if (self->_asyncEncoding)
  {
    return CMPhotoCompressionSessionAddImageAsync();
  }

  else
  {
    return CMPhotoCompressionSessionAddImage();
  }
}

- (int)addThumbnailImage:(__CVBuffer *)image options:(id)options parentImageHandle:(int64_t)handle
{
  asyncEncoding = self->_asyncEncoding;
  photoCompressionSession = self->_photoCompressionSession;
  if (asyncEncoding)
  {
    return MEMORY[0x1EEDF11B8](photoCompressionSession, handle, options, image, 0);
  }

  else
  {
    return MEMORY[0x1EEDF11B0](photoCompressionSession, handle, options, image);
  }
}

- (int)addAuxImage:(__CVBuffer *)image type:(int)type auxImageMetadata:(CGImageMetadata *)metadata options:(id)options parentImageHandle:(int64_t)handle auxImageHandleOut:(int64_t *)out
{
  v13 = pem_cmPhotoAuxImageTypeForPhotoEncoderNodeAuxImageType(type);
  if (v13 == 4)
  {
    v15 = pem_cmPhotoAuxImageCustomTypeURNForPhotoEncoderNodeAuxImageType(type);
    if (v15)
    {
      v16 = v15;
      v17 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:options];
      [v17 setObject:v16 forKeyedSubscript:*MEMORY[0x1E69918B0]];
    }
  }

  else if (!v13)
  {
    return -12780;
  }

  if (image)
  {
    if (type == 1)
    {
      IOSurface = CVPixelBufferGetIOSurface(image);
      if (IOSurface)
      {
        v19 = IOSurface;
        IOSurfaceLock(IOSurface, 5u, 0);
        IOSurfaceUnlock(v19, 5u, 0);
      }
    }
  }

  if (self->_asyncEncoding)
  {
    v20 = CMPhotoCompressionSessionAddAuxiliaryImageAsync();
  }

  else
  {
    v20 = CMPhotoCompressionSessionAddAuxiliaryImage();
  }

  v14 = v20;
  if (v20)
  {
    [BWCMPhotoEncoderManager addAuxImage:type:auxImageMetadata:options:parentImageHandle:auxImageHandleOut:];
  }

  else
  {
    v14 = 0;
    if (out)
    {
      *out = 0;
    }
  }

  return v14;
}

- (int)tagStereoPairGroupWithStereoPhotoImageHandles:(id *)handles groupMetadata:(id)metadata
{
  v4 = CMPhotoCompressionSessionAddGroup();
  if (v4)
  {
    v8 = v4;
    [BWCMPhotoEncoderManager tagStereoPairGroupWithStereoPhotoImageHandles:groupMetadata:];
  }

  else
  {
    v5 = CMPhotoCompressionSessionAddImageHandleToGroup();
    if (v5)
    {
      v8 = v5;
      [BWCMPhotoEncoderManager tagStereoPairGroupWithStereoPhotoImageHandles:groupMetadata:];
    }

    else
    {
      v6 = CMPhotoCompressionSessionAddImageHandleToGroup();
      if (v6)
      {
        v8 = v6;
        [BWCMPhotoEncoderManager tagStereoPairGroupWithStereoPhotoImageHandles:groupMetadata:];
      }

      else
      {
        v7 = CMPhotoCompressionSessionAddImageHandleToGroup();
        if (v7)
        {
          v8 = v7;
          [BWCMPhotoEncoderManager tagStereoPairGroupWithStereoPhotoImageHandles:groupMetadata:];
        }

        else
        {
          v8 = CMPhotoCompressionSessionAddGroupProperties();
          if (v8)
          {
            [BWCMPhotoEncoderManager tagStereoPairGroupWithStereoPhotoImageHandles:groupMetadata:];
          }
        }
      }
    }
  }

  return v8;
}

- (int)closeContainerAndCopySurfaceOut:(__IOSurface *)out
{
  if (out)
  {
    v4 = CMPhotoCompressionSessionCloseContainerAndCopyBacking();
    if (!v4)
    {
      v7 = -12780;
      goto LABEL_4;
    }

    v7 = v4;
  }

  else
  {
    v7 = -12780;
  }

  [(BWCMPhotoEncoderManager *)self closeContainer];
LABEL_4:
  if (dword_1EB58E0A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  self->_currentSettingsID = 0;
  return v7;
}

- (int)closeContainer
{
  v3 = CMPhotoCompressionSessionCloseContainer();
  if (dword_1EB58E0A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  self->_currentSettingsID = 0;
  self->_containerSize = 0;
  return v3;
}

- (int)addAuxImageMetadata:(CGImageMetadata *)metadata type:(int)type auxImageHandle:(int64_t)handle options:(id)options parentImageHandle:(int64_t)imageHandle
{
  if (!pem_cmPhotoAuxImageTypeForPhotoEncoderNodeAuxImageType(type))
  {
    return -12780;
  }

  v7 = CMPhotoCompressionSessionAddAuxiliaryImageMetadata();
  if (v7)
  {
    FigDebugAssert3();
  }

  return v7;
}

- (int)addAlternateImageWithDerivedImageHandles:(id)handles options:(id)options parentImageHandle:(int64_t)handle alternateGroupHandleInOut:(int64_t *)out
{
  if (out)
  {
    if (*out == -1)
    {
      v9 = OUTLINED_FUNCTION_2_97();
      if (v9)
      {
        goto LABEL_18;
      }

      *out = -1;
    }
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_97();
    if (v9)
    {
      goto LABEL_18;
    }
  }

  if (![handles count])
  {
    return 0;
  }

  if (self->_asyncEncoding)
  {
    v10 = CMPhotoCompressionSessionAddImageAsync();
  }

  else
  {
    v10 = CMPhotoCompressionSessionAddImage();
  }

  v11 = v10;
  if (v10)
  {
    goto LABEL_15;
  }

  v9 = CMPhotoCompressionSessionAddImageHandleToGroup();
  if (v9)
  {
LABEL_18:
    v11 = v9;
    OUTLINED_FUNCTION_1_5();
    goto LABEL_19;
  }

  v11 = CMPhotoCompressionSessionAddImageHandleToGroup();
  if (v11)
  {
LABEL_15:
    OUTLINED_FUNCTION_0_6();
LABEL_19:
    FigDebugAssert3();
  }

  return v11;
}

- (int)addCustomMetadataContents:(id)contents URI:(id)i name:(id)name
{
  v5 = 0;
  if (contents)
  {
    if (i)
    {
      if (name)
      {
        v12[3] = 0;
        v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:? format:? options:? error:?];
        [0 code];
        v9 = *MEMORY[0x1E6991A10];
        v11[0] = *MEMORY[0x1E6991A00];
        v11[1] = v9;
        v12[0] = v8;
        v12[1] = i;
        v11[2] = *MEMORY[0x1E6991A08];
        v12[2] = name;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
        v5 = CMPhotoCompressionSessionAddCustomMetadata();
        if (v5)
        {
          OUTLINED_FUNCTION_0_6();
          FigDebugAssert3();
        }
      }
    }
  }

  return v5;
}

@end