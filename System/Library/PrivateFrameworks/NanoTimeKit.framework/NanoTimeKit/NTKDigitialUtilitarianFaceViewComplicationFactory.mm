@interface NTKDigitialUtilitarianFaceViewComplicationFactory
- (UIColor)shadowColor;
- (double)_timeTravelYAdjustment;
- (id)createComplicationContentSpecificAttributesAnimationWithAttributes:(unint64_t)a3 faceView:(id)a4 forSlots:(id)a5;
- (id)initForDevice:(id)a3;
- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5 faceView:(id)a6;
- (int64_t)_photosUtilitySlotForSlot:(id)a3;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4 attributes:(unint64_t)a5 faceView:(id)a6;
- (void)applyComplicationContentSpecificAttributesAnimated:(BOOL)a3 faceView:(id)a4;
- (void)loadLayoutRulesForFaceView:(id)a3;
- (void)setAlpha:(double)a3 faceView:(id)a4;
- (void)setForegroundColor:(id)a3 faceView:(id)a4;
- (void)setShadowColor:(id)a3 faceView:(id)a4;
- (void)setUsesLegibility:(BOOL)a3 faceView:(id)a4;
@end

@implementation NTKDigitialUtilitarianFaceViewComplicationFactory

- (id)initForDevice:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NTKDigitialUtilitarianFaceViewComplicationFactory;
  v5 = [(NTKFaceViewComplicationFactory *)&v13 initForDevice:v4];
  if (v5)
  {
    v6 = [[NTKUtilityComplicationFactory alloc] initForDevice:v4];
    v7 = *(v5 + 9);
    *(v5 + 9) = v6;

    [*(v5 + 9) setForegroundAlpha:1.0];
    [*(v5 + 9) setForegroundImageAlpha:1.0];
    v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:*off_27877BE58];
    v9 = *(v5 + 12);
    *(v5 + 12) = v8;

    [v5 setAlpha:1.0];
    [v5 setContentSpecificAnimationDuration:0.45];
    v10 = [MEMORY[0x277D75348] whiteColor];
    [v5 setForegroundColor:v10];

    v14[0] = @"top-right";
    v14[1] = @"bottom";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    [v5 setSupportedComplicationSlots:v11];
  }

  return v5;
}

- (UIColor)shadowColor
{
  shadowColorProviderBlock = self->_shadowColorProviderBlock;
  if (shadowColorProviderBlock)
  {
    v4 = shadowColorProviderBlock[2](shadowColorProviderBlock, a2);
    shadowColor = v4;
    if (!v4)
    {
      shadowColor = self->_shadowColor;
    }

    v6 = shadowColor;
  }

  else
  {
    v6 = self->_shadowColor;
  }

  return v6;
}

- (double)_timeTravelYAdjustment
{
  timeTravelYAdjustmentProviderBlock = self->_timeTravelYAdjustmentProviderBlock;
  if (!timeTravelYAdjustmentProviderBlock)
  {
    return 0.0;
  }

  timeTravelYAdjustmentProviderBlock[2]();
  return result;
}

