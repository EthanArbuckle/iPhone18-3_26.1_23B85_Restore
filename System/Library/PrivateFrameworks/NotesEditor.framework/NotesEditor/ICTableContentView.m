@interface ICTableContentView
- (BOOL)splitStroke:(id)a3 atRect:(CGRect)a4;
- (CGRect)exclusionRect;
- (ICTableContentView)initWithCoder:(id)a3;
- (ICTableContentView)initWithFrame:(CGRect)a3;
- (double)outerBorderWidth;
- (id)addSubstrokeWithFrame:(CGRect)a3 toStroke:(id)a4;
- (id)createStroke;
- (id)outerBorderColor;
- (void)layoutSubviews;
- (void)recursivelyUpdateLayer:(id)a3 toColor:(CGColor *)a4 ignoreIfClear:(BOOL)a5;
- (void)registerForTraitChanges;
- (void)setExclusionRect:(CGRect)a3;
- (void)setHorizontalLinePosition:(id)a3 forKey:(id)a4;
- (void)setVerticalLinePosition:(id)a3 forKey:(id)a4;
- (void)sharedInit;
- (void)unsplitStroke:(id)a3;
- (void)updateColors;
- (void)updateLayout;
@end

@implementation ICTableContentView

- (ICTableContentView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ICTableContentView;
  v3 = [(ICTableContentView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICTableContentView *)v3 sharedInit];
  }

  return v4;
}

- (ICTableContentView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICTableContentView;
  v3 = [(ICTableContentView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(ICTableContentView *)v3 sharedInit];
  }

  return v4;
}

- (void)sharedInit
{
  v3 = [MEMORY[0x277D75348] clearColor];
  [(ICTableContentView *)self setBackgroundColor:v3];

  [(ICTableContentView *)self registerForTraitChanges];
  v4 = [(ICTableContentView *)self layer];
  [v4 setMasksToBounds:1];

  v5 = [MEMORY[0x277CBEB38] dictionary];
  horizontalStrokes = self->_horizontalStrokes;
  self->_horizontalStrokes = v5;

  v7 = [MEMORY[0x277CBEB38] dictionary];
  verticalStrokes = self->_verticalStrokes;
  self->_verticalStrokes = v7;

  v9 = [(ICTableContentView *)self createStroke];
  topBorder = self->_topBorder;
  self->_topBorder = v9;

  v11 = [(ICTableContentView *)self createStroke];
  bottomBorder = self->_bottomBorder;
  self->_bottomBorder = v11;

  v13 = [(ICTableContentView *)self createStroke];
  leftBorder = self->_leftBorder;
  self->_leftBorder = v13;

  v15 = [(ICTableContentView *)self createStroke];
  rightBorder = self->_rightBorder;
  self->_rightBorder = v15;

  v17 = [(ICTableContentView *)self horizontalStrokes];
  v18 = self->_topBorder;
  v19 = [MEMORY[0x277CCAD78] UUID];
  [v17 setObject:v18 forKey:v19];

  v20 = [(ICTableContentView *)self horizontalStrokes];
  v21 = self->_bottomBorder;
  v22 = [MEMORY[0x277CCAD78] UUID];
  [v20 setObject:v21 forKey:v22];

  v23 = [(ICTableContentView *)self verticalStrokes];
  v24 = self->_leftBorder;
  v25 = [MEMORY[0x277CCAD78] UUID];
  [v23 setObject:v24 forKey:v25];

  v28 = [(ICTableContentView *)self verticalStrokes];
  v26 = self->_rightBorder;
  v27 = [MEMORY[0x277CCAD78] UUID];
  [v28 setObject:v26 forKey:v27];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ICTableContentView;
  [(ICTableContentView *)&v3 layoutSubviews];
  [(ICTableContentView *)self updateLayout];
}

- (void)updateLayout
{
  [(ICTableContentView *)self outerBorderWidth];
  v4 = v3;
  [(ICTableContentView *)self bounds];
  v6 = v5;
  v8 = v7;
  v9 = [(ICTableContentView *)self topBorder];
  [v9 setFrame:{0.0, 0.0, v6, v4}];

  [(ICTableContentView *)self alignedPosition:v8 - v4];
  v11 = v10;
  v12 = [(ICTableContentView *)self bottomBorder];
  [v12 setFrame:{0.0, v11, v6, v4}];

  v13 = [(ICTableContentView *)self leftBorder];
  [v13 setFrame:{0.0, 0.0, v4, v8}];

  v14 = [(ICTableContentView *)self rightBorder];
  [v14 setFrame:{v6 - v4, 0.0, v4, v8}];

  [(ICTableContentView *)self updateColors];
}

