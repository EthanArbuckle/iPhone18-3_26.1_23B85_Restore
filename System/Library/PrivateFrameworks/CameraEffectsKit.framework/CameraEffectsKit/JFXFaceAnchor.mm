@interface JFXFaceAnchor
+ (JFXFaceAnchor)faceAnchorWithARFrame:(id)frame captureInterfaceOrientation:(int64_t)orientation withFaceRectScaleFactor:(CGSize)factor;
- (CGRect)faceRect;
- (CGRect)normalizedFaceRect;
- (CGSize)imageResolution;
- (JFXFaceAnchor)initWithCoder:(id)coder;
- (JFXFaceAnchor)initWithTransform:(__n128)transform forFaceRect:(__n128)rect needsMirroring:(__n128)mirroring withFaceRectScaleFactor:(CGFloat)factor frameImageResolution:(CGFloat)resolution captureInterfaceOrientation:(double)orientation preferredAnchorOrientation:(double)anchorOrientation;
- (__n128)screenRelativePosition;
- (__n128)setCameraTransform:(__n128)transform;
- (__n128)setTransform:(__n128)transform;
- (double)focalLengthForViewport:(CGSize)viewport;
- (double)rollAngle;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
- (void)screenRelativePosition;
@end

@implementation JFXFaceAnchor

