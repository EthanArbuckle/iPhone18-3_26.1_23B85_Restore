@interface JFXFaceTrackingUtilities
+ (BOOL)isFaceAnchorInRange:(id)range;
+ (CGRect)faceRectInImageWithFaceAnchor:(id)anchor invertY:(BOOL)y interfaceOrientation:(int64_t)orientation imageResolution:(CGSize *)resolution;
+ (CGSize)faceRectScaleFactorForInterfaceOrientation:(int64_t)orientation andDeviceInterfaceOrientation:(int64_t)interfaceOrientation;
+ (double)rollAngleFromFaceAnchor:(id)anchor forInterfaceOrientation:(int64_t)orientation;
+ (id)JFX_faceAnchorWithFaceAnchor:(id)anchor forInterfaceOrientation:(int64_t)orientation;
+ (uint64_t)JFX_projectionMatrixWithFaceAnchor:(uint64_t)anchor bufferSize:(uint64_t)size;
+ (void)adjustIntrinsics:(__n128)intrinsics forRenderSize:(double)size capturedSize:(double)capturedSize interfaceOrientation:(double)orientation;
@end

@implementation JFXFaceTrackingUtilities

+ (CGRect)faceRectInImageWithFaceAnchor:(id)anchor invertY:(BOOL)y interfaceOrientation:(int64_t)orientation imageResolution:(CGSize *)resolution
{
  anchorCopy = anchor;
  v10 = [self JFX_faceAnchorWithFaceAnchor:anchorCopy forInterfaceOrientation:orientation];
  [v10 imageResolution];
  resolution->width = v11;
  resolution->height = v12;
  [self JFX_projectionMatrixWithFaceAnchor:v10 bufferSize:?];
  [anchorCopy faceRect];

  [v10 transform];
  [v10 cameraTransform];
  v13 = pv_projected_screen_aligned_bounding_rect_around_point();
  v14 = vcvtq_f64_f32(0);
  v15 = vcvt_hight_f64_f32(0);
  if (v13)
  {
    v16 = -1;
  }

  else
  {
    v16 = 0;
  }

  v17 = vdupq_n_s64(v16);
  v23 = vbslq_s8(v17, v15, *(MEMORY[0x277CBF3A0] + 16));
  v22 = vbslq_s8(v17, v14, *MEMORY[0x277CBF3A0]);

  v18 = *v22.i64;
  v19 = *v23.i64;
  v20 = *&v22.i64[1];
  v21 = *&v23.i64[1];
  result.size.height = v21;
  result.size.width = v19;
  result.origin.y = v20;
  result.origin.x = v18;
  return result;
}

+ (double)rollAngleFromFaceAnchor:(id)anchor forInterfaceOrientation:(int64_t)orientation
{
  v4 = [self JFX_faceAnchorWithFaceAnchor:anchor forInterfaceOrientation:orientation];
  [v4 rollAngle];
  v6 = v5;

  return v6;
}

+ (uint64_t)JFX_projectionMatrixWithFaceAnchor:(uint64_t)anchor bufferSize:(uint64_t)size
{
  [a5 focalLengthForViewport:?];
  pv_fov_for_focal_length_and_side(v6, a2);
  v7 = JFXLog_DebugFaceAnchor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[JFXFaceTrackingUtilities JFX_projectionMatrixWithFaceAnchor:bufferSize:];
  }

  return pv_simd_matrix_make_perspective();
}

+ (BOOL)isFaceAnchorInRange:(id)range
{
  if (!range)
  {
    return 0;
  }

  [range screenRelativePosition];
  v4 = v3;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults floatForKey:@"CFX_MaxCameraToFaceTrackingDistance"];
  v7 = v6;

  v8 = -0.8;
  if (v7 != 0.0)
  {
    v8 = v7;
  }

  return v4 > v8;
}

