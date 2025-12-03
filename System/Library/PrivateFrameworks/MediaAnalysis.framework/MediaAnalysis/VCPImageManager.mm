@interface VCPImageManager
+ (BOOL)allowFastPathDecodeWithUniformType:(id)type pixelWidth:(unint64_t)width andPixelHeight:(unint64_t)height;
+ (BOOL)canDecodeAcceleratedUniformTypeIdentifier:(id)identifier;
+ (id)sharedImageManager;
- (VCPImageManager)init;
- (__CVBuffer)imageForResource:(id)resource pixelFormat:(int)format;
- (__CVBuffer)imageForResource:(id)resource pixelFormat:(int)format maxDimension:(unint64_t)dimension;
- (__CVBuffer)imageForResource:(id)resource pixelFormat:(int)format maxDimension:(unint64_t)dimension orientation:(unsigned int *)orientation;
- (__CVBuffer)pixelBufferWithFormat:(int)format andMaxDimension:(unint64_t)dimension fromData:(id)data withUniformTypeIdentifier:(id)identifier flushCache:(BOOL)cache orientation:(unsigned int *)orientation;
- (__CVBuffer)pixelBufferWithFormat:(int)format andMaxDimension:(unint64_t)dimension fromImageURL:(id)l flushCache:(BOOL)cache orientation:(unsigned int *)orientation;
- (__CVBuffer)pixelBufferWithFormat:(int)format andMaxDimension:(unint64_t)dimension fromImageURL:(id)l orientation:(unsigned int *)orientation;
- (id)dataForResource:(id)resource;
- (int)acceleratedDecodeImageData:(id)data pixelFormat:(int)format maxDimension:(unint64_t)dimension pixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int *)orientation flushCache:(BOOL)cache;
- (int)compressCVPixelBuffer:(__CVBuffer *)buffer toJPEGData:(id *)data targetBitStreamLength:(unint64_t)length padding:(BOOL)padding;
- (int)convertPixelBuffer:(__CVBuffer *)buffer toPixelFormat:(int)format flushCache:(BOOL)cache;
- (int)createPixelBufferWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(int)format pixelBuffer:(__CVBuffer *)buffer;
- (int)decodeImageSource:(CGImageSource *)source withUniformTypeIdentifier:(id)identifier pixelFormat:(int)format maxDimension:(unint64_t)dimension orientation:(unsigned int *)orientation pixelBuffer:(__CVBuffer *)buffer;
- (int)drawImage:(CGImage *)image pixelFormat:(int)format withOrientation:(unsigned int)orientation maxDimension:(unint64_t)dimension pixelBuffer:(__CVBuffer *)buffer;
- (void)dealloc;
- (void)flushCache;
@end

@implementation VCPImageManager

- (VCPImageManager)init
{
  v9.receiver = self;
  v9.super_class = VCPImageManager;
  v2 = [(VCPImageManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_encodeSession = 0;
    v2->_decodeSession = 0;
    v2->_transferSession = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.mediaanalysis.VCPImageManager.transcodeQueue", v4);
    transcodeQueue = v3->_transcodeQueue;
    v3->_transcodeQueue = v5;

    v7 = v3;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_encodeSession)
  {
    CMPhotoCompressionSessionFlushCachedBuffers();
    encodeSession = self->_encodeSession;
    if (encodeSession)
    {
      CFRelease(encodeSession);
    }
  }

  if (self->_decodeSession)
  {
    CMPhotoDecompressionSessionDiscardCachedBuffers();
    decodeSession = self->_decodeSession;
    if (decodeSession)
    {
      CFRelease(decodeSession);
    }
  }

  transferSession = self->_transferSession;
  if (transferSession)
  {
    CFRelease(transferSession);
  }

  v6.receiver = self;
  v6.super_class = VCPImageManager;
  [(VCPImageManager *)&v6 dealloc];
}

+ (id)sharedImageManager
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = [v2 sharedInstanceWithIdentifier:@"VCPImageManager" andCreationBlock:&__block_literal_global_83];

  return v3;
}

VCPImageManager *__37__VCPImageManager_sharedImageManager__block_invoke()
{
  v0 = objc_alloc_init(VCPImageManager);

  return v0;
}

+ (BOOL)canDecodeAcceleratedUniformTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy conformsToType:*MEMORY[0x1E6982E58]] & 1) != 0 || (objc_msgSend(identifierCopy, "conformsToType:", *MEMORY[0x1E6982E00]))
  {
    v4 = 1;
  }

  else
  {
    v4 = [identifierCopy conformsToType:*MEMORY[0x1E6982E10]];
  }

  return v4;
}

