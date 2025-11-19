@interface VCCamera
- (VCCamera)init;
- (VCCamera)initWithDictionary:(id)a3;
- (float)_calculateEffectiveFocalLengthFromFOV:(float)a3;
- (float)_calculateFOVFromEffectiveFocalLength:(float)a3;
- (float)_calculateValidImageCircleRadius;
- (float)fov;
- (float)intrinsicMatrix;
- (float)zoomFOV;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)dictionaryRepresentation;
- (int)updateWithCalibration:(id)a3;
- (void)_updateModel;
- (void)_updateModelDistortionProperties;
- (void)_updateModelExtrinsicProperties;
- (void)_updateModelIntrinsicProperties;
- (void)setFisheyeFactor:(float)a3;
- (void)setFov:(float)a3;
- (void)setZoomFOV:(float)a3;
@end

@implementation VCCamera

- (VCCamera)init
{
  v7.receiver = self;
  v7.super_class = VCCamera;
  v2 = [(VCCamera *)&v7 init];
  *v2->_sensorSize = 0x453B8000457A0000;
  *v2->_principalPoint = 0x44BB800044FA0000;
  v2->_focalLength = 2000.0 / tanf(0.7854);
  v2->_fisheyeFactor = 1.0;
  *v2->_rotation = 0u;
  *v2->_translation = 0u;
  *&v2->_zoomFactor = 0x3C1374BC3F800000;
  v2->_hasGeometricDistortionCalibration = 0;
  v2->_geometricDistortionCalibrationMaxRadius = 0;
  forwardGeometricDistortionPolynomial = v2->_forwardGeometricDistortionPolynomial;
  *v2->_geometricDistortionCenter = 0;
  v2->_forwardGeometricDistortionPolynomial = 0;

  inverseGeometricDistortionPolynomial = v2->_inverseGeometricDistortionPolynomial;
  v2->_inverseGeometricDistortionPolynomial = 0;

  portType = v2->_portType;
  v2->_portType = 0;

  v2->_sensorID = 0;
  v2->_modelState = 7;
  return v2;
}

