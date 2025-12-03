@interface ImageProcessor_VSA
- (BOOL)shouldCropOutputFrame:(__CVBuffer *)frame;
- (BOOL)useScalerForPostprocessOutput:(__CVBuffer *)output;
- (int64_t)postprocessFrameWithScaler:(__CVBuffer *)scaler output:(__CVBuffer *)output waitForCompletion:(BOOL)completion;
@end

@implementation ImageProcessor_VSA

- (BOOL)shouldCropOutputFrame:(__CVBuffer *)frame
{
  Width = CVPixelBufferGetWidth(frame);
  v11 = Width;
  Height = CVPixelBufferGetHeight(frame);
  if (Width < Height)
  {
    swapWidthAndHeight(&v11, &Height);
    Width = v11;
  }

  v9.receiver = self;
  v9.super_class = ImageProcessor_VSA;
  if (Width < [(ImageProcessor_Ext *)&v9 width])
  {
    return 1;
  }

  v7 = Height;
  v8.receiver = self;
  v8.super_class = ImageProcessor_VSA;
  return v7 < [(ImageProcessor_Ext *)&v8 height];
}

- (BOOL)useScalerForPostprocessOutput:(__CVBuffer *)output
{
  v4 = [(ImageProcessor_VSA *)self shouldCropOutputFrame:output];
  v10.receiver = self;
  v10.super_class = ImageProcessor_VSA;
  isYUV = [(ImageProcessor_Ext *)&v10 isYUV];
  result = 1;
  if ((isYUV & 1) == 0 && !v4)
  {
    v9.receiver = self;
    v9.super_class = ImageProcessor_VSA;
    if ([(ImageProcessor_Ext *)&v9 firstRotation])
    {
      return 1;
    }

    v8.receiver = self;
    v8.super_class = ImageProcessor_VSA;
    if ([(ImageProcessor_Ext *)&v8 secondRotation])
    {
      return 1;
    }

    else
    {
      v7.receiver = self;
      v7.super_class = ImageProcessor_VSA;
      return [(ImageProcessor_Ext *)&v7 inputScaling];
    }
  }

  return result;
}

- (int64_t)postprocessFrameWithScaler:(__CVBuffer *)scaler output:(__CVBuffer *)output waitForCompletion:(BOOL)completion
{
  result = 12;
  if (scaler && output)
  {
    completionCopy = completion;
    if ([(ImageProcessor_VSA *)self useScalerForPostprocessOutput:output])
    {
      v15.receiver = self;
      v15.super_class = ImageProcessor_VSA;
      scaler = [(ImageProcessor_Ext *)&v15 scaler];
      v14.receiver = self;
      v14.super_class = ImageProcessor_VSA;
      inputScaling = [(ImageProcessor_Ext *)&v14 inputScaling];
      v13.receiver = self;
      v13.super_class = ImageProcessor_VSA;
      secondRotation = [(ImageProcessor_Ext *)&v13 secondRotation];
      [scaler upScaleAndCropFrameSource:scaler destination:output upscale:inputScaling rotate:getReverseRotation(secondRotation) waitForCompletion:completionCopy];
    }

    return 0;
  }

  return result;
}

@end