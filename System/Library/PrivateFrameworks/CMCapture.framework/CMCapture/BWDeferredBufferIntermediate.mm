@interface BWDeferredBufferIntermediate
- (BWDeferredBufferIntermediate)initWithBuffer:(__CVBuffer *)buffer tag:(id)tag bufferType:(unint64_t)type captureFrameFlags:(unint64_t)flags metadataTag:(id)metadataTag rawThumbnailsBufferTag:(id)bufferTag rawThumbnailsMetadataTag:(id)thumbnailsMetadataTag mainRawThumbnailBufferTag:(id)self0 mainRawThumbnailMetadataTag:(id)self1 sifrRawThumbnailBufferTag:(id)self2 sifrRawThumbnailMetadataTag:(id)self3 portType:(id)self4 compressionProfile:(int)self5 URL:(id)self6;
- (BWDeferredBufferIntermediate)initWithCoder:(id)coder;
- (CVPixelBufferRef)_read:(CVPixelBufferRef)result;
- (id)_shortString;
- (id)archive:(int *)archive;
- (id)description;
- (id)fetchAndRetain:(int *)retain;
- (int)flush;
- (int)setBuffer:(__CVBuffer *)buffer;
- (int)setURL:(id)l prefetchQueue:(id)queue;
- (uint64_t)_compressionSettingsForProfile:(int)profile pixelFormat:(int *)format containerFormat:(uint64_t *)containerFormat options:;
- (uint64_t)_createCVPixelBufferFromAttributes:(OSType)attributes pixelFormat:(CVPixelBufferRef *)format pixelBuffer:;
- (uint64_t)_writeAndReleaseBacking;
- (uint64_t)flush;
- (unsigned)pixelFormat;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)releaseBuffer;
@end

@implementation BWDeferredBufferIntermediate

- (BWDeferredBufferIntermediate)initWithBuffer:(__CVBuffer *)buffer tag:(id)tag bufferType:(unint64_t)type captureFrameFlags:(unint64_t)flags metadataTag:(id)metadataTag rawThumbnailsBufferTag:(id)bufferTag rawThumbnailsMetadataTag:(id)thumbnailsMetadataTag mainRawThumbnailBufferTag:(id)self0 mainRawThumbnailMetadataTag:(id)self1 sifrRawThumbnailBufferTag:(id)self2 sifrRawThumbnailMetadataTag:(id)self3 portType:(id)self4 compressionProfile:(int)self5 URL:(id)self6
{
  if (!buffer)
  {
    [BWDeferredBufferIntermediate initWithBuffer:tag:bufferType:captureFrameFlags:metadataTag:rawThumbnailsBufferTag:rawThumbnailsMetadataTag:mainRawThumbnailBufferTag:mainRawThumbnailMetadataTag:sifrRawThumbnailBufferTag:sifrRawThumbnailMetadataTag:portType:compressionProfile:URL:];
LABEL_10:

    return 0;
  }

  if (!type)
  {
    [BWDeferredBufferIntermediate initWithBuffer:tag:bufferType:captureFrameFlags:metadataTag:rawThumbnailsBufferTag:rawThumbnailsMetadataTag:mainRawThumbnailBufferTag:mainRawThumbnailMetadataTag:sifrRawThumbnailBufferTag:sifrRawThumbnailMetadataTag:portType:compressionProfile:URL:];
    goto LABEL_10;
  }

  if (!profile)
  {
    [BWDeferredBufferIntermediate initWithBuffer:tag:bufferType:captureFrameFlags:metadataTag:rawThumbnailsBufferTag:rawThumbnailsMetadataTag:mainRawThumbnailBufferTag:mainRawThumbnailMetadataTag:sifrRawThumbnailBufferTag:sifrRawThumbnailMetadataTag:portType:compressionProfile:URL:];
    goto LABEL_10;
  }

  v25.receiver = self;
  v25.super_class = BWDeferredBufferIntermediate;
  v22 = [(BWDeferredIntermediate *)&v25 initWithTag:tag URL:l];
  v23 = v22;
  if (v22)
  {
    v22->_buffer = buffer;
    CFRetain(buffer);
    v23->_attributes = CVPixelBufferGetAttributes();
    v23->_metadataTag = metadataTag;
    v23->_bufferType = type;
    v23->_captureFrameFlags = flags;
    v23->_rawThumbnailsBufferTag = bufferTag;
    v23->_rawThumbnailsMetadataTag = thumbnailsMetadataTag;
    v23->_mainRawThumbnailBufferTag = thumbnailBufferTag;
    v23->_mainRawThumbnailMetadataTag = thumbnailMetadataTag;
    v23->_sifrRawThumbnailBufferTag = rawThumbnailBufferTag;
    v23->_sifrRawThumbnailMetadataTag = rawThumbnailMetadataTag;
    v23->_portType = portType;
    v23->_compressionProfile = profile;
  }

  return v23;
}

