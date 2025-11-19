@interface NUImageExportFormatTIFF
- (NUImageExportFormatTIFF)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)pixelFormat;
- (void)addImageDestinationOptionsToImageProperties:(id)a3;
@end

@implementation NUImageExportFormatTIFF

- (void)addImageDestinationOptionsToImageProperties:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v9 = [[v4 alloc] initWithCapacity:1];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_compression];
  [v9 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696DF10]];

  v7 = [v9 copy];
  [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696DF28]];

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[NUImageExportFormatTIFF depth](self, "depth")}];
  [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696D890]];
}

- (id)pixelFormat
{
  if (self->_pixelType)
  {
  }

  else
  {
    self = +[NUPixelFormat RGBA8];
  }

  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_opt_class() allocWithZone:a3];
  if (result)
  {
    *(result + 2) = self->_pixelType;
    *(result + 3) = self->_compression;
    *(result + 8) = self->_preserveAlpha;
  }

  return result;
}

- (NUImageExportFormatTIFF)init
{
  v3.receiver = self;
  v3.super_class = NUImageExportFormatTIFF;
  result = [(NUImageExportFormatTIFF *)&v3 init];
  result->_preserveAlpha = 1;
  result->_pixelType = 0;
  result->_compression = 1;
  return result;
}

@end