+ (BOOL)allowFastPathDecodeWithUniformType:(id)type pixelWidth:(unint64_t)width andPixelHeight:(unint64_t)height
{
  result = [VCPImageManager canDecodeAcceleratedUniformTypeIdentifier:type];
  if (width > 0x1000 || height > 0x1000)
  {
    return 0;
  }

  return result;
}

- (id)dataForResource:(id)resource
{
  resourceCopy = resource;
  v4 = objc_alloc_init(MEMORY[0x1E6978700]);
  [v4 setNetworkAccessAllowed:0];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__64;
  v24 = __Block_byref_object_dispose__64;
  data = [MEMORY[0x1E695DF88] data];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__VCPImageManager_dataForResource___block_invoke;
  aBlock[3] = &unk_1E8351528;
  aBlock[4] = &v20;
  v5 = _Block_copy(aBlock);
  v6 = dispatch_semaphore_create(0);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __35__VCPImageManager_dataForResource___block_invoke_2;
  v17 = &unk_1E834C9A0;
  v7 = v6;
  v18 = v7;
  v8 = _Block_copy(&v14);
  defaultManager = [MEMORY[0x1E69786E8] defaultManager];
  v10 = [defaultManager requestDataForAssetResource:resourceCopy options:v4 dataReceivedHandler:v5 completionHandler:v8];

  if (v10)
  {
    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    v11 = v21[5];
  }

  else
  {
    privateFileURL = [resourceCopy privateFileURL];
    if (privateFileURL)
    {
      v11 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:privateFileURL];
    }

    else
    {
      v11 = 0;
    }
  }

  _Block_object_dispose(&v20, 8);

  return v11;
}

- (int)createPixelBufferWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(int)format pixelBuffer:(__CVBuffer *)buffer
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = *MEMORY[0x1E69660D8];
  v14[0] = MEMORY[0x1E695E0F8];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11 = CVPixelBufferCreate(0, width, height, format, v10, buffer);
  if (v11 && *buffer)
  {
    CFRelease(*buffer);
    *buffer = 0;
  }

  return v11;
}

- (int)convertPixelBuffer:(__CVBuffer *)buffer toPixelFormat:(int)format flushCache:(BOOL)cache
{
  cacheCopy = cache;
  v6 = *&format;
  p_transferSession = &self->_transferSession;
  if (self->_transferSession || (v11 = VTPixelTransferSessionCreate(0, p_transferSession)) == 0)
  {
    destinationBuffer = 0;
    Width = CVPixelBufferGetWidth(*buffer);
    v11 = [(VCPImageManager *)self createPixelBufferWithWidth:Width height:CVPixelBufferGetHeight(*buffer) pixelFormat:v6 pixelBuffer:&destinationBuffer];
    if (!v11)
    {
      v11 = VTPixelTransferSessionTransferImage(*p_transferSession, *buffer, destinationBuffer);
      if (cacheCopy && *p_transferSession)
      {
        CFRelease(*p_transferSession);
        *p_transferSession = 0;
      }

      if (v11)
      {
        if (destinationBuffer)
        {
          CFRelease(destinationBuffer);
        }
      }

      else
      {
        CFRelease(*buffer);
        *buffer = destinationBuffer;
      }
    }
  }

  return v11;
}

- (int)acceleratedDecodeImageData:(id)data pixelFormat:(int)format maxDimension:(unint64_t)dimension pixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int *)orientation flushCache:(BOOL)cache
{
  dataCopy = data;
  if (format == 1111970369)
  {
    v14 = 1111970369;
  }

  else
  {
    v14 = 875704422;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v16 = [MEMORY[0x1E696AD98] numberWithInt:v14];
  [dictionary setValue:v16 forKey:*MEMORY[0x1E6991AE8]];

  if (!orientation)
  {
    [dictionary setValue:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6991AC0]];
  }

  if (dimension)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:dimension];
    [dictionary setValue:v17 forKey:*MEMORY[0x1E6991AE0]];

    [dictionary setValue:&unk_1F49BE3C8 forKey:*MEMORY[0x1E6991B10]];
  }

  if (self->_decodeSession || (Container = CMPhotoDecompressionSessionCreate()) == 0)
  {
    Container = CMPhotoDecompressionSessionCreateContainer();
    if (!Container)
    {
      Container = CMPhotoDecompressionContainerCreateDictionaryDescription();
      if (!Container)
      {
        Container = -50;
      }
    }
  }

  if (*buffer)
  {
    CFRelease(*buffer);
    *buffer = 0;
  }

  return Container;
}

