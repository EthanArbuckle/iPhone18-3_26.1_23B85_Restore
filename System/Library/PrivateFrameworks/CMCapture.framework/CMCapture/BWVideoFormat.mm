@interface BWVideoFormat
+ (id)colorInfoWithSourceColorSpace:(int)space sourcePixelFormat:(unsigned int)format sourceDimensions:(id)dimensions requestedPixelFormat:(unsigned int)pixelFormat;
+ (id)compressionPropertiesForColorSpaceProperties:(int)properties;
+ (id)formatByResolvingRequirements:(id)requirements printErrors:(BOOL)errors;
+ (id)pixelBufferAttachmentsForColorSpaceProperties:(int)properties;
+ (int)colorSpacePropertiesForPixelBufferAttachments:(id)attachments;
+ (int)colorSpacePropertiesForSourceThatSupportsWideColor:(BOOL)color sourceColorSpace:(int)space sourcePixelFormat:(unsigned int)format sourceDimensions:(id)dimensions requestedPixelFormat:(unsigned int)pixelFormat;
+ (int)colorSpacePropertiesForSourceThatSupportsWideColor:(BOOL)color sourceColorSpace:(int)space sourcePixelFormat:(unsigned int)format sourceDimensions:(id)dimensions requestedPixelFormat:(unsigned int)pixelFormat supportedColorSpaces:(id)spaces;
+ (int)colorSpacePropertiesWithSourceColorSpace:(int)space sourcePixelFormat:(unsigned int)format sourceDimensions:(id)dimensions requestedPixelFormat:(unsigned int)pixelFormat;
+ (int)colorSpacePropertiesWithSourceColorSpace:(int)space sourcePixelFormat:(unsigned int)format sourceDimensions:(id)dimensions requestedPixelFormat:(unsigned int)pixelFormat supportedColorSpaces:(id)spaces;
- (BOOL)isEqual:(id)equal;
- (id)debugDescription;
- (id)description;
- (opaqueCMFormatDescription)formatDescription;
- (uint64_t)formatDescription;
- (void)_initWithResolvedRequirements:(void *)requirements;
- (void)dealloc;
@end

@implementation BWVideoFormat

- (opaqueCMFormatDescription)formatDescription
{
  formatDescriptionOut = 0;
  if (CMVideoFormatDescriptionCreate(*MEMORY[0x1E695E480], self->_pixelFormat, self->_width, self->_height, 0, &formatDescriptionOut))
  {
    [BWVideoFormat formatDescription];
  }

  return CFAutorelease(formatDescriptionOut);
}

