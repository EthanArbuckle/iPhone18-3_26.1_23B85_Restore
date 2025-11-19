@interface BWInferenceVideoFormatRequirements
+ (id)defaultEspressoFormatRequirementsWithWidth:(int64_t)a3 height:(int64_t)a4;
- (BWInferenceVideoFormatRequirements)initWithFormat:(id)a3;
- (void)dealloc;
@end

@implementation BWInferenceVideoFormatRequirements

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceVideoFormatRequirements;
  [(BWVideoFormatRequirements *)&v3 dealloc];
}

- (BWInferenceVideoFormatRequirements)initWithFormat:(id)a3
{
  v7.receiver = self;
  v7.super_class = BWInferenceVideoFormatRequirements;
  v4 = -[BWVideoFormatRequirements initWithPixelBufferAttributes:](&v7, sel_initWithPixelBufferAttributes_, [a3 pixelBufferAttributes]);
  if (v4)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a3, "colorSpaceProperties")}];
    -[BWVideoFormatRequirements setSupportedColorSpaceProperties:](v4, "setSupportedColorSpaceProperties:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1]);
    v4->_deviceOriented = [a3 deviceOriented];
    v4->_landscapeOriented = [a3 landscapeOriented];
    v4->_applyHorizontalFlip = [a3 applyHorizontalFlip];
    v4->_videoContentMode = [a3 videoContentMode];
    v4->_includesInvalidContent = [a3 includesInvalidContent];
    v4->_cropDescriptor = [a3 cropDescriptor];
    v4->_histogramRequest = [objc_msgSend(a3 "histogramRequest")];
    v4->_rotationDegrees = [a3 rotationDegrees];
  }

  return v4;
}

+ (id)defaultEspressoFormatRequirementsWithWidth:(int64_t)a3 height:(int64_t)a4
{
  v6 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v6 setWidth:a3];
  [(BWVideoFormatRequirements *)v6 setHeight:a4];
  [(BWVideoFormatRequirements *)v6 setSupportedPixelFormats:&unk_1F22492D0];
  [(BWVideoFormatRequirements *)v6 setSupportedColorSpaceProperties:&unk_1F22492E8];
  [(BWVideoFormatRequirements *)v6 setBytesPerRowAlignment:64];
  [(BWInferenceVideoFormatRequirements *)v6 setDeviceOriented:1];

  return v6;
}

@end