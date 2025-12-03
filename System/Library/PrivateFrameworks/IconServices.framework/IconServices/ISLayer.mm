@interface ISLayer
- (CGRect)bounds;
- (CGRect)frame;
- (CGSize)size;
- (ISLayer)init;
- (ISLayer)internalSuperlayer;
- (NSArray)sublayers;
- (id)debugDescription;
- (void)addSublayer:(id)sublayer;
- (void)insertSublayer:(id)sublayer atIndex:(unsigned int)index;
- (void)removeFromSuperlayer;
- (void)setFrame:(CGRect)frame;
@end

@implementation ISLayer

- (ISLayer)init
{
  v7.receiver = self;
  v7.super_class = ISLayer;
  v2 = [(ISLayer *)&v7 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    v4 = *(v2 + 6);
    *(v2 + 6) = array;

    v5 = *(MEMORY[0x1E695F058] + 16);
    *(v2 + 72) = *MEMORY[0x1E695F058];
    *(v2 + 88) = v5;
    *(v2 + 2) = 0;
    *(v2 + 7) = 0;
  }

  return v2;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v25 = *MEMORY[0x1E69E9840];
  v8 = self->_frame.size.width;
  v9 = self->_frame.size.height;
  self->_frame.origin.x = x;
  self->_frame.origin.y = y;
  self->_frame.size.width = frame.size.width;
  self->_frame.size.height = frame.size.height;
  memset(&v23, 0, sizeof(v23));
  CGAffineTransformMakeScale(&v23, frame.size.width / v8, frame.size.height / v9);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  sublayers = [(ISLayer *)self sublayers];
  v11 = [sublayers countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(sublayers);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        [v15 frame];
        v18 = v23;
        v27 = CGRectApplyAffineTransform(v26, &v18);
        [v15 setFrame:{v27.origin.x, v27.origin.y, v27.size.width, v27.size.height}];
      }

      v12 = [sublayers countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v12);
  }

  mask = [(ISLayer *)self mask];
  [mask setFrame:{x, y, width, height}];

  v17 = *MEMORY[0x1E69E9840];
}

- (CGRect)frame
{
  coordinateSystem = self->_coordinateSystem;
  switch(coordinateSystem)
  {
    case 3uLL:
      superlayer = [(ISLayer *)self superlayer];
      [superlayer bounds];
      p_size = &self->_frame.size;
      v18 = CGRectGetMaxX(v27) - self->_frame.size.width;
      superlayer2 = [(ISLayer *)self superlayer];
      [superlayer2 bounds];
      MaxY = CGRectGetMaxY(v28);
      height = self->_frame.size.height;
      p_height = &self->_frame.size.height;
      v22 = MaxY - height;

      x = v18 - *(p_height - 3);
      y = v22 - *(p_height - 2);
      break;
    case 2uLL:
      superlayer3 = [(ISLayer *)self superlayer];
      [superlayer3 bounds];
      MaxX = CGRectGetMaxX(v26);
      width = self->_frame.size.width;
      v14 = &self->_frame.size;
      v16 = MaxX - width;

      y = v14[-1].height;
      x = v16 - v14[-1].width;
      p_size = v14;
      p_height = &v14->height;
      break;
    case 1uLL:
      superlayer4 = [(ISLayer *)self superlayer];
      [superlayer4 bounds];
      v5 = CGRectGetMaxY(v25);
      v7 = self->_frame.size.height;
      p_height = &self->_frame.size.height;
      p_size = (p_height - 1);
      v9 = v5 - v7;

      x = *(p_height - 3);
      y = v9 - *(p_height - 2);
      break;
    default:
      x = self->_frame.origin.x;
      y = self->_frame.origin.y;
      p_size = &self->_frame.size;
      p_height = &self->_frame.size.height;
      break;
  }

  v23 = *p_height;
  v24 = p_size->width;
  result.size.height = v23;
  result.size.width = v24;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)size
{
  [(ISLayer *)self frame];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (CGRect)bounds
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  [(ISLayer *)self size];
  v5 = v4;
  v7 = v6;
  v8 = v2;
  v9 = v3;
  result.size.height = v7;
  result.size.width = v5;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)removeFromSuperlayer
{
  internalSuperlayer = [(ISLayer *)self internalSuperlayer];
  internalSublayers = [internalSuperlayer internalSublayers];
  [internalSublayers removeObject:self];

  [(ISLayer *)self setInternalSuperlayer:0];
}

- (void)addSublayer:(id)sublayer
{
  sublayerCopy = sublayer;
  [sublayerCopy setInternalSuperlayer:self];
  internalSublayers = [(ISLayer *)self internalSublayers];
  [internalSublayers addObject:sublayerCopy];
}

- (void)insertSublayer:(id)sublayer atIndex:(unsigned int)index
{
  sublayerCopy = sublayer;
  [sublayerCopy setInternalSuperlayer:self];
  internalSublayers = [(ISLayer *)self internalSublayers];
  [internalSublayers insertObject:sublayerCopy atIndex:index];
}

- (NSArray)sublayers
{
  internalSublayers = [(ISLayer *)self internalSublayers];
  v3 = [internalSublayers copy];

  return v3;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = ISLayer;
  v4 = [(ISLayer *)&v7 debugDescription];
  v5 = [v3 stringWithFormat:@"%@ : %@", v4, self->_name];

  return v5;
}

- (ISLayer)internalSuperlayer
{
  WeakRetained = objc_loadWeakRetained(&self->_internalSuperlayer);

  return WeakRetained;
}

@end