- (int)drawImage:(CGImage *)image pixelFormat:(int)format withOrientation:(unsigned int)orientation maxDimension:(unint64_t)dimension pixelBuffer:(__CVBuffer *)buffer
{
  v50 = *MEMORY[0x1E69E9840];
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  if (Width <= Height)
  {
    v14 = Height;
  }

  else
  {
    v14 = Width;
  }

  v15 = 1.0;
  if (dimension && v14 > dimension)
  {
    v15 = dimension / v14;
  }

  *buffer = 0;
  v16 = CGImageGetWidth(image);
  v17 = CGImageGetHeight(image);
  if (v15 <= 0.0 || v15 > 1.0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPImageManager drawImage:pixelFormat:withOrientation:maxDimension:pixelBuffer:];
    }

    return -50;
  }

  v20 = v17;
  v21 = MEMORY[0x1E695EFD0];
  v39 = *MEMORY[0x1E695EFD0];
  v40 = *(MEMORY[0x1E695EFD0] + 16);
  v23 = *(MEMORY[0x1E695EFD0] + 32);
  v22 = *(MEMORY[0x1E695EFD0] + 40);
  if (v15 >= 1.0)
  {
    v24 = v16;
    v25 = v17;
  }

  else
  {
    v24 = (v15 * v16) & 0xFFFFFFFFFFFFFFFELL;
    v25 = (v15 * v17) & 0xFFFFFFFFFFFFFFFELL;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.a) = 134218752;
      *(&buf.a + 4) = v16;
      WORD2(buf.b) = 2048;
      *(&buf.b + 6) = v20;
      HIWORD(buf.c) = 2048;
      *&buf.d = (v15 * v16) & 0xFFFFFFFFFFFFFFFELL;
      LOWORD(buf.tx) = 2048;
      *(&buf.tx + 2) = v25;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[CGImage->CVPixelBuffer] Downscaling %zux%zu --> %zux%zu", &buf, 0x2Au);
    }
  }

  v26 = v24;
  v27 = v25;
  if (orientation >= 2)
  {
    v22 = 0.0;
    if (orientation <= 4)
    {
      v26 = v24;
    }

    else
    {
      v26 = v25;
    }

    if (orientation <= 4)
    {
      v27 = v25;
    }

    else
    {
      v27 = v24;
    }

    if (orientation <= 4)
    {
      if (orientation == 2)
      {
        v40 = xmmword_1C9F61010;
        v39 = xmmword_1C9F60600;
        v23 = v24;
        goto LABEL_42;
      }

      if (orientation == 3)
      {
        v23 = v24;
        v40 = xmmword_1C9F60790;
        v39 = xmmword_1C9F60600;
        v22 = v25;
LABEL_42:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.a) = 67109120;
          HIDWORD(buf.a) = orientation;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[CGImage->CVPixelBuffer] Rotating image (orientation %u) to upright", &buf, 8u);
        }

        goto LABEL_44;
      }

      if (orientation != 4)
      {
LABEL_37:
        v39 = *v21;
        v40 = *(v21 + 16);
        v23 = *(v21 + 32);
        v22 = *(v21 + 40);
        goto LABEL_42;
      }

      v40 = xmmword_1C9F60790;
      v39 = xmmword_1C9F60780;
      v22 = v25;
    }

    else
    {
      if (orientation <= 6)
      {
        if (orientation == 5)
        {
          v23 = v25;
          v40 = xmmword_1C9F60600;
          v39 = xmmword_1C9F60790;
          v22 = v24;
          goto LABEL_42;
        }

        v40 = xmmword_1C9F60780;
        v39 = xmmword_1C9F60790;
        v22 = v24;
        goto LABEL_40;
      }

      if (orientation != 7)
      {
        if (orientation == 8)
        {
          v39 = xmmword_1C9F61010;
          v40 = xmmword_1C9F60600;
          v23 = v25;
          goto LABEL_42;
        }

        goto LABEL_37;
      }

      v39 = xmmword_1C9F61010;
      v40 = xmmword_1C9F60780;
    }

LABEL_40:
    v23 = 0.0;
    goto LABEL_42;
  }