- (int)updateWithCalibration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_32;
  }

  v6 = [v4 objectForKeyedSubscript:@"IntrinsicMatrixReferenceDimensions"];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_32;
  }

  v8 = [v6 objectForKeyedSubscript:@"Width"];
  [v8 floatValue];
  v41 = v9;

  v10 = [v7 objectForKeyedSubscript:@"Height"];
  [v10 floatValue];
  v40 = v11;

  *self->_sensorSize = __PAIR64__(v40, v41);
  v12 = [v5 objectForKeyedSubscript:@"IntrinsicMatrix"];
  v13 = v12;
  if (!v12)
  {
LABEL_31:

LABEL_32:
    v38 = -1;
    goto LABEL_29;
  }

  v14 = [v12 bytes];
  v15 = *v14;
  v16 = *(v14 + 20);
  *self->_principalPoint = *(v14 + 32);
  if (v15 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  self->_focalLength = v17;
  v18 = [v5 objectForKeyedSubscript:{@"PixelSize", v40}];
  v19 = v18;
  if (!v18)
  {

    goto LABEL_31;
  }

  [v18 floatValue];
  self->_pixelSize = v20;
  v21 = [v5 objectForKeyedSubscript:@"DistortionCalibrationValidMaxRadiusInPixels"];
  v22 = [v5 objectForKeyedSubscript:@"LensDistortionCenter"];
  v23 = [v22 objectForKeyedSubscript:@"X"];

  v24 = [v5 objectForKeyedSubscript:@"LensDistortionCenter"];
  v25 = [v24 objectForKeyedSubscript:@"Y"];

  v26 = [v5 objectForKeyedSubscript:@"LensDistortionCoefficients"];
  v27 = [v5 objectForKeyedSubscript:@"InverseLensDistortionCoefficients"];
  v28 = v27;
  if (v21)
  {
    v29 = v23 == 0;
  }

  else
  {
    v29 = 1;
  }

  v32 = v29 || v25 == 0 || v26 == 0 || v27 == 0;
  v33 = !v32;
  self->_hasGeometricDistortionCalibration = v33;
  if (v32)
  {
    self->_geometricDistortionCalibrationMaxRadius = 0;
    forwardGeometricDistortionPolynomial = self->_forwardGeometricDistortionPolynomial;
    *self->_geometricDistortionCenter = 0;
    self->_forwardGeometricDistortionPolynomial = 0;

    inverseGeometricDistortionPolynomial = self->_inverseGeometricDistortionPolynomial;
    self->_inverseGeometricDistortionPolynomial = 0;

    if ((([(NSString *)self->_portType isEqual:*MEMORY[0x277CF3D20]]& 1) != 0 || [(NSString *)self->_portType isEqual:*MEMORY[0x277CF3CF8]]) && !self->_hasGeometricDistortionCalibration)
    {

      v38 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    self->_geometricDistortionCalibrationMaxRadius = [v21 intValue];
    [v23 floatValue];
    *self->_geometricDistortionCenter = v34;
    [v25 floatValue];
    *&self->_geometricDistortionCenter[4] = v35;
    objc_storeStrong(&self->_forwardGeometricDistortionPolynomial, v26);
    objc_storeStrong(&self->_inverseGeometricDistortionPolynomial, v28);
  }

  v38 = 0;
  self->_modelState = 7;
LABEL_29:

  return v38;
}

- (void)setFisheyeFactor:(float)a3
{
  if (fabsf(a3) <= 1.0)
  {
    self->_fisheyeFactor = a3;
    self->_modelState |= 1u;
  }
}

- (float)fov
{
  *&v2 = self->_focalLength;
  [(VCCamera *)self _calculateFOVFromEffectiveFocalLength:v2];
  return result;
}

- (void)setFov:(float)a3
{
  [(VCCamera *)self _calculateEffectiveFocalLengthFromFOV:?];
  self->_focalLength = self->_focalLength * (v4 / self->_focalLength);
  self->_modelState |= 1u;
}

- (float)zoomFOV
{
  *&v2 = self->_focalLength * self->_zoomFactor;
  [(VCCamera *)self _calculateFOVFromEffectiveFocalLength:v2];
  return result;
}

- (void)setZoomFOV:(float)a3
{
  [(VCCamera *)self _calculateEffectiveFocalLengthFromFOV:?];
  self->_zoomFactor = self->_zoomFactor * (v4 / (self->_focalLength * self->_zoomFactor));
  self->_modelState |= 1u;
}

- (float)intrinsicMatrix
{
  __asm { FMOV            V2.4S, #1.0 }

  return *(a1 + 280) * *(a1 + 288);
}

- (void)_updateModelIntrinsicProperties
{
  v3 = *self->_principalPoint;
  *self->_anon_10 = *self->_sensorSize;
  *&self->_anon_10[8] = v3;
  *&v3 = self->_fisheyeFactor;
  *&self->_anon_10[16] = self->_focalLength * self->_zoomFactor;
  *&self->_anon_10[20] = v3;
  [(VCCamera *)self _calculateValidImageCircleRadius];
  *&self->_anon_10[24] = v4;
  self->_modelState &= ~1u;
}

- (float)_calculateFOVFromEffectiveFocalLength:(float)a3
{
  v3 = fmaxf(COERCE_FLOAT(*self->_sensorSize), COERCE_FLOAT(HIDWORD(*self->_sensorSize))) * 0.5;
  fisheyeFactor = self->_fisheyeFactor;
  if (fisheyeFactor == 0.0)
  {
    v5 = v3 / a3;
  }

  else
  {
    v6 = (fisheyeFactor * v3) / a3;
    if (fisheyeFactor <= 0.0)
    {
      v7 = asinf(v6);
    }

    else
    {
      v7 = atanf(v6);
    }

    v5 = v7 / fisheyeFactor;
  }

  return v5 + v5;
}

- (float)_calculateEffectiveFocalLengthFromFOV:(float)a3
{
  v3 = fmaxf(COERCE_FLOAT(*self->_sensorSize), COERCE_FLOAT(HIDWORD(*self->_sensorSize))) * 0.5;
  fisheyeFactor = self->_fisheyeFactor;
  v5 = a3 * 0.5;
  if (fisheyeFactor == 0.0)
  {
    return v3 / v5;
  }

  v7 = fisheyeFactor * v3;
  v8 = v5 * fisheyeFactor;
  if (fisheyeFactor <= 0.0)
  {
    v9 = sinf(v8);
  }

  else
  {
    v9 = tanf(v8);
  }

  return v7 / v9;
}

- (float)_calculateValidImageCircleRadius
{
  fisheyeFactor = self->_fisheyeFactor;
  if (fisheyeFactor > 0.5)
  {
    return INFINITY;
  }

  focalLength = self->_focalLength;
  if (fisheyeFactor == 0.0)
  {
    return focalLength * 3.1416;
  }

  v5 = fisheyeFactor * 3.1416;
  v6 = focalLength / fisheyeFactor;
  if (fisheyeFactor <= 0.0)
  {
    v7 = sinf(v5);
  }

  else
  {
    v7 = tanf(v5);
  }

  return v6 * v7;
}

- (void)_updateModelExtrinsicProperties
{
  v33 = *self->_rotation;
  v3 = __sincosf_stret(0.5 * v33.f32[0]);
  v29 = vmulq_n_f32(xmmword_2434F7660, v3.__sinval);
  v4 = __sincosf_stret(vmuls_lane_f32(0.5, *v33.f32, 1));
  v5 = vmulq_n_f32(xmmword_2434F7670, v4.__sinval);
  v5.i32[3] = LODWORD(v4.__cosval);
  v6 = vnegq_f32(v5);
  v7 = vtrn2q_s32(v5, vtrn1q_s32(v5, v6));
  v8 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v5, v6, 8uLL), *v29.f32, 1), vextq_s8(v7, v7, 8uLL), v29.f32[0]);
  v9 = vrev64q_s32(v5);
  v9.i32[0] = v6.i32[1];
  v9.i32[3] = v6.i32[2];
  v31 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v5, v3.__cosval), v9, v29, 2), v8);
  v10 = __sincosf_stret(vmuls_lane_f32(0.5, v33, 2));
  v11 = vmulq_n_f32(xmmword_2434F7680, v10.__sinval);
  v11.i32[3] = LODWORD(v10.__cosval);
  _Q1 = vnegq_f32(v11);
  v13 = vtrn2q_s32(v11, vtrn1q_s32(v11, _Q1));
  _Q3 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v11, _Q1, 8uLL), *v31.f32, 1), vextq_s8(v13, v13, 8uLL), v31.f32[0]);
  v35.columns[2] = vrev64q_s32(v11);
  v35.columns[2].i32[0] = _Q1.i32[1];
  v35.columns[2].i32[3] = _Q1.i32[2];
  _Q0 = vaddq_f32(_Q3, vmlaq_laneq_f32(vmulq_laneq_f32(v11, v31, 3), v35.columns[2], v31, 2));
  _Q1.i32[0] = _Q0.i32[1];
  v35.columns[2].i32[0] = _Q0.i32[2];
  __asm { FMLS            S17, S2, V0.S[2] }

  _S4 = _Q0.i32[3];
  __asm { FMLA            S17, S4, V0.S[3] }

  v23 = vmuls_lane_f32(_Q0.f32[2], _Q0, 3);
  v24.f32[0] = vmuls_lane_f32(_Q0.f32[1], _Q0, 3);
  _Q17.f32[1] = (v23 + (_Q0.f32[0] * _Q0.f32[1])) + (v23 + (_Q0.f32[0] * _Q0.f32[1]));
  _Q17.f32[2] = -(v24.f32[0] - (_Q0.f32[0] * _Q0.f32[2])) - (v24.f32[0] - (_Q0.f32[0] * _Q0.f32[2]));
  v25.f32[0] = -(v23 - (_Q0.f32[0] * _Q0.f32[1])) - (v23 - (_Q0.f32[0] * _Q0.f32[1]));
  __asm
  {
    FMLA            S3, S1, V0.S[1]
    FMLA            S3, S4, V0.S[3]
    FMLA            S5, S2, V0.S[1]
  }

  v25.f32[1] = _Q3.f32[0] - (_Q0.f32[0] * _Q0.f32[0]);
  v25.f32[2] = _S5 + _S5;
  v24.f32[1] = -(_Q0.f32[0] * _Q0.f32[3]);
  v27 = vmla_laneq_f32(v24, *_Q0.f32, _Q0, 2);
  __asm
  {
    FMLA            S3, S2, V0.S[2]
    FMLS            S3, S1, V0.S[1]
  }

  *v35.columns[2].f32 = vadd_f32(v27, v27);
  v35.columns[2].i32[2] = _Q3.i32[0];
  v35.columns[3] = *self->_translation;
  v35.columns[0] = _Q17;
  v35.columns[0].i32[3] = *(MEMORY[0x277D860B8] + 12);
  v35.columns[1] = v25;
  v35.columns[1].i32[3] = *(MEMORY[0x277D860B8] + 28);
  v32 = v35.columns[1];
  v34 = v35.columns[0];
  v35.columns[2].i32[3] = *(MEMORY[0x277D860B8] + 44);
  v35.columns[3].i32[3] = *(MEMORY[0x277D860B8] + 60);
  v28 = v35.columns[3];
  v30 = v35.columns[2];
  *&self->_anon_10[32] = __invert_f4(v35);
  *&self->_anon_10[96] = v34;
  *&self->_anon_10[112] = v32;
  *&self->_anon_10[128] = v30;
  *&self->_anon_10[144] = v28;
  self->_modelState &= ~2u;
}

