@interface FCUIActivityControlBackgroundView
@end

@implementation FCUIActivityControlBackgroundView

uint64_t __72___FCUIActivityControlBackgroundView__configureHighlightViewIfNecessary__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D75D18]);
  [*(a1 + 32) bounds];
  v3 = [v2 initWithFrame:?];
  v4 = *(a1 + 32);
  v5 = *(v4 + 416);
  *(v4 + 416) = v3;

  v6 = *(a1 + 32);
  v7 = *(v6 + 416);
  if (*(v6 + 408))
  {
    [MEMORY[0x277D75348] systemBackgroundColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v8 = ;
  [v7 setBackgroundColor:v8];

  v9 = [*(a1 + 32) layer];
  v10 = [v9 cornerCurve];
  v11 = *MEMORY[0x277CDA138];

  v12 = *(a1 + 32);
  v13 = v12[52];
  if (v10 == v11)
  {
    [v12 _continuousCornerRadius];
    [v13 _setContinuousCornerRadius:?];
  }

  else
  {
    [v12 _cornerRadius];
    [v13 _setCornerRadius:?];
  }

  v14 = *(a1 + 32);
  if (*(v14 + 408) == 2)
  {
    v15 = [*(v14 + 416) layer];
    [v15 setShadowPathIsBounds:1];
    LODWORD(v16) = 1036831949;
    [v15 setShadowOpacity:v16];
    [v15 setShadowOffset:{0.0, 4.0}];
    [v15 setShadowRadius:15.0];

    v14 = *(a1 + 32);
  }

  [*(v14 + 416) setAlpha:0.0];
  [*(a1 + 32) addSubview:*(*(a1 + 32) + 416)];
  v17 = *(*(a1 + 32) + 416);

  return [v17 setAutoresizingMask:18];
}

@end