LABEL_44:
  cf = 0;
  if (format == 32)
  {
    v28 = 2;
  }

  else
  {
    v28 = 8194;
  }

  if (format == 32)
  {
    v29 = 32;
  }

  else
  {
    v29 = 1111970369;
  }

  ColorSpace = CGImageGetColorSpace(image);
  v31 = ColorSpace;
  if (!ColorSpace)
  {
    goto LABEL_56;
  }

  if (CGColorSpaceSupportsOutput(ColorSpace) && CGColorSpaceGetNumberOfComponents(v31) == 1)
  {
    v28 = 0;
    v29 = 1278226488;
  }

  if (!CGColorSpaceSupportsOutput(v31) || CGColorSpaceUsesExtendedRange(v31))
  {
LABEL_56:
    v31 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    cf = v31;
    buf.a = 0.0;
    CF<__CVBuffer *>::~CF(&buf);
  }

  value = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  pixelBufferAttributes = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(pixelBufferAttributes, *MEMORY[0x1E69660D8], value);
  pixelBufferOut = 0;
  CVPixelBufferCreate(0, v26, v27, v29, pixelBufferAttributes, &pixelBufferOut);
  if (pixelBufferOut)
  {
    CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965CE8], v31, kCVAttachmentMode_ShouldPropagate);
    v42 = 0;
    pixelBuffer = pixelBufferOut;
    unlockFlags = 0;
    if (pixelBufferOut)
    {
      v19 = CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
      v42 = v19;
      if (!v19 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (LODWORD(buf.a) = 134218240, *(&buf.a + 4) = pixelBuffer, WORD2(buf.b) = 1024, *(&buf.b + 6) = v19, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", &buf, 0x12u), (v19 = v42) == 0))
      {
        BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
        v33 = CVPixelBufferGetWidth(pixelBufferOut);
        v34 = CVPixelBufferGetHeight(pixelBufferOut);
        BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
        v36 = CGBitmapContextCreate(BaseAddress, v33, v34, 8uLL, BytesPerRow, v31, v28);
        c = v36;
        if (v36)
        {
          *&buf.a = v39;
          *&buf.c = v40;
          buf.tx = v23;
          buf.ty = v22;
          CGContextConcatCTM(v36, &buf);
          v51.size.width = v24;
          v51.size.height = v25;
          v51.origin.x = 0.0;
          v51.origin.y = 0.0;
          CGContextDrawImage(c, v51, image);
          v19 = CVPixelBufferLock::Unlock(&v42);
          if (!v19)
          {
            v37 = pixelBufferOut;
            if (pixelBufferOut)
            {
              v37 = CFRetain(pixelBufferOut);
            }

            v19 = 0;
            *buffer = v37;
          }
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            CGImage_CreateCVPixelBuffer();
          }

          v19 = -18;
        }

        CF<__CVBuffer *>::~CF(&c);
        if (pixelBuffer && !v42 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [VCPImageExposurePreAnalyzer analyzePixelBuffer:flags:results:cancel:];
        }
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
      }

      v19 = -50;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      CGImage_CreateCVPixelBuffer();
    }

    v19 = -18;
  }

  CF<__CVBuffer *>::~CF(&pixelBufferOut);
  CF<__CVBuffer *>::~CF(&pixelBufferAttributes);
  CF<__CVBuffer *>::~CF(&value);
  CF<__CVBuffer *>::~CF(&cf);
  return v19;
}

- (int)decodeImageSource:(CGImageSource *)source withUniformTypeIdentifier:(id)identifier pixelFormat:(int)format maxDimension:(unint64_t)dimension orientation:(unsigned int *)orientation pixelBuffer:(__CVBuffer *)buffer
{
  v61 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  orientationCopy = orientation;
  [dictionary setValue:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E696E0A8]];
  [dictionary setValue:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E696E138]];
  if (!dimension)
  {
    goto LABEL_29;
  }

  v12 = CGImageSourceCopyPropertiesAtIndex(source, 0, 0);
  v13 = [(__CFDictionary *)v12 objectForKey:*MEMORY[0x1E696DED8]];
  v14 = [(__CFDictionary *)v12 objectForKey:*MEMORY[0x1E696DEC8]];
  v15 = [(__CFDictionary *)v12 objectForKey:*MEMORY[0x1E696DE78]];
  v16 = v13;
  v17 = v14;
  v18 = v15;
  if (![v16 intValue] || !objc_msgSend(v17, "intValue"))
  {
    v24 = *MEMORY[0x1E695F060];
    v23 = *(MEMORY[0x1E695F060] + 8);
    goto LABEL_14;
  }

  if (!v18)
  {
    goto LABEL_11;
  }

  unsignedIntValue = [v18 unsignedIntValue];
  v20 = unsignedIntValue;
  if (unsignedIntValue - 9 <= 0xFFFFFFF7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v20;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Orientation value %u invalid, assuming kCGImagePropertyOrientationUp", buf, 8u);
    }

    intValue = [v16 intValue];
    intValue2 = [v17 intValue];
    goto LABEL_13;
  }

  if (unsignedIntValue > 4)
  {
    intValue = [v17 intValue];
    intValue2 = [v16 intValue];
  }

  else
  {
LABEL_11:
    intValue = [v16 intValue];
    intValue2 = [v17 intValue];
  }

LABEL_13:
  v23 = intValue2;
  v24 = intValue;
