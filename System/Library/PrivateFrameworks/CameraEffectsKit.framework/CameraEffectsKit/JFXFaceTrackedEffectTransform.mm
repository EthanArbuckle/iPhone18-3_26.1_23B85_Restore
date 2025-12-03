@interface JFXFaceTrackedEffectTransform
- (BOOL)isEqual:(id)equal forTrackingType:(int64_t)type;
- (JFXFaceTrackedEffectTransform)initWithCameraProjection:(__n128)projection cameraTransform:(__n128)transform onFaceTransform:(__n128)faceTransform billboardTransform:(__n128)billboardTransform;
- (__n128)transformForTrackingType:(uint64_t)type;
- (id)effectParametersForTrackingType:(int64_t)type;
@end

@implementation JFXFaceTrackedEffectTransform

- (JFXFaceTrackedEffectTransform)initWithCameraProjection:(__n128)projection cameraTransform:(__n128)transform onFaceTransform:(__n128)faceTransform billboardTransform:(__n128)billboardTransform
{
  v53[4] = *MEMORY[0x277D85DE8];
  v47.receiver = self;
  v47.super_class = JFXFaceTrackedEffectTransform;
  v24 = [(JFXFaceTrackedEffectTransform *)&v47 init];
  v25 = v24;
  if (v24)
  {
    *v24->_anon_20 = a2;
    *&v24->_anon_20[16] = projection;
    *&v24->_anon_20[32] = transform;
    *&v24->_anon_20[48] = faceTransform;
    *v24->_anon_60 = billboardTransform;
    *&v24->_anon_60[16] = a7;
    *&v24->_anon_60[32] = a8;
    *&v24->_anon_60[48] = a9;
    *&v24[1].super.isa = a17;
    *&v24[1]._effectParametersForOnBillboardTracking = a18;
    *v24[1]._anon_20 = a19;
    *&v24[1]._anon_20[16] = a20;
    *v24->_anon_a0 = a21;
    *&v24->_anon_a0[16] = a22;
    *&v24->_anon_a0[32] = a23;
    *&v24->_anon_a0[48] = a24;
    v26 = [MEMORY[0x277D41690] matrixWithSIMDFloat4x4:?];
    v27 = [MEMORY[0x277D41690] matrixWithSIMDFloat4x4:{billboardTransform.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], a9.n128_f64[0]}];
    v28 = [MEMORY[0x277D41690] matrixWithSIMDFloat4x4:{*&a17, *&a18, *&a19, *&a20}];
    v29 = [MEMORY[0x277D41690] matrixWithSIMDFloat4x4:{*&a21, *&a22, *&a23, *&a24}];
    v31 = *MEMORY[0x277D41A10];
    v50[0] = *MEMORY[0x277D41A08];
    v30 = v50[0];
    v50[1] = v31;
    v53[0] = v26;
    v53[1] = v27;
    v33 = *MEMORY[0x277D419F8];
    v51 = *MEMORY[0x277D41B70];
    v32 = v51;
    v52 = v33;
    v53[2] = v28;
    v53[3] = MEMORY[0x277CBEC38];
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v50 count:4];
    effectParametersForOnFaceTracking = v25->_effectParametersForOnFaceTracking;
    v25->_effectParametersForOnFaceTracking = v34;

    v48[0] = v30;
    v48[1] = v31;
    v49[0] = v26;
    v49[1] = v27;
    v48[2] = v32;
    v48[3] = v33;
    v49[2] = v29;
    v49[3] = MEMORY[0x277CBEC38];
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:4];
    effectParametersForOnBillboardTracking = v25->_effectParametersForOnBillboardTracking;
    v25->_effectParametersForOnBillboardTracking = v36;
  }

  return v25;
}

- (BOOL)isEqual:(id)equal forTrackingType:(int64_t)type
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_18;
  }

  v7 = equalCopy;
  if (type == 1)
  {
    effectParametersForOnFaceTracking = [(JFXFaceTrackedEffectTransform *)self effectParametersForOnFaceTracking];
    effectParametersForOnFaceTracking2 = [(JFXFaceTrackedEffectTransform *)v7 effectParametersForOnFaceTracking];
  }

  else
  {
    if (type != 2)
    {
      effectParametersForOnFaceTracking = 0;
      v11 = 0;
      goto LABEL_11;
    }

    effectParametersForOnFaceTracking = [(JFXFaceTrackedEffectTransform *)self effectParametersForOnBillboardTracking];
    effectParametersForOnFaceTracking2 = [(JFXFaceTrackedEffectTransform *)v7 effectParametersForOnBillboardTracking];
  }

  v11 = effectParametersForOnFaceTracking2;
LABEL_11:
  v12 = MEMORY[0x277D41690];
  v13 = *MEMORY[0x277D41A08];
  v14 = [effectParametersForOnFaceTracking objectForKeyedSubscript:*MEMORY[0x277D41A08]];
  v15 = [v11 objectForKeyedSubscript:v13];
  if ([v12 isMatrix:v14 equivalentTo:v15])
  {
    v16 = MEMORY[0x277D41690];
    v17 = *MEMORY[0x277D41A10];
    v18 = [effectParametersForOnFaceTracking objectForKeyedSubscript:*MEMORY[0x277D41A10]];
    v19 = [v11 objectForKeyedSubscript:v17];
    if ([v16 isMatrix:v18 equivalentTo:v19])
    {
      v20 = MEMORY[0x277D41690];
      v25 = v7;
      v21 = *MEMORY[0x277D41B70];
      v22 = [effectParametersForOnFaceTracking objectForKeyedSubscript:*MEMORY[0x277D41B70]];
      v23 = [v11 objectForKeyedSubscript:v21];
      v10 = [v20 isMatrix:v22 equivalentTo:v23];

      v7 = v25;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_18:
  return v10;
}

- (__n128)transformForTrackingType:(uint64_t)type
{
  if (type)
  {
    if (type == 1)
    {
      [self onFaceTransform];
    }

    else if (type == 2)
    {
      [self billboardTransform];
    }
  }

  else
  {
    return *MEMORY[0x277D860B8];
  }

  return result;
}

- (id)effectParametersForTrackingType:(int64_t)type
{
  if (type == 1)
  {
    effectParametersForOnFaceTracking = [(JFXFaceTrackedEffectTransform *)self effectParametersForOnFaceTracking];
  }

  else if (type == 2)
  {
    effectParametersForOnFaceTracking = [(JFXFaceTrackedEffectTransform *)self effectParametersForOnBillboardTracking];
  }

  else
  {
    effectParametersForOnFaceTracking = 0;
  }

  return effectParametersForOnFaceTracking;
}

@end