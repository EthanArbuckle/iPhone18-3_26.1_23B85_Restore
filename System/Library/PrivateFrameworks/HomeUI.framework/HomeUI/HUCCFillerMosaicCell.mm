@interface HUCCFillerMosaicCell
- (void)layoutSublayersOfLayer:(id)a3;
@end

@implementation HUCCFillerMosaicCell

- (void)layoutSublayersOfLayer:(id)a3
{
  v4 = [(HUCCFillerMosaicCell *)self fakeCellLayer];

  if (!v4)
  {
    v5 = [MEMORY[0x277CD9ED0] layer];
    [(HUCCFillerMosaicCell *)self setFakeCellLayer:v5];

    v6 = [MEMORY[0x277D75348] systemWhiteColor];
    v7 = [v6 CGColor];
    v8 = [(HUCCFillerMosaicCell *)self fakeCellLayer];
    [v8 setBackgroundColor:v7];

    v9 = [(HUCCFillerMosaicCell *)self fakeCellLayer];
    LODWORD(v10) = 1025758986;
    [v9 setOpacity:v10];

    CCUICompactModuleContinuousCornerRadius();
    v12 = v11;
    v13 = [(HUCCFillerMosaicCell *)self fakeCellLayer];
    [v13 setCornerRadius:v12];

    v14 = [(HUCCFillerMosaicCell *)self layer];
    v15 = [(HUCCFillerMosaicCell *)self fakeCellLayer];
    [v14 addSublayer:v15];
  }

  v25 = [(HUCCFillerMosaicCell *)self layer];
  [v25 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [(HUCCFillerMosaicCell *)self fakeCellLayer];
  [v24 setFrame:{v17, v19, v21, v23}];
}

@end