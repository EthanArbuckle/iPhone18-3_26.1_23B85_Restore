@interface NUAuxiliaryImageRawBuffer
- (CGImage)cgImageRef;
- (NUAuxiliaryImageRawBuffer)initWithPixelBuffer:(__CVBuffer *)buffer auxiliaryImageType:(int64_t)type identifier:(id)identifier;
- (id)auxiliaryImageByApplyingExifOrientation:(unsigned int)orientation;
- (id)auxiliaryImageByReplacingAuxiliaryImageWithPixelBuffer:(__CVBuffer *)buffer error:(id *)error;
- (id)auxiliaryImageByUpdatingMetadata:(CGImageMetadata *)metadata;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationForAuxiliaryDataType:(id *)type;
- (unsigned)pixelFormatType;
- (void)dealloc;
@end

@implementation NUAuxiliaryImageRawBuffer

- (unsigned)pixelFormatType
{
  pixelBuffer = [(NUAuxiliaryImageRawBuffer *)self pixelBuffer];

  return CVPixelBufferGetPixelFormatType(pixelBuffer);
}

- (id)dictionaryRepresentationForAuxiliaryDataType:(id *)type
{
  pixelFormatType = [(NUAuxiliaryImageRawBuffer *)self pixelFormatType];
  Width = CVPixelBufferGetWidth([(NUAuxiliaryImageRawBuffer *)self pixelBuffer]);
  Height = CVPixelBufferGetHeight([(NUAuxiliaryImageRawBuffer *)self pixelBuffer]);
  BytesPerRow = CVPixelBufferGetBytesPerRow([(NUAuxiliaryImageRawBuffer *)self pixelBuffer]);
  v9 = 0;
  if (pixelFormatType && Width && Height && BytesPerRow)
  {
    cgAuxIdentifier = [(NUAuxiliaryImageRawBuffer *)self cgAuxIdentifier];
    v11 = [cgAuxIdentifier isEqualToString:*MEMORY[0x1E696D280]];

    if (v11)
    {
      compatibilityMetadata = [(NUAuxiliaryImageRawBuffer *)self compatibilityMetadata];
    }

    else
    {
      compatibilityMetadata = 0;
    }

    v13 = MEMORY[0x1E69C0708];
    pixelBuffer = [(NUAuxiliaryImageRawBuffer *)self pixelBuffer];
    metadata = [(NUAuxiliaryImageRawBuffer *)self metadata];
    colorSpace = [(NUAuxiliaryImageRawBuffer *)self colorSpace];
    v9 = [v13 dictionaryRepresentationForAuxiliaryImagePixelBuffer:pixelBuffer metadata:metadata colorSpace:objc_msgSend(colorSpace compatibilityMetadata:{"CGColorSpace"), compatibilityMetadata}];

    if (v9)
    {
      if (type)
      {
        *type = [(NUAuxiliaryImageRawBuffer *)self cgAuxIdentifier];
      }

      v17 = v9;
    }
  }

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = 0;
  v2 = [(NUAuxiliaryImageRawBuffer *)self dictionaryRepresentationForAuxiliaryDataType:&v4];

  return v2;
}

- (CGImage)cgImageRef
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(NUAuxiliaryImageRawBuffer *)self auxiliaryImageType]!= 11 && [(NUAuxiliaryImageRawBuffer *)self auxiliaryImageType]!= 10)
  {
    Width = CVPixelBufferGetWidth(self->_pixelBuffer);
    Height = CVPixelBufferGetHeight(self->_pixelBuffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(self->_pixelBuffer);
    DataSize = CVPixelBufferGetDataSize(self->_pixelBuffer);
    imageOut = *byte_1F3F44E68;
    v11 = CVPixelBufferRetain(self->_pixelBuffer);
    v12 = CGDataProviderCreateDirect(v11, DataSize, &imageOut);
    v13 = +[NUColorSpace linearGrayColorSpace];
    cgAuxIdentifier = [(NUAuxiliaryImageRawBuffer *)self cgAuxIdentifier];
    if ([cgAuxIdentifier isEqualToString:*MEMORY[0x1E696D270]])
    {
      v15 = +[NUGlobalSettings forceMeteorPlusLinear];

      if (v15)
      {
LABEL_13:
        v6 = CGImageCreate(Width, Height, 8uLL, 8uLL, BytesPerRow, [v13 CGColorSpace], 0, v12, 0, 0, kCGRenderingIntentDefault);
        CGDataProviderRelease(v12);

        return v6;
      }

      +[NUColorSpace genericGrayGamma2_2ColorSpace];
      v13 = cgAuxIdentifier = v13;
    }

    goto LABEL_13;
  }

  *&imageOut.version = 0;
  v3 = VTCreateCGImageFromCVPixelBuffer([(NUAuxiliaryImageRawBuffer *)self cvPixelBufferRef], 0, &imageOut);
  if (v3)
  {
    v4 = v3;
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_211_16707);
    }

    v5 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v19 = v4;
      _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "VTCreateCGImageFromCVPixelBuffer() failed: %d", buf, 8u);
    }
  }

  return *&imageOut.version;
}