- (void)setExclusionRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v57 = *MEMORY[0x277D85DE8];
  self->_exclusionRect = a3;
  if (CGRectIsEmpty(a3))
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = [(ICTableContentView *)self horizontalStrokes];
    v9 = [v8 allValues];

    v10 = [v9 countByEnumeratingWithState:&v41 objects:v54 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v42;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v42 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(ICTableContentView *)self unsplitStroke:*(*(&v41 + 1) + 8 * i)];
        }

        v11 = [v9 countByEnumeratingWithState:&v41 objects:v54 count:16];
      }

      while (v11);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = [(ICTableContentView *)self verticalStrokes];
    v15 = [v14 allValues];

    v16 = [v15 countByEnumeratingWithState:&v37 objects:v53 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v38;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(ICTableContentView *)self unsplitStroke:*(*(&v37 + 1) + 8 * j)];
        }

        v17 = [v15 countByEnumeratingWithState:&v37 objects:v53 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    if (CGRectGetMinX(v58) < 2.0)
    {
      width = width + x + 1.0;
      x = -1.0;
    }

    v59.origin.x = x;
    v59.origin.y = y;
    v59.size.width = width;
    v59.size.height = height;
    if (CGRectGetMinY(v59) < 2.0)
    {
      height = height + y + 1.0;
      y = -1.0;
    }

    v60.origin.x = x;
    v60.origin.y = y;
    v60.size.width = width;
    v60.size.height = height;
    MaxX = CGRectGetMaxX(v60);
    [(ICTableContentView *)self bounds];
    if (MaxX > v21 + -2.0)
    {
      [(ICTableContentView *)self bounds];
      width = v22 + 1.0 - x;
    }

    v61.origin.x = x;
    v61.origin.y = y;
    v61.size.width = width;
    v61.size.height = height;
    MaxY = CGRectGetMaxY(v61);
    [(ICTableContentView *)self bounds];
    if (MaxY > v24 + -2.0)
    {
      [(ICTableContentView *)self bounds];
      height = v25 + 1.0 - y;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v26 = [(ICTableContentView *)self horizontalStrokes];
    v27 = [v26 allValues];

    v28 = [v27 countByEnumeratingWithState:&v49 objects:v56 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v50;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v50 != v30)
          {
            objc_enumerationMutation(v27);
          }

          [(ICTableContentView *)self splitStroke:*(*(&v49 + 1) + 8 * k) atRect:x, y, width, height];
        }

        v29 = [v27 countByEnumeratingWithState:&v49 objects:v56 count:16];
      }

      while (v29);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v32 = [(ICTableContentView *)self verticalStrokes];
    v15 = [v32 allValues];

    v33 = [v15 countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v46;
      do
      {
        for (m = 0; m != v34; ++m)
        {
          if (*v46 != v35)
          {
            objc_enumerationMutation(v15);
          }

          [(ICTableContentView *)self splitStroke:*(*(&v45 + 1) + 8 * m) atRect:x, y, width, height];
        }

        v34 = [v15 countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v34);
    }
  }
}

- (id)outerBorderColor
{
  v3 = [(ICTableContentView *)self innerBorderColor];
  v4 = [(ICTableContentView *)self highlightColor];
  v5 = [v3 ic_colorBlendedWithColor:v4];

  return v5;
}

- (double)outerBorderWidth
{
  v3 = *MEMORY[0x277D364B0];
  v4 = [(ICTableContentView *)self highlightColor];
  [v4 alphaComponent];
  v6 = v5;
  [(ICTableContentView *)self innerBorderWidth];
  v8 = v7;
  v9 = [(ICTableContentView *)self highlightColor];
  [v9 alphaComponent];
  v11 = v8 * (1.0 - v10) + v3 * v6;

  return v11;
}

