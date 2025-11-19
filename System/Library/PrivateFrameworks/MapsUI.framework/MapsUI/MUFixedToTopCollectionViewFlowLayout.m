@interface MUFixedToTopCollectionViewFlowLayout
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
@end

@implementation MUFixedToTopCollectionViewFlowLayout

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = MUFixedToTopCollectionViewFlowLayout;
  v3 = [(UICollectionViewFlowLayout *)&v36 layoutAttributesForElementsInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [v3 firstObject];
  [v4 frame];
  MidY = CGRectGetMidY(v40);

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *MEMORY[0x1E695F050];
    v11 = *(MEMORY[0x1E695F050] + 8);
    v12 = *(MEMORY[0x1E695F050] + 16);
    v13 = *(MEMORY[0x1E695F050] + 24);
    v14 = *v33;
    v15 = 1.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v7);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        if (![v17 representedElementCategory])
        {
          [v17 frame];
          v18 = CGRectGetMidY(v41);
          if (vabdd_f64(v18, MidY) >= v15)
          {
            goto LABEL_11;
          }

          [v6 addObject:v17];
          [v17 frame];
          Height = CGRectGetHeight(v42);
          v43.origin.x = v10;
          v43.origin.y = v11;
          v43.size.width = v12;
          v43.size.height = v13;
          if (Height > CGRectGetHeight(v43))
          {
            [v17 frame];
            v10 = v20;
            v11 = v21;
            v12 = v22;
            v13 = v23;
          }

          v24 = [v7 lastObject];

          v15 = 1.0;
          if (v17 == v24)
          {
LABEL_11:
            v31[0] = MEMORY[0x1E69E9820];
            v31[1] = 3221225472;
            v31[2] = __74__MUFixedToTopCollectionViewFlowLayout_layoutAttributesForElementsInRect___block_invoke;
            v31[3] = &__block_descriptor_64_e49_v32__0__UICollectionViewLayoutAttributes_8Q16_B24l;
            *&v31[4] = v10;
            *&v31[5] = v11;
            *&v31[6] = v12;
            *&v31[7] = v13;
            [v6 enumerateObjectsUsingBlock:v31];
            [v6 removeAllObjects];
            [v6 addObject:v17];
            [v17 frame];
            v10 = v25;
            v11 = v26;
            v12 = v27;
            v13 = v28;
            MidY = v18;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v9);
  }

  v29 = *MEMORY[0x1E69E9840];

  return v7;
}

void __74__MUFixedToTopCollectionViewFlowLayout_layoutAttributesForElementsInRect___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  [v14 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(a1 + 40);
  [v14 frame];
  v13 = v11 - v12;
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  v17 = CGRectOffset(v16, 0.0, v13);
  [v14 setFrame:{v17.origin.x, v17.origin.y, v17.size.width, v17.size.height}];
}

@end