LABEL_14:

  if (v24 < v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  if (v25 > dimension)
  {
    v26 = [identifierCopy conformsToType:*MEMORY[0x1E6982F28]];
    v27 = log2(v25 / dimension);
    v28 = ceil(v27);
    v29 = floor(v27);
    if (v26)
    {
      v29 = v28;
    }

    v30 = v29;
    v31 = exp2f(v30);
    if (v31 >= 32)
    {
      v32 = 32;
    }

    else
    {
      v32 = v31;
    }

    if (v31 > 1)
    {
      if (+[VCPImageManager loggingEnabled]&& MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 134218752;
        *&buf[4] = v24;
        v55 = 2048;
        v56 = v23;
        v57 = 2048;
        dimensionCopy = dimension;
        v59 = 1024;
        v60 = v32;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[Decode] %.0fx%.0f --> %zu; subsampling %dx on decode", buf, 0x26u);
      }

      v33 = [MEMORY[0x1E696AD98] numberWithInt:v32];
      [dictionary setValue:v33 forKey:*MEMORY[0x1E696E0F8]];
    }
  }

LABEL_29:
  v34 = CGImageSourceCopyPropertiesAtIndex(source, 0, 0);
  v35 = [(__CFDictionary *)v34 objectForKey:*MEMORY[0x1E696DE78]];
  v36 = v35;
  if (v35)
  {
    unsignedIntValue2 = [v35 unsignedIntValue];
  }

  else
  {
    unsignedIntValue2 = 1;
  }

  if (orientationCopy || unsignedIntValue2 == 1)
  {
    IOSurfaceAtIndex = CGImageSourceCreateIOSurfaceAtIndex();
    *buf = IOSurfaceAtIndex;
    if (IOSurfaceAtIndex)
    {
      if (!CVPixelBufferCreateWithIOSurface(0, IOSurfaceAtIndex, 0, buffer))
      {
        if (orientationCopy)
        {
          *orientationCopy = unsignedIntValue2;
        }

        goto LABEL_45;
      }

      if (MediaAnalysisLogLevel() < 4 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
LABEL_45:
        CF<__CVBuffer *>::~CF(buf);
        goto LABEL_46;
      }

      *v53 = 0;
      v39 = MEMORY[0x1E69E9C10];
      v40 = "[Decode] Failed to create CVPixelBuffer from IOSurface; falling back to rendering path";
    }

    else
    {
      if (MediaAnalysisLogLevel() < 4 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_45;
      }

      *v53 = 0;
      v39 = MEMORY[0x1E69E9C10];
      v40 = "[Decode] Failed to obtain IOSurface; falling back to rendering path";
    }

    _os_log_impl(&dword_1C9B70000, v39, OS_LOG_TYPE_DEFAULT, v40, v53, 2u);
    goto LABEL_45;
  }

LABEL_46:
  v41 = *buffer;
  if (*buffer)
  {
    goto LABEL_47;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(source, 0, dictionary);
  *buf = ImageAtIndex;
  if (ImageAtIndex)
  {
    v42 = [(VCPImageManager *)self drawImage:ImageAtIndex pixelFormat:format withOrientation:unsignedIntValue2 maxDimension:dimension pixelBuffer:buffer];
    if (!v42)
    {
      CF<__CVBuffer *>::~CF(buf);
      v41 = *buffer;
LABEL_47:
      if (CVPixelBufferGetPixelFormatType(v41) == format)
      {
        v42 = 0;
        goto LABEL_66;
      }

      PixelFormatType = CVPixelBufferGetPixelFormatType(*buffer);
      v45 = 0;
      if (PixelFormatType <= 875704437)
      {
        if (PixelFormatType == 32)
        {
          goto LABEL_60;
        }

        v46 = 875704422;
      }

      else
      {
        if (PixelFormatType == 875704438 || PixelFormatType == 1111970369)
        {
          goto LABEL_60;
        }

        v46 = 1278226488;
      }

      if (PixelFormatType != v46)
      {
        v45 = 1;
      }

LABEL_60:
      v42 = [(VCPImageManager *)self convertPixelBuffer:buffer toPixelFormat:format flushCache:v45];
      if (!v42)
      {
        goto LABEL_66;
      }

      goto LABEL_64;
    }
  }

  else
  {
    v42 = -18;
  }

  CF<__CVBuffer *>::~CF(buf);
LABEL_64:
  if (*buffer)
  {
    CFRelease(*buffer);
    *buffer = 0;
  }

LABEL_66:

  return v42;
}

- (__CVBuffer)pixelBufferWithFormat:(int)format andMaxDimension:(unint64_t)dimension fromData:(id)data withUniformTypeIdentifier:(id)identifier flushCache:(BOOL)cache orientation:(unsigned int *)orientation
{
  dataCopy = data;
  identifierCopy = identifier;
  v16 = identifierCopy;
  if (dataCopy)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    if (orientation)
    {
      *orientation = 1;
    }

    transcodeQueue = self->_transcodeQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __115__VCPImageManager_pixelBufferWithFormat_andMaxDimension_fromData_withUniformTypeIdentifier_flushCache_orientation___block_invoke;
    block[3] = &unk_1E8351550;
    v21 = identifierCopy;
    selfCopy = self;
    formatCopy = format;
    v23 = dataCopy;
    v24 = &v29;
    dimensionCopy = dimension;
    orientationCopy = orientation;
    cacheCopy = cache;
    dispatch_sync(transcodeQueue, block);
    v18 = v30[3];

    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __115__VCPImageManager_pixelBufferWithFormat_andMaxDimension_fromData_withUniformTypeIdentifier_flushCache_orientation___block_invoke(uint64_t a1)
{
  if ([VCPImageManager canDecodeAcceleratedUniformTypeIdentifier:*(a1 + 32)])
  {
    if (![*(a1 + 40) acceleratedDecodeImageData:*(a1 + 48) pixelFormat:*(a1 + 80) maxDimension:*(a1 + 64) pixelBuffer:*(*(a1 + 56) + 8) + 24 orientation:*(a1 + 72) flushCache:*(a1 + 84)])
    {
      return;
    }

    if (+[VCPImageManager loggingEnabled]&& MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[Decode] Accelerated decode failed; falling back to CGImage", v12, 2u);
    }
  }

  v2 = CGImageSourceCreateWithData(*(a1 + 48), 0);
  if ([*(a1 + 40) decodeImageSource:v2 withUniformTypeIdentifier:*(a1 + 32) pixelFormat:*(a1 + 80) maxDimension:*(a1 + 64) orientation:*(a1 + 72) pixelBuffer:*(*(a1 + 56) + 8) + 24])
  {
    v3 = *(*(a1 + 56) + 8);
    v4 = *(v3 + 24);
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 24) = 0;
    }

    if (v2)
    {
      CFRelease(v2);
    }

    v5 = [*(a1 + 32) preferredFilenameExtension];
    v6 = [MADImageASTCFormatReader isValidASTCExtension:v5];

    if (v6)
    {
      v7 = [[MADImageASTCFormatReader alloc] initWithData:*(a1 + 48)];
      v8 = v7;
      if (v7)
      {
        v9 = [(MADImageASTCFormatReader *)v7 readNextImageSource];
        if (v9)
        {
          if ([*(a1 + 40) decodeImageSource:v9 withUniformTypeIdentifier:*(a1 + 32) pixelFormat:*(a1 + 80) maxDimension:*(a1 + 64) orientation:*(a1 + 72) pixelBuffer:*(*(a1 + 56) + 8) + 24])
          {
            v10 = *(*(a1 + 56) + 8);
            v11 = *(v10 + 24);
            if (v11)
            {
              CFRelease(v11);
              *(v10 + 24) = 0;
            }
          }

          CFRelease(v9);
        }
      }
    }
  }

  else if (v2)
  {
    CFRelease(v2);
  }
}

