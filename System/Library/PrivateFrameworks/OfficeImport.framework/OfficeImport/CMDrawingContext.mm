@interface CMDrawingContext
- (CGAffineTransform)currentTransform;
- (CGRect)_transformRect:(CGRect)a3 withTransform:(id)a4;
- (CGRect)frame;
- (CGRect)transformRectToGroup:(CGRect)a3;
- (CGRect)transformRectToPage:(CGRect)a3;
- (CMDrawableMapper)mapper;
- (CMDrawingContext)initWithFrame:(CGRect)a3;
- (float)currentScaleFactor;
- (id)copyPDF;
- (void)_addTransform:(id)a3;
- (void)_applyTransform:(id)a3;
- (void)_closeContext;
- (void)_copyCGContext;
- (void)_playbackActions;
- (void)_restoreLastTransform;
- (void)addDebugPath:(CGPath *)a3;
- (void)addPath:(CGPath *)a3;
- (void)addTransform:(id)a3;
- (void)dealloc;
- (void)restoreLastTransform;
- (void)setFillColor:(CGColor *)a3;
- (void)setFillImage:(CGImage *)a3;
- (void)setLineDash:(id)a3;
- (void)setLineWidth:(float)a3;
- (void)setStrokeColor:(CGColor *)a3;
@end

@implementation CMDrawingContext

- (id)copyPDF
{
  result = [(NSMutableArray *)self->_actions count];
  if (result)
  {
    v4 = objc_opt_new();
    transforms = self->_transforms;
    self->_transforms = v4;

    v6 = [MEMORY[0x277CCA878] transform];
    currentTransform = self->_currentTransform;
    self->_currentTransform = v6;

    [(CMDrawingContext *)self _copyCGContext];
    [(CMDrawingContext *)self _playbackActions];
    [(CMDrawingContext *)self _closeContext];
    result = self->_data;
    self->_data = 0;
  }

  return result;
}

- (void)dealloc
{
  cgContext = self->_cgContext;
  if (cgContext)
  {
    CGContextRelease(cgContext);
    self->_cgContext = 0;
  }

  dataConsumer = self->_dataConsumer;
  if (dataConsumer)
  {
    CGDataConsumerRelease(dataConsumer);
    self->_dataConsumer = 0;
  }

  data = self->_data;
  if (data)
  {
    CFRelease(data);
    self->_data = 0;
  }

  v6.receiver = self;
  v6.super_class = CMDrawingContext;
  [(CMDrawingContext *)&v6 dealloc];
}

