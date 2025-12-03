@interface DKInkRendererCG
- (CGRect)invalidRect;
- (DKInkRendererCG)initWithCoder:(id)coder;
- (DKInkRendererCG)initWithFrame:(CGRect)frame;
- (DKInkRendererDelegate)delegate;
- (id)snapshotImage;
- (void)_commonInit;
- (void)addPoint:(id *)point;
- (void)beginStroke;
- (void)clear;
- (void)dealloc;
- (void)display;
- (void)drawRect:(CGRect)rect;
- (void)endStroke;
@end

@implementation DKInkRendererCG

- (DKInkRendererCG)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = DKInkRendererCG;
  v3 = [(DKInkRendererCG *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(DKInkRendererCG *)v3 _commonInit];
  }

  return v4;
}

- (DKInkRendererCG)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DKInkRendererCG;
  v3 = [(DKInkRendererCG *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(DKInkRendererCG *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  [(DKInkRendererCG *)self setClearsContextBeforeDrawing:0];
  [(DKInkRendererCG *)self setOpaque:1];
  [(DKInkRendererCG *)self setExclusiveTouch:1];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [(DKInkRendererCG *)self setBackgroundColor:systemBackgroundColor];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = DKInkRendererCG;
  [(DKInkRendererCG *)&v2 dealloc];
}

- (void)beginStroke
{
  v3 = *(MEMORY[0x277CBF398] + 16);
  self->_invalidRect.origin = *MEMORY[0x277CBF398];
  self->_invalidRect.size = v3;
  if (!self->_cachedInterpolatedBrushStrokes)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:200];
    cachedInterpolatedBrushStrokes = self->_cachedInterpolatedBrushStrokes;
    self->_cachedInterpolatedBrushStrokes = v4;
  }

  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:2000];
  currentInterpolatedBrushStroke = self->_currentInterpolatedBrushStroke;
  self->_currentInterpolatedBrushStroke = v6;
}

- (void)addPoint:(id *)point
{
  v5 = *&point->var1;
  v15[0] = point->var0;
  v15[1] = v5;
  var3 = point->var3;
  v6 = [MEMORY[0x277CCAE60] dk_valueWithRenderPoint:v15];
  [(NSMutableArray *)self->_currentInterpolatedBrushStroke addObject:v6];
  v7 = ClampToMinWidthCG(point->var1, 1.0);
  v8 = point->var0.x - v7 * 0.5;
  v9 = point->var0.y - v7 * 0.5;
  p_invalidRect = &self->_invalidRect;
  if (CGRectIsNull(self->_invalidRect))
  {
    v11 = v7;
  }

  else
  {
    v17.origin.x = p_invalidRect->origin.x;
    v17.origin.y = self->_invalidRect.origin.y;
    v17.size.width = self->_invalidRect.size.width;
    v17.size.height = self->_invalidRect.size.height;
    v18.origin.x = v8;
    v18.origin.y = v9;
    v18.size.width = v7;
    v18.size.height = v7;
    *(&v11 - 3) = CGRectUnion(v17, v18);
    v8 = v12;
    v9 = v13;
    v7 = v14;
  }

  p_invalidRect->origin.x = v8;
  self->_invalidRect.origin.y = v9;
  self->_invalidRect.size.width = v7;
  self->_invalidRect.size.height = v11;
}

- (void)endStroke
{
  if (self->_currentInterpolatedBrushStroke)
  {
    [(NSMutableArray *)self->_cachedInterpolatedBrushStrokes addObject:?];
    currentInterpolatedBrushStroke = self->_currentInterpolatedBrushStroke;
  }

  else
  {
    currentInterpolatedBrushStroke = 0;
  }

  self->_currentInterpolatedBrushStroke = 0;
}

- (void)clear
{
  cachedInterpolatedBrushStrokes = self->_cachedInterpolatedBrushStrokes;
  self->_cachedInterpolatedBrushStrokes = 0;

  currentInterpolatedBrushStroke = self->_currentInterpolatedBrushStroke;
  self->_currentInterpolatedBrushStroke = 0;

  v5 = *(MEMORY[0x277CBF398] + 16);
  self->_invalidRect.origin = *MEMORY[0x277CBF398];
  self->_invalidRect.size = v5;
  [(DKInkRendererCG *)self bounds];

  [(DKInkRendererCG *)self setNeedsDisplayInRect:?];
}