- (void)_updateModelDistortionProperties
{
  self->_anon_10[160] = self->_hasGeometricDistortionCalibration;
  *&self->_anon_10[164] = self->_pixelSize * self->_pixelSize;
  *&self->_anon_10[168] = *self->_geometricDistortionCenter;
  __44__VCCamera__updateModelDistortionProperties__block_invoke(self, self->_forwardGeometricDistortionPolynomial, &self->_anon_10[176]);
  __44__VCCamera__updateModelDistortionProperties__block_invoke(v3, self->_inverseGeometricDistortionPolynomial, &self->_anon_10[208]);
  v4 = self->_geometricDistortionCalibrationMaxRadius + 0.5;
  *&self->_anon_10[240] = v4;
  v5 = *&self->_anon_10[164] * (v4 * v4);
  *&self->_anon_10[244] = v4 * (1.0 / (((*&self->_anon_10[208] + ((*&self->_anon_10[212] + ((*&self->_anon_10[216] + ((*&self->_anon_10[220] + ((*&self->_anon_10[224] + ((*&self->_anon_10[228] + ((*&self->_anon_10[232] + ((*&self->_anon_10[236] + (v5 * 0.0)) * v5)) * v5)) * v5)) * v5)) * v5)) * v5)) * v5)) * 0.01) + 1.0));
  sensorID = self->_sensorID;
  if (sensorID == 2068 || sensorID == 1556)
  {
    *&self->_anon_10[244] = v4 * (1.0 / (((*&self->_anon_10[176] + ((*&self->_anon_10[180] + ((*&self->_anon_10[184] + ((*&self->_anon_10[188] + ((*&self->_anon_10[192] + ((*&self->_anon_10[196] + ((*&self->_anon_10[200] + ((*&self->_anon_10[204] + (v5 * 0.0)) * v5)) * v5)) * v5)) * v5)) * v5)) * v5)) * v5)) * 0.01) + 1.0));
  }

  self->_modelState &= ~4u;
}

