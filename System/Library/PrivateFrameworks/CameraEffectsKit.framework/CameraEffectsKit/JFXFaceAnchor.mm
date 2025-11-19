@interface JFXFaceAnchor
+ (JFXFaceAnchor)faceAnchorWithARFrame:(id)a3 captureInterfaceOrientation:(int64_t)a4 withFaceRectScaleFactor:(CGSize)a5;
- (CGRect)faceRect;
- (CGRect)normalizedFaceRect;
- (CGSize)imageResolution;
- (JFXFaceAnchor)initWithCoder:(id)a3;
- (JFXFaceAnchor)initWithTransform:(__n128)a3 forFaceRect:(__n128)a4 needsMirroring:(__n128)a5 withFaceRectScaleFactor:(CGFloat)a6 frameImageResolution:(CGFloat)a7 captureInterfaceOrientation:(double)a8 preferredAnchorOrientation:(double)a9;
- (__n128)screenRelativePosition;
- (__n128)setCameraTransform:(__n128)a3;
- (__n128)setTransform:(__n128)a3;
- (double)focalLengthForViewport:(CGSize)a3;
- (double)rollAngle;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
- (void)screenRelativePosition;
@end

@implementation JFXFaceAnchor

+ (JFXFaceAnchor)faceAnchorWithARFrame:(id)a3 captureInterfaceOrientation:(int64_t)a4 withFaceRectScaleFactor:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if ([MEMORY[0x277CE5280] isSupported])
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v9 = [v8 anchors];
    v10 = [v9 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v47;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v47 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v46 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            if ([v15 isTracked])
            {
              v17 = [v15 geometry];
              [v17 vertices];
              v18 = [v15 geometry];
              [v18 vertices];

              v19 = [JFXFaceAnchor alloc];
              [v15 transform];
              v44 = v21;
              v45 = v20;
              v42 = v23;
              v43 = v22;
              SquareWithSize = CGRectMakeSquareWithSize();
              v26 = v25;
              v28 = v27;
              v30 = v29;
              v31 = [v8 camera];
              [v31 imageResolution];
              v16 = [(JFXFaceAnchor *)v19 initWithTransform:0 forFaceRect:a4 needsMirroring:3 withFaceRectScaleFactor:v45 frameImageResolution:v44 captureInterfaceOrientation:v43 preferredAnchorOrientation:v42, SquareWithSize, v26, v28, v30, *&width, *&height, v32, v33];

              [v15 transform];
              [(JFXFaceAnchor *)v16 setTransform:?];
              v34 = [v8 camera];
              [v34 transform];
              [(JFXFaceAnchor *)v16 setCameraTransform:?];

              v35 = [v8 camera];
              [v35 intrinsics];
              pv_focal_length_from_intrinsics(v53);
              LODWORD(v45) = v36;

              [(JFXFaceAnchor *)v16 imageResolution];
              [(JFXFaceAnchor *)v16 setFocalLength:*&v45 / v37];
              [v15 normalizedFaceRect];
              [(JFXFaceAnchor *)v16 setNormalizedFaceRect:?];
              v38 = JFXLog_DebugFaceAnchor();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
              {
                [JFXFaceAnchor faceAnchorWithARFrame:v8 captureInterfaceOrientation:? withFaceRectScaleFactor:?];
              }

              v39 = JFXLog_DebugFaceAnchor();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
              {
                [JFXFaceAnchor faceAnchorWithARFrame:v15 captureInterfaceOrientation:? withFaceRectScaleFactor:?];
              }

              v40 = JFXLog_DebugFaceAnchor();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
              {
                [JFXFaceAnchor faceAnchorWithARFrame:v16 captureInterfaceOrientation:? withFaceRectScaleFactor:?];
              }

              goto LABEL_21;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_21:
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (JFXFaceAnchor)initWithTransform:(__n128)a3 forFaceRect:(__n128)a4 needsMirroring:(__n128)a5 withFaceRectScaleFactor:(CGFloat)a6 frameImageResolution:(CGFloat)a7 captureInterfaceOrientation:(double)a8 preferredAnchorOrientation:(double)a9
{
  v41.receiver = a1;
  v41.super_class = JFXFaceAnchor;
  v27 = [(JFXFaceAnchor *)&v41 init];
  v28 = v27;
  if (v27)
  {
    *v27->_anon_70 = a2;
    *&v27->_anon_70[16] = a3;
    *&v27->_anon_70[32] = a4;
    *&v27->_anon_70[48] = a5;
    if (a11)
    {
      [JFXFaceAnchor CFX_mirrorPoseTransformLeftRight:?];
      *v28->_anon_70 = v29;
      *&v28->_anon_70[16] = v30;
      *&v28->_anon_70[32] = v31;
      *&v28->_anon_70[48] = v32;
    }

    *&v28->_anon_70[60] = 1065353216;
    v28->_imageResolution.width = a16;
    v28->_imageResolution.height = a17;
    v28->_faceRect.origin.x = a6;
    v28->_faceRect.origin.y = a7;
    v28->_faceRect.size.width = a8 * a14;
    v28->_faceRect.size.height = a9 * a15;
    v28->_captureInterfaceOrientation = a12;
    v33 = MEMORY[0x277D860B8];
    v34 = *(MEMORY[0x277D860B8] + 16);
    *&v28[1].super.isa = *MEMORY[0x277D860B8];
    *&v28[1]._preferredAnchorOrientation = v34;
    v35 = *(v33 + 48);
    v28[1]._imageResolution = *(v33 + 32);
    v28[1]._faceRect.origin = v35;
    v28->_focalLength = 0.0;
    v28->_preferredAnchorOrientation = a13;
  }

  return v28;
}

- (double)focalLengthForViewport:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(JFXFaceAnchor *)self focalLength];
  if (width >= height)
  {
    v6 = width;
  }

  else
  {
    v6 = height;
  }

  return v6 * v5;
}

