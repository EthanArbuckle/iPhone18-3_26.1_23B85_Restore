@interface GridVisualizationView
- (GridVisualizationView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation GridVisualizationView

- (GridVisualizationView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = GridVisualizationView;
  v3 = [(GridVisualizationView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(GridVisualizationView *)v3 setNeedsDisplayOnBoundsChange:1];
    v5 = v4;
  }

  return v4;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v49[3] = *MEMORY[0x277D85DE8];
  CurrentContext = UIGraphicsGetCurrentContext();
  v8 = [MEMORY[0x277D75348] systemBlueColor];
  v9 = [MEMORY[0x277D75348] greenColor];
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  CGContextClearRect(CurrentContext, v50);
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  v10 = vcvtpd_s64_f64(CGRectGetMinX(v51) / 100.0);
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  v11 = vcvtmd_s64_f64(CGRectGetMaxX(v52) / 100.0);
  [v8 setStroke];
  v43 = v10;
  v41 = v11;
  if (v10 <= v11)
  {
    v12 = v10;
    do
    {
      v13 = [MEMORY[0x277D75208] bezierPath];
      v53.origin.x = x;
      v53.origin.y = y;
      v53.size.width = width;
      v53.size.height = height;
      [v13 moveToPoint:{v12 * 100.0, CGRectGetMinY(v53)}];
      v54.origin.x = x;
      v54.origin.y = y;
      v54.size.width = width;
      v54.size.height = height;
      [v13 addLineToPoint:{v12 * 100.0, CGRectGetMaxY(v54)}];
      [v13 stroke];

      ++v12;
    }

    while (v41 + 1 != v12);
  }

  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  v14 = vcvtpd_s64_f64(CGRectGetMinY(v55) / 100.0);
  v56.origin.x = x;
  v56.origin.y = y;
  v56.size.width = width;
  v56.size.height = height;
  v15 = vcvtmd_s64_f64(CGRectGetMaxY(v56) / 100.0);
  [v9 setStroke];
  v42 = v14;
  v40 = v15;
  if (v14 <= v15)
  {
    v16 = v14;
    do
    {
      v17 = [MEMORY[0x277D75208] bezierPath];
      v57.origin.x = x;
      v57.origin.y = y;
      v57.size.width = width;
      v57.size.height = height;
      [v17 moveToPoint:{CGRectGetMinX(v57), v16 * 100.0}];
      v58.origin.x = x;
      v58.origin.y = y;
      v58.size.width = width;
      v58.size.height = height;
      [v17 addLineToPoint:{CGRectGetMaxX(v58), v16 * 100.0}];
      [v17 stroke];

      ++v16;
    }

    while (v40 + 1 != v16);
  }

  v18 = [MEMORY[0x277D74300] monospacedSystemFontOfSize:12.0 weight:*MEMORY[0x277D74418]];
  v19 = objc_alloc_init(MEMORY[0x277D74258]);
  [v19 setShadowBlurRadius:1.0];
  [v19 setShadowOffset:{1.0, 1.0}];
  if (v43 <= v41)
  {
    v20 = *MEMORY[0x277D740C0];
    v21 = *MEMORY[0x277D740A8];
    v22 = *MEMORY[0x277D74138];
    v23 = 0x277CBE000uLL;
    v24 = 0x277CCA000uLL;
    v44 = v8;
    do
    {
      if (v42 <= v40)
      {
        v25 = v42;
        v26 = v43 * 100.0;
        do
        {
          v27 = v25 * 100.0;
          v48[0] = v20;
          v48[1] = v21;
          v49[0] = v8;
          v49[1] = v18;
          v48[2] = v22;
          v49[2] = v19;
          v45 = [*(v23 + 2752) dictionaryWithObjects:v49 forKeys:v48 count:3];
          [*(v24 + 3240) stringWithFormat:@"%.0f", *&v26];
          v29 = v28 = v24;
          [v29 drawAtPoint:v45 withAttributes:{v26 + 2.0, v27 + -12.0 + -2.0}];

          v46[0] = v20;
          v46[1] = v21;
          v47[0] = v9;
          v47[1] = v18;
          v46[2] = v22;
          v47[2] = v19;
          v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];
          [*(v28 + 3240) stringWithFormat:@"%.0f", *&v27];
          v31 = v22;
          v32 = v21;
          v33 = v20;
          v34 = v19;
          v35 = v18;
          v37 = v36 = v9;
          [v37 sizeWithAttributes:v30];
          [v37 drawAtPoint:v30 withAttributes:{v26 - v38 + -2.0, v27 + 2.0}];

          v9 = v36;
          v18 = v35;
          v19 = v34;
          v20 = v33;
          v21 = v32;
          v22 = v31;

          v24 = v28;
          v23 = 0x277CBE000;
          v8 = v44;
          ++v25;
        }

        while (v40 + 1 != v25);
      }
    }

    while (v43++ != v41);
  }
}

@end