void __44__VCCamera__updateModelDistortionProperties__block_invoke(uint64_t a1, void *a2, _OWORD *a3)
{
  v4 = a2;
  if (v4 && [v4 length] == 32)
  {
    [v4 getBytes:a3 length:32];
  }

  else
  {
    *a3 = 0u;
    a3[1] = 0u;
  }
}

- (VCCamera)initWithDictionary:(id)a3
{
  v4 = a3;
  v66.receiver = self;
  v66.super_class = VCCamera;
  v5 = [(VCCamera *)&v66 init];
  v6 = [v4 objectForKeyedSubscript:@"SensorSize"];
  if (!v6)
  {
    goto LABEL_58;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_58;
  }

  v7 = v6;
  if ([v7 count] != 2)
  {
    goto LABEL_54;
  }

  v8 = [v7 objectAtIndexedSubscript:0];
  [v8 floatValue];
  v61 = v9;
  v10 = [v7 objectAtIndexedSubscript:1];
  [v10 floatValue];
  *v5->_sensorSize = __PAIR64__(v11, v61);

  v6 = [v4 objectForKeyedSubscript:@"PrincipalPoint"];

  if (!v6)
  {
    goto LABEL_58;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_58;
  }

  v7 = v6;
  if ([v7 count] != 2)
  {
    goto LABEL_54;
  }

  v12 = [v7 objectAtIndexedSubscript:0];
  [v12 floatValue];
  v62 = v13;
  v14 = [v7 objectAtIndexedSubscript:1];
  [v14 floatValue];
  *v5->_principalPoint = __PAIR64__(v15, v62);

  v6 = [v4 objectForKeyedSubscript:@"FocalLength"];

  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_58:
    v57 = 0;
    goto LABEL_53;
  }

  [v6 floatValue];
  v5->_focalLength = v16;
  v17 = [v4 objectForKeyedSubscript:@"FisheyeFactor"];

  if (!v17)
  {
    goto LABEL_55;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_56;
  }

  [v17 floatValue];
  v5->_fisheyeFactor = v18;
  v6 = [v4 objectForKeyedSubscript:@"ZoomFactor"];

  if (!v6)
  {
    goto LABEL_58;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_58;
  }

  [v6 floatValue];
  v5->_zoomFactor = v19;
  v17 = [v4 objectForKeyedSubscript:@"Translation"];

  if (!v17)
  {
LABEL_55:
    v6 = 0;
    goto LABEL_58;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_56;
  }

  v7 = v17;
  if ([v7 count] != 3)
  {
    goto LABEL_54;
  }

  v20 = [v7 objectAtIndexedSubscript:0];
  [v20 floatValue];
  v63 = v21;
  v22 = [v7 objectAtIndexedSubscript:1];
  [v22 floatValue];
  v59 = v23;
  v24 = [v7 objectAtIndexedSubscript:2];
  [v24 floatValue];
  v25 = v63;
  DWORD1(v25) = v59;
  DWORD2(v25) = v26;
  *v5->_translation = v25;

  v6 = [v4 objectForKeyedSubscript:@"Rotation"];

  if (!v6)
  {
    goto LABEL_58;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_58;
  }

  v6 = v6;
  if ([v6 count] != 3)
  {

    goto LABEL_58;
  }

  v27 = [v6 objectAtIndexedSubscript:0];
  [v27 floatValue];
  v64 = v28;
  v29 = [v6 objectAtIndexedSubscript:1];
  [v29 floatValue];
  v60 = v30;
  v31 = [v6 objectAtIndexedSubscript:2];
  [v31 floatValue];
  v32 = v64;
  DWORD1(v32) = v60;
  DWORD2(v32) = v33;
  *v5->_rotation = v32;

  v34 = [v4 objectForKeyedSubscript:@"PixelSize"];
  if (v34)
  {
    v35 = [v4 objectForKeyedSubscript:@"GeometricDistortionCalibrationMaxRadius"];
    if (v35)
    {
      v36 = [v4 objectForKeyedSubscript:@"GeometricDistortionCenter"];
      if (v36)
      {
        v37 = [v4 objectForKeyedSubscript:@"ForwardGeometricDistortionPolynomial"];
        if (v37)
        {
          v38 = [v4 objectForKeyedSubscript:@"InverseGeometricDistortionPolynomial"];

          if (v38)
          {
            v5->_hasGeometricDistortionCalibration = 1;
            v17 = [v4 objectForKeyedSubscript:@"PixelSize"];

            if (v17)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_56;
              }

              [v17 floatValue];
              v5->_pixelSize = v39;
              v6 = [v4 objectForKeyedSubscript:@"GeometricDistortionCalibrationMaxRadius"];

              if (!v6)
              {
                goto LABEL_58;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_58;
              }

              v5->_geometricDistortionCalibrationMaxRadius = [v6 intValue];
              v17 = [v4 objectForKeyedSubscript:@"GeometricDistortionCenter"];

              if (v17)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v7 = v17;
                  if ([v7 count] != 2)
                  {
                    goto LABEL_54;
                  }

                  v40 = [v7 objectAtIndexedSubscript:0];
                  [v40 floatValue];
                  v65 = v41;
                  v42 = [v7 objectAtIndexedSubscript:1];
                  [v42 floatValue];
                  *v5->_geometricDistortionCenter = __PAIR64__(v43, v65);

                  v6 = [v4 objectForKeyedSubscript:@"ForwardGeometricDistortionPolynomial"];

                  if (v6)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v7 = v6;
                      if ([v7 count] != 8)
                      {
                        goto LABEL_54;
                      }

                      v44 = [MEMORY[0x277CBEB28] dataWithLength:32];
                      v45 = [(NSData *)v44 mutableBytes];
                      for (i = 0; i != 8; ++i)
                      {
                        v47 = [v7 objectAtIndexedSubscript:i];
                        [v47 floatValue];
                        *(v45 + 4 * i) = v48;
                      }

                      forwardGeometricDistortionPolynomial = v5->_forwardGeometricDistortionPolynomial;
                      v5->_forwardGeometricDistortionPolynomial = v44;

                      v6 = [v4 objectForKeyedSubscript:@"InverseGeometricDistortionPolynomial"];

                      if (v6)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v7 = v6;
                          if ([v7 count] == 8)
                          {
                            v50 = [MEMORY[0x277CBEB28] dataWithLength:32];
                            v51 = [(NSData *)v50 mutableBytes];
                            for (j = 0; j != 8; ++j)
                            {
                              v53 = [v7 objectAtIndexedSubscript:j];
                              [v53 floatValue];
                              *(v51 + 4 * j) = v54;
                            }

                            inverseGeometricDistortionPolynomial = v5->_inverseGeometricDistortionPolynomial;
                            v5->_inverseGeometricDistortionPolynomial = v50;

                            v6 = v7;
                            goto LABEL_46;
                          }

LABEL_54:

                          v57 = 0;
                          v6 = v7;
                          goto LABEL_53;
                        }
                      }
                    }
                  }

                  goto LABEL_58;
                }

