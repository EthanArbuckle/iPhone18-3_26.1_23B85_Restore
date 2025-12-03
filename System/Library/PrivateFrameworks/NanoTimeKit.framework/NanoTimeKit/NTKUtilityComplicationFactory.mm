@interface NTKUtilityComplicationFactory
+ (CGPoint)smileShapeAlignmentPointForDevice:(id)device;
+ (CGSize)smileShapeSizeForDevice:(id)device;
+ (id)smileShapeForDevice:(id)device;
+ (unint64_t)placementForSlot:(int64_t)slot;
+ (void)curvedCircleRadius:(double *)radius centerAngle:(double *)angle maxAngularWidth:(double *)width circleCenter:(CGPoint *)center interior:(BOOL *)interior forSlot:(int64_t)slot forDevice:(id)device;
- (CGRect)keylineFrameForCornerComplicationSlot:(id)slot selected:(BOOL)selected faceView:(id)view;
- (CGSize)normalCircularPadding;
- (NTKFaceView)faceView;
- (NTKUtilityComplicationFactoryDelegate)delegate;
- (UIEdgeInsets)screenEdgeInsets;
- (double)_maxBottomCenterWidthLeavingRoomForKeylines:(CGRect)keylines;
- (double)_maxBottomCornerWidthLeavingRoomForKeylines:(CGRect)keylines;
- (double)_maxDateWidthLeavingRoomForKeylines;
- (double)_maxTopCornerWidthLeavingRoomForKeylines:(CGRect)keylines;
- (double)_maxWidthForKeylineAndPadding;
- (double)bezelComplicationMaxAngularWidth;
- (double)bezelComplicationRadiusWithDialDiameter:(double)diameter;
- (double)foregroundAlphaForEditing:(BOOL)editing;
- (double)foregroundAlphaForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (double)foregroundImageAlphaForEditing:(BOOL)editing;
- (double)foregroundImageAlphaForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (id)_curvedImageForSlot:(int64_t)slot filled:(BOOL)filled;
- (id)_slotForUtilitySlot:(int64_t)slot;
- (id)_viewForDateComplication:(id)complication;
- (id)initForDevice:(id)device;
- (id)keylineViewForComplicationSlot:(id)slot;
- (id)keylineViewForSlot:(int64_t)slot dialDiameter:(double)diameter;
- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)newViewForComplication:(id)complication family:(int64_t)family forSlot:(int64_t)slot;
- (int64_t)_utilitySlotForSlot:(id)slot;
- (int64_t)complicationPickerStyleForSlot:(id)slot;
- (int64_t)layoutOverrideForComplicationType:(unint64_t)type inSlot:(int64_t)slot;
- (int64_t)legacyLayoutOverrideforComplicationType:(unint64_t)type slot:(id)slot;
- (void)_configureBottomCenterLayout:(id)layout withBounds:(CGRect)bounds variant:(BOOL)variant;
- (void)_configureBottomLeftLayout:(id)layout withBounds:(CGRect)bounds variant:(BOOL)variant;
- (void)_configureBottomRightAboveLayout:(id)layout withBounds:(CGRect)bounds;
- (void)_configureBottomRightBelowLayout:(id)layout withBounds:(CGRect)bounds;
- (void)_configureBottomRightLayout:(id)layout withBounds:(CGRect)bounds variant:(BOOL)variant;
- (void)_configureBottomRightLongLayout:(id)layout withBounds:(CGRect)bounds;
- (void)_configureDateLayout:(id)layout withBounds:(CGRect)bounds;
- (void)_configureLayout:(id)layout withNormalSize:(CGSize)size editingSize:(CGSize)editingSize variant:(BOOL)variant addCircleOverrides:(BOOL)overrides makeRuleBlock:(id)block;
- (void)_configureOverridesForLayout:(id)layout withNormalSize:(CGSize)size editingSize:(CGSize)editingSize variant:(BOOL)variant addCircleOverrides:(BOOL)overrides makeRuleBlock:(id)block;
- (void)_configureTopBezelLayout:(id)layout withBounds:(CGRect)bounds dialDiameter:(double)diameter;
- (void)_configureTopLeftLayout:(id)layout withBounds:(CGRect)bounds variant:(BOOL)variant;
- (void)_configureTopRightAboveLayout:(id)layout withBounds:(CGRect)bounds;
- (void)_configureTopRightBelowLayout:(id)layout withBounds:(CGRect)bounds;
- (void)_configureTopRightLayout:(id)layout withBounds:(CGRect)bounds variant:(BOOL)variant;
- (void)_configureUpNextTopRightLayout:(id)layout withBounds:(CGRect)bounds;
- (void)configureComplicationLayout:(id)layout forSlot:(int64_t)slot bounds:(CGRect)bounds dialDiameter:(double)diameter;
- (void)configureComplicationView:(id)view forSlot:(id)slot;
- (void)configureComplicationView:(id)view forSlot:(id)slot dialDiameter:(double)diameter;
- (void)curvedComplicationCircleRadius:(double *)radius centerAngle:(double *)angle maxAngularWidth:(double *)width circleCenter:(CGPoint *)center interior:(BOOL *)interior forSlot:(id)slot;
- (void)loadLayoutRules;
@end

@implementation NTKUtilityComplicationFactory

- (id)initForDevice:(id)device
{
  deviceCopy = device;
  v38.receiver = self;
  v38.super_class = NTKUtilityComplicationFactory;
  v6 = [(NTKUtilityComplicationFactory *)&v38 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    *&v7->_graphicCornerComplications = 0;
    memset(v37, 0, sizeof(v37));
    v35 = 0u;
    v36 = 0u;
    memset(v34, 0, sizeof(v34));
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    ___LayoutConstants_block_invoke_5(v7->_device, &v24);
    v7->_accommodatesTwoTopComplications = 1;
    v8 = *&v34[1];
    v7->_normalCircularPadding = *&v37[1];
    *&v7->_normalSidePadding = v8;
    *&v7->_deselectedKeylineSideInnerPadding = xmmword_22DCE7A50;
    v7->_deselectedKeylineCircularInnerPadding = 2.5;
    *&v7->_selectedKeylineSideInnerPadding = xmmword_22DCE7A60;
    CLKValueForDeviceMetrics();
    v7->_selectedKeylineHeight = v9;
    v7->_foregroundAlpha = NTKUtilityComplicationNormalForegroundAlpha();
    v10 = NTKUtilityComplicationNormalForegroundAlpha();
    v11 = MEMORY[0x277D768C8];
    v12 = *&v26;
    v13 = *&v25;
    v7->_foregroundImageAlpha = v10;
    v7->_maxNormalLongWidth = v12;
    v14 = v11[1];
    *&v7->_screenEdgeInsets.top = *v11;
    v7->_bottomCenterLayout = 1;
    *&v7->_screenEdgeInsets.bottom = v14;
    v7->_crownIndicatorGap = v13;
    v15 = *(&v35 + 1);
    *&v7->_bezelLabelTopPadding = v34[3];
    v16 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:v15 design:*MEMORY[0x277D74410]];
    cLKFontWithAlternativePunctuation = [v16 CLKFontWithAlternativePunctuation];
    topBezelLabelFont = v7->_topBezelLabelFont;
    v7->_topBezelLabelFont = cLKFontWithAlternativePunctuation;

    *&v7->_bezelKeylineInnerCircleOffset = v36;
    [deviceCopy screenBounds];
    v20 = v19;
    ___LayoutConstants_block_invoke_5(v7->_device, v22);
    v7->_bezelKeylineDiameter = v20 - v23;
  }

  return v7;
}

+ (unint64_t)placementForSlot:(int64_t)slot
{
  if ((slot - 2) > 0xB)
  {
    return 3;
  }

  else
  {
    return qword_22DCE7B10[slot - 2];
  }
}

+ (id)smileShapeForDevice:(id)device
{
  v12 = 0.0;
  v13 = 0.0;
  deviceCopy = device;
  ___LayoutConstants_block_invoke_5(deviceCopy, v10);
  v4 = v11;
  ___LayoutConstants_block_invoke_5(deviceCopy, v8);
  v5 = v9;
  [NTKUtilityComplicationFactory curvedCircleRadius:&v13 centerAngle:0 maxAngularWidth:&v12 circleCenter:0 interior:0 forSlot:10 forDevice:deviceCopy];
  v6 = [off_27877BE80 smileShapeWithDevice:deviceCopy outerRadius:0 innerRadius:v5 + v13 angle:v13 - v4 strokeWidth:v12 * 0.5 filled:NTKKeylineWidth()];

  return v6;
}

+ (CGSize)smileShapeSizeForDevice:(id)device
{
  v17 = 0.0;
  v18 = 0.0;
  deviceCopy = device;
  ___LayoutConstants_block_invoke_5(deviceCopy, v15);
  v4 = v16;
  ___LayoutConstants_block_invoke_5(deviceCopy, v13);
  v5 = v14;
  [NTKUtilityComplicationFactory curvedCircleRadius:&v18 centerAngle:0 maxAngularWidth:&v17 circleCenter:0 interior:0 forSlot:10 forDevice:deviceCopy];

  v6 = v5 + v18;
  v7 = v18 - v4;
  v8 = (v6 - (v18 - v4)) * 0.5;
  v9 = (v6 + v7) * 0.5;
  v10 = __sincos_stret(1.57079633 - v17 * 0.5);
  v11 = v8 + v9 * v10.__cosval + v8 + v9 * v10.__cosval;
  v12 = v6 - -(v8 - v9 * v10.__sinval);
  result.height = v12;
  result.width = v11;
  return result;
}

+ (CGPoint)smileShapeAlignmentPointForDevice:(id)device
{
  deviceCopy = device;
  ___LayoutConstants_block_invoke_5(deviceCopy, v11);
  v4 = v12;
  [NTKUtilityComplicationFactory smileShapeSizeForDevice:deviceCopy];
  v6 = v5;
  v8 = v7;

  v9 = v6 * 0.5;
  v10 = v8 - v4;
  result.y = v10;
  result.x = v9;
  return result;
}

- (int64_t)layoutOverrideForComplicationType:(unint64_t)type inSlot:(int64_t)slot
{
  if ((slot - 1) > 3)
  {
    return 0;
  }

  v5 = NTKUtilityComplicationCircularTypes();
  LOBYTE(type) = [v5 containsIndex:type];

  if (type)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (id)newViewForComplication:(id)complication family:(int64_t)family forSlot:(int64_t)slot
{
  complicationCopy = complication;
  if (slot == 12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(NTKUtilityComplicationFactory *)self _viewForDateComplication:complicationCopy];
LABEL_10:
      v10 = v9;
      goto LABEL_11;
    }
  }

  if ([complicationCopy complicationType] != 56)
  {
    if ((slot - 7) > 4)
    {
      +[NTKUtilityComplicationView smallComplicationViewForType:](NTKUtilityComplicationView, "smallComplicationViewForType:", [complicationCopy complicationType]);
    }

    else
    {
      +[NTKUtilityComplicationView largeComplicationViewForType:narrow:](NTKUtilityComplicationView, "largeComplicationViewForType:narrow:", [complicationCopy complicationType], family == 104);
    }
    v9 = ;
    goto LABEL_10;
  }

  v10 = [[NTKWidgetUtilityComplicationProxyView alloc] initWithFamily:family];
  v11 = [(NTKUtilityComplicationFactory *)self _slotForUtilitySlot:slot];
  [(NTKUtilityComplicationFactory *)self configureComplicationView:v10 forSlot:v11];