+ (id)formatByResolvingRequirements:(id)requirements printErrors:(BOOL)errors
{
  if (![requirements count])
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = @"requirements array must have 1 or more objects";
LABEL_21:
    objc_exception_throw([v15 exceptionWithName:v16 reason:v17 userInfo:0]);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [requirements countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  v7 = *v27;
  do
  {
    v8 = 0;
    do
    {
      if (*v27 != v7)
      {
        objc_enumerationMutation(requirements);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = MEMORY[0x1E695DF30];
        v16 = *MEMORY[0x1E695D940];
        v17 = @"requirementsArray must contain BWVideoFormatRequirements objects";
        goto LABEL_21;
      }

      ++v8;
    }

    while (v6 != v8);
    v6 = [requirements countByEnumeratingWithState:&v26 objects:v25 count:16];
  }

  while (v6);
LABEL_10:
  v9 = objc_alloc_init(BWVideoFormatRequirements);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [requirements countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
LABEL_12:
    v13 = 0;
    while (1)
    {
      if (*v22 != v12)
      {
        objc_enumerationMutation(requirements);
      }

      if (![BWVideoFormatRequirements _resolveWith:v9 printErrors:*(*(&v21 + 1) + 8 * v13)])
      {
        return 0;
      }

      if (v11 == ++v13)
      {
        v11 = [requirements countByEnumeratingWithState:&v21 objects:v20 count:16];
        if (v11)
        {
          goto LABEL_12;
        }

        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    if (![(NSArray *)[(BWVideoFormatRequirements *)v9 supportedPixelFormats] count])
    {
      +[BWVideoFormat formatByResolvingRequirements:printErrors:];
      return 0;
    }

    [(BWVideoFormat *)&v9->super.super.isa formatByResolvingRequirements:&v18 printErrors:&v30];
    return v30;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWVideoFormat;
  [(BWVideoFormat *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  width = [(BWVideoFormat *)self width];
  if (width != [equal width])
  {
    return 0;
  }

  height = [(BWVideoFormat *)self height];
  if (height != [equal height])
  {
    return 0;
  }

  sliceCount = [(BWVideoFormat *)self sliceCount];
  if (sliceCount != [equal sliceCount])
  {
    return 0;
  }

  pixelFormat = [(BWVideoFormat *)self pixelFormat];
  if (pixelFormat != [equal pixelFormat])
  {
    return 0;
  }

  bytesPerRowAlignment = [(BWVideoFormat *)self bytesPerRowAlignment];
  if (bytesPerRowAlignment != [equal bytesPerRowAlignment])
  {
    return 0;
  }

  planeAlignment = [(BWVideoFormat *)self planeAlignment];
  if (planeAlignment != [equal planeAlignment])
  {
    return 0;
  }

  extendedWidth = [(BWVideoFormat *)self extendedWidth];
  if (extendedWidth != [equal extendedWidth])
  {
    return 0;
  }

  extendedHeight = [(BWVideoFormat *)self extendedHeight];
  if (extendedHeight != [equal extendedHeight])
  {
    return 0;
  }

  cacheMode = [(BWVideoFormat *)self cacheMode];
  return cacheMode == [equal cacheMode];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithCapacity:0];
  [v3 appendFormat:@"%i x %i", self->_width, self->_height];
  if (self->_sliceCount)
  {
    [v3 appendFormat:@" x %i", self->_sliceCount];
  }

  extendedHeight = self->_extendedHeight;
  if (self->_extendedWidth != self->_width || extendedHeight != self->_height)
  {
    [v3 appendFormat:@" (%i x %i)", self->_extendedWidth, extendedHeight];
  }

  [v3 appendString:{@", "}];
  [v3 appendString:BWStringFromCVPixelFormatType(self->_pixelFormat)];
  colorSpaceProperties = self->_colorSpaceProperties;
  if (colorSpaceProperties)
  {
    [v3 appendFormat:@", ColorSpace = %@", BWColorSpacePropertiesToString(colorSpaceProperties)];
  }

  if (self->_bytesPerRowAlignment)
  {
    [v3 appendFormat:@", BPRAlignment = %i", self->_bytesPerRowAlignment];
  }

  if (self->_planeAlignment)
  {
    [v3 appendFormat:@", PlaneAlignment = %i", self->_planeAlignment];
  }

  cacheMode = self->_cacheMode;
  if (cacheMode)
  {
    [v3 appendFormat:@", CacheMode = %@", BWStringForCacheMode(cacheMode)];
  }

  if (self->_memoryPoolUseAllowed)
  {
    [v3 appendFormat:@", MemoryPoolUseAllowed"];
  }

  return v3;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p> %@", NSStringFromClass(v4), self, -[BWVideoFormat description](self, "description")];
}

+ (id)pixelBufferAttachmentsForColorSpaceProperties:(int)properties
{
  result = 0;
  if (properties <= 6)
  {
    if (properties > 3)
    {
      if (properties == 4)
      {
        v26 = *MEMORY[0x1E6965DD0];
        v27 = *MEMORY[0x1E6965F98];
        v100[0] = *MEMORY[0x1E6965D88];
        v100[1] = v27;
        v28 = *MEMORY[0x1E6965FD0];
        v101[0] = v26;
        v101[1] = v28;
        v100[2] = *MEMORY[0x1E6965F30];
        v101[2] = *MEMORY[0x1E6965F50];
        v7 = MEMORY[0x1E695DF20];
        v8 = v101;
        v9 = v100;
      }

      else if (properties == 5)
      {
        v36 = *MEMORY[0x1E6965DD0];
        v37 = *MEMORY[0x1E6965F98];
        v82 = *MEMORY[0x1E6965D88];
        v83 = v37;
        v38 = *MEMORY[0x1E6965FD0];
        v85 = v36;
        v86 = v38;
        v84 = *MEMORY[0x1E6965F30];
        v87 = *MEMORY[0x1E6965F48];
        v7 = MEMORY[0x1E695DF20];
        v8 = &v85;
        v9 = &v82;
      }

      else
      {
        v13 = *MEMORY[0x1E6965DB0];
        v14 = *MEMORY[0x1E6965F98];
        v70 = *MEMORY[0x1E6965D88];
        v71 = v14;
        v15 = *MEMORY[0x1E6965FB0];
        v73 = v13;
        v74 = v15;
        v72 = *MEMORY[0x1E6965F30];
        v75 = *MEMORY[0x1E6965F48];
        v7 = MEMORY[0x1E695DF20];
        v8 = &v73;
        v9 = &v70;
      }
    }

    else
    {
      switch(properties)
      {
        case 1:
          v20 = *MEMORY[0x1E6965DB8];
          v21 = *MEMORY[0x1E6965F98];
          v94 = *MEMORY[0x1E6965D88];
          v95 = v21;
          v22 = *MEMORY[0x1E6965FC8];
          v97 = v20;
          v98 = v22;
          v96 = *MEMORY[0x1E6965F30];
          v99 = *MEMORY[0x1E6965F50];
          v7 = MEMORY[0x1E695DF20];
          v8 = &v97;
          v9 = &v94;
          break;
        case 2:
          v32 = *MEMORY[0x1E6965DB8];
          v33 = *MEMORY[0x1E6965F98];
          v88 = *MEMORY[0x1E6965D88];
          v89 = v33;
          v34 = *MEMORY[0x1E6965FD0];
          v91 = v32;
          v92 = v34;
          v90 = *MEMORY[0x1E6965F30];
          v93 = *MEMORY[0x1E6965F50];
          v7 = MEMORY[0x1E695DF20];
          v8 = &v91;
          v9 = &v88;
          break;
        case 3:
          v4 = *MEMORY[0x1E6965DD0];
          v5 = *MEMORY[0x1E6965F98];
          v102[0] = *MEMORY[0x1E6965D88];
          v102[1] = v5;
          v6 = *MEMORY[0x1E6965FC8];
          v103[0] = v4;
          v103[1] = v6;
          v102[2] = *MEMORY[0x1E6965F30];
          v103[2] = *MEMORY[0x1E6965F50];
          v7 = MEMORY[0x1E695DF20];
          v8 = v103;
          v9 = v102;
          break;
        default:
          return result;
      }
    }

    goto LABEL_26;
  }

  if (properties <= 9)
  {
    if (properties == 7)
    {
      v23 = *MEMORY[0x1E6965DD0];
      v24 = *MEMORY[0x1E6965F98];
      v76 = *MEMORY[0x1E6965D88];
      v77 = v24;
      v25 = *MEMORY[0x1E6965FC8];
      v79 = v23;
      v80 = v25;
      v78 = *MEMORY[0x1E6965F30];
      v81 = *MEMORY[0x1E6965F48];
      v7 = MEMORY[0x1E695DF20];
      v8 = &v79;
      v9 = &v76;
    }

    else
    {
      v10 = *MEMORY[0x1E6965DD0];
      v11 = *MEMORY[0x1E6965F98];
      if (properties == 8)
      {
        v64 = *MEMORY[0x1E6965D88];
        v65 = v11;
        v35 = *MEMORY[0x1E6965FD0];
        v67 = v10;
        v68 = v35;
        v66 = *MEMORY[0x1E6965F30];
        v69 = *MEMORY[0x1E6965F60];
        v7 = MEMORY[0x1E695DF20];
        v8 = &v67;
        v9 = &v64;
      }

      else
      {
        v58 = *MEMORY[0x1E6965D88];
        v59 = v11;
        v12 = *MEMORY[0x1E6965FC8];
        v61 = v10;
        v62 = v12;
        v60 = *MEMORY[0x1E6965F30];
        v63 = *MEMORY[0x1E6965F60];
        v7 = MEMORY[0x1E695DF20];
        v8 = &v61;
        v9 = &v58;
      }
    }

    goto LABEL_26;
  }

  if (properties == 10)
  {
    v29 = *MEMORY[0x1E6965DB0];
    v30 = *MEMORY[0x1E6965F98];
    v52 = *MEMORY[0x1E6965D88];
    v53 = v30;
    v31 = *MEMORY[0x1E6965FB0];
    v55 = v29;
    v56 = v31;
    v54 = *MEMORY[0x1E6965ED0];
    v57 = *MEMORY[0x1E6965ED8];
    v7 = MEMORY[0x1E695DF20];
    v8 = &v55;
    v9 = &v52;
LABEL_26:
    v19 = 3;
    return [v7 dictionaryWithObjects:v8 forKeys:v9 count:{v19, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99}];
  }

  if (properties == 11)
  {
    v39 = *MEMORY[0x1E6965DD0];
    v40 = *MEMORY[0x1E6965F98];
    v46 = *MEMORY[0x1E6965D88];
    v47 = v40;
    v41 = *MEMORY[0x1E6965FC8];
    v49 = v39;
    v50 = v41;
    v48 = *MEMORY[0x1E6965ED0];
    v51 = *MEMORY[0x1E6965ED8];
    v7 = MEMORY[0x1E695DF20];
    v8 = &v49;
    v9 = &v46;
    goto LABEL_26;
  }

  if (properties != 12)
  {
    return result;
  }

  v16 = *MEMORY[0x1E6965FB0];
  v17 = *MEMORY[0x1E6965ED0];
  v42 = *MEMORY[0x1E6965F98];
  v43 = v17;
  v18 = *MEMORY[0x1E6965EE0];
  v44 = v16;
  v45 = v18;
  v7 = MEMORY[0x1E695DF20];
  v8 = &v44;
  v9 = &v42;
  v19 = 2;
  return [v7 dictionaryWithObjects:v8 forKeys:v9 count:{v19, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99}];
}

+ (id)compressionPropertiesForColorSpaceProperties:(int)properties
{
  v3 = [self pixelBufferAttachmentsForColorSpaceProperties:*&properties];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6965F98]];
  if (v5)
  {
    [dictionary setObject:v5 forKeyedSubscript:*MEMORY[0x1E69838B8]];
  }

  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6965D88]];
  if (v6)
  {
    [dictionary setObject:v6 forKeyedSubscript:*MEMORY[0x1E69835B0]];
  }

  v7 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6965F30]];
  if (v7)
  {
    [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x1E6983878]];
  }

  v8 = MEMORY[0x1E695DF20];

  return [v8 dictionaryWithDictionary:dictionary];
}