LABEL_56:
                v57 = 0;
                v6 = v17;
                goto LABEL_53;
              }
            }

            goto LABEL_55;
          }

          goto LABEL_45;
        }
      }
    }
  }

LABEL_45:
  v5->_hasGeometricDistortionCalibration = 0;
LABEL_46:
  v56 = [v4 objectForKeyedSubscript:@"PortType"];

  if (v56)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_portType, v56);
    }
  }

  v6 = [v4 objectForKeyedSubscript:@"SensorID"];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5->_sensorID = [v6 intValue];
    }
  }

  v5->_modelState = 7;
  v57 = v5;
LABEL_53:

  return v57;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:*self->_sensorSize];
  v58[0] = v4;
  LODWORD(v5) = *&self->_sensorSize[4];
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v58[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
  [v3 setObject:v7 forKeyedSubscript:@"SensorSize"];

  v8 = [MEMORY[0x277CCABB0] numberWithFloat:*self->_principalPoint];
  v57[0] = v8;
  LODWORD(v9) = *&self->_principalPoint[4];
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v57[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  [v3 setObject:v11 forKeyedSubscript:@"PrincipalPoint"];

  *&v12 = self->_focalLength;
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  [v3 setObject:v13 forKeyedSubscript:@"FocalLength"];

  *&v14 = self->_fisheyeFactor;
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  [v3 setObject:v15 forKeyedSubscript:@"FisheyeFactor"];

  *&v16 = self->_zoomFactor;
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  [v3 setObject:v17 forKeyedSubscript:@"ZoomFactor"];

  LODWORD(v18) = *self->_translation;
  v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  v56[0] = v19;
  LODWORD(v20) = *&self->_translation[4];
  v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
  v56[1] = v21;
  LODWORD(v22) = *&self->_translation[8];
  v23 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
  v56[2] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:3];
  [v3 setObject:v24 forKeyedSubscript:@"Translation"];

  LODWORD(v25) = *self->_rotation;
  v26 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
  v55[0] = v26;
  LODWORD(v27) = *&self->_rotation[4];
  v28 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
  v55[1] = v28;
  LODWORD(v29) = *&self->_rotation[8];
  v30 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
  v55[2] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:3];
  [v3 setObject:v31 forKeyedSubscript:@"Rotation"];

  if (self->_hasGeometricDistortionCalibration)
  {
    *&v32 = self->_pixelSize;
    v33 = [MEMORY[0x277CCABB0] numberWithFloat:v32];
    [v3 setObject:v33 forKeyedSubscript:@"PixelSize"];

    v34 = [MEMORY[0x277CCABB0] numberWithInt:self->_geometricDistortionCalibrationMaxRadius];
    [v3 setObject:v34 forKeyedSubscript:@"GeometricDistortionCalibrationMaxRadius"];

    v35 = [MEMORY[0x277CCABB0] numberWithFloat:*self->_geometricDistortionCenter];
    v54[0] = v35;
    LODWORD(v36) = *&self->_geometricDistortionCenter[4];
    v37 = [MEMORY[0x277CCABB0] numberWithFloat:{v36, v35}];
    v54[1] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
    [v3 setObject:v38 forKeyedSubscript:@"GeometricDistortionCenter"];

    v39 = [(NSData *)self->_forwardGeometricDistortionPolynomial bytes];
    v40 = [MEMORY[0x277CBEB18] arrayWithCapacity:8];
    for (i = 0; i != 8; ++i)
    {
      LODWORD(v41) = v39[i];
      v43 = [MEMORY[0x277CCABB0] numberWithFloat:v41];
      [v40 setObject:v43 atIndexedSubscript:i];
    }

    [v3 setObject:v40 forKeyedSubscript:@"ForwardGeometricDistortionPolynomial"];
    v44 = [(NSData *)self->_inverseGeometricDistortionPolynomial bytes];
    v45 = [MEMORY[0x277CBEB18] arrayWithCapacity:8];
    for (j = 0; j != 8; ++j)
    {
      LODWORD(v46) = v44[j];
      v48 = [MEMORY[0x277CCABB0] numberWithFloat:v46];
      [v45 setObject:v48 atIndexedSubscript:j];
    }

    [v3 setObject:v45 forKeyedSubscript:@"InverseGeometricDistortionPolynomial"];
  }

  portType = self->_portType;
  if (portType)
  {
    v50 = [(NSString *)portType copy];
    [v3 setObject:v50 forKeyedSubscript:@"PortType"];
  }

  if (self->_sensorID)
  {
    v51 = [MEMORY[0x277CCABB0] numberWithInt:?];
    [v3 setObject:v51 forKeyedSubscript:@"SensorID"];
  }

  v52 = [v3 copy];

  return v52;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(VCCamera);
  *v4->_sensorSize = *self->_sensorSize;
  *v4->_principalPoint = *self->_principalPoint;
  v4->_focalLength = self->_focalLength;
  v4->_fisheyeFactor = self->_fisheyeFactor;
  v4->_zoomFactor = self->_zoomFactor;
  *v4->_rotation = *self->_rotation;
  *v4->_translation = *self->_translation;
  v4->_pixelSize = self->_pixelSize;
  v4->_geometricDistortionCalibrationMaxRadius = self->_geometricDistortionCalibrationMaxRadius;
  *v4->_geometricDistortionCenter = *self->_geometricDistortionCenter;
  objc_storeStrong(&v4->_forwardGeometricDistortionPolynomial, self->_forwardGeometricDistortionPolynomial);
  objc_storeStrong(&v4->_inverseGeometricDistortionPolynomial, self->_inverseGeometricDistortionPolynomial);
  objc_storeStrong(&v4->_portType, self->_portType);
  v4->_sensorID = self->_sensorID;
  v5 = *self->_anon_10;
  v6 = *&self->_anon_10[16];
  v7 = *&self->_anon_10[48];
  *&v4->_anon_10[32] = *&self->_anon_10[32];
  *&v4->_anon_10[48] = v7;
  *v4->_anon_10 = v5;
  *&v4->_anon_10[16] = v6;
  v8 = *&self->_anon_10[64];
  v9 = *&self->_anon_10[80];
  v10 = *&self->_anon_10[112];
  *&v4->_anon_10[96] = *&self->_anon_10[96];
  *&v4->_anon_10[112] = v10;
  *&v4->_anon_10[64] = v8;
  *&v4->_anon_10[80] = v9;
  v11 = *&self->_anon_10[128];
  v12 = *&self->_anon_10[144];
  v13 = *&self->_anon_10[176];
  *&v4->_anon_10[160] = *&self->_anon_10[160];
  *&v4->_anon_10[176] = v13;
  *&v4->_anon_10[128] = v11;
  *&v4->_anon_10[144] = v12;
  v14 = *&self->_anon_10[192];
  v15 = *&self->_anon_10[208];
  v16 = *&self->_anon_10[240];
  *&v4->_anon_10[224] = *&self->_anon_10[224];
  *&v4->_anon_10[240] = v16;
  *&v4->_anon_10[192] = v14;
  *&v4->_anon_10[208] = v15;
  v4->_modelState = self->_modelState;
  return v4;
}