- (id)auxiliaryImageByUpdatingMetadata:(CGImageMetadata *)metadata
{
  v5 = [NUAuxiliaryImageRawBuffer alloc];
  pixelBuffer = [(NUAuxiliaryImageRawBuffer *)self pixelBuffer];
  auxiliaryImageType = [(NUAuxiliaryImageRawBuffer *)self auxiliaryImageType];
  cgAuxIdentifier = [(NUAuxiliaryImageRawBuffer *)self cgAuxIdentifier];
  v9 = [(NUAuxiliaryImageRawBuffer *)v5 initWithPixelBuffer:pixelBuffer auxiliaryImageType:auxiliaryImageType identifier:cgAuxIdentifier];

  [(NUAuxiliaryImageRawBuffer *)v9 setMetadata:metadata];
  colorSpace = [(NUAuxiliaryImageRawBuffer *)self colorSpace];
  [(NUAuxiliaryImageRawBuffer *)v9 setColorSpace:colorSpace];

  [(NUAuxiliaryImageRawBuffer *)v9 setCompatibilityMetadata:[(NUAuxiliaryImageRawBuffer *)self compatibilityMetadata]];

  return v9;
}

- (id)auxiliaryImageByReplacingAuxiliaryImageWithPixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  v6 = [NUAuxiliaryImageRawBuffer alloc];
  auxiliaryImageType = [(NUAuxiliaryImageRawBuffer *)self auxiliaryImageType];
  cgAuxIdentifier = [(NUAuxiliaryImageRawBuffer *)self cgAuxIdentifier];
  v9 = [(NUAuxiliaryImageRawBuffer *)v6 initWithPixelBuffer:buffer auxiliaryImageType:auxiliaryImageType identifier:cgAuxIdentifier];

  [(NUAuxiliaryImageRawBuffer *)v9 setMetadata:[(NUAuxiliaryImageRawBuffer *)self metadata]];
  colorSpace = [(NUAuxiliaryImageRawBuffer *)self colorSpace];
  [(NUAuxiliaryImageRawBuffer *)v9 setColorSpace:colorSpace];

  [(NUAuxiliaryImageRawBuffer *)v9 setCompatibilityMetadata:[(NUAuxiliaryImageRawBuffer *)self compatibilityMetadata]];

  return v9;
}

- (id)auxiliaryImageByApplyingExifOrientation:(unsigned int)orientation
{
  v43[1] = *MEMORY[0x1E69E9840];
  pixelRotationSessionOut = 0;
  pixelBufferOut = 0;
  if (orientation - 9 <= 0xFFFFFFF7)
  {
    v36 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Unsupported EXIF orientation" userInfo:0];
    objc_exception_throw(v36);
  }

  Width = CVPixelBufferGetWidth([(NUAuxiliaryImageRawBuffer *)self pixelBuffer]);
  Height = CVPixelBufferGetHeight([(NUAuxiliaryImageRawBuffer *)self pixelBuffer]);
  PixelFormatType = CVPixelBufferGetPixelFormatType([(NUAuxiliaryImageRawBuffer *)self pixelBuffer]);
  v37 = 0;
  v8 = NUOrientationToClockwiseRotationAndFlips(orientation, &v37);
  v9 = v8;
  if (v8 == 270 || v8 == 90)
  {
    v10 = Width;
  }

  else
  {
    v10 = Height;
    Height = Width;
  }

  v42 = *MEMORY[0x1E69660D8];
  v43[0] = MEMORY[0x1E695E0F8];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
  v12 = *MEMORY[0x1E695E480];
  if (CVPixelBufferCreate(*MEMORY[0x1E695E480], Height, v10, PixelFormatType, v11, &pixelBufferOut))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_211_16707);
    }

    v13 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "[NUAuxiliaryImage] Failed to create rotated pixel buffer", buf, 2u);
    }

    goto LABEL_38;
  }

  v14 = *MEMORY[0x1E6965F60];
  CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965F30], *MEMORY[0x1E6965F60], kCVAttachmentMode_ShouldPropagate);
  v15 = VTPixelRotationSessionCreate(v12, &pixelRotationSessionOut);
  if (v15)
  {
    v16 = v15;
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_211_16707);
    }

    v17 = _NULogger;
    if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    *buf = 67109120;
    v41 = v16;
    v18 = "[NUAuxiliaryImage] VTImageRotationSessionCreate failed (%d)";
    v19 = v17;
LABEL_45:
    _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, v18, buf, 8u);
LABEL_37:
    CVPixelBufferRelease(pixelBufferOut);
