@interface ISIconLayerElement
- (BOOL)hasEffectsForAppearance:(int64_t)appearance;
- (BOOL)isEqual:(id)equal;
- (ISIconLayerElement)initWithCoder:(id)coder;
- (ISIconLayerElement)initWithImages:(id)images;
- (NSUUID)digest;
- (double)opacityForAppearance:(int64_t)appearance;
- (id)cuiLayerImageForAppearance:(int64_t)appearance size:(CGSize)size scale:(double)scale frame:(CGRect)frame;
- (id)description;
- (id)fillColorForAppearance:(int64_t)appearance;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setFillColor:(id)color forAppearance:(int64_t)appearance;
- (void)setOpacity:(double)opacity forAppearance:(int64_t)appearance;
@end

@implementation ISIconLayerElement

- (ISIconLayerElement)initWithImages:(id)images
{
  imagesCopy = images;
  v11.receiver = self;
  v11.super_class = ISIconLayerElement;
  v6 = [(ISIconLayerElement *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_images, images);
    v8 = [objc_alloc(MEMORY[0x1E69A8990]) initWithImages:imagesCopy];
    imageBag = v7->_imageBag;
    v7->_imageBag = v8;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  images = self->_images;
  coderCopy = coder;
  [coderCopy encodeObject:images forKey:@"images"];
  [coderCopy encodeObject:self->_opacities forKey:@"opacities"];
  [coderCopy encodeObject:self->_effects forKey:@"effects"];
  [coderCopy encodeObject:self->_fillColors forKey:@"fillColors"];
}

- (ISIconLayerElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"images"];

  v9 = [(ISIconLayerElement *)self initWithImages:v8];
  if (v9)
  {
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"opacities"];
    opacities = v9->_opacities;
    v9->_opacities = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"effects"];
    effects = v9->_effects;
    v9->_effects = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [v20 setWithObjects:{v21, v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"fillColors"];
    fillColors = v9->_fillColors;
    v9->_fillColors = v24;
  }

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

- (BOOL)hasEffectsForAppearance:(int64_t)appearance
{
  v3 = [(NSMutableDictionary *)self->_effects _IS_layerObjectForKey:appearance];
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

- (void)setFillColor:(id)color forAppearance:(int64_t)appearance
{
  colorCopy = color;
  fillColors = self->_fillColors;
  if (!fillColors)
  {
    v7 = objc_opt_new();
    v8 = self->_fillColors;
    self->_fillColors = v7;

    fillColors = self->_fillColors;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:appearance];
  [(NSMutableDictionary *)fillColors setObject:colorCopy forKey:v9];
}

- (id)fillColorForAppearance:(int64_t)appearance
{
  v3 = [(NSMutableDictionary *)self->_fillColors _IS_layerObjectForKey:appearance];
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
  images = [(ISIconLayerElement *)self images];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __33__ISIconLayerElement_description__block_invoke;
  v15[3] = &unk_1E77C6C90;
  v16 = v3;
  v5 = v3;
  [images enumerateObjectsUsingBlock:v15];

  v6 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = ISIconLayerElement;
  v7 = [(ISIconLayerElement *)&v14 description];
  opacities = [(ISIconLayerElement *)self opacities];
  effects = [(ISIconLayerElement *)self effects];
  fillColors = [(ISIconLayerElement *)self fillColors];
  v11 = [v5 componentsJoinedByString:{@", "}];
  v12 = [v6 stringWithFormat:@"%@ O:%@, E:%@, C:%@ Images: %@", v7, opacities, effects, fillColors, v11];

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
      digest = [(ISIconLayerElement *)self digest];
      digest2 = [(ISIconLayerElement *)equalCopy digest];
      v7 = [digest isEqual:digest2];
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
  opacities = [(ISIconLayerElement *)self opacities];
  effects = [(ISIconLayerElement *)self effects];
  v7 = [v4 stringWithFormat:@"opacities: %@, effects: %@", opacities, effects];

  v43 = v7;
  v8 = [MEMORY[0x1E696AFB0] _IF_UUIDWithString:v7];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  selfCopy = self;
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
        fillColors = [(ISIconLayerElement *)selfCopy fillColors];
        [fillColors objectForKeyedSubscript:v11];
        v16 = v15 = v3;
        digest = [v16 digest];
        uUIDString = [digest UUIDString];
        v19 = [v13 stringWithFormat:@"%@_%@", v11, uUIDString];
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

  images = [(ISIconLayerElement *)selfCopy images];
  v24 = [images count];

  if (v24)
  {
    v25 = 0;
    do
    {
      images2 = [(ISIconLayerElement *)selfCopy images];
      v27 = [images2 objectAtIndexedSubscript:v25];

      v28 = MEMORY[0x1E696AFB0];
      data = [v27 data];
      v30 = [v28 _IF_UUIDWithData:data];

      v31 = MEMORY[0x1E696AFB0];
      v32 = *(v3 + 3776);
      uUIDString2 = [v30 UUIDString];
      v34 = [v32 stringWithFormat:@"%@_%d", uUIDString2, v25];
      v35 = [v31 _IF_UUIDWithString:v34];

      v36 = MEMORY[0x1E696AFB0];
      v52[0] = v8;
      v52[1] = v35;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
      v38 = [v36 _IF_UUIDByXORingUUIDs:v37];

      ++v25;
      images3 = [(ISIconLayerElement *)selfCopy images];
      v40 = [images3 count];

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
  digest = [(ISIconLayerElement *)self digest];
  v3 = [digest hash];

  return v3;
}

- (id)cuiLayerImageForAppearance:(int64_t)appearance size:(CGSize)size scale:(double)scale frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11 = size.height;
  v12 = size.width;
  imageBag = [(ISIconLayerElement *)self imageBag];
  v16 = [imageBag imageForSize:v12 scale:{v11, scale}];

  if ([v16 CGImage])
  {
    v17 = objc_alloc_init(MEMORY[0x1E69993D8]);
    [v17 setImage:{objc_msgSend(v16, "CGImage")}];
    [v17 setFrame:{x, y, width, height}];
    [(ISIconLayerElement *)self opacityForAppearance:appearance];
    [v17 setOpacity:?];
    [v17 setHasLightingEffects:{-[ISIconLayerElement hasEffectsForAppearance:](self, "hasEffectsForAppearance:", appearance)}];
    v18 = [(ISIconLayerElement *)self fillColorForAppearance:appearance];
    [v17 setColor:{objc_msgSend(v18, "cgColor")}];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end