- (BWDeferredBufferIntermediate)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = BWDeferredBufferIntermediate;
  v4 = [(BWDeferredIntermediate *)&v10 initWithCoder:?];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v4->_attributes = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, v8, objc_opt_class(), 0), @"attributes"}];
    v4->_metadataTag = [coder decodeObjectOfClass:objc_opt_class() forKey:@"metadataTag"];
    v4->_bufferType = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"bufferType", "unsignedIntegerValue"}];
    v4->_captureFrameFlags = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"captureFrameFlags", "unsignedIntegerValue"}];
    v4->_rawThumbnailsBufferTag = [coder decodeObjectOfClass:objc_opt_class() forKey:@"rawThumbnailsBufferTag"];
    v4->_rawThumbnailsMetadataTag = [coder decodeObjectOfClass:objc_opt_class() forKey:@"rawThumbnailsMetadataTag"];
    v4->_mainRawThumbnailBufferTag = [coder decodeObjectOfClass:objc_opt_class() forKey:@"mainRawThumbnailBufferTag"];
    v4->_mainRawThumbnailMetadataTag = [coder decodeObjectOfClass:objc_opt_class() forKey:@"mainRawThumbnailMetadataTag"];
    v4->_sifrRawThumbnailBufferTag = [coder decodeObjectOfClass:objc_opt_class() forKey:@"sifrRawThumbnailBufferTag"];
    v4->_sifrRawThumbnailMetadataTag = [coder decodeObjectOfClass:objc_opt_class() forKey:@"sifrRawThumbnailMetadataTag"];
    v4->_portType = [coder decodeObjectOfClass:objc_opt_class() forKey:@"portType"];
    v4->_compressionProfile = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"compressionProfile", "unsignedIntegerValue"}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = BWDeferredBufferIntermediate;
  [(BWDeferredIntermediate *)&v8 encodeWithCoder:?];
  v5 = self->_attributes;
  if ([-[NSDictionary objectForKeyedSubscript:](v5 objectForKeyedSubscript:{@"PixelFormatDescription", "objectForKeyedSubscript:", @"FillExtendedPixelsCallback"}])
  {
    v6 = [-[NSDictionary objectForKeyedSubscript:](v5 objectForKeyedSubscript:{@"PixelFormatDescription", "mutableCopy"}];
    [v6 setObject:0 forKeyedSubscript:@"FillExtendedPixelsCallback"];
    v7 = [(NSDictionary *)v5 mutableCopy];
    [v7 setObject:v6 forKeyedSubscript:@"PixelFormatDescription"];

    v5 = [v7 copy];
  }

  [coder encodeObject:v5 forKey:@"attributes"];

  [coder encodeObject:self->_metadataTag forKey:@"metadataTag"];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", self->_bufferType), @"bufferType"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", self->_captureFrameFlags), @"captureFrameFlags"}];
  [coder encodeObject:self->_rawThumbnailsBufferTag forKey:@"rawThumbnailsBufferTag"];
  [coder encodeObject:self->_rawThumbnailsMetadataTag forKey:@"rawThumbnailsMetadataTag"];
  [coder encodeObject:self->_mainRawThumbnailBufferTag forKey:@"mainRawThumbnailBufferTag"];
  [coder encodeObject:self->_mainRawThumbnailMetadataTag forKey:@"mainRawThumbnailMetadataTag"];
  [coder encodeObject:self->_sifrRawThumbnailBufferTag forKey:@"sifrRawThumbnailBufferTag"];
  [coder encodeObject:self->_sifrRawThumbnailMetadataTag forKey:@"sifrRawThumbnailMetadataTag"];
  [coder encodeObject:self->_portType forKey:@"portType"];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", self->_compressionProfile), @"compressionProfile"}];
}