- (void)loadLayoutRulesForFaceView:(id)a3
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NTKFaceViewComplicationFactory *)self device];
  v6 = ___LayoutConstants_block_invoke_13(v5, v5);
  v64 = v7;

  [v4 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self _timeTravelYAdjustment];
  if (v16 != 0.0)
  {
    CLKAlterRect();
    v9 = v17;
    v11 = v18;
    v13 = v19;
    v15 = v20;
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v21 = [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self supportedComplicationSlots];
  v22 = [v21 countByEnumeratingWithState:&v65 objects:v69 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v66;
    v63 = v15;
    v62 = v21;
    v61 = -v6;
    do
    {
      v25 = 0;
      do
      {
        if (*v66 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v65 + 1) + 8 * v25);
        v27 = [v4 complicationLayoutforSlot:{v26, *&v61}];
        if ([v26 isEqualToString:@"bottom"])
        {
          complicationFactory = self->_complicationFactory;
          v29 = [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self _photosUtilitySlotForSlot:v26];
          v30 = complicationFactory;
          v31 = v27;
          v32 = v9;
          v33 = v11;
          v34 = v13;
          v35 = v15;
LABEL_12:
          [(NTKUtilityComplicationFactory *)v30 configureComplicationLayout:v31 forSlot:v29 withBounds:v32, v33, v34, v35];
          goto LABEL_13;
        }

        if ([v26 isEqualToString:@"top-right"])
        {
          v36 = self->_complicationFactory;
          v37 = [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self _photosUtilitySlotForSlot:v26];
          CLKAlterRect();
          v30 = v36;
          v31 = v27;
          v29 = v37;
          goto LABEL_12;
        }

        if ([v26 isEqualToString:@"date"])
        {
          v38 = [(NTKFaceViewComplicationFactory *)self device];
          v39 = NTKDigitalTimeLabelStyleWideRightSideMargin(v38);
          v40 = [(NTKFaceViewComplicationFactory *)self device];
          v41 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:1 withRightSideMargin:v40 applyAdvanceFudge:v9 forDevice:v11, v13, v15, v39];

          v42 = [v41 layoutRule];
          [v42 referenceFrame];
          v44 = v43;
          v45 = v13;
          v46 = v9;
          v48 = v47;
          v49 = v11;
          v50 = v6;
          v52 = v51;
          v54 = v53;

          v71.origin.x = v44;
          v71.origin.y = v48;
          v71.size.width = v52;
          v71.size.height = v54;
          v55 = CGRectGetMaxY(v71) - v64;
          v56 = [(NTKFaceViewComplicationFactory *)self device];
          v57 = v55;
          v9 = v46;
          v13 = v45;
          v58 = v52;
          v6 = v50;
          v11 = v49;
          v15 = v63;
          v59 = [(NTKLayoutRule *)NTKComplicationLayoutRule layoutRuleForDevice:v56 withReferenceFrame:2 horizontalLayout:0 verticalLayout:v44, v57, v58, 46.0];

          [v27 setDefaultLayoutRule:v59 forState:0];
          v21 = v62;
        }

LABEL_13:

        ++v25;
      }

      while (v23 != v25);
      v60 = [v21 countByEnumeratingWithState:&v65 objects:v69 count:16];
      v23 = v60;
    }

    while (v60);
  }
}

- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5 faceView:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([v11 isEqualToString:@"date"])
  {
    v13 = [NTKDateComplicationLabel alloc];
    v14 = [(NTKFaceViewComplicationFactory *)self device];
    v15 = [(NTKDateComplicationLabel *)v13 initWithSizeStyle:0 accentType:0 forDevice:v14];

    v16 = [(NTKFaceViewComplicationFactory *)self device];
    ___LayoutConstants_block_invoke_13(v16, v16);
    v18 = v17;

    v19 = [MEMORY[0x277CBBB08] systemFontOfSize:v18 weight:*MEMORY[0x277D74408]];
    [(NTKDateComplicationLabel *)v15 setFont:v19];
    v20 = [(NTKFaceViewComplicationFactory *)self foregroundColor];
    [(NTKDateComplicationLabel *)v15 setTextColor:v20];

    [(NTKDateComplicationLabel *)v15 setUsesLegibility:self->_usesLegibility];
    v21 = [MEMORY[0x277CBEAF8] currentLocale];
    v22 = [v21 objectForKey:*MEMORY[0x277CBE6C8]];

    v23 = [v22 isEqualToString:@"he"];
    v24 = [v22 isEqualToString:@"pl"];
    v25 = 4096;
    if (!v24)
    {
      v25 = 0;
    }

    if (v23)
    {
      v26 = 2048;
    }

    else
    {
      v26 = v25;
    }

    [(NTKDateComplicationLabel *)v15 setOverrideDateStyle:v26];
  }

  else
  {
    v15 = [(NTKUtilityComplicationFactory *)self->_complicationFactory newViewForComplication:v10 family:a4 forSlot:[(NTKDigitialUtilitarianFaceViewComplicationFactory *)self _photosUtilitySlotForSlot:v11]];
    [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self configureComplicationView:v15 forSlot:v11 faceView:v12];
  }

  return v15;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4 attributes:(unint64_t)a5 faceView:(id)a6
{
  v7 = a5;
  v16 = a3;
  v10 = a4;
  v11 = a6;
  if ([v16 conformsToProtocol:&unk_28A859958])
  {
    v12 = v16;
    if (objc_opt_respondsToSelector())
    {
      [v12 setUseBlockyHighlightCorners:1];
      if ((v7 & 0x10) == 0)
      {
LABEL_4:
        if ((v7 & 1) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else if ((v7 & 0x10) == 0)
    {
      goto LABEL_4;
    }

    [v12 setFontWeight:*MEMORY[0x277D74420]];
    [v12 setUseAlternativePunctuation:1];
    -[NTKUtilityComplicationFactory foregroundAlphaForEditing:](self->_complicationFactory, "foregroundAlphaForEditing:", [v11 editing]);
    [v12 setForegroundAlpha:?];
    -[NTKUtilityComplicationFactory foregroundImageAlphaForEditing:](self->_complicationFactory, "foregroundImageAlphaForEditing:", [v11 editing]);
    [v12 setForegroundImageAlpha:?];
    [v12 setPlacement:{+[NTKUtilityComplicationFactory placementForSlot:](NTKUtilityComplicationFactory, "placementForSlot:", -[NTKDigitialUtilitarianFaceViewComplicationFactory _photosUtilitySlotForSlot:](self, "_photosUtilitySlotForSlot:", v10))}];
    [v12 setSuppressesInternalColorOverrides:1];
    v13 = [MEMORY[0x277D75348] clearColor];
    [v12 setBackgroundColor:v13];

    [v12 setUsesLegibility:self->_usesLegibility];
    if ((v7 & 1) == 0)
    {
LABEL_5:
      if ((v7 & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_14:
    v14 = [(NTKFaceViewComplicationFactory *)self foregroundColor];
    [v12 setForegroundColor:v14];

    if ((v7 & 2) == 0)
    {
LABEL_6:
      if ((v7 & 4) == 0)
      {
LABEL_8:

        goto LABEL_9;
      }

LABEL_7:
      [(NTKFaceViewComplicationFactory *)self alpha];
      [v12 setAlpha:?];
      goto LABEL_8;
    }

LABEL_15:
    v15 = [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self shadowColor];
    [v12 setShadowColor:v15];

    if ((v7 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
}

- (int64_t)_photosUtilitySlotForSlot:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"top-right"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"bottom"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"date"])
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)applyComplicationContentSpecificAttributesAnimated:(BOOL)a3 faceView:(id)a4
{
  v4 = a3;
  v10 = a4;
  if (v4)
  {
    v6 = [(NTKFaceViewComplicationFactory *)self foregroundColorProviderBlock];

    v7 = [(NTKFaceViewComplicationFactory *)self alphaProviderBlock];

    v8 = 4;
    if (v6)
    {
      v8 = 5;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6 != 0;
    }
  }

  else
  {
    v9 = 0xFFFFFFFFLL;
  }

  [(NTKFaceViewComplicationFactory *)self applyComplicationContentSpecificAttributesAnimated:v4 attributes:v9 faceView:v10];
}

- (id)createComplicationContentSpecificAttributesAnimationWithAttributes:(unint64_t)a3 faceView:(id)a4 forSlots:(id)a5
{
  v5 = a3;
  v7 = a4;
  v8 = [(NTKFaceViewComplicationFactory *)self foregroundColor];
  v9 = [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self shadowColor];
  [(NTKFaceViewComplicationFactory *)self alpha];
  v11 = v10;
  v12 = objc_opt_new();
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __138__NTKDigitialUtilitarianFaceViewComplicationFactory_createComplicationContentSpecificAttributesAnimationWithAttributes_faceView_forSlots___block_invoke;
  v23[3] = &unk_278780428;
  v28 = v5 & 1;
  v24 = v8;
  v29 = (v5 & 4) != 0;
  v27 = v11;
  v13 = v12;
  v30 = (v5 & 2) != 0;
  v25 = v13;
  v26 = v9;
  v14 = v9;
  v15 = v8;
  [v7 enumerateComplicationDisplayWrappersWithBlock:v23];

  [(NTKFaceViewComplicationFactory *)self contentSpecificAnimationDuration];
  v17 = v16;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __138__NTKDigitialUtilitarianFaceViewComplicationFactory_createComplicationContentSpecificAttributesAnimationWithAttributes_faceView_forSlots___block_invoke_4;
  v21[3] = &unk_27877E6E8;
  v22 = v13;
  v18 = v13;
  v19 = [NTKFaceViewComplicationFactory _genericComplicationAnimationWithDuration:v21 applier:v17];

  return v19;
}

void __138__NTKDigitialUtilitarianFaceViewComplicationFactory_createComplicationContentSpecificAttributesAnimationWithAttributes_faceView_forSlots___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 isEqualToString:@"date"];
  v7 = [v5 display];

  if (v6)
  {
    v8 = [v7 textColor];
    [v7 alpha];
    v10 = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __138__NTKDigitialUtilitarianFaceViewComplicationFactory_createComplicationContentSpecificAttributesAnimationWithAttributes_faceView_forSlots___block_invoke_2;
    aBlock[3] = &unk_2787803D8;
    v48 = *(a1 + 64);
    v43 = v7;
    v44 = v8;
    v45 = *(a1 + 32);
    v49 = *(a1 + 65);
    v11 = *(a1 + 56);
    v46 = v10;
    v47 = v11;
    v12 = v8;
    v13 = v7;
    v14 = _Block_copy(aBlock);
    v15 = *(a1 + 40);
    v16 = _Block_copy(v14);
    [v15 addObject:v16];

    v17 = v43;
  }

  else
  {
    v18 = [v7 foregroundColor];
    v19 = [v7 shadowColor];
    [v7 alpha];
    v21 = v20;
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __138__NTKDigitialUtilitarianFaceViewComplicationFactory_createComplicationContentSpecificAttributesAnimationWithAttributes_faceView_forSlots___block_invoke_3;
    v31 = &unk_278780400;
    v39 = *(a1 + 64);
    v32 = v7;
    v33 = v18;
    v22 = *(a1 + 32);
    v40 = *(a1 + 66);
    v34 = v22;
    v35 = v19;
    v36 = *(a1 + 48);
    v41 = *(a1 + 65);
    v23 = *(a1 + 56);
    v37 = v21;
    v38 = v23;
    v17 = v19;
    v12 = v18;
    v24 = v7;
    v25 = _Block_copy(&v28);
    v26 = *(a1 + 40);
    v27 = _Block_copy(v25);
    [v26 addObject:{v27, v28, v29, v30, v31}];
  }
}

void __138__NTKDigitialUtilitarianFaceViewComplicationFactory_createComplicationContentSpecificAttributesAnimationWithAttributes_faceView_forSlots___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = *(a1 + 32);
    v3 = NTKInterpolateBetweenColors();
    [v2 setTextColor:v3];
  }

  if (*(a1 + 73) == 1)
  {
    v4 = *(a1 + 32);
    CLKInterpolateBetweenFloatsUnclipped();

    [v4 setAlpha:?];
  }
}

void __138__NTKDigitialUtilitarianFaceViewComplicationFactory_createComplicationContentSpecificAttributesAnimationWithAttributes_faceView_forSlots___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    v2 = *(a1 + 32);
    v3 = NTKInterpolateBetweenColors();
    [v2 setForegroundColor:v3];
  }

  if (*(a1 + 89) == 1)
  {
    v4 = *(a1 + 32);
    v5 = NTKInterpolateBetweenColors();
    [v4 setShadowColor:v5];
  }

  if (*(a1 + 90) == 1)
  {
    v6 = *(a1 + 32);
    CLKInterpolateBetweenFloatsUnclipped();

    [v6 setAlpha:?];
  }
}

