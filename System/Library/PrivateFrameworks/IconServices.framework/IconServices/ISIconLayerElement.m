@interface ISIconLayerElement
- (BOOL)hasEffectsForAppearance:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (ISIconLayerElement)initWithCoder:(id)a3;
- (ISIconLayerElement)initWithImages:(id)a3;
- (NSUUID)digest;
- (double)opacityForAppearance:(int64_t)a3;
- (id)cuiLayerImageForAppearance:(int64_t)a3 size:(CGSize)a4 scale:(double)a5 frame:(CGRect)a6;
- (id)description;
- (id)fillColorForAppearance:(int64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setFillColor:(id)a3 forAppearance:(int64_t)a4;
- (void)setOpacity:(double)a3 forAppearance:(int64_t)a4;
@end

@implementation ISIconLayerElement

- (ISIconLayerElement)initWithImages:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ISIconLayerElement;
  v6 = [(ISIconLayerElement *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_images, a3);
    v8 = [objc_alloc(MEMORY[0x1E69A8990]) initWithImages:v5];
    imageBag = v7->_imageBag;
    v7->_imageBag = v8;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  images = self->_images;
  v5 = a3;
  [v5 encodeObject:images forKey:@"images"];
  [v5 encodeObject:self->_opacities forKey:@"opacities"];
  [v5 encodeObject:self->_effects forKey:@"effects"];
  [v5 encodeObject:self->_fillColors forKey:@"fillColors"];
}

- (ISIconLayerElement)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"images"];

  v9 = [(ISIconLayerElement *)self initWithImages:v8];
  if (v9)
  {
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"opacities"];
    opacities = v9->_opacities;
    v9->_opacities = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"effects"];
    effects = v9->_effects;
    v9->_effects = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [v20 setWithObjects:{v21, v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"fillColors"];
    fillColors = v9->_fillColors;
    v9->_fillColors = v24;
  }

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

- (BOOL)hasEffectsForAppearance:(int64_t)a3
{
  v3 = [(NSMutableDictionary *)self->_effects _IS_layerObjectForKey:a3];
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

- (void)setFillColor:(id)a3 forAppearance:(int64_t)a4
{
  v10 = a3;
  fillColors = self->_fillColors;
  if (!fillColors)
  {
    v7 = objc_opt_new();
    v8 = self->_fillColors;
    self->_fillColors = v7;

    fillColors = self->_fillColors;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableDictionary *)fillColors setObject:v10 forKey:v9];
}

- (id)fillColorForAppearance:(int64_t)a3
{
  v3 = [(NSMutableDictionary *)self->_fillColors _IS_layerObjectForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = [(ISIconLayerElement *)self images];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __33__ISIconLayerElement_description__block_invoke;
  v15[3] = &unk_1E77C6C90;
  v16 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v15];

  v6 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = ISIconLayerElement;
  v7 = [(ISIconLayerElement *)&v14 description];
  v8 = [(ISIconLayerElement *)self opacities];
  v9 = [(ISIconLayerElement *)self effects];
  v10 = [(ISIconLayerElement *)self fillColors];
  v11 = [v5 componentsJoinedByString:{@", "}];
  v12 = [v6 stringWithFormat:@"%@ O:%@, E:%@, C:%@ Images: %@", v7, v8, v9, v10, v11];

  return v12;
}

void __33__ISIconLayerElement_description__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E696AEC0];
  v5 = [a2 CGImage];
  v6 = @"valid";
  if (!v5)
  {
    v6 = 0;
  }

  v7 = [v4 stringWithFormat:@"<IFImage 0x%lx> CGImage:%@", a2, v6];
  [v3 addObject:v7];
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
      v5 = [(ISIconLayerElement *)self digest];
      v6 = [(ISIconLayerElement *)v4 digest];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSUUID)digest
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = 0x1E696A000uLL;
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(ISIconLayerElement *)self opacities];
  v6 = [(ISIconLayerElement *)self effects];
  v7 = [v4 stringWithFormat:@"opacities: %@, effects: %@", v5, v6];

  v43 = v7;
  v8 = [MEMORY[0x1E696AFB0] _IF_UUIDWithString:v7];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v46 = self;
  obj = [(ISIconLayerElement *)self fillColors];
  v47 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v47)
  {
    v45 = *v49;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v49 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v48 + 1) + 8 * v9);
        v12 = MEMORY[0x1E696AFB0];
        v13 = *(v3 + 3776);
        v14 = [(ISIconLayerElement *)v46 fillColors];
        [v14 objectForKeyedSubscript:v11];
        v16 = v15 = v3;
        v17 = [v16 digest];
        v18 = [v17 UUIDString];
        v19 = [v13 stringWithFormat:@"%@_%@", v11, v18];
        v20 = [v12 _IF_UUIDWithString:v19];

        v3 = v15;
        v21 = MEMORY[0x1E696AFB0];
        v53[0] = v10;
        v53[1] = v20;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
        v8 = [v21 _IF_UUIDByXORingUUIDs:v22];

        ++v9;
        v10 = v8;
      }

      while (v47 != v9);
      v47 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v47);
  }

  v23 = [(ISIconLayerElement *)v46 images];
  v24 = [v23 count];

  if (v24)
  {
    v25 = 0;
    do
    {
      v26 = [(ISIconLayerElement *)v46 images];
      v27 = [v26 objectAtIndexedSubscript:v25];

      v28 = MEMORY[0x1E696AFB0];
      v29 = [v27 data];
      v30 = [v28 _IF_UUIDWithData:v29];

      v31 = MEMORY[0x1E696AFB0];
      v32 = *(v3 + 3776);
      v33 = [v30 UUIDString];
      v34 = [v32 stringWithFormat:@"%@_%d", v33, v25];
      v35 = [v31 _IF_UUIDWithString:v34];

      v36 = MEMORY[0x1E696AFB0];
      v52[0] = v8;
      v52[1] = v35;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
      v38 = [v36 _IF_UUIDByXORingUUIDs:v37];

      ++v25;
      v39 = [(ISIconLayerElement *)v46 images];
      v40 = [v39 count];

      v8 = v38;
    }

    while (v40 > v25);
  }

  else
  {
    v38 = v8;
  }

  v41 = *MEMORY[0x1E69E9840];

  return v38;
}

- (unint64_t)hash
{
  v2 = [(ISIconLayerElement *)self digest];
  v3 = [v2 hash];

  return v3;
}

- (id)cuiLayerImageForAppearance:(int64_t)a3 size:(CGSize)a4 scale:(double)a5 frame:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v11 = a4.height;
  v12 = a4.width;
  v15 = [(ISIconLayerElement *)self imageBag];
  v16 = [v15 imageForSize:v12 scale:{v11, a5}];

  if ([v16 CGImage])
  {
    v17 = objc_alloc_init(MEMORY[0x1E69993D8]);
    [v17 setImage:{objc_msgSend(v16, "CGImage")}];
    [v17 setFrame:{x, y, width, height}];
    [(ISIconLayerElement *)self opacityForAppearance:a3];
    [v17 setOpacity:?];
    [v17 setHasLightingEffects:{-[ISIconLayerElement hasEffectsForAppearance:](self, "hasEffectsForAppearance:", a3)}];
    v18 = [(ISIconLayerElement *)self fillColorForAppearance:a3];
    [v17 setColor:{objc_msgSend(v18, "cgColor")}];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end