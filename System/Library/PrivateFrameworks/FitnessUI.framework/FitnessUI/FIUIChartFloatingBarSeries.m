@interface FIUIChartFloatingBarSeries
- (void)_loadFromDataSet;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)layoutSubviews;
@end

@implementation FIUIChartFloatingBarSeries

- (void)_loadFromDataSet
{
  v74 = *MEMORY[0x1E69E9840];
  [(FIUIChartFloatingBarSeries *)self cornerRadius];
  v4 = v3;
  v5 = [(FIUIChartSeries *)self maxYValue];
  [v5 doubleValue];
  v7 = v6;
  v8 = [(FIUIChartSeries *)self minYValue];
  [v8 doubleValue];
  v10 = v9;

  [(FIUIChartSeries *)self insetBounds];
  v12 = 0.0;
  if (v11 > 2.22044605e-16)
  {
    v12 = (v7 - v10) * (v4 * 3.0 / v11);
  }

  v61 = v12;
  v13 = [MEMORY[0x1E695DF70] array];
  barRects = self->_barRects;
  v58 = 496;
  self->_barRects = v13;

  v15 = [MEMORY[0x1E695DF70] array];
  barLabelTopPoints = self->_barLabelTopPoints;
  self->_barLabelTopPoints = v15;

  v17 = [MEMORY[0x1E695DF70] array];
  barLabelBottomPoints = self->_barLabelBottomPoints;
  self->_barLabelBottomPoints = v17;

  v19 = [MEMORY[0x1E695DF70] array];
  barLabels = self->_barLabels;
  self->_barLabels = v19;

  v60 = [(FIUIChartSeries *)self labelsFromDataSet];
  v65 = [MEMORY[0x1E695DF70] array];
  v21 = [(FIUIChartSeries *)self dataSet];
  v22 = [v21 points];
  v23 = [v22 count];

  if (v23)
  {
    v24 = 0;
    do
    {
      v25 = [(FIUIChartSeries *)self dataSet];
      v26 = [v25 points];
      v27 = [v26 objectAtIndexedSubscript:v24];

      [(FIUIChartSeries *)self xValueForPointFromChartPoint:v27];
      v29 = v28;
      v30 = [v27 yValue];
      v31 = [MEMORY[0x1E695DF70] array];
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __46__FIUIChartFloatingBarSeries__loadFromDataSet__block_invoke;
      v70[3] = &unk_1E878CE88;
      v32 = v31;
      v71 = v32;
      v72 = v61;
      v64 = v30;
      [v30 enumerateRangesUsingBlock:v70];
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v33 = v32;
      v34 = [v33 countByEnumeratingWithState:&v66 objects:v73 count:16];
      if (v34)
      {
        v35 = v34;
        v62 = v27;
        v63 = v24;
        v36 = 0;
        v37 = 0;
        v38 = *v67;
        do
        {
          v39 = 0;
          v40 = v36;
          do
          {
            if (*v67 != v38)
            {
              objc_enumerationMutation(v33);
            }

            v41 = [*(*(&v66 + 1) + 8 * v39) rangeValue];
            v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v42 + v41 - 1];
            [(FIUIChartSeries *)self yValueForPointFromChartPointValue:v43];
            v45 = v44;

            v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v41];
            [(FIUIChartSeries *)self yValueForPointFromChartPointValue:v46];
            v48 = v47 - v45;

            v49 = [MEMORY[0x1E696B098] valueWithCGRect:{v29 - v4, v45 - v4, v4 + v4, v48 + v4 * 2.0}];
            [v65 addObject:v49];

            v36 = [MEMORY[0x1E696B098] valueWithCGPoint:{v29, v45 - v4}];

            if (!v37)
            {
              v37 = [MEMORY[0x1E696B098] valueWithCGPoint:{v29, v4 + v45}];
            }

            ++v39;
            v40 = v36;
          }

          while (v35 != v39);
          v35 = [v33 countByEnumeratingWithState:&v66 objects:v73 count:16];
        }

        while (v35);

        if (v36)
        {
          v27 = v62;
          v24 = v63;
          if (v63 < [v60 count])
          {
            v50 = self->_barLabels;
            v51 = [v60 objectAtIndexedSubscript:v63];
            v52 = [v51 firstObject];
            [(NSMutableArray *)v50 addObject:v52];

            [(NSMutableArray *)self->_barLabelTopPoints addObject:v36];
            [(NSMutableArray *)self->_barLabelBottomPoints addObject:v37];
          }
        }

        else
        {
          v27 = v62;
          v24 = v63;
        }
      }

      else
      {

        v37 = 0;
        v36 = 0;
      }

      ++v24;
      v53 = [(FIUIChartSeries *)self dataSet];
      v54 = [v53 points];
      v55 = [v54 count];
    }

    while (v24 < v55);
  }

  v56 = [MEMORY[0x1E695DEC8] arrayWithArray:{v65, v58}];
  v57 = *(&self->super.super.super.super.isa + v59);
  *(&self->super.super.super.super.isa + v59) = v56;
}

