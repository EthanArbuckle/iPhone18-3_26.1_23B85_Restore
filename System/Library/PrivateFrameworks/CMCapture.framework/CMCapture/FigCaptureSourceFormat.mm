@interface FigCaptureSourceFormat
- ($2825F4736939C4A6D3AD43837233062D)defaultHighResStillImageDimensions;
- ($2825F4736939C4A6D3AD43837233062D)soleHighResStillImageDimensions;
- (BOOL)isDefaultActiveFormat;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExperimental;
- (FigCaptureSourceFormat)initWithFigCaptureStreamFormatDictionary:(id)dictionary pixelFormatOverride:(unsigned int)override;
- (float)maxSupportedFrameRate;
- (float)minSupportedFrameRate;
- (id)description;
- (id)formatDictionary;
- (int)maxPoints;
- (opaqueCMFormatDescription)formatDescription;
- (unsigned)format;
- (void)dealloc;
@end

@implementation FigCaptureSourceFormat

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSourceFormat;
  [(FigCaptureSourceFormat *)&v3 dealloc];
}

- (BOOL)isDefaultActiveFormat
{
  v3 = [-[NSDictionary objectForKeyedSubscript:](self->_formatDictionary objectForKeyedSubscript:{@"DefaultActiveFormat", "BOOLValue"}];
  if (v3)
  {
    LOBYTE(v3) = self->_pixelFormatOverride == 0;
  }

  return v3;
}

- (id)formatDictionary
{
  v2 = [(NSDictionary *)self->_formatDictionary copy];

  return v2;
}

- (opaqueCMFormatDescription)formatDescription
{
  formatDescriptionOut = 0;
  dimensions = [(FigCaptureSourceFormat *)self dimensions];
  if ([(FigCaptureSourceFormat *)self format]== 1785950320)
  {
    v7[0] = *MEMORY[0x1E69627A8];
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[FigCaptureSourceFormat maxPoints](self, "maxPoints")}];
    v7[1] = *MEMORY[0x1E69600A0];
    v8[0] = v4;
    v8[1] = MEMORY[0x1E695E0F8];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
    CMFormatDescriptionCreate(*MEMORY[0x1E695E480], [(FigCaptureSourceFormat *)self mediaType], [(FigCaptureSourceFormat *)self format], v5, &formatDescriptionOut);
  }

  else
  {
    CMVideoFormatDescriptionCreate(*MEMORY[0x1E695E480], [(FigCaptureSourceFormat *)self format], dimensions.var0, dimensions.var1, 0, &formatDescriptionOut);
  }

  result = formatDescriptionOut;
  if (formatDescriptionOut)
  {
    return CFAutorelease(formatDescriptionOut);
  }

  return result;
}

- (int)maxPoints
{
  v2 = [(NSDictionary *)self->_formatDictionary objectForKeyedSubscript:@"MaxPoints"];

  return [v2 intValue];
}

- (float)minSupportedFrameRate
{
  v2 = [(NSDictionary *)self->_formatDictionary objectForKeyedSubscript:*off_1E798D408];

  [v2 floatValue];
  return result;
}

- (unsigned)format
{
  if (self->_pixelFormatOverride)
  {
    return self->_pixelFormatOverride;
  }

  v5 = [(NSDictionary *)self->_formatDictionary objectForKeyedSubscript:*MEMORY[0x1E6966130], v2];

  return [v5 unsignedIntValue];
}

- (float)maxSupportedFrameRate
{
  v2 = [(NSDictionary *)self->_formatDictionary objectForKeyedSubscript:*off_1E798D3F8];

  [v2 floatValue];
  return result;
}

- ($2825F4736939C4A6D3AD43837233062D)soleHighResStillImageDimensions
{
  highResStillImageDimensions = [(FigCaptureSourceFormat *)self highResStillImageDimensions];
  [(NSArray *)highResStillImageDimensions count];
  firstObject = [(NSArray *)highResStillImageDimensions firstObject];

  return [firstObject dimensions];
}

- (BOOL)isExperimental
{
  v2 = [(NSDictionary *)self->_formatDictionary objectForKeyedSubscript:*off_1E798D3C8];

  return [v2 BOOLValue];
}

- ($2825F4736939C4A6D3AD43837233062D)defaultHighResStillImageDimensions
{
  firstObject = [(NSArray *)[(FigCaptureSourceFormat *)self highResStillImageDimensions] firstObject];

  return [firstObject dimensions];
}

- (FigCaptureSourceFormat)initWithFigCaptureStreamFormatDictionary:(id)dictionary pixelFormatOverride:(unsigned int)override
{
  if (dictionary)
  {
    v10.receiver = self;
    v10.super_class = FigCaptureSourceFormat;
    v6 = [(FigCaptureSourceFormat *)&v10 init];
    v7 = v6;
    if (v6)
    {
      v6->_pixelFormatOverride = override;
      v8 = [dictionary copy];
      v7->_formatDictionary = v8;
      if (![(NSDictionary *)v8 objectForKeyedSubscript:@"Name"])
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Format is missing FigCaptureSourceFormatKey_Name.", 0}]);
      }

      v7->_uniqueID = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%c%c%c%c", -[NSDictionary objectForKeyedSubscript:](v7->_formatDictionary, "objectForKeyedSubscript:", @"Name", -[FigCaptureSourceFormat format](v7, "format") >> 24, (-[FigCaptureSourceFormat format](v7, "format") >> 16), (-[FigCaptureSourceFormat format](v7, "format") >> 8), -[FigCaptureSourceFormat format](v7, "format")];
    }
  }

  else
  {

    return 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p> %@", NSStringFromClass(v4), self, -[FigCaptureSourceFormat formatDescription](self, "formatDescription")];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_pixelFormatOverride != *(equal + 6))
  {
    return 0;
  }

  formatDictionary = self->_formatDictionary;
  if (formatDictionary == *(equal + 1))
  {
    return 1;
  }

  return [(NSDictionary *)formatDictionary isEqual:?];
}

@end