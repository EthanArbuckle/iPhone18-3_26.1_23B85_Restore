@interface BWCoreImageFilterRendererParameters
+ (BOOL)containsFilterRequiringFaceLandmarks:(id)a3;
- (BWCoreImageFilterRendererParameters)initWithFilters:(id)a3 originalOutputFilter:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (int)depthTypeForFilter:(id)a3;
- (uint64_t)_ensureResourceRequirementsForFilters:(_BYTE *)a3 outputRequiresFaceLandmarks:(_BYTE *)a4 outputRequiresDepthMap:;
- (void)dealloc;
- (void)setFilters:(id)a3;
@end

@implementation BWCoreImageFilterRendererParameters

- (BWCoreImageFilterRendererParameters)initWithFilters:(id)a3 originalOutputFilter:(id)a4
{
  v10.receiver = self;
  v10.super_class = BWCoreImageFilterRendererParameters;
  v6 = [(BWCoreImageFilterRendererParameters *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v9 = 0;
    [(BWCoreImageFilterRendererParameters *)v6 _ensureResourceRequirementsForFilters:a3 outputRequiresFaceLandmarks:&v9 + 1 outputRequiresDepthMap:&v9];
    v7->_filters = [a3 copy];
    v7->_originalOutputFilter = a4;
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

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_alloc(objc_opt_class()) initWithFilters:self->_filters originalOutputFilter:self->_originalOutputFilter];
  *(result + 24) = self->_requiresFaceLandmarks;
  *(result + 25) = self->_requiresDepthMap;
  return result;
}

- (void)setFilters:(id)a3
{
  if (self->_filters != a3)
  {
    v8 = v3;
    v9 = v4;
    v7 = 0;
    [(BWCoreImageFilterRendererParameters *)self _ensureResourceRequirementsForFilters:a3 outputRequiresFaceLandmarks:&v7 + 1 outputRequiresDepthMap:&v7];

    self->_filters = [a3 copy];
    self->_requiresFaceLandmarks = HIBYTE(v7);
    self->_requiresDepthMap = v7;
  }
}

- (int)depthTypeForFilter:(id)a3
{
  v4 = [a3 inputKeys];
  if (v4)
  {
    v5 = v4;
    if ([v4 containsObject:@"inputBlurMap"])
    {
      return 3;
    }

    else if ([v5 containsObject:@"inputDisparity"] && ((objc_msgSend(objc_msgSend(a3, "name"), "isEqualToString:", @"CIPortraitEffectStage") & 1) != 0 || (objc_msgSend(objc_msgSend(a3, "name"), "isEqualToString:", @"CIPortraitEffectStageMono") & 1) != 0))
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

+ (BOOL)containsFilterRequiringFaceLandmarks:(id)a3
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v11 objects:v10 count:16];
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
          objc_enumerationMutation(a3);
        }

        v6 |= [objc_msgSend(*(*(&v11 + 1) + 8 * i) "inputKeys")];
      }

      v5 = [a3 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

- (uint64_t)_ensureResourceRequirementsForFilters:(_BYTE *)a3 outputRequiresFaceLandmarks:(_BYTE *)a4 outputRequiresDepthMap:
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

          v10 = [*(*(&v15 + 1) + 8 * v9) inputKeys];
          v11 = [v10 containsObject:@"inputFaceLandmarkArray"];
          if (([v10 containsObject:@"inputDepthMap"] & 1) != 0 || (objc_msgSend(v10, "containsObject:", @"inputDisparity") & 1) != 0 || (objc_msgSend(v10, "containsObject:", @"inputBlurMap") & 1) != 0 || objc_msgSend(v10, "containsObject:", @"inputShiftMap"))
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

    if (a3)
    {
      *a3 = v7 & 1;
    }

    if (a4)
    {
      *a4 = v6 & 1;
    }
  }

  return result;
}

@end