LABEL_11:
  return v10;
}

- (void)configureComplicationView:(id)view forSlot:(id)slot dialDiameter:(double)diameter
{
  viewCopy = view;
  slotCopy = slot;
  if ([slotCopy isEqualToString:@"bezel"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = viewCopy;
      device = [(NTKUtilityComplicationFactory *)self device];
      ___LayoutConstants_block_invoke_5(device, v57);
      [v10 setFontSize:v58];

      [v10 setFontWeight:*MEMORY[0x277D74410]];
      [v10 setUseRoundedFontDesign:1];
      [v10 setPlacement:{+[NTKUtilityComplicationFactory placementForSlot:](NTKUtilityComplicationFactory, "placementForSlot:", 11)}];
      [(NTKUtilityComplicationFactory *)self bezelComplicationMaxAngularWidth];
      [v10 setMaxAngularWidth:?];
      [(NTKUtilityComplicationFactory *)self bezelComplicationRadiusWithDialDiameter:diameter];
      [v10 setCircleRadius:?];
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      [v10 setForegroundColor:whiteColor];

      [v10 setForegroundAlpha:1.0];
      [v10 setShouldScaleAndFadeWhenHighlighting:1];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    device2 = [(NTKUtilityComplicationFactory *)self device];
    _UtilitarianFlatImageSizeForDevice();

    if ([slotCopy isEqualToString:@"bottom-center"])
    {
      device3 = [(NTKUtilityComplicationFactory *)self device];
      [device3 screenBounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      device4 = [(NTKUtilityComplicationFactory *)self device];
      v24 = NTKUtilityComplicationCurvedBuffer(device4);

      device5 = [(NTKUtilityComplicationFactory *)self device];
      NTKUtilityComplicationCurvedCenterSize();
      v27 = v26;

      v59.origin.x = v16;
      v59.origin.y = v18;
      v59.size.width = v20;
      v59.size.height = v22;
      v28 = CGRectGetHeight(v59) - v24 - v27;
      v60.origin.x = v16;
      v60.origin.y = v18;
      v60.size.width = v20;
      v60.size.height = v22;
      Width = CGRectGetWidth(v60);
      device6 = [(NTKUtilityComplicationFactory *)self device];
      v31 = (Width - NTKUtilityComplicationCurvedCenterSize()) * -0.5;

      device7 = [(NTKUtilityComplicationFactory *)self device];
      v33 = NTKUtilityComplicationBottomCenterCurvedRadius(device7);

      device8 = [(NTKUtilityComplicationFactory *)self device];
      v35 = NTKUtilityComplicationCurvedLowerOffset(device8);

      device9 = [(NTKUtilityComplicationFactory *)self device];
      [device9 screenBounds];
      v37 = CGRectGetMaxY(v61) - (v33 + v35);

      device10 = [(NTKUtilityComplicationFactory *)self device];
      [device10 screenBounds];
      MidX = CGRectGetMidX(v62);

      v40 = viewCopy;
      delegate = [(NTKUtilityComplicationFactory *)self delegate];
      [v40 setTextLayoutStyle:{objc_msgSend(delegate, "textLayoutStyleForSlot:", -[NTKUtilityComplicationFactory _utilitySlotForSlot:](self, "_utilitySlotForSlot:", slotCopy))}];

      [v40 setCurveRadius:v33];
      [v40 setInterior:1];
      [v40 setCurveCenter:{MidX + v31, v37 - v28}];
      whiteColor2 = [MEMORY[0x277D75348] whiteColor];
      [v40 setBezelTextColor:whiteColor2];

      whiteColor3 = [MEMORY[0x277D75348] whiteColor];
      [v40 setTextColor:whiteColor3];

      device11 = [(NTKUtilityComplicationFactory *)self device];
      [v40 setFontSize:NTKUtilityComplicationFontSize(device11)];

      device12 = [(NTKUtilityComplicationFactory *)self device];
      [v40 setMaxAngularWidth:NTKUtilityComplicationBottomCenterAngularWidth(device12)];

      if (CLKLayoutIsRTL())
      {
        v46 = 2;
      }

      else
      {
        v46 = 1;
      }

      [v40 setImagePlacement:v46];
    }

    else
    {
      if ([slotCopy isEqualToString:@"bezel"])
      {
        v47 = viewCopy;
        [v47 setTextLayoutStyle:1];
        [(NTKUtilityComplicationFactory *)self bezelComplicationRadiusWithDialDiameter:diameter];
        [v47 setCurveRadius:?];
        [v47 setInterior:0];
        [v47 setCurveCenter:{diameter * 0.5, diameter * 0.5}];
        whiteColor4 = [MEMORY[0x277D75348] whiteColor];
        [v47 setBezelTextColor:whiteColor4];

        whiteColor5 = [MEMORY[0x277D75348] whiteColor];
        [v47 setForegroundColor:whiteColor5];

        device13 = [(NTKUtilityComplicationFactory *)self device];
        [v47 setFontSize:NTKUtilityComplicationFontSize(device13)];

        [(NTKUtilityComplicationFactory *)self bezelComplicationMaxAngularWidth];
        [v47 setMaxAngularWidth:?];
        if (CLKLayoutIsRTL())
        {
          v51 = 2;
        }

        else
        {
          v51 = 1;
        }

        [v47 setImagePlacement:v51];
        device14 = [(NTKUtilityComplicationFactory *)self device];
        [v47 setImagePadding:NTKUtilityComplicationLabelImagePadding(device14)];

        [v47 setImageMaxSize:{0.0, 0.0}];
        [v47 setContentHeight:diameter * 0.5];
        [v47 setContentVerticalAlignment:1];
        goto LABEL_20;
      }

      v53 = [NTKUtilityComplicationFactory placementForSlot:[(NTKUtilityComplicationFactory *)self _utilitySlotForSlot:slotCopy]];
      if ((v53 & 2) != 0)
      {
        v54 = 3;
      }

      else
      {
        v54 = (v53 >> 1) & 4;
      }

      v40 = viewCopy;
      [v40 setTextLayoutStyle:0];
      device15 = [(NTKUtilityComplicationFactory *)self device];
      [v40 setFontSize:NTKUtilityComplicationFontSize(device15)];

      [v40 setFontWeight:*MEMORY[0x277D74418]];
      [v40 setTextAlignment:v54];
    }

    device16 = [(NTKUtilityComplicationFactory *)self device];
    [v40 setImagePadding:NTKUtilityComplicationLabelImagePadding(device16)];

    [v40 setImageMaxSize:{0.0, 0.0}];
    [v40 setContentHeight:0.0];
LABEL_20:
  }
}

- (double)bezelComplicationRadiusWithDialDiameter:(double)diameter
{
  [(CLKFont *)self->_topBezelLabelFont capHeight];
  device = [(NTKUtilityComplicationFactory *)self device];
  CLKRoundForDevice();
  v6 = v5;

  return v6;
}

- (double)bezelComplicationMaxAngularWidth
{
  device = [(NTKUtilityComplicationFactory *)self device];
  v3 = NTKWhistlerBezelCircularViewDefaultMaxAngularWidth();

  return v3;
}

- (void)configureComplicationLayout:(id)layout forSlot:(int64_t)slot bounds:(CGRect)bounds dialDiameter:(double)diameter
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  delegate = [(NTKUtilityComplicationFactory *)self delegate];
  v14 = [delegate textLayoutStyleForSlot:slot];

  switch(slot)
  {
    case 1:
      [(NTKUtilityComplicationFactory *)self _configureTopLeftLayout:layoutCopy withBounds:v14 == 1 variant:x, y, width, height];
      break;
    case 2:
      [(NTKUtilityComplicationFactory *)self _configureTopRightLayout:layoutCopy withBounds:v14 == 1 variant:x, y, width, height];
      break;
    case 3:
      [(NTKUtilityComplicationFactory *)self _configureBottomLeftLayout:layoutCopy withBounds:v14 == 1 variant:x, y, width, height];
      break;
    case 4:
      [(NTKUtilityComplicationFactory *)self _configureBottomRightLayout:layoutCopy withBounds:v14 == 1 variant:x, y, width, height];
      break;
    case 5:
      [(NTKUtilityComplicationFactory *)self _configureTopRightAboveLayout:layoutCopy withBounds:x, y, width, height];
      break;
    case 6:
      [(NTKUtilityComplicationFactory *)self _configureBottomRightAboveLayout:layoutCopy withBounds:x, y, width, height];
      break;
    case 7:
      [(NTKUtilityComplicationFactory *)self _configureTopRightBelowLayout:layoutCopy withBounds:x, y, width, height];
      break;
    case 8:
      [(NTKUtilityComplicationFactory *)self _configureBottomRightBelowLayout:layoutCopy withBounds:x, y, width, height];
      break;
    case 9:
      [(NTKUtilityComplicationFactory *)self _configureBottomRightLongLayout:layoutCopy withBounds:x, y, width, height];
      break;
    case 10:
      [(NTKUtilityComplicationFactory *)self _configureBottomCenterLayout:layoutCopy withBounds:v14 == 1 variant:x, y, width, height];
      break;
    case 11:
      [(NTKUtilityComplicationFactory *)self _configureTopBezelLayout:layoutCopy withBounds:x dialDiameter:y, width, height, diameter];
      break;
    case 12:
      [(NTKUtilityComplicationFactory *)self _configureDateLayout:layoutCopy withBounds:x, y, width, height];
      break;
    case 13:
      [(NTKUtilityComplicationFactory *)self _configureUpNextTopRightLayout:layoutCopy withBounds:x, y, width, height];
      break;
    default:
      break;
  }
}

- (id)_curvedImageForSlot:(int64_t)slot filled:(BOOL)filled
{
  filledCopy = filled;
  v21[4] = *MEMORY[0x277D85DE8];
  if ((slot - 1) < 4)
  {
    v20[0] = &unk_284181C60;
    v20[1] = &unk_284181C90;
    v21[0] = &unk_284181C78;
    v21[1] = &unk_284181CA8;
    v20[2] = &unk_284181CC0;
    v20[3] = &unk_284181CF0;
    v21[2] = &unk_284181CD8;
    v21[3] = &unk_284181D08;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];
    [(NTKUtilityComplicationFactory *)self device];
    objc_claimAutoreleasedReturnValue();
    [MEMORY[0x277CCABB0] numberWithInteger:slot];
    [v7 objectForKeyedSubscript:objc_claimAutoreleasedReturnValue()];
    [objc_claimAutoreleasedReturnValue() intValue];
    [(NTKUtilityComplicationFactory *)self device];
    objc_claimAutoreleasedReturnValue();
    CDCornerComplicationKeylineSize();
  }

  if (slot == 10)
  {
    v18 = 0.0;
    v19 = 0.0;
    ___LayoutConstants_block_invoke_5(self->_device, v16);
    v9 = v17;
    ___LayoutConstants_block_invoke_5(self->_device, v14);
    v10 = v15;
    [NTKUtilityComplicationFactory curvedCircleRadius:&v19 centerAngle:0 maxAngularWidth:&v18 circleCenter:0 interior:0 forSlot:10 forDevice:self->_device];
    device = [(NTKUtilityComplicationFactory *)self device];
    v12 = [off_27877BE80 smileKeylineWithDevice:device outerRadius:filledCopy innerRadius:v10 + v19 angle:v19 - v9 strokeWidth:v18 * 0.5 filled:NTKKeylineWidth()];
  }

  else
  {
    if (slot == 11)
    {
      if (filled)
      {
        v8 = [@"utility_bezel_keyline" stringByAppendingString:@"_filled"];
      }

      else
      {
        v8 = @"utility_bezel_keyline";
      }

      NTKImageNamed(v8);
    }

    v12 = 0;
  }

  return v12;
}

