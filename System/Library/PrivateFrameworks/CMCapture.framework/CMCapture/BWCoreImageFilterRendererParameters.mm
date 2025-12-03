@interface BWCoreImageFilterRendererParameters
+ (BOOL)containsFilterRequiringFaceLandmarks:(id)landmarks;
- (BWCoreImageFilterRendererParameters)initWithFilters:(id)filters originalOutputFilter:(id)filter;
- (id)copyWithZone:(_NSZone *)zone;
- (int)depthTypeForFilter:(id)filter;
- (uint64_t)_ensureResourceRequirementsForFilters:(_BYTE *)filters outputRequiresFaceLandmarks:(_BYTE *)landmarks outputRequiresDepthMap:;
- (void)dealloc;
- (void)setFilters:(id)filters;
@end

@implementation BWCoreImageFilterRendererParameters

- (BWCoreImageFilterRendererParameters)initWithFilters:(id)filters originalOutputFilter:(id)filter
{
  v10.receiver = self;
  v10.super_class = BWCoreImageFilterRendererParameters;
  v6 = [(BWCoreImageFilterRendererParameters *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v9 = 0;
    [(BWCoreImageFilterRendererParameters *)v6 _ensureResourceRequirementsForFilters:filters outputRequiresFaceLandmarks:&v9 + 1 outputRequiresDepthMap:&v9];
    v7->_filters = [filters copy];
    v7->_originalOutputFilter = filter;
    v7->_requiresFaceLandmarks = HIBYTE(v9);
    v7->_requiresDepthMap = v9;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWCoreImageFilterRendererParameters;
  [(BWCoreImageFilterRendererParameters *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_alloc(objc_opt_class()) initWithFilters:self->_filters originalOutputFilter:self->_originalOutputFilter];
  *(result + 24) = self->_requiresFaceLandmarks;
  *(result + 25) = self->_requiresDepthMap;
  return result;
}

- (void)setFilters:(id)filters
{
  if (self->_filters != filters)
  {
    v8 = v3;
    v9 = v4;
    v7 = 0;
    [(BWCoreImageFilterRendererParameters *)self _ensureResourceRequirementsForFilters:filters outputRequiresFaceLandmarks:&v7 + 1 outputRequiresDepthMap:&v7];

    self->_filters = [filters copy];
    self->_requiresFaceLandmarks = HIBYTE(v7);
    self->_requiresDepthMap = v7;
  }
}

- (int)depthTypeForFilter:(id)filter
{
  inputKeys = [filter inputKeys];
  if (inputKeys)
  {
    v5 = inputKeys;
    if ([inputKeys containsObject:@"inputBlurMap"])
    {
      return 3;
    }

    else if ([v5 containsObject:@"inputDisparity"] && ((objc_msgSend(objc_msgSend(filter, "name"), "isEqualToString:", @"CIPortraitEffectStage") & 1) != 0 || (objc_msgSend(objc_msgSend(filter, "name"), "isEqualToString:", @"CIPortraitEffectStageMono") & 1) != 0))
    {
      return 2;
    }

    else
    {
      return [v5 containsObject:@"inputDepthMap"];
    }
  }

  else
  {
    [BWCoreImageFilterRendererParameters depthTypeForFilter:];
    return 0;
  }
}

+ (BOOL)containsFilterRequiringFaceLandmarks:(id)landmarks
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [landmarks countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(landmarks);
        }

        v6 |= [objc_msgSend(*(*(&v11 + 1) + 8 * i) "inputKeys")];
      }

      v5 = [landmarks countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

- (uint64_t)_ensureResourceRequirementsForFilters:(_BYTE *)filters outputRequiresFaceLandmarks:(_BYTE *)landmarks outputRequiresDepthMap:
{
  if (result)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    result = [a2 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (result)
    {
      v5 = result;
      v6 = 0;
      v7 = 0;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(a2);
          }

          inputKeys = [*(*(&v15 + 1) + 8 * v9) inputKeys];
          v11 = [inputKeys containsObject:@"inputFaceLandmarkArray"];
          if (([inputKeys containsObject:@"inputDepthMap"] & 1) != 0 || (objc_msgSend(inputKeys, "containsObject:", @"inputDisparity") & 1) != 0 || (objc_msgSend(inputKeys, "containsObject:", @"inputBlurMap") & 1) != 0 || objc_msgSend(inputKeys, "containsObject:", @"inputShiftMap"))
          {
            v6 = 1;
          }

          v7 |= v11;
          ++v9;
        }

        while (v5 != v9);
        result = [a2 countByEnumeratingWithState:&v15 objects:v14 count:16];
        v5 = result;
      }

      while (result);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    if (filters)
    {
      *filters = v7 & 1;
    }

    if (landmarks)
    {
      *landmarks = v6 & 1;
    }
  }

  return result;
}

@end