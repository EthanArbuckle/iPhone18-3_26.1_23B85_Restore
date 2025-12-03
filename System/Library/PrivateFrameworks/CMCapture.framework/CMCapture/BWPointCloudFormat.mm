@interface BWPointCloudFormat
+ (BWPointCloudFormatRequirements)_formatRequirementsByResolvingFormatRequirements:(void *)requirements withFormatRequirements:;
+ (id)formatByResolvingRequirements:(id)requirements printErrors:(BOOL)errors;
- (NSString)debugDescription;
- (NSString)description;
- (opaqueCMFormatDescription)formatDescription;
- (void)_initWithResolvedFormatRequirements:(void *)requirements;
- (void)dealloc;
@end

@implementation BWPointCloudFormat

+ (id)formatByResolvingRequirements:(id)requirements printErrors:(BOOL)errors
{
  v5 = [requirements count];
  if (!v5)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = @"requirements array must have 1 or more objects";
LABEL_20:
    objc_exception_throw([v15 exceptionWithName:v16 reason:v17 userInfo:0]);
  }

  v6 = v5;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [requirements countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = *v20;
  do
  {
    v10 = 0;
    do
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(requirements);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = MEMORY[0x1E695DF30];
        v16 = *MEMORY[0x1E695D940];
        v17 = @"requirementsArray must contain BWPointCloudFormatRequirements objects";
        goto LABEL_20;
      }

      ++v10;
    }

    while (v8 != v10);
    v8 = [requirements countByEnumeratingWithState:&v19 objects:v18 count:16];
  }

  while (v8);
LABEL_10:
  if (v6 == 1)
  {
    v11 = +[BWPointCloudFormat _formatRequirementsByResolvingFormatRequirements:withFormatRequirements:](BWPointCloudFormat, [requirements firstObject], 0);
  }

  else
  {
    v11 = 0;
    for (i = 1; v6 != i; ++i)
    {
      v13 = [requirements objectAtIndex:i];
      if (!v11)
      {
        v11 = [requirements objectAtIndex:i - 1];
      }

      result = [BWPointCloudFormat _formatRequirementsByResolvingFormatRequirements:v11 withFormatRequirements:v13];
      v11 = result;
      if (!result)
      {
        return result;
      }
    }
  }

  return [[BWPointCloudFormat alloc] _initWithResolvedFormatRequirements:v11];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWPointCloudFormat;
  [(BWPointCloudFormat *)&v3 dealloc];
}

- (NSString)description
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"%@, %ld points (%ld bytes)", BWStringFromCVPixelFormatType(self->_dataFormat), self->_maxPoints, self->_dataBufferSize];
  return string;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p> %@", NSStringFromClass(v4), self, -[BWPointCloudFormat description](self, "description")];
}

- (opaqueCMFormatDescription)formatDescription
{
  formatDescriptionOut = 0;
  v6[0] = *MEMORY[0x1E69627A8];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{-[BWPointCloudFormat maxPoints](self, "maxPoints")}];
  v6[1] = *MEMORY[0x1E69600A0];
  v7[0] = v3;
  v7[1] = MEMORY[0x1E695E0F8];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  CMFormatDescriptionCreate(*MEMORY[0x1E695E480], [(BWPointCloudFormat *)self mediaType], [(BWPointCloudFormat *)self dataFormat], v4, &formatDescriptionOut);
  result = formatDescriptionOut;
  if (formatDescriptionOut)
  {
    return CFAutorelease(formatDescriptionOut);
  }

  return result;
}

+ (BWPointCloudFormatRequirements)_formatRequirementsByResolvingFormatRequirements:(void *)requirements withFormatRequirements:
{
  objc_opt_self();
  supportedDataFormats = [a2 supportedDataFormats];
  supportedDataFormats2 = [requirements supportedDataFormats];
  if ([supportedDataFormats count] && objc_msgSend(supportedDataFormats2, "count"))
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = OUTLINED_FUNCTION_4_2(array, v8, v9, v10, v11, v12, v13, v14, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, 0);
    if (v15)
    {
      v16 = v15;
      v17 = MEMORY[0];
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (MEMORY[0] != v17)
          {
            objc_enumerationMutation(supportedDataFormats);
          }

          v19 = *(8 * i);
          v20 = [supportedDataFormats2 containsObject:v19];
          if (v20)
          {
            v20 = [array addObject:v19];
          }
        }

        v16 = OUTLINED_FUNCTION_4_2(v20, v21, v22, v23, v24, v25, v26, v27, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v70);
      }

      while (v16);
    }
  }

  else if ([supportedDataFormats count])
  {
    array = supportedDataFormats;
  }

  else
  {
    array = supportedDataFormats2;
  }

  maxPoints = [a2 maxPoints];
  maxPoints2 = [requirements maxPoints];
  v30 = maxPoints2;
  if (maxPoints && maxPoints2 && maxPoints != maxPoints2)
  {
    return 0;
  }

  dataBufferSize = [a2 dataBufferSize];
  dataBufferSize2 = [requirements dataBufferSize];
  v33 = dataBufferSize2;
  if (dataBufferSize)
  {
    if (dataBufferSize2 && dataBufferSize != dataBufferSize2)
    {
      return 0;
    }
  }

  v34 = objc_alloc_init(BWPointCloudFormatRequirements);
  [(BWPointCloudFormatRequirements *)v34 setSupportedDataFormats:array];
  if (maxPoints)
  {
    v35 = maxPoints;
  }

  else
  {
    v35 = v30;
  }

  [(BWPointCloudFormatRequirements *)v34 setMaxPoints:v35];
  if (dataBufferSize)
  {
    v36 = dataBufferSize;
  }

  else
  {
    v36 = v33;
  }

  [(BWPointCloudFormatRequirements *)v34 setDataBufferSize:v36];
  return v34;
}

- (void)_initWithResolvedFormatRequirements:(void *)requirements
{
  if (!requirements)
  {
    return 0;
  }

  v5.receiver = requirements;
  v5.super_class = BWPointCloudFormat;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  if (v3)
  {
    v3[4] = [objc_msgSend(a2 "dataBufferAttributes")];
    *(v3 + 6) = [objc_msgSend(objc_msgSend(a2 "supportedDataFormats")];
    v3[1] = [a2 maxPoints];
    v3[2] = [a2 dataBufferSize];
  }

  return v3;
}

@end