- (id)keylineViewForSlot:(int64_t)slot dialDiameter:(double)diameter
{
  delegate = [(NTKUtilityComplicationFactory *)self delegate];
  v8 = [delegate textLayoutStyleForSlot:slot];

  if (v8 == 1)
  {
    v9 = [(NTKUtilityComplicationFactory *)self _curvedKeylineImageForSlot:slot];
    v10 = NTKKeylineViewWithImage(v9);

    if (slot == 10)
    {
      v34 = 0.0;
      v33 = 0uLL;
      v32 = 0;
      [NTKUtilityComplicationFactory curvedCircleRadius:&v34 centerAngle:0 maxAngularWidth:0 circleCenter:&v33 interior:&v32 forSlot:10 forDevice:self->_device];
      ___LayoutConstants_block_invoke_5(self->_device, v30);
      v11 = v34;
      v12 = asin(v31 / (v11 + v11));
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __65__NTKUtilityComplicationFactory_keylineViewForSlot_dialDiameter___block_invoke;
      v22[3] = &__block_descriptor_105_e58_B40__0_CGPoint_dd_8__UIView_NTKKeylineView__24__UIEvent_32l;
      v23 = v33;
      v24 = v11;
      v29 = v32;
      v25 = 0x3FF921FB54442D18;
      v26 = v12;
      v27 = xmmword_22DCE7AF0;
      v28 = unk_22DCE7B00;
      v13 = [NTKKeylineTouchable touchableWithHandler:v22];
      [v10 setTouchable:v13];

      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
  }

  if (slot == 12)
  {
    ___LayoutConstants_block_invoke_5(self->_device, v20);
    v17 = NTKKeylineViewWithContinuousCurveCornerRadius(v21);
  }

  else
  {
    if (slot != 11)
    {
      goto LABEL_10;
    }

    faceView = [(NTKUtilityComplicationFactory *)self faceView];
    [faceView _faceEditingScaleForEditMode:1 slot:0];
    v16 = v15;

    v17 = NTKKeylineViewWithWheelShapedPath(diameter, diameter - self->_bezelKeylineInnerCircleOffset, v16);
  }

  v18 = v17;

  v10 = v18;
LABEL_10:

  return v10;
}

- (CGRect)keylineFrameForCornerComplicationSlot:(id)slot selected:(BOOL)selected faceView:(id)view
{
  selectedCopy = selected;
  slotCopy = slot;
  viewCopy = view;
  if ([slotCopy isEqualToString:@"top-left"])
  {
    v10 = 0;
  }

  else if ([slotCopy isEqualToString:@"top-right"])
  {
    v10 = 1;
  }

  else if ([slotCopy isEqualToString:@"bottom-left"])
  {
    v10 = 2;
  }

  else
  {
    if (([slotCopy isEqualToString:@"bottom-right"] & 1) == 0)
    {
      x = *MEMORY[0x277CBF3A0];
      y = *(MEMORY[0x277CBF3A0] + 8);
      width = *(MEMORY[0x277CBF3A0] + 16);
      height = *(MEMORY[0x277CBF3A0] + 24);
      goto LABEL_13;
    }

    v10 = 3;
  }

  if (selectedCopy)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  [viewCopy bounds];
  v12 = [NTKRichComplicationCornerUtilities layoutRuleForState:v11 position:v10 faceBounds:self->_device forDevice:self->_usesNarrowTopSlots narrowTopSlots:?];
  [v12 referenceFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [v12 keylinePadding];
  v24 = v14 - v23;
  v26 = v16 - v25;
  v27 = v18 - (-v22 - v23);
  v28 = v20 - (-v21 - v25);
  v29 = [viewCopy _complicationContainerViewForSlot:slotCopy];
  [viewCopy convertRect:v29 fromCoordinateSpace:{v24, v26, v27, v28}];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  [currentDevice screenBounds];
  v40 = v39;

  [viewCopy faceViewFrameForEditMode:1 option:0 slot:slotCopy];
  v42 = v41;
  v44 = v43;
  CGAffineTransformMakeScale(&v54, v45 / v40, v45 / v40);
  v55.origin.x = v31;
  v55.origin.y = v33;
  v55.size.width = v35;
  v55.size.height = v37;
  v56 = CGRectApplyAffineTransform(v55, &v54);
  v57 = CGRectOffset(v56, v42, v44);
  x = v57.origin.x;
  y = v57.origin.y;
  width = v57.size.width;
  height = v57.size.height;

LABEL_13:
  v50 = x;
  v51 = y;
  v52 = width;
  v53 = height;
  result.size.height = v53;
  result.size.width = v52;
  result.origin.y = v51;
  result.origin.x = v50;
  return result;
}

+ (void)curvedCircleRadius:(double *)radius centerAngle:(double *)angle maxAngularWidth:(double *)width circleCenter:(CGPoint *)center interior:(BOOL *)interior forSlot:(int64_t)slot forDevice:(id)device
{
  deviceCopy = device;
  v15 = [NTKUtilityComplicationFactory placementForSlot:slot];
  [NTKUtilityFlatComplicationView circleRadius:radius centerAngle:angle maxAngularWidth:width interior:interior forPlacement:v15 forDevice:deviceCopy];
  if (v15)
  {
    v17 = NTKUtilityComplicationCurvedUpperOffset(deviceCopy);
  }

  else
  {
    v16 = NTKUtilityComplicationCurvedLowerOffset(deviceCopy);
    ___LayoutConstants_block_invoke_5(deviceCopy, v25);
    v17 = v16 + v26;
  }

  [deviceCopy screenBounds];
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;
  MaxY = CGRectGetMaxY(v28);
  if (center)
  {
    v23 = MaxY - (v17 + *radius);
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    center->x = CGRectGetMidX(v29);
    center->y = v23;
  }
}

- (double)foregroundAlphaForEditing:(BOOL)editing
{
  if (editing)
  {
    return NTKUtilityComplicationEditingForegroundAlpha();
  }

  else
  {
    return self->_foregroundAlpha;
  }
}

- (double)foregroundAlphaForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  [(NTKUtilityComplicationFactory *)self foregroundAlphaForEditing:mode != 0];
  [(NTKUtilityComplicationFactory *)self foregroundAlphaForEditing:editMode != 0];

  CLKInterpolateBetweenFloatsClipped();
  return result;
}

- (double)foregroundImageAlphaForEditing:(BOOL)editing
{
  if (editing)
  {
    return NTKUtilityComplicationEditingForegroundAlpha();
  }

  else
  {
    return self->_foregroundImageAlpha;
  }
}

- (double)foregroundImageAlphaForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  [(NTKUtilityComplicationFactory *)self foregroundImageAlphaForEditing:mode != 0];
  [(NTKUtilityComplicationFactory *)self foregroundImageAlphaForEditing:editMode != 0];

  CLKInterpolateBetweenFloatsClipped();
  return result;
}

- (id)_viewForDateComplication:(id)complication
{
  complicationCopy = complication;
  v5 = objc_alloc_init(NTKUtilityDateComplicationView);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  dateStyle = [complicationCopy dateStyle];

  v8 = [WeakRetained utilityDateComplicationFontForDateStyle:dateStyle];
  [(NTKUtilityDateComplicationView *)v5 setFont:v8];

  return v5;
}

- (void)_configureTopLeftLayout:(id)layout withBounds:(CGRect)bounds variant:(BOOL)variant
{
  variantCopy = variant;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  top = self->_screenEdgeInsets.top;
  left = self->_screenEdgeInsets.left;
  v25 = y;
  v14 = x + left;
  v15 = y + top;
  v26 = width;
  v27 = height;
  v16 = width - (left + self->_screenEdgeInsets.right);
  v17 = height - (top + self->_screenEdgeInsets.bottom);
  if (variantCopy)
  {
    v18 = NTKUtilityComplicationCurvedCornerSize(self->_device);
    NTKUtilityComplicationCurvedCornerSize(self->_device);
    v20 = v19;
    v21 = v18;
  }

  else
  {
    ___LayoutConstants_block_invoke_5(self->_device, v36);
    v18 = v37;
    v20 = NTKUtilityComplicationHeight(self->_device);
    [(NTKUtilityComplicationFactory *)self _maxTopCornerWidthLeavingRoomForKeylines:v14, v15, v16, v17];
    v21 = v22;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__NTKUtilityComplicationFactory__configureTopLeftLayout_withBounds_variant___block_invoke;
  aBlock[3] = &unk_27877EFF8;
  v35 = variantCopy;
  aBlock[4] = self;
  *&aBlock[5] = v14;
  *&aBlock[6] = v15;
  *&aBlock[7] = v16;
  *&aBlock[8] = v17;
  v23 = _Block_copy(aBlock);
  if (self->_graphicCornerComplications)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __76__NTKUtilityComplicationFactory__configureTopLeftLayout_withBounds_variant___block_invoke_2;
    v28[3] = &unk_27877E670;
    v30 = x;
    v31 = v25;
    v32 = v26;
    v33 = v27;
    v28[4] = self;
    v24 = layoutCopy;
    v29 = v24;
    NTKEnumerateComplicationStates(v28);
    [(NTKUtilityComplicationFactory *)self _configureOverridesForLayout:v24 withNormalSize:variantCopy editingSize:1 variant:v23 addCircleOverrides:v18 makeRuleBlock:v20, v21, v20];
  }

  else
  {
    [(NTKUtilityComplicationFactory *)self _configureLayout:layoutCopy withNormalSize:variantCopy editingSize:1 variant:v23 addCircleOverrides:v18 makeRuleBlock:v20, v21, v20];
  }
}

id __76__NTKUtilityComplicationFactory__configureTopLeftLayout_withBounds_variant___block_invoke(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  if (a2)
  {
    v11 = a6;
    v12 = a5;
    v13 = a6;
    v14 = a5;
    if (*(a1 + 72) != 1 || ([*(a1 + 32) _curvedKeylineImageForSlot:1], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "size"), v17 = v16, v19 = v18, v15, ___LayoutConstants_block_invoke_5(*(*(a1 + 32) + 16), v32), v11 = v34 + a6, v12 = v33 + a5, v13 = v19 - (a4 + a6 + v34), v14 = v17 - (a3 + a5 + v33), v20 = 0.0, (*(a1 + 72) & 1) == 0))
    {
      ___LayoutConstants_block_invoke_5(*(*(a1 + 32) + 16), v30);
      v20 = v31;
    }
  }

  else
  {
    v11 = *MEMORY[0x277D768C8];
    v12 = *(MEMORY[0x277D768C8] + 8);
    v13 = *(MEMORY[0x277D768C8] + 16);
    v14 = *(MEMORY[0x277D768C8] + 24);
    v20 = 0.0;
  }

  v21 = CGRectGetMinX(*(a1 + 40)) + a5;
  v22 = v20 + CGRectGetMinY(*(a1 + 40)) + a6;
  if (a2 && *(a1 + 72) == 1)
  {
    ___LayoutConstants_block_invoke_5(*(*(a1 + 32) + 16), v27);
    v21 = v21 + v28;
    v22 = v22 + v29;
  }

  v23 = *(*(a1 + 32) + 16);
  v24 = *(a1 + 72) ^ 1;

  return [NTKComplicationLayoutRule layoutRuleForDevice:v23 withReferenceFrame:0 horizontalLayout:v24 verticalLayout:1 keylinePadding:v21 clip:v22, a3, a4, v11, v12, v13, v14];
}