+ (JFXFaceAnchor)faceAnchorWithARFrame:(id)frame captureInterfaceOrientation:(int64_t)orientation withFaceRectScaleFactor:(CGSize)factor
{
  height = factor.height;
  width = factor.width;
  v51 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  if ([MEMORY[0x277CE5280] isSupported])
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    anchors = [frameCopy anchors];
    v10 = [anchors countByEnumeratingWithState:&v46 objects:v50 count:16];
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
            objc_enumerationMutation(anchors);
          }

          v14 = *(*(&v46 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            if ([v15 isTracked])
            {
              geometry = [v15 geometry];
              [geometry vertices];
              geometry2 = [v15 geometry];
              [geometry2 vertices];

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
              camera = [frameCopy camera];
              [camera imageResolution];
              v16 = [(JFXFaceAnchor *)v19 initWithTransform:0 forFaceRect:orientation needsMirroring:3 withFaceRectScaleFactor:v45 frameImageResolution:v44 captureInterfaceOrientation:v43 preferredAnchorOrientation:v42, SquareWithSize, v26, v28, v30, *&width, *&height, v32, v33];

              [v15 transform];
              [(JFXFaceAnchor *)v16 setTransform:?];
              camera2 = [frameCopy camera];
              [camera2 transform];
              [(JFXFaceAnchor *)v16 setCameraTransform:?];

              camera3 = [frameCopy camera];
              [camera3 intrinsics];
              pv_focal_length_from_intrinsics(v53);
              LODWORD(v45) = v36;

              [(JFXFaceAnchor *)v16 imageResolution];
              [(JFXFaceAnchor *)v16 setFocalLength:*&v45 / v37];
              [v15 normalizedFaceRect];
              [(JFXFaceAnchor *)v16 setNormalizedFaceRect:?];
              v38 = JFXLog_DebugFaceAnchor();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
              {
                [JFXFaceAnchor faceAnchorWithARFrame:frameCopy captureInterfaceOrientation:? withFaceRectScaleFactor:?];
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

        v11 = [anchors countByEnumeratingWithState:&v46 objects:v50 count:16];
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

- (JFXFaceAnchor)initWithTransform:(__n128)transform forFaceRect:(__n128)rect needsMirroring:(__n128)mirroring withFaceRectScaleFactor:(CGFloat)factor frameImageResolution:(CGFloat)resolution captureInterfaceOrientation:(double)orientation preferredAnchorOrientation:(double)anchorOrientation
{
  v41.receiver = self;
  v41.super_class = JFXFaceAnchor;
  v27 = [(JFXFaceAnchor *)&v41 init];
  v28 = v27;
  if (v27)
  {
    *v27->_anon_70 = a2;
    *&v27->_anon_70[16] = transform;
    *&v27->_anon_70[32] = rect;
    *&v27->_anon_70[48] = mirroring;
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
    v28->_faceRect.origin.x = factor;
    v28->_faceRect.origin.y = resolution;
    v28->_faceRect.size.width = orientation * a14;
    v28->_faceRect.size.height = anchorOrientation * a15;
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

- (double)focalLengthForViewport:(CGSize)viewport
{
  height = viewport.height;
  width = viewport.width;
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

- (JFXFaceAnchor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = JFXFaceAnchor;
  v5 = [(JFXFaceAnchor *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kJTFaceAnchorTransformKey"];
    [v6 getBytes:v5->_anon_70 length:64];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kJTFaceAnchorCameraTransformKey"];

    [v7 getBytes:&v5[1] length:64];
    [coderCopy decodeCGRectForKey:@"kJTFaceAnchorFaceRectKey"];
    v5->_faceRect.origin.x = v8;
    v5->_faceRect.origin.y = v9;
    v5->_faceRect.size.width = v10;
    v5->_faceRect.size.height = v11;
    [coderCopy decodeDoubleForKey:@"kJTFaceAnchorFocalLengthKey"];
    v5->_focalLength = v12;
    [coderCopy decodeCGRectForKey:@"kJFXFaceAnchorNormalizedFaceRectKey"];
    v5->_normalizedFaceRect.origin.x = v13;
    v5->_normalizedFaceRect.origin.y = v14;
    v5->_normalizedFaceRect.size.width = v15;
    v5->_normalizedFaceRect.size.height = v16;
    [coderCopy decodeCGSizeForKey:@"kJFXFaceAnchorImageResolutionKey"];
    v5->_imageResolution.width = v17;
    v5->_imageResolution.height = v18;
    v5->_captureInterfaceOrientation = [coderCopy decodeIntegerForKey:@"kJFXFaceAnchorCaptureInterfaceOrientationKey"];
    v5->_preferredAnchorOrientation = [coderCopy decodeIntegerForKey:@"kJFXFaceAnchorPreferredAnchorOrientationKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEA90];
  coderCopy = coder;
  v5 = [v4 dataWithBytes:self->_anon_70 length:64];
  [coderCopy encodeObject:v5 forKey:@"kJTFaceAnchorTransformKey"];

  v6 = [MEMORY[0x277CBEA90] dataWithBytes:&self[1] length:64];
  [coderCopy encodeObject:v6 forKey:@"kJTFaceAnchorCameraTransformKey"];

  [coderCopy encodeCGRect:@"kJTFaceAnchorFaceRectKey" forKey:{self->_faceRect.origin.x, self->_faceRect.origin.y, self->_faceRect.size.width, self->_faceRect.size.height}];
  [coderCopy encodeDouble:@"kJTFaceAnchorFocalLengthKey" forKey:self->_focalLength];
  [coderCopy encodeCGRect:@"kJFXFaceAnchorNormalizedFaceRectKey" forKey:{self->_normalizedFaceRect.origin.x, self->_normalizedFaceRect.origin.y, self->_normalizedFaceRect.size.width, self->_normalizedFaceRect.size.height}];
  [coderCopy encodeCGSize:@"kJFXFaceAnchorImageResolutionKey" forKey:{self->_imageResolution.width, self->_imageResolution.height}];
  [coderCopy encodeInteger:self->_captureInterfaceOrientation forKey:@"kJFXFaceAnchorCaptureInterfaceOrientationKey"];
  [coderCopy encodeInteger:self->_preferredAnchorOrientation forKey:@"kJFXFaceAnchorPreferredAnchorOrientationKey"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  [self transform];
  v15 = v2;
  [self cameraTransform];
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

- (__n128)setTransform:(__n128)transform
{
  result[7] = a2;
  result[8] = transform;
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

- (__n128)setCameraTransform:(__n128)transform
{
  result[11] = a2;
  result[12] = transform;
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