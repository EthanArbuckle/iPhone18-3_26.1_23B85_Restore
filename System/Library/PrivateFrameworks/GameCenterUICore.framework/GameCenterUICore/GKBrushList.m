@interface GKBrushList
+ (id)brushListWithBrushes:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)drawInRect:(CGRect)a3 withContext:(CGContext *)a4 input:(id)a5;
@end

@implementation GKBrushList

+ (id)brushListWithBrushes:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setBrushList:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = GKBrushList;
  v4 = [(GKThemeBrush *)&v7 copyWithZone:a3];
  v5 = [(GKBrushList *)self brushList];
  [v4 setBrushList:v5];

  return v4;
}

- (void)drawInRect:(CGRect)a3 withContext:(CGContext *)a4 input:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v32 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = [(GKBrushList *)self brushList];
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v28;
    do
    {
      v17 = 0;
      do
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v27 + 1) + 8 * v17);
        [(GKBrushList *)self drawRectForBrushAtIndex:v15 fromRect:v11 input:x, y, width, height];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;
        [(GKBrushList *)self willDrawRect:v15 withBrushAtIndex:v11 input:?];
        [v18 drawInRect:a4 withContext:v11 input:{v20, v22, v24, v26}];
        [(GKBrushList *)self didDrawRect:v15++ withBrushAtIndex:v11 input:v20, v22, v24, v26];
        ++v17;
      }

      while (v14 != v17);
      v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }
}

@end