- (void)updateColors
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [(ICTableContentView *)self innerBorderColor];
  v4 = [v3 CGColor];

  v5 = [(ICTableContentView *)self outerBorderColor];
  v6 = [v5 CGColor];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [(ICTableContentView *)self horizontalStrokes];
  v8 = [v7 allValues];

  v9 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v34;
    do
    {
      v12 = 0;
      do
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v33 + 1) + 8 * v12) layer];
        [(ICTableContentView *)self recursivelyUpdateLayer:v13 toColor:v4 ignoreIfClear:0];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v10);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = [(ICTableContentView *)self verticalStrokes];
  v15 = [v14 allValues];

  v16 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v29 + 1) + 8 * v19) layer];
        [(ICTableContentView *)self recursivelyUpdateLayer:v20 toColor:v4 ignoreIfClear:0];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v17);
  }

  v21 = [(ICTableContentView *)self topBorder];
  v22 = [v21 layer];
  [(ICTableContentView *)self recursivelyUpdateLayer:v22 toColor:v6 ignoreIfClear:1];

  v23 = [(ICTableContentView *)self bottomBorder];
  v24 = [v23 layer];
  [(ICTableContentView *)self recursivelyUpdateLayer:v24 toColor:v6 ignoreIfClear:1];

  v25 = [(ICTableContentView *)self rightBorder];
  v26 = [v25 layer];
  [(ICTableContentView *)self recursivelyUpdateLayer:v26 toColor:v6 ignoreIfClear:1];

  v27 = [(ICTableContentView *)self leftBorder];
  v28 = [v27 layer];
  [(ICTableContentView *)self recursivelyUpdateLayer:v28 toColor:v6 ignoreIfClear:1];
}

- (void)recursivelyUpdateLayer:(id)a3 toColor:(CGColor *)a4 ignoreIfClear:(BOOL)a5
{
  v5 = a5;
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [MEMORY[0x277D75348] clearColor];
  v10 = [v9 CGColor];

  if (!v5 || !CGColorEqualToColor([v8 backgroundColor], v10))
  {
    [v8 setBackgroundColor:a4];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = [v8 sublayers];
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(ICTableContentView *)self recursivelyUpdateLayer:*(*(&v16 + 1) + 8 * v15++) toColor:a4 ignoreIfClear:v5];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (id)createStroke
{
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  v4 = [(ICTableContentView *)self innerBorderColor];
  v5 = [v4 CGColor];
  v6 = [v3 layer];
  [v6 setBackgroundColor:v5];

  [(ICTableContentView *)self insertSubview:v3 atIndex:0];

  return v3;
}

- (void)setVerticalLinePosition:(id)a3 forKey:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [(ICTableContentView *)self verticalStrokes];
  v8 = [v7 objectForKey:v6];

  if (v15)
  {
    if (!v8)
    {
      v8 = [(ICTableContentView *)self createStroke];
      [v8 setAutoresizingMask:20];
      v9 = [(ICTableContentView *)self verticalStrokes];
      [v9 setObject:v8 forKey:v6];
    }

    [(ICTableContentView *)self innerBorderWidth];
    v11 = v10;
    [v15 doubleValue];
    [(ICTableContentView *)self alignedPosition:?];
    v13 = v12;
    [(ICTableContentView *)self bounds];
    [v8 setFrame:{v13, 0.0, v11}];
  }

  else if (v8)
  {
    [v8 removeFromSuperview];
    v14 = [(ICTableContentView *)self verticalStrokes];
    [v14 removeObjectForKey:v6];
  }
}

- (void)setHorizontalLinePosition:(id)a3 forKey:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(ICTableContentView *)self horizontalStrokes];
  v8 = [v7 objectForKey:v6];

  if (v13)
  {
    if (!v8)
    {
      v8 = [(ICTableContentView *)self createStroke];
      [v8 setAutoresizingMask:34];
      v9 = [(ICTableContentView *)self horizontalStrokes];
      [v9 setObject:v8 forKey:v6];
    }

    [(ICTableContentView *)self innerBorderWidth];
    [v13 doubleValue];
    [(ICTableContentView *)self alignedPosition:?];
    v11 = v10;
    [(ICTableContentView *)self bounds];
    [v8 setFrame:{0.0, v11}];
  }

  else if (v8)
  {
    [v8 removeFromSuperview];
    v12 = [(ICTableContentView *)self horizontalStrokes];
    [v12 removeObjectForKey:v6];
  }
}

