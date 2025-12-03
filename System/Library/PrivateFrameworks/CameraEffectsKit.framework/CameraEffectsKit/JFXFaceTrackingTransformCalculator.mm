@interface JFXFaceTrackingTransformCalculator
- (CGSize)outputSize;
- (JFXFaceTrackingTransformCalculator)initWithARMetaData:(id)data outputSize:(CGSize)size playableInterfaceOrientation:(int64_t)orientation;
- (__n128)cameraProjection;
- (__n128)cameraTransform;
- (__n128)nonScaledOrientedCameraTransform;
- (__n128)onFaceTransform;
- (float)pixelsPerUnit;
- (id)calculateFaceTrackingTransform;
- (uint64_t)billboardTransform;
@end

@implementation JFXFaceTrackingTransformCalculator

- (JFXFaceTrackingTransformCalculator)initWithARMetaData:(id)data outputSize:(CGSize)size playableInterfaceOrientation:(int64_t)orientation
{
  height = size.height;
  width = size.width;
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = JFXFaceTrackingTransformCalculator;
  v11 = [(JFXFaceTrackingTransformCalculator *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_arMetadata, data);
    v12->_outputSize.width = width;
    v12->_outputSize.height = height;
    faceAnchor = [dataCopy faceAnchor];
    captureInterfaceOrientation = [faceAnchor captureInterfaceOrientation];
    if (captureInterfaceOrientation)
    {
      orientationCopy = captureInterfaceOrientation;
    }

    else
    {
      orientationCopy = orientation;
    }

    v12->_interfaceOrientation = orientationCopy;
  }

  return v12;
}

- (__n128)cameraTransform
{
  [self nonScaledOrientedCameraTransform];
  v6 = v2;
  [self pixelsPerUnit];
  return v6;
}

- (__n128)cameraProjection
{
  arMetadata = [self arMetadata];
  [self outputSize];
  [arMetadata cameraProjectionForOutputSize:objc_msgSend(self interfaceOrientation:"interfaceOrientation") zNear:v3 zFar:{v4, 0.001, 10000.0}];
  v7 = v5;

  return v7;
}

- (__n128)onFaceTransform
{
  +[JFXFaceTrackingUtilities pointOnFaceMesh];
  v13 = v2;
  arMetadata = [self arMetadata];
  [arMetadata anchorTransform];
  v8 = 0;
  v9 = v13;
  HIDWORD(v9) = 1.0;
  v14[0] = xmmword_242B5BDA0;
  v14[1] = xmmword_242B5BDB0;
  v14[2] = xmmword_242B5B930;
  v14[3] = v9;
  memset(v15, 0, sizeof(v15));
  v16 = 0u;
  do
  {
    v15[v8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(v14[v8])), v5, *&v14[v8], 1), v6, v14[v8], 2), v7, v14[v8], 3);
    ++v8;
  }

  while (v8 != 4);
  v11 = v16;
  v12 = v15[0];

  [self pixelsPerUnit];
  return v12;
}

- (uint64_t)billboardTransform
{
  [x0_0 cameraTransform];
  pv_simd_matrix_get_rotation_matrix(v5);
  arMetadata = [x0_0 arMetadata];
  [arMetadata anchorTransform];
  [x0_0 pixelsPerUnit];

  return pv_simd_matrix_translate();
}

- (float)pixelsPerUnit
{
  result = self->_pixelsPerUnit;
  if (result == 0.0)
  {
    arMetadata = [(JFXFaceTrackingTransformCalculator *)self arMetadata];
    [arMetadata imageResolution];

    arMetadata2 = [(JFXFaceTrackingTransformCalculator *)self arMetadata];
    [arMetadata2 anchorTransform];

    [(JFXFaceTrackingTransformCalculator *)self nonScaledOrientedCameraTransform];
    [(JFXFaceTrackingTransformCalculator *)self cameraProjection];
    pv_projected_pixels_per_unit();
    return self->_pixelsPerUnit;
  }

  return result;
}

- (__n128)nonScaledOrientedCameraTransform
{
  arMetadata = [self arMetadata];
  [arMetadata cameraTransformForInterfaceOrientation:{objc_msgSend(self, "interfaceOrientation")}];
  v5 = v3;

  return v5;
}

- (id)calculateFaceTrackingTransform
{
  v3 = [JFXFaceTrackedEffectTransform alloc];
  [(JFXFaceTrackingTransformCalculator *)self cameraProjection];
  v36 = v5;
  v37 = v4;
  v34 = v7;
  v35 = v6;
  [(JFXFaceTrackingTransformCalculator *)self cameraTransform];
  v32 = v9;
  v33 = v8;
  v30 = v11;
  v31 = v10;
  [(JFXFaceTrackingTransformCalculator *)self onFaceTransform];
  v28 = v13;
  v29 = v12;
  v26 = v15;
  v27 = v14;
  [(JFXFaceTrackingTransformCalculator *)self billboardTransform];
  v24 = [(JFXFaceTrackedEffectTransform *)v3 initWithCameraProjection:v37 cameraTransform:v36 onFaceTransform:v35 billboardTransform:v34, v33, v32, v31, v30, v29, v28, v27, v26, v16, v17, v18, v19, v20, v21, v22, v23];

  return v24;
}

- (CGSize)outputSize
{
  width = self->_outputSize.width;
  height = self->_outputSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end