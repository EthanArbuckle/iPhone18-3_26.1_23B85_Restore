@interface TDAsset
+ (BOOL)isTemplateFromImageFilename:(id)filename;
+ (id)_filenameRegex;
+ (int64_t)idiomFromImageFilename:(id)filename;
+ (int64_t)subtypeFromImageFilename:(id)filename;
+ (unsigned)scaleFactorFromImageFilename:(id)filename;
- (NSString)baseName;
- (id)_sourceRelativePathComponents;
- (id)fileURLWithDocument:(id)document;
- (id)sourceRelativePath;
- (unsigned)scaleFactor;
- (void)setScaleFactor:(unsigned int)factor;
@end

@implementation TDAsset

- (void)setScaleFactor:(unsigned int)factor
{
  [(TDAsset *)self willChangeValueForKey:@"scaleFactor"];
  self->_scaleFactor = factor;

  [(TDAsset *)self didChangeValueForKey:@"scaleFactor"];
}

- (unsigned)scaleFactor
{
  [(TDAsset *)self willAccessValueForKey:@"scaleFactor"];
  scaleFactor = self->_scaleFactor;
  [(TDAsset *)self didAccessValueForKey:@"scaleFactor"];
  return scaleFactor;
}

- (id)_sourceRelativePathComponents
{
  name = [(TDAsset *)self name];
  category = [(TDAsset *)self category];
  if (![category length])
  {
    return name;
  }

  return [category stringByAppendingPathComponent:name];
}

- (id)sourceRelativePath
{
  _sourceRelativePathComponents = [(TDAsset *)self _sourceRelativePathComponents];
  v4 = [-[TDAsset source](self "source")];
  if (![v4 length])
  {
    return _sourceRelativePathComponents;
  }

  return [v4 stringByAppendingPathComponent:_sourceRelativePathComponents];
}

- (id)fileURLWithDocument:(id)document
{
  _sourceRelativePathComponents = [(TDAsset *)self _sourceRelativePathComponents];
  v6 = [objc_msgSend(-[TDAsset source](self "source")];
  if ([v6 length])
  {
    _sourceRelativePathComponents = [v6 stringByAppendingPathComponent:_sourceRelativePathComponents];
  }

  if (!_sourceRelativePathComponents)
  {
    return 0;
  }

  v7 = MEMORY[0x277CBEBC0];

  return [v7 fileURLWithPath:_sourceRelativePathComponents isDirectory:0];
}

+ (id)_filenameRegex
{
  if (_filenameRegex_onceToken != -1)
  {
    +[TDAsset _filenameRegex];
  }

  return _filenameRegex_sFilenameRegex;
}

uint64_t __25__TDAsset__filenameRegex__block_invoke()
{
  result = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"(Template)?((-568h)|(-163r))?(@[[:digit:]]+x)?(~[[:alnum:]]+)?.(\\w+)$" options:1 error:0];
  _filenameRegex_sFilenameRegex = result;
  return result;
}

- (NSString)baseName
{
  v3 = [+[TDAsset _filenameRegex](TDAsset "_filenameRegex")];
  if (![v3 count])
  {
    return 0;
  }

  v4 = [objc_msgSend(v3 objectAtIndex:{0), "rangeAtIndex:", 0}];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v4;
  name = [(TDAsset *)self name];

  return [name substringToIndex:v6];
}

+ (unsigned)scaleFactorFromImageFilename:(id)filename
{
  if ([filename length])
  {
    v4 = [+[TDAsset _filenameRegex](TDAsset "_filenameRegex")];
  }

  else
  {
    v4 = 0;
  }

  if (![v4 count])
  {
    return 1;
  }

  v5 = [objc_msgSend(v4 objectAtIndex:{0), "rangeAtIndex:", 5}];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  v8 = [filename substringWithRange:{v5 + 1, v6 - 2}];

  return [v8 intValue];
}

+ (BOOL)isTemplateFromImageFilename:(id)filename
{
  v3 = [+[TDAsset _filenameRegex](TDAsset "_filenameRegex")];
  v4 = [v3 count];
  if (v4)
  {
    LOBYTE(v4) = [objc_msgSend(v3 objectAtIndex:{0), "rangeAtIndex:", 1}] != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

+ (int64_t)idiomFromImageFilename:(id)filename
{
  v4 = [+[TDAsset _filenameRegex](TDAsset "_filenameRegex")];
  result = [v4 count];
  if (result)
  {
    v6 = [v4 objectAtIndex:0];
    v7 = [v6 rangeAtIndex:6];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v6 rangeAtIndex:2] == 0x7FFFFFFFFFFFFFFFLL)
      {
        return 0;
      }

      if ([v6 rangeAtIndex:3] == 0x7FFFFFFFFFFFFFFFLL)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      v9 = [filename substringWithRange:{v7, v8}];
      if ([v9 caseInsensitiveCompare:@"~ipad"])
      {
        if ([v9 caseInsensitiveCompare:@"~iphone"])
        {
          if ([v9 caseInsensitiveCompare:@"~appletv"])
          {
            if ([v9 caseInsensitiveCompare:@"~stark"])
            {
              if ([v9 caseInsensitiveCompare:@"~watch"])
              {
                return 0;
              }

              return 5;
            }

            else
            {
              return 4;
            }
          }

          else
          {
            return 3;
          }
        }

        else
        {
          return 1;
        }
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

+ (int64_t)subtypeFromImageFilename:(id)filename
{
  v3 = [+[TDAsset _filenameRegex](TDAsset "_filenameRegex")];
  if (![v3 count])
  {
    return 0;
  }

  v4 = [v3 objectAtIndex:0];
  if ([v4 rangeAtIndex:3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    return 568;
  }

  if ([v4 rangeAtIndex:4] == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return 163;
}

@end