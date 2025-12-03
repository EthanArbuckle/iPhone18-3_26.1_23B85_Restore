@interface ISIconLayerGroup
- (BOOL)hasOverlappingChildSpecularsCombinedForAppearance:(int64_t)appearance;
- (BOOL)hasSpecularForAppearance:(int64_t)appearance;
- (BOOL)isEqual:(id)equal;
- (ISIconLayerGroup)initWithCoder:(id)coder;
- (ISIconLayerGroup)initWithLayers:(id)layers;
- (double)blurForAppearance:(int64_t)appearance;
- (double)opacityForAppearance:(int64_t)appearance;
- (double)shadowForAppearance:(int64_t)appearance;
- (double)translucencyForAppearance:(int64_t)appearance;
- (id)cuiGroupForAppearance:(int64_t)appearance;
- (id)description;
- (id)digest;
- (int64_t)_IS_cuiShadowStyleFromStyle:(int64_t)style;
- (int64_t)shadowStyleForAppearance:(int64_t)appearance;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setBlur:(double)blur forAppearance:(int64_t)appearance;
- (void)setOpacity:(double)opacity forAppearance:(int64_t)appearance;
- (void)setShadow:(double)shadow forAppearance:(int64_t)appearance;
- (void)setShadowStyle:(int64_t)style forAppearance:(int64_t)appearance;
- (void)setTranslucency:(double)translucency forAppearance:(int64_t)appearance;
@end

@implementation ISIconLayerGroup

- (ISIconLayerGroup)initWithLayers:(id)layers
{
  layersCopy = layers;
  v9.receiver = self;
  v9.super_class = ISIconLayerGroup;
  v6 = [(ISIconLayerGroup *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_layers, layers);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  layers = self->_layers;
  coderCopy = coder;
  [coderCopy encodeObject:layers forKey:@"layers"];
  [coderCopy encodeObject:self->_opacities forKey:@"opacities"];
  [coderCopy encodeObject:self->_speculars forKey:@"speculars"];
  [coderCopy encodeObject:self->_combineSpeculars forKey:@"combineSpeculars"];
  [coderCopy encodeObject:self->_blurs forKey:@"blurs"];
  [coderCopy encodeObject:self->_translucencies forKey:@"translucencies"];
  [coderCopy encodeObject:self->_shadowStyles forKey:@"shadowStyles"];
  [coderCopy encodeObject:self->_shadows forKey:@"shadows"];
}

- (ISIconLayerGroup)initWithCoder:(id)coder
{
  v54[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v54[0] = objc_opt_class();
  v54[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
  v7 = [v5 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"layers"];

  v9 = [(ISIconLayerGroup *)self initWithLayers:v8];
  if (v9)
  {
    v10 = MEMORY[0x1E695DFD8];
    v53[0] = objc_opt_class();
    v53[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"opacities"];
    opacities = v9->_opacities;
    v9->_opacities = v13;

    v15 = MEMORY[0x1E695DFD8];
    v52[0] = objc_opt_class();
    v52[1] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
    v17 = [v15 setWithArray:v16];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"speculars"];
    speculars = v9->_speculars;
    v9->_speculars = v18;

    v20 = MEMORY[0x1E695DFD8];
    v51[0] = objc_opt_class();
    v51[1] = objc_opt_class();
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
    v22 = [v20 setWithArray:v21];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"combineSpeculars"];
    combineSpeculars = v9->_combineSpeculars;
    v9->_combineSpeculars = v23;

    v25 = MEMORY[0x1E695DFD8];
    v50[0] = objc_opt_class();
    v50[1] = objc_opt_class();
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
    v27 = [v25 setWithArray:v26];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"blurs"];
    blurs = v9->_blurs;
    v9->_blurs = v28;

    v30 = MEMORY[0x1E695DFD8];
    v49[0] = objc_opt_class();
    v49[1] = objc_opt_class();
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
    v32 = [v30 setWithArray:v31];
    v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"translucencies"];
    translucencies = v9->_translucencies;
    v9->_translucencies = v33;

    v35 = MEMORY[0x1E695DFD8];
    v48[0] = objc_opt_class();
    v48[1] = objc_opt_class();
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
    v37 = [v35 setWithArray:v36];
    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"shadowStyles"];
    shadowStyles = v9->_shadowStyles;
    v9->_shadowStyles = v38;

    v40 = MEMORY[0x1E695DFD8];
    v47[0] = objc_opt_class();
    v47[1] = objc_opt_class();
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
    v42 = [v40 setWithArray:v41];
    v43 = [coderCopy decodeObjectOfClasses:v42 forKey:@"shadows"];
    shadows = v9->_shadows;
    v9->_shadows = v43;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)setOpacity:(double)opacity forAppearance:(int64_t)appearance
{
  opacities = self->_opacities;
  if (!opacities)
  {
    v8 = objc_opt_new();
    v9 = self->_opacities;
    self->_opacities = v8;

    opacities = self->_opacities;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:opacity];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:appearance];
  [(NSMutableDictionary *)opacities setObject:v11 forKey:v10];
}

