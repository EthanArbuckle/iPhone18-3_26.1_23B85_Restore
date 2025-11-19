@interface DOCChainedTagsView
- (CGPoint)alignmentOffset;
- (CGSize)intrinsicContentSize;
- (DOCChainedTagsView)init;
- (DOCChainedTagsView)initWithCoder:(id)a3;
- (DOCChainedTagsView)initWithFrame:(CGRect)a3;
- (void)_reloadRenderingRequest;
- (void)doc_commonInit;
- (void)drawRect:(CGRect)a3;
- (void)setSelectionOutlineColor:(id)a3;
- (void)setSpacing:(unint64_t)a3;
- (void)setTagDimension:(double)a3;
- (void)setTags:(id)a3;
- (void)setknockOutBorderWidth:(double)a3;
- (void)sizeToFit;
@end

@implementation DOCChainedTagsView

- (DOCChainedTagsView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = DOCChainedTagsView;
  v3 = [(DOCChainedTagsView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(DOCChainedTagsView *)v3 doc_commonInit];
  }

  return v4;
}

- (DOCChainedTagsView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DOCChainedTagsView;
  v3 = [(DOCChainedTagsView *)&v6 initWithCoder:a3];
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

- (void)setTags:(id)a3
{
  objc_storeStrong(&self->_tags, a3);

  [(DOCChainedTagsView *)self _reloadRenderingRequest];
}

- (void)setknockOutBorderWidth:(double)a3
{
  if (self->_knockOutBorderWidth != a3)
  {
    self->_knockOutBorderWidth = a3;
    [(DOCChainedTagsView *)self _reloadRenderingRequest];
  }
}

- (void)setSpacing:(unint64_t)a3
{
  if (self->_spacing != a3)
  {
    self->_spacing = a3;
    [(DOCChainedTagsView *)self _reloadRenderingRequest];
  }
}

- (void)setTagDimension:(double)a3
{
  if (self->_tagDimension != a3)
  {
    self->_tagDimension = a3;
    [(DOCChainedTagsView *)self _reloadRenderingRequest];
  }
}

- (void)setSelectionOutlineColor:(id)a3
{
  v5 = a3;
  if (self->_selectionOutlineColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_selectionOutlineColor, a3);
    [(DOCChainedTagsView *)self _reloadRenderingRequest];
    v5 = v6;
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = [(DOCChainedTagsView *)self renderingRequest];
  if (v2)
  {
    v3 = +[DOCTagRenderer shared];
    [v3 sizeOfTagContentForRenderingRequest:v2];
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

- (void)drawRect:(CGRect)a3
{
  v3 = [(DOCChainedTagsView *)self renderingRequest:a3.origin.x];
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
  v4 = [(DOCChainedTagsView *)self selectionOutlineColor];
  [(DOCTagRenderingRequest *)v3 setSelectionOutlineColor:v4];

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

  v11 = [(DOCTagRenderingRequest *)v5 fillColors];
  v12 = [(DOCTagRenderingRequest *)v22 selectionOutlineColor];
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

  v18 = [(DOCTagRenderingRequest *)v3 fillColors];
  v19 = [(DOCTagRenderingRequest *)v3 selectionOutlineColor];
  renderingRequest = self->_renderingRequest;
  self->_renderingRequest = v3;

  if (v8 != v15 || v10 != v17)
  {
    [(DOCChainedTagsView *)self invalidateIntrinsicContentSize];
  }

  if (([v11 isEqual:v18] & 1) == 0)
  {
    [(DOCChainedTagsView *)self setNeedsDisplay];
  }

  if (([v12 isEqual:v19] & 1) == 0)
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