void __76__NTKUtilityComplicationFactory__configureTopLeftLayout_withBounds_variant___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [NTKRichComplicationCornerUtilities layoutRuleForState:a2 position:0 faceBounds:*(*(a1 + 32) + 16) forDevice:*(*(a1 + 32) + 9) narrowTopSlots:*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)];
  [*(a1 + 40) setDefaultLayoutRule:v4 forState:a2];
}

- (void)_configureTopRightLayout:(id)layout withBounds:(CGRect)bounds variant:(BOOL)variant
{
  variantCopy = variant;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  top = self->_screenEdgeInsets.top;
  left = self->_screenEdgeInsets.left;
  v26 = y;
  v14 = x + left;
  v15 = y + top;
  v27 = width;
  v28 = height;
  v16 = width - (left + self->_screenEdgeInsets.right);
  v17 = height - (top + self->_screenEdgeInsets.bottom);
  if (variantCopy)
  {
    v18 = NTKUtilityComplicationCurvedCornerSize(self->_device);
    NTKUtilityComplicationCurvedCornerSize(self->_device);
    v20 = v19;
    v21 = v18;
  }

  else
  {
    ___LayoutConstants_block_invoke_5(self->_device, v37);
    v18 = v38;
    v20 = NTKUtilityComplicationHeight(self->_device);
    [(NTKUtilityComplicationFactory *)self _maxTopCornerWidthLeavingRoomForKeylines:v14, v15, v16, v17];
    v21 = v22;
  }

  crownIndicatorGap = self->_crownIndicatorGap;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__NTKUtilityComplicationFactory__configureTopRightLayout_withBounds_variant___block_invoke;
  aBlock[3] = &unk_27877F020;
  v36 = variantCopy;
  aBlock[4] = self;
  *&aBlock[5] = crownIndicatorGap;
  *&aBlock[6] = v14;
  *&aBlock[7] = v15;
  *&aBlock[8] = v16;
  *&aBlock[9] = v17;
  v24 = _Block_copy(aBlock);
  if (self->_graphicCornerComplications)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __77__NTKUtilityComplicationFactory__configureTopRightLayout_withBounds_variant___block_invoke_2;
    v29[3] = &unk_27877E670;
    v31 = x;
    v32 = v26;
    v33 = v27;
    v34 = v28;
    v29[4] = self;
    v25 = layoutCopy;
    v30 = v25;
    NTKEnumerateComplicationStates(v29);
    [(NTKUtilityComplicationFactory *)self _configureOverridesForLayout:v25 withNormalSize:variantCopy editingSize:1 variant:v24 addCircleOverrides:v18 makeRuleBlock:v20, v21, v20];
  }

  else
  {
    [(NTKUtilityComplicationFactory *)self _configureLayout:layoutCopy withNormalSize:variantCopy editingSize:1 variant:v24 addCircleOverrides:v18 makeRuleBlock:v20, v21, v20];
  }
}

id __77__NTKUtilityComplicationFactory__configureTopRightLayout_withBounds_variant___block_invoke(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  if (a2)
  {
    v26 = a6;
    v11 = a5;
    v12 = a6;
    v13 = a5;
    if (*(a1 + 80) != 1 || ([*(a1 + 32) _curvedKeylineImageForSlot:2], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "size"), v16 = v15, v18 = v17, v14, ___LayoutConstants_block_invoke_5(*(*(a1 + 32) + 16), v33), v26 = v35 + a6, v11 = v16 - (a3 + a5 + v34), v12 = v18 - (a4 + a6 + v35), v13 = v34 + a5, v19 = 0.0, v20 = 0.0, (*(a1 + 80) & 1) == 0))
    {
      ___LayoutConstants_block_invoke_5(*(*(a1 + 32) + 16), v31);
      v19 = v32;
      v20 = 0.0;
      if ((*(a1 + 80) & 1) == 0)
      {
        v20 = *(a1 + 40);
      }
    }
  }

  else
  {
    v11 = *(MEMORY[0x277D768C8] + 8);
    v26 = *MEMORY[0x277D768C8];
    v12 = *(MEMORY[0x277D768C8] + 16);
    v13 = *(MEMORY[0x277D768C8] + 24);
    v19 = 0.0;
    v20 = 0.0;
  }

  v21 = CGRectGetMaxX(*(a1 + 48)) - a5 - v20 - a3;
  v22 = v19 + CGRectGetMinY(*(a1 + 48)) + a6;
  if (a2 && *(a1 + 80) == 1)
  {
    ___LayoutConstants_block_invoke_5(*(*(a1 + 32) + 16), v28);
    v21 = v21 - v29;
    v22 = v22 + v30;
  }

  v23 = *(*(a1 + 32) + 16);
  v24 = *(a1 + 80) ^ 1;

  return [NTKComplicationLayoutRule layoutRuleForDevice:v23 withReferenceFrame:3 horizontalLayout:v24 verticalLayout:1 keylinePadding:v21 clip:v22, a3, a4, v26, v11, v12, v13];
}

void __77__NTKUtilityComplicationFactory__configureTopRightLayout_withBounds_variant___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [NTKRichComplicationCornerUtilities layoutRuleForState:a2 position:1 faceBounds:*(*(a1 + 32) + 16) forDevice:*(*(a1 + 32) + 9) narrowTopSlots:*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)];
  [*(a1 + 40) setDefaultLayoutRule:v4 forState:a2];
}

- (void)_configureBottomLeftLayout:(id)layout withBounds:(CGRect)bounds variant:(BOOL)variant
{
  variantCopy = variant;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  top = self->_screenEdgeInsets.top;
  left = self->_screenEdgeInsets.left;
  v25 = y;
  v14 = x + left;
  v15 = y + top;
  v26 = width;
  v27 = height;
  v16 = width - (left + self->_screenEdgeInsets.right);
  v17 = height - (top + self->_screenEdgeInsets.bottom);
  if (variantCopy)
  {
    v18 = NTKUtilityComplicationCurvedCornerSize(self->_device);
    NTKUtilityComplicationCurvedCornerSize(self->_device);
    v20 = v19;
    v21 = v18;
  }

  else
  {
    ___LayoutConstants_block_invoke_5(self->_device, v36);
    v18 = v37;
    v20 = NTKUtilityComplicationHeight(self->_device);
    [(NTKUtilityComplicationFactory *)self _maxBottomCornerWidthLeavingRoomForKeylines:v14, v15, v16, v17];
    v21 = v22;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__NTKUtilityComplicationFactory__configureBottomLeftLayout_withBounds_variant___block_invoke;
  aBlock[3] = &unk_27877EFF8;
  v35 = variantCopy;
  aBlock[4] = self;
  *&aBlock[5] = v14;
  *&aBlock[6] = v15;
  *&aBlock[7] = v16;
  *&aBlock[8] = v17;
  v23 = _Block_copy(aBlock);
  if (self->_graphicCornerComplications)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __79__NTKUtilityComplicationFactory__configureBottomLeftLayout_withBounds_variant___block_invoke_2;
    v28[3] = &unk_27877E670;
    v30 = x;
    v31 = v25;
    v32 = v26;
    v33 = v27;
    v28[4] = self;
    v24 = layoutCopy;
    v29 = v24;
    NTKEnumerateComplicationStates(v28);
    [(NTKUtilityComplicationFactory *)self _configureOverridesForLayout:v24 withNormalSize:variantCopy editingSize:1 variant:v23 addCircleOverrides:v18 makeRuleBlock:v20, v21, v20];
  }

  else
  {
    [(NTKUtilityComplicationFactory *)self _configureLayout:layoutCopy withNormalSize:variantCopy editingSize:1 variant:v23 addCircleOverrides:v18 makeRuleBlock:v20, v21, v20];
  }
}

id __79__NTKUtilityComplicationFactory__configureBottomLeftLayout_withBounds_variant___block_invoke(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  if (a2)
  {
    v12 = a5;
    v13 = a6;
    v14 = a5;
    v15 = a6;
    if (*(a1 + 72) == 1)
    {
      v16 = [*(a1 + 32) _curvedKeylineImageForSlot:3];
      [v16 size];
      v18 = v17;
      v20 = v19;

      ___LayoutConstants_block_invoke_5(*(*(a1 + 32) + 16), v27);
      v15 = v20 - (a4 + a6 + v29);
      v14 = v28 + a5;
      v13 = v29 + a6;
      v12 = v18 - (a3 + a5 + v28);
    }
  }

  else
  {
    v15 = *MEMORY[0x277D768C8];
    v14 = *(MEMORY[0x277D768C8] + 8);
    v13 = *(MEMORY[0x277D768C8] + 16);
    v12 = *(MEMORY[0x277D768C8] + 24);
  }

  v21 = CGRectGetMinX(*(a1 + 40)) + a5;
  v22 = CGRectGetMaxY(*(a1 + 40)) - a6 - a4;
  if (a2 && *(a1 + 72) == 1)
  {
    ___LayoutConstants_block_invoke_5(*(*(a1 + 32) + 16), v26);
    v21 = v21 + v26[31];
    v22 = v22 - v26[32];
  }

  if (*(a1 + 72))
  {
    v23 = 2;
  }

  else
  {
    v23 = 1;
  }

  v24 = *(*(a1 + 32) + 16);

  return [NTKComplicationLayoutRule layoutRuleForDevice:v24 withReferenceFrame:0 horizontalLayout:v23 verticalLayout:1 keylinePadding:v21 clip:v22, a3, a4, v15, v14, v13, v12];
}

void __79__NTKUtilityComplicationFactory__configureBottomLeftLayout_withBounds_variant___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [NTKRichComplicationCornerUtilities layoutRuleForState:a2 position:2 faceBounds:*(*(a1 + 32) + 16) forDevice:*(*(a1 + 32) + 9) narrowTopSlots:*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)];
  [*(a1 + 40) setDefaultLayoutRule:v4 forState:a2];
}

- (void)_configureBottomRightLayout:(id)layout withBounds:(CGRect)bounds variant:(BOOL)variant
{
  variantCopy = variant;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  top = self->_screenEdgeInsets.top;
  left = self->_screenEdgeInsets.left;
  v25 = y;
  v14 = x + left;
  v15 = y + top;
  v26 = width;
  v27 = height;
  v16 = width - (left + self->_screenEdgeInsets.right);
  v17 = height - (top + self->_screenEdgeInsets.bottom);
  if (variantCopy)
  {
    v18 = NTKUtilityComplicationCurvedCornerSize(self->_device);
    NTKUtilityComplicationCurvedCornerSize(self->_device);
    v20 = v19;
    v21 = v18;
  }

  else
  {
    ___LayoutConstants_block_invoke_5(self->_device, v36);
    v18 = v37;
    v20 = NTKUtilityComplicationHeight(self->_device);
    [(NTKUtilityComplicationFactory *)self _maxBottomCornerWidthLeavingRoomForKeylines:v14, v15, v16, v17];
    v21 = v22;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__NTKUtilityComplicationFactory__configureBottomRightLayout_withBounds_variant___block_invoke;
  aBlock[3] = &unk_27877EFF8;
  v35 = variantCopy;
  aBlock[4] = self;
  *&aBlock[5] = v14;
  *&aBlock[6] = v15;
  *&aBlock[7] = v16;
  *&aBlock[8] = v17;
  v23 = _Block_copy(aBlock);
  if (self->_graphicCornerComplications)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __80__NTKUtilityComplicationFactory__configureBottomRightLayout_withBounds_variant___block_invoke_2;
    v28[3] = &unk_27877E670;
    v30 = x;
    v31 = v25;
    v32 = v26;
    v33 = v27;
    v28[4] = self;
    v24 = layoutCopy;
    v29 = v24;
    NTKEnumerateComplicationStates(v28);
    [(NTKUtilityComplicationFactory *)self _configureOverridesForLayout:v24 withNormalSize:variantCopy editingSize:1 variant:v23 addCircleOverrides:v18 makeRuleBlock:v20, v21, v20];
  }

  else
  {
    [(NTKUtilityComplicationFactory *)self _configureLayout:layoutCopy withNormalSize:variantCopy editingSize:1 variant:v23 addCircleOverrides:v18 makeRuleBlock:v20, v21, v20];
  }
}

