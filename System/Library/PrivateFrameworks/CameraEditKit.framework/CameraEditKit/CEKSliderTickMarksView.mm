@interface CEKSliderTickMarksView
- (CEKSliderTickMarksDelegate)delegate;
- (CEKSliderTickMarksView)initWithFrame:(CGRect)a3;
- (CGRect)_shadowFrameForTickMarkRect:(CGRect)a3;
- (CGRect)frameForTickMarkAtIndex:(unint64_t)a3;
- (UIEdgeInsets)alignmentRectInsets;
- (void)drawRect:(CGRect)a3;
- (void)tickMarksModelDidChangeWidthForTickMarkCountWithModel:(id)a3;
@end

@implementation CEKSliderTickMarksView

- (CEKSliderTickMarksView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = CEKSliderTickMarksView;
  v3 = [(CEKSliderTickMarksView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v5 = [(CEKSliderTickMarksView *)self tickMarksModel];
  if ([v5 useTickMarkLegibilityShadows])
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

- (CGRect)frameForTickMarkAtIndex:(unint64_t)a3
{
  [(CEKSliderTickMarksView *)self bounds];
  [(CEKSliderTickMarksView *)self alignmentRectForFrame:?];
  v6 = v5;
  v8 = v7;
  v9 = [(CEKSliderTickMarksView *)self tickMarksModel];
  [v9 tickMarkWidth];
  v11 = v10;

  v12 = [(CEKSliderTickMarksView *)self tickMarksModel];
  [v12 xOffsetForTickMarkIndex:a3];
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

- (CGRect)_shadowFrameForTickMarkRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CEKSliderTickMarksView *)self _shadowWidth];
  v8 = -v7;
  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;

  return CGRectInset(*&v9, v8, v8);
}

- (void)drawRect:(CGRect)a3
{
  CurrentContext = UIGraphicsGetCurrentContext();
  v5 = [(CEKSliderTickMarksView *)self tickMarksModel];
  v6 = [v5 useTickMarkLegibilityShadows];

  v7 = [(CEKSliderTickMarksView *)self tickMarksModel];
  v26 = [v7 mainTickMarkColor];

  v8 = [(CEKSliderTickMarksView *)self tickMarksModel];
  v9 = [v8 secondaryTickMarkColor];

  if (v6)
  {
    v10 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v11 = [v10 colorWithAlphaComponent:0.15];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(CEKSliderTickMarksView *)self tickMarksModel];
  v13 = [v12 tickMarksCount];

  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = [(CEKSliderTickMarksView *)self tickMarksModel];
      v16 = [v15 isMainTickMarkAtIndex:i];

      [(CEKSliderTickMarksView *)self frameForTickMarkAtIndex:i];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      if (v6)
      {
        [v11 set];
        [(CEKSliderTickMarksView *)self _shadowFrameForTickMarkRect:v18, v20, v22, v24];
        CGContextFillRect(CurrentContext, v28);
      }

      v25 = v26;
      if (!v16)
      {
        v25 = v9;
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

- (void)tickMarksModelDidChangeWidthForTickMarkCountWithModel:(id)a3
{
  v4 = [(CEKSliderTickMarksView *)self delegate];
  [v4 tickMarksViewDidChangeWidthForTickMarkCount:self];
}

- (CEKSliderTickMarksDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end