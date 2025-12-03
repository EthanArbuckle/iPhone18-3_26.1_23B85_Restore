@interface ISiOSAppOverhangingBadgeRecipe
- (id)hintedBadgeRect;
- (id)hintedMainIconBadgeRect;
- (id)layerTreeForSize:(CGSize)size scale:(double)scale;
@end

@implementation ISiOSAppOverhangingBadgeRecipe

- (id)hintedMainIconBadgeRect
{
  if (hintedMainIconBadgeRect_onceToken != -1)
  {
    [ISiOSAppOverhangingBadgeRecipe hintedMainIconBadgeRect];
  }

  v3 = hintedMainIconBadgeRect_rect;

  return v3;
}

void __57__ISiOSAppOverhangingBadgeRecipe_hintedMainIconBadgeRect__block_invoke()
{
  v23 = *MEMORY[0x1E69E9840];
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:5];
  v1 = hintedMainIconBadgeRect_rect;
  hintedMainIconBadgeRect_rect = v0;

  v2 = [MEMORY[0x1E69A8980] iosAppIconSpecification];
  memset(&rect2[1], 0, 32);
  v20 = 0u;
  v21 = 0u;
  v3 = [v2 allImageSpecifications];
  v4 = [v3 countByEnumeratingWithState:&rect2[1] objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *rect2[3];
    v7 = *(MEMORY[0x1E695F058] + 8);
    rect2[0] = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*rect2[3] != v6)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(rect2[2] + 8 * i);
        [v11 size];
        v13 = v12;
        [v11 size];
        v15 = v14;
        v16 = round(v13 * 1.18);
        v17 = round(v14 * 1.18);
        [hintedMainIconBadgeRect_rect hintedRectForSize:{v16, v17}];
        *&v25.origin.x = rect2[0];
        v25.origin.y = v7;
        v25.size.width = v8;
        v25.size.height = v9;
        if (CGRectEqualToRect(v24, v25))
        {
          [hintedMainIconBadgeRect_rect addHintedRect:(v16 - v13) * 0.5 forSize:{(v17 - v15) * 0.5, v13, v15, v16, v17}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&rect2[1] objects:v22 count:16];
    }

    while (v5);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)hintedBadgeRect
{
  if (hintedBadgeRect_onceToken != -1)
  {
    [ISiOSAppOverhangingBadgeRecipe hintedBadgeRect];
  }

  v3 = hintedBadgeRect_rect;

  return v3;
}

void __49__ISiOSAppOverhangingBadgeRecipe_hintedBadgeRect__block_invoke()
{
  v25 = *MEMORY[0x1E69E9840];
  v0 = [(ISHintedValue *)[ISHintedRect alloc] initWithOptions:5];
  v1 = hintedBadgeRect_rect;
  hintedBadgeRect_rect = v0;

  v2 = [MEMORY[0x1E69A8980] iosAppIconSpecification];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [v2 allImageSpecifications];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    v18 = *(MEMORY[0x1E695F058] + 8);
    v19 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        [v10 size];
        v12 = v11;
        [v10 size];
        v14 = v13;
        v15 = round(v12 * 1.18);
        v16 = round(v13 * 1.18);
        [hintedBadgeRect_rect hintedRectForSize:{v15, v16}];
        v27.origin.y = v18;
        v27.origin.x = v19;
        v27.size.width = v7;
        v27.size.height = v8;
        if (CGRectEqualToRect(v26, v27))
        {
          [hintedBadgeRect_rect addHintedRect:v15 - v12 * 0.35 forSize:{0.0, v12 * 0.35, v14 * 0.35, v15, v16}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)layerTreeForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v7 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v7 setSize:width, height];
  [(ISLayer *)v7 setName:@"layer"];
  v8 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v8 setName:@"transparent background layer"];
  [(ISLayer *)v8 setSize:width, height];
  [(ISContentLayer *)v8 setContent:0];
  v9 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v9 setName:@"icon"];
  [(ISContentLayer *)v9 setContent:@"kISPrimaryResourceKey"];
  hintedMainIconBadgeRect = [(ISiOSAppOverhangingBadgeRecipe *)self hintedMainIconBadgeRect];
  [hintedMainIconBadgeRect hintedRectForSize:{width, height}];
  [(ISLayer *)v9 setFrame:?];

  v11 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v9 size];
  [(ISLayer *)v11 setSize:?];
  [(ISLayer *)v11 setName:@"mask layer"];
  v12 = +[ISShapeCompositorResource continuousRoundedRectShape];
  [(ISContentLayer *)v11 setContent:v12];

  [(ISLayer *)v9 setMask:v11];
  [(ISLayer *)v8 addSublayer:v9];
  v13 = objc_alloc_init(ISContentLayer);
  [(ISLayer *)v13 setName:@"badge layer"];
  hintedBadgeRect = [(ISiOSAppOverhangingBadgeRecipe *)self hintedBadgeRect];
  [hintedBadgeRect hintedRectForSize:{width, height}];
  [(ISLayer *)v13 setFrame:?];

  [(ISContentLayer *)v13 setContent:@"kISBadgeResourceKey"];
  [(ISLayer *)v8 addSublayer:v13];

  [(ISLayer *)v7 addSublayer:v8];

  return v7;
}

@end