@interface JFXARMetadata
- (BOOL)hasTrackedFace;
- (CGSize)imageResolution;
- (JFXARMetadata)initWithARFrame:(id)a3 faceAnchor:(id)a4;
- (JFXARMetadata)initWithCoder:(id)a3;
- (double)initWithAnchorTransform:(__n128)a3 cameraTransform:(__n128)a4 cameraIntrinsics:(__n128)a5 cameraImageResolution:(__n128)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (uint64_t)cameraProjectionForOutputSize:(float64_t)a3 interfaceOrientation:(double)a4 zNear:(double)a5 zFar:(uint64_t)a6;
- (uint64_t)cameraTransformForInterfaceOrientation:(uint64_t)a3;
- (uint64_t)initWithFaceAnchor:(__n128)a3 cameraIntrinsics:(__n128)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation JFXARMetadata

- (BOOL)hasTrackedFace
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(JFXARMetadata *)self faceAnchor];

  if (v3)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(JFXARMetadata *)self arFrame];
    v6 = [v5 anchors];

    v4 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v6);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([v9 isTracked])
          {
            LOBYTE(v4) = 1;
            goto LABEL_14;
          }
        }

        v4 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  return v4;
}

- (JFXARMetadata)initWithCoder:(id)a3
{
  v33[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v31 = 0u;
  *v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kJFXAnchorTransformKey"];
  [v5 getBytes:&v29 length:64];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kJFXCameraTransformKey"];

  [v6 getBytes:&v25 length:64];
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kJFXCameraIntrinsicsKey"];

  [v7 getBytes:&v22 length:48];
  [v4 decodeCGSizeForKey:@"kJFXImageResolutionKey"];
  v9 = v8;
  v11 = v10;
  v12 = MEMORY[0x277CBEB98];
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v33[2] = objc_opt_class();
  v33[3] = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
  v14 = [v12 setWithArray:v13];
  v15 = [v4 decodeObjectOfClasses:v14 forKey:@"kJFXAnimojiPhysicsBlendShapesKey"];

  v16 = [(JFXARMetadata *)self initWithAnchorTransform:*&v29 cameraTransform:*&v30 cameraIntrinsics:*&v31 cameraImageResolution:v32[0], *&v25, *&v26, *&v27, *&v28, v22, v23, v24, v9, v11];
  if (v16)
  {
    v16->_pvTransformOrientation = [v4 decodeIntegerForKey:@"kJFXTransformOrientationKey"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kJFXARFrameKey"];
    arFrame = v16->_arFrame;
    v16->_arFrame = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kJFXFaceAnchorKey"];
    faceAnchor = v16->_faceAnchor;
    v16->_faceAnchor = v19;

    objc_storeStrong(&v16->_animojiPhysicsBlendShapes, v15);
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(JFXARMetadata *)self arFrame];
  [v4 encodeObject:v5 forKey:@"kJFXARFrameKey"];

  v6 = [(JFXARMetadata *)self faceAnchor];
  [v4 encodeObject:v6 forKey:@"kJFXFaceAnchorKey"];

  v7 = [MEMORY[0x277CBEA90] dataWithBytes:self->_anon_70 length:64];
  [v4 encodeObject:v7 forKey:@"kJFXAnchorTransformKey"];

  v8 = [MEMORY[0x277CBEA90] dataWithBytes:&self[1] length:64];
  [v4 encodeObject:v8 forKey:@"kJFXCameraTransformKey"];

  v9 = [MEMORY[0x277CBEA90] dataWithBytes:self->_anon_40 length:48];
  [v4 encodeObject:v9 forKey:@"kJFXCameraIntrinsicsKey"];

  [v4 encodeCGSize:@"kJFXImageResolutionKey" forKey:{self->_imageResolution.width, self->_imageResolution.height}];
  [v4 encodeInteger:self->_pvTransformOrientation forKey:@"kJFXTransformOrientationKey"];
  v10 = [(JFXARMetadata *)self animojiPhysicsBlendShapes];
  [v4 encodeObject:v10 forKey:@"kJFXAnimojiPhysicsBlendShapesKey"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  v10.receiver = v3;
  v10.super_class = JFXARMetadata;
  v4 = [(JFXARMetadata *)&v10 init];
  v5 = [(JFXARMetadata *)v3 arFrame];
  arFrame = v4->_arFrame;
  v4->_arFrame = v5;

  v7 = [(JFXARMetadata *)v3 faceAnchor];
  faceAnchor = v4->_faceAnchor;
  v4->_faceAnchor = v7;

  return v4;
}

- (double)initWithAnchorTransform:(__n128)a3 cameraTransform:(__n128)a4 cameraIntrinsics:(__n128)a5 cameraImageResolution:(__n128)a6
{
  v31.receiver = a1;
  v31.super_class = JFXARMetadata;
  v21 = [(JFXARMetadata *)&v31 init];
  if (v21)
  {
    result = a21;
    *&v21->_anon_70[16] = a3;
    *&v21->_anon_70[32] = a4;
    *&v21->_anon_70[48] = a5;
    *&v21[1].super.isa = a6;
    *&v21[1]._faceAnchor = a7;
    *&v21[1]._pvTransformOrientation = a8;
    *&v21[1]._imageResolution.height = a9;
    *v21->_anon_40 = a17;
    *&v21->_anon_40[16] = a18;
    *&v21->_anon_40[32] = a19;
    *v21->_anon_70 = a2;
    v21->_imageResolution.width = a20;
    v21->_imageResolution.height = a21;
    v21->_pvTransformOrientation = 3;
  }

  return result;
}

- (JFXARMetadata)initWithARFrame:(id)a3 faceAnchor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 anchors];
  v10 = [v9 firstObject];
  [v10 transform];
  v38 = v12;
  v39 = v11;
  v36 = v14;
  v37 = v13;
  v15 = [v7 camera];
  [v15 transform];
  v34 = v17;
  v35 = v16;
  v32 = v19;
  v33 = v18;
  v20 = [v7 camera];
  [v20 intrinsics];
  v30 = v22;
  v31 = v21;
  v29 = v23;
  v24 = [v7 camera];
  [v24 imageResolution];
  v27 = [(JFXARMetadata *)self initWithAnchorTransform:v39 cameraTransform:v38 cameraIntrinsics:v37 cameraImageResolution:v36, v35, v34, v33, v32, v31, v30, v29, v25, v26];

  if (v27)
  {
    objc_storeStrong(&v27->_arFrame, a3);
    objc_storeStrong(&v27->_faceAnchor, a4);
    v27->_pvTransformOrientation = 3;
  }

  return v27;
}

- (uint64_t)initWithFaceAnchor:(__n128)a3 cameraIntrinsics:(__n128)a4
{
  v8 = a6;
  [v8 transform];
  v28 = v10;
  v29 = v9;
  v27 = v11;
  v26 = v12;
  [v8 cameraTransform];
  v24 = v14;
  v25 = v13;
  v22 = v16;
  v23 = v15;
  [v8 imageResolution];
  v19 = [a1 initWithAnchorTransform:v29 cameraTransform:v28 cameraIntrinsics:v27 cameraImageResolution:{v26, v25, v24, v23, v22, *&a2, *&a3, *&a4, v17, v18}];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong((v19 + 16), a6);
    *(v20 + 32) = [v8 preferredAnchorOrientation];
  }

  return v20;
}

- (uint64_t)cameraProjectionForOutputSize:(float64_t)a3 interfaceOrientation:(double)a4 zNear:(double)a5 zFar:(uint64_t)a6
{
  v11 = [a1 pvTransformOrientation];
  [a1 cameraIntrinsics];
  v24 = v13;
  v25 = v12;
  v23 = v14;
  [a1 imageResolution];
  v18.f64[1] = v17;
  v19.n128_u64[0] = vcvt_f32_f64(v18);
  v20.f64[0] = a2;
  v20.f64[1] = a3;
  v21.n128_u64[0] = vcvt_f32_f64(v20);

  v15.n128_f32[0] = a4;
  v16.n128_f32[0] = a5;
  return MEMORY[0x2821A2588](v11, a7, 1, 1, v25, v24, v23, v19, v21, v15, v16);
}

- (uint64_t)cameraTransformForInterfaceOrientation:(uint64_t)a3
{
  v5 = [a1 pvTransformOrientation];
  [a1 cameraTransform];

  return MEMORY[0x2821A2570](v5, a3, 1);
}

- (CGSize)imageResolution
{
  width = self->_imageResolution.width;
  height = self->_imageResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

@end