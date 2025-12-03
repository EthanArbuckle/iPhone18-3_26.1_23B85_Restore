@interface CEKSliderTickMarksView
- (CEKSliderTickMarksDelegate)delegate;
- (CEKSliderTickMarksView)initWithFrame:(CGRect)frame;
- (CGRect)_shadowFrameForTickMarkRect:(CGRect)rect;
- (CGRect)frameForTickMarkAtIndex:(unint64_t)index;
- (UIEdgeInsets)alignmentRectInsets;
- (void)drawRect:(CGRect)rect;
- (void)tickMarksModelDidChangeWidthForTickMarkCountWithModel:(id)model;
@end

@implementation CEKSliderTickMarksView

- (CEKSliderTickMarksView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = CEKSliderTickMarksView;
  v3 = [(CEKSliderTickMarksView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CEKSliderTickMarksView *)v3 setOpaque:0];
    [(CEKSliderTickMarksView *)v4 setContentMode:3];
    v5 = objc_alloc_init(_TtC13CameraEditKit14TickMarksModel);
    tickMarksModel = v4->_tickMarksModel;
    v4->_tickMarksModel = v5;

    [(TickMarksModel *)v4->_tickMarksModel setDataSource:v4];
    [(TickMarksModel *)v4->_tickMarksModel setDelegate:v4];
  }

  return v4;
}

- (UIEdgeInsets)alignmentRectInsets
{
  [(CEKSliderTickMarksView *)self _shadowWidth];
  v4 = v3;
  tickMarksModel = [(CEKSliderTickMarksView *)self tickMarksModel];
  if ([tickMarksModel useTickMarkLegibilityShadows])
  {
    v6 = v4;
    v7 = v4;
    v8 = v4;
  }

  else
  {
    v4 = *MEMORY[0x1E69DDCE0];
    v6 = *(MEMORY[0x1E69DDCE0] + 8);
    v7 = *(MEMORY[0x1E69DDCE0] + 16);
    v8 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v9 = v4;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  result.right = v12;
  result.bottom = v11;
  result.left = v10;
  result.top = v9;
  return result;
}

- (CGRect)frameForTickMarkAtIndex:(unint64_t)index
{
  [(CEKSliderTickMarksView *)self bounds];
  [(CEKSliderTickMarksView *)self alignmentRectForFrame:?];
  v6 = v5;
  v8 = v7;
  tickMarksModel = [(CEKSliderTickMarksView *)self tickMarksModel];
  [tickMarksModel tickMarkWidth];
  v11 = v10;

  tickMarksModel2 = [(CEKSliderTickMarksView *)self tickMarksModel];
  [tickMarksModel2 xOffsetForTickMarkIndex:index];
  v14 = v13;

  v15 = v14;
  v16 = v6;
  v17 = v11;
  v18 = v8;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)_shadowFrameForTickMarkRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(CEKSliderTickMarksView *)self _shadowWidth];
  v8 = -v7;
  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;

  return CGRectInset(*&v9, v8, v8);
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  tickMarksModel = [(CEKSliderTickMarksView *)self tickMarksModel];
  useTickMarkLegibilityShadows = [tickMarksModel useTickMarkLegibilityShadows];

  tickMarksModel2 = [(CEKSliderTickMarksView *)self tickMarksModel];
  mainTickMarkColor = [tickMarksModel2 mainTickMarkColor];

  tickMarksModel3 = [(CEKSliderTickMarksView *)self tickMarksModel];
  secondaryTickMarkColor = [tickMarksModel3 secondaryTickMarkColor];

  if (useTickMarkLegibilityShadows)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v11 = [systemBackgroundColor colorWithAlphaComponent:0.15];
  }

  else
  {
    v11 = 0;
  }

  tickMarksModel4 = [(CEKSliderTickMarksView *)self tickMarksModel];
  tickMarksCount = [tickMarksModel4 tickMarksCount];

  if (tickMarksCount)
  {
    for (i = 0; i != tickMarksCount; ++i)
    {
      tickMarksModel5 = [(CEKSliderTickMarksView *)self tickMarksModel];
      v16 = [tickMarksModel5 isMainTickMarkAtIndex:i];

      [(CEKSliderTickMarksView *)self frameForTickMarkAtIndex:i];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      if (useTickMarkLegibilityShadows)
      {
        [v11 set];
        [(CEKSliderTickMarksView *)self _shadowFrameForTickMarkRect:v18, v20, v22, v24];
        CGContextFillRect(CurrentContext, v28);
      }

      v25 = mainTickMarkColor;
      if (!v16)
      {
        v25 = secondaryTickMarkColor;
      }

      [v25 set];
      v29.origin.x = v18;
      v29.origin.y = v20;
      v29.size.width = v22;
      v29.size.height = v24;
      CGContextFillRect(CurrentContext, v29);
    }
  }
}

- (void)tickMarksModelDidChangeWidthForTickMarkCountWithModel:(id)model
{
  delegate = [(CEKSliderTickMarksView *)self delegate];
  [delegate tickMarksViewDidChangeWidthForTickMarkCount:self];
}

- (CEKSliderTickMarksDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end