LABEL_38:
    selfCopy = self;
    goto LABEL_39;
  }

  if (v9 > 179)
  {
    if (v9 == 180)
    {
      v20 = MEMORY[0x1E6983FF0];
    }

    else
    {
      if (v9 != 270)
      {
        goto LABEL_26;
      }

      v20 = MEMORY[0x1E6983FF8];
    }
  }

  else if (v9)
  {
    if (v9 != 90)
    {
      goto LABEL_26;
    }

    v20 = MEMORY[0x1E6984000];
  }

  else
  {
    v20 = MEMORY[0x1E6983FE8];
  }

  VTSessionSetProperty(pixelRotationSessionOut, *MEMORY[0x1E6983D98], *v20);
LABEL_26:
  v21 = *MEMORY[0x1E695E4D0];
  VTSessionSetProperty(pixelRotationSessionOut, *MEMORY[0x1E6983D68], *MEMORY[0x1E695E4D0]);
  VTSessionSetProperty(pixelRotationSessionOut, *MEMORY[0x1E6983D50], v14);
  VTSessionSetProperty(pixelRotationSessionOut, *MEMORY[0x1E6983D58], *MEMORY[0x1E695E4C0]);
  if (v37)
  {
    v22 = v9 == 90 || v9 == 270;
    v23 = MEMORY[0x1E6983D80];
    if (!v22)
    {
      v23 = MEMORY[0x1E6983D78];
    }

    VTSessionSetProperty(pixelRotationSessionOut, *v23, v21);
  }

  v24 = pixelRotationSessionOut;
  pixelBuffer = [(NUAuxiliaryImageRawBuffer *)self pixelBuffer];
  v26 = VTPixelRotationSessionRotateImage(v24, pixelBuffer, pixelBufferOut);
  if (v26)
  {
    v27 = v26;
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_211_16707);
    }

    v28 = _NULogger;
    if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    *buf = 67109120;
    v41 = v27;
    v18 = "[NUAuxiliaryImage] VTImageRotationSessionTransferImage failed (%d)";
    v19 = v28;
    goto LABEL_45;
  }

  v31 = [NUAuxiliaryImageRawBuffer alloc];
  v32 = pixelBufferOut;
  auxiliaryImageType = [(NUAuxiliaryImageRawBuffer *)self auxiliaryImageType];
  cgAuxIdentifier = [(NUAuxiliaryImageRawBuffer *)self cgAuxIdentifier];
  selfCopy = [(NUAuxiliaryImageRawBuffer *)v31 initWithPixelBuffer:v32 auxiliaryImageType:auxiliaryImageType identifier:cgAuxIdentifier];

  [(NUAuxiliaryImageRawBuffer *)selfCopy setMetadata:[(NUAuxiliaryImageRawBuffer *)self metadata]];
  colorSpace = [(NUAuxiliaryImageRawBuffer *)self colorSpace];
  [(NUAuxiliaryImageRawBuffer *)selfCopy setColorSpace:colorSpace];

  [(NUAuxiliaryImageRawBuffer *)selfCopy setCompatibilityMetadata:[(NUAuxiliaryImageRawBuffer *)self compatibilityMetadata]];
  CVPixelBufferRelease(pixelBufferOut);
  if (pixelRotationSessionOut)
  {
    CFRelease(pixelRotationSessionOut);
  }

LABEL_39:

  return selfCopy;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  [(NUAuxiliaryImageRawBuffer *)self setMetadata:0];
  [(NUAuxiliaryImageRawBuffer *)self setCompatibilityMetadata:0];
  v3.receiver = self;
  v3.super_class = NUAuxiliaryImageRawBuffer;
  [(NUAuxiliaryImageRawBuffer *)&v3 dealloc];
}

- (NUAuxiliaryImageRawBuffer)initWithPixelBuffer:(__CVBuffer *)buffer auxiliaryImageType:(int64_t)type identifier:(id)identifier
{
  v36 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v15 = NUAssertLogger_16664();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "cgIdentifier != nil"];
      *buf = 138543362;
      v33 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_16664();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        callStackSymbols = [v23 callStackSymbols];
        v26 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v22;
        v34 = 2114;
        v35 = v26;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAuxiliaryImageRawBuffer initWithPixelBuffer:auxiliaryImageType:identifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUAuxiliaryImage.m", 526, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "cgIdentifier != nil");
  }

  v9 = identifierCopy;
  v31.receiver = self;
  v31.super_class = NUAuxiliaryImageRawBuffer;
  v10 = [(NUAuxiliaryImageRawBuffer *)&v31 init];
  v11 = CVPixelBufferRetain(buffer);
  v10->_auxiliaryImageType = type;
  v10->_pixelBuffer = v11;
  v12 = [v9 copy];
  cgAuxIdentifier = v10->_cgAuxIdentifier;
  v10->_cgAuxIdentifier = v12;

  return v10;
}

@end