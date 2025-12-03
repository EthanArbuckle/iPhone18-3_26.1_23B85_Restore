@interface DOCChainedTagsView
- (CGPoint)alignmentOffset;
- (CGSize)intrinsicContentSize;
- (DOCChainedTagsView)init;
- (DOCChainedTagsView)initWithCoder:(id)coder;
- (DOCChainedTagsView)initWithFrame:(CGRect)frame;
- (void)_reloadRenderingRequest;
- (void)doc_commonInit;
- (void)drawRect:(CGRect)rect;
- (void)setSelectionOutlineColor:(id)color;
- (void)setSpacing:(unint64_t)spacing;
- (void)setTagDimension:(double)dimension;
- (void)setTags:(id)tags;
- (void)setknockOutBorderWidth:(double)width;
- (void)sizeToFit;
@end

@implementation DOCChainedTagsView

- (DOCChainedTagsView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = DOCChainedTagsView;
  v3 = [(DOCChainedTagsView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(DOCChainedTagsView *)v3 doc_commonInit];
  }

  return v4;
}

- (DOCChainedTagsView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DOCChainedTagsView;
  v3 = [(DOCChainedTagsView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(DOCChainedTagsView *)v3 doc_commonInit];
  }

  return v4;
}

- (DOCChainedTagsView)init
{
  v5.receiver = self;
  v5.super_class = DOCChainedTagsView;
  v2 = [(DOCChainedTagsView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DOCChainedTagsView *)v2 doc_commonInit];
  }

  return v3;
}

- (void)doc_commonInit
{
  self->_knockOutBorderWidth = 1.0;
  self->_spacing = 0;
  [(DOCChainedTagsView *)self _reloadRenderingRequest];
}

- (void)setTags:(id)tags
{
  objc_storeStrong(&self->_tags, tags);

  [(DOCChainedTagsView *)self _reloadRenderingRequest];
}

- (void)setknockOutBorderWidth:(double)width
{
  if (self->_knockOutBorderWidth != width)
  {
    self->_knockOutBorderWidth = width;
    [(DOCChainedTagsView *)self _reloadRenderingRequest];
  }
}

- (void)setSpacing:(unint64_t)spacing
{
  if (self->_spacing != spacing)
  {
    self->_spacing = spacing;
    [(DOCChainedTagsView *)self _reloadRenderingRequest];
  }
}

- (void)setTagDimension:(double)dimension
{
  if (self->_tagDimension != dimension)
  {
    self->_tagDimension = dimension;
    [(DOCChainedTagsView *)self _reloadRenderingRequest];
  }
}

- (void)setSelectionOutlineColor:(id)color
{
  colorCopy = color;
  if (self->_selectionOutlineColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_selectionOutlineColor, color);
    [(DOCChainedTagsView *)self _reloadRenderingRequest];
    colorCopy = v6;
  }
}

- (CGSize)intrinsicContentSize
{
  renderingRequest = [(DOCChainedTagsView *)self renderingRequest];
  if (renderingRequest)
  {
    v3 = +[DOCTagRenderer shared];
    [v3 sizeOfTagContentForRenderingRequest:renderingRequest];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A8];
    v7 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)sizeToFit
{
  v3.receiver = self;
  v3.super_class = DOCChainedTagsView;
  [(DOCChainedTagsView *)&v3 sizeToFit];
  [(DOCChainedTagsView *)self intrinsicContentSize];
  [(DOCChainedTagsView *)self frame];
  [(DOCChainedTagsView *)self setFrame:?];
}

- (void)drawRect:(CGRect)rect
{
  v3 = [(DOCChainedTagsView *)self renderingRequest:rect.origin.x];
  if (v3)
  {
    v5 = v3;
    v4 = +[DOCTagRenderer shared];
    [v4 renderInUncacheableContext:UIGraphicsGetCurrentContext() request:v5];

    v3 = v5;
  }
}

- (void)_reloadRenderingRequest
{
  v22 = self->_renderingRequest;
  v3 = [DOCTagRenderingRequest requestForChainedTags:self->_tags tagDimension:self->_tagDimension];
  [(DOCChainedTagsView *)self knockOutBorderWidth];
  [(DOCTagRenderingRequest *)v3 setKnockOutBorderWidth:?];
  [(DOCTagRenderingRequest *)v3 setLayoutDirection:[(DOCChainedTagsView *)self effectiveUserInterfaceLayoutDirection]];
  [(DOCTagRenderingRequest *)v3 setSpacingType:self->_spacing];
  selectionOutlineColor = [(DOCChainedTagsView *)self selectionOutlineColor];
  [(DOCTagRenderingRequest *)v3 setSelectionOutlineColor:selectionOutlineColor];

  v5 = v22;
  if (v22)
  {
    v6 = +[DOCTagRenderer shared];
    [v6 sizeOfTagContentForRenderingRequest:v22];
    v8 = v7;
    v10 = v9;

    v5 = v22;
  }

  else
  {
    v8 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
  }

  fillColors = [(DOCTagRenderingRequest *)v5 fillColors];
  selectionOutlineColor2 = [(DOCTagRenderingRequest *)v22 selectionOutlineColor];
  if (v3)
  {
    v13 = +[DOCTagRenderer shared];
    [v13 sizeOfTagContentForRenderingRequest:v3];
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v15 = *MEMORY[0x277CBF3A8];
    v17 = *(MEMORY[0x277CBF3A8] + 8);
  }

  fillColors2 = [(DOCTagRenderingRequest *)v3 fillColors];
  selectionOutlineColor3 = [(DOCTagRenderingRequest *)v3 selectionOutlineColor];
  renderingRequest = self->_renderingRequest;
  self->_renderingRequest = v3;

  if (v8 != v15 || v10 != v17)
  {
    [(DOCChainedTagsView *)self invalidateIntrinsicContentSize];
  }

  if (([fillColors isEqual:fillColors2] & 1) == 0)
  {
    [(DOCChainedTagsView *)self setNeedsDisplay];
  }

  if (([selectionOutlineColor2 isEqual:selectionOutlineColor3] & 1) == 0)
  {
    [(DOCChainedTagsView *)self setNeedsDisplay];
  }
}

- (CGPoint)alignmentOffset
{
  x = self->_alignmentOffset.x;
  y = self->_alignmentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end