@interface HUCCFillerMosaicCell
- (void)layoutSublayersOfLayer:(id)layer;
@end

@implementation HUCCFillerMosaicCell

- (void)layoutSublayersOfLayer:(id)layer
{
  fakeCellLayer = [(HUCCFillerMosaicCell *)self fakeCellLayer];

  if (!fakeCellLayer)
  {
    layer = [MEMORY[0x277CD9ED0] layer];
    [(HUCCFillerMosaicCell *)self setFakeCellLayer:layer];

    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    cGColor = [systemWhiteColor CGColor];
    fakeCellLayer2 = [(HUCCFillerMosaicCell *)self fakeCellLayer];
    [fakeCellLayer2 setBackgroundColor:cGColor];

    fakeCellLayer3 = [(HUCCFillerMosaicCell *)self fakeCellLayer];
    LODWORD(v10) = 1025758986;
    [fakeCellLayer3 setOpacity:v10];

    CCUICompactModuleContinuousCornerRadius();
    v12 = v11;
    fakeCellLayer4 = [(HUCCFillerMosaicCell *)self fakeCellLayer];
    [fakeCellLayer4 setCornerRadius:v12];

    layer2 = [(HUCCFillerMosaicCell *)self layer];
    fakeCellLayer5 = [(HUCCFillerMosaicCell *)self fakeCellLayer];
    [layer2 addSublayer:fakeCellLayer5];
  }

  layer3 = [(HUCCFillerMosaicCell *)self layer];
  [layer3 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  fakeCellLayer6 = [(HUCCFillerMosaicCell *)self fakeCellLayer];
  [fakeCellLayer6 setFrame:{v17, v19, v21, v23}];
}

@end