void __46__FIUIChartFloatingBarSeries__loadFromDataSet__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) lastObject];

  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = [*(a1 + 32) lastObject];
    v9 = [v8 rangeValue];
    v11 = v10;

    if (*(a1 + 40) > (a2 - (v11 + v9) + 1))
    {
      v12 = a2 + a3 - v9;
      v13 = *(a1 + 32);
      v14 = [v13 count] - 1;
      v18 = [MEMORY[0x1E696B098] valueWithRange:{v9, v12}];
      [v13 replaceObjectAtIndex:v14 withObject:?];
      goto LABEL_7;
    }

    v17 = *(a1 + 32);
    v15 = [MEMORY[0x1E696B098] valueWithRange:{a2, a3}];
    v16 = v17;
  }

  else
  {
    v15 = [MEMORY[0x1E696B098] valueWithRange:{a2, a3}];
    v16 = v7;
  }

  v18 = v15;
  [v16 addObject:?];
LABEL_7:
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = FIUIChartFloatingBarSeries;
  [(FIUIChartSeries *)&v4 layoutSubviews];
  [(FIUIChartFloatingBarSeries *)self _loadFromDataSet];
  v3 = [(FIUIChartFloatingBarSeries *)self layer];
  [v3 setNeedsDisplay];
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  v48 = *MEMORY[0x1E69E9840];
  UIGraphicsPushContext(a4);
  if (self->_cornerRadius <= 2.22044605e-16)
  {
    cornerRadius = 1.0;
  }

  else
  {
    cornerRadius = self->_cornerRadius;
  }

  if (self->_outlineWidth > 0.0 && self->_outlineColor)
  {
    CGContextSaveGState(a4);
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v7 = self->_barRects;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v43;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v43 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v42 + 1) + 8 * i) CGRectValue];
          v50 = CGRectInset(v49, -self->_outlineWidth, -self->_outlineWidth);
          v12 = CGPathCreateWithRoundedRect(v50, cornerRadius + self->_outlineWidth, cornerRadius + self->_outlineWidth, 0);
          CGContextAddPath(a4, v12);
          CGPathRelease(v12);
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v9);
    }

    CGContextSetFillColorWithColor(a4, [(UIColor *)self->_outlineColor CGColor]);
    CGContextDrawPath(a4, kCGPathFill);
    CGContextRestoreGState(a4);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = self->_barRects;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v39;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v38 + 1) + 8 * j) CGRectValue];
        v18 = CGPathCreateWithRoundedRect(v51, cornerRadius, cornerRadius, 0);
        CGContextAddPath(a4, v18);
        CGPathRelease(v18);
      }

      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v15);
  }

  if ([(NSMutableArray *)self->_barLabels count])
  {
    v19 = 0;
    do
    {
      v20 = [(NSMutableArray *)self->_barLabels objectAtIndexedSubscript:v19, v38];
      v21 = [(NSMutableArray *)self->_barLabelTopPoints objectAtIndexedSubscript:v19];
      [v21 CGPointValue];
      v23 = v22;
      v25 = v24;

      if ([v20 length])
      {
        [v20 boundingRectWithSize:0 options:self->_labelAttributes attributes:0 context:{1.79769313e308, 1.79769313e308}];
        v27 = v26;
        v29 = v25 - v28;
        if (v29 < 0.0)
        {
          v30 = [(NSMutableArray *)self->_barLabelBottomPoints objectAtIndexedSubscript:v19];
          [v30 CGPointValue];
          v29 = v31;
        }

        if (v23 + v27 * -0.5 >= 0.0)
        {
          v32 = v23 + v27 * -0.5;
        }

        else
        {
          v32 = 0.0;
        }

        [(FIUIChartFloatingBarSeries *)self bounds];
        v34 = v33 - v27;
        if (v32 < v33 - v27)
        {
          v34 = v32;
        }

        [v20 drawAtPoint:self->_labelAttributes withAttributes:{v34, v29}];
      }

      ++v19;
    }

    while (v19 < [(NSMutableArray *)self->_barLabels count]);
  }

  barColor = self->_barColor;
  if (barColor)
  {
    v36 = barColor;
  }

  else
  {
    v36 = [MEMORY[0x1E69DC888] whiteColor];
  }

  v37 = v36;
  CGContextSetFillColorWithColor(a4, [(UIColor *)v36 CGColor]);
  CGContextDrawPath(a4, kCGPathFill);
  UIGraphicsPopContext();
}

@end