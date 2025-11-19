@interface ImageProcessor_VSA
- (BOOL)shouldCropOutputFrame:(__CVBuffer *)a3;
- (BOOL)useScalerForPostprocessOutput:(__CVBuffer *)a3;
- (int64_t)postprocessFrameWithScaler:(__CVBuffer *)a3 output:(__CVBuffer *)a4 waitForCompletion:(BOOL)a5;
@end

@implementation ImageProcessor_VSA

- (BOOL)shouldCropOutputFrame:(__CVBuffer *)a3
{
  Width = CVPixelBufferGetWidth(a3);
  v11 = Width;
  Height = CVPixelBufferGetHeight(a3);
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

- (BOOL)useScalerForPostprocessOutput:(__CVBuffer *)a3
{
  v4 = [(ImageProcessor_VSA *)self shouldCropOutputFrame:a3];
  v10.receiver = self;
  v10.super_class = ImageProcessor_VSA;
  v5 = [(ImageProcessor_Ext *)&v10 isYUV];
  result = 1;
  if ((v5 & 1) == 0 && !v4)
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

- (int64_t)postprocessFrameWithScaler:(__CVBuffer *)a3 output:(__CVBuffer *)a4 waitForCompletion:(BOOL)a5
{
  result = 12;
  if (a3 && a4)
  {
    v8 = a5;
    if ([(ImageProcessor_VSA *)self useScalerForPostprocessOutput:a4])
    {
      v15.receiver = self;
      v15.super_class = ImageProcessor_VSA;
      v10 = [(ImageProcessor_Ext *)&v15 scaler];
      v14.receiver = self;
      v14.super_class = ImageProcessor_VSA;
      v11 = [(ImageProcessor_Ext *)&v14 inputScaling];
      v13.receiver = self;
      v13.super_class = ImageProcessor_VSA;
      v12 = [(ImageProcessor_Ext *)&v13 secondRotation];
      [v10 upScaleAndCropFrameSource:a3 destination:a4 upscale:v11 rotate:getReverseRotation(v12) waitForCompletion:v8];
    }

    return 0;
  }

  return result;
}

@end