id __80__NTKUtilityComplicationFactory__configureBottomRightLayout_withBounds_variant___block_invoke(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  if (a2)
  {
    v12 = a5;
    v13 = a6;
    v14 = a5;
    v15 = a6;
    if (*(a1 + 72) == 1)
    {
      v16 = [*(a1 + 32) _curvedKeylineImageForSlot:4];
      [v16 size];
      v18 = v17;
      v20 = v19;

      ___LayoutConstants_block_invoke_5(*(*(a1 + 32) + 16), v27);
      v15 = v20 - (a4 + a6 + v29);
      v14 = v18 - (a3 + a5 + v28);
      v13 = v29 + a6;
      v12 = v28 + a5;
    }
  }

  else
  {
    v15 = *MEMORY[0x277D768C8];
    v14 = *(MEMORY[0x277D768C8] + 8);
    v13 = *(MEMORY[0x277D768C8] + 16);
    v12 = *(MEMORY[0x277D768C8] + 24);
  }

  v21 = CGRectGetMaxX(*(a1 + 40)) - a5 - a3;
  v22 = CGRectGetMaxY(*(a1 + 40)) - a6 - a4;
  if (a2 && *(a1 + 72) == 1)
  {
    ___LayoutConstants_block_invoke_5(*(*(a1 + 32) + 16), v26);
    v21 = v21 - v26[31];
    v22 = v22 - v26[32];
  }

  if (*(a1 + 72))
  {
    v23 = 2;
  }

  else
  {
    v23 = 1;
  }

  v24 = *(*(a1 + 32) + 16);

  return [NTKComplicationLayoutRule layoutRuleForDevice:v24 withReferenceFrame:3 horizontalLayout:v23 verticalLayout:1 keylinePadding:v21 clip:v22, a3, a4, v15, v14, v13, v12];
}

void __80__NTKUtilityComplicationFactory__configureBottomRightLayout_withBounds_variant___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [NTKRichComplicationCornerUtilities layoutRuleForState:a2 position:3 faceBounds:*(*(a1 + 32) + 16) forDevice:*(*(a1 + 32) + 9) narrowTopSlots:*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)];
  [*(a1 + 40) setDefaultLayoutRule:v4 forState:a2];
}

- (void)_configureTopBezelLayout:(id)layout withBounds:(CGRect)bounds dialDiameter:(double)diameter
{
  height = bounds.size.height;
  width = bounds.size.width;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __82__NTKUtilityComplicationFactory__configureTopBezelLayout_withBounds_dialDiameter___block_invoke;
  v13 = &unk_27877F048;
  diameterCopy = diameter;
  boundsCopy = bounds;
  selfCopy = self;
  layoutCopy = layout;
  v9 = _Block_copy(&v10);
  [(NTKUtilityComplicationFactory *)self _configureLayout:layoutCopy withNormalSize:1 editingSize:0 variant:v9 addCircleOverrides:width makeRuleBlock:height, width, height, v10, v11, v12, v13, selfCopy, *&diameterCopy, *&boundsCopy.origin.x, *&boundsCopy.origin.y, *&boundsCopy.size.width, *&boundsCopy.size.height];
}

id __82__NTKUtilityComplicationFactory__configureTopBezelLayout_withBounds_dialDiameter___block_invoke(uint64_t a1, int a2, char a3)
{
  v6 = *(a1 + 40);
  v7 = CGRectGetHeight(*(a1 + 48)) * 0.5 - v6 * 0.5;
  Width = CGRectGetWidth(*(a1 + 48));
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = *(v10 + 144);
  if ((a3 & 1) != 0 || a2)
  {
    ___LayoutConstants_block_invoke_5(*(v10 + 16), v19);
    v7 = v7 + v11 + v20;
    v10 = *(a1 + 32);
    v12 = *(v10 + 160) - v6;
    v13 = v11 + v20 + v12 * 0.5;
    v14 = v12 * 0.5;
    v15 = -(v11 + v20 - v12 * 0.5);
    v16 = v12 * 0.5;
  }

  else
  {
    v15 = *(MEMORY[0x277D768C8] + 16);
    v16 = *(MEMORY[0x277D768C8] + 24);
    v13 = *MEMORY[0x277D768C8];
    v14 = *(MEMORY[0x277D768C8] + 8);
  }

  v17 = *(v10 + 16);

  return [NTKComplicationLayoutRule layoutRuleForDevice:v17 withReferenceFrame:1 horizontalLayout:0 verticalLayout:1 keylinePadding:Width * 0.5 - v9 * 0.5 clip:v7, v6, v6, v13, v14, v15, v16];
}

- (void)_configureBottomCenterLayout:(id)layout withBounds:(CGRect)bounds variant:(BOOL)variant
{
  variantCopy = variant;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  top = self->_screenEdgeInsets.top;
  left = self->_screenEdgeInsets.left;
  v14 = x + left;
  v27 = bounds.size.width - (left + self->_screenEdgeInsets.right);
  v28 = y + top;
  v15 = bounds.size.height - (top + self->_screenEdgeInsets.bottom);
  if (variant)
  {
    device = self->_device;
    layoutCopy = layout;
    maxNormalLongWidth = NTKUtilityComplicationCurvedCenterSize(device);
    NTKUtilityComplicationCurvedCenterSize(self->_device);
    v20 = v19;
    v21 = v14;
    v22 = maxNormalLongWidth;
  }

  else
  {
    maxNormalLongWidth = self->_maxNormalLongWidth;
    v23 = self->_device;
    layoutCopy2 = layout;
    v20 = NTKUtilityComplicationHeight(v23);
    [(NTKUtilityComplicationFactory *)self _maxBottomCenterWidthLeavingRoomForKeylines:v14, v28, v27, v15];
    v21 = v14;
    v22 = v25;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__NTKUtilityComplicationFactory__configureBottomCenterLayout_withBounds_variant___block_invoke;
  aBlock[3] = &unk_27877F070;
  v30 = variantCopy;
  aBlock[4] = self;
  *&aBlock[5] = x;
  *&aBlock[6] = y;
  *&aBlock[7] = width;
  *&aBlock[8] = height;
  *&aBlock[9] = v21;
  *&aBlock[10] = v28;
  *&aBlock[11] = v27;
  *&aBlock[12] = v15;
  v26 = _Block_copy(aBlock);
  [(NTKUtilityComplicationFactory *)self _configureLayout:layout withNormalSize:variantCopy editingSize:0 variant:v26 addCircleOverrides:maxNormalLongWidth makeRuleBlock:v20, v22, v20];
}

id __81__NTKUtilityComplicationFactory__configureBottomCenterLayout_withBounds_variant___block_invoke(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  if (a2)
  {
    v10 = a5;
    v11 = a6;
    v12 = a5;
    v13 = a6;
    if (*(a1 + 104) == 1)
    {
      v40 = 0.0;
      ___LayoutConstants_block_invoke_5(*(*(a1 + 32) + 16), v38);
      v14 = v39;
      v37 = 0.0;
      v36 = 0;
      [NTKUtilityComplicationFactory curvedCircleRadius:&v40 centerAngle:0 maxAngularWidth:0 circleCenter:&v36 interior:0 forSlot:10 forDevice:*(*(a1 + 32) + 16)];
      v15 = v14 + v37 + v40;
      ___LayoutConstants_block_invoke_5(*(*(a1 + 32) + 16), v34);
      v16 = v15 + v35;
      v17 = v16 + NTKUtilityComplicationCurvedBuffer(*(*(a1 + 32) + 16));
      v18 = [*(a1 + 32) _curvedKeylineImageForSlot:10];
      [v18 size];
      v20 = v19;
      v22 = v21;

      v10 = (v20 - a3) * 0.5;
      v11 = v17 - CGRectGetMaxY(*(a1 + 40));
      v13 = v22 - a4 - v11;
      v12 = v10;
    }
  }

  else
  {
    v13 = *MEMORY[0x277D768C8];
    v12 = *(MEMORY[0x277D768C8] + 8);
    v11 = *(MEMORY[0x277D768C8] + 16);
    v10 = *(MEMORY[0x277D768C8] + 24);
  }

  MinX = CGRectGetMinX(*(a1 + 72));
  CLKFloorForDevice();
  v25 = v24;
  v26 = CGRectGetMaxY(*(a1 + 72)) - a6 - a4;
  v27 = *(a1 + 104);
  if (a2 && (*(a1 + 104) & 1) == 0)
  {
    ___LayoutConstants_block_invoke_5(*(*(a1 + 32) + 16), v32);
    v26 = v26 - v33;
    v27 = *(a1 + 104);
  }

  if (v27)
  {
    v28 = 2;
  }

  else
  {
    v28 = 1;
  }

  v29 = [NTKComplicationLayoutRule layoutRuleForDevice:*(*(a1 + 32) + 16) withReferenceFrame:*(*(a1 + 32) + 208) horizontalLayout:v28 verticalLayout:1 keylinePadding:MinX + v25 clip:v26, a3, a4, v13, v12, v11, v10];

  return v29;
}

- (void)_configureDateLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  [(NTKUtilityComplicationFactory *)self _maxDateWidthLeavingRoomForKeylines];
  v11 = v10;
  selectedKeylineHeight = self->_selectedKeylineHeight;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__NTKUtilityComplicationFactory__configureDateLayout_withBounds___block_invoke;
  aBlock[3] = &unk_27877F098;
  *&aBlock[5] = x;
  *&aBlock[6] = y;
  *&aBlock[7] = width;
  *&aBlock[8] = height;
  aBlock[4] = self;
  v13 = _Block_copy(aBlock);
  [(NTKUtilityComplicationFactory *)self _configureLayout:layoutCopy withNormalSize:0 editingSize:0 variant:v13 addCircleOverrides:v11 makeRuleBlock:selectedKeylineHeight, v11, selectedKeylineHeight];
}

id __65__NTKUtilityComplicationFactory__configureDateLayout_withBounds___block_invoke(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v6 = a6;
  v7 = a5;
  v11 = a6;
  v12 = a5;
  if ((a2 & 1) == 0)
  {
    v6 = *MEMORY[0x277D768C8];
    v7 = *(MEMORY[0x277D768C8] + 8);
    v11 = *(MEMORY[0x277D768C8] + 16);
    v12 = *(MEMORY[0x277D768C8] + 24);
  }

  CGRectGetMidX(*(a1 + 40));
  CLKFloorForDevice();
  v14 = v13;
  CGRectGetMidY(*(a1 + 40));
  CLKFloorForDevice();
  v16 = *(*(a1 + 32) + 16);

  return [NTKComplicationLayoutRule layoutRuleForDevice:v16 withReferenceFrame:1 horizontalLayout:1 verticalLayout:1 keylinePadding:v14 clip:v15, a3, a4, v6, v7, v11, v12];
}

