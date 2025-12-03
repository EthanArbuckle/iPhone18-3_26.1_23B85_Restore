@interface HKAxisExclusion
- (BOOL)excludeRect:(CGRect)rect;
- (HKAxisExclusion)init;
- (void)unifyExclusion;
@end

@implementation HKAxisExclusion

- (HKAxisExclusion)init
{
  v6.receiver = self;
  v6.super_class = HKAxisExclusion;
  v2 = [(HKAxisExclusion *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    excludedRects = v2->_excludedRects;
    v2->_excludedRects = v3;
  }

  return v2;
}

- (BOOL)excludeRect:(CGRect)rect
{
  v3 = 0;
  v25 = *MEMORY[0x1E69E9840];
  if (rect.size.width > 0.0)
  {
    height = rect.size.height;
    if (rect.size.height > 0.0)
    {
      width = rect.size.width;
      y = rect.origin.y;
      x = rect.origin.x;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = self->_excludedRects;
      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [*(*(&v20 + 1) + 8 * i) CGRectValue];
            v28.origin.x = v14;
            v28.origin.y = v15;
            v28.size.width = v16;
            v28.size.height = v17;
            v26.origin.x = x;
            v26.origin.y = y;
            v26.size.width = width;
            v26.size.height = height;
            v27 = CGRectIntersection(v26, v28);
            if (!CGRectIsNull(v27))
            {
              v3 = 1;
              goto LABEL_13;
            }
          }

          v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      excludedRects = self->_excludedRects;
      v9 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
      [(NSMutableArray *)excludedRects addObject:v9];
      v3 = 0;
LABEL_13:
    }
  }

  return v3;
}

- (void)unifyExclusion
{
  v35 = *MEMORY[0x1E69E9840];
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = self->_excludedRects;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    v26 = height;
    v27 = width;
    v28 = y;
    v29 = x;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v30 + 1) + 8 * i) CGRectValue];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v36.origin.x = x;
        v36.origin.y = y;
        v36.size.width = width;
        v36.size.height = height;
        v40.origin.y = v28;
        v40.origin.x = v29;
        v40.size.height = v26;
        v40.size.width = v27;
        if (CGRectEqualToRect(v36, v40))
        {
          height = v19;
          width = v17;
          y = v15;
          x = v13;
        }

        else
        {
          v37.origin.x = x;
          v37.origin.y = y;
          v37.size.width = width;
          v37.size.height = height;
          v41.origin.x = v13;
          v41.origin.y = v15;
          v41.size.width = v17;
          v41.size.height = v19;
          v38 = CGRectUnion(v37, v41);
          x = v38.origin.x;
          y = v38.origin.y;
          width = v38.size.width;
          height = v38.size.height;
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v9);
    v21 = v28;
    v20 = v29;
    v23 = v26;
    v22 = v27;
  }

  else
  {
    v20 = x;
    v21 = y;
    v22 = width;
    v23 = height;
  }

  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v42.origin.x = v20;
  v42.origin.y = v21;
  v42.size.width = v22;
  v42.size.height = v23;
  if (!CGRectEqualToRect(v39, v42))
  {
    [(NSMutableArray *)self->_excludedRects removeAllObjects];
    excludedRects = self->_excludedRects;
    v25 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
    [(NSMutableArray *)excludedRects addObject:v25];
  }
}

@end