- (void)dealloc
{
  buffer = self->_buffer;
  if (buffer)
  {
    CFRelease(buffer);
  }

  v4.receiver = self;
  v4.super_class = BWDeferredBufferIntermediate;
  [(BWDeferredIntermediate *)&v4 dealloc];
}

- (int)setURL:(id)l prefetchQueue:(id)queue
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  pthread_mutex_lock(&self->super._lock);
  if (!l)
  {
    FigDebugAssert3();
    v9 = v13;
    v10 = -16134;
LABEL_9:
    *(v9 + 6) = v10;
    goto LABEL_6;
  }

  if (self->_buffer || self->super._URL)
  {
    FigDebugAssert3();
    v9 = v13;
    v10 = -16135;
    goto LABEL_9;
  }

  self->super._URL = [l copy];
  if (queue)
  {
    self->super._prefetching = 1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__BWDeferredBufferIntermediate_setURL_prefetchQueue___block_invoke;
    block[3] = &unk_1E79904A0;
    block[4] = self;
    block[5] = &v12;
    dispatch_async(queue, block);
  }

LABEL_6:
  pthread_mutex_unlock(&self->super._lock);
  v7 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t __53__BWDeferredBufferIntermediate_setURL_prefetchQueue___block_invoke(uint64_t a1)
{
  v2 = [(BWDeferredBufferIntermediate *)*(a1 + 32) _read:?];
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    __53__BWDeferredBufferIntermediate_setURL_prefetchQueue___block_invoke_cold_1();
  }

  pthread_mutex_lock((*(a1 + 32) + 8));
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    if (v2)
    {
      CFRelease(v2);
    }
  }

  else
  {
    *(*(a1 + 32) + 152) = v2;
  }

  *(*(a1 + 32) + 144) = 0;
  pthread_cond_signal((*(a1 + 32) + 72));
  v3 = (*(a1 + 32) + 8);

  return pthread_mutex_unlock(v3);
}

- (int)setBuffer:(__CVBuffer *)buffer
{
  pthread_mutex_lock(&self->super._lock);
  if (self->_buffer)
  {
    [BWDeferredBufferIntermediate setBuffer:];
LABEL_7:
    v5 = -16135;
    goto LABEL_4;
  }

  if (self->super._URL)
  {
    [BWDeferredBufferIntermediate setBuffer:];
    goto LABEL_7;
  }

  self->_buffer = buffer;
  CFRetain(buffer);
  v5 = 0;
LABEL_4:
  pthread_mutex_unlock(&self->super._lock);
  return v5;
}

- (void)releaseBuffer
{
  pthread_mutex_lock(&self->super._lock);
  buffer = self->_buffer;
  if (buffer)
  {
    CFRelease(buffer);
    self->_buffer = 0;
  }

  pthread_mutex_unlock(&self->super._lock);
}

- (id)fetchAndRetain:(int *)retain
{
  v6 = 0;
  pthread_mutex_lock(&self->super._lock);
  if (self->super._prefetching)
  {
    pthread_cond_wait(&self->super._cv, &self->super._lock);
  }

  if (!self->_buffer)
  {
    self->_buffer = [(BWDeferredBufferIntermediate *)self _read:?];
  }

  pthread_mutex_unlock(&self->super._lock);
  if (retain)
  {
    *retain = v6;
  }

  result = self->_buffer;
  if (result)
  {
    CFRetain(result);
    return self->_buffer;
  }

  return result;
}

