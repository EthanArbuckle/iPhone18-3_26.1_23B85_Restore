@interface BWInferenceVideoFormatRequirements
+ (id)defaultEspressoFormatRequirementsWithWidth:(int64_t)width height:(int64_t)height;
- (BWInferenceVideoFormatRequirements)initWithFormat:(id)format;
- (void)dealloc;
@end

@implementation BWInferenceVideoFormatRequirements

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceVideoFormatRequirements;
  [(BWVideoFormatRequirements *)&v3 dealloc];
}

- (BWInferenceVideoFormatRequirements)initWithFormat:(id)format
{
  v7.receiver = self;
  v7.super_class = BWInferenceVideoFormatRequirements;
  v4 = -[BWVideoFormatRequirements initWithPixelBufferAttributes:](&v7, sel_initWithPixelBufferAttributes_, [format pixelBufferAttributes]);
  if (v4)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(format, "colorSpaceProperties")}];
    -[BWVideoFormatRequirements setSupportedColorSpaceProperties:](v4, "setSupportedColorSpaceProperties:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1]);
    v4->_deviceOriented = [format deviceOriented];
    v4->_landscapeOriented = [format landscapeOriented];
    v4->_applyHorizontalFlip = [format applyHorizontalFlip];
    v4->_videoContentMode = [format videoContentMode];
    v4->_includesInvalidContent = [format includesInvalidContent];
    v4->_cropDescriptor = [format cropDescriptor];
    v4->_histogramRequest = [objc_msgSend(format "histogramRequest")];
    v4->_rotationDegrees = [format rotationDegrees];
  }

  return v4;
}

+ (id)defaultEspressoFormatRequirementsWithWidth:(int64_t)width height:(int64_t)height
{
  v6 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v6 setWidth:width];
  [(BWVideoFormatRequirements *)v6 setHeight:height];
  [(BWVideoFormatRequirements *)v6 setSupportedPixelFormats:&unk_1F22492D0];
  [(BWVideoFormatRequirements *)v6 setSupportedColorSpaceProperties:&unk_1F22492E8];
  [(BWVideoFormatRequirements *)v6 setBytesPerRowAlignment:64];
  [(BWInferenceVideoFormatRequirements *)v6 setDeviceOriented:1];

  return v6;
}

@end