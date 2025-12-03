@interface ICTableContentView
- (BOOL)splitStroke:(id)stroke atRect:(CGRect)rect;
- (CGRect)exclusionRect;
- (ICTableContentView)initWithCoder:(id)coder;
- (ICTableContentView)initWithFrame:(CGRect)frame;
- (double)outerBorderWidth;
- (id)addSubstrokeWithFrame:(CGRect)frame toStroke:(id)stroke;
- (id)createStroke;
- (id)outerBorderColor;
- (void)layoutSubviews;
- (void)recursivelyUpdateLayer:(id)layer toColor:(CGColor *)color ignoreIfClear:(BOOL)clear;
- (void)registerForTraitChanges;
- (void)setExclusionRect:(CGRect)rect;
- (void)setHorizontalLinePosition:(id)position forKey:(id)key;
- (void)setVerticalLinePosition:(id)position forKey:(id)key;
- (void)sharedInit;
- (void)unsplitStroke:(id)stroke;
- (void)updateColors;
- (void)updateLayout;
@end

@implementation ICTableContentView

- (ICTableContentView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ICTableContentView;
  v3 = [(ICTableContentView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICTableContentView *)v3 sharedInit];
  }

  return v4;
}

- (ICTableContentView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ICTableContentView;
  v3 = [(ICTableContentView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(ICTableContentView *)v3 sharedInit];
  }

  return v4;
}

- (void)sharedInit
{
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(ICTableContentView *)self setBackgroundColor:clearColor];

  [(ICTableContentView *)self registerForTraitChanges];
  layer = [(ICTableContentView *)self layer];
  [layer setMasksToBounds:1];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  horizontalStrokes = self->_horizontalStrokes;
  self->_horizontalStrokes = dictionary;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  verticalStrokes = self->_verticalStrokes;
  self->_verticalStrokes = dictionary2;

  createStroke = [(ICTableContentView *)self createStroke];
  topBorder = self->_topBorder;
  self->_topBorder = createStroke;

  createStroke2 = [(ICTableContentView *)self createStroke];
  bottomBorder = self->_bottomBorder;
  self->_bottomBorder = createStroke2;

  createStroke3 = [(ICTableContentView *)self createStroke];
  leftBorder = self->_leftBorder;
  self->_leftBorder = createStroke3;

  createStroke4 = [(ICTableContentView *)self createStroke];
  rightBorder = self->_rightBorder;
  self->_rightBorder = createStroke4;

  horizontalStrokes = [(ICTableContentView *)self horizontalStrokes];
  v18 = self->_topBorder;
  uUID = [MEMORY[0x277CCAD78] UUID];
  [horizontalStrokes setObject:v18 forKey:uUID];

  horizontalStrokes2 = [(ICTableContentView *)self horizontalStrokes];
  v21 = self->_bottomBorder;
  uUID2 = [MEMORY[0x277CCAD78] UUID];
  [horizontalStrokes2 setObject:v21 forKey:uUID2];

  verticalStrokes = [(ICTableContentView *)self verticalStrokes];
  v24 = self->_leftBorder;
  uUID3 = [MEMORY[0x277CCAD78] UUID];
  [verticalStrokes setObject:v24 forKey:uUID3];

  verticalStrokes2 = [(ICTableContentView *)self verticalStrokes];
  v26 = self->_rightBorder;
  uUID4 = [MEMORY[0x277CCAD78] UUID];
  [verticalStrokes2 setObject:v26 forKey:uUID4];
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
  topBorder = [(ICTableContentView *)self topBorder];
  [topBorder setFrame:{0.0, 0.0, v6, v4}];

  [(ICTableContentView *)self alignedPosition:v8 - v4];
  v11 = v10;
  bottomBorder = [(ICTableContentView *)self bottomBorder];
  [bottomBorder setFrame:{0.0, v11, v6, v4}];

  leftBorder = [(ICTableContentView *)self leftBorder];
  [leftBorder setFrame:{0.0, 0.0, v4, v8}];

  rightBorder = [(ICTableContentView *)self rightBorder];
  [rightBorder setFrame:{v6 - v4, 0.0, v4, v8}];

  [(ICTableContentView *)self updateColors];
}

