@interface RETextLayer
- (EdgeInsets)edgeInsets;
- (id).cxx_construct;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3;
- (void)setAttributedString:(__CFAttributedString *)a3;
- (void)setRenderBlock:(id)a3;
@end

@implementation RETextLayer

- (void)setAttributedString:(__CFAttributedString *)a3
{
  attributedString = self->_attributedString;
  if (attributedString != a3)
  {
    if (attributedString)
    {
      CFRelease(attributedString);
    }

    self->_attributedString = a3;
    if (a3)
    {

      CFRetain(a3);
    }
  }
}

- (void)setRenderBlock:(id)a3
{
  v4 = _Block_copy(a3);
  renderBlock = self->_renderBlock;
  self->_renderBlock = v4;
}

- (void)dealloc
{
  attributedString = self->_attributedString;
  if (attributedString)
  {
    CFRelease(attributedString);
  }

  v4.receiver = self;
  v4.super_class = RETextLayer;
  [(RETextLayer *)&v4 dealloc];
}

- (void)drawInContext:(CGContext *)a3
{
  [(RETextLayer *)self bounds];
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  v10 = v9 + left;
  v11 = v6 - left - self->_edgeInsets.right;
  bottom = self->_edgeInsets.bottom;
  v14 = v13 - bottom;
  v15 = v14 - top;
  renderBlock = self->_renderBlock;
  if (renderBlock)
  {
    v17 = v5 + top;
    attributedString = self->_attributedString;
    v19 = [(RETextLayer *)self backgroundColor];
    [(RETextLayer *)self bounds];
    v20.n128_u64[0] = v25.n128_u64[0];
    v21.n128_u64[0] = v26.n128_u64[0];
    v22 = renderBlock[2];
    v23.n128_f64[0] = v10;
    v24.n128_f64[0] = v17;
    v25.n128_f64[0] = v11;
    v26.n128_f64[0] = v15;

    v22(renderBlock, a3, attributedString, v19, v23, v24, v25, v26, v20, v21);
  }

  else
  {
    v32.origin.y = v5 + bottom;
    v32.origin.x = v10;
    v32.size.width = v6 - left - self->_edgeInsets.right;
    v32.size.height = v14 - top;
    v27 = CGPathCreateWithRect(v32, 0);
    v28 = CTFramesetterCreateWithAttributedString(self->_attributedString);
    v31.length = CFAttributedStringGetLength(self->_attributedString);
    v31.location = 0;
    Frame = CTFramesetterCreateFrame(v28, v31, v27, 0);
    CTFrameDraw(Frame, a3);
    CFRelease(Frame);
    CFRelease(v28);

    CGPathRelease(v27);
  }
}

- (EdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  return self;
}

@end