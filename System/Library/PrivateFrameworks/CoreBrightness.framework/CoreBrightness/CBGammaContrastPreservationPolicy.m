@interface CBGammaContrastPreservationPolicy
- (CBGammaContrastPreservationPolicy)initWithParams:(id)a3;
- (float)cappedRampStartLux:(float)a3;
- (float)cappedRampTargetLux:(float)a3;
- (float)strengthForNits:(float)a3 andLux:(float)a4;
- (void)dealloc;
@end

@implementation CBGammaContrastPreservationPolicy

- (CBGammaContrastPreservationPolicy)initWithParams:(id)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = CBGammaContrastPreservationPolicy;
  v8 = [(CBGammaContrastPreservationPolicy *)&v5 init];
  v3 = MEMORY[0x1E69E5928](v6);
  v8->_params = v3;
  return v8;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  *&v2 = MEMORY[0x1E69E5920](self->_params).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBGammaContrastPreservationPolicy;
  [(CBGammaContrastPreservationPolicy *)&v3 dealloc];
}

- (float)cappedRampStartLux:(float)a3
{
  [(CBGammaContrastPreservationParams *)self->_params Lmin];
  v6 = v3;
  [(CBGammaContrastPreservationParams *)self->_params Lmax];
  return clamp(a3, v6, v4);
}

- (float)cappedRampTargetLux:(float)a3
{
  [(CBGammaContrastPreservationParams *)self->_params Lmin];
  v6 = v3;
  [(CBGammaContrastPreservationParams *)self->_params Lmax];
  return clamp(a3, v6, v4);
}

- (float)strengthForNits:(float)a3 andLux:(float)a4
{
  [(CBGammaContrastPreservationParams *)self->_params referenceWhiteBrightness];
  v36 = v4;
  [(CBGammaContrastPreservationParams *)self->_params Bmin];
  v24 = v5;
  [(CBGammaContrastPreservationParams *)self->_params Bmax];
  v35 = clamp(a3, v24, v6);
  [(CBGammaContrastPreservationParams *)self->_params ASb];
  v34 = v7;
  [(CBGammaContrastPreservationParams *)self->_params Kb];
  v33 = v8;
  [(CBGammaContrastPreservationParams *)self->_params Kl];
  v32 = v9;
  [(CBGammaContrastPreservationParams *)self->_params ambientFactor];
  v11 = (a4 * v10) / 3.14159265;
  v26 = v11;
  [(CBGammaContrastPreservationParams *)self->_params Lmin];
  v13 = v12 / 3.14159265;
  v25 = v13;
  [(CBGammaContrastPreservationParams *)self->_params Lmax];
  v15 = v14 / 3.14159265;
  v31 = clamp(v26, v25, v15);
  v16 = std::__math::log2[abi:de200100](v35 / v36);
  v30 = v36 * std::__math::pow[abi:de200100](v34, v16);
  v17 = std::__math::log2[abi:de200100](v30 / v36);
  v29 = std::__math::pow[abi:de200100](v33, v17);
  v18 = std::__math::log2[abi:de200100](v31 / 5.0);
  v28 = v29 * std::__math::pow[abi:de200100](v32, v18);
  if (v28 > 1.0)
  {
    [(CBGammaContrastPreservationParams *)self->_params gcpFactorHigh];
  }

  else
  {
    [(CBGammaContrastPreservationParams *)self->_params gcpFactorLow];
  }

  v27 = 1.0 - (v19 * (1.0 - v28));
  [(CBGammaContrastPreservationParams *)self->_params gammaMin];
  v23 = v20;
  [(CBGammaContrastPreservationParams *)self->_params gammaMax];
  return clamp(v27, v23, v21);
}

@end