- (__CVBuffer)imageForResource:(id)resource pixelFormat:(int)format
{
  v4 = *&format;
  resourceCopy = resource;
  v7 = objc_autoreleasePoolPush();
  v8 = [(VCPImageManager *)self dataForResource:resourceCopy];
  vcp_uniformTypeIdentifier = [resourceCopy vcp_uniformTypeIdentifier];
  v10 = [(VCPImageManager *)self pixelBufferWithFormat:v4 andMaxDimension:0 fromData:v8 withUniformTypeIdentifier:vcp_uniformTypeIdentifier flushCache:1 orientation:0];

  objc_autoreleasePoolPop(v7);
  return v10;
}

- (__CVBuffer)imageForResource:(id)resource pixelFormat:(int)format maxDimension:(unint64_t)dimension
{
  v6 = *&format;
  resourceCopy = resource;
  if (dimension >= 2)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [(VCPImageManager *)self dataForResource:resourceCopy];
    vcp_uniformTypeIdentifier = [resourceCopy vcp_uniformTypeIdentifier];
    v9 = [(VCPImageManager *)self pixelBufferWithFormat:v6 andMaxDimension:dimension fromData:v11 withUniformTypeIdentifier:vcp_uniformTypeIdentifier flushCache:1 orientation:0];

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (__CVBuffer)imageForResource:(id)resource pixelFormat:(int)format maxDimension:(unint64_t)dimension orientation:(unsigned int *)orientation
{
  v8 = *&format;
  resourceCopy = resource;
  if (dimension >= 2)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = [(VCPImageManager *)self dataForResource:resourceCopy];
    vcp_uniformTypeIdentifier = [resourceCopy vcp_uniformTypeIdentifier];
    v11 = [(VCPImageManager *)self pixelBufferWithFormat:v8 andMaxDimension:dimension fromData:v13 withUniformTypeIdentifier:vcp_uniformTypeIdentifier flushCache:1 orientation:orientation];

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (__CVBuffer)pixelBufferWithFormat:(int)format andMaxDimension:(unint64_t)dimension fromImageURL:(id)l flushCache:(BOOL)cache orientation:(unsigned int *)orientation
{
  cacheCopy = cache;
  v10 = *&format;
  v28 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v13 = objc_autoreleasePoolPush();
  if (lCopy)
  {
    v23 = 0;
    [lCopy getResourceValue:&v23 forKey:*MEMORY[0x1E695DAA0] error:0];
    v14 = v23;
    v22 = 0;
    v15 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:lCopy options:1 error:&v22];
    v21 = v22;
    if (v15)
    {
      v16 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:lCopy];
      dimensionCopy = dimension;
      v18 = v14;
      v19 = [(VCPImageManager *)self pixelBufferWithFormat:v10 andMaxDimension:dimensionCopy fromData:v16 withUniformTypeIdentifier:v14 flushCache:cacheCopy orientation:orientation];
    }

    else if (MediaAnalysisLogLevel() < 3)
    {
      v19 = 0;
      v18 = v14;
    }

    else
    {
      v18 = v14;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v25 = lCopy;
        v26 = 2112;
        v27 = v21;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to load url %@ (%@)", buf, 0x16u);
      }

      v19 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      [VCPImageManager pixelBufferWithFormat:andMaxDimension:fromImageURL:flushCache:orientation:];
    }

    v19 = 0;
  }

  objc_autoreleasePoolPop(v13);

  return v19;
}

