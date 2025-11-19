@interface BWVideoFormatRequirements
+ (id)formatRequirements;
- (BOOL)isEqual:(id)a3;
- (BWVideoFormatRequirements)init;
- (BWVideoFormatRequirements)initWithCoder:(id)a3;
- (BWVideoFormatRequirements)initWithPixelBufferAttributes:(id)a3;
- (NSDictionary)pixelBufferAttributes;
- (id)_resolvePixelFormat;
- (id)debugDescription;
- (id)description;
- (uint64_t)_resolveWith:(uint64_t)result printErrors:(void *)a2;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BWVideoFormatRequirements

- (BWVideoFormatRequirements)init
{
  v3.receiver = self;
  v3.super_class = BWVideoFormatRequirements;
  result = [(BWFormatRequirements *)&v3 init];
  if (result)
  {
    result->_prewireBuffers = 1;
    result->_memoryPoolUseAllowed = 1;
  }

  return result;
}

- (NSDictionary)pixelBufferAttributes
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
  if (self->_width)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:?];
    [(NSDictionary *)v3 setObject:v4 forKeyedSubscript:*MEMORY[0x1E6966208]];
  }

  if (self->_height)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:?];
    [(NSDictionary *)v3 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69660B8]];
  }

  if (self->_sliceCount)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:?];
    [(NSDictionary *)v3 setObject:v6 forKeyedSubscript:*MEMORY[0x1E6966108]];
  }

  [(NSDictionary *)v3 setObject:self->_supportedPixelFormats forKeyedSubscript:*MEMORY[0x1E6966130]];
  if (self->_bytesPerRowAlignment)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:?];
    [(NSDictionary *)v3 setObject:v7 forKeyedSubscript:*MEMORY[0x1E6966020]];
  }

  widthAlignment = self->_widthAlignment;
  if (widthAlignment)
  {
    width = self->_width;
    if (width)
    {
      v10 = width % widthAlignment;
      if (widthAlignment - v10 >= widthAlignment ? -v10 : widthAlignment - v10)
      {
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:?];
        [(NSDictionary *)v3 setObject:v12 forKeyedSubscript:*MEMORY[0x1E6966090]];
      }
    }
  }

  heightAlignment = self->_heightAlignment;
  if (heightAlignment)
  {
    height = self->_height;
    if (height)
    {
      v15 = height % heightAlignment;
      if (heightAlignment - v15 >= heightAlignment ? -v15 : heightAlignment - v15)
      {
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:?];
        [(NSDictionary *)v3 setObject:v17 forKeyedSubscript:*MEMORY[0x1E6966078]];
      }
    }
  }

  if (self->_planeAlignment)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:?];
    [(NSDictionary *)v3 setObject:v18 forKeyedSubscript:*MEMORY[0x1E6966140]];
  }

  supportedCacheModes = self->_supportedCacheModes;
  if (supportedCacheModes)
  {
    [(NSDictionary *)v3 setObject:supportedCacheModes forKeyedSubscript:*MEMORY[0x1E6966038]];
  }

  v20 = [MEMORY[0x1E695DF90] dictionary];
  v21 = v20;
  if (!self->_prewireBuffers)
  {
    [v20 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E696D0D8]];
  }

  [(NSDictionary *)v3 setObject:v21 forKeyedSubscript:*MEMORY[0x1E69660D8]];
  if (FigCapturePlatformIOSurfaceWiringAssertionEnabled())
  {
    [(NSDictionary *)v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69660F0]];
  }

  return v3;
}

- (id)_resolvePixelFormat
{
  if (result)
  {
    v1 = result;
    result = [result[4] count];
    if (result >= 2)
    {
      v9 = v1[4];
      v10 = v1[5];
      if (v10)
      {
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v11 = OUTLINED_FUNCTION_17_0(result, v2, v3, v4, v5, v6, v7, v8, v26, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, 0);
        if (v11)
        {
          v12 = v11;
          v13 = 0;
          v14 = *v46;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v46 != v14)
              {
                objc_enumerationMutation(v10);
              }

              v16 = *(*(&v45 + 1) + 8 * i);
              v17 = [v9 containsObject:v16];
              if (v17)
              {
                if (!v13)
                {
                  v13 = [MEMORY[0x1E695DF70] array];
                }

                v17 = [v13 addObject:v16];
              }
            }

            v12 = OUTLINED_FUNCTION_17_0(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
          }

          while (v12);
        }

        else
        {
          v13 = 0;
        }

        if ([v13 count])
        {
          v9 = v13;
        }
      }

      v25 = FigCapturePixelFormatWithLeastAverageBandwidth(v9);

      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v25];
      result = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
      v1[4] = result;
    }
  }

  return result;
}

