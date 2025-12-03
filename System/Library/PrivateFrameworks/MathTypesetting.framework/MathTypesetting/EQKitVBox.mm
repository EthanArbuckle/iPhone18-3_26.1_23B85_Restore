@interface EQKitVBox
- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset;
- (BOOL)isEqual:(id)equal;
- (BOOL)p_getTransform:(CGAffineTransform *)transform fromDescendant:(id)descendant;
- (CGRect)p_cacheErasableBounds;
- (EQKitVBox)initWithChildBoxes:(id)boxes pivotIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)hitTest:(CGPoint)test;
- (void)p_cacheDimensionsForHeight:(double *)height depth:(double *)depth width:(double *)width;
- (void)renderIntoContext:(id)context offset:(CGPoint)offset;
@end

@implementation EQKitVBox

- (EQKitVBox)initWithChildBoxes:(id)boxes pivotIndex:(unint64_t)index
{
  boxesCopy = boxes;
  v11.receiver = self;
  v11.super_class = EQKitVBox;
  v7 = [(EQKitCompoundBox *)&v11 initWithChildBoxes:boxesCopy];
  if (v7)
  {
    v8 = [boxesCopy count];
    indexCopy = 0x7FFFFFFFFFFFFFFFLL;
    if (v8 > index)
    {
      indexCopy = index;
    }

    v7->_pivotIndex = indexCopy;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  childBoxes = [(EQKitCompoundBox *)self childBoxes];
  v6 = [v4 initWithChildBoxes:childBoxes pivotIndex:{-[EQKitVBox pivotIndex](self, "pivotIndex")}];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = EQKitVBox;
  if ([(EQKitCompoundBox *)&v9 isEqual:equalCopy])
  {
    v5 = equalCopy;
    pivotIndex = [(EQKitVBox *)self pivotIndex];
    v7 = pivotIndex == [v5 pivotIndex];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)renderIntoContext:(id)context offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v25 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v23.receiver = self;
  v23.super_class = EQKitVBox;
  [(EQKitBox *)&v23 renderIntoContext:contextCopy offset:x, y];
  if (contextCopy)
  {
    [(EQKitCompoundBox *)self height];
    v9 = v8;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    childBoxes = [(EQKitCompoundBox *)self childBoxes];
    v11 = [childBoxes countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = y - v9;
      v13 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(childBoxes);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          [v15 layoutHeight];
          v17 = v12 + v16;
          [v15 renderIntoContext:contextCopy offset:{x, v17}];
          [v15 layoutDepth];
          v12 = v17 + v18;
        }

        v11 = [childBoxes countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v11);
    }
  }
}

- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v27 = *MEMORY[0x277D85DE8];
  [(EQKitCompoundBox *)self height];
  if ((*(spec + 6) | 2) == 2)
  {
    v9 = v8;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    childBoxes = [(EQKitCompoundBox *)self childBoxes];
    v11 = 0;
    v12 = [childBoxes countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = y - v9;
      v14 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(childBoxes);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          [v16 layoutHeight];
          v18 = v13 + v17;
          v19 = [v16 appendOpticalAlignToSpec:spec offset:{x, v18}];
          [v16 layoutDepth];
          v11 |= v19;
          v13 = v18 + v20;
        }

        v12 = [childBoxes countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (id)hitTest:(CGPoint)test
{
  y = test.y;
  x = test.x;
  v24 = *MEMORY[0x277D85DE8];
  [(EQKitCompoundBox *)self height];
  v7 = v6;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  childBoxes = [(EQKitCompoundBox *)self childBoxes];
  v9 = [childBoxes countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v7 - y;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(childBoxes);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        [v13 height];
        v15 = [v13 hitTest:{x, v14 - v10}];
        if (v15)
        {

          goto LABEL_11;
        }

        [v13 vsize];
        v10 = v10 - v16;
      }

      v9 = [childBoxes countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v18.receiver = self;
  v18.super_class = EQKitVBox;
  v15 = [(EQKitBox *)&v18 hitTest:x, y];
LABEL_11:

  return v15;
}

- (BOOL)p_getTransform:(CGAffineTransform *)transform fromDescendant:(id)descendant
{
  v29 = *MEMORY[0x277D85DE8];
  descendantCopy = descendant;
  if (descendantCopy == self)
  {
    v18 = 1;
  }

  else
  {
    [(EQKitCompoundBox *)self height];
    v8 = v7;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    childBoxes = [(EQKitCompoundBox *)self childBoxes];
    v10 = [childBoxes countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = -v8;
      v12 = *v25;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(childBoxes);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          [v14 layoutHeight];
          v16 = v11 + v15;
          if ([v14 p_getTransform:transform fromDescendant:descendantCopy])
          {
            v19 = *&transform->c;
            *&v22.a = *&transform->a;
            *&v22.c = v19;
            *&v22.tx = *&transform->tx;
            CGAffineTransformTranslate(&v23, &v22, 0.0, v16);
            v20 = *&v23.c;
            *&transform->a = *&v23.a;
            *&transform->c = v20;
            *&transform->tx = *&v23.tx;
            v18 = 1;
            goto LABEL_12;
          }

          [v14 layoutDepth];
          v11 = v16 + v17;
        }

        v10 = [childBoxes countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v18 = 0;
LABEL_12:
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(EQKitCompoundBox *)self height];
  v6 = v5;
  [(EQKitCompoundBox *)self depth];
  v8 = v7;
  [(EQKitCompoundBox *)self width];
  v10 = v9;
  childBoxes = [(EQKitCompoundBox *)self childBoxes];
  v12 = [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f width=%f childBoxes=%@ pivotIndex=%lu", v4, self, v6, v8, v10, childBoxes, -[EQKitVBox pivotIndex](self, "pivotIndex")];

  return v12;
}

- (void)p_cacheDimensionsForHeight:(double *)height depth:(double *)depth width:(double *)width
{
  *height = 0.0;
  *depth = 0.0;
  *width = 0.0;
  if ([(EQKitVBox *)self pivotIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    childBoxes = [(EQKitCompoundBox *)self childBoxes];
    v9 = [childBoxes count];
    if (v9)
    {
      pivotIndex = [(EQKitVBox *)self pivotIndex];
      v11 = pivotIndex;
      v12 = 0;
      if (pivotIndex >= v9 - 1)
      {
        v13 = v9 - 1;
      }

      else
      {
        v13 = pivotIndex;
      }

      do
      {
        v14 = [childBoxes objectAtIndexedSubscript:v12];
        v15 = v14;
        if (v12 >= v13)
        {
          if (v12 <= v13)
          {
            if (v13)
            {
              [v14 layoutHeight];
            }

            else
            {
              [v14 height];
            }

            *height = v18 + *height;
            if (v9 - 1 <= v11)
            {
              [v15 depth];
            }

            else
            {
              [v15 layoutDepth];
            }
          }

          else
          {
            [v14 layoutVSize];
          }

          heightCopy = depth;
        }

        else
        {
          [v14 layoutVSize];
          heightCopy = height;
        }

        *heightCopy = v16 + *heightCopy;
        v19 = *width;
        [v15 width];
        if (v19 >= v20)
        {
          v20 = v19;
        }

        *width = v20;

        ++v12;
      }

      while (v9 != v12);
    }
  }
}

- (CGRect)p_cacheErasableBounds
{
  v37 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  height = *(MEMORY[0x277CBF3A0] + 24);
  rect = *(MEMORY[0x277CBF3A0] + 16);
  [(EQKitCompoundBox *)self height];
  v5 = v4;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  childBoxes = [(EQKitCompoundBox *)self childBoxes];
  v7 = [childBoxes countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v7)
  {
    v8 = -v5;
    v9 = *v33;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(childBoxes);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        [v11 layoutHeight];
        v13 = v12;
        [v11 erasableBounds];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        [v11 layoutDepth];
        v23 = v22;
        v38.origin.x = x;
        v38.origin.y = y;
        v38.size.width = rect;
        v38.size.height = height;
        v24 = v8 + v13;
        if (CGRectIsEmpty(v38))
        {
          y = v24 + v17;
          rect = v19;
          x = v15;
          height = v21;
        }

        else
        {
          v39.origin.x = x;
          v39.origin.y = y;
          v39.size.width = rect;
          v39.size.height = height;
          v42.origin.x = v15;
          v42.size.width = v19;
          v42.size.height = v21;
          v42.origin.y = v24 + v17;
          v40 = CGRectUnion(v39, v42);
          x = v40.origin.x;
          y = v40.origin.y;
          rect = v40.size.width;
          height = v40.size.height;
        }

        v8 = v24 + v23;
      }

      v7 = [childBoxes countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v7);
  }

  v25 = x;
  v26 = y;
  v27 = rect;
  v28 = height;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

@end