- (JFXFaceAnchor)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = JFXFaceAnchor;
  v5 = [(JFXFaceAnchor *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kJTFaceAnchorTransformKey"];
    [v6 getBytes:v5->_anon_70 length:64];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kJTFaceAnchorCameraTransformKey"];

    [v7 getBytes:&v5[1] length:64];
    [v4 decodeCGRectForKey:@"kJTFaceAnchorFaceRectKey"];
    v5->_faceRect.origin.x = v8;
    v5->_faceRect.origin.y = v9;
    v5->_faceRect.size.width = v10;
    v5->_faceRect.size.height = v11;
    [v4 decodeDoubleForKey:@"kJTFaceAnchorFocalLengthKey"];
    v5->_focalLength = v12;
    [v4 decodeCGRectForKey:@"kJFXFaceAnchorNormalizedFaceRectKey"];
    v5->_normalizedFaceRect.origin.x = v13;
    v5->_normalizedFaceRect.origin.y = v14;
    v5->_normalizedFaceRect.size.width = v15;
    v5->_normalizedFaceRect.size.height = v16;
    [v4 decodeCGSizeForKey:@"kJFXFaceAnchorImageResolutionKey"];
    v5->_imageResolution.width = v17;
    v5->_imageResolution.height = v18;
    v5->_captureInterfaceOrientation = [v4 decodeIntegerForKey:@"kJFXFaceAnchorCaptureInterfaceOrientationKey"];
    v5->_preferredAnchorOrientation = [v4 decodeIntegerForKey:@"kJFXFaceAnchorPreferredAnchorOrientationKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEA90];
  v7 = a3;
  v5 = [v4 dataWithBytes:self->_anon_70 length:64];
  [v7 encodeObject:v5 forKey:@"kJTFaceAnchorTransformKey"];

  v6 = [MEMORY[0x277CBEA90] dataWithBytes:&self[1] length:64];
  [v7 encodeObject:v6 forKey:@"kJTFaceAnchorCameraTransformKey"];

  [v7 encodeCGRect:@"kJTFaceAnchorFaceRectKey" forKey:{self->_faceRect.origin.x, self->_faceRect.origin.y, self->_faceRect.size.width, self->_faceRect.size.height}];
  [v7 encodeDouble:@"kJTFaceAnchorFocalLengthKey" forKey:self->_focalLength];
  [v7 encodeCGRect:@"kJFXFaceAnchorNormalizedFaceRectKey" forKey:{self->_normalizedFaceRect.origin.x, self->_normalizedFaceRect.origin.y, self->_normalizedFaceRect.size.width, self->_normalizedFaceRect.size.height}];
  [v7 encodeCGSize:@"kJFXFaceAnchorImageResolutionKey" forKey:{self->_imageResolution.width, self->_imageResolution.height}];
  [v7 encodeInteger:self->_captureInterfaceOrientation forKey:@"kJFXFaceAnchorCaptureInterfaceOrientationKey"];
  [v7 encodeInteger:self->_preferredAnchorOrientation forKey:@"kJFXFaceAnchorPreferredAnchorOrientationKey"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  size = self->_faceRect.size;
  *(result + 3) = self->_faceRect.origin;
  *(result + 4) = size;
  v6 = *self->_anon_70;
  v7 = *&self->_anon_70[16];
  v8 = *&self->_anon_70[48];
  *(result + 9) = *&self->_anon_70[32];
  *(result + 10) = v8;
  *(result + 7) = v6;
  *(result + 8) = v7;
  *(result + 1) = *&self->_focalLength;
  v9 = self->_normalizedFaceRect.size;
  *(result + 5) = self->_normalizedFaceRect.origin;
  *(result + 6) = v9;
  *(result + 2) = self->_imageResolution;
  *(result + 3) = self->_captureInterfaceOrientation;
  *(result + 2) = self->_preferredAnchorOrientation;
  imageResolution = self[1]._imageResolution;
  origin = self[1]._faceRect.origin;
  v12 = *&self[1]._preferredAnchorOrientation;
  *(result + 11) = *&self[1].super.isa;
  *(result + 12) = v12;
  *(result + 13) = imageResolution;
  *(result + 14) = origin;
  return result;
}

- (__n128)screenRelativePosition
{
  [a1 transform];
  v15 = v2;
  [a1 cameraTransform];
  v5 = vzip1q_s32(v3, v4);
  v6 = vzip2q_s32(v3, v4);
  v9 = vzip1q_s32(v7, v8);
  v10 = vzip2q_s32(v7, v8);
  v14 = vzip2q_s32(v6, v10);
  v16 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(v5, v9), v15.f32[0]), vzip2q_s32(v5, v9), *v15.f32, 1), vzip1q_s32(v6, v10), v15, 2);
  v11 = JFXLog_DebugFaceAnchor();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [JFXFaceAnchor screenRelativePosition];
  }

  v17 = vmlaq_laneq_f32(v16, v14, v15, 3);

  v12 = JFXLog_DebugFaceAnchor();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [JFXFaceAnchor screenRelativePosition];
  }

  return v17;
}