- (__CVBuffer)pixelBufferWithFormat:(int)format andMaxDimension:(unint64_t)dimension fromImageURL:(id)l orientation:(unsigned int *)orientation
{
  v8 = *&format;
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v11 = lCopy;
  if (dimension < 2)
  {
LABEL_2:
    v12 = 0;
    goto LABEL_13;
  }

  if (!lCopy)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      [VCPImageManager pixelBufferWithFormat:andMaxDimension:fromImageURL:flushCache:orientation:];
    }

    goto LABEL_2;
  }

  v13 = objc_autoreleasePoolPush();
  v19 = 0;
  [v11 getResourceValue:&v19 forKey:*MEMORY[0x1E695DAA0] error:0];
  v14 = v19;
  v18 = 0;
  v15 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v11 options:1 error:&v18];
  v16 = v18;
  if (v15)
  {
    v12 = [(VCPImageManager *)self pixelBufferWithFormat:v8 andMaxDimension:dimension fromData:v15 withUniformTypeIdentifier:v14 flushCache:1 orientation:orientation];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = v11;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to load url %@ (%@)", buf, 0x16u);
    }

    v12 = 0;
  }

  objc_autoreleasePoolPop(v13);
LABEL_13:

  return v12;
}

- (void)flushCache
{
  if (self->_decodeSession)
  {
    CMPhotoDecompressionSessionDiscardCachedBuffers();
  }
}

- (int)compressCVPixelBuffer:(__CVBuffer *)buffer toJPEGData:(id *)data targetBitStreamLength:(unint64_t)length padding:(BOOL)padding
{
  v44[3] = *MEMORY[0x1E69E9840];
  if (!buffer)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return -50;
    }

    *buf = 0;
    v24 = MEMORY[0x1E69E9C10];
    v25 = "[ImageManagerEncode] inputCVPixelBuffer cannot be NULL";
    goto LABEL_14;
  }

  if (!data)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return -50;
    }

    *buf = 0;
    v24 = MEMORY[0x1E69E9C10];
    v25 = "[ImageManagerEncode] outputJPEGData cannot be nil";
    goto LABEL_14;
  }

  if (!length)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return -50;
    }

    *buf = 0;
    v24 = MEMORY[0x1E69E9C10];
    v25 = "[ImageManagerEncode] targetBitStreamLength cannot be 0";
LABEL_14:
    _os_log_impl(&dword_1C9B70000, v24, OS_LOG_TYPE_ERROR, v25, buf, 2u);
    return -50;
  }

  v11 = *MEMORY[0x1E6991878];
  v43[0] = *MEMORY[0x1E6991870];
  v43[1] = v11;
  v44[0] = &unk_1F49BE3E0;
  v44[1] = &unk_1F49BE3E0;
  v43[2] = *MEMORY[0x1E6991860];
  v44[2] = &unk_1F49BE3F8;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:3];
  v13 = *MEMORY[0x1E6991908];
  v41[0] = *MEMORY[0x1E69918D0];
  v41[1] = v13;
  v14 = MEMORY[0x1E695E118];
  v42[0] = &unk_1F49BE410;
  v42[1] = MEMORY[0x1E695E118];
  v15 = *MEMORY[0x1E6991978];
  v42[2] = &unk_1F49BE428;
  v16 = *MEMORY[0x1E6991970];
  v41[2] = v15;
  v41[3] = v16;
  v39 = *MEMORY[0x1E6991B78];
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:length];
  v40 = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v41[4] = *MEMORY[0x1E6991950];
  v42[3] = v18;
  v42[4] = v14;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:5];

  *buf = 0;
  v36 = buf;
  v37 = 0x2020000000;
  v38 = 0;
  transcodeQueue = self->_transcodeQueue;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __82__VCPImageManager_compressCVPixelBuffer_toJPEGData_targetBitStreamLength_padding___block_invoke;
  v27[3] = &unk_1E8351578;
  v27[4] = self;
  v28 = v12;
  v29 = v19;
  v30 = buf;
  lengthCopy = length;
  bufferCopy = buffer;
  paddingCopy = padding;
  dataCopy = data;
  v21 = v19;
  v22 = v12;
  dispatch_sync(transcodeQueue, v27);
  v23 = *(v36 + 6);

  _Block_object_dispose(buf, 8);
  return v23;
}

