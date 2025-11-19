@interface TDAsset
+ (BOOL)isTemplateFromImageFilename:(id)a3;
+ (id)_filenameRegex;
+ (int64_t)idiomFromImageFilename:(id)a3;
+ (int64_t)subtypeFromImageFilename:(id)a3;
+ (unsigned)scaleFactorFromImageFilename:(id)a3;
- (NSString)baseName;
- (id)_sourceRelativePathComponents;
- (id)fileURLWithDocument:(id)a3;
- (id)sourceRelativePath;
- (unsigned)scaleFactor;
- (void)setScaleFactor:(unsigned int)a3;
@end

@implementation TDAsset

- (void)setScaleFactor:(unsigned int)a3
{
  [(TDAsset *)self willChangeValueForKey:@"scaleFactor"];
  self->_scaleFactor = a3;

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
  v3 = [(TDAsset *)self name];
  v4 = [(TDAsset *)self category];
  if (![v4 length])
  {
    return v3;
  }

  return [v4 stringByAppendingPathComponent:v3];
}

- (id)sourceRelativePath
{
  v3 = [(TDAsset *)self _sourceRelativePathComponents];
  v4 = [-[TDAsset source](self "source")];
  if (![v4 length])
  {
    return v3;
  }

  return [v4 stringByAppendingPathComponent:v3];
}

- (id)fileURLWithDocument:(id)a3
{
  v5 = [(TDAsset *)self _sourceRelativePathComponents];
  v6 = [objc_msgSend(-[TDAsset source](self "source")];
  if ([v6 length])
  {
    v5 = [v6 stringByAppendingPathComponent:v5];
  }

  if (!v5)
  {
    return 0;
  }

  v7 = MEMORY[0x277CBEBC0];

  return [v7 fileURLWithPath:v5 isDirectory:0];
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
  v7 = [(TDAsset *)self name];

  return [v7 substringToIndex:v6];
}

+ (unsigned)scaleFactorFromImageFilename:(id)a3
{
  if ([a3 length])
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

  v8 = [a3 substringWithRange:{v5 + 1, v6 - 2}];

  return [v8 intValue];
}

+ (BOOL)isTemplateFromImageFilename:(id)a3
{
  v3 = [+[TDAsset _filenameRegex](TDAsset "_filenameRegex")];
  v4 = [v3 count];
  if (v4)
  {
    LOBYTE(v4) = [objc_msgSend(v3 objectAtIndex:{0), "rangeAtIndex:", 1}] != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

+ (int64_t)idiomFromImageFilename:(id)a3
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
      v9 = [a3 substringWithRange:{v7, v8}];
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

+ (int64_t)subtypeFromImageFilename:(id)a3
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