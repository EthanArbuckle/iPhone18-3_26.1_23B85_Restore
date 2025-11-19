@interface NTKColorCircularFaceViewComplicationFactory
- (double)_colorCircularEdgeGapForState:(int64_t)a3;
- (double)_colorCircularKeylinePaddingForState:(int64_t)a3;
- (double)_colorCircularLisaGapForState:(int64_t)a3;
- (id)initForDevice:(id)a3;
- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5 faceView:(id)a6;
- (int64_t)keylineStyleForComplicationSlot:(id)a3;
- (void)configureComplicationView:(id)a3 forSlot:(id)a4 faceView:(id)a5;
- (void)loadLayoutRulesForFaceView:(id)a3;
@end

@implementation NTKColorCircularFaceViewComplicationFactory

- (id)initForDevice:(id)a3
{
  v11.receiver = self;
  v11.super_class = NTKColorCircularFaceViewComplicationFactory;
  v3 = [(NTKFaceViewComplicationFactory *)&v11 initForDevice:a3];
  if (v3)
  {
    v4 = [[NTKFaceColorPalette alloc] initWithDomainName:0 inBundle:0];
    v5 = [NTKPigmentEditOption pigmentNamed:@"seasons.spring2015.white"];
    [(NTKFaceColorPalette *)v4 setPigmentEditOption:v5];

    v6 = [v3 device];
    v7 = [NTKFaceColorScheme colorSchemeForDevice:v6 withFaceColorPalette:v4 units:51];

    v8 = [v7 shiftedForegroundColor];
    [v3 setForegroundColor:v8];

    v9 = [v7 shiftedBackgroundColor];
    [v3 setPlatterColor:v9];
  }

  return v3;
}

- (void)loadLayoutRulesForFaceView:(id)a3
{
  v4 = a3;
  [v4 bounds];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__NTKColorCircularFaceViewComplicationFactory_loadLayoutRulesForFaceView___block_invoke;
  v10[3] = &unk_27877E670;
  v10[4] = self;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v9 = v4;
  NTKEnumerateComplicationStates(v10);
}

void __74__NTKColorCircularFaceViewComplicationFactory_loadLayoutRulesForFaceView___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _colorCircularKeylinePaddingForState:a2];
  v5 = v4;
  [*(a1 + 32) _colorCircularEdgeGapForState:a2];
  v7 = v5 + v6;
  v8 = [*(a1 + 32) device];
  v9 = NTKCircularSmallComplicationDiameter();
  v10 = [*(a1 + 32) device];
  v11 = NTKCircularSmallComplicationDiameter();

  v12 = [*(a1 + 32) device];
  v13 = [NTKComplicationLayoutRule layoutRuleForDevice:v12 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v7 keylinePadding:v7, v9, v11, v5, v5, v5, v5];

  v14 = [*(a1 + 40) complicationLayoutforSlot:@"top-left"];
  [v14 setDefaultLayoutRule:v13 forState:a2];

  v15 = *(a1 + 64) - v9 - v7;
  [*(a1 + 32) _colorCircularLisaGapForState:a2];
  v17 = v15 - v16;
  v18 = [*(a1 + 32) device];
  v19 = [NTKComplicationLayoutRule layoutRuleForDevice:v18 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v17 keylinePadding:v7, v9, v11, v5, v5, v5, v5];

  v20 = [*(a1 + 40) complicationLayoutforSlot:@"top-right"];
  [v20 setDefaultLayoutRule:v19 forState:a2];

  v21 = *(a1 + 72) - v11 - v7;
  v22 = [*(a1 + 32) device];
  v23 = [NTKComplicationLayoutRule layoutRuleForDevice:v22 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v7 keylinePadding:v21, v9, v11, v5, v5, v5, v5];

  v24 = [*(a1 + 40) complicationLayoutforSlot:@"bottom-left"];
  [v24 setDefaultLayoutRule:v23 forState:a2];

  v25 = *(a1 + 64) - v9 - v7;
  v26 = [*(a1 + 32) device];
  v28 = [NTKComplicationLayoutRule layoutRuleForDevice:v26 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v25 keylinePadding:v21, v9, v11, v5, v5, v5, v5];

  v27 = [*(a1 + 40) complicationLayoutforSlot:@"bottom-right"];
  [v27 setDefaultLayoutRule:v28 forState:a2];
}

- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5 faceView:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = +[NTKCircularComplicationView viewForComplicationType:](NTKCircularComplicationView, "viewForComplicationType:", [a3 complicationType]);
  [(NTKColorCircularFaceViewComplicationFactory *)self configureComplicationView:v11 forSlot:v10 faceView:v9];

  return v11;
}

- (void)configureComplicationView:(id)a3 forSlot:(id)a4 faceView:(id)a5
{
  v6 = a3;
  v7 = [(NTKFaceViewComplicationFactory *)self foregroundColor];
  [v6 setForegroundColor:v7];

  v8 = [(NTKFaceViewComplicationFactory *)self platterColor];
  [v6 setPlatterColor:v8];
}

- (double)_colorCircularEdgeGapForState:(int64_t)a3
{
  v3 = 0.0;
  if ((a3 - 2) >= 2)
  {
    if (a3 == 1)
    {
      v4 = [(NTKFaceViewComplicationFactory *)self device];
      v5 = NTKColorFaceViewEdgeGapEditing(v4);
    }

    else
    {
      v4 = [(NTKFaceViewComplicationFactory *)self device];
      v5 = NTKColorFaceViewEdgeGapNormal(v4);
    }

    v3 = v5;
  }

  return v3;
}

- (double)_colorCircularKeylinePaddingForState:(int64_t)a3
{
  if (a3 == 3)
  {
    v5 = NTKKeylineWidth();
    v6 = [(NTKFaceViewComplicationFactory *)self device];
    v7 = NTKColorFaceViewSelectedKeylineInnerPadding(v6);
    goto LABEL_5;
  }

  v4 = 0.0;
  if (a3 == 2)
  {
    v5 = NTKKeylineWidth();
    v6 = [(NTKFaceViewComplicationFactory *)self device];
    v7 = NTKColorFaceViewDeselectedKeylineInnerPadding(v6);
LABEL_5:
    v4 = v5 + v7;
  }

  return v4;
}

- (double)_colorCircularLisaGapForState:(int64_t)a3
{
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    return 0.0;
  }

  v3 = [(NTKFaceViewComplicationFactory *)self device];
  v4 = NTKColorFaceViewLisaKeylineGap(v3);

  return v4;
}

- (int64_t)keylineStyleForComplicationSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceViewComplicationFactory *)self device];
  if ([v5 deviceCategory] != 1)
  {
    if ([v4 isEqualToString:@"top-left"])
    {
    }

    else
    {
      v7 = [v4 isEqualToString:@"top-right"];

      if ((v7 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v6 = 1;
    goto LABEL_8;
  }

LABEL_3:
  v6 = 0;
LABEL_8:

  return v6;
}

@end