- (double)opacityForAppearance:(int64_t)appearance
{
  v3 = [(NSMutableDictionary *)self->_opacities _IS_layerObjectForKey:appearance];
  v4 = v3;
  if (v3)
  {
    [v3 floatValue];
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  return v6;
}

- (BOOL)hasSpecularForAppearance:(int64_t)appearance
{
  v3 = [(NSMutableDictionary *)self->_speculars _IS_layerObjectForKey:appearance];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)hasOverlappingChildSpecularsCombinedForAppearance:(int64_t)appearance
{
  v3 = [(NSMutableDictionary *)self->_combineSpeculars _IS_layerObjectForKey:appearance];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setBlur:(double)blur forAppearance:(int64_t)appearance
{
  blurs = self->_blurs;
  if (!blurs)
  {
    v8 = objc_opt_new();
    v9 = self->_blurs;
    self->_blurs = v8;

    blurs = self->_blurs;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:blur];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:appearance];
  [(NSMutableDictionary *)blurs setObject:v11 forKey:v10];
}

- (double)blurForAppearance:(int64_t)appearance
{
  v3 = [(NSMutableDictionary *)self->_blurs _IS_layerObjectForKey:appearance];
  v4 = v3;
  if (v3)
  {
    [v3 floatValue];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (void)setTranslucency:(double)translucency forAppearance:(int64_t)appearance
{
  translucencies = self->_translucencies;
  if (!translucencies)
  {
    v8 = objc_opt_new();
    v9 = self->_translucencies;
    self->_translucencies = v8;

    translucencies = self->_translucencies;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:translucency];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:appearance];
  [(NSMutableDictionary *)translucencies setObject:v11 forKey:v10];
}

- (double)translucencyForAppearance:(int64_t)appearance
{
  v3 = [(NSMutableDictionary *)self->_translucencies _IS_layerObjectForKey:appearance];
  v4 = v3;
  if (v3)
  {
    [v3 floatValue];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (void)setShadowStyle:(int64_t)style forAppearance:(int64_t)appearance
{
  shadowStyles = self->_shadowStyles;
  if (!shadowStyles)
  {
    v8 = objc_opt_new();
    v9 = self->_shadowStyles;
    self->_shadowStyles = v8;

    shadowStyles = self->_shadowStyles;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:appearance];
  [(NSMutableDictionary *)shadowStyles setObject:v11 forKey:v10];
}

- (int64_t)shadowStyleForAppearance:(int64_t)appearance
{
  v3 = [(NSMutableDictionary *)self->_shadowStyles _IS_layerObjectForKey:appearance];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)setShadow:(double)shadow forAppearance:(int64_t)appearance
{
  shadows = self->_shadows;
  if (!shadows)
  {
    v8 = objc_opt_new();
    v9 = self->_shadows;
    self->_shadows = v8;

    shadows = self->_shadows;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:shadow];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:appearance];
  [(NSMutableDictionary *)shadows setObject:v11 forKey:v10];
}

- (double)shadowForAppearance:(int64_t)appearance
{
  v3 = [(NSMutableDictionary *)self->_shadows _IS_layerObjectForKey:appearance];
  v4 = v3;
  if (v3)
  {
    [v3 floatValue];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = ISIconLayerGroup;
  v4 = [(ISIconLayerGroup *)&v15 description];
  opacities = [(ISIconLayerGroup *)self opacities];
  speculars = [(ISIconLayerGroup *)self speculars];
  combineSpeculars = [(ISIconLayerGroup *)self combineSpeculars];
  blurs = [(ISIconLayerGroup *)self blurs];
  translucencies = [(ISIconLayerGroup *)self translucencies];
  shadowStyles = [(ISIconLayerGroup *)self shadowStyles];
  shadows = [(ISIconLayerGroup *)self shadows];
  layers = [(ISIconLayerGroup *)self layers];
  v13 = [v3 stringWithFormat:@"%@ O:%@, S:%@, CS:%@ B:%@ T:%@ SS:%@ S:%@ ElementLayers: %@", v4, opacities, speculars, combineSpeculars, blurs, translucencies, shadowStyles, shadows, layers];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      digest = [(ISIconLayerGroup *)self digest];
      digest2 = [(ISIconLayerGroup *)equalCopy digest];
      v7 = [digest isEqual:digest2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)digest
{
  v31[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  opacities = [(ISIconLayerGroup *)self opacities];
  speculars = [(ISIconLayerGroup *)self speculars];
  combineSpeculars = [(ISIconLayerGroup *)self combineSpeculars];
  blurs = [(ISIconLayerGroup *)self blurs];
  translucencies = [(ISIconLayerGroup *)self translucencies];
  shadowStyles = [(ISIconLayerGroup *)self shadowStyles];
  shadows = [(ISIconLayerGroup *)self shadows];
  v11 = [v3 stringWithFormat:@"O:%@, S:%@, CS:%@ B:%@ T:%@ SS:%@ S:%@", opacities, speculars, combineSpeculars, blurs, translucencies, shadowStyles, shadows];

  v30 = v11;
  v12 = [MEMORY[0x1E696AFB0] _IF_UUIDWithString:v11];
  layers = [(ISIconLayerGroup *)self layers];
  v14 = [layers count];

  if (v14)
  {
    v15 = 0;
    do
    {
      layers2 = [(ISIconLayerGroup *)self layers];
      v17 = [layers2 objectAtIndexedSubscript:v15];

      v18 = MEMORY[0x1E696AFB0];
      v19 = MEMORY[0x1E696AEC0];
      digest = [v17 digest];
      v21 = [v19 stringWithFormat:@"%@_%d", digest, v15];
      v22 = [v18 _IF_UUIDWithString:v21];

      v23 = MEMORY[0x1E696AFB0];
      v31[0] = v12;
      v31[1] = v22;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
      v25 = [v23 _IF_UUIDByXORingUUIDs:v24];

      ++v15;
      layers3 = [(ISIconLayerGroup *)self layers];
      v27 = [layers3 count];

      v12 = v25;
    }

    while (v27 > v15);
  }

  else
  {
    v25 = v12;
  }

  v28 = *MEMORY[0x1E69E9840];

  return v25;
}

- (unint64_t)hash
{
  digest = [(ISIconLayerGroup *)self digest];
  v3 = [digest hash];

  return v3;
}

- (int64_t)_IS_cuiShadowStyleFromStyle:(int64_t)style
{
  if (style < 3)
  {
    return qword_1A7825330[style];
  }

  v4 = _ISDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ISIconLayerGroup _IS_cuiShadowStyleFromStyle:v4];
  }

  return 0;
}

- (id)cuiGroupForAppearance:(int64_t)appearance
{
  v5 = objc_alloc_init(MEMORY[0x1E69993B8]);
  [(ISIconLayerGroup *)self opacityForAppearance:appearance];
  [v5 setOpacity:?];
  [v5 setHasSpecular:{-[ISIconLayerGroup hasSpecularForAppearance:](self, "hasSpecularForAppearance:", appearance)}];
  [v5 setGathersSpecularByElement:{-[ISIconLayerGroup hasOverlappingChildSpecularsCombinedForAppearance:](self, "hasOverlappingChildSpecularsCombinedForAppearance:", appearance)}];
  [(ISIconLayerGroup *)self blurForAppearance:appearance];
  [v5 setBlurStrength:?];
  [(ISIconLayerGroup *)self translucencyForAppearance:appearance];
  [v5 setTranslucency:?];
  [v5 setShadowStyle:{-[ISIconLayerGroup _IS_cuiShadowStyleFromStyle:](self, "_IS_cuiShadowStyleFromStyle:", -[ISIconLayerGroup shadowStyleForAppearance:](self, "shadowStyleForAppearance:", appearance))}];
  [(ISIconLayerGroup *)self shadowForAppearance:appearance];
  [v5 setShadowOpacity:?];

  return v5;
}

@end