+ (int)colorSpacePropertiesForPixelBufferAttachments:(id)attachments
{
  v4 = [attachments objectForKeyedSubscript:*MEMORY[0x1E6965D88]];
  v5 = [attachments objectForKeyedSubscript:*MEMORY[0x1E6965F30]];
  v6 = [attachments objectForKeyedSubscript:*MEMORY[0x1E6965ED0]];
  v7 = [attachments objectForKeyedSubscript:*MEMORY[0x1E6965F98]];
  v8 = *MEMORY[0x1E6965DD0];
  if ([v4 isEqualToString:*MEMORY[0x1E6965DD0]] && objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E6965FC8]) && (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E6965F50]) & 1) != 0)
  {
    return 3;
  }

  if ([v4 isEqualToString:v8])
  {
    v10 = *MEMORY[0x1E6965F50];
    if ([v7 isEqualToString:*MEMORY[0x1E6965F50]])
    {
      if ([v5 isEqualToString:v10])
      {
        return 4;
      }
    }
  }

  v11 = *MEMORY[0x1E6965DB8];
  if ([v4 isEqualToString:*MEMORY[0x1E6965DB8]] && objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E6965FC8]) && (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E6965F50]) & 1) != 0)
  {
    return 1;
  }

  if ([v4 isEqualToString:v11] && objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E6965FD0]) && (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E6965F50]) & 1) != 0)
  {
    return 2;
  }

  if ([v4 isEqualToString:v8] && objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E6965FD0]) && (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E6965F48]) & 1) != 0)
  {
    return 5;
  }

  if ([v4 isEqualToString:v8] && objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E6965FC8]) && (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E6965F48]) & 1) != 0)
  {
    return 7;
  }

  v12 = *MEMORY[0x1E6965DB0];
  if ([v4 isEqualToString:*MEMORY[0x1E6965DB0]] && objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E6965FB0]) && (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E6965F48]) & 1) != 0)
  {
    return 6;
  }

  if ([v4 isEqualToString:v8] && objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E6965FD0]) && (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E6965F60]) & 1) != 0)
  {
    return 8;
  }

  if ([v4 isEqualToString:v8] && objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E6965FC8]) && (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E6965F60]) & 1) != 0)
  {
    return 9;
  }

  if ([v4 isEqualToString:v12] && objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E6965FB0]) && !v5 && (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E6965ED8]) & 1) != 0)
  {
    return 10;
  }

  if ([v4 isEqualToString:v8] && objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E6965FC8]) && !v5 && (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E6965ED8]) & 1) != 0)
  {
    return 11;
  }

  if (v4)
  {
    return 0;
  }

  v13 = [v7 isEqualToString:*MEMORY[0x1E6965FB0]];
  result = 0;
  if (v13 && !v5)
  {
    if ([v6 isEqualToString:*MEMORY[0x1E6965EE0]])
    {
      return 12;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

+ (int)colorSpacePropertiesForSourceThatSupportsWideColor:(BOOL)color sourceColorSpace:(int)space sourcePixelFormat:(unsigned int)format sourceDimensions:(id)dimensions requestedPixelFormat:(unsigned int)pixelFormat
{
  v7 = *&pixelFormat;
  v9 = *&format;
  v10 = *&space;
  colorCopy = color;
  v12 = objc_opt_class();

  return [v12 colorSpacePropertiesForSourceThatSupportsWideColor:colorCopy sourceColorSpace:v10 sourcePixelFormat:v9 sourceDimensions:dimensions requestedPixelFormat:v7 supportedColorSpaces:0];
}

+ (int)colorSpacePropertiesWithSourceColorSpace:(int)space sourcePixelFormat:(unsigned int)format sourceDimensions:(id)dimensions requestedPixelFormat:(unsigned int)pixelFormat
{
  v6 = *&pixelFormat;
  v8 = *&format;
  v9 = *&space;
  v10 = objc_opt_class();

  return [v10 colorSpacePropertiesWithSourceColorSpace:v9 sourcePixelFormat:v8 sourceDimensions:dimensions requestedPixelFormat:v6 supportedColorSpaces:0];
}

+ (id)colorInfoWithSourceColorSpace:(int)space sourcePixelFormat:(unsigned int)format sourceDimensions:(id)dimensions requestedPixelFormat:(unsigned int)pixelFormat
{
  v6 = [objc_opt_class() colorSpacePropertiesWithSourceColorSpace:*&space sourcePixelFormat:*&format sourceDimensions:dimensions requestedPixelFormat:*&pixelFormat];
  v7 = objc_opt_class();

  return [v7 pixelBufferAttachmentsForColorSpaceProperties:v6];
}

- (void)_initWithResolvedRequirements:(void *)requirements
{
  requirementsCopy = requirements;
  if (requirements)
  {
    if (a2 && [objc_msgSend(a2 "supportedPixelFormats")] == 1 && (v4 = objc_msgSend(objc_msgSend(objc_msgSend(a2, "supportedPixelFormats"), "firstObject"), "unsignedIntValue"), v4) && ((v5 = v4, (FigCapturePixelFormatIsVersatileRaw(v4) & 1) != 0) || objc_msgSend(a2, "width") && objc_msgSend(a2, "height")) && objc_msgSend(objc_msgSend(a2, "supportedCacheModes"), "count") <= 1 && objc_msgSend(objc_msgSend(a2, "supportedColorSpaceProperties"), "count") <= 1 && (v13.receiver = requirementsCopy, v13.super_class = BWVideoFormat, (requirementsCopy = objc_msgSendSuper2(&v13, sel_init)) != 0))
    {
      requirementsCopy[2] = [OUTLINED_FUNCTION_4_74(objc_msgSend(a2 "width")];
      *(requirementsCopy + 8) = v5;
      v6 = [OUTLINED_FUNCTION_4_74(objc_msgSend(a2 "sliceCount")];
      v7 = [OUTLINED_FUNCTION_4_74(v6 40)];
      *(requirementsCopy + 18) = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_4_74(v7 48)];
      v8 = requirementsCopy[1];
      v9 = a2[9];
      if (v9)
      {
        if (a2[1])
        {
          OUTLINED_FUNCTION_3_84();
        }

        else
        {
          v9 = 0;
        }
      }

      requirementsCopy[7] = v9 + v8;
      v10 = requirementsCopy[2];
      v11 = a2[10];
      if (v11)
      {
        if (a2[2])
        {
          OUTLINED_FUNCTION_3_84();
        }

        else
        {
          v11 = 0;
        }
      }

      requirementsCopy[8] = v11 + v10;
      *(requirementsCopy + 76) = [a2 prewireBuffers];
      *(requirementsCopy + 77) = [a2 memoryPoolUseAllowed];
      *(requirementsCopy + 22) = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_4_74(objc_msgSend(objc_msgSend(a2 "pixelBufferAttributes")];
    }

    else
    {

      return 0;
    }
  }

  return requirementsCopy;
}

+ (int)colorSpacePropertiesForSourceThatSupportsWideColor:(BOOL)color sourceColorSpace:(int)space sourcePixelFormat:(unsigned int)format sourceDimensions:(id)dimensions requestedPixelFormat:(unsigned int)pixelFormat supportedColorSpaces:(id)spaces
{
  if (!color)
  {
    return 0;
  }

  v9 = *&pixelFormat;
  v11 = *&format;
  v12 = *&space;
  v13 = objc_opt_class();

  return [v13 colorSpacePropertiesWithSourceColorSpace:v12 sourcePixelFormat:v11 sourceDimensions:dimensions requestedPixelFormat:v9 supportedColorSpaces:spaces];
}

+ (int)colorSpacePropertiesWithSourceColorSpace:(int)space sourcePixelFormat:(unsigned int)format sourceDimensions:(id)dimensions requestedPixelFormat:(unsigned int)pixelFormat supportedColorSpaces:(id)spaces
{
  if ((FigCapturePixelFormatIsYCbCr(format) & 1) == 0 && (FigCapturePixelFormatIsBGRA(format) & 1) == 0 && !FigCapturePixelFormatIsPackedBayerRaw(format))
  {
    return 0;
  }

  IsWide = BWColorSpaceIsWide(space);
  if (FigCapturePixelFormatIsBGRA(pixelFormat))
  {
    pixelFormatCopy = format;
  }

  else
  {
    pixelFormatCopy = pixelFormat;
  }

  v14 = FigCaptureUncompressedPixelFormatForPixelFormat(pixelFormatCopy);
  if (v14 == 875704438)
  {
    if (dimensions.var0 <= dimensions.var1)
    {
      if (dimensions.var1 < 960)
      {
        return 1;
      }
    }

    else if (dimensions.var0 < 960)
    {
      return 1;
    }

    if (IsWide)
    {
      return 4;
    }

    else
    {
      return 2;
    }
  }

  v15 = v14;
  if (v14 == 875704422)
  {
    if (IsWide)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  else if (FigCapturePixelFormatIsTenBit(v14))
  {
    if (space == 3)
    {
      return 10;
    }

    else if (space == 4)
    {
      return 12;
    }

    else if (IsWide)
    {
      if ([spaces containsObject:&unk_1F22460D8])
      {
        return 6;
      }

      else
      {
        return 5;
      }
    }

    else if (FigCapturePixelFormatIs422(v15))
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  else if (FigCapturePixelFormatIsPackedBayerRaw(v15))
  {
    if (space == 4)
    {
      v17 = 12;
    }

    else
    {
      v17 = 0;
    }

    if (space == 3)
    {
      return 10;
    }

    else
    {
      return v17;
    }
  }

  else
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    BWFigCaptureColorSpaceToString();
    v16 = 2;
    v19 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v19, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Base/BWVideoFormat.m", 1479, @"LastShownDate:BWVideoFormat.m:1479", @"LastShownBuild:BWVideoFormat.m:1479", 0);
    free(v19);
  }

  return v16;
}

+ (void)formatByResolvingRequirements:(void *)a3 printErrors:(void *)a4 .cold.1(id *a1, void *a2, void *a3, void *a4)
{
  [(BWVideoFormatRequirements *)a1 _resolvePixelFormat];
  if ([objc_msgSend(a1 "supportedCacheModes")] >= 2)
  {
    *a2 = [objc_msgSend(a1 "supportedCacheModes")];
    [a1 setSupportedCacheModes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", a2, 1)}];
  }

  if ([objc_msgSend(a1 "supportedColorSpaceProperties")] >= 2)
  {
    *a3 = [objc_msgSend(a1 "supportedColorSpaceProperties")];
    [a1 setSupportedColorSpaceProperties:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", a3, 1)}];
  }

  result = [[BWVideoFormat alloc] _initWithResolvedRequirements:a1];
  *a4 = result;
  return result;
}

+ (uint64_t)formatByResolvingRequirements:printErrors:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)formatDescription
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

@end