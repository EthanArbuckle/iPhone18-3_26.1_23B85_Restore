@interface FigCaptureSourceFormatDimensions
+ (id)identifyDimensionsFromFlavor:(int)a3 availableHighResStillImageDimensions:(id)a4;
+ (id)identifySourceFormatDimensionsFromDimensions:(id)a3 availableHighResStillImageDimensions:(id)a4 aspectRatio:(int)a5;
+ (int)identifyResolutionFlavorFromDimensions:(id)a3 availableHighResStillImageDimensions:(id)a4 aspectRatio:(int)a5;
- (FigCaptureSourceFormatDimensions)initWithDimensions:(id)a3 deferredPhotoProxyDimensions:(id)a4 isPrivate:(BOOL)a5 flavor:(int)a6 maxUpscalingDimensions:(id)a7;
- (id)description;
@end

@implementation FigCaptureSourceFormatDimensions

- (FigCaptureSourceFormatDimensions)initWithDimensions:(id)a3 deferredPhotoProxyDimensions:(id)a4 isPrivate:(BOOL)a5 flavor:(int)a6 maxUpscalingDimensions:(id)a7
{
  v13.receiver = self;
  v13.super_class = FigCaptureSourceFormatDimensions;
  result = [(FigCaptureSourceFormatDimensions *)&v13 init];
  if (result)
  {
    result->_dimensions = a3;
    result->_deferredPhotoProxyDimensions = a4;
    result->_isPrivate = a5;
    result->_flavor = a6;
    result->_maxUpscalingDimensions = a7;
  }

  return result;
}

- (id)description
{
  width = self->_deferredPhotoProxyDimensions.width;
  height = self->_deferredPhotoProxyDimensions.height;
  if (width < 1 || height < 1)
  {
    v6 = &stru_1F216A3D0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"proxy dims: %d x %d, ", width, height];
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

  return [v10 stringWithFormat:@"<%@ %p> %d x %d, %@%@flavor: %@%@", v12, self, v13, v14, v6, v9, v15, v16];
}

+ (id)identifySourceFormatDimensionsFromDimensions:(id)a3 availableHighResStillImageDimensions:(id)a4 aspectRatio:(int)a5
{
  v8 = BWAspectRatioValueFromAspectRatio(a5);
  v9 = v8;
  if (a5)
  {
    a3 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(*&a3, v8);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [a4 countByEnumeratingWithState:&v18 objects:v17 count:16];
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
      objc_enumerationMutation(a4);
    }

    v14 = *(*(&v18 + 1) + 8 * v13);
    v15 = [v14 dimensions];
    if (a5)
    {
      v15 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v15, v9);
    }

    if (v15 == a3)
    {
      return v14;
    }

    if (v11 == ++v13)
    {
      v11 = [a4 countByEnumeratingWithState:&v18 objects:v17 count:16];
      if (v11)
      {
        goto LABEL_5;
      }

      return 0;
    }
  }
}

+ (id)identifyDimensionsFromFlavor:(int)a3 availableHighResStillImageDimensions:(id)a4
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a4 countByEnumeratingWithState:&v13 objects:v12 count:16];
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
      objc_enumerationMutation(a4);
    }

    v10 = *(*(&v13 + 1) + 8 * v9);
    if ([v10 flavor] == a3)
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [a4 countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

+ (int)identifyResolutionFlavorFromDimensions:(id)a3 availableHighResStillImageDimensions:(id)a4 aspectRatio:(int)a5
{
  v5 = [a1 identifySourceFormatDimensionsFromDimensions:a3 availableHighResStillImageDimensions:a4 aspectRatio:*&a5];
  if (v5)
  {

    LODWORD(v5) = [v5 flavor];
  }

  return v5;
}

@end