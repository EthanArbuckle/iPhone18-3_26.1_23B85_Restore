@interface ISIconLayerGroup
- (BOOL)hasOverlappingChildSpecularsCombinedForAppearance:(int64_t)a3;
- (BOOL)hasSpecularForAppearance:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (ISIconLayerGroup)initWithCoder:(id)a3;
- (ISIconLayerGroup)initWithLayers:(id)a3;
- (double)blurForAppearance:(int64_t)a3;
- (double)opacityForAppearance:(int64_t)a3;
- (double)shadowForAppearance:(int64_t)a3;
- (double)translucencyForAppearance:(int64_t)a3;
- (id)cuiGroupForAppearance:(int64_t)a3;
- (id)description;
- (id)digest;
- (int64_t)_IS_cuiShadowStyleFromStyle:(int64_t)a3;
- (int64_t)shadowStyleForAppearance:(int64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setBlur:(double)a3 forAppearance:(int64_t)a4;
- (void)setOpacity:(double)a3 forAppearance:(int64_t)a4;
- (void)setShadow:(double)a3 forAppearance:(int64_t)a4;
- (void)setShadowStyle:(int64_t)a3 forAppearance:(int64_t)a4;
- (void)setTranslucency:(double)a3 forAppearance:(int64_t)a4;
@end

@implementation ISIconLayerGroup

- (ISIconLayerGroup)initWithLayers:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ISIconLayerGroup;
  v6 = [(ISIconLayerGroup *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_layers, a3);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  layers = self->_layers;
  v5 = a3;
  [v5 encodeObject:layers forKey:@"layers"];
  [v5 encodeObject:self->_opacities forKey:@"opacities"];
  [v5 encodeObject:self->_speculars forKey:@"speculars"];
  [v5 encodeObject:self->_combineSpeculars forKey:@"combineSpeculars"];
  [v5 encodeObject:self->_blurs forKey:@"blurs"];
  [v5 encodeObject:self->_translucencies forKey:@"translucencies"];
  [v5 encodeObject:self->_shadowStyles forKey:@"shadowStyles"];
  [v5 encodeObject:self->_shadows forKey:@"shadows"];
}

- (ISIconLayerGroup)initWithCoder:(id)a3
{
  v54[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v54[0] = objc_opt_class();
  v54[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
  v7 = [v5 setWithArray:v6];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"layers"];

  v9 = [(ISIconLayerGroup *)self initWithLayers:v8];
  if (v9)
  {
    v10 = MEMORY[0x1E695DFD8];
    v53[0] = objc_opt_class();
    v53[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"opacities"];
    opacities = v9->_opacities;
    v9->_opacities = v13;

    v15 = MEMORY[0x1E695DFD8];
    v52[0] = objc_opt_class();
    v52[1] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
    v17 = [v15 setWithArray:v16];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"speculars"];
    speculars = v9->_speculars;
    v9->_speculars = v18;

    v20 = MEMORY[0x1E695DFD8];
    v51[0] = objc_opt_class();
    v51[1] = objc_opt_class();
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
    v22 = [v20 setWithArray:v21];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"combineSpeculars"];
    combineSpeculars = v9->_combineSpeculars;
    v9->_combineSpeculars = v23;

    v25 = MEMORY[0x1E695DFD8];
    v50[0] = objc_opt_class();
    v50[1] = objc_opt_class();
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
    v27 = [v25 setWithArray:v26];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"blurs"];
    blurs = v9->_blurs;
    v9->_blurs = v28;

    v30 = MEMORY[0x1E695DFD8];
    v49[0] = objc_opt_class();
    v49[1] = objc_opt_class();
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
    v32 = [v30 setWithArray:v31];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"translucencies"];
    translucencies = v9->_translucencies;
    v9->_translucencies = v33;

    v35 = MEMORY[0x1E695DFD8];
    v48[0] = objc_opt_class();
    v48[1] = objc_opt_class();
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
    v37 = [v35 setWithArray:v36];
    v38 = [v4 decodeObjectOfClasses:v37 forKey:@"shadowStyles"];
    shadowStyles = v9->_shadowStyles;
    v9->_shadowStyles = v38;

    v40 = MEMORY[0x1E695DFD8];
    v47[0] = objc_opt_class();
    v47[1] = objc_opt_class();
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
    v42 = [v40 setWithArray:v41];
    v43 = [v4 decodeObjectOfClasses:v42 forKey:@"shadows"];
    shadows = v9->_shadows;
    v9->_shadows = v43;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)setOpacity:(double)a3 forAppearance:(int64_t)a4
{
  opacities = self->_opacities;
  if (!opacities)
  {
    v8 = objc_opt_new();
    v9 = self->_opacities;
    self->_opacities = v8;

    opacities = self->_opacities;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableDictionary *)opacities setObject:v11 forKey:v10];
}