- (id)addSubstrokeWithFrame:(CGRect)a3 toStroke:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  [v9 convertRect:self fromView:{x, y, width, height}];
  v10 = v19.origin.x;
  v11 = v19.origin.y;
  v12 = v19.size.width;
  v13 = v19.size.height;
  if (CGRectIsEmpty(v19))
  {
    v14 = 0;
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    [v14 setFrame:{v10, v11, v12, v13}];
    v15 = [(ICTableContentView *)self innerBorderColor];
    [v14 setBackgroundColor:{objc_msgSend(v15, "CGColor")}];

    v16 = [v9 layer];
    [v16 addSublayer:v14];
  }

  return v14;
}

- (BOOL)splitStroke:(id)a3 atRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  [(ICTableContentView *)self unsplitStroke:v9];
  [v9 frame];
  v63.origin.x = v10;
  v63.origin.y = v11;
  v63.size.width = v12;
  v63.size.height = v13;
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  if (!CGRectIntersectsRect(v52, v63))
  {
    goto LABEL_10;
  }

  [v9 bounds];
  v15 = v14;
  [v9 bounds];
  v17 = v16;
  [v9 frame];
  if (v15 <= v17)
  {
    MaxX = CGRectGetMaxX(*&v18);
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    if (MaxX > CGRectGetMinX(v58) + 1.0)
    {
      [v9 frame];
      MinX = CGRectGetMinX(v59);
      v60.origin.x = x;
      v60.origin.y = y;
      v60.size.width = width;
      v60.size.height = height;
      if (MinX < CGRectGetMaxX(v60) + -1.0)
      {
        v39 = [MEMORY[0x277D75348] clearColor];
        v40 = [v39 CGColor];
        v41 = [v9 layer];
        [v41 setBackgroundColor:v40];

        [v9 frame];
        v43 = v42;
        [v9 bounds];
        v44 = [(ICTableContentView *)self addSubstrokeWithFrame:v9 toStroke:v43, 0.0];
        [v9 frame];
        v30 = v45;
        v61.origin.x = x;
        v61.origin.y = y;
        v61.size.width = width;
        v61.size.height = height;
        MaxY = CGRectGetMaxY(v61);
        [v9 bounds];
        v35 = v46;
        [(ICTableContentView *)self bounds];
        v48 = v47;
        v62.origin.x = x;
        v62.origin.y = y;
        v62.size.width = width;
        v62.size.height = height;
        v36 = v48 - CGRectGetMaxY(v62);
        goto LABEL_9;
      }
    }

LABEL_10:
    v50 = 0;
    goto LABEL_11;
  }

  v22 = CGRectGetMaxY(*&v18);
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  if (v22 <= CGRectGetMinY(v53) + 1.0)
  {
    goto LABEL_10;
  }

  [v9 frame];
  MinY = CGRectGetMinY(v54);
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  if (MinY >= CGRectGetMaxY(v55) + -1.0)
  {
    goto LABEL_10;
  }

  v24 = [MEMORY[0x277D75348] clearColor];
  v25 = [v24 CGColor];
  v26 = [v9 layer];
  [v26 setBackgroundColor:v25];

  [v9 frame];
  v28 = v27;
  [v9 bounds];
  v29 = [(ICTableContentView *)self addSubstrokeWithFrame:v9 toStroke:0.0, v28, x];
  v56.origin.x = x;
  v56.origin.y = y;
  v56.size.width = width;
  v56.size.height = height;
  v30 = CGRectGetMaxX(v56);
  [v9 frame];
  MaxY = v31;
  [(ICTableContentView *)self bounds];
  v34 = v33;
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  v35 = v34 - CGRectGetMaxX(v57);
  [v9 bounds];
LABEL_9:
  v49 = [(ICTableContentView *)self addSubstrokeWithFrame:v9 toStroke:v30, MaxY, v35, v36];
  v50 = 1;
LABEL_11:

  return v50;
}

- (void)unsplitStroke:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICTableContentView *)self innerBorderColor];
  v6 = [v5 CGColor];
  v7 = [v4 layer];
  [v7 setBackgroundColor:v6];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v4 layer];
  v9 = [v8 sublayers];
  v10 = [v9 copy];

  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14++) removeFromSuperlayer];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)registerForTraitChanges
{
  v4 = [MEMORY[0x277D75C80] systemTraitsAffectingColorAppearance];
  v3 = [(ICTableContentView *)self registerForTraitChanges:v4 withAction:sel_updateColors];
}

- (CGRect)exclusionRect
{
  x = self->_exclusionRect.origin.x;
  y = self->_exclusionRect.origin.y;
  width = self->_exclusionRect.size.width;
  height = self->_exclusionRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end