void __82__VCPImageManager_compressCVPixelBuffer_toJPEGData_targetBitStreamLength_padding___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v2 = *(a1 + 64);
    *buf = 134217984;
    v30 = v2;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ImageManagerEncode] Encoding CVPixelBuffer -> JPEG (%lu Bytes)", buf, 0xCu);
  }

  if (!*(*(a1 + 32) + 8))
  {
    *(*(*(a1 + 56) + 8) + 24) = CMPhotoCompressionSessionCreate();
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v3 = MEMORY[0x1E69E9C10];
        v4 = "[ImageManagerEncode] Failed to create compression session";
        goto LABEL_22;
      }

      return;
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = CMPhotoCompressionSessionOpenEmptyContainer();
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    *(*(*(a1 + 56) + 8) + 24) = CMPhotoCompressionSessionAddImage();
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v3 = MEMORY[0x1E69E9C10];
        v4 = "[ImageManagerEncode] Fail to image buffer";
        goto LABEL_22;
      }

      return;
    }

    *(*(*(a1 + 56) + 8) + 24) = CMPhotoCompressionSessionCloseContainerAndCopyBacking();
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v3 = MEMORY[0x1E69E9C10];
        v4 = "[ImageManagerEncode] Fail to get transcoded data";
        goto LABEL_22;
      }

      return;
    }

    if (*(a1 + 88) != 1)
    {
      goto LABEL_29;
    }

    v5 = [0 length];
    v6 = v5;
    v7 = *(a1 + 64);
    v8 = v7 - v5;
    if (v7 < v5)
    {
      *(*(*(a1 + 56) + 8) + 24) = -18;
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v30 = v6;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageManagerEncode] Oversized data (%luBytes)", buf, 0xCu);
      }

LABEL_35:

      return;
    }

    if (v7 == v5)
    {
LABEL_29:
      v9 = 0;
      **(a1 + 80) = 0;
    }

    else
    {
      v25 = MediaAnalysisLogLevel();
      if (v25 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v30 = v8;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ImageManagerEncode] Padding JPEG with %lu Bytes", buf, 0xCu);
      }

      v26 = [0 mutableCopy];
      v27 = [MEMORY[0x1E695DF88] dataWithLength:v8];
      [v26 appendData:v27];

      v28 = v26;
      **(a1 + 80) = v26;
    }

    if ([objc_opt_class() _exportReencodedJPEG])
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ImageManagerEncode] Exporting reencoded JPEGs", buf, 2u);
      }

      v10 = [MEMORY[0x1E695DF00] now];
      v11 = MEMORY[0x1E695DFF8];
      v12 = NSTemporaryDirectory();
      v13 = MEMORY[0x1E696AEC0];
      [v10 timeIntervalSinceReferenceDate];
      v15 = [v13 stringWithFormat:@"MADImageManagerEncode_%.3f_unpadded.jpg", v14];
      v16 = [v12 stringByAppendingPathComponent:v15];
      v17 = [v11 fileURLWithPath:v16];

      [0 writeToURL:v17 atomically:1];
      v18 = MEMORY[0x1E695DFF8];
      v19 = NSTemporaryDirectory();
      v20 = MEMORY[0x1E696AEC0];
      [v10 timeIntervalSinceReferenceDate];
      v22 = [v20 stringWithFormat:@"MADImageManagerEncode_%.3f_padded.jpg", v21];
      v23 = [v19 stringByAppendingPathComponent:v22];
      v24 = [v18 fileURLWithPath:v23];

      [**(a1 + 80) writeToURL:v24 atomically:1];
    }

    goto LABEL_35;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v3 = MEMORY[0x1E69E9C10];
    v4 = "[ImageManagerEncode] Fail to open compression container";
LABEL_22:
    _os_log_impl(&dword_1C9B70000, v3, OS_LOG_TYPE_ERROR, v4, buf, 2u);
  }
}

@end