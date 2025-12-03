@interface RETextLayer
- (EdgeInsets)edgeInsets;
- (id).cxx_construct;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context;
- (void)setAttributedString:(__CFAttributedString *)string;
- (void)setRenderBlock:(id)block;
@end

@implementation RETextLayer

- (void)setAttributedString:(__CFAttributedString *)string
{
  attributedString = self->_attributedString;
  if (attributedString != string)
  {
    if (attributedString)
    {
      CFRelease(attributedString);
    }

    self->_attributedString = string;
    if (string)
    {

      CFRetain(string);
    }
  }
}

- (void)setRenderBlock:(id)block
{
  v4 = _Block_copy(block);
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

- (void)drawInContext:(CGContext *)context
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
    backgroundColor = [(RETextLayer *)self backgroundColor];
    [(RETextLayer *)self bounds];
    v20.n128_u64[0] = v25.n128_u64[0];
    v21.n128_u64[0] = v26.n128_u64[0];
    v22 = renderBlock[2];
    v23.n128_f64[0] = v10;
    v24.n128_f64[0] = v17;
    v25.n128_f64[0] = v11;
    v26.n128_f64[0] = v15;

    v22(renderBlock, context, attributedString, backgroundColor, v23, v24, v25, v26, v20, v21);
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
    CTFrameDraw(Frame, context);
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