- (id)archive:(int *)archive
{
  pthread_mutex_lock(&self->super._lock);
  buffer = self->_buffer;
  if (buffer)
  {
    IOSurface = CVPixelBufferGetIOSurface(buffer);
    if (IOSurface)
    {
      XPCObject = IOSurfaceCreateXPCObject(IOSurface);
      v8 = XPCObject;
      if (XPCObject)
      {
        CFAutorelease(XPCObject);
        v9 = 0;
        goto LABEL_5;
      }

      [BWDeferredBufferIntermediate archive:];
    }

    else
    {
      [BWDeferredBufferIntermediate archive:];
      v8 = 0;
    }

    v9 = -16133;
  }

  else
  {
    [BWDeferredBufferIntermediate archive:];
    v8 = 0;
    v9 = -16136;
  }

LABEL_5:
  pthread_mutex_unlock(&self->super._lock);
  if (archive)
  {
    *archive = v9;
  }

  return v8;
}

- (int)flush
{
  pthread_mutex_lock(&self->super._lock);
  if (!self->super._URL)
  {
    [BWDeferredBufferIntermediate flush];
    goto LABEL_10;
  }

  if (!self->_buffer)
  {
    if (!self->super._dirty)
    {
      goto LABEL_6;
    }

    [BWDeferredBufferIntermediate flush];
LABEL_10:
    v3 = -16136;
    goto LABEL_7;
  }

  if (!self->super._dirty)
  {
LABEL_6:
    v3 = 0;
    goto LABEL_7;
  }

  [(BWDeferredBufferIntermediate *)self flush];
  v3 = v5;
LABEL_7:
  pthread_mutex_unlock(&self->super._lock);
  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(BWDeferredIntermediate *)self tag];
  v6 = BWStillImageBufferTypeToShortString(self->_bufferType);
  return [v3 stringWithFormat:@"<%@ %p>: tag:%@ bufferType:%@ captureFrameFlags:%@ portType:%@ metadataTag:%@ bufferAttributes:%@", v4, self, v5, v6, BWStillImageCaptureFrameFlagsToShortString(self->_captureFrameFlags), self->_portType, self->_metadataTag, self->_attributes];
}

- (id)_shortString
{
  v3 = [-[NSDictionary objectForKeyedSubscript:](self->_attributes objectForKeyedSubscript:{*MEMORY[0x1E6966208]), "unsignedIntValue"}];
  v4 = [-[NSDictionary objectForKeyedSubscript:](self->_attributes objectForKeyedSubscript:{*MEMORY[0x1E69660B8]), "unsignedIntValue"}];
  v5 = MEMORY[0x1E696AEC0];
  v6 = BWStillImageBufferTypeToShortString(self->_bufferType);
  v7 = BWStillImageCaptureFrameFlagsToShortString(self->_captureFrameFlags);
  return [v5 stringWithFormat:@"'%@ - %@' ('%@', %dx%d)", v6, v7, BWStringFromCVPixelFormatType(-[BWDeferredBufferIntermediate pixelFormat](self, "pixelFormat")), v3, v4];
}

- (unsigned)pixelFormat
{
  firstObject = [(NSDictionary *)self->_attributes objectForKeyedSubscript:*MEMORY[0x1E6966130]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject = [firstObject firstObject];
  }

  return [firstObject unsignedIntValue];
}

