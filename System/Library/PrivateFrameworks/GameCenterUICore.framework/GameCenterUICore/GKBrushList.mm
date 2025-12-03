@interface GKBrushList
+ (id)brushListWithBrushes:(id)brushes;
- (id)copyWithZone:(_NSZone *)zone;
- (void)drawInRect:(CGRect)rect withContext:(CGContext *)context input:(id)input;
@end

@implementation GKBrushList

+ (id)brushListWithBrushes:(id)brushes
{
  brushesCopy = brushes;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setBrushList:brushesCopy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = GKBrushList;
  v4 = [(GKThemeBrush *)&v7 copyWithZone:zone];
  brushList = [(GKBrushList *)self brushList];
  [v4 setBrushList:brushList];

  return v4;
}

- (void)drawInRect:(CGRect)rect withContext:(CGContext *)context input:(id)input
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v32 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  brushList = [(GKBrushList *)self brushList];
  v13 = [brushList countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(brushList);
        }

        v18 = *(*(&v27 + 1) + 8 * v17);
        [(GKBrushList *)self drawRectForBrushAtIndex:v15 fromRect:inputCopy input:x, y, width, height];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;
        [(GKBrushList *)self willDrawRect:v15 withBrushAtIndex:inputCopy input:?];
        [v18 drawInRect:context withContext:inputCopy input:{v20, v22, v24, v26}];
        [(GKBrushList *)self didDrawRect:v15++ withBrushAtIndex:inputCopy input:v20, v22, v24, v26];
        ++v17;
      }

      while (v14 != v17);
      v14 = [brushList countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }
}

@end