void __138__NTKDigitialUtilitarianFaceViewComplicationFactory_createComplicationContentSpecificAttributesAnimationWithAttributes_faceView_forSlots___block_invoke_4(uint64_t a1, double a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v8 + 1) + 8 * v7++) + 16))(a2);
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)setForegroundColor:(id)a3 faceView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NTKFaceViewComplicationFactory *)self foregroundColor];
  if (([v8 isEqual:v6] & 1) == 0)
  {
    [(NTKFaceViewComplicationFactory *)self setForegroundColor:v6];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __81__NTKDigitialUtilitarianFaceViewComplicationFactory_setForegroundColor_faceView___block_invoke;
    v9[3] = &unk_27877F148;
    v9[4] = self;
    v10 = v7;
    [v10 enumerateComplicationDisplayWrappersWithBlock:v9];
  }
}

void __81__NTKDigitialUtilitarianFaceViewComplicationFactory_setForegroundColor_faceView___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 display];
  [v5 _configureComplicationView:v7 forSlot:v6 attributes:1 faceView:*(a1 + 40)];
}

- (void)setShadowColor:(id)a3 faceView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self shadowColor];
  if (([v8 isEqual:v6] & 1) == 0)
  {
    [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self setShadowColor:v6];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__NTKDigitialUtilitarianFaceViewComplicationFactory_setShadowColor_faceView___block_invoke;
    v9[3] = &unk_27877F148;
    v9[4] = self;
    v10 = v7;
    [v10 enumerateComplicationDisplayWrappersWithBlock:v9];
  }
}