- (CGAffineTransform)currentTransform
{
  result = self->_currentTransform;
  if (result)
  {
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    result = [(CGAffineTransform *)result transformStruct];
    v5 = v8;
    v6 = v9;
    v7 = v10;
  }

  else
  {
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  *&retstr->a = v5;
  *&retstr->c = v6;
  *&retstr->tx = v7;
  return result;
}

- (void)_copyCGContext
{
  if (!self->_cgContext)
  {
    Mutable = CFDataCreateMutable(0, 0);
    self->_data = Mutable;
    v4 = CGDataConsumerCreateWithCFData(Mutable);
    self->_dataConsumer = v4;
    if (v4)
    {
      [(CMDrawingContext *)self pdfFrame];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v14.origin.x = 0.0;
      v14.origin.y = 0.0;
      v14.size.width = v11;
      v14.size.height = v9;
      cgContext = CGPDFContextCreate(self->_dataConsumer, &v14, 0);
      self->_cgContext = cgContext;
      if (!cgContext)
      {
        CFShow(@"Cannot create PDF context");
        CFRelease(self->_data);
        CFRelease(self->_dataConsumer);
        cgContext = self->_cgContext;
      }

      CGContextBeginPage(cgContext, &v14);
      CGContextSetShouldAntialias(self->_cgContext, 1);
      CGContextTranslateCTM(self->_cgContext, -v6, v8 + v10);
      CGContextScaleCTM(self->_cgContext, 1.0, -1.0);
      [(CMDrawingContext *)self _applyTransform:self->_currentTransform];
    }

    else
    {
      CFShow(@"Cannot create DataConsumer");
      data = self->_data;

      CFRelease(data);
    }
  }
}

- (void)_playbackActions
{
  v3 = [(NSMutableArray *)self->_actions count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [(NSMutableArray *)self->_actions objectAtIndex:i];
      v7 = [v6 type];
      if (v7 <= 3)
      {
        if (v7 > 1)
        {
          cgContext = self->_cgContext;
          if (v7 == 2)
          {
            v15 = [v6 value];
            CGContextSetStrokeColorWithColor(cgContext, v15);
          }

          else
          {
            v15 = [v6 value];
            CGContextSetFillColorWithColor(cgContext, v15);
          }
        }

        else
        {
          if (v7)
          {
            if (v7 == 1)
            {
              [(CMDrawingContext *)self _restoreLastTransform];
            }

            goto LABEL_30;
          }

          v15 = [v6 value];
          [(CMDrawingContext *)self _addTransform:v15];
        }
      }

      else if (v7 <= 5)
      {
        if (v7 == 4)
        {
          self->_fillImage = [v6 value];
        }

        else
        {
          self->_fillImage = 0;
        }
      }

      else
      {
        switch(v7)
        {
          case 6:
            v16 = self->_cgContext;
            [v6 floatValue];
            CGContextSetLineWidth(v16, v17);
            break;
          case 7:
            v18 = [v6 value];
            v19 = [v18 count];

            if (v19)
            {
              v20 = smalloc_typed(v19, 8uLL, 0x100004000313F17uLL);
              for (j = 0; j != v19; ++j)
              {
                v22 = [v6 value];
                v23 = [v22 objectAtIndex:j];
                [v23 floatValue];
                v20[j] = v24;
              }
            }

            else
            {
              v20 = 0;
            }

            CGContextSetLineDash(self->_cgContext, 0.0, v20, v19);
            free(v20);
            break;
          case 8:
            v8 = self->_cgContext;
            if (self->_fillImage)
            {
              CGContextSaveGState(self->_cgContext);
              v9 = [v6 value];
              BoundingBox = CGPathGetBoundingBox(v9);
              x = BoundingBox.origin.x;
              y = BoundingBox.origin.y;
              width = BoundingBox.size.width;
              height = BoundingBox.size.height;
              CGContextAddPath(self->_cgContext, v9);
              CGContextClip(self->_cgContext);
              CGContextScaleCTM(self->_cgContext, 1.0, -1.0);
              v27.origin.y = -height - y;
              v27.origin.x = x;
              v27.size.width = width;
              v27.size.height = height;
              CGContextDrawImage(self->_cgContext, v27, self->_fillImage);
              CGContextRestoreGState(self->_cgContext);
            }

            else
            {
              v25 = [v6 value];
              CGContextAddPath(v8, v25);

              CGContextDrawPath(self->_cgContext, kCGPathFillStroke);
            }

            break;
        }
      }

LABEL_30:
    }
  }
}

- (void)_closeContext
{
  cgContext = self->_cgContext;
  if (cgContext)
  {
    CGContextEndPage(cgContext);
    v4 = self->_cgContext;
    if (v4)
    {
      CGContextRelease(v4);
      self->_cgContext = 0;
    }

    dataConsumer = self->_dataConsumer;
    if (dataConsumer)
    {
      CGDataConsumerRelease(dataConsumer);
      self->_dataConsumer = 0;
    }
  }
}

- (void)restoreLastTransform
{
  [(CMDrawingContext *)self _restoreLastTransform];
  v3 = [[CMDrawingAction alloc] initWithType:1 andValue:0];
  [(NSMutableArray *)self->_actions addObject:?];
}

- (void)_restoreLastTransform
{
  v3 = [(NSMutableArray *)self->_transforms lastObject];
  currentTransform = self->_currentTransform;
  self->_currentTransform = v3;

  transforms = self->_transforms;

  [(NSMutableArray *)transforms removeLastObject];
}

- (CMDrawableMapper)mapper
{
  WeakRetained = objc_loadWeakRetained(&self->_mapper);

  return WeakRetained;
}