+ (id)formatRequirements
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWVideoFormatRequirements;
  [(BWVideoFormatRequirements *)&v3 dealloc];
}

- (BWVideoFormatRequirements)initWithPixelBufferAttributes:(id)a3
{
  if (a3)
  {
    v35.receiver = self;
    v35.super_class = BWVideoFormatRequirements;
    v4 = [(BWFormatRequirements *)&v35 init];
    if (v4)
    {
      v33 = *MEMORY[0x1E6966208];
      v4->_width = [objc_msgSend(a3 "objectForKeyedSubscript:"unsignedIntegerValue"")];
      v32 = *MEMORY[0x1E69660B8];
      v4->_height = [objc_msgSend(a3 "objectForKeyedSubscript:"unsignedIntegerValue"")];
      v4->_sliceCount = [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E6966108]), "unsignedIntegerValue"}];
      v31 = *MEMORY[0x1E6966130];
      v5 = [a3 objectForKeyedSubscript:?];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v34 = v5;
        v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
      }

      else
      {
        v6 = [v5 copy];
      }

      v4->_supportedPixelFormats = v6;
      v7 = *MEMORY[0x1E6966020];
      v4->_bytesPerRowAlignment = [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E6966020]), "unsignedIntegerValue"}];
      v8 = *MEMORY[0x1E6966140];
      v4->_planeAlignment = [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E6966140]), "unsignedIntegerValue"}];
      v9 = *MEMORY[0x1E6966038];
      v10 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6966038]];
      if ([v10 count])
      {
        v4->_supportedCacheModes = [v10 copy];
      }

      v4->_prewireBuffers = 1;
      v4->_memoryPoolUseAllowed = 1;
      v11 = *MEMORY[0x1E69660D8];
      v12 = [a3 objectForKeyedSubscript:*MEMORY[0x1E69660D8]];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696CE60]];
        if (v14)
        {
          v15 = v14;
          supportedCacheModes = v4->_supportedCacheModes;
          if (!supportedCacheModes || ([-[NSArray objectAtIndexedSubscript:](supportedCacheModes objectAtIndexedSubscript:{0), "isEqual:", v15}], !v4->_supportedCacheModes))
          {
            v4->_supportedCacheModes = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v15, 0}];
          }
        }

        v17 = [v13 objectForKeyedSubscript:*MEMORY[0x1E696D0D8]];
        if (v17)
        {
          v4->_prewireBuffers = [v17 BOOLValue];
        }
      }

      v18 = *MEMORY[0x1E6966090];
      v19 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6966090]];
      if (v19)
      {
        width = v4->_width;
        if (width)
        {
          v21 = [v19 unsignedIntegerValue];
          v22 = v21 + 1;
          while ((v21 + width) % v22 || !(width % v22))
          {
            if (++v22 > 0x1000)
            {
              v22 = 0;
              break;
            }
          }

          v4->_widthAlignment = v22;
        }
      }

      v23 = *MEMORY[0x1E6966078];
      v24 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6966078]];
      if (v24)
      {
        height = v4->_height;
        if (height)
        {
          v26 = [v24 unsignedIntegerValue];
          v27 = v26 + 1;
          while ((v26 + height) % v27 || !(height % v27))
          {
            if (++v27 > 0x1000)
            {
              v27 = 0;
              break;
            }
          }

          v4->_heightAlignment = v27;
        }
      }

      v28 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v33, v32, v31, v7, v8, v9, v18, v23, v11, 0}];
      v29 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:{objc_msgSend(a3, "allKeys")}];
      [v29 minusSet:v28];
      [v29 count];
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (BWVideoFormatRequirements)initWithCoder:(id)a3
{
  v4 = [(BWVideoFormatRequirements *)self init];
  if (v4)
  {
    v4->_width = [a3 decodeInt64ForKey:@"width"];
    v4->_height = [a3 decodeInt64ForKey:@"height"];
    v4->_sliceCount = [a3 decodeInt64ForKey:@"numberOfSlices"];
    v5 = MEMORY[0x1E695DFD8];
    v9[0] = objc_opt_class();
    v9[1] = objc_opt_class();
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
    v7 = [v5 setWithArray:{v6, v9[0]}];
    v4->_supportedPixelFormats = [a3 decodeObjectOfClasses:v7 forKey:@"supportedPixelFormats"];
    v4->_preferredPixelFormats = [a3 decodeObjectOfClasses:v7 forKey:@"preferredPixelFormats"];
    v4->_supportedColorSpaceProperties = [a3 decodeObjectOfClasses:v7 forKey:@"supportedColorSpaceProperties"];
    v4->_bytesPerRowAlignment = [a3 decodeInt64ForKey:@"bytesPerRowAlignment"];
    v4->_planeAlignment = [a3 decodeInt64ForKey:@"planeAlignment"];
    v4->_widthAlignment = [a3 decodeInt64ForKey:@"widthAlignment"];
    v4->_heightAlignment = [a3 decodeInt64ForKey:@"heightAlignment"];
    v4->_supportedCacheModes = [a3 decodeObjectOfClasses:v7 forKey:@"supportedCacheModes"];
    v4->_prewireBuffers = [a3 decodeBoolForKey:@"prewireBuffers"];
    v4->_memoryPoolUseAllowed = [a3 decodeBoolForKey:@"memoryPoolUseAllowed"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt64:self->_width forKey:@"width"];
  [a3 encodeInt64:self->_height forKey:@"height"];
  [a3 encodeInt64:self->_sliceCount forKey:@"numberOfSlices"];
  [a3 encodeObject:self->_supportedPixelFormats forKey:@"supportedPixelFormats"];
  [a3 encodeObject:self->_preferredPixelFormats forKey:@"preferredPixelFormats"];
  [a3 encodeObject:self->_supportedColorSpaceProperties forKey:@"supportedColorSpaceProperties"];
  [a3 encodeInt64:self->_bytesPerRowAlignment forKey:@"bytesPerRowAlignment"];
  [a3 encodeInt64:self->_planeAlignment forKey:@"planeAlignment"];
  [a3 encodeInt64:self->_widthAlignment forKey:@"widthAlignment"];
  [a3 encodeInt64:self->_heightAlignment forKey:@"heightAlignment"];
  [a3 encodeObject:self->_supportedCacheModes forKey:@"supportedCacheModes"];
  [a3 encodeBool:self->_prewireBuffers forKey:@"prewireBuffers"];
  memoryPoolUseAllowed = self->_memoryPoolUseAllowed;

  [a3 encodeBool:memoryPoolUseAllowed forKey:@"memoryPoolUseAllowed"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithCapacity:0];
  v4 = v3;
  if (self->_width)
  {
    [v3 appendFormat:@"%i", self->_width];
  }

  else
  {
    [v3 appendString:@"[any width]"];
  }

  [v4 appendString:@" x "];
  if (self->_height)
  {
    [v4 appendFormat:@"%i", self->_height];
  }

  else
  {
    [v4 appendString:@"[any height]"];
  }

  if (self->_sliceCount)
  {
    [v4 appendFormat:@" x %i", self->_sliceCount];
  }

  widthAlignment = self->_widthAlignment;
  if (widthAlignment || self->_heightAlignment)
  {
    width = self->_width;
    if (width && (height = self->_height) != 0)
    {
      if (width % widthAlignment)
      {
        v8 = widthAlignment - width % widthAlignment;
      }

      else
      {
        v8 = 0;
      }

      if (widthAlignment)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9 + width;
      heightAlignment = self->_heightAlignment;
      if (height % heightAlignment)
      {
        v12 = heightAlignment - height % heightAlignment;
      }

      else
      {
        v12 = 0;
      }

      if (heightAlignment)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      [v4 appendFormat:@" (%i x %i)", v10, v13 + height];
    }

    else
    {
      if (widthAlignment)
      {
        [v4 appendFormat:@", WidthAlignment = %i", self->_widthAlignment];
      }

      if (self->_heightAlignment)
      {
        [v4 appendFormat:@", HeightAlignment = %i", self->_heightAlignment, v38];
      }
    }
  }

  [v4 appendString:{@", "}];
  if ([(NSArray *)self->_supportedPixelFormats count])
  {
    if ([(NSArray *)self->_supportedPixelFormats count]== 1)
    {
      v14 = BWStringFromCVPixelFormatType([-[NSArray objectAtIndexedSubscript:](self->_supportedPixelFormats objectAtIndexedSubscript:{0), "unsignedIntValue"}]);
    }

    else
    {
      [v4 appendString:@"["];
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      supportedPixelFormats = self->_supportedPixelFormats;
      v16 = [(NSArray *)supportedPixelFormats countByEnumeratingWithState:&v51 objects:v50 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = 0;
        v19 = *v52;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v52 != v19)
            {
              objc_enumerationMutation(supportedPixelFormats);
            }

            v21 = *(*(&v51 + 1) + 8 * i);
            if (-v18 != i)
            {
              [v4 appendString:{@", "}];
            }

            [v4 appendString:{BWStringFromCVPixelFormatType(objc_msgSend(v21, "unsignedIntValue"))}];
          }

          v18 += v17;
          v17 = [(NSArray *)supportedPixelFormats countByEnumeratingWithState:&v51 objects:v50 count:16];
        }

        while (v17);
      }

      v14 = @"]";
    }
  }

  else
  {
    v14 = @"[any pixel format]";
  }

  [v4 appendString:v14];
  if ([(NSArray *)self->_supportedColorSpaceProperties count])
  {
    [v4 appendString:{@", ["}];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    supportedColorSpaceProperties = self->_supportedColorSpaceProperties;
    v23 = [(NSArray *)supportedColorSpaceProperties countByEnumeratingWithState:&v46 objects:v45 count:16];
    if (v23)
    {
      v24 = v23;
      v39 = self;
      v25 = 0;
      v26 = *v47;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v47 != v26)
          {
            objc_enumerationMutation(supportedColorSpaceProperties);
          }

          v28 = *(*(&v46 + 1) + 8 * j);
          if (-v25 != j)
          {
            [v4 appendString:{@", "}];
          }

          [v4 appendFormat:@"%@", BWColorSpacePropertiesToString(objc_msgSend(v28, "unsignedIntValue"))];
        }

        v25 += v24;
        v24 = [(NSArray *)supportedColorSpaceProperties countByEnumeratingWithState:&v46 objects:v45 count:16];
      }

      while (v24);
      self = v39;
    }

    v29 = @"]";
  }

  else
  {
    v29 = @", [any color space]";
  }

  [v4 appendString:v29];
  if (self->_bytesPerRowAlignment)
  {
    [v4 appendFormat:@", BPRAlignment = %i", self->_bytesPerRowAlignment];
  }

  if (self->_planeAlignment)
  {
    [v4 appendFormat:@", PlaneAlignment = %i", self->_planeAlignment];
  }

  if ([(NSArray *)self->_supportedCacheModes count])
  {
    [v4 appendString:{@", CacheModes = ["}];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    supportedCacheModes = self->_supportedCacheModes;
    v31 = [(NSArray *)supportedCacheModes countByEnumeratingWithState:&v41 objects:v40 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = 0;
      v34 = *v42;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v42 != v34)
          {
            objc_enumerationMutation(supportedCacheModes);
          }

          v36 = *(*(&v41 + 1) + 8 * k);
          if (-v33 != k)
          {
            [v4 appendString:{@", "}];
          }

          [v4 appendString:{BWStringForCacheMode(objc_msgSend(v36, "unsignedIntValue"))}];
        }

        v33 += v32;
        v32 = [(NSArray *)supportedCacheModes countByEnumeratingWithState:&v41 objects:v40 count:16];
      }

      while (v32);
    }

    [v4 appendString:@"]"];
  }

  return v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p> %@", NSStringFromClass(v4), self, -[BWVideoFormatRequirements description](self, "description")];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v12) = 1;
    return v12;
  }

  v14 = v4;
  v15 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_29;
  }

  [a3 width];
  OUTLINED_FUNCTION_0_97();
  if (!v11)
  {
    goto LABEL_29;
  }

  [a3 height];
  OUTLINED_FUNCTION_0_97();
  if (!v11)
  {
    goto LABEL_29;
  }

  [a3 sliceCount];
  OUTLINED_FUNCTION_0_97();
  if (!v11)
  {
    goto LABEL_29;
  }

  [a3 bytesPerRowAlignment];
  OUTLINED_FUNCTION_0_97();
  if (!v11)
  {
    goto LABEL_29;
  }

  [a3 planeAlignment];
  OUTLINED_FUNCTION_0_97();
  if (!v11)
  {
    goto LABEL_29;
  }

  [a3 widthAlignment];
  OUTLINED_FUNCTION_0_97();
  if (!v11)
  {
    goto LABEL_29;
  }

  [a3 heightAlignment];
  OUTLINED_FUNCTION_0_97();
  if (!v11 || self->_prewireBuffers != [a3 prewireBuffers] || self->_memoryPoolUseAllowed != objc_msgSend(a3, "memoryPoolUseAllowed"))
  {
    goto LABEL_29;
  }

  [a3 supportedPixelFormats];
  OUTLINED_FUNCTION_6_68();
  if (v11 || (v12 = [objc_msgSend(a3 "supportedPixelFormats")]) != 0)
  {
    [a3 preferredPixelFormats];
    OUTLINED_FUNCTION_6_68();
    if (v11 || (v12 = [objc_msgSend(a3 "preferredPixelFormats")]) != 0)
    {
      [a3 supportedColorSpaceProperties];
      OUTLINED_FUNCTION_6_68();
      if (v11 || (v12 = [objc_msgSend(a3 "supportedColorSpaceProperties")]) != 0)
      {
        [a3 supportedCacheModes];
        OUTLINED_FUNCTION_6_68();
        if (v11 || ([objc_msgSend(a3 "supportedCacheModes")] & 1) != 0)
        {
          LOBYTE(v12) = 1;
          return v12;
        }

LABEL_29:
        LOBYTE(v12) = 0;
      }
    }
  }

  return v12;
}

