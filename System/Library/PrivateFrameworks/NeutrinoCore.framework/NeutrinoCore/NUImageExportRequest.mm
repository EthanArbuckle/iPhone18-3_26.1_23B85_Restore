@interface NUImageExportRequest
+ (NSArray)defaultAuxiliaryImageTypes;
- (NUImageExportFormat)format;
- (NUImageExportRequest)initWithComposition:(id)composition;
- (NUImageExportRequest)initWithComposition:(id)composition destinationURL:(id)l;
- (NUImageExportRequest)initWithComposition:(id)composition exportFormat:(id)format;
- (NUImageExportRequest)initWithMedia:(id)media;
- (NUImageExportRequest)initWithMedia:(id)media destinationURL:(id)l;
- (NUImageExportRequest)initWithMedia:(id)media exportFormat:(id)format;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newRenderJob;
@end

@implementation NUImageExportRequest

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = NUImageExportRequest;
  v4 = [(NUExportRequest *)&v10 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 23, self->_colorSpace);
    format = [(NUImageExportRequest *)self format];
    v7 = [format copy];
    v8 = v5[24];
    v5[24] = v7;

    objc_storeStrong(v5 + 25, self->_imageProperties);
    objc_storeStrong(v5 + 26, self->_auxiliaryImageTypes);
    objc_storeStrong(v5 + 27, self->_auxImages);
    *(v5 + 176) = self->_renderToData;
    *(v5 + 177) = self->_renderWithIOSurface;
    *(v5 + 178) = self->_applyOrientationAsMetadata;
  }

  return v5;
}

- (id)newRenderJob
{
  v3 = [NUImageExportJob alloc];

  return [(NUImageExportJob *)v3 initWithImageExportRequest:self];
}

- (NUImageExportFormat)format
{
  format = self->_format;
  if (!format)
  {
    v4 = objc_alloc_init(NUImageExportFormatJPEG);
    v5 = self->_format;
    self->_format = &v4->super;

    format = self->_format;
  }

  return format;
}

- (NUImageExportRequest)initWithMedia:(id)media exportFormat:(id)format
{
  formatCopy = format;
  v7 = [(NUImageExportRequest *)self initWithMedia:media];
  format = v7->_format;
  v7->_format = formatCopy;

  return v7;
}

- (NUImageExportRequest)initWithComposition:(id)composition exportFormat:(id)format
{
  formatCopy = format;
  v7 = [(NUImageExportRequest *)self initWithComposition:composition];
  format = v7->_format;
  v7->_format = formatCopy;

  return v7;
}

- (NUImageExportRequest)initWithMedia:(id)media destinationURL:(id)l
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = NUImageExportRequest;
  v7 = [(NUExportRequest *)&v12 initWithMedia:media destinationURL:lCopy];
  if (lCopy)
  {
    v8 = [NUImageExportFormat defaultFormatForURL:lCopy];
    format = v7->_format;
    v7->_format = v8;
  }

  auxImages = v7->_auxImages;
  v7->_auxImages = MEMORY[0x1E695E0F8];

  return v7;
}

- (NUImageExportRequest)initWithComposition:(id)composition destinationURL:(id)l
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = NUImageExportRequest;
  v7 = [(NUExportRequest *)&v12 initWithComposition:composition destinationURL:lCopy];
  if (lCopy)
  {
    v8 = [NUImageExportFormat defaultFormatForURL:lCopy];
    format = v7->_format;
    v7->_format = v8;
  }

  auxImages = v7->_auxImages;
  v7->_auxImages = MEMORY[0x1E695E0F8];

  return v7;
}

- (NUImageExportRequest)initWithMedia:(id)media
{
  v8.receiver = self;
  v8.super_class = NUImageExportRequest;
  v3 = [(NURenderRequest *)&v8 initWithMedia:media];
  v4 = +[NUColorSpace sRGBColorSpace];
  colorSpace = v3->_colorSpace;
  v3->_colorSpace = v4;

  auxImages = v3->_auxImages;
  v3->_auxImages = MEMORY[0x1E695E0F8];

  [(NURenderRequest *)v3 setIsOneShot:1];
  return v3;
}

- (NUImageExportRequest)initWithComposition:(id)composition
{
  v8.receiver = self;
  v8.super_class = NUImageExportRequest;
  v3 = [(NURenderRequest *)&v8 initWithComposition:composition];
  v4 = +[NUColorSpace sRGBColorSpace];
  colorSpace = v3->_colorSpace;
  v3->_colorSpace = v4;

  auxImages = v3->_auxImages;
  v3->_auxImages = MEMORY[0x1E695E0F8];

  [(NURenderRequest *)v3 setIsOneShot:1];
  return v3;
}

+ (NSArray)defaultAuxiliaryImageTypes
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = @"HDRGainMap";
  v6[0] = @"HDRGainMap";
  v3 = @"Disparity";
  v6[1] = @"Disparity";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

@end