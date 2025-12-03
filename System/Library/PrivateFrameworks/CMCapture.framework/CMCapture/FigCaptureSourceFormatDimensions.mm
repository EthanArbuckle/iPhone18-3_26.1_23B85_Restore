@interface FigCaptureSourceFormatDimensions
+ (id)identifyDimensionsFromFlavor:(int)flavor availableHighResStillImageDimensions:(id)dimensions;
+ (id)identifySourceFormatDimensionsFromDimensions:(id)dimensions availableHighResStillImageDimensions:(id)imageDimensions aspectRatio:(int)ratio;
+ (int)identifyResolutionFlavorFromDimensions:(id)dimensions availableHighResStillImageDimensions:(id)imageDimensions aspectRatio:(int)ratio;
- (FigCaptureSourceFormatDimensions)initWithDimensions:(id)dimensions deferredPhotoProxyDimensions:(id)proxyDimensions isPrivate:(BOOL)private flavor:(int)flavor maxUpscalingDimensions:(id)upscalingDimensions;
- (id)description;
@end

@implementation FigCaptureSourceFormatDimensions

- (FigCaptureSourceFormatDimensions)initWithDimensions:(id)dimensions deferredPhotoProxyDimensions:(id)proxyDimensions isPrivate:(BOOL)private flavor:(int)flavor maxUpscalingDimensions:(id)upscalingDimensions
{
  v13.receiver = self;
  v13.super_class = FigCaptureSourceFormatDimensions;
  result = [(FigCaptureSourceFormatDimensions *)&v13 init];
  if (result)
  {
    result->_dimensions = dimensions;
    result->_deferredPhotoProxyDimensions = proxyDimensions;
    result->_isPrivate = private;
    result->_flavor = flavor;
    result->_maxUpscalingDimensions = upscalingDimensions;
  }

  return result;
}

- (id)description
{
  width = self->_deferredPhotoProxyDimensions.width;
  height = self->_deferredPhotoProxyDimensions.height;
  if (width < 1 || height < 1)
  {
    height = &stru_1F216A3D0;
  }

  else
  {
    height = [MEMORY[0x1E696AEC0] stringWithFormat:@"proxy dims: %d x %d, ", width, height];
  }

  v7 = self->_maxUpscalingDimensions.height;
  v8 = self->_maxUpscalingDimensions.width < 1 || v7 < 1;
  v9 = &stru_1F216A3D0;
  if (!v8)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"max upscaling dims: %d x %d, ", self->_maxUpscalingDimensions.width, v7];
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = self->_dimensions.width;
  v14 = self->_dimensions.height;
  v15 = FigCaptureSourceFormatHighResolutionFlavorToShortString(self->_flavor);
  if (self->_isPrivate)
  {
    v16 = @" *Private";
  }

  else
  {
    v16 = &stru_1F216A3D0;
  }

  return [v10 stringWithFormat:@"<%@ %p> %d x %d, %@%@flavor: %@%@", v12, self, v13, v14, height, v9, v15, v16];
}

+ (id)identifySourceFormatDimensionsFromDimensions:(id)dimensions availableHighResStillImageDimensions:(id)imageDimensions aspectRatio:(int)ratio
{
  v8 = BWAspectRatioValueFromAspectRatio(ratio);
  v9 = v8;
  if (ratio)
  {
    dimensions = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(*&dimensions, v8);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [imageDimensions countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = *v19;
LABEL_5:
  v13 = 0;
  while (1)
  {
    if (*v19 != v12)
    {
      objc_enumerationMutation(imageDimensions);
    }

    v14 = *(*(&v18 + 1) + 8 * v13);
    dimensions = [v14 dimensions];
    if (ratio)
    {
      dimensions = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(dimensions, v9);
    }

    if (dimensions == dimensions)
    {
      return v14;
    }

    if (v11 == ++v13)
    {
      v11 = [imageDimensions countByEnumeratingWithState:&v18 objects:v17 count:16];
      if (v11)
      {
        goto LABEL_5;
      }

      return 0;
    }
  }
}

+ (id)identifyDimensionsFromFlavor:(int)flavor availableHighResStillImageDimensions:(id)dimensions
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [dimensions countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v14;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v14 != v8)
    {
      objc_enumerationMutation(dimensions);
    }

    v10 = *(*(&v13 + 1) + 8 * v9);
    if ([v10 flavor] == flavor)
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [dimensions countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

+ (int)identifyResolutionFlavorFromDimensions:(id)dimensions availableHighResStillImageDimensions:(id)imageDimensions aspectRatio:(int)ratio
{
  v5 = [self identifySourceFormatDimensionsFromDimensions:dimensions availableHighResStillImageDimensions:imageDimensions aspectRatio:*&ratio];
  if (v5)
  {

    LODWORD(v5) = [v5 flavor];
  }

  return v5;
}

@end