- (CVPixelBufferRef)_read:(CVPixelBufferRef)result
{
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22 = 0;
  v23 = 0;
  v21 = 0;
  FigGetUpTimeNanoseconds();
  v6 = MEMORY[0x1E695FF58];
  if (!*(v4 + 128) || *(v4 + 152))
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    v7 = 0;
    v17 = -16135;
    goto LABEL_20;
  }

  if (!*(v4 + 160))
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    v7 = 0;
    v17 = -16132;
    goto LABEL_20;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_5_7();
  }

  v20 = 0;
  v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:*(v4 + 128) options:0 error:&v20];
  if (!v7)
  {
    LODWORD(v19) = 0;
    FigDebugAssert3();
    [v20 code];
    v17 = FigSignalErrorAtGM();
    goto LABEL_19;
  }

  v8 = CMPhotoDecompressionSessionCreate();
  if (v8)
  {
    goto LABEL_38;
  }

  v9 = v6;
  v10 = [objc_msgSend(OUTLINED_FUNCTION_5_80() objectForKeyedSubscript:{*MEMORY[0x1E6966208]), "unsignedIntValue"}];
  v11 = [objc_msgSend(OUTLINED_FUNCTION_5_80() objectForKeyedSubscript:{*MEMORY[0x1E69660B8]), "unsignedIntValue"}];
  Container = CMPhotoDecompressionSessionCreateContainer();
  if (Container)
  {
    v17 = Container;
    OUTLINED_FUNCTION_1_119();
    FigDebugAssert3();
    v6 = v9;
    goto LABEL_20;
  }

  if (*(v4 + 248) != 1 || (v13 = [objc_msgSend(OUTLINED_FUNCTION_5_80() objectForKeyedSubscript:{*MEMORY[0x1E6966090]), "unsignedIntValue"}] + v10, v14 = objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_5_80(), "objectForKeyedSubscript:", *MEMORY[0x1E6966078]), "unsignedIntValue") + v11, ((v13 | v14) & 7) != 0) && v13 & 0xF | v14 & 3)
  {
    v15 = 0;
    v6 = v9;
    goto LABEL_14;
  }

  FigCapturePixelFormatEquivalentRegroupedLayoutPixelFormat([v4 pixelFormat]);
  v8 = -[BWDeferredBufferIntermediate _createCVPixelBufferFromAttributes:pixelFormat:pixelBuffer:](v4, *(v4 + 160), [v4 pixelFormat], &v21);
  v6 = v9;
  if (v8)
  {
LABEL_38:
    v17 = v8;
    OUTLINED_FUNCTION_1_119();
    FigDebugAssert3();
    goto LABEL_20;
  }

  [v5 setObject:v21 forKeyedSubscript:*MEMORY[0x1E6991B20]];
  v15 = 1;
