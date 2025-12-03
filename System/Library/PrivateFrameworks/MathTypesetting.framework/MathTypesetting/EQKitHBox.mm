@interface EQKitHBox
- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset;
- (BOOL)p_getTransform:(CGAffineTransform *)transform fromDescendant:(id)descendant;
- (CGRect)p_cacheErasableBounds;
- (id)hitTest:(CGPoint)test;
- (void)p_cacheDimensionsForHeight:(double *)height depth:(double *)depth width:(double *)width;
- (void)renderIntoContext:(id)context offset:(CGPoint)offset;
@end

@implementation EQKitHBox

- (void)renderIntoContext:(id)context offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = EQKitHBox;
  [(EQKitBox *)&v18 renderIntoContext:contextCopy offset:x, y];
  if (contextCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    childBoxes = [(EQKitCompoundBox *)self childBoxes];
    v9 = [childBoxes countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(childBoxes);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          [v12 renderIntoContext:contextCopy offset:{x, y}];
          [v12 width];
          x = x + v13;
        }

        v9 = [childBoxes countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v36 = *MEMORY[0x277D85DE8];
  v8 = *(spec + 6);
  if (v8 == 2)
  {
    [(EQKitCompoundBox *)self width];
    v16 = v15;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    childBoxes = [(EQKitCompoundBox *)self childBoxes];
    reverseObjectEnumerator = [childBoxes reverseObjectEnumerator];

    v18 = [reverseObjectEnumerator countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v18)
    {
      v19 = x + v16;
      v20 = *v27;
LABEL_14:
      v21 = 0;
      while (1)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v22 = *(*(&v26 + 1) + 8 * v21);
        [v22 width];
        v19 = v19 - v23;
        if ([v22 appendOpticalAlignToSpec:spec offset:{v19, y}])
        {
          goto LABEL_21;
        }

        if (v18 == ++v21)
        {
          v18 = [reverseObjectEnumerator countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v18)
          {
            goto LABEL_14;
          }

          break;
        }
      }
    }
  }

  else
  {
    if (v8)
    {
      return 0;
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    reverseObjectEnumerator = [(EQKitCompoundBox *)self childBoxes];
    v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v10)
    {
      v11 = *v31;
LABEL_5:
      v12 = 0;
      while (1)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v13 = *(*(&v30 + 1) + 8 * v12);
        if ([v13 appendOpticalAlignToSpec:spec offset:{x, y}])
        {
          break;
        }

        [v13 width];
        x = x + v14;
        if (v10 == ++v12)
        {
          v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v30 objects:v35 count:16];
          if (v10)
          {
            goto LABEL_5;
          }

          goto LABEL_20;
        }
      }

LABEL_21:
      v24 = 1;
      goto LABEL_22;
    }
  }

LABEL_20:
  v24 = 0;
LABEL_22:

  return v24;
}

- (id)hitTest:(CGPoint)test
{
  y = test.y;
  x = test.x;
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  childBoxes = [(EQKitCompoundBox *)self childBoxes];
  v7 = [childBoxes countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    v9 = x;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(childBoxes);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 hitTest:{v9, y}];
        if (v12)
        {

          goto LABEL_11;
        }

        [v11 width];
        v9 = v9 - v13;
      }

      v7 = [childBoxes countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15.receiver = self;
  v15.super_class = EQKitHBox;
  v12 = [(EQKitBox *)&v15 hitTest:x, y];
LABEL_11:

  return v12;
}

- (BOOL)p_getTransform:(CGAffineTransform *)transform fromDescendant:(id)descendant
{
  v25 = *MEMORY[0x277D85DE8];
  descendantCopy = descendant;
  if (descendantCopy == self)
  {
    v14 = 1;
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    childBoxes = [(EQKitCompoundBox *)self childBoxes];
    v8 = [childBoxes countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = *v21;
      v10 = 0.0;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(childBoxes);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          if ([v12 p_getTransform:transform fromDescendant:descendantCopy])
          {
            v15 = *&transform->c;
            *&v18.a = *&transform->a;
            *&v18.c = v15;
            *&v18.tx = *&transform->tx;
            CGAffineTransformTranslate(&v19, &v18, v10, 0.0);
            v16 = *&v19.c;
            *&transform->a = *&v19.a;
            *&transform->c = v16;
            *&transform->tx = *&v19.tx;
            v14 = 1;
            goto LABEL_12;
          }

          [v12 width];
          v10 = v10 + v13;
        }

        v8 = [childBoxes countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_12:
  }

  return v14;
}

- (void)p_cacheDimensionsForHeight:(double *)height depth:(double *)depth width:(double *)width
{
  v26 = *MEMORY[0x277D85DE8];
  *width = 0.0;
  *height = 0.0;
  *depth = 0.0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  childBoxes = [(EQKitCompoundBox *)self childBoxes];
  v9 = [childBoxes countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = *v22;
    v11 = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(childBoxes);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        [v13 vsize];
        if (v14 != 0.0)
        {
          if (v11)
          {
            [v13 height];
            *height = v15;
            [v13 depth];
          }

          else
          {
            v17 = *height;
            [v13 height];
            if (v17 >= v18)
            {
              v18 = v17;
            }

            *height = v18;
            v19 = *depth;
            [v13 depth];
            if (v19 >= v16)
            {
              v16 = v19;
            }
          }

          v11 = 0;
          *depth = v16;
        }

        [v13 width];
        *width = v20 + *width;
      }

      v9 = [childBoxes countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }
}

- (CGRect)p_cacheErasableBounds
{
  v33 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF3A0];
  height = *(MEMORY[0x277CBF3A0] + 24);
  y = *(MEMORY[0x277CBF3A0] + 8);
  width = *(MEMORY[0x277CBF3A0] + 16);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  childBoxes = [(EQKitCompoundBox *)self childBoxes];
  v5 = [childBoxes countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = *v29;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(childBoxes);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        [v9 erasableBounds];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        [v9 width];
        v19 = v18;
        v34.origin.x = x;
        v34.origin.y = v25;
        v34.size.width = v27;
        v34.size.height = height;
        if (CGRectIsEmpty(v34))
        {
          y = v13;
          width = v15;
          x = v7 + v11;
          height = v17;
        }

        else
        {
          v35.origin.x = x;
          v35.origin.y = v25;
          v35.size.width = v27;
          v35.size.height = height;
          v38.origin.y = v13;
          v38.size.width = v15;
          v38.size.height = v17;
          v38.origin.x = v7 + v11;
          v36 = CGRectUnion(v35, v38);
          y = v36.origin.y;
          width = v36.size.width;
          x = v36.origin.x;
          height = v36.size.height;
        }

        v7 = v7 + v19;
      }

      v5 = [childBoxes countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v5);
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

@end