- (void)_configureTopRightAboveLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  device = self->_device;
  layoutCopy = layout;
  ___LayoutConstants_block_invoke_5(device, v25);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v28 = CGRectInset(v27, dx, 0.0);
  v11 = v28.origin.x;
  v12 = v28.origin.y;
  v13 = v28.size.width;
  v14 = v28.size.height;
  ___LayoutConstants_block_invoke_5(self->_device, v23);
  v15 = v24;
  v16 = NTKUtilityComplicationHeight(self->_device);
  [(NTKUtilityComplicationFactory *)self _maxTopCornerWidthLeavingRoomForKeylines:v11, v12, v13, v14];
  v18 = v17;
  v19 = NTKUtilityComplicationHeight(self->_device);
  crownIndicatorGap = self->_crownIndicatorGap;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __74__NTKUtilityComplicationFactory__configureTopRightAboveLayout_withBounds___block_invoke;
  v22[3] = &unk_27877F048;
  v22[4] = self;
  *&v22[5] = v11;
  *&v22[6] = v12;
  *&v22[7] = v13;
  *&v22[8] = v14;
  *&v22[9] = crownIndicatorGap;
  v21 = _Block_copy(v22);
  [(NTKUtilityComplicationFactory *)self _configureLayout:layoutCopy withNormalSize:0 editingSize:1 variant:v21 addCircleOverrides:v15 makeRuleBlock:v16, v18, v19];
}

id __74__NTKUtilityComplicationFactory__configureTopRightAboveLayout_withBounds___block_invoke(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  if (a2)
  {
    ___LayoutConstants_block_invoke_5(*(*(a1 + 32) + 16), v24);
    v10 = v25;
    v11 = *(a1 + 72);
    v20 = a6;
    v12 = a5;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v14 = *MEMORY[0x277D768C8];
    v13 = *(MEMORY[0x277D768C8] + 8);
    v12 = *(MEMORY[0x277D768C8] + 24);
    v20 = *(MEMORY[0x277D768C8] + 16);
    v10 = 0.0;
    v11 = 0.0;
  }

  v27.origin.x = *(a1 + 40);
  v27.origin.y = *(a1 + 48);
  v15 = v10 + v27.origin.y;
  v27.size.width = *(a1 + 56);
  v27.size.height = *(a1 + 64);
  v16 = CGRectGetMaxX(v27) - a5 - v11 - a3;
  ___LayoutConstants_block_invoke_5(*(*(a1 + 32) + 16), v22);
  v17 = v15 + v23 + a6;
  v18 = *(*(a1 + 32) + 16);

  return [NTKComplicationLayoutRule layoutRuleForDevice:v18 withReferenceFrame:3 horizontalLayout:1 verticalLayout:1 keylinePadding:v16 clip:v17, a3, a4, v14, v13, v20, v12];
}

- (void)_configureTopRightBelowLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  device = self->_device;
  layoutCopy = layout;
  ___LayoutConstants_block_invoke_5(device, v24);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v27 = CGRectInset(v26, dx, 0.0);
  v11 = v27.origin.x;
  v12 = v27.origin.y;
  v13 = v27.size.width;
  v14 = v27.size.height;
  ___LayoutConstants_block_invoke_5(self->_device, v22);
  v15 = v23;
  v16 = NTKUtilityComplicationHeight(self->_device);
  [(NTKUtilityComplicationFactory *)self _maxBottomCenterWidthLeavingRoomForKeylines:v11, v12, v13, v14];
  v18 = v17;
  v19 = NTKUtilityComplicationHeight(self->_device);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__NTKUtilityComplicationFactory__configureTopRightBelowLayout_withBounds___block_invoke;
  aBlock[3] = &unk_27877F098;
  aBlock[4] = self;
  *&aBlock[5] = v11;
  *&aBlock[6] = v12;
  *&aBlock[7] = v13;
  *&aBlock[8] = v14;
  v20 = _Block_copy(aBlock);
  [(NTKUtilityComplicationFactory *)self _configureLayout:layoutCopy withNormalSize:0 editingSize:0 variant:v20 addCircleOverrides:v15 makeRuleBlock:v16, v18, v19];
}

id __74__NTKUtilityComplicationFactory__configureTopRightBelowLayout_withBounds___block_invoke(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  if (a2)
  {
    ___LayoutConstants_block_invoke_5(*(*(a1 + 32) + 16), v23);
    v10 = v24;
    v11 = a6;
    v12 = a5;
    v13 = a6;
    v14 = a5;
  }

  else
  {
    v11 = *MEMORY[0x277D768C8];
    v14 = *(MEMORY[0x277D768C8] + 8);
    v13 = *(MEMORY[0x277D768C8] + 16);
    v12 = *(MEMORY[0x277D768C8] + 24);
    v10 = 0.0;
  }

  v26.origin.x = *(a1 + 40);
  v26.origin.y = *(a1 + 48);
  v15 = v10 + v26.origin.y;
  v26.size.width = *(a1 + 56);
  v26.size.height = *(a1 + 64);
  v16 = CGRectGetMaxX(v26) - a5 - a3;
  ___LayoutConstants_block_invoke_5(*(*(a1 + 32) + 16), v21);
  v17 = v15 + v22 + a6;
  v18 = *(*(a1 + 32) + 16);

  return [NTKComplicationLayoutRule layoutRuleForDevice:v18 withReferenceFrame:3 horizontalLayout:1 verticalLayout:1 keylinePadding:v16 clip:v17, a3, a4, v11, v14, v13, v12];
}

- (void)_configureBottomRightAboveLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  device = self->_device;
  layoutCopy = layout;
  ___LayoutConstants_block_invoke_5(device, v24);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v27 = CGRectInset(v26, dx, 0.0);
  v11 = v27.origin.x;
  v12 = v27.origin.y;
  v13 = v27.size.width;
  v14 = v27.size.height;
  ___LayoutConstants_block_invoke_5(self->_device, v22);
  v15 = v23;
  v16 = NTKUtilityComplicationHeight(self->_device);
  [(NTKUtilityComplicationFactory *)self _maxBottomCornerWidthLeavingRoomForKeylines:v11, v12, v13, v14];
  v18 = v17;
  v19 = NTKUtilityComplicationHeight(self->_device);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__NTKUtilityComplicationFactory__configureBottomRightAboveLayout_withBounds___block_invoke;
  aBlock[3] = &unk_27877F098;
  *&aBlock[5] = v11;
  *&aBlock[6] = v12;
  *&aBlock[7] = v13;
  *&aBlock[8] = v14;
  aBlock[4] = self;
  v20 = _Block_copy(aBlock);
  [(NTKUtilityComplicationFactory *)self _configureLayout:layoutCopy withNormalSize:0 editingSize:1 variant:v20 addCircleOverrides:v15 makeRuleBlock:v16, v18, v19];
}

id __77__NTKUtilityComplicationFactory__configureBottomRightAboveLayout_withBounds___block_invoke(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v10 = a6;
  v11 = a5;
  v12 = a6;
  v13 = a5;
  if ((a2 & 1) == 0)
  {
    v10 = *MEMORY[0x277D768C8];
    v11 = *(MEMORY[0x277D768C8] + 8);
    v12 = *(MEMORY[0x277D768C8] + 16);
    v13 = *(MEMORY[0x277D768C8] + 24);
  }

  v14 = CGRectGetMaxX(*(a1 + 40)) - a5 - a3;
  v15 = CGRectGetMaxY(*(a1 + 40)) - a6 - a4;
  ___LayoutConstants_block_invoke_5(*(*(a1 + 32) + 16), v19);
  v16 = v15 + v20;
  v17 = *(*(a1 + 32) + 16);

  return [NTKComplicationLayoutRule layoutRuleForDevice:v17 withReferenceFrame:3 horizontalLayout:1 verticalLayout:1 keylinePadding:v14 clip:v16, a3, a4, v10, v11, v12, v13];
}

- (void)_configureBottomRightBelowLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  device = self->_device;
  layoutCopy = layout;
  ___LayoutConstants_block_invoke_5(device, v24);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v27 = CGRectInset(v26, dx, 0.0);
  v11 = v27.origin.x;
  v12 = v27.origin.y;
  v13 = v27.size.width;
  v14 = v27.size.height;
  ___LayoutConstants_block_invoke_5(self->_device, v22);
  v15 = v23;
  v16 = NTKUtilityComplicationHeight(self->_device);
  [(NTKUtilityComplicationFactory *)self _maxBottomCenterWidthLeavingRoomForKeylines:v11, v12, v13, v14];
  v18 = v17;
  v19 = NTKUtilityComplicationHeight(self->_device);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__NTKUtilityComplicationFactory__configureBottomRightBelowLayout_withBounds___block_invoke;
  aBlock[3] = &unk_27877F098;
  *&aBlock[5] = v11;
  *&aBlock[6] = v12;
  *&aBlock[7] = v13;
  *&aBlock[8] = v14;
  aBlock[4] = self;
  v20 = _Block_copy(aBlock);
  [(NTKUtilityComplicationFactory *)self _configureLayout:layoutCopy withNormalSize:0 editingSize:0 variant:v20 addCircleOverrides:v15 makeRuleBlock:v16, v18, v19];
}

id __77__NTKUtilityComplicationFactory__configureBottomRightBelowLayout_withBounds___block_invoke(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v10 = a6;
  v11 = a5;
  v12 = a6;
  v13 = a5;
  if ((a2 & 1) == 0)
  {
    v10 = *MEMORY[0x277D768C8];
    v11 = *(MEMORY[0x277D768C8] + 8);
    v12 = *(MEMORY[0x277D768C8] + 16);
    v13 = *(MEMORY[0x277D768C8] + 24);
  }

  v14 = CGRectGetMaxX(*(a1 + 40)) - a5 - a3;
  v15 = CGRectGetMaxY(*(a1 + 40)) - a6 - a4;
  ___LayoutConstants_block_invoke_5(*(*(a1 + 32) + 16), v19);
  v16 = v15 + v20;
  v17 = *(*(a1 + 32) + 16);

  return [NTKComplicationLayoutRule layoutRuleForDevice:v17 withReferenceFrame:3 horizontalLayout:1 verticalLayout:1 keylinePadding:v14 clip:v16, a3, a4, v10, v11, v12, v13];
}

- (void)_configureBottomRightLongLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  device = self->_device;
  layoutCopy = layout;
  ___LayoutConstants_block_invoke_5(device, v24);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v27 = CGRectInset(v26, dx, 0.0);
  v11 = v27.origin.x;
  v12 = v27.origin.y;
  v13 = v27.size.width;
  v14 = v27.size.height;
  ___LayoutConstants_block_invoke_5(self->_device, v22);
  v15 = v23;
  v16 = NTKUtilityComplicationHeight(self->_device);
  [(NTKUtilityComplicationFactory *)self _maxBottomCenterWidthLeavingRoomForKeylines:v11, v12, v13, v14];
  v18 = v17;
  v19 = NTKUtilityComplicationHeight(self->_device);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__NTKUtilityComplicationFactory__configureBottomRightLongLayout_withBounds___block_invoke;
  aBlock[3] = &unk_27877F098;
  *&aBlock[5] = v11;
  *&aBlock[6] = v12;
  *&aBlock[7] = v13;
  *&aBlock[8] = v14;
  aBlock[4] = self;
  v20 = _Block_copy(aBlock);
  [(NTKUtilityComplicationFactory *)self _configureLayout:layoutCopy withNormalSize:0 editingSize:0 variant:v20 addCircleOverrides:v15 makeRuleBlock:v16, v18, v19];
}

