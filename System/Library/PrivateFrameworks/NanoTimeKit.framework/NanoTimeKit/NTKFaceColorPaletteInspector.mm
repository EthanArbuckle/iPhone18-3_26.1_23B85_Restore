@interface NTKFaceColorPaletteInspector
- (id)description;
@end

@implementation NTKFaceColorPaletteInspector

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  if (self->_isTritium)
  {
    v4 = @" - tritium";
  }

  else
  {
    v4 = &stru_284110E98;
  }

  v5 = [v3 initWithFormat:@"[%@ - %@ - %@%@] ", *&self->_domain, self->_propertyName, v4];
  color = self->_color;
  if (color)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = 0;
      v16 = 0;
      v13 = 0;
      v14 = 0;
      [(UIColor *)self->_color getRed:&v16 green:&v15 blue:&v14 alpha:&v13];
      color = [MEMORY[0x277CCACA8] stringWithFormat:@"[%.3f, %.3f, %.3f, %.2f]", v16, v15, v14, v13];
    }

    else
    {
      color = 0;
    }
  }

  pathLocation = self->_pathLocation;
  if (pathLocation)
  {
    bundlePath = [(NSBundle *)self->_bundleLocation bundlePath];
    ntk_extractFileName = [bundlePath ntk_extractFileName];
    [v5 appendFormat:@"%@ %@: %@", pathLocation, ntk_extractFileName, color];
  }

  else if (self->_fallbackMethodName)
  {
    [v5 appendFormat:@"%@: %@", self->_fallbackMethodName, color];
  }

  else
  {
    [v5 appendFormat:@"NOT FOUND", v11, v12];
  }

  return v5;
}

@end