@interface JFXFaceTrackingUtilities
+ (BOOL)isFaceAnchorInRange:(id)a3;
+ (CGRect)faceRectInImageWithFaceAnchor:(id)a3 invertY:(BOOL)a4 interfaceOrientation:(int64_t)a5 imageResolution:(CGSize *)a6;
+ (CGSize)faceRectScaleFactorForInterfaceOrientation:(int64_t)a3 andDeviceInterfaceOrientation:(int64_t)a4;
+ (double)rollAngleFromFaceAnchor:(id)a3 forInterfaceOrientation:(int64_t)a4;
+ (id)JFX_faceAnchorWithFaceAnchor:(id)a3 forInterfaceOrientation:(int64_t)a4;
+ (uint64_t)JFX_projectionMatrixWithFaceAnchor:(uint64_t)a3 bufferSize:(uint64_t)a4;
+ (void)adjustIntrinsics:(__n128)a3 forRenderSize:(double)a4 capturedSize:(double)a5 interfaceOrientation:(double)a6;
@end

@implementation JFXFaceTrackingUtilities

+ (CGRect)faceRectInImageWithFaceAnchor:(id)a3 invertY:(BOOL)a4 interfaceOrientation:(int64_t)a5 imageResolution:(CGSize *)a6
{
  v9 = a3;
  v10 = [a1 JFX_faceAnchorWithFaceAnchor:v9 forInterfaceOrientation:a5];
  [v10 imageResolution];
  a6->width = v11;
  a6->height = v12;
  [a1 JFX_projectionMatrixWithFaceAnchor:v10 bufferSize:?];
  [v9 faceRect];

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

+ (double)rollAngleFromFaceAnchor:(id)a3 forInterfaceOrientation:(int64_t)a4
{
  v4 = [a1 JFX_faceAnchorWithFaceAnchor:a3 forInterfaceOrientation:a4];
  [v4 rollAngle];
  v6 = v5;

  return v6;
}

+ (uint64_t)JFX_projectionMatrixWithFaceAnchor:(uint64_t)a3 bufferSize:(uint64_t)a4
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

+ (BOOL)isFaceAnchorInRange:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  [a3 screenRelativePosition];
  v4 = v3;
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v5 floatForKey:@"CFX_MaxCameraToFaceTrackingDistance"];
  v7 = v6;

  v8 = -0.8;
  if (v7 != 0.0)
  {
    v8 = v7;
  }

  return v4 > v8;
}

+ (void)adjustIntrinsics:(__n128)a3 forRenderSize:(double)a4 capturedSize:(double)a5 interfaceOrientation:(double)a6
{
  *&v23[16] = a2;
  *&v23[32] = a3;
  *v23 = a1;
  v14 = a10 - 3;
  v15 = JFXLog_DebugFaceAnchor();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    +[JFXFaceTrackingUtilities adjustIntrinsics:forRenderSize:capturedSize:interfaceOrientation:];
  }

  if (v14 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v16 = a4;
  }

  else
  {
    v16 = a5;
  }

  if (v14 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v17 = a5;
  }

  else
  {
    v17 = a4;
  }

  v18 = JFXLog_DebugFaceAnchor();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    +[JFXFaceTrackingUtilities adjustIntrinsics:forRenderSize:capturedSize:interfaceOrientation:];
  }

  if (a6 / a7 - v17 / v16 <= 0.01)
  {
    v19 = v17 / a6;
  }

  else
  {
    v19 = v16 / a7;
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

+ (CGSize)faceRectScaleFactorForInterfaceOrientation:(int64_t)a3 andDeviceInterfaceOrientation:(int64_t)a4
{
  v4 = ((a3 - 1) < 2) ^ ((a4 - 1) < 2);
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

+ (id)JFX_faceAnchorWithFaceAnchor:(id)a3 forInterfaceOrientation:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 captureInterfaceOrientation];
  if (v6)
  {
    a4 = v6;
  }

  if ([v5 preferredAnchorOrientation] == a4 || ((a4 - 1) > 3 ? (v7 = 0) : (v7 = qword_242B5B978[a4 - 1]), (v8 = +[JFXRotationTransforms rotationFromCaptureDevicePosition:captureVideoOrientation:toInterfaceOrientation:](JFXRotationTransforms, "rotationFromCaptureDevicePosition:captureVideoOrientation:toInterfaceOrientation:", 2, 4, v7)) == 0))
  {
    v10 = v5;
  }

  else
  {
    v9 = v8;
    v10 = [v5 copy];
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