- (CMDrawingContext)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17.receiver = self;
  v17.super_class = CMDrawingContext;
  v7 = [(CMDrawingContext *)&v17 init];
  if (v7)
  {
    v8 = objc_opt_new();
    v9 = *(v7 + 2);
    *(v7 + 2) = v8;

    *(v7 + 3) = x;
    *(v7 + 4) = y;
    v10 = MEMORY[0x277CBF3A0];
    *(v7 + 5) = width;
    *(v7 + 6) = height;
    v11 = v10[1];
    *(v7 + 56) = *v10;
    *(v7 + 72) = v11;
    v12 = objc_opt_new();
    v13 = *(v7 + 15);
    *(v7 + 15) = v12;

    v14 = [MEMORY[0x277CCA878] transform];
    v15 = *(v7 + 14);
    *(v7 + 14) = v14;
  }

  return v7;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (float)currentScaleFactor
{
  currentTransform = self->_currentTransform;
  if (currentTransform)
  {
    [(NSAffineTransform *)currentTransform transformStruct];
  }

  return sqrt(0.0 * 0.0 + 0.0 * 0.0);
}

- (void)addTransform:(id)a3
{
  v5 = a3;
  [(CMDrawingContext *)self _addTransform:?];
  v4 = [[CMDrawingAction alloc] initWithType:0 andValue:v5];
  [(NSMutableArray *)self->_actions addObject:v4];
}

- (void)setStrokeColor:(CGColor *)a3
{
  v4 = [[CMDrawingAction alloc] initWithType:2 andValue:a3];
  [(NSMutableArray *)self->_actions addObject:?];
}

- (void)setFillColor:(CGColor *)a3
{
  v4 = [[CMDrawingAction alloc] initWithType:3 andValue:a3];
  [(NSMutableArray *)self->_actions addObject:?];
}

- (void)setFillImage:(CGImage *)a3
{
  v5 = [CMDrawingAction alloc];
  if (a3)
  {
    v6 = [(CMDrawingAction *)v5 initWithType:4 andValue:a3];
  }

  else
  {
    v6 = [(CMDrawingAction *)v5 initWithType:5 andValue:0];
  }

  [(NSMutableArray *)self->_actions addObject:?];
}

- (void)setLineWidth:(float)a3
{
  v5 = [CMDrawingAction alloc];
  *&v6 = a3;
  v7 = [(CMDrawingAction *)v5 initWithType:6 andFloatValue:v6];
  [(NSMutableArray *)self->_actions addObject:?];
}

- (void)setLineDash:(id)a3
{
  v5 = a3;
  v4 = [[CMDrawingAction alloc] initWithType:7 andValue:v5];
  [(NSMutableArray *)self->_actions addObject:v4];
}

- (void)addDebugPath:(CGPath *)a3
{
  BoundingBox = CGPathGetBoundingBox(a3);
  if (BoundingBox.size.width == 0.0)
  {
    BoundingBox.size.width = 1.0;
  }

  if (BoundingBox.size.height == 0.0)
  {
    BoundingBox.size.height = 1.0;
  }

  [(CMDrawingContext *)self _transformRect:self->_currentTransform withTransform:BoundingBox.origin.x, BoundingBox.origin.y, BoundingBox.size.width, BoundingBox.size.height];
  x = v5;
  y = v7;
  width = v9;
  height = v11;
  if (!CGRectEqualToRect(self->_finalFrame, *MEMORY[0x277CBF3A0]))
  {
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v16 = CGRectUnion(self->_finalFrame, v17);
    x = v16.origin.x;
    y = v16.origin.y;
    width = v16.size.width;
    height = v16.size.height;
  }

  self->_finalFrame.origin.x = x;
  self->_finalFrame.origin.y = y;
  self->_finalFrame.size.width = width;
  self->_finalFrame.size.height = height;
  v13 = [[CMDrawingAction alloc] initWithType:8 andValue:a3];
  [(NSMutableArray *)self->_actions addObject:?];
}