- (void)setExclusionRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v57 = *MEMORY[0x277D85DE8];
  self->_exclusionRect = rect;
  if (CGRectIsEmpty(rect))
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    horizontalStrokes = [(ICTableContentView *)self horizontalStrokes];
    allValues = [horizontalStrokes allValues];

    v10 = [allValues countByEnumeratingWithState:&v41 objects:v54 count:16];
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
            objc_enumerationMutation(allValues);
          }

          [(ICTableContentView *)self unsplitStroke:*(*(&v41 + 1) + 8 * i)];
        }

        v11 = [allValues countByEnumeratingWithState:&v41 objects:v54 count:16];
      }

      while (v11);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    verticalStrokes = [(ICTableContentView *)self verticalStrokes];
    allValues2 = [verticalStrokes allValues];

    v16 = [allValues2 countByEnumeratingWithState:&v37 objects:v53 count:16];
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
            objc_enumerationMutation(allValues2);
          }

          [(ICTableContentView *)self unsplitStroke:*(*(&v37 + 1) + 8 * j)];
        }

        v17 = [allValues2 countByEnumeratingWithState:&v37 objects:v53 count:16];
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
    horizontalStrokes2 = [(ICTableContentView *)self horizontalStrokes];
    allValues3 = [horizontalStrokes2 allValues];

    v28 = [allValues3 countByEnumeratingWithState:&v49 objects:v56 count:16];
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
            objc_enumerationMutation(allValues3);
          }

          [(ICTableContentView *)self splitStroke:*(*(&v49 + 1) + 8 * k) atRect:x, y, width, height];
        }

        v29 = [allValues3 countByEnumeratingWithState:&v49 objects:v56 count:16];
      }

      while (v29);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    verticalStrokes2 = [(ICTableContentView *)self verticalStrokes];
    allValues2 = [verticalStrokes2 allValues];

    v33 = [allValues2 countByEnumeratingWithState:&v45 objects:v55 count:16];
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
            objc_enumerationMutation(allValues2);
          }

          [(ICTableContentView *)self splitStroke:*(*(&v45 + 1) + 8 * m) atRect:x, y, width, height];
        }

        v34 = [allValues2 countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v34);
    }
  }
}

- (id)outerBorderColor
{
  innerBorderColor = [(ICTableContentView *)self innerBorderColor];
  highlightColor = [(ICTableContentView *)self highlightColor];
  v5 = [innerBorderColor ic_colorBlendedWithColor:highlightColor];

  return v5;
}

- (double)outerBorderWidth
{
  v3 = *MEMORY[0x277D364B0];
  highlightColor = [(ICTableContentView *)self highlightColor];
  [highlightColor alphaComponent];
  v6 = v5;
  [(ICTableContentView *)self innerBorderWidth];
  v8 = v7;
  highlightColor2 = [(ICTableContentView *)self highlightColor];
  [highlightColor2 alphaComponent];
  v11 = v8 * (1.0 - v10) + v3 * v6;

  return v11;
}

- (void)updateColors
{
  v39 = *MEMORY[0x277D85DE8];
  innerBorderColor = [(ICTableContentView *)self innerBorderColor];
  cGColor = [innerBorderColor CGColor];

  outerBorderColor = [(ICTableContentView *)self outerBorderColor];
  cGColor2 = [outerBorderColor CGColor];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  horizontalStrokes = [(ICTableContentView *)self horizontalStrokes];
  allValues = [horizontalStrokes allValues];

  v9 = [allValues countByEnumeratingWithState:&v33 objects:v38 count:16];
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
          objc_enumerationMutation(allValues);
        }

        layer = [*(*(&v33 + 1) + 8 * v12) layer];
        [(ICTableContentView *)self recursivelyUpdateLayer:layer toColor:cGColor ignoreIfClear:0];

        ++v12;
      }

      while (v10 != v12);
      v10 = [allValues countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v10);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  verticalStrokes = [(ICTableContentView *)self verticalStrokes];
  allValues2 = [verticalStrokes allValues];

  v16 = [allValues2 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
          objc_enumerationMutation(allValues2);
        }

        layer2 = [*(*(&v29 + 1) + 8 * v19) layer];
        [(ICTableContentView *)self recursivelyUpdateLayer:layer2 toColor:cGColor ignoreIfClear:0];

        ++v19;
      }

      while (v17 != v19);
      v17 = [allValues2 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v17);
  }

  topBorder = [(ICTableContentView *)self topBorder];
  layer3 = [topBorder layer];
  [(ICTableContentView *)self recursivelyUpdateLayer:layer3 toColor:cGColor2 ignoreIfClear:1];

  bottomBorder = [(ICTableContentView *)self bottomBorder];
  layer4 = [bottomBorder layer];
  [(ICTableContentView *)self recursivelyUpdateLayer:layer4 toColor:cGColor2 ignoreIfClear:1];

  rightBorder = [(ICTableContentView *)self rightBorder];
  layer5 = [rightBorder layer];
  [(ICTableContentView *)self recursivelyUpdateLayer:layer5 toColor:cGColor2 ignoreIfClear:1];

  leftBorder = [(ICTableContentView *)self leftBorder];
  layer6 = [leftBorder layer];
  [(ICTableContentView *)self recursivelyUpdateLayer:layer6 toColor:cGColor2 ignoreIfClear:1];
}

