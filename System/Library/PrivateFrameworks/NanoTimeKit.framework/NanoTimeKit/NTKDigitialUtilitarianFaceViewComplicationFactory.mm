@interface NTKDigitialUtilitarianFaceViewComplicationFactory
- (UIColor)shadowColor;
- (double)_timeTravelYAdjustment;
- (id)createComplicationContentSpecificAttributesAnimationWithAttributes:(unint64_t)attributes faceView:(id)view forSlots:(id)slots;
- (id)initForDevice:(id)device;
- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot faceView:(id)view;
- (int64_t)_photosUtilitySlotForSlot:(id)slot;
- (void)_configureComplicationView:(id)view forSlot:(id)slot attributes:(unint64_t)attributes faceView:(id)faceView;
- (void)applyComplicationContentSpecificAttributesAnimated:(BOOL)animated faceView:(id)view;
- (void)loadLayoutRulesForFaceView:(id)view;
- (void)setAlpha:(double)alpha faceView:(id)view;
- (void)setForegroundColor:(id)color faceView:(id)view;
- (void)setShadowColor:(id)color faceView:(id)view;
- (void)setUsesLegibility:(BOOL)legibility faceView:(id)view;
@end

@implementation NTKDigitialUtilitarianFaceViewComplicationFactory

- (id)initForDevice:(id)device
{
  v14[2] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = NTKDigitialUtilitarianFaceViewComplicationFactory;
  v5 = [(NTKFaceViewComplicationFactory *)&v13 initForDevice:deviceCopy];
  if (v5)
  {
    v6 = [[NTKUtilityComplicationFactory alloc] initForDevice:deviceCopy];
    v7 = *(v5 + 9);
    *(v5 + 9) = v6;

    [*(v5 + 9) setForegroundAlpha:1.0];
    [*(v5 + 9) setForegroundImageAlpha:1.0];
    v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:*off_27877BE58];
    v9 = *(v5 + 12);
    *(v5 + 12) = v8;

    [v5 setAlpha:1.0];
    [v5 setContentSpecificAnimationDuration:0.45];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v5 setForegroundColor:whiteColor];

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

- (void)loadLayoutRulesForFaceView:(id)view
{
  v70 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  device = [(NTKFaceViewComplicationFactory *)self device];
  v6 = ___LayoutConstants_block_invoke_13(device, device);
  v64 = v7;

  [viewCopy bounds];
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
  supportedComplicationSlots = [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self supportedComplicationSlots];
  v22 = [supportedComplicationSlots countByEnumeratingWithState:&v65 objects:v69 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v66;
    v63 = v15;
    v62 = supportedComplicationSlots;
    v61 = -v6;
    do
    {
      v25 = 0;
      do
      {
        if (*v66 != v24)
        {
          objc_enumerationMutation(supportedComplicationSlots);
        }

        v26 = *(*(&v65 + 1) + 8 * v25);
        v27 = [viewCopy complicationLayoutforSlot:{v26, *&v61}];
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
          device2 = [(NTKFaceViewComplicationFactory *)self device];
          v39 = NTKDigitalTimeLabelStyleWideRightSideMargin(device2);
          device3 = [(NTKFaceViewComplicationFactory *)self device];
          v41 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:1 withRightSideMargin:device3 applyAdvanceFudge:v9 forDevice:v11, v13, v15, v39];

          layoutRule = [v41 layoutRule];
          [layoutRule referenceFrame];
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
          device4 = [(NTKFaceViewComplicationFactory *)self device];
          v57 = v55;
          v9 = v46;
          v13 = v45;
          v58 = v52;
          v6 = v50;
          v11 = v49;
          v15 = v63;
          v59 = [(NTKLayoutRule *)NTKComplicationLayoutRule layoutRuleForDevice:device4 withReferenceFrame:2 horizontalLayout:0 verticalLayout:v44, v57, v58, 46.0];

          [v27 setDefaultLayoutRule:v59 forState:0];
          supportedComplicationSlots = v62;
        }

LABEL_13:

        ++v25;
      }

      while (v23 != v25);
      v60 = [supportedComplicationSlots countByEnumeratingWithState:&v65 objects:v69 count:16];
      v23 = v60;
    }

    while (v60);
  }
}

- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot faceView:(id)view
{
  complicationCopy = complication;
  slotCopy = slot;
  viewCopy = view;
  if ([slotCopy isEqualToString:@"date"])
  {
    v13 = [NTKDateComplicationLabel alloc];
    device = [(NTKFaceViewComplicationFactory *)self device];
    v15 = [(NTKDateComplicationLabel *)v13 initWithSizeStyle:0 accentType:0 forDevice:device];

    device2 = [(NTKFaceViewComplicationFactory *)self device];
    ___LayoutConstants_block_invoke_13(device2, device2);
    v18 = v17;

    v19 = [MEMORY[0x277CBBB08] systemFontOfSize:v18 weight:*MEMORY[0x277D74408]];
    [(NTKDateComplicationLabel *)v15 setFont:v19];
    foregroundColor = [(NTKFaceViewComplicationFactory *)self foregroundColor];
    [(NTKDateComplicationLabel *)v15 setTextColor:foregroundColor];

    [(NTKDateComplicationLabel *)v15 setUsesLegibility:self->_usesLegibility];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v22 = [currentLocale objectForKey:*MEMORY[0x277CBE6C8]];

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
    v15 = [(NTKUtilityComplicationFactory *)self->_complicationFactory newViewForComplication:complicationCopy family:family forSlot:[(NTKDigitialUtilitarianFaceViewComplicationFactory *)self _photosUtilitySlotForSlot:slotCopy]];
    [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self configureComplicationView:v15 forSlot:slotCopy faceView:viewCopy];
  }

  return v15;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot attributes:(unint64_t)attributes faceView:(id)faceView
{
  attributesCopy = attributes;
  viewCopy = view;
  slotCopy = slot;
  faceViewCopy = faceView;
  if ([viewCopy conformsToProtocol:&unk_28A859958])
  {
    v12 = viewCopy;
    if (objc_opt_respondsToSelector())
    {
      [v12 setUseBlockyHighlightCorners:1];
      if ((attributesCopy & 0x10) == 0)
      {
LABEL_4:
        if ((attributesCopy & 1) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else if ((attributesCopy & 0x10) == 0)
    {
      goto LABEL_4;
    }

    [v12 setFontWeight:*MEMORY[0x277D74420]];
    [v12 setUseAlternativePunctuation:1];
    -[NTKUtilityComplicationFactory foregroundAlphaForEditing:](self->_complicationFactory, "foregroundAlphaForEditing:", [faceViewCopy editing]);
    [v12 setForegroundAlpha:?];
    -[NTKUtilityComplicationFactory foregroundImageAlphaForEditing:](self->_complicationFactory, "foregroundImageAlphaForEditing:", [faceViewCopy editing]);
    [v12 setForegroundImageAlpha:?];
    [v12 setPlacement:{+[NTKUtilityComplicationFactory placementForSlot:](NTKUtilityComplicationFactory, "placementForSlot:", -[NTKDigitialUtilitarianFaceViewComplicationFactory _photosUtilitySlotForSlot:](self, "_photosUtilitySlotForSlot:", slotCopy))}];
    [v12 setSuppressesInternalColorOverrides:1];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v12 setBackgroundColor:clearColor];

    [v12 setUsesLegibility:self->_usesLegibility];
    if ((attributesCopy & 1) == 0)
    {
LABEL_5:
      if ((attributesCopy & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_14:
    foregroundColor = [(NTKFaceViewComplicationFactory *)self foregroundColor];
    [v12 setForegroundColor:foregroundColor];

    if ((attributesCopy & 2) == 0)
    {
LABEL_6:
      if ((attributesCopy & 4) == 0)
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
    shadowColor = [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self shadowColor];
    [v12 setShadowColor:shadowColor];

    if ((attributesCopy & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
}

- (int64_t)_photosUtilitySlotForSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:@"top-right"])
  {
    v4 = 5;
  }

  else if ([slotCopy isEqualToString:@"bottom"])
  {
    v4 = 9;
  }

  else if ([slotCopy isEqualToString:@"date"])
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)applyComplicationContentSpecificAttributesAnimated:(BOOL)animated faceView:(id)view
{
  animatedCopy = animated;
  viewCopy = view;
  if (animatedCopy)
  {
    foregroundColorProviderBlock = [(NTKFaceViewComplicationFactory *)self foregroundColorProviderBlock];

    alphaProviderBlock = [(NTKFaceViewComplicationFactory *)self alphaProviderBlock];

    v8 = 4;
    if (foregroundColorProviderBlock)
    {
      v8 = 5;
    }

    if (alphaProviderBlock)
    {
      v9 = v8;
    }

    else
    {
      v9 = foregroundColorProviderBlock != 0;
    }
  }

  else
  {
    v9 = 0xFFFFFFFFLL;
  }

  [(NTKFaceViewComplicationFactory *)self applyComplicationContentSpecificAttributesAnimated:animatedCopy attributes:v9 faceView:viewCopy];
}

- (id)createComplicationContentSpecificAttributesAnimationWithAttributes:(unint64_t)attributes faceView:(id)view forSlots:(id)slots
{
  attributesCopy = attributes;
  viewCopy = view;
  foregroundColor = [(NTKFaceViewComplicationFactory *)self foregroundColor];
  shadowColor = [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self shadowColor];
  [(NTKFaceViewComplicationFactory *)self alpha];
  v11 = v10;
  v12 = objc_opt_new();
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __138__NTKDigitialUtilitarianFaceViewComplicationFactory_createComplicationContentSpecificAttributesAnimationWithAttributes_faceView_forSlots___block_invoke;
  v23[3] = &unk_278780428;
  v28 = attributesCopy & 1;
  v24 = foregroundColor;
  v29 = (attributesCopy & 4) != 0;
  v27 = v11;
  v13 = v12;
  v30 = (attributesCopy & 2) != 0;
  v25 = v13;
  v26 = shadowColor;
  v14 = shadowColor;
  v15 = foregroundColor;
  [viewCopy enumerateComplicationDisplayWrappersWithBlock:v23];

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

- (void)setForegroundColor:(id)color faceView:(id)view
{
  colorCopy = color;
  viewCopy = view;
  foregroundColor = [(NTKFaceViewComplicationFactory *)self foregroundColor];
  if (([foregroundColor isEqual:colorCopy] & 1) == 0)
  {
    [(NTKFaceViewComplicationFactory *)self setForegroundColor:colorCopy];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __81__NTKDigitialUtilitarianFaceViewComplicationFactory_setForegroundColor_faceView___block_invoke;
    v9[3] = &unk_27877F148;
    v9[4] = self;
    v10 = viewCopy;
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

- (void)setShadowColor:(id)color faceView:(id)view
{
  colorCopy = color;
  viewCopy = view;
  shadowColor = [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self shadowColor];
  if (([shadowColor isEqual:colorCopy] & 1) == 0)
  {
    [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self setShadowColor:colorCopy];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__NTKDigitialUtilitarianFaceViewComplicationFactory_setShadowColor_faceView___block_invoke;
    v9[3] = &unk_27877F148;
    v9[4] = self;
    v10 = viewCopy;
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

- (void)setUsesLegibility:(BOOL)legibility faceView:(id)view
{
  legibilityCopy = legibility;
  viewCopy = view;
  if ([(NTKDigitialUtilitarianFaceViewComplicationFactory *)self usesLegibility]!= legibilityCopy)
  {
    [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self setUsesLegibility:legibilityCopy];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __80__NTKDigitialUtilitarianFaceViewComplicationFactory_setUsesLegibility_faceView___block_invoke;
    v7[3] = &unk_27877F148;
    v7[4] = self;
    v8 = viewCopy;
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

- (void)setAlpha:(double)alpha faceView:(id)view
{
  viewCopy = view;
  [(NTKFaceViewComplicationFactory *)self alpha];
  if (v7 != alpha)
  {
    [(NTKFaceViewComplicationFactory *)self setAlpha:alpha];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __71__NTKDigitialUtilitarianFaceViewComplicationFactory_setAlpha_faceView___block_invoke;
    v8[3] = &unk_27877F148;
    v8[4] = self;
    v9 = viewCopy;
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