- (double)rollAngle
{
  [(JFXFaceAnchor *)self transform];
  pv_simd_matrix_get_euler_angles();
  return 0.0;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  [(JFXFaceAnchor *)self screenRelativePosition];
  v4 = NSStringFromSIMDFloat3();
  [(JFXFaceAnchor *)self faceRect];
  v5 = NSStringFromSIMDFloat4();
  [(JFXFaceAnchor *)self focalLength];
  v7 = [v3 stringWithFormat:@"position = %@ faceRect = %@ focalLength = %.3f preferred orientation: %s capture orientation: %s", v4, v5, v6, PVInterfaceOrientationNames[-[JFXFaceAnchor preferredAnchorOrientation](self, "preferredAnchorOrientation")], PVInterfaceOrientationNames[-[JFXFaceAnchor captureInterfaceOrientation](self, "captureInterfaceOrientation")]];

  return v7;
}

- (__n128)setTransform:(__n128)a3
{
  result[7] = a2;
  result[8] = a3;
  result[9] = a4;
  result[10] = a5;
  return result;
}

- (CGRect)faceRect
{
  x = self->_faceRect.origin.x;
  y = self->_faceRect.origin.y;
  width = self->_faceRect.size.width;
  height = self->_faceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)normalizedFaceRect
{
  x = self->_normalizedFaceRect.origin.x;
  y = self->_normalizedFaceRect.origin.y;
  width = self->_normalizedFaceRect.size.width;
  height = self->_normalizedFaceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (__n128)setCameraTransform:(__n128)a3
{
  result[11] = a2;
  result[12] = a3;
  result[13] = a4;
  result[14] = a5;
  return result;
}

- (CGSize)imageResolution
{
  width = self->_imageResolution.width;
  height = self->_imageResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (void)faceAnchorWithARFrame:(void *)a1 captureInterfaceOrientation:withFaceRectScaleFactor:.cold.1(void *a1)
{
  v1 = [a1 camera];
  v2 = [v1 description];
  OUTLINED_FUNCTION_1_0(&dword_242A3B000, v3, v4, "ARCamera: %@", v5, v6, v7, v8, 2u);
}

+ (void)faceAnchorWithARFrame:(void *)a1 captureInterfaceOrientation:withFaceRectScaleFactor:.cold.2(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_1_0(&dword_242A3B000, v2, v3, "ARFaceAnchor: %@", v4, v5, v6, v7, 2u);
}

+ (void)faceAnchorWithARFrame:(void *)a1 captureInterfaceOrientation:withFaceRectScaleFactor:.cold.3(void *a1)
{
  v1 = [a1 debugDescription];
  OUTLINED_FUNCTION_1_0(&dword_242A3B000, v2, v3, "from ARFrame %@", v4, v5, v6, v7, 2u);
}

- (void)screenRelativePosition
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_11(v0);
  _os_log_debug_impl(&dword_242A3B000, v1, OS_LOG_TYPE_DEBUG, "translation: (%f,%f,%f,%f)", v2, 0x2Au);
}

@end