id __76__NTKUtilityComplicationFactory__configureBottomRightLongLayout_withBounds___block_invoke(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v10 = a6;
  v11 = a5;
  v12 = a6;
  v13 = a5;
  if ((a2 & 1) == 0)
  {
    v10 = *MEMORY[0x277D768C8];
    v11 = *(MEMORY[0x277D768C8] + 8);
    v12 = *(MEMORY[0x277D768C8] + 16);
    v13 = *(MEMORY[0x277D768C8] + 24);
  }

  v14 = CGRectGetMaxX(*(a1 + 40)) - a5 - a3;
  v15 = CGRectGetMaxY(*(a1 + 40)) - a6 - a4;
  ___LayoutConstants_block_invoke_5(*(*(a1 + 32) + 16), v19);
  v16 = v15 + v20;
  v17 = *(*(a1 + 32) + 16);

  return [NTKComplicationLayoutRule layoutRuleForDevice:v17 withReferenceFrame:2 horizontalLayout:1 verticalLayout:1 keylinePadding:v14 clip:v16, a3, a4, v10, v11, v12, v13];
}

- (void)_configureUpNextTopRightLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  device = self->_device;
  layoutCopy = layout;
  ___LayoutConstants_block_invoke_5(device, v25);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v28 = CGRectInset(v27, dx, 0.0);
  v11 = v28.origin.x;
  v12 = v28.origin.y;
  v13 = v28.size.width;
  v14 = v28.size.height;
  ___LayoutConstants_block_invoke_5(self->_device, v23);
  v15 = v24 + 1.0;
  v16 = NTKUtilityComplicationHeight(self->_device);
  [(NTKUtilityComplicationFactory *)self _maxTopCornerWidthLeavingRoomForKeylines:v11, v12, v13, v14];
  v18 = v17;
  v19 = NTKUtilityComplicationHeight(self->_device);
  crownIndicatorGap = self->_crownIndicatorGap;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __75__NTKUtilityComplicationFactory__configureUpNextTopRightLayout_withBounds___block_invoke;
  v22[3] = &unk_27877F048;
  v22[4] = self;
  *&v22[5] = v11;
  *&v22[6] = v12;
  *&v22[7] = v13;
  *&v22[8] = v14;
  *&v22[9] = crownIndicatorGap;
  v21 = _Block_copy(v22);
  [(NTKUtilityComplicationFactory *)self _configureLayout:layoutCopy withNormalSize:0 editingSize:1 variant:v21 addCircleOverrides:v15 makeRuleBlock:v16, v18, v19];
}

id __75__NTKUtilityComplicationFactory__configureUpNextTopRightLayout_withBounds___block_invoke(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  if (a2)
  {
    ___LayoutConstants_block_invoke_5(*(*(a1 + 32) + 16), v24);
    v10 = v25;
    v11 = *(a1 + 72);
    v20 = a6;
    v12 = a5;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v14 = *MEMORY[0x277D768C8];
    v13 = *(MEMORY[0x277D768C8] + 8);
    v12 = *(MEMORY[0x277D768C8] + 24);
    v20 = *(MEMORY[0x277D768C8] + 16);
    v10 = 0.0;
    v11 = 0.0;
  }

  v27.origin.x = *(a1 + 40);
  v27.origin.y = *(a1 + 48);
  v15 = v10 + v27.origin.y;
  v27.size.width = *(a1 + 56);
  v27.size.height = *(a1 + 64);
  v16 = CGRectGetMaxX(v27) - a5 - v11 - a3;
  ___LayoutConstants_block_invoke_5(*(*(a1 + 32) + 16), v22);
  v17 = v15 + v23 + a6;
  v18 = *(*(a1 + 32) + 16);

  return [NTKComplicationLayoutRule layoutRuleForDevice:v18 withReferenceFrame:3 horizontalLayout:1 verticalLayout:1 keylinePadding:v16 clip:v17, a3, a4, v14, v13, v20, v12];
}

- (void)_configureLayout:(id)layout withNormalSize:(CGSize)size editingSize:(CGSize)editingSize variant:(BOOL)variant addCircleOverrides:(BOOL)overrides makeRuleBlock:(id)block
{
  overridesCopy = overrides;
  variantCopy = variant;
  height = editingSize.height;
  width = editingSize.width;
  v13 = size.height;
  v14 = size.width;
  layoutCopy = layout;
  blockCopy = block;
  if (variantCopy)
  {
    ___LayoutConstants_block_invoke_5(self->_device, v54);
    normalSidePadding = v55;
    ___LayoutConstants_block_invoke_5(self->_device, v52);
    p_normalVerticalPadding = &v53;
  }

  else
  {
    normalSidePadding = self->_normalSidePadding;
    p_normalVerticalPadding = &self->_normalVerticalPadding;
  }

  v19 = (*(blockCopy + 2))(blockCopy, 0, 0, v14, v13, normalSidePadding, *p_normalVerticalPadding);
  [layoutCopy setDefaultLayoutRule:v19 forState:0];

  if (variantCopy)
  {
    ___LayoutConstants_block_invoke_5(self->_device, v50);
    v20 = v51;
    ___LayoutConstants_block_invoke_5(self->_device, v48);
    v21 = &v49;
  }

  else
  {
    v20 = self->_normalSidePadding;
    v21 = &self->_normalVerticalPadding;
  }

  v22 = (*(blockCopy + 2))(blockCopy, 0, 0, width, height, v20, *v21);
  [layoutCopy setDefaultLayoutRule:v22 forState:1];

  if (variantCopy)
  {
    ___LayoutConstants_block_invoke_5(self->_device, v46);
    v23 = v47;
    ___LayoutConstants_block_invoke_5(self->_device, v44);
    v24.n128_u64[0] = v45;
  }

  else
  {
    v23 = NTKKeylineWidth() + self->_deselectedKeylineSideInnerPadding;
    v24.n128_f64[0] = NTKKeylineWidth() + self->_deselectedKeylineVerticalInnerPadding;
  }

  v25 = (*(blockCopy + 2))(blockCopy, 1, 0, width, height, v23, v24);
  [layoutCopy setDefaultLayoutRule:v25 forState:2];

  if (variantCopy)
  {
    ___LayoutConstants_block_invoke_5(self->_device, v42);
    v26 = v43;
    ___LayoutConstants_block_invoke_5(self->_device, v40);
    v27.n128_u64[0] = v41;
  }

  else
  {
    v26 = NTKKeylineWidth() + self->_selectedKeylineSideInnerPadding;
    NTKUtilityComplicationSelectedMaxHeight(self->_device);
    CLKFloorForDevice();
    v27.n128_u64[0] = v28;
  }

  v29 = (*(blockCopy + 2))(blockCopy, 1, 1, width, height + self->_selectedKeylineVerticalInnerContentSpacer * 2.0, v26, v27);
  [layoutCopy setDefaultLayoutRule:v29 forState:3];

  if (overridesCopy)
  {
    v30 = NTKUtilityComplicationCircularDiameter(self->_device);
    v31 = NTKUtilityComplicationCircularDiameter(self->_device);
    v32 = (*(blockCopy + 2))(blockCopy, 0, 0, v30, v31, self->_normalCircularPadding.width, self->_normalCircularPadding.height);
    [layoutCopy setOverrideLayoutRule:v32 forState:0 layoutOverride:2];

    v33 = (*(blockCopy + 2))(blockCopy, 0, 0, v30, v31, self->_normalCircularPadding.width, self->_normalCircularPadding.height);
    [layoutCopy setOverrideLayoutRule:v33 forState:1 layoutOverride:2];

    if (variantCopy)
    {
      v35 = self->_normalCircularPadding.width;
      v34.n128_u64[0] = *&self->_normalCircularPadding.height;
    }

    else
    {
      v35 = NTKKeylineWidth() + self->_deselectedKeylineCircularInnerPadding;
      v34.n128_f64[0] = NTKKeylineWidth() + self->_deselectedKeylineCircularInnerPadding;
    }

    v36 = (*(blockCopy + 2))(blockCopy, 1, 0, v30, v31, v35, v34);
    [layoutCopy setOverrideLayoutRule:v36 forState:2 layoutOverride:2];

    if (variantCopy)
    {
      v37 = (*(blockCopy + 2))(blockCopy, 1, 1, v30, v31, self->_normalCircularPadding.width, self->_normalCircularPadding.height);
    }

    else
    {
      v38 = [layoutCopy defaultLayoutRuleForState:3];
      v37 = [v38 copy];

      [v37 setVerticalLayout:4];
    }

    [layoutCopy setOverrideLayoutRule:v37 forState:3 layoutOverride:2];
  }
}

- (void)_configureOverridesForLayout:(id)layout withNormalSize:(CGSize)size editingSize:(CGSize)editingSize variant:(BOOL)variant addCircleOverrides:(BOOL)overrides makeRuleBlock:(id)block
{
  overridesCopy = overrides;
  variantCopy = variant;
  height = editingSize.height;
  width = editingSize.width;
  v13 = size.height;
  v14 = size.width;
  layoutCopy = layout;
  blockCopy = block;
  if (variantCopy)
  {
    ___LayoutConstants_block_invoke_5(self->_device, v54);
    normalSidePadding = v55;
    ___LayoutConstants_block_invoke_5(self->_device, v52);
    p_normalVerticalPadding = &v53;
  }

  else
  {
    normalSidePadding = self->_normalSidePadding;
    p_normalVerticalPadding = &self->_normalVerticalPadding;
  }

  v19 = (*(blockCopy + 2))(blockCopy, 0, 0, v14, v13, normalSidePadding, *p_normalVerticalPadding);
  [layoutCopy setOverrideLayoutRule:v19 forState:0 layoutOverride:1];

  if (variantCopy)
  {
    ___LayoutConstants_block_invoke_5(self->_device, v50);
    v20 = v51;
    ___LayoutConstants_block_invoke_5(self->_device, v48);
    v21 = &v49;
  }

  else
  {
    v20 = self->_normalSidePadding;
    v21 = &self->_normalVerticalPadding;
  }

  v22 = (*(blockCopy + 2))(blockCopy, 0, 0, width, height, v20, *v21);
  [layoutCopy setOverrideLayoutRule:v22 forState:1 layoutOverride:1];

  if (variantCopy)
  {
    ___LayoutConstants_block_invoke_5(self->_device, v46);
    v23 = v47;
    ___LayoutConstants_block_invoke_5(self->_device, v44);
    v24.n128_u64[0] = v45;
  }

  else
  {
    v23 = NTKKeylineWidth() + self->_deselectedKeylineSideInnerPadding;
    v24.n128_f64[0] = NTKKeylineWidth() + self->_deselectedKeylineVerticalInnerPadding;
  }

  v25 = (*(blockCopy + 2))(blockCopy, 1, 0, width, height, v23, v24);
  [layoutCopy setOverrideLayoutRule:v25 forState:2 layoutOverride:1];

  if (variantCopy)
  {
    ___LayoutConstants_block_invoke_5(self->_device, v42);
    v26 = v43;
    ___LayoutConstants_block_invoke_5(self->_device, v40);
    v27.n128_u64[0] = v41;
  }

  else
  {
    v26 = NTKKeylineWidth() + self->_selectedKeylineSideInnerPadding;
    NTKUtilityComplicationSelectedMaxHeight(self->_device);
    CLKFloorForDevice();
    v27.n128_u64[0] = v28;
  }

  v29 = (*(blockCopy + 2))(blockCopy, 1, 1, width, height + self->_selectedKeylineVerticalInnerContentSpacer * 2.0, v26, v27);
  [layoutCopy setOverrideLayoutRule:v29 forState:3 layoutOverride:1];

  if (overridesCopy)
  {
    v30 = NTKUtilityComplicationCircularDiameter(self->_device);
    v31 = NTKUtilityComplicationCircularDiameter(self->_device);
    v32 = (*(blockCopy + 2))(blockCopy, 0, 0, v30, v31, self->_normalCircularPadding.width, self->_normalCircularPadding.height);
    [layoutCopy setOverrideLayoutRule:v32 forState:0 layoutOverride:2];

    v33 = (*(blockCopy + 2))(blockCopy, 0, 0, v30, v31, self->_normalCircularPadding.width, self->_normalCircularPadding.height);
    [layoutCopy setOverrideLayoutRule:v33 forState:1 layoutOverride:2];

    if (variantCopy)
    {
      v35 = self->_normalCircularPadding.width;
      v34.n128_u64[0] = *&self->_normalCircularPadding.height;
    }

    else
    {
      v35 = NTKKeylineWidth() + self->_deselectedKeylineCircularInnerPadding;
      v34.n128_f64[0] = NTKKeylineWidth() + self->_deselectedKeylineCircularInnerPadding;
    }

    v36 = (*(blockCopy + 2))(blockCopy, 1, 0, v30, v31, v35, v34);
    [layoutCopy setOverrideLayoutRule:v36 forState:2 layoutOverride:2];

    if (variantCopy)
    {
      v37 = (*(blockCopy + 2))(blockCopy, 1, 1, v30, v31, self->_normalCircularPadding.width, self->_normalCircularPadding.height);
    }

    else
    {
      v38 = [layoutCopy defaultLayoutRuleForState:3];
      v37 = [v38 copy];

      [v37 setVerticalLayout:4];
    }

    [layoutCopy setOverrideLayoutRule:v37 forState:3 layoutOverride:2];
  }
}