- (id)snapshotImage
{
  [(DKInkRendererCG *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v14.width = v7;
  v14.height = v9;
  UIGraphicsBeginImageContextWithOptions(v14, 0, 0.0);
  [(DKInkRendererCG *)self drawViewHierarchyInRect:1 afterScreenUpdates:v4, v6, v8, v10];
  v11 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v11;
}

- (void)display
{
  p_invalidRect = &self->_invalidRect;
  if (!CGRectIsNull(self->_invalidRect))
  {
    [(DKInkRendererCG *)self setNeedsDisplayInRect:p_invalidRect->origin.x, p_invalidRect->origin.y, p_invalidRect->size.width, p_invalidRect->size.height];
    v4 = *(MEMORY[0x277CBF398] + 16);
    p_invalidRect->origin = *MEMORY[0x277CBF398];
    p_invalidRect->size = v4;
    delegate = [(DKInkRendererCG *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate performSelector:sel_inkDidRender_ withObject:self];
    }
  }
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v59 = *MEMORY[0x277D85DE8];
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  inkColor = [(DKInkRendererCG *)self inkColor];
  CGContextSetFillColorWithColor(CurrentContext, [inkColor CGColor]);

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v10 = self->_cachedInterpolatedBrushStrokes;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v53;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v53 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v52 + 1) + 8 * i);
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v48 objects:v57 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v49;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v49 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v48 + 1) + 8 * j);
              v47 = 0;
              v45 = 0u;
              v46 = 0u;
              if (v21)
              {
                [v21 dk_renderPointValue];
                v23 = *(&v45 + 1);
                v22 = *&v45;
                v24 = *&v46;
              }

              else
              {
                v24 = 0.0;
                v23 = 0.0;
                v22 = 0.0;
              }

              v25 = ClampToMinWidthCG(v24, 1.0);
              v26 = v22 - v25 * 0.5;
              v27 = v23 - v25 * 0.5;
              v60.origin.x = v26;
              v60.origin.y = v27;
              v60.size.width = v25;
              v60.size.height = v25;
              v64.origin.x = x;
              v64.origin.y = y;
              v64.size.width = width;
              v64.size.height = height;
              if (CGRectIntersectsRect(v60, v64))
              {
                v61.origin.x = v26;
                v61.origin.y = v27;
                v61.size.width = v25;
                v61.size.height = v25;
                CGContextFillEllipseInRect(CurrentContext, v61);
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v48 objects:v57 count:16];
          }

          while (v18);
        }
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v12);
  }

  currentInterpolatedBrushStroke = self->_currentInterpolatedBrushStroke;
  if (currentInterpolatedBrushStroke)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v29 = currentInterpolatedBrushStroke;
    v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v41 objects:v56 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v42;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v42 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v41 + 1) + 8 * k);
          v47 = 0;
          v45 = 0u;
          v46 = 0u;
          if (v34)
          {
            [v34 dk_renderPointValue];
            v36 = *(&v45 + 1);
            v35 = *&v45;
            v37 = *&v46;
          }

          else
          {
            v37 = 0.0;
            v36 = 0.0;
            v35 = 0.0;
          }

          v38 = ClampToMinWidthCG(v37, 1.0);
          v39 = v35 - v38 * 0.5;
          v40 = v36 - v38 * 0.5;
          v62.origin.x = v39;
          v62.origin.y = v40;
          v62.size.width = v38;
          v62.size.height = v38;
          v65.origin.x = x;
          v65.origin.y = y;
          v65.size.width = width;
          v65.size.height = height;
          if (CGRectIntersectsRect(v62, v65))
          {
            v63.origin.x = v39;
            v63.origin.y = v40;
            v63.size.width = v38;
            v63.size.height = v38;
            CGContextFillEllipseInRect(CurrentContext, v63);
          }
        }

        v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v41 objects:v56 count:16];
      }

      while (v31);
    }
  }

  CGContextRestoreGState(CurrentContext);
}

- (DKInkRendererDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (CGRect)invalidRect
{
  x = self->_invalidRect.origin.x;
  y = self->_invalidRect.origin.y;
  width = self->_invalidRect.size.width;
  height = self->_invalidRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end