- (double)opacityForAppearance:(int64_t)a3
{
  v3 = [(NSMutableDictionary *)self->_opacities _IS_layerObjectForKey:a3];
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

- (BOOL)hasSpecularForAppearance:(int64_t)a3
{
  v3 = [(NSMutableDictionary *)self->_speculars _IS_layerObjectForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasOverlappingChildSpecularsCombinedForAppearance:(int64_t)a3
{
  v3 = [(NSMutableDictionary *)self->_combineSpeculars _IS_layerObjectForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setBlur:(double)a3 forAppearance:(int64_t)a4
{
  blurs = self->_blurs;
  if (!blurs)
  {
    v8 = objc_opt_new();
    v9 = self->_blurs;
    self->_blurs = v8;

    blurs = self->_blurs;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableDictionary *)blurs setObject:v11 forKey:v10];
}

- (double)blurForAppearance:(int64_t)a3
{
  v3 = [(NSMutableDictionary *)self->_blurs _IS_layerObjectForKey:a3];
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

- (void)setTranslucency:(double)a3 forAppearance:(int64_t)a4
{
  translucencies = self->_translucencies;
  if (!translucencies)
  {
    v8 = objc_opt_new();
    v9 = self->_translucencies;
    self->_translucencies = v8;

    translucencies = self->_translucencies;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableDictionary *)translucencies setObject:v11 forKey:v10];
}

- (double)translucencyForAppearance:(int64_t)a3
{
  v3 = [(NSMutableDictionary *)self->_translucencies _IS_layerObjectForKey:a3];
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

- (void)setShadowStyle:(int64_t)a3 forAppearance:(int64_t)a4
{
  shadowStyles = self->_shadowStyles;
  if (!shadowStyles)
  {
    v8 = objc_opt_new();
    v9 = self->_shadowStyles;
    self->_shadowStyles = v8;

    shadowStyles = self->_shadowStyles;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableDictionary *)shadowStyles setObject:v11 forKey:v10];
}

- (int64_t)shadowStyleForAppearance:(int64_t)a3
{
  v3 = [(NSMutableDictionary *)self->_shadowStyles _IS_layerObjectForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setShadow:(double)a3 forAppearance:(int64_t)a4
{
  shadows = self->_shadows;
  if (!shadows)
  {
    v8 = objc_opt_new();
    v9 = self->_shadows;
    self->_shadows = v8;

    shadows = self->_shadows;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableDictionary *)shadows setObject:v11 forKey:v10];
}

- (double)shadowForAppearance:(int64_t)a3
{
  v3 = [(NSMutableDictionary *)self->_shadows _IS_layerObjectForKey:a3];
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
  v5 = [(ISIconLayerGroup *)self opacities];
  v6 = [(ISIconLayerGroup *)self speculars];
  v7 = [(ISIconLayerGroup *)self combineSpeculars];
  v8 = [(ISIconLayerGroup *)self blurs];
  v9 = [(ISIconLayerGroup *)self translucencies];
  v10 = [(ISIconLayerGroup *)self shadowStyles];
  v11 = [(ISIconLayerGroup *)self shadows];
  v12 = [(ISIconLayerGroup *)self layers];
  v13 = [v3 stringWithFormat:@"%@ O:%@, S:%@, CS:%@ B:%@ T:%@ SS:%@ S:%@ ElementLayers: %@", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(ISIconLayerGroup *)self digest];
      v6 = [(ISIconLayerGroup *)v4 digest];
      v7 = [v5 isEqual:v6];
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
  v4 = [(ISIconLayerGroup *)self opacities];
  v5 = [(ISIconLayerGroup *)self speculars];
  v6 = [(ISIconLayerGroup *)self combineSpeculars];
  v7 = [(ISIconLayerGroup *)self blurs];
  v8 = [(ISIconLayerGroup *)self translucencies];
  v9 = [(ISIconLayerGroup *)self shadowStyles];
  v10 = [(ISIconLayerGroup *)self shadows];
  v11 = [v3 stringWithFormat:@"O:%@, S:%@, CS:%@ B:%@ T:%@ SS:%@ S:%@", v4, v5, v6, v7, v8, v9, v10];

  v30 = v11;
  v12 = [MEMORY[0x1E696AFB0] _IF_UUIDWithString:v11];
  v13 = [(ISIconLayerGroup *)self layers];
  v14 = [v13 count];

  if (v14)
  {
    v15 = 0;
    do
    {
      v16 = [(ISIconLayerGroup *)self layers];
      v17 = [v16 objectAtIndexedSubscript:v15];

      v18 = MEMORY[0x1E696AFB0];
      v19 = MEMORY[0x1E696AEC0];
      v20 = [v17 digest];
      v21 = [v19 stringWithFormat:@"%@_%d", v20, v15];
      v22 = [v18 _IF_UUIDWithString:v21];

      v23 = MEMORY[0x1E696AFB0];
      v31[0] = v12;
      v31[1] = v22;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
      v25 = [v23 _IF_UUIDByXORingUUIDs:v24];

      ++v15;
      v26 = [(ISIconLayerGroup *)self layers];
      v27 = [v26 count];

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
  v2 = [(ISIconLayerGroup *)self digest];
  v3 = [v2 hash];

  return v3;
}

- (int64_t)_IS_cuiShadowStyleFromStyle:(int64_t)a3
{
  if (a3 < 3)
  {
    return qword_1A7825330[a3];
  }

  v4 = _ISDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ISIconLayerGroup _IS_cuiShadowStyleFromStyle:v4];
  }

  return 0;
}

- (id)cuiGroupForAppearance:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E69993B8]);
  [(ISIconLayerGroup *)self opacityForAppearance:a3];
  [v5 setOpacity:?];
  [v5 setHasSpecular:{-[ISIconLayerGroup hasSpecularForAppearance:](self, "hasSpecularForAppearance:", a3)}];
  [v5 setGathersSpecularByElement:{-[ISIconLayerGroup hasOverlappingChildSpecularsCombinedForAppearance:](self, "hasOverlappingChildSpecularsCombinedForAppearance:", a3)}];
  [(ISIconLayerGroup *)self blurForAppearance:a3];
  [v5 setBlurStrength:?];
  [(ISIconLayerGroup *)self translucencyForAppearance:a3];
  [v5 setTranslucency:?];
  [v5 setShadowStyle:{-[ISIconLayerGroup _IS_cuiShadowStyleFromStyle:](self, "_IS_cuiShadowStyleFromStyle:", -[ISIconLayerGroup shadowStyleForAppearance:](self, "shadowStyleForAppearance:", a3))}];
  [(ISIconLayerGroup *)self shadowForAppearance:a3];
  [v5 setShadowOpacity:?];

  return v5;
}

@end