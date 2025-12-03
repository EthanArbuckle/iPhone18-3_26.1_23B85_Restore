@interface BWInferenceVideoFormat
+ (id)formatByResolvingRequirements:(id)requirements;
- (BOOL)isEqual:(id)equal;
- (BWInferenceVideoFormat)initWithUnderlyingFormat:(id)format isDeviceOriented:(BOOL)oriented videoContentMode:(int64_t)mode includesInvalidContent:(BOOL)content cropDescriptor:(id)descriptor histogramRequest:(id)request rotationDegrees:(int)degrees applyHorizontalFlip:(BOOL)self0 isLandscapeOriented:(BOOL)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (unsigned)uncompressedEquivalent;
- (void)dealloc;
@end

@implementation BWInferenceVideoFormat

- (unint64_t)hash
{
  pixelFormat = [(BWInferenceVideoFormat *)self pixelFormat];
  v4 = pixelFormat & 0xFFFFFFFF0000FFFFLL | ([(BWInferenceVideoFormat *)self width]<< 16);
  v5 = v4 & 0xFFFF0000FFFFFFFFLL | ([(BWInferenceVideoFormat *)self height]<< 32);
  v6 = ([(BWInferenceVideoFormat *)self colorSpaceProperties]& 4uLL) >> 2;
  if ([(BWInferenceVideoFormat *)self deviceOriented])
  {
    v7 = 0;
  }

  else
  {
    v7 = 0x2000000000000;
  }

  if ([(BWInferenceVideoFormat *)self includesInvalidContent])
  {
    v8 = 0x4000000000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = (v5 | v7) & 0xFFFEFFFFFFFFFFFFLL | ((v6 & 1) << 48) | v8 | ((([(BWInferenceVideoFormat *)self rotationDegrees]/ 90) & 3) << 51);
  videoContentMode = [(BWInferenceVideoFormat *)self videoContentMode];
  if ([(BWInferenceVideoFormat *)self applyHorizontalFlip])
  {
    v11 = 0x40000000000000;
  }

  else
  {
    v11 = 0;
  }

  if ([(BWInferenceVideoFormat *)self landscapeOriented])
  {
    v12 = 0x80000000000000;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(BWInferenceCropDescriptor *)[(BWInferenceVideoFormat *)self cropDescriptor] identifier]& 0xF;
  return v11 & 0xFFDFFFFFFFFFFFFFLL | ((videoContentMode & 1) << 53) | v12 | v9 | (v13 << 56) | ([(BWVideoFormat *)[(BWInferenceVideoFormat *)self underlyingVideoFormat] bytesPerRowAlignment]<< 60);
}

- (unsigned)uncompressedEquivalent
{
  pixelFormat = [(BWInferenceVideoFormat *)self pixelFormat];

  return FigCaptureUncompressedPixelFormatForPixelFormat(pixelFormat);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceVideoFormat;
  [(BWInferenceVideoFormat *)&v3 dealloc];
}

- (BWInferenceVideoFormat)initWithUnderlyingFormat:(id)format isDeviceOriented:(BOOL)oriented videoContentMode:(int64_t)mode includesInvalidContent:(BOOL)content cropDescriptor:(id)descriptor histogramRequest:(id)request rotationDegrees:(int)degrees applyHorizontalFlip:(BOOL)self0 isLandscapeOriented:(BOOL)self1
{
  v19.receiver = self;
  v19.super_class = BWInferenceVideoFormat;
  v17 = [(BWInferenceVideoFormat *)&v19 init];
  if (v17)
  {
    v17->_underlyingVideoFormat = format;
    v17->_deviceOriented = oriented;
    v17->_landscapeOriented = landscapeOriented;
    v17->_applyHorizontalFlip = flip;
    v17->_videoContentMode = mode;
    v17->_includesInvalidContent = content;
    v17->_cropDescriptor = descriptor;
    v17->_histogramRequest = [request copy];
    v17->_rotationDegrees = degrees;
  }

  return v17;
}

+ (id)formatByResolvingRequirements:(id)requirements
{
  result = [BWVideoFormat formatByResolvingRequirements:?];
  if (result)
  {
    v5 = result;
    firstObject = [requirements firstObject];
    deviceOriented = [firstObject deviceOriented];
    landscapeOriented = [firstObject landscapeOriented];
    applyHorizontalFlip = [firstObject applyHorizontalFlip];
    videoContentMode = [firstObject videoContentMode];
    includesInvalidContent = [firstObject includesInvalidContent];
    cropDescriptor = [firstObject cropDescriptor];
    histogramRequest = [firstObject histogramRequest];
    rotationDegrees = [firstObject rotationDegrees];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = [requirements countByEnumeratingWithState:&v24 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      v18 = v5;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(requirements);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          if (deviceOriented == [v15 deviceOriented] && landscapeOriented == objc_msgSend(v15, "landscapeOriented") && applyHorizontalFlip == objc_msgSend(v15, "applyHorizontalFlip") && objc_msgSend(v15, "videoContentMode") == videoContentMode && includesInvalidContent == objc_msgSend(v15, "includesInvalidContent"))
          {
            v16 = [objc_msgSend(v15 "cropDescriptor")];
            if (v16 == [cropDescriptor identifier] && objc_msgSend(v15, "rotationDegrees") == rotationDegrees)
            {
              continue;
            }
          }

          return 0;
        }

        v12 = [requirements countByEnumeratingWithState:&v24 objects:v23 count:16];
        v5 = v18;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    BYTE5(v17) = landscapeOriented;
    BYTE4(v17) = applyHorizontalFlip;
    LODWORD(v17) = rotationDegrees;
    return [BWInferenceVideoFormat initWithUnderlyingFormat:"initWithUnderlyingFormat:isDeviceOriented:videoContentMode:includesInvalidContent:cropDescriptor:histogramRequest:rotationDegrees:applyHorizontalFlip:isLandscapeOriented:" isDeviceOriented:v5 videoContentMode:deviceOriented includesInvalidContent:videoContentMode cropDescriptor:includesInvalidContent histogramRequest:cropDescriptor rotationDegrees:histogramRequest applyHorizontalFlip:v17 isLandscapeOriented:?];
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[BWVideoFormatRequirements alloc] initWithPixelBufferAttributes:[(BWVideoFormat *)self->_underlyingVideoFormat pixelBufferAttributes]];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BWInferenceVideoFormat colorSpaceProperties](self, "colorSpaceProperties")}];
  -[BWVideoFormatRequirements setSupportedColorSpaceProperties:](v4, "setSupportedColorSpaceProperties:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1]);
  v9 = v4;
  v5 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1]);

  v6 = [BWInferenceVideoFormat alloc];
  BYTE5(v8) = self->_landscapeOriented;
  BYTE4(v8) = self->_applyHorizontalFlip;
  LODWORD(v8) = self->_rotationDegrees;
  return [BWInferenceVideoFormat initWithUnderlyingFormat:v6 isDeviceOriented:"initWithUnderlyingFormat:isDeviceOriented:videoContentMode:includesInvalidContent:cropDescriptor:histogramRequest:rotationDegrees:applyHorizontalFlip:isLandscapeOriented:" videoContentMode:v5 includesInvalidContent:self->_deviceOriented cropDescriptor:self->_videoContentMode histogramRequest:self->_includesInvalidContent rotationDegrees:self->_cropDescriptor applyHorizontalFlip:self->_histogramRequest isLandscapeOriented:v8];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    v5 = -[BWVideoFormat isEqual:](self->_underlyingVideoFormat, "isEqual:", [equal underlyingVideoFormat]);
    if (!v5)
    {
      return v5;
    }

    deviceOriented = self->_deviceOriented;
    if (deviceOriented != [equal deviceOriented] || (landscapeOriented = self->_landscapeOriented, landscapeOriented != objc_msgSend(equal, "landscapeOriented")) || (applyHorizontalFlip = self->_applyHorizontalFlip, applyHorizontalFlip != objc_msgSend(equal, "applyHorizontalFlip")) || (videoContentMode = self->_videoContentMode, videoContentMode != objc_msgSend(equal, "videoContentMode")) || (includesInvalidContent = self->_includesInvalidContent, includesInvalidContent != objc_msgSend(equal, "includesInvalidContent")) || (v11 = -[BWInferenceCropDescriptor identifier](self->_cropDescriptor, "identifier"), v11 != objc_msgSend(objc_msgSend(equal, "cropDescriptor"), "identifier")))
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    rotationDegrees = self->_rotationDegrees;
    LOBYTE(v5) = rotationDegrees == [equal rotationDegrees];
  }

  return v5;
}

@end