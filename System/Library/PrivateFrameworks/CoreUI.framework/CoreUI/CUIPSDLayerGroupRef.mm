@interface CUIPSDLayerGroupRef
- (BOOL)_isGroupType:(unsigned int)a3;
- (BOOL)isGroupStart;
- (CGRect)bounds;
- (CUIPSDLayerGroupRef)initWithImageRef:(id)a3 layerIndex:(unsigned int)a4;
- (id)layerNames;
- (id)layerRefAtIndex:(unsigned int)a3;
- (void)dealloc;
- (void)enumerateLayersUsingBlock:(id)a3;
@end

@implementation CUIPSDLayerGroupRef

- (CUIPSDLayerGroupRef)initWithImageRef:(id)a3 layerIndex:(unsigned int)a4
{
  v4 = *&a4;
  v9.receiver = self;
  v9.super_class = CUIPSDLayerGroupRef;
  v6 = [(CUIPSDLayerGroupRef *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(CUIPSDLayerBaseRef *)v6 setImageRef:a3];
    [(CUIPSDLayerBaseRef *)v7 setLayerIndex:v4];
    v7->_sublayerInfo = [a3 _copySublayerInfoAtAbsoluteIndex:v4 atRoot:0];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIPSDLayerGroupRef;
  [(CUIPSDLayerBaseRef *)&v3 dealloc];
}

- (CGRect)bounds
{
  x = NSZeroRect.origin.x;
  y = NSZeroRect.origin.y;
  width = NSZeroRect.size.width;
  height = NSZeroRect.size.height;
  v7 = [(CUIPSDLayerGroupRef *)self numberOfLayers];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      v10 = [(CUIPSDLayerGroupRef *)self layerRefAtIndex:v9];
      if (v10)
      {
        [v10 bounds];
        v22.origin.x = v11;
        v22.origin.y = v12;
        v22.size.width = v13;
        v22.size.height = v14;
        v19.origin.x = x;
        v19.origin.y = y;
        v19.size.width = width;
        v19.size.height = height;
        v20 = NSUnionRect(v19, v22);
        x = v20.origin.x;
        y = v20.origin.y;
        width = v20.size.width;
        height = v20.size.height;
      }

      v9 = (v9 + 1);
    }

    while (v8 != v9);
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (BOOL)_isGroupType:(unsigned int)a3
{
  v5 = [(CUIPSDImageRef *)[(CUIPSDLayerBaseRef *)self imageRef] psdFile];
  if (v5)
  {
    v7 = 0;
    CPSDFile::GetLayerSectionDividerType(v5, [(CUIPSDLayerBaseRef *)self layerIndex], &v7);
    LOBYTE(v5) = v7 == a3;
  }

  return v5;
}

- (BOOL)isGroupStart
{
  if ([(CUIPSDLayerGroupRef *)self _isGroupType:1])
  {
    return 1;
  }

  return [(CUIPSDLayerGroupRef *)self _isGroupType:2];
}

- (id)layerNames
{
  v3 = [(CUIPSDLayerBaseRef *)self imageRef];
  sublayerInfo = self->_sublayerInfo;

  return [(CUIPSDImageRef *)v3 _namesOfSublayers:sublayerInfo];
}

- (id)layerRefAtIndex:(unsigned int)a3
{
  v6 = 0;
  v4 = [(_CUIPSDSublayerInfo *)self->_sublayerInfo sublayerAtIndex:*&a3 isValid:&v6];
  if (v6 == 1)
  {
    return [(CUIPSDImageRef *)[(CUIPSDLayerBaseRef *)self imageRef] _layerRefAtAbsoluteIndex:v4];
  }

  else
  {
    return 0;
  }
}

- (void)enumerateLayersUsingBlock:(id)a3
{
  v4 = [(CUIPSDLayerGroupRef *)self layerEnumerator];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v11 + 1) + 8 * v8);
      v10 = 0;
      (*(a3 + 2))(a3, v9, &v10);
      if (v10)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        return;
      }
    }
  }
}

@end