- (double)_maxTopCornerWidthLeavingRoomForKeylines:(CGRect)keylines
{
  ___LayoutConstants_block_invoke_5(self->_device, v8);
  CLKFloorForDevice();
  v5 = v4;
  [(NTKUtilityComplicationFactory *)self _maxWidthForKeylineAndPadding];
  return v5 - v6;
}

- (double)_maxBottomCornerWidthLeavingRoomForKeylines:(CGRect)keylines
{
  ___LayoutConstants_block_invoke_5(self->_device, v8);
  CLKFloorForDevice();
  v5 = v4;
  [(NTKUtilityComplicationFactory *)self _maxWidthForKeylineAndPadding];
  return v5 - v6;
}

- (double)_maxBottomCenterWidthLeavingRoomForKeylines:(CGRect)keylines
{
  width = keylines.size.width;
  [(NTKUtilityComplicationFactory *)self _maxWidthForKeylineAndPadding:keylines.origin.x];
  return width - v4;
}

- (double)_maxDateWidthLeavingRoomForKeylines
{
  dateKeylineMaxWidth = self->_dateKeylineMaxWidth;
  [(NTKUtilityComplicationFactory *)self _maxWidthForKeylineAndPadding];
  return dateKeylineMaxWidth - v3;
}

- (double)_maxWidthForKeylineAndPadding
{
  if (self->_selectedKeylineSideInnerPadding >= self->_deselectedKeylineSideInnerPadding)
  {
    selectedKeylineSideInnerPadding = self->_selectedKeylineSideInnerPadding;
  }

  else
  {
    selectedKeylineSideInnerPadding = self->_deselectedKeylineSideInnerPadding;
  }

  v3 = NTKKeylineWidth();
  return selectedKeylineSideInnerPadding + v3 + selectedKeylineSideInnerPadding + v3;
}

- (int64_t)complicationPickerStyleForSlot:(id)slot
{
  if ([slot isEqualToString:@"bezel"])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  slotCopy = slot;
  [(NTKUtilityComplicationFactory *)self dialDiameter];
  [(NTKUtilityComplicationFactory *)self configureComplicationView:viewCopy forSlot:slotCopy dialDiameter:?];
  if ([viewCopy conformsToProtocol:&unk_28A859A10])
  {
    v7 = viewCopy;
    faceView = [(NTKUtilityComplicationFactory *)self faceView];
    v9 = [faceView conformsToProtocol:&unk_28A8ADE10];

    if (v9)
    {
      faceView2 = [(NTKUtilityComplicationFactory *)self faceView];
      [v7 setDelegate:faceView2];
    }
  }

  if ([viewCopy conformsToProtocol:&unk_28A8170A0])
  {
    v11 = viewCopy;
    if ([slotCopy isEqualToString:@"top-left"])
    {
      v12 = 0;
    }

    else if ([slotCopy isEqualToString:@"top-right"])
    {
      v12 = 1;
    }

    else if ([slotCopy isEqualToString:@"bottom-left"])
    {
      v12 = 2;
    }

    else
    {
      if (![slotCopy isEqualToString:@"bottom-right"])
      {
LABEL_15:

        goto LABEL_16;
      }

      v12 = 3;
    }

    [v11 setCornerComplicationPosition:v12];
    goto LABEL_15;
  }

LABEL_16:
}

- (id)keylineViewForComplicationSlot:(id)slot
{
  slotCopy = slot;
  v5 = slotCopy;
  if (self->_graphicCornerComplications)
  {
    if ([slotCopy isEqualToString:@"top-left"])
    {
      device = self->_device;
      usesNarrowTopSlots = self->_usesNarrowTopSlots;
      v8 = 0;
LABEL_10:
      v9 = [NTKRichComplicationCornerUtilities keylineViewForPosition:v8 forDevice:device narrowTopSlots:usesNarrowTopSlots];
      goto LABEL_12;
    }

    if ([v5 isEqualToString:@"top-right"])
    {
      device = self->_device;
      usesNarrowTopSlots = self->_usesNarrowTopSlots;
      v8 = 1;
      goto LABEL_10;
    }

    if ([v5 isEqualToString:@"bottom-left"])
    {
      device = self->_device;
      usesNarrowTopSlots = self->_usesNarrowTopSlots;
      v8 = 2;
      goto LABEL_10;
    }

    if ([v5 isEqualToString:@"bottom-right"])
    {
      device = self->_device;
      usesNarrowTopSlots = self->_usesNarrowTopSlots;
      v8 = 3;
      goto LABEL_10;
    }
  }

  v9 = [(NTKUtilityComplicationFactory *)self keylineViewForSlot:[(NTKUtilityComplicationFactory *)self _utilitySlotForSlot:v5] dialDiameter:self->_bezelKeylineDiameter];
LABEL_12:
  v10 = v9;

  return v10;
}

- (int64_t)legacyLayoutOverrideforComplicationType:(unint64_t)type slot:(id)slot
{
  v6 = [(NTKUtilityComplicationFactory *)self _utilitySlotForSlot:slot];

  return [(NTKUtilityComplicationFactory *)self layoutOverrideForComplicationType:type inSlot:v6];
}

- (void)curvedComplicationCircleRadius:(double *)radius centerAngle:(double *)angle maxAngularWidth:(double *)width circleCenter:(CGPoint *)center interior:(BOOL *)interior forSlot:(id)slot
{
  slotCopy = slot;
  if (@"bezel" == slotCopy)
  {
    v28 = slotCopy;
    if (radius)
    {
      [(NTKUtilityComplicationFactory *)self dialDiameter];
      [(NTKUtilityComplicationFactory *)self bezelComplicationRadiusWithDialDiameter:v14 + v14];
      slotCopy = v28;
      *radius = v15;
    }

    if (width)
    {
      [(NTKUtilityComplicationFactory *)self bezelComplicationMaxAngularWidth];
      slotCopy = v28;
      *width = v16;
    }

    if (center)
    {
      faceView = [(NTKUtilityComplicationFactory *)self faceView];
      [faceView bounds];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      v30.origin.x = v19;
      v30.origin.y = v21;
      v30.size.width = v23;
      v30.size.height = v25;
      MidX = CGRectGetMidX(v30);
      v31.origin.x = v19;
      v31.origin.y = v21;
      v31.size.width = v23;
      v31.size.height = v25;
      MidY = CGRectGetMidY(v31);
      slotCopy = v28;
      center->x = MidX;
      center->y = MidY;
    }

    if (interior)
    {
      *interior = 0;
    }
  }
}

- (void)loadLayoutRules
{
  faceView = [(NTKUtilityComplicationFactory *)self faceView];
  v9 = [faceView complicationLayoutforSlot:@"bezel"];

  faceView2 = [(NTKUtilityComplicationFactory *)self faceView];
  [faceView2 bounds];
  [NTKUtilityComplicationFactory configureComplicationLayout:"configureComplicationLayout:forSlot:bounds:dialDiameter:" forSlot:v9 bounds:11 dialDiameter:?];

  if ([(NTKUtilityComplicationFactory *)self includesDateComplicationLayoutRules])
  {
    faceView3 = [(NTKUtilityComplicationFactory *)self faceView];
    v6 = [faceView3 complicationLayoutforSlot:@"date"];

    v7 = [(NTKUtilityComplicationFactory *)self _utilitySlotForSlot:@"date"];
    faceView4 = [(NTKUtilityComplicationFactory *)self faceView];
    [faceView4 bounds];
    [(NTKUtilityComplicationFactory *)self configureComplicationLayout:v6 forSlot:v7 withBounds:?];
  }
}

- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  complicationCopy = complication;
  v9 = [(NTKUtilityComplicationFactory *)self newViewForComplication:complicationCopy family:family forSlot:[(NTKUtilityComplicationFactory *)self _utilitySlotForSlot:slot]];

  return v9;
}

- (int64_t)_utilitySlotForSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:@"bezel"])
  {
    v4 = 11;
  }

  else if ([slotCopy isEqualToString:@"top-left"])
  {
    v4 = 1;
  }

  else if ([slotCopy isEqualToString:@"bottom-left"])
  {
    v4 = 3;
  }

  else if ([slotCopy isEqualToString:@"bottom-center"])
  {
    v4 = 10;
  }

  else if ([slotCopy isEqualToString:@"top-right"])
  {
    v4 = 2;
  }

  else if ([slotCopy isEqualToString:@"bottom-right"])
  {
    v4 = 4;
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

- (id)_slotForUtilitySlot:(int64_t)slot
{
  v4 = slot - 1;
  if (slot - 1) <= 0xB && ((0xA0Fu >> v4))
  {
    v5 = *off_27877F0B8[v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NTKUtilityComplicationFactoryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)normalCircularPadding
{
  width = self->_normalCircularPadding.width;
  height = self->_normalCircularPadding.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)screenEdgeInsets
{
  top = self->_screenEdgeInsets.top;
  left = self->_screenEdgeInsets.left;
  bottom = self->_screenEdgeInsets.bottom;
  right = self->_screenEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (NTKFaceView)faceView
{
  WeakRetained = objc_loadWeakRetained(&self->_faceView);

  return WeakRetained;
}

@end