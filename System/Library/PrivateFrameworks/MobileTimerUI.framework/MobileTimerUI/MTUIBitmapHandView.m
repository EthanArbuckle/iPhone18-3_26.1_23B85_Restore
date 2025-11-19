@interface MTUIBitmapHandView
+ (id)partInfoWithName:(id)a3 offset:(CGPoint)a4 maintainsOrientation:(BOOL)a5;
- (MTUIBitmapHandView)initWithBundle:(id)a3 resourcePath:(id)a4 partInfoList:(id)a5 rotationalCenter:(CGPoint)a6;
- (MTUIBitmapHandView)initWithImage:(id)a3 rotationalCenter:(CGPoint)a4;
@end

@implementation MTUIBitmapHandView

+ (id)partInfoWithName:(id)a3 offset:(CGPoint)a4 maintainsOrientation:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  v15[3] = *MEMORY[0x277D85DE8];
  v15[0] = a3;
  v14[0] = @"MTUIBitmapClockHandPartNameKey";
  v14[1] = @"MTUIBitmapClockHandPartOffsetKey";
  v8 = MEMORY[0x277CCAE60];
  v9 = a3;
  v10 = [v8 valueWithCGPoint:{x, y}];
  v15[1] = v10;
  v14[2] = @"MTUIBitmapClockHandPartMaintainsOrientationKey";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  return v12;
}

- (MTUIBitmapHandView)initWithBundle:(id)a3 resourcePath:(id)a4 partInfoList:(id)a5 rotationalCenter:(CGPoint)a6
{
  v67 = *MEMORY[0x277D85DE8];
  v55 = a3;
  v54 = a4;
  v9 = a5;
  v64.receiver = self;
  v64.super_class = MTUIBitmapHandView;
  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  v14 = [(MTUIBitmapHandView *)&v64 initWithFrame:*MEMORY[0x277CBF3A0], y, width, height];
  v15 = v14;
  if (v14)
  {
    p_isa = &v14->super.super.super.isa;
    v53 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v50 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v48 = v9;
    obj = v9;
    v16 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v61;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v61 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v60 + 1) + 8 * i);
          v21 = [v20 objectForKeyedSubscript:@"MTUIBitmapClockHandPartNameKey"];
          v22 = [v54 stringByAppendingPathComponent:v21];

          v23 = objc_alloc(MEMORY[0x277D755E8]);
          v24 = [MEMORY[0x277D755B8] imageNamed:v22 inBundle:v55];
          v25 = [v23 initWithImage:v24];

          [v53 addObject:v25];
          [p_isa addSubview:v25];
          [v25 frame];
          v27 = v26;
          v29 = v28;
          v30 = [v20 objectForKeyedSubscript:@"MTUIBitmapClockHandPartOffsetKey"];
          [v30 CGPointValue];
          v32 = v31;
          v34 = v33;

          [v25 setFrame:{v32, v34, v27, v29}];
          v35 = [v20 objectForKeyedSubscript:@"MTUIBitmapClockHandPartMaintainsOrientationKey"];
          LODWORD(v30) = [v35 BOOLValue];

          if (v30)
          {
            [v50 addObject:v25];
          }
        }

        v17 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
      }

      while (v17);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v36 = v53;
    v37 = [v36 countByEnumeratingWithState:&v56 objects:v65 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v57;
      v9 = v48;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v57 != v39)
          {
            objc_enumerationMutation(v36);
          }

          [*(*(&v56 + 1) + 8 * j) frame];
          v70.origin.x = v41;
          v70.origin.y = v42;
          v70.size.width = v43;
          v70.size.height = v44;
          v68.origin.x = x;
          v68.origin.y = y;
          v68.size.width = width;
          v68.size.height = height;
          v69 = CGRectUnion(v68, v70);
          x = v69.origin.x;
          y = v69.origin.y;
          width = v69.size.width;
          height = v69.size.height;
        }

        v38 = [v36 countByEnumeratingWithState:&v56 objects:v65 count:16];
      }

      while (v38);
    }

    else
    {
      v9 = v48;
    }

    v15 = p_isa;
    [p_isa setBounds:{x, y, width, height}];
    v45 = [p_isa layer];
    [v45 setAnchorPoint:{a6.x, a6.y}];

    objc_storeStrong(p_isa + 51, v53);
    if ([v50 count])
    {
      objc_storeStrong(p_isa + 52, v50);
    }

    v46 = p_isa;
  }

  return v15;
}

- (MTUIBitmapHandView)initWithImage:(id)a3 rotationalCenter:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  [v7 size];
  v20.receiver = self;
  v20.super_class = MTUIBitmapHandView;
  v12 = [(MTUIBitmapHandView *)&v20 initWithFrame:v8, v9, v10, v11];
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v7];
    v15 = [v14 layer];
    [v15 setAllowsEdgeAntialiasing:1];

    [(NSArray *)v13 addObject:v14];
    [(MTUIBitmapHandView *)v12 addSubview:v14];
    v16 = [(MTUIBitmapHandView *)v12 layer];
    [v16 setAnchorPoint:{x, y}];

    partViews = v12->_partViews;
    v12->_partViews = v13;

    v18 = v12;
  }

  return v12;
}

@end