LABEL_14:
  [v5 setObject:&unk_1F2249978 forKeyedSubscript:*MEMORY[0x1E6991AB0]];
  if (v22 && (ImageForIndex = CMPhotoDecompressionContainerCreateImageForIndex()) != 0)
  {
    v17 = ImageForIndex;
    OUTLINED_FUNCTION_1_119();
    FigDebugAssert3();
    if ((v15 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v17 = 0;
    if (!v15)
    {
      goto LABEL_21;
    }
  }

  if (v21)
  {
    CFRelease(v21);
  }

LABEL_19:
  if (v17)
  {
LABEL_20:
    v21 = 0;
  }

LABEL_21:

  if (v22)
  {
    CFRelease(v22);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (a2)
  {
    *a2 = v17;
  }

  FigGetUpTimeNanoseconds();
  if (dword_1EB58E480)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_1_104();
  }

  if (*v6 == 1)
  {
    OUTLINED_FUNCTION_5_7();
  }

  return v21;
}

- (uint64_t)_compressionSettingsForProfile:(int)profile pixelFormat:(int *)format containerFormat:(uint64_t *)containerFormat options:
{
  if (result)
  {
    if (a2 && format && containerFormat)
    {
      if (a2 == 2)
      {
        v10 = *MEMORY[0x1E6991978];
        v12[0] = *MEMORY[0x1E69918D0];
        v12[1] = v10;
        v13[0] = &unk_1F2246828;
        v13[1] = &unk_1F2246840;
        v11 = *MEMORY[0x1E69919A8];
        v12[2] = *MEMORY[0x1E6991970];
        v12[3] = v11;
        v13[2] = &unk_1F2246858;
        v13[3] = MEMORY[0x1E695E110];
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
        v9 = 1;
        goto LABEL_9;
      }

      if (a2 == 1)
      {
        v16 = 0;
        FigCapturePreferredSlimCodecFlavorAndTilesForPixelFormat(profile, &v16, &v16 + 1);
        v7 = *MEMORY[0x1E6991898];
        v14[0] = *MEMORY[0x1E69918D0];
        v14[1] = v7;
        v15[0] = &unk_1F2246810;
        v15[1] = MEMORY[0x1E695E118];
        v14[2] = *MEMORY[0x1E69919A8];
        v15[2] = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(v16)];
        v14[3] = *MEMORY[0x1E6991990];
        v15[3] = [MEMORY[0x1E696AD98] numberWithInt:v16];
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
        v9 = 0;
LABEL_9:
        result = 0;
        *format = v9;
        *containerFormat = v8;
        return result;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }

    return 4294951162;
  }

  return result;
}

- (uint64_t)_createCVPixelBufferFromAttributes:(OSType)attributes pixelFormat:(CVPixelBufferRef *)format pixelBuffer:
{
  if (result)
  {
    pixelBufferOut = 0;
    v7 = [objc_msgSend(a2 objectForKeyedSubscript:{*MEMORY[0x1E6966208]), "unsignedLongValue"}];
    v8 = [objc_msgSend(a2 objectForKeyedSubscript:{*MEMORY[0x1E69660B8]), "unsignedLongValue"}];
    HasRegroupedLayoutDownscale = FigCapturePixelFormatHasRegroupedLayoutDownscale(attributes);
    if (attributes)
    {
      result = CVPixelBufferCreate(0, v7 >> HasRegroupedLayoutDownscale, v8 >> HasRegroupedLayoutDownscale, attributes, a2, &pixelBufferOut);
      if (result)
      {
        FigDebugAssert3();
        result = FigSignalErrorAtGM();
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      result = 4294954516;
    }

    if (format)
    {
      *format = pixelBufferOut;
    }
  }

  return result;
}

- (uint64_t)_writeAndReleaseBacking
{
  if (!self)
  {
    return 0;
  }

  v18 = 0;
  FigGetUpTimeNanoseconds();
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_5_7();
  }

  v17 = 0;
  v16 = 0;
  v15 = 0;
  if (*(self + 152) && *(self + 128))
  {
    if (CMPhotoCompressionSessionCreate())
    {
      OUTLINED_FUNCTION_2_111();
    }

    else
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(*(self + 152));
      if ([(BWDeferredBufferIntermediate *)self _compressionSettingsForProfile:PixelFormatType pixelFormat:&v16 containerFormat:&v15 options:?])
      {
        OUTLINED_FUNCTION_2_111();
      }

      else
      {
        v13[0] = *MEMORY[0x1E6991870];
        v5 = [MEMORY[0x1E696AD98] numberWithInt:v16];
        v6 = *MEMORY[0x1E6991860];
        v14[0] = v5;
        v14[1] = &unk_1F2246870;
        v7 = *MEMORY[0x1E6991850];
        v13[1] = v6;
        v13[2] = v7;
        v8 = *MEMORY[0x1E6991880];
        v14[2] = *(self + 128);
        v14[3] = &unk_1F2246888;
        v9 = *MEMORY[0x1E6991868];
        v13[3] = v8;
        v13[4] = v9;
        v14[4] = MEMORY[0x1E695E118];
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:5];
        if (!CMPhotoCompressionSessionOpenEmptyContainer() && !CMPhotoCompressionSessionAddImage())
        {
          v10 = *(self + 152);
          if (v10)
          {
            CFRelease(v10);
            v1 = 0;
            *(self + 152) = 0;
          }

          else
          {
            v1 = 0;
          }

          goto LABEL_13;
        }

        OUTLINED_FUNCTION_2_111();
      }
    }

    FigDebugAssert3();
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    v1 = 4294951160;
  }

LABEL_13:
  if (v17)
  {
    v1 = CMPhotoCompressionSessionCloseContainer();
    if (v17)
    {
      CFRelease(v17);
    }
  }

  if (*v3 == 1)
  {
    OUTLINED_FUNCTION_5_7();
  }

  FigGetUpTimeNanoseconds();
  if (dword_1EB58E480)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_1_104();
  }

  return v1;
}

- (uint64_t)flush
{
  result = [(BWDeferredBufferIntermediate *)self _writeAndReleaseBacking];
  *a3 = result;
  if (result)
  {
    result = FigDebugAssert3();
  }

  *a2 = 0;
  return result;
}

@end