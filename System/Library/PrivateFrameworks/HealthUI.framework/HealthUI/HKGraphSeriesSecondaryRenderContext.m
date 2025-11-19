@interface HKGraphSeriesSecondaryRenderContext
- (HKGraphSeriesSecondaryRenderContext)init;
- (void)addOffScreenRegionWithStartLocation:(double)a3 endLocation:(double)a4 color:(id)a5 aboveScreen:(BOOL)a6;
- (void)drawInAxisRect:(CGRect)a3 backgroundColor:(id)a4 renderContext:(CGContext *)a5;
@end

@implementation HKGraphSeriesSecondaryRenderContext

- (HKGraphSeriesSecondaryRenderContext)init
{
  v8.receiver = self;
  v8.super_class = HKGraphSeriesSecondaryRenderContext;
  v2 = [(HKGraphSeriesSecondaryRenderContext *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    aboveScreenRegions = v2->_aboveScreenRegions;
    v2->_aboveScreenRegions = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    belowScreenRegions = v2->_belowScreenRegions;
    v2->_belowScreenRegions = v5;
  }

  return v2;
}

- (void)addOffScreenRegionWithStartLocation:(double)a3 endLocation:(double)a4 color:(id)a5 aboveScreen:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v12 = objc_alloc_init(_HKGraphSeriesSecondaryRenderContextOffScreenRegion);
  [(_HKGraphSeriesSecondaryRenderContextOffScreenRegion *)v12 setStart:a3];
  [(_HKGraphSeriesSecondaryRenderContextOffScreenRegion *)v12 setEnd:a4];
  [(_HKGraphSeriesSecondaryRenderContextOffScreenRegion *)v12 setColor:v10];

  v11 = 16;
  if (v6)
  {
    v11 = 8;
  }

  [*(&self->super.isa + v11) addObject:v12];
}

- (void)drawInAxisRect:(CGRect)a3 backgroundColor:(id)a4 renderContext:(CGContext *)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v54 = *MEMORY[0x1E69E9840];
  v11 = a4;
  CGContextSaveGState(a5);
  v12 = HKUIOnePixel();
  CGContextSetLineWidth(a5, v12 + v12);
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  MinY = CGRectGetMinY(v55);
  v14 = HKUIOnePixel();
  v56.origin.x = x;
  v56.origin.y = y;
  v56.size.width = width;
  v56.size.height = height;
  MaxY = CGRectGetMaxY(v56);
  v42 = HKUIOnePixel();
  if (v11)
  {
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = height;
    MinX = CGRectGetMinX(v57);
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    v16 = CGRectGetWidth(v58);
    v59.origin.x = x;
    v59.origin.y = y;
    v59.size.width = width;
    v59.size.height = height;
    v17 = CGRectGetMinY(v59);
    CGContextSetFillColorWithColor(a5, [v11 CGColor]);
    v60.origin.y = 0.0;
    v60.origin.x = MinX;
    v60.size.width = v16;
    v60.size.height = v17;
    CGContextFillRect(a5, v60);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v18 = self->_aboveScreenRegions;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = MinY - (2.0 - v14);
    v22 = *v49;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v49 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v48 + 1) + 8 * i);
        [v24 start];
        v26 = v25;
        [v24 end];
        v28 = v27;
        v29 = [v24 color];
        CGContextSetFillColorWithColor(a5, [v29 CGColor]);

        v61.size.width = v28 - v26;
        v61.size.height = 2.0;
        v61.origin.x = v26;
        v61.origin.y = v21;
        CGContextFillRect(a5, v61);
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v20);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v30 = self->_belowScreenRegions;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = MaxY - v42;
    v34 = *v45;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v45 != v34)
        {
          objc_enumerationMutation(v30);
        }

        v36 = *(*(&v44 + 1) + 8 * j);
        [v36 start];
        v38 = v37;
        [v36 end];
        v40 = v39;
        v41 = [v36 color];
        CGContextSetFillColorWithColor(a5, [v41 CGColor]);

        v62.size.width = v40 - v38;
        v62.size.height = 2.0;
        v62.origin.x = v38;
        v62.origin.y = v33;
        CGContextFillRect(a5, v62);
      }

      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v32);
  }

  CGContextRestoreGState(a5);
}

@end