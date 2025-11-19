@interface CUIPSDLayerEnumerator
+ (id)enumeratorWithPSDImage:(id)a3;
+ (id)enumeratorWithPSDLayerGroup:(id)a3;
- (CUIPSDLayerEnumerator)initWithPSDImage:(id)a3;
- (CUIPSDLayerEnumerator)initWithPSDLayerGroup:(id)a3;
- (id)allObjects;
- (id)nextObject;
- (void)dealloc;
@end

@implementation CUIPSDLayerEnumerator

+ (id)enumeratorWithPSDLayerGroup:(id)a3
{
  v3 = [[CUIPSDLayerEnumerator alloc] initWithPSDLayerGroup:a3];

  return v3;
}

+ (id)enumeratorWithPSDImage:(id)a3
{
  v3 = [[CUIPSDLayerEnumerator alloc] initWithPSDImage:a3];

  return v3;
}

- (CUIPSDLayerEnumerator)initWithPSDLayerGroup:(id)a3
{
  v6.receiver = self;
  v6.super_class = CUIPSDLayerEnumerator;
  v4 = [(CUIPSDLayerEnumerator *)&v6 init];
  if (v4)
  {
    v4->_layerGroup = a3;
    v4->_currentIndex = 0;
    v4->_isImageFile = 0;
  }

  return v4;
}

- (CUIPSDLayerEnumerator)initWithPSDImage:(id)a3
{
  v6.receiver = self;
  v6.super_class = CUIPSDLayerEnumerator;
  v4 = [(CUIPSDLayerEnumerator *)&v6 init];
  if (v4)
  {
    v4->_layerGroup = a3;
    v4->_currentIndex = 0;
    v4->_isImageFile = 1;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIPSDLayerEnumerator;
  [(CUIPSDLayerEnumerator *)&v3 dealloc];
}

- (id)nextObject
{
  v3 = [(CUIPSDLayerGroupRef *)self->_layerGroup numberOfLayers];
  if (!v3)
  {
    return 0;
  }

  currentIndex = self->_currentIndex;
  if (!self->_isImageFile && currentIndex >= v3)
  {
    return 0;
  }

  v5 = [(CUIPSDLayerGroupRef *)self->_layerGroup layerRefAtIndex:currentIndex];
  if ([v5 isLayerGroup] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([v5 isGroupEnd])
    {
      layerGroup = self->_layerGroup;
      v7 = self->_currentIndex + 1;
      v8 = 1;
      do
      {
        v9 = [(CUIPSDLayerGroupRef *)layerGroup layerRefAtIndex:v7];
        if ([v9 isLayerGroup])
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        if ([v9 isLayerGroup])
        {
          if ([v10 isGroupStart])
          {
            if (!--v8)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v8 += [v10 isGroupEnd];
          }
        }

        v7 = (v7 + 1);
      }

      while (v9);
      v7 = 0xFFFFFFFFLL;
LABEL_19:
      v5 = [(CUIPSDLayerGroupRef *)self->_layerGroup layerRefAtIndex:v7];
    }

    else
    {
      LODWORD(v7) = self->_currentIndex;
    }

    self->_currentIndex = v7 + 1;
    if (![v5 isLayerGroup] || (objc_msgSend(v5, "isGroupStart") & 1) == 0)
    {
      [CUIPSDLayerEnumerator nextObject];
    }
  }

  else
  {
    ++self->_currentIndex;
  }

  return v5;
}

- (id)allObjects
{
  v3 = +[NSMutableArray array];
  currentIndex = self->_currentIndex;
  self->_currentIndex = 0;
  v5 = [(CUIPSDLayerEnumerator *)self nextObject];
  if (v5)
  {
    v6 = v5;
    do
    {
      [v3 addObject:v6];
      v6 = [(CUIPSDLayerEnumerator *)self nextObject];
    }

    while (v6);
  }

  self->_currentIndex = currentIndex;
  return v3;
}

@end