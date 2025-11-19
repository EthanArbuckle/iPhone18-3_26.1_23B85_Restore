@interface NUImageExportFormatPNG
- (NUImageExportFormatPNG)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NUImageExportFormatPNG

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_opt_class() allocWithZone:a3];
  if (result)
  {
    *(result + 8) = self->_preserveAlpha;
  }

  return result;
}

- (NUImageExportFormatPNG)init
{
  v3.receiver = self;
  v3.super_class = NUImageExportFormatPNG;
  result = [(NUImageExportFormatPNG *)&v3 init];
  result->_preserveAlpha = 1;
  return result;
}

@end