void __77__NTKDigitialUtilitarianFaceViewComplicationFactory_setShadowColor_faceView___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 display];
  [v5 _configureComplicationView:v7 forSlot:v6 attributes:2 faceView:*(a1 + 40)];
}

- (void)setUsesLegibility:(BOOL)a3 faceView:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(NTKDigitialUtilitarianFaceViewComplicationFactory *)self usesLegibility]!= v4)
  {
    [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self setUsesLegibility:v4];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __80__NTKDigitialUtilitarianFaceViewComplicationFactory_setUsesLegibility_faceView___block_invoke;
    v7[3] = &unk_27877F148;
    v7[4] = self;
    v8 = v6;
    [v8 enumerateComplicationDisplayWrappersWithBlock:v7];
  }
}

void __80__NTKDigitialUtilitarianFaceViewComplicationFactory_setUsesLegibility_faceView___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 display];
  [v5 _configureComplicationView:v7 forSlot:v6 attributes:16 faceView:*(a1 + 40)];
}

- (void)setAlpha:(double)a3 faceView:(id)a4
{
  v6 = a4;
  [(NTKFaceViewComplicationFactory *)self alpha];
  if (v7 != a3)
  {
    [(NTKFaceViewComplicationFactory *)self setAlpha:a3];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __71__NTKDigitialUtilitarianFaceViewComplicationFactory_setAlpha_faceView___block_invoke;
    v8[3] = &unk_27877F148;
    v8[4] = self;
    v9 = v6;
    [v9 enumerateComplicationDisplayWrappersWithBlock:v8];
  }
}

void __71__NTKDigitialUtilitarianFaceViewComplicationFactory_setAlpha_faceView___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 display];
  [v5 _configureComplicationView:v7 forSlot:v6 attributes:4 faceView:*(a1 + 40)];
}

@end