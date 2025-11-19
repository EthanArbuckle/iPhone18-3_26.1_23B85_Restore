@interface JFXFaceTrackedEffectTransform
- (BOOL)isEqual:(id)a3 forTrackingType:(int64_t)a4;
- (JFXFaceTrackedEffectTransform)initWithCameraProjection:(__n128)a3 cameraTransform:(__n128)a4 onFaceTransform:(__n128)a5 billboardTransform:(__n128)a6;
- (__n128)transformForTrackingType:(uint64_t)a3;
- (id)effectParametersForTrackingType:(int64_t)a3;
@end

@implementation JFXFaceTrackedEffectTransform

- (JFXFaceTrackedEffectTransform)initWithCameraProjection:(__n128)a3 cameraTransform:(__n128)a4 onFaceTransform:(__n128)a5 billboardTransform:(__n128)a6
{
  v53[4] = *MEMORY[0x277D85DE8];
  v47.receiver = a1;
  v47.super_class = JFXFaceTrackedEffectTransform;
  v24 = [(JFXFaceTrackedEffectTransform *)&v47 init];
  v25 = v24;
  if (v24)
  {
    *v24->_anon_20 = a2;
    *&v24->_anon_20[16] = a3;
    *&v24->_anon_20[32] = a4;
    *&v24->_anon_20[48] = a5;
    *v24->_anon_60 = a6;
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
    v27 = [MEMORY[0x277D41690] matrixWithSIMDFloat4x4:{a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], a9.n128_f64[0]}];
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

- (BOOL)isEqual:(id)a3 forTrackingType:(int64_t)a4
{
  v6 = a3;
  if (self == v6)
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

  v7 = v6;
  if (a4 == 1)
  {
    v8 = [(JFXFaceTrackedEffectTransform *)self effectParametersForOnFaceTracking];
    v9 = [(JFXFaceTrackedEffectTransform *)v7 effectParametersForOnFaceTracking];
  }

  else
  {
    if (a4 != 2)
    {
      v8 = 0;
      v11 = 0;
      goto LABEL_11;
    }

    v8 = [(JFXFaceTrackedEffectTransform *)self effectParametersForOnBillboardTracking];
    v9 = [(JFXFaceTrackedEffectTransform *)v7 effectParametersForOnBillboardTracking];
  }

  v11 = v9;
LABEL_11:
  v12 = MEMORY[0x277D41690];
  v13 = *MEMORY[0x277D41A08];
  v14 = [v8 objectForKeyedSubscript:*MEMORY[0x277D41A08]];
  v15 = [v11 objectForKeyedSubscript:v13];
  if ([v12 isMatrix:v14 equivalentTo:v15])
  {
    v16 = MEMORY[0x277D41690];
    v17 = *MEMORY[0x277D41A10];
    v18 = [v8 objectForKeyedSubscript:*MEMORY[0x277D41A10]];
    v19 = [v11 objectForKeyedSubscript:v17];
    if ([v16 isMatrix:v18 equivalentTo:v19])
    {
      v20 = MEMORY[0x277D41690];
      v25 = v7;
      v21 = *MEMORY[0x277D41B70];
      v22 = [v8 objectForKeyedSubscript:*MEMORY[0x277D41B70]];
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

- (__n128)transformForTrackingType:(uint64_t)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      [a1 onFaceTransform];
    }

    else if (a3 == 2)
    {
      [a1 billboardTransform];
    }
  }

  else
  {
    return *MEMORY[0x277D860B8];
  }

  return result;
}

- (id)effectParametersForTrackingType:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(JFXFaceTrackedEffectTransform *)self effectParametersForOnFaceTracking];
  }

  else if (a3 == 2)
  {
    v3 = [(JFXFaceTrackedEffectTransform *)self effectParametersForOnBillboardTracking];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end