- (void)addPath:(CGPath *)a3
{
  BoundingBox = CGPathGetBoundingBox(a3);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  if (BoundingBox.size.width == 0.0)
  {
    width = 1.0;
  }

  else
  {
    width = BoundingBox.size.width;
  }

  if (BoundingBox.size.height == 0.0)
  {
    height = 1.0;
  }

  else
  {
    height = BoundingBox.size.height;
  }

  if (!CGRectEqualToRect(self->_finalFrame, *MEMORY[0x277CBF3A0]))
  {
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    v12 = CGRectUnion(self->_finalFrame, v13);
    x = v12.origin.x;
    y = v12.origin.y;
    width = v12.size.width;
    height = v12.size.height;
  }

  self->_finalFrame.origin.x = x;
  self->_finalFrame.origin.y = y;
  self->_finalFrame.size.width = width;
  self->_finalFrame.size.height = height;
  v9 = [[CMDrawingAction alloc] initWithType:8 andValue:a3];
  [(NSMutableArray *)self->_actions addObject:?];
}

- (CGRect)_transformRect:(CGRect)a3 withTransform:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  [v8 transformPoint:{x, y}];
  v10 = v9;
  v12 = v11;
  v13 = x + width;
  v14 = y + height;
  [v8 transformPoint:{x + width, y + height}];
  v16 = v15;
  v18 = v17;
  [v8 transformPoint:{v13, y}];
  v20 = v19;
  v22 = v21;
  [v8 transformPoint:{x, v14}];
  if (v16 <= v10)
  {
    v25 = v10;
  }

  else
  {
    v25 = v16;
  }

  if (v16 >= v10)
  {
    v26 = v10;
  }

  else
  {
    v26 = v16;
  }

  if (v18 <= v12)
  {
    v27 = v12;
  }

  else
  {
    v27 = v18;
  }

  if (v18 >= v12)
  {
    v28 = v12;
  }

  else
  {
    v28 = v18;
  }

  if (v22 > v27)
  {
    v27 = v22;
  }

  if (v20 > v25)
  {
    v25 = v20;
  }

  if (v22 < v28)
  {
    v28 = v22;
  }

  if (v20 < v26)
  {
    v26 = v20;
  }

  if (v23 >= v26)
  {
    v29 = v26;
  }

  else
  {
    v29 = v23;
  }

  if (v24 >= v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = v24;
  }

  if (v23 <= v25)
  {
    v23 = v25;
  }

  if (v24 <= v27)
  {
    v24 = v27;
  }

  v31 = v23 - v29;
  v32 = v24 - v30;

  v33 = v29;
  v34 = v30;
  v35 = v31;
  v36 = v32;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (CGRect)transformRectToPage:(CGRect)a3
{
  [(CMDrawingContext *)self _transformRect:self->_currentTransform withTransform:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)transformRectToGroup:(CGRect)a3
{
  [(CMDrawingContext *)self _transformRect:self->_currentTransform withTransform:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v7 = v6 - self->_frame.origin.x;
  v9 = v8 - self->_frame.origin.y;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v9;
  result.origin.x = v7;
  return result;
}

- (void)_applyTransform:(id)a3
{
  v4 = a3;
  v5 = v4;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  if (v4)
  {
    [v4 transformStruct];
    v9 = v13;
    v10 = v12;
    v6 = *(&v14 + 1);
    v7 = *&v14;
  }

  else
  {
    v9 = 0uLL;
    v10 = 0uLL;
    v6 = 0.0;
    v7 = 0.0;
  }

  CGContextSaveGState(self->_cgContext);
  cgContext = self->_cgContext;
  *&transform.a = v10;
  *&transform.c = v9;
  transform.tx = v7;
  transform.ty = v6;
  CGContextConcatCTM(cgContext, &transform);
}

- (void)_addTransform:(id)a3
{
  v5 = a3;
  v4 = [(NSAffineTransform *)self->_currentTransform copy];
  [(NSMutableArray *)self->_transforms addObject:v4];
  [(NSAffineTransform *)self->_currentTransform prependTransform:v5];
}

@end