+ (void)adjustIntrinsics:(__n128)intrinsics forRenderSize:(double)size capturedSize:(double)capturedSize interfaceOrientation:(double)orientation
{
  *&v23[16] = a2;
  *&v23[32] = intrinsics;
  *v23 = self;
  v14 = a10 - 3;
  v15 = JFXLog_DebugFaceAnchor();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    +[JFXFaceTrackingUtilities adjustIntrinsics:forRenderSize:capturedSize:interfaceOrientation:];
  }

  if (v14 >= 0xFFFFFFFFFFFFFFFELL)
  {
    capturedSizeCopy = size;
  }

  else
  {
    capturedSizeCopy = capturedSize;
  }

  if (v14 >= 0xFFFFFFFFFFFFFFFELL)
  {
    sizeCopy2 = capturedSize;
  }

  else
  {
    sizeCopy2 = size;
  }

  v18 = JFXLog_DebugFaceAnchor();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    +[JFXFaceTrackingUtilities adjustIntrinsics:forRenderSize:capturedSize:interfaceOrientation:];
  }

  if (orientation / a7 - sizeCopy2 / capturedSizeCopy <= 0.01)
  {
    v19 = sizeCopy2 / orientation;
  }

  else
  {
    v19 = capturedSizeCopy / a7;
  }

  v20 = JFXLog_DebugFaceAnchor();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
  if (v14 <= 0xFFFFFFFFFFFFFFFDLL && v19 == 1.0)
  {
    if (v21)
    {
      +[JFXFaceTrackingUtilities adjustIntrinsics:forRenderSize:capturedSize:interfaceOrientation:];
    }
  }

  else
  {
    if (v21)
    {
      +[JFXFaceTrackingUtilities adjustIntrinsics:forRenderSize:capturedSize:interfaceOrientation:];
    }

    v22 = JFXLog_DebugFaceAnchor();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      +[JFXFaceTrackingUtilities adjustIntrinsics:forRenderSize:capturedSize:interfaceOrientation:];
    }

    pv_focal_length_from_intrinsics(*v23);
    pv_principal_point_from_intrinsics(*v23);
    pv_intrinsics_from_focal_length_and_principal_point();
  }
}

+ (CGSize)faceRectScaleFactorForInterfaceOrientation:(int64_t)orientation andDeviceInterfaceOrientation:(int64_t)interfaceOrientation
{
  v4 = ((orientation - 1) < 2) ^ ((interfaceOrientation - 1) < 2);
  v5 = 1.0;
  if (v4)
  {
    v6 = 1.25;
  }

  else
  {
    v6 = 1.0;
  }

  if (!v4)
  {
    v5 = 1.25;
  }

  result.height = v5;
  result.width = v6;
  return result;
}

+ (id)JFX_faceAnchorWithFaceAnchor:(id)anchor forInterfaceOrientation:(int64_t)orientation
{
  anchorCopy = anchor;
  captureInterfaceOrientation = [anchorCopy captureInterfaceOrientation];
  if (captureInterfaceOrientation)
  {
    orientation = captureInterfaceOrientation;
  }

  if ([anchorCopy preferredAnchorOrientation] == orientation || ((orientation - 1) > 3 ? (v7 = 0) : (v7 = qword_242B5B978[orientation - 1]), (v8 = +[JFXRotationTransforms rotationFromCaptureDevicePosition:captureVideoOrientation:toInterfaceOrientation:](JFXRotationTransforms, "rotationFromCaptureDevicePosition:captureVideoOrientation:toInterfaceOrientation:", 2, 4, v7)) == 0))
  {
    v10 = anchorCopy;
  }

  else
  {
    v9 = v8;
    v10 = [anchorCopy copy];
    [v10 transform];
    pv_simd_matrix_rotate();
    [v10 setTransform:?];
    if ((v9 & 0xFFFFFFFD) == 1)
    {
      [v10 imageResolution];
      [v10 setImageResolution:{CGSizeRotate90(v11, v12)}];
    }
  }

  return v10;
}

+ (void)JFX_projectionMatrixWithFaceAnchor:bufferSize:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)adjustIntrinsics:forRenderSize:capturedSize:interfaceOrientation:.cold.3()
{
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)adjustIntrinsics:forRenderSize:capturedSize:interfaceOrientation:.cold.4()
{
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end