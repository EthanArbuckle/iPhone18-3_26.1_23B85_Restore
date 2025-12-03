@interface BWDNGEncoderManager
+ (void)initialize;
- (NSString)description;
- (int)addAuxImage:(__CVBuffer *)image type:(int)type auxImageMetadata:(CGImageMetadata *)metadata options:(id)options parentImageHandle:(int64_t)handle auxImageHandleOut:(int64_t *)out;
- (int)addCompressedThumbnailImage:(__IOSurface *)image thumbnailImageSize:(unint64_t)size options:(id)options;
- (int)closeContainer;
- (int)closeContainerAndCopySurfaceOut:(__IOSurface *)out;
- (int)openContainerWithOptions:(id)options settingsID:(int64_t)d;
- (void)dealloc;
@end

@implementation BWDNGEncoderManager

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (void)dealloc
{
  if ([(BWDNGEncoderManager *)self isContainerOpen])
  {
    [(BWDNGEncoderManager *)self closeContainer];
  }

  v3.receiver = self;
  v3.super_class = BWDNGEncoderManager;
  [(BWDNGEncoderManager *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  dngCompressor = self->_dngCompressor;
  if ([(BWDNGEncoderManager *)self isContainerOpen])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (open for captureID:%lld)", self->_currentSettingsID];
  }

  else
  {
    v6 = &stru_1F216A3D0;
  }

  return [v3 stringWithFormat:@"<%@ %p>: CMPhotoDNGCompressor: %p%@", v4, self, dngCompressor, v6];
}

- (int)closeContainerAndCopySurfaceOut:(__IOSurface *)out
{
  isContainerOpen = [(BWDNGEncoderManager *)self isContainerOpen];
  v6 = isContainerOpen;
  FinalizedSize = -12780;
  if (out && isContainerOpen)
  {
    Surface = CMPhotoDNGCompressorFinalizeAndCreateSurface();
    if (Surface)
    {
      FinalizedSize = Surface;
    }

    else
    {
      FinalizedSize = CMPhotoDNGCompressorGetFinalizedSize();
      if (!FinalizedSize)
      {
        IOSurfaceDecrementUseCount(0);
        *out = 0;
        goto LABEL_6;
      }
    }
  }

  if (v6)
  {
    [(BWDNGEncoderManager *)self closeContainer];
  }

LABEL_6:
  if (dword_1EB58E0A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  self->_currentSettingsID = 0;
  dngCompressor = self->_dngCompressor;
  if (dngCompressor)
  {
    CFRelease(dngCompressor);
    self->_dngCompressor = 0;
  }

  return FinalizedSize;
}

- (int)openContainerWithOptions:(id)options settingsID:(int64_t)d
{
  if (![(BWDNGEncoderManager *)self isContainerOpen]|| (FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent(), os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(), os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT), fig_log_call_emit_and_clean_up_after_send_and_compose(), v8 = _os_log_send_and_compose_impl(), FigCapturePleaseFileRadar(FrameworkRadarComponent, v8, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotoEncoderManager.m", 568, @"LastShownDate:BWPhotoEncoderManager.m:568", @"LastShownBuild:BWPhotoEncoderManager.m:568", 0), free(v8), (result = [(BWDNGEncoderManager *)self closeContainer]) == 0))
  {
    result = CMPhotoDNGCompressorCreate();
    if (!result)
    {
      self->_currentSettingsID = d;
      self->_previewImageSize = 0;
      self->_auxiliaryImagesSize = 0;
      self->_containerSize = 0;
    }
  }

  return result;
}

- (int)addCompressedThumbnailImage:(__IOSurface *)image thumbnailImageSize:(unint64_t)size options:(id)options
{
  if (image && size)
  {
    v6 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:options];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:size];
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E6991A38]];
    CMPhotoDNGCompressorSetCompressedPreviewImage();
  }

  return 0;
}

- (int)addAuxImage:(__CVBuffer *)image type:(int)type auxImageMetadata:(CGImageMetadata *)metadata options:(id)options parentImageHandle:(int64_t)handle auxImageHandleOut:(int64_t *)out
{
  v12 = pem_cmPhotoAuxImageCustomTypeURNForPhotoEncoderNodeAuxImageType(type);
  if (!v12)
  {
    return -12780;
  }

  v13 = v12;
  dngCompressor = self->_dngCompressor;

  return MEMORY[0x1EEDF1230](dngCompressor, image, metadata, v13, options);
}

- (int)closeContainer
{
  if ([(BWDNGEncoderManager *)self isContainerOpen])
  {
    Data = CMPhotoDNGCompressorFinalizeAndCreateData();
  }

  else
  {
    Data = -12780;
  }

  if (dword_1EB58E0A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *&self->_currentSettingsID = 0u;
  *&self->_auxiliaryImagesSize = 0u;
  dngCompressor = self->_dngCompressor;
  if (dngCompressor)
  {
    CFRelease(dngCompressor);
    self->_dngCompressor = 0;
  }

  return Data;
}

@end