- (void)_updateModel
{
  modelState = self->_modelState;
  if (!modelState)
  {
    return;
  }

  if ((modelState & 1) == 0)
  {
    if ((modelState & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    [(VCCamera *)self _updateModelExtrinsicProperties];
    if ((self->_modelState & 4) == 0)
    {
      return;
    }

    goto LABEL_8;
  }

  [(VCCamera *)self _updateModelIntrinsicProperties];
  modelState = self->_modelState;
  if ((modelState & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  if ((modelState & 4) == 0)
  {
    return;
  }

LABEL_8:

  [(VCCamera *)self _updateModelDistortionProperties];
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  [v3 appendFormat:@"VCCamera<%p>\n", self];
  [v3 appendFormat:@"  sensorSize     : %g x %g \n", COERCE_FLOAT(*self->_sensorSize), COERCE_FLOAT(HIDWORD(*self->_sensorSize))];
  [v3 appendFormat:@"  principalPoint : %g, %g \n", COERCE_FLOAT(*self->_principalPoint), COERCE_FLOAT(HIDWORD(*self->_principalPoint))];
  [v3 appendFormat:@"  focalLength    : %g      \n", self->_focalLength];
  [v3 appendFormat:@"  fisheyeFactor  : %g      \n", self->_fisheyeFactor];
  [v3 appendFormat:@"  zoomFactor     : %g      \n", self->_zoomFactor];
  [(VCCamera *)self fov];
  [v3 appendFormat:@"  FOV            : %g deg  \n", v4 / 3.14159265 * 180.0];
  [(VCCamera *)self zoomFOV];
  [v3 appendFormat:@"  zoomedFOV      : %g deg  \n", v5 / 3.14159265 * 180.0];
  [v3 appendFormat:@"\n"];
  [v3 appendFormat:@"  rotation       : % 6.3f % 6.3f % 6.3f \n", COERCE_FLOAT(*self->_rotation), COERCE_FLOAT(HIDWORD(*self->_rotation)), COERCE_FLOAT(*&self->_rotation[8])];
  [v3 appendFormat:@"  translation    : % 6.3f % 6.3f % 6.3f \n", COERCE_FLOAT(*self->_translation), COERCE_FLOAT(HIDWORD(*self->_translation)), COERCE_FLOAT(*&self->_translation[8])];
  [v3 appendFormat:@"\n"];
  if (self->_hasGeometricDistortionCalibration)
  {
    v6 = @"Yes";
  }

  else
  {
    v6 = @"No";
  }

  [v3 appendFormat:@"  geometricDistortionCalibration : %@\n", v6];
  [v3 appendFormat:@"\n"];
  [v3 appendFormat:@"  portType : %@   \n", self->_portType];
  [v3 appendFormat:@"  sensorID : 0x%x \n", self->_sensorID];

  return v3;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x277CCAB68] string];
  [v3 appendFormat:@"VCCamera<%p>\n", self];
  [v3 appendFormat:@"  sensorSize     : %g x %g \n", COERCE_FLOAT(*self->_sensorSize), COERCE_FLOAT(HIDWORD(*self->_sensorSize))];
  [v3 appendFormat:@"  principalPoint : %g, %g \n", COERCE_FLOAT(*self->_principalPoint), COERCE_FLOAT(HIDWORD(*self->_principalPoint))];
  [v3 appendFormat:@"  focalLength    : %g      \n", self->_focalLength];
  [v3 appendFormat:@"  fisheyeFactor  : %g      \n", self->_fisheyeFactor];
  [v3 appendFormat:@"  zoomFactor     : %g      \n", self->_zoomFactor];
  [(VCCamera *)self fov];
  [v3 appendFormat:@"  FOV            : %g deg  \n", v4 / 3.14159265 * 180.0];
  [(VCCamera *)self zoomFOV];
  [v3 appendFormat:@"  zoomedFOV      : %g deg  \n", v5 / 3.14159265 * 180.0];
  [v3 appendFormat:@"\n"];
  [v3 appendFormat:@"  rotation       : % 6.3f % 6.3f % 6.3f \n", COERCE_FLOAT(*self->_rotation), COERCE_FLOAT(HIDWORD(*self->_rotation)), COERCE_FLOAT(*&self->_rotation[8])];
  [v3 appendFormat:@"  translation    : % 6.3f % 6.3f % 6.3f \n", COERCE_FLOAT(*self->_translation), COERCE_FLOAT(HIDWORD(*self->_translation)), COERCE_FLOAT(*&self->_translation[8])];
  [v3 appendFormat:@"\n"];
  if (self->_hasGeometricDistortionCalibration)
  {
    v6 = @"Yes";
  }

  else
  {
    v6 = @"No";
  }

  [v3 appendFormat:@"  geometricDistortionCalibration : %@ \n", v6];
  [v3 appendFormat:@"\n"];
  if (self->_hasGeometricDistortionCalibration)
  {
    [v3 appendFormat:@"  pixelSize                               : %g          \n", self->_pixelSize];
    [v3 appendFormat:@"  geometricDistortionCalibrationMaxRadius : %d          \n", self->_geometricDistortionCalibrationMaxRadius];
    [v3 appendFormat:@"  geometricDistortionCalibrationCenter    : <%.2f %.2f> \n", COERCE_FLOAT(*self->_geometricDistortionCenter), COERCE_FLOAT(HIDWORD(*self->_geometricDistortionCenter))];
    [v3 appendFormat:@"  forwardGeometricDistortionPolynomial    : "];
    v7 = [(NSData *)self->_forwardGeometricDistortionPolynomial bytes];
    for (i = 0; i != 32; i += 4)
    {
      [v3 appendFormat:@"% 6.4f ", *&v7[i]];
    }

    [v3 appendFormat:@"\n"];
    [v3 appendFormat:@"  inverseGeometricDistortionPolynomial    : "];
    v9 = [(NSData *)self->_inverseGeometricDistortionPolynomial bytes];
    for (j = 0; j != 32; j += 4)
    {
      [v3 appendFormat:@"% 6.4f ", *&v9[j]];
    }

    [v3 appendFormat:@"\n"];
    [v3 appendFormat:@"\n"];
  }

  [v3 appendFormat:@"  portType : %@   \n", self->_portType];
  [v3 appendFormat:@"  sensorID : 0x%x \n", self->_sensorID];

  return v3;
}

@end