- (uint64_t)_resolveWith:(uint64_t)result printErrors:(void *)a2
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  [a2 width];
  OUTLINED_FUNCTION_2_96();
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  if (v4 && v6)
  {
    *(v3 + 8) = v4;
  }

  else
  {
    v7 = v6 ^ 1;
    if (!v4)
    {
      v7 = 0;
    }

    if (v7)
    {
      return 0;
    }
  }

  [a2 height];
  OUTLINED_FUNCTION_2_96();
  if (v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  if (v8 && v9)
  {
    *(v3 + 16) = v8;
  }

  else
  {
    v10 = v9 ^ 1;
    if (!v8)
    {
      v10 = 0;
    }

    if (v10)
    {
      return 0;
    }
  }

  [a2 sliceCount];
  OUTLINED_FUNCTION_2_96();
  if (v5)
  {
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  if (!v11 || !v12)
  {
    v13 = v12 ^ 1;
    if (!v11)
    {
      v13 = 0;
    }

    if ((v13 & 1) == 0)
    {
      goto LABEL_29;
    }

    return 0;
  }

  *(v3 + 24) = v11;
LABEL_29:
  result = vfr_resolveNumericalArrays((v3 + 32), [a2 supportedPixelFormats]);
  if (result)
  {
    vfr_resolveNumericalArrays((v3 + 40), [a2 preferredPixelFormats]);
    v14 = [*(v3 + 40) bw_intersectWithArray:*(v3 + 32)];

    *(v3 + 40) = v14;
    [a2 supportedColorSpaceProperties];
    v15 = OUTLINED_FUNCTION_1_108();
    result = vfr_resolveNumericalArrays(v15, v16);
    if (result)
    {
      [a2 supportedCacheModes];
      v17 = OUTLINED_FUNCTION_1_108();
      result = vfr_resolveNumericalArrays(v17, v18);
      if (result)
      {
        [a2 bytesPerRowAlignment];
        v19 = OUTLINED_FUNCTION_1_108();
        vfr_resolveOptionalAlignmentFactors(v19, v20);
        [a2 planeAlignment];
        v21 = OUTLINED_FUNCTION_1_108();
        vfr_resolveOptionalAlignmentFactors(v21, v22);
        [a2 widthAlignment];
        v23 = OUTLINED_FUNCTION_1_108();
        vfr_resolveOptionalAlignmentFactors(v23, v24);
        [a2 heightAlignment];
        v25 = OUTLINED_FUNCTION_1_108();
        vfr_resolveOptionalAlignmentFactors(v25, v26);
        if (*(v3 + 96) == 1)
        {
          v27 = [a2 prewireBuffers];
        }

        else
        {
          v27 = 0;
        }

        *(v3 + 96) = v27;
        if (*(v3 + 97) == 1 && ([a2 memoryPoolUseAllowed], (*(v3 + 97) & 1) != 0))
        {
          v28 = [a2 memoryPoolUseAllowed];
        }

        else
        {
          v28 = 0;
        }

        *(v3 + 97) = v28;
        return 1;
      }
    }
  }

  return result;
}

@end