- (void)recursivelyUpdateLayer:(id)layer toColor:(CGColor *)color ignoreIfClear:(BOOL)clear
{
  clearCopy = clear;
  v21 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  clearColor = [MEMORY[0x277D75348] clearColor];
  cGColor = [clearColor CGColor];

  if (!clearCopy || !CGColorEqualToColor([layerCopy backgroundColor], cGColor))
  {
    [layerCopy setBackgroundColor:color];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  sublayers = [layerCopy sublayers];
  v12 = [sublayers countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(sublayers);
        }

        [(ICTableContentView *)self recursivelyUpdateLayer:*(*(&v16 + 1) + 8 * v15++) toColor:color ignoreIfClear:clearCopy];
      }

      while (v13 != v15);
      v13 = [sublayers countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (id)createStroke
{
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  innerBorderColor = [(ICTableContentView *)self innerBorderColor];
  cGColor = [innerBorderColor CGColor];
  layer = [v3 layer];
  [layer setBackgroundColor:cGColor];

  [(ICTableContentView *)self insertSubview:v3 atIndex:0];

  return v3;
}

- (void)setVerticalLinePosition:(id)position forKey:(id)key
{
  positionCopy = position;
  keyCopy = key;
  verticalStrokes = [(ICTableContentView *)self verticalStrokes];
  createStroke = [verticalStrokes objectForKey:keyCopy];

  if (positionCopy)
  {
    if (!createStroke)
    {
      createStroke = [(ICTableContentView *)self createStroke];
      [createStroke setAutoresizingMask:20];
      verticalStrokes2 = [(ICTableContentView *)self verticalStrokes];
      [verticalStrokes2 setObject:createStroke forKey:keyCopy];
    }

    [(ICTableContentView *)self innerBorderWidth];
    v11 = v10;
    [positionCopy doubleValue];
    [(ICTableContentView *)self alignedPosition:?];
    v13 = v12;
    [(ICTableContentView *)self bounds];
    [createStroke setFrame:{v13, 0.0, v11}];
  }

  else if (createStroke)
  {
    [createStroke removeFromSuperview];
    verticalStrokes3 = [(ICTableContentView *)self verticalStrokes];
    [verticalStrokes3 removeObjectForKey:keyCopy];
  }
}

- (void)setHorizontalLinePosition:(id)position forKey:(id)key
{
  positionCopy = position;
  keyCopy = key;
  horizontalStrokes = [(ICTableContentView *)self horizontalStrokes];
  createStroke = [horizontalStrokes objectForKey:keyCopy];

  if (positionCopy)
  {
    if (!createStroke)
    {
      createStroke = [(ICTableContentView *)self createStroke];
      [createStroke setAutoresizingMask:34];
      horizontalStrokes2 = [(ICTableContentView *)self horizontalStrokes];
      [horizontalStrokes2 setObject:createStroke forKey:keyCopy];
    }

    [(ICTableContentView *)self innerBorderWidth];
    [positionCopy doubleValue];
    [(ICTableContentView *)self alignedPosition:?];
    v11 = v10;
    [(ICTableContentView *)self bounds];
    [createStroke setFrame:{0.0, v11}];
  }

  else if (createStroke)
  {
    [createStroke removeFromSuperview];
    horizontalStrokes3 = [(ICTableContentView *)self horizontalStrokes];
    [horizontalStrokes3 removeObjectForKey:keyCopy];
  }
}

- (id)addSubstrokeWithFrame:(CGRect)frame toStroke:(id)stroke
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  strokeCopy = stroke;
  [strokeCopy convertRect:self fromView:{x, y, width, height}];
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
    innerBorderColor = [(ICTableContentView *)self innerBorderColor];
    [v14 setBackgroundColor:{objc_msgSend(innerBorderColor, "CGColor")}];

    layer = [strokeCopy layer];
    [layer addSublayer:v14];
  }

  return v14;
}

