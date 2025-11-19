@interface BWInferenceVideoFormat
+ (id)formatByResolvingRequirements:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BWInferenceVideoFormat)initWithUnderlyingFormat:(id)a3 isDeviceOriented:(BOOL)a4 videoContentMode:(int64_t)a5 includesInvalidContent:(BOOL)a6 cropDescriptor:(id)a7 histogramRequest:(id)a8 rotationDegrees:(int)a9 applyHorizontalFlip:(BOOL)a10 isLandscapeOriented:(BOOL)a11;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (unsigned)uncompressedEquivalent;
- (void)dealloc;
@end

@implementation BWInferenceVideoFormat

- (unint64_t)hash
{
  v3 = [(BWInferenceVideoFormat *)self pixelFormat];
  v4 = v3 & 0xFFFFFFFF0000FFFFLL | ([(BWInferenceVideoFormat *)self width]<< 16);
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
  v10 = [(BWInferenceVideoFormat *)self videoContentMode];
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
  return v11 & 0xFFDFFFFFFFFFFFFFLL | ((v10 & 1) << 53) | v12 | v9 | (v13 << 56) | ([(BWVideoFormat *)[(BWInferenceVideoFormat *)self underlyingVideoFormat] bytesPerRowAlignment]<< 60);
}

- (unsigned)uncompressedEquivalent
{
  v2 = [(BWInferenceVideoFormat *)self pixelFormat];

  return FigCaptureUncompressedPixelFormatForPixelFormat(v2);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceVideoFormat;
  [(BWInferenceVideoFormat *)&v3 dealloc];
}

- (BWInferenceVideoFormat)initWithUnderlyingFormat:(id)a3 isDeviceOriented:(BOOL)a4 videoContentMode:(int64_t)a5 includesInvalidContent:(BOOL)a6 cropDescriptor:(id)a7 histogramRequest:(id)a8 rotationDegrees:(int)a9 applyHorizontalFlip:(BOOL)a10 isLandscapeOriented:(BOOL)a11
{
  v19.receiver = self;
  v19.super_class = BWInferenceVideoFormat;
  v17 = [(BWInferenceVideoFormat *)&v19 init];
  if (v17)
  {
    v17->_underlyingVideoFormat = a3;
    v17->_deviceOriented = a4;
    v17->_landscapeOriented = a11;
    v17->_applyHorizontalFlip = a10;
    v17->_videoContentMode = a5;
    v17->_includesInvalidContent = a6;
    v17->_cropDescriptor = a7;
    v17->_histogramRequest = [a8 copy];
    v17->_rotationDegrees = a9;
  }

  return v17;
}

+ (id)formatByResolvingRequirements:(id)a3
{
  result = [BWVideoFormat formatByResolvingRequirements:?];
  if (result)
  {
    v5 = result;
    v6 = [a3 firstObject];
    v22 = [v6 deviceOriented];
    v7 = [v6 landscapeOriented];
    v8 = [v6 applyHorizontalFlip];
    v9 = [v6 videoContentMode];
    v21 = [v6 includesInvalidContent];
    v20 = [v6 cropDescriptor];
    v19 = [v6 histogramRequest];
    v10 = [v6 rotationDegrees];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = [a3 countByEnumeratingWithState:&v24 objects:v23 count:16];
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
            objc_enumerationMutation(a3);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          if (v22 == [v15 deviceOriented] && v7 == objc_msgSend(v15, "landscapeOriented") && v8 == objc_msgSend(v15, "applyHorizontalFlip") && objc_msgSend(v15, "videoContentMode") == v9 && v21 == objc_msgSend(v15, "includesInvalidContent"))
          {
            v16 = [objc_msgSend(v15 "cropDescriptor")];
            if (v16 == [v20 identifier] && objc_msgSend(v15, "rotationDegrees") == v10)
            {
              continue;
            }
          }

          return 0;
        }

        v12 = [a3 countByEnumeratingWithState:&v24 objects:v23 count:16];
        v5 = v18;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    BYTE5(v17) = v7;
    BYTE4(v17) = v8;
    LODWORD(v17) = v10;
    return [BWInferenceVideoFormat initWithUnderlyingFormat:"initWithUnderlyingFormat:isDeviceOriented:videoContentMode:includesInvalidContent:cropDescriptor:histogramRequest:rotationDegrees:applyHorizontalFlip:isLandscapeOriented:" isDeviceOriented:v5 videoContentMode:v22 includesInvalidContent:v9 cropDescriptor:v21 histogramRequest:v20 rotationDegrees:v19 applyHorizontalFlip:v17 isLandscapeOriented:?];
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
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

    v5 = -[BWVideoFormat isEqual:](self->_underlyingVideoFormat, "isEqual:", [a3 underlyingVideoFormat]);
    if (!v5)
    {
      return v5;
    }

    deviceOriented = self->_deviceOriented;
    if (deviceOriented != [a3 deviceOriented] || (landscapeOriented = self->_landscapeOriented, landscapeOriented != objc_msgSend(a3, "landscapeOriented")) || (applyHorizontalFlip = self->_applyHorizontalFlip, applyHorizontalFlip != objc_msgSend(a3, "applyHorizontalFlip")) || (videoContentMode = self->_videoContentMode, videoContentMode != objc_msgSend(a3, "videoContentMode")) || (includesInvalidContent = self->_includesInvalidContent, includesInvalidContent != objc_msgSend(a3, "includesInvalidContent")) || (v11 = -[BWInferenceCropDescriptor identifier](self->_cropDescriptor, "identifier"), v11 != objc_msgSend(objc_msgSend(a3, "cropDescriptor"), "identifier")))
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    rotationDegrees = self->_rotationDegrees;
    LOBYTE(v5) = rotationDegrees == [a3 rotationDegrees];
  }

  return v5;
}

@end