- (BOOL)splitStroke:(id)stroke atRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  strokeCopy = stroke;
  [(ICTableContentView *)self unsplitStroke:strokeCopy];
  [strokeCopy frame];
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

  [strokeCopy bounds];
  v15 = v14;
  [strokeCopy bounds];
  v17 = v16;
  [strokeCopy frame];
  if (v15 <= v17)
  {
    MaxX = CGRectGetMaxX(*&v18);
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    if (MaxX > CGRectGetMinX(v58) + 1.0)
    {
      [strokeCopy frame];
      MinX = CGRectGetMinX(v59);
      v60.origin.x = x;
      v60.origin.y = y;
      v60.size.width = width;
      v60.size.height = height;
      if (MinX < CGRectGetMaxX(v60) + -1.0)
      {
        clearColor = [MEMORY[0x277D75348] clearColor];
        cGColor = [clearColor CGColor];
        layer = [strokeCopy layer];
        [layer setBackgroundColor:cGColor];

        [strokeCopy frame];
        v43 = v42;
        [strokeCopy bounds];
        v44 = [(ICTableContentView *)self addSubstrokeWithFrame:strokeCopy toStroke:v43, 0.0];
        [strokeCopy frame];
        v30 = v45;
        v61.origin.x = x;
        v61.origin.y = y;
        v61.size.width = width;
        v61.size.height = height;
        MaxY = CGRectGetMaxY(v61);
        [strokeCopy bounds];
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

  [strokeCopy frame];
  MinY = CGRectGetMinY(v54);
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  if (MinY >= CGRectGetMaxY(v55) + -1.0)
  {
    goto LABEL_10;
  }

  clearColor2 = [MEMORY[0x277D75348] clearColor];
  cGColor2 = [clearColor2 CGColor];
  layer2 = [strokeCopy layer];
  [layer2 setBackgroundColor:cGColor2];

  [strokeCopy frame];
  v28 = v27;
  [strokeCopy bounds];
  v29 = [(ICTableContentView *)self addSubstrokeWithFrame:strokeCopy toStroke:0.0, v28, x];
  v56.origin.x = x;
  v56.origin.y = y;
  v56.size.width = width;
  v56.size.height = height;
  v30 = CGRectGetMaxX(v56);
  [strokeCopy frame];
  MaxY = v31;
  [(ICTableContentView *)self bounds];
  v34 = v33;
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  v35 = v34 - CGRectGetMaxX(v57);
  [strokeCopy bounds];
LABEL_9:
  v49 = [(ICTableContentView *)self addSubstrokeWithFrame:strokeCopy toStroke:v30, MaxY, v35, v36];
  v50 = 1;
LABEL_11:

  return v50;
}

- (void)unsplitStroke:(id)stroke
{
  v20 = *MEMORY[0x277D85DE8];
  strokeCopy = stroke;
  innerBorderColor = [(ICTableContentView *)self innerBorderColor];
  cGColor = [innerBorderColor CGColor];
  layer = [strokeCopy layer];
  [layer setBackgroundColor:cGColor];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  layer2 = [strokeCopy layer];
  sublayers = [layer2 sublayers];
  v10 = [sublayers copy];

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
  systemTraitsAffectingColorAppearance = [MEMORY[0x277D75C80] systemTraitsAffectingColorAppearance];
  v3 = [(ICTableContentView *)self registerForTraitChanges:systemTraitsAffectingColorAppearance withAction:sel_updateColors];
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