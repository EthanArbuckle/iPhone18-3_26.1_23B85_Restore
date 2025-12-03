@interface CKEffectPickerView
+ (BOOL)shouldUseLargeScreenDimension;
- (BOOL)_keyboardIsOnTopOfEffectPickerWindow;
- (CGPoint)balloonViewOrigin;
- (CGRect)_updateBalloonViewOrigin:(CGRect)origin forButtonFrame:(CGRect)frame;
- (CKEffectPickerView)initWithFrame:(CGRect)frame sendButtonFrame:(CGRect)buttonFrame balloonViewOrigin:(CGPoint)origin composition:(id)composition color:(char)color gradientReferenceView:(id)view;
- (CKEffectPickerViewDelegate)delegate;
- (UIFont)effectLabelFont;
- (id)_blackTextReplica;
- (id)_defaultSendAnimationContextForAnimationPreview;
- (id)_glyphLayerForButtonAnimationWithGlyphName:(id)name;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)sendImage;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)selectedMomentIndex;
- (void)_accessibilityContrastStatusDidChange;
- (void)_adjustMainLabelAndTypeSegmentedControlIfNecessary;
- (void)_animateIn;
- (void)_animateInSendButton:(id)button;
- (void)_animateOut;
- (void)_animateOutSendButton:(id)button;
- (void)_animateSelectedEffectLabelAtIndex:(unint64_t)index fromPreviousIndex:(unint64_t)previousIndex;
- (void)_applicationDidEnterBackground;
- (void)_applicationWillEnterForeground;
- (void)_panGesture:(id)gesture;
- (void)_resizeBalloon;
- (void)_setBalloonText:(id)text withColor:(id)color;
- (void)_setNeedsSwitcherAnimationIfNecessary;
- (void)_startSwitcherAnimationIfNecessary;
- (void)_stopBalloonAnimation;
- (void)_touchUpInsideDotButton:(id)button;
- (void)_touchUpInsideSendButton:(id)button;
- (void)_touchUpInsideSendMomentButton:(id)button;
- (void)_updateBalloonViewPositionAnimated:(BOOL)animated;
- (void)_updateMomentsBackgroundColor;
- (void)addAnimationTimerForCell:(id)cell;
- (void)addEffect:(id)effect withDescriptiveText:(id)text withIdentifier:(id)identifier;
- (void)cancelImpactSelection;
- (void)checkAndUpdateForSpotlightEffect:(id)effect;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)effectTypeDidChange:(id)change;
- (void)handleTouchMoved:(CGPoint)moved;
- (void)handleTouchUp:(CGPoint)up;
- (void)invalidateAllAnimationTimers;
- (void)layoutSubviews;
- (void)pageControlChanged:(id)changed;
- (void)removeAnimationTimerForCell:(id)cell;
- (void)resetDotConstraintsToDefault;
- (void)safeAreaInsetsDidChange;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)setBalloonText:(id)text;
- (void)startAnimationPreviewForIdentifier:(id)identifier;
- (void)traitCollectionDidChange:(id)change;
- (void)updateColor:(char)color;
- (void)updateHintTransition:(double)transition;
- (void)updateMomentTitle:(BOOL)title;
- (void)updateViewColors;
- (void)updateViewColors:(BOOL)colors;
@end

@implementation CKEffectPickerView

+ (BOOL)shouldUseLargeScreenDimension
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  Height = CGRectGetHeight(v7);

  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 bounds];
  Width = CGRectGetWidth(v8);

  return Height <= Width || Height > 568.0;
}

- (CKEffectPickerView)initWithFrame:(CGRect)frame sendButtonFrame:(CGRect)buttonFrame balloonViewOrigin:(CGPoint)origin composition:(id)composition color:(char)color gradientReferenceView:(id)view
{
  y = origin.y;
  height = buttonFrame.size.height;
  width = buttonFrame.size.width;
  v12 = buttonFrame.origin.y;
  x = buttonFrame.origin.x;
  v14 = frame.size.height;
  v15 = frame.size.width;
  v16 = frame.origin.y;
  v17 = frame.origin.x;
  v229[1] = *MEMORY[0x1E69E9840];
  v19 = *&origin.x;
  compositionCopy = composition;
  v226.receiver = self;
  v226.super_class = CKEffectPickerView;
  v21 = [(CKEffectPickerView *)&v226 initWithFrame:v17, v16, v15, v14];
  if (v21)
  {
    v224 = compositionCopy;
    v225 = v19;
    v22 = objc_alloc_init(_TtC7ChatKit28CKEffectPickerStylingMetrics);
    [(CKEffectPickerView *)v21 setStylingMetrics:v22];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v21 selector:sel_contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

    v21->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    [(CKEffectPickerView *)v21 setBalloonViewOrigin:v230, v231];
    [(CKEffectPickerView *)v21 setControlColor:*&y];
    traitCollection = [(CKEffectPickerView *)v21 traitCollection];
    -[CKEffectPickerView setIsInDarkMode:](v21, "setIsInDarkMode:", [traitCollection userInterfaceStyle] == 2);

    v25 = objc_alloc_init(CKChatControllerDummyAnimator);
    [(CKEffectPickerView *)v21 setDummyAnimator:v25];

    layer = [(CKEffectPickerView *)v21 layer];
    [layer setAllowsGroupBlending:0];

    v27 = objc_alloc_init(MEMORY[0x1E6979398]);
    v28 = +[CKUIBehavior sharedBehaviors];
    theme = [v28 theme];
    fsmPickerBlueLayerBackgroundColor = [theme fsmPickerBlueLayerBackgroundColor];
    [v27 setBackgroundColor:{objc_msgSend(fsmPickerBlueLayerBackgroundColor, "CGColor")}];

    layer2 = [(CKEffectPickerView *)v21 layer];
    [layer2 bounds];
    [v27 setFrame:?];

    [v27 setAllowsGroupBlending:0];
    [v27 setAllowsGroupOpacity:0];
    v221 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979C60]];
    [v27 setCompositingFilter:?];
    [v27 setOpacity:0.0];
    [(CKEffectPickerView *)v21 setBlueContrastLayer:v27];
    layer3 = [(CKEffectPickerView *)v21 layer];
    v222 = v27;
    [layer3 addSublayer:v27];

    v212 = *MEMORY[0x1E6979928];
    v33 = [MEMORY[0x1E6979378] filterWithType:?];
    v210 = *MEMORY[0x1E6979BA8];
    [v33 setValue:&unk_1F04E8AE8 forKey:?];
    v34 = *MEMORY[0x1E6979B78];
    [v33 setValue:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6979B78]];
    v35 = objc_alloc_init(MEMORY[0x1E6979310]);
    [v35 setAllowsGroupBlending:0];
    layer4 = [(CKEffectPickerView *)v21 layer];
    [layer4 bounds];
    [v35 setFrame:?];

    v220 = v33;
    v229[0] = v33;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v229 count:1];
    [v35 setFilters:v37];

    [v35 setScale:0.5];
    [(CKEffectPickerView *)v21 setBackdrop:v35];
    layer5 = [(CKEffectPickerView *)v21 layer];
    v219 = v35;
    [layer5 addSublayer:v35];

    v39 = objc_alloc(MEMORY[0x1E69DD250]);
    [(CKEffectPickerView *)v21 bounds];
    v40 = [v39 initWithFrame:?];
    layer6 = [v40 layer];
    [layer6 setAllowsGroupBlending:0];

    [v40 setAutoresizingMask:18];
    [(CKEffectPickerView *)v21 setHintContainer:v40];
    v218 = v40;
    [(CKEffectPickerView *)v21 addSubview:v40];
    v42 = objc_alloc(MEMORY[0x1E69DD250]);
    [(CKEffectPickerView *)v21 bounds];
    v43 = [v42 initWithFrame:?];
    layer7 = [v43 layer];
    [layer7 setAllowsGroupBlending:0];

    [v43 setAutoresizingMask:18];
    [v43 setSemanticContentAttribute:3];
    [(CKEffectPickerView *)v21 setPeekContainer:v43];
    [(CKEffectPickerView *)v21 addSubview:v43];
    v217 = v43;
    [v43 setHidden:1];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(CKEffectPickerView *)v21 setAnimationTimers:dictionary];

    v46 = objc_alloc_init(CKFullScreenEffectManager);
    [(CKEffectPickerView *)v21 setFsem:v46];
    userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
    v216 = v46;
    effectIdentifiers = [(CKFullScreenEffectManager *)v46 effectIdentifiers];
    v49 = effectIdentifiers;
    v50 = y;
    v51 = v12;
    if (userInterfaceLayoutDirection == 1)
    {
      reverseObjectEnumerator = [effectIdentifiers reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];

      v49 = allObjects;
    }

    v54 = width;
    v215 = v49;
    [(CKEffectPickerView *)v21 setMomentIdentifiers:v49];
    v55 = objc_alloc(MEMORY[0x1E69DD250]);
    peekContainer = [(CKEffectPickerView *)v21 peekContainer];
    [peekContainer bounds];
    v57 = [v55 initWithFrame:?];

    layer8 = [v57 layer];
    [layer8 setAllowsGroupOpacity:0];

    layer9 = [v57 layer];
    [layer9 setAllowsGroupBlending:0];

    [v57 setOpaque:0];
    [v57 setAutoresizingMask:18];
    peekContainer2 = [(CKEffectPickerView *)v21 peekContainer];
    [peekContainer2 addSubview:v57];

    v214 = v57;
    [(CKEffectPickerView *)v21 setBackgroundView:v57];
    v61 = objc_alloc_init(MEMORY[0x1E69DC840]);
    [(CKEffectPickerView *)v21 bounds];
    v63 = v62;
    [(CKEffectPickerView *)v21 bounds];
    [v61 setItemSize:{v63, v64}];
    [v61 setMinimumInteritemSpacing:0.0];
    [v61 setMinimumLineSpacing:0.0];
    [v61 setScrollDirection:1];
    v65 = objc_alloc(MEMORY[0x1E69DC7F0]);
    [(CKEffectPickerView *)v21 bounds];
    v213 = v61;
    v66 = [v65 initWithFrame:v61 collectionViewLayout:?];
    [v66 setPagingEnabled:1];
    [v66 setAutoresizingMask:18];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v66 setBackgroundColor:clearColor];

    [v66 setShowsHorizontalScrollIndicator:0];
    [v66 setShowsVerticalScrollIndicator:0];
    v68 = objc_opt_class();
    v69 = +[CKMomentCollectionViewCell reuseIdentifier];
    [v66 registerClass:v68 forCellWithReuseIdentifier:v69];

    peekContainer3 = [(CKEffectPickerView *)v21 peekContainer];
    [peekContainer3 addSubview:v66];

    v223 = v66;
    [(CKEffectPickerView *)v21 setMomentsCollectionView:v66];
    v71 = objc_alloc(MEMORY[0x1E69DCF38]);
    v72 = CKFrameworkBundle();
    v73 = [v72 localizedStringForKey:@"IMPACT_PICKER_BUBBLE_EFFECT_STYLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v228[0] = v73;
    v74 = CKFrameworkBundle();
    v75 = [v74 localizedStringForKey:@"IMPACT_PICKER_SCREEN_EFFECT_STYLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v228[1] = v75;
    v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v228 count:2];
    v77 = [v71 initWithItems:v76];

    [v77 setSelectedSegmentIndex:0];
    [v77 sizeToFit];
    [v77 addTarget:v21 action:sel_effectTypeDidChange_ forControlEvents:4096];
    [v77 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v77 widthForSegmentAtIndex:0];
    if (v78 < 120.0)
    {
      [v77 setWidth:0 forSegmentAtIndex:120.0];
      [v77 setWidth:1 forSegmentAtIndex:120.0];
    }

    v79 = x;
    v80 = height;
    peekContainer4 = [(CKEffectPickerView *)v21 peekContainer];
    [peekContainer4 addSubview:v77];

    [(CKEffectPickerView *)v21 setTypeSegmentedControl:v77];
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

    v84 = v50;
    if ((isEntryViewRefreshEnabled & 1) == 0)
    {
      v85 = [MEMORY[0x1E6979378] filterWithType:v212];
      [v85 setValue:&unk_1F04E8220 forKey:v210];
      [v85 setValue:MEMORY[0x1E695E118] forKey:v34];
      v86 = objc_alloc_init(MEMORY[0x1E6979310]);
      [v77 frame];
      [v86 setFrame:?];
      v227 = v85;
      v87 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v227 count:1];
      [v86 setFilters:v87];

      [v86 setCornerRadius:5.0];
      [v86 setMasksToBounds:1];
      [v86 setScale:0.5];
      [(CKEffectPickerView *)v21 setSegmentedBackdrop:v86];
      peekContainer5 = [(CKEffectPickerView *)v21 peekContainer];
      layer10 = [peekContainer5 layer];
      layer11 = [v223 layer];
      [layer10 insertSublayer:v86 above:layer11];
    }

    v91 = objc_alloc(MEMORY[0x1E69DCD10]);
    v92 = *MEMORY[0x1E695F058];
    v93 = *(MEMORY[0x1E695F058] + 8);
    v94 = *(MEMORY[0x1E695F058] + 16);
    v95 = *(MEMORY[0x1E695F058] + 24);
    v96 = [v91 initWithFrame:{*MEMORY[0x1E695F058], v93, v94, v95}];
    [v96 addTarget:v21 action:sel_pageControlChanged_ forControlEvents:4096];
    [v96 setTranslatesAutoresizingMaskIntoConstraints:0];
    momentIdentifiers = [(CKEffectPickerView *)v21 momentIdentifiers];
    [v96 setNumberOfPages:{objc_msgSend(momentIdentifiers, "count")}];

    [v96 setCurrentPage:0];
    [v96 sizeToFit];
    peekContainer6 = [(CKEffectPickerView *)v21 peekContainer];
    [peekContainer6 addSubview:v96];

    v211 = v96;
    [(CKEffectPickerView *)v21 setPageControl:v96];
    v99 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v92, v93, v94, v95}];
    v100 = CKFrameworkBundle();
    v101 = [v100 localizedStringForKey:@"IMPACT_PICKER_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    [v99 setText:v101];

    [v99 setTextAlignment:1];
    v102 = [CKUIBehavior fontWithStyle:*MEMORY[0x1E69DDDC0] adjustedForMaxSizeCategory:*MEMORY[0x1E69DDC40]];
    [v99 setFont:v102];

    [v99 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v99 sizeToFit];
    peekContainer7 = [(CKEffectPickerView *)v21 peekContainer];
    [peekContainer7 addSubview:v99];

    v209 = v99;
    [(CKEffectPickerView *)v21 setMainLabel:v99];
    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LODWORD(v101) = [mEMORY[0x1E69A8070]2 isEntryViewRefreshEnabled];

    if (v101)
    {
      v105 = objc_alloc_init(CKGlassSendButton);
      [(CKGlassSendButton *)v105 setCkTintColor:*&v84];
      [(CKGlassSendButton *)v105 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(CKGlassSendButton *)v105 setOpaque:0];
      [(CKGlassSendButton *)v105 addTarget:v21 action:sel__touchUpInsideSendMomentButton_ forControlEvents:64];
      [(CKGlassSendButton *)v105 accessibilitySetIdentification:@"sendButton"];
      [(CKGlassSendButton *)v105 setExclusiveTouch:1];
      peekContainer8 = [(CKEffectPickerView *)v21 peekContainer];
      [peekContainer8 addSubview:v105];

      [(CKEffectPickerView *)v21 setSendMomentButton:v105];
    }

    else
    {
      v105 = [MEMORY[0x1E69DC738] buttonWithType:1];
      v107 = +[CKUIBehavior sharedBehaviors];
      theme2 = [v107 theme];
      v109 = [theme2 sendButtonColorForColorType:*&v84];
      [(CKGlassSendButton *)v105 setTintColor:v109];

      [(CKGlassSendButton *)v105 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(CKGlassSendButton *)v105 setOpaque:0];
      sendImage = [(CKEffectPickerView *)v21 sendImage];
      [(CKGlassSendButton *)v105 setImage:sendImage forState:0];
      [(CKGlassSendButton *)v105 setImage:sendImage forState:4];
      [(CKGlassSendButton *)v105 setEnabled:1];
      [(CKGlassSendButton *)v105 addTarget:v21 action:sel__touchUpInsideSendMomentButton_ forControlEvents:64];
      [(CKGlassSendButton *)v105 accessibilitySetIdentification:@"sendButton"];
      [(CKGlassSendButton *)v105 setExclusiveTouch:1];
      peekContainer9 = [(CKEffectPickerView *)v21 peekContainer];
      [peekContainer9 addSubview:v105];

      [(CKEffectPickerView *)v21 setSendMomentButton:v105];
    }

    v112 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v92, v93, v94, v95}];
    v113 = [CKUIBehavior fontWithStyle:*MEMORY[0x1E69DDD10] adjustedForMaxSizeCategory:*MEMORY[0x1E69DDC30]];
    [v112 setFont:v113];

    peekContainer10 = [(CKEffectPickerView *)v21 peekContainer];
    [peekContainer10 addSubview:v112];

    v208 = v112;
    [(CKEffectPickerView *)v21 setMomentTitleLabel:v112];
    mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LODWORD(v112) = [mEMORY[0x1E69A8070]3 isEntryViewRefreshEnabled];

    if (v112)
    {
      v116 = objc_alloc_init(_TtC7ChatKit19CKPillShapedXButton);
      +[_TtC7ChatKit19CKPillShapedXButton buttonSize];
      [(CKPillShapedXButton *)v116 setBounds:0.0, 0.0, v117, v118];
      [(CKPillShapedXButton *)v116 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(CKPillShapedXButton *)v116 addTarget:v21 action:sel__touchUpInsideCloseButton_ forControlEvents:64];
      peekContainer11 = [(CKEffectPickerView *)v21 peekContainer];
      [peekContainer11 addSubview:v116];

      [(CKEffectPickerView *)v21 setCloseButton:v116];
    }

    else
    {
      v116 = [MEMORY[0x1E69DC738] buttonWithType:0];
      v120 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:3 scale:19.0];
      v121 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle.fill"];
      v122 = [v121 imageWithSymbolConfiguration:v120];
      v123 = [v122 imageWithRenderingMode:2];

      [(CKPillShapedXButton *)v116 setImage:v123 forState:0];
      [(CKPillShapedXButton *)v116 setImage:v123 forState:1];
      [v123 size];
      v125 = v124 + -4.0;
      [v123 size];
      [(CKPillShapedXButton *)v116 setBounds:0.0, 0.0, v125, v126 + -4.0];
      [(CKPillShapedXButton *)v116 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(CKPillShapedXButton *)v116 addTarget:v21 action:sel__touchUpInsideCloseButton_ forControlEvents:64];
      peekContainer12 = [(CKEffectPickerView *)v21 peekContainer];
      [peekContainer12 addSubview:v116];

      [(CKEffectPickerView *)v21 setCloseButton:v116];
    }

    v128 = v79;

    v129 = CKBalloonViewForClass([v225 balloonViewClass]);
    [v129 configureForComposition:v225];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v130 = v129;
      [v130 setColor:*&v84];
      [v130 setGradientReferenceView:v224];
      [v224 convertRect:0 fromView:{v230, v231, 0.0, 0.0}];
      v132 = -v131;
      v134 = -v133;
      [v224 frame];
      v136 = v135;
      [v224 frame];
      [v130 setGradientOverrideFrame:{v132, v134, v136}];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v137 = +[CKUIBehavior sharedBehaviors];
      isAccessibilityPreferredContentSizeCategory = [v137 isAccessibilityPreferredContentSizeCategory];

      if (isAccessibilityPreferredContentSizeCategory)
      {
        [v129 truncateForLargeText];
      }
    }

    [v129 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v129 setCanUseOpaqueMask:0];
    [v129 setUserInteractionEnabled:0];
    peekContainer13 = [(CKEffectPickerView *)v21 peekContainer];
    [peekContainer13 addSubview:v129];

    [(CKEffectPickerView *)v21 setBalloonView:v129];
    [(CKEffectPickerView *)v21 _resizeBalloon];
    v140 = objc_alloc_init(MEMORY[0x1E69DD250]);
    layer12 = [v140 layer];
    [layer12 setMasksToBounds:1];

    layer13 = [v140 layer];
    stylingMetrics = [(CKEffectPickerView *)v21 stylingMetrics];
    [stylingMetrics roundTrackContainerViewCornerRadius];
    [layer13 setCornerRadius:?];

    layer14 = [v140 layer];
    [layer14 setAllowsGroupOpacity:0];

    layer15 = [v140 layer];
    [layer15 setAllowsGroupBlending:0];

    [v140 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v140 setUserInteractionEnabled:1];
    peekContainer14 = [(CKEffectPickerView *)v21 peekContainer];
    [peekContainer14 addSubview:v140];

    [(CKEffectPickerView *)v21 setRoundedContainerView:v140];
    v147 = objc_alloc_init(MEMORY[0x1E69DD250]);
    layer16 = [v147 layer];
    v149 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
    [layer16 setCompositingFilter:v149];

    [v140 addSubview:v147];
    [v140 bounds];
    [v147 setFrame:?];
    [v147 setAutoresizingMask:18];
    [(CKEffectPickerView *)v21 setRoundedView:v147];
    v150 = MEMORY[0x1E696ACD8];
    closeButton = [(CKEffectPickerView *)v21 closeButton];
    v152 = [v150 constraintWithItem:closeButton attribute:5 relatedBy:0 toItem:v21 attribute:5 multiplier:1.0 constant:v128];

    [(CKEffectPickerView *)v21 addConstraint:v152];
    v153 = MEMORY[0x1E696ACD8];
    sendMomentButton = [(CKEffectPickerView *)v21 sendMomentButton];
    closeButton2 = [(CKEffectPickerView *)v21 closeButton];
    v156 = [v153 constraintWithItem:sendMomentButton attribute:9 relatedBy:0 toItem:closeButton2 attribute:9 multiplier:1.0 constant:0.0];

    [(CKEffectPickerView *)v21 addConstraint:v156];
    v157 = MEMORY[0x1E696ACD8];
    roundedContainerView = [(CKEffectPickerView *)v21 roundedContainerView];
    closeButton3 = [(CKEffectPickerView *)v21 closeButton];
    v160 = [v157 constraintWithItem:roundedContainerView attribute:9 relatedBy:0 toItem:closeButton3 attribute:9 multiplier:1.0 constant:0.0];

    [(CKEffectPickerView *)v21 addConstraint:v160];
    v161 = MEMORY[0x1E696ACD8];
    roundedContainerView2 = [(CKEffectPickerView *)v21 roundedContainerView];
    stylingMetrics2 = [(CKEffectPickerView *)v21 stylingMetrics];
    [stylingMetrics2 roundTrackContainerViewWidth];
    v165 = [v161 constraintWithItem:roundedContainerView2 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v164];

    [(CKEffectPickerView *)v21 addConstraint:v165];
    v166 = MEMORY[0x1E696ACD8];
    typeSegmentedControl = [(CKEffectPickerView *)v21 typeSegmentedControl];
    v168 = [v166 constraintWithItem:typeSegmentedControl attribute:3 relatedBy:0 toItem:v21 attribute:3 multiplier:1.0 constant:70.0];

    [v168 setIdentifier:@"typeSegmentedControlBottom"];
    [(CKEffectPickerView *)v21 setTypeSegmentedControlBottomConstraint:v168];
    [(CKEffectPickerView *)v21 addConstraint:v168];
    v169 = MEMORY[0x1E696ACD8];
    typeSegmentedControl2 = [(CKEffectPickerView *)v21 typeSegmentedControl];
    v171 = [v169 constraintWithItem:typeSegmentedControl2 attribute:9 relatedBy:0 toItem:v21 attribute:9 multiplier:1.0 constant:0.0];

    [(CKEffectPickerView *)v21 addConstraint:v171];
    v172 = MEMORY[0x1E696ACD8];
    mainLabel = [(CKEffectPickerView *)v21 mainLabel];
    v174 = [v172 constraintWithItem:mainLabel attribute:11 relatedBy:0 toItem:v21 attribute:3 multiplier:1.0 constant:50.0];

    [v174 setIdentifier:@"mainLabelBottom"];
    [(CKEffectPickerView *)v21 setMainLabelBottomConstraint:v174];
    [(CKEffectPickerView *)v21 addConstraint:v174];
    v175 = MEMORY[0x1E696ACD8];
    mainLabel2 = [(CKEffectPickerView *)v21 mainLabel];
    v177 = [v175 constraintWithItem:mainLabel2 attribute:9 relatedBy:0 toItem:v21 attribute:9 multiplier:1.0 constant:0.0];

    [(CKEffectPickerView *)v21 addConstraint:v177];
    v178 = MEMORY[0x1E696ACD8];
    mainLabel3 = [(CKEffectPickerView *)v21 mainLabel];
    v180 = [v178 constraintWithItem:mainLabel3 attribute:5 relatedBy:1 toItem:v21 attribute:5 multiplier:1.0 constant:20.0];

    [(CKEffectPickerView *)v21 addConstraint:v180];
    v181 = MEMORY[0x1E696ACD8];
    mainLabel4 = [(CKEffectPickerView *)v21 mainLabel];
    v183 = [v181 constraintWithItem:mainLabel4 attribute:6 relatedBy:1 toItem:v21 attribute:6 multiplier:1.0 constant:-20.0];

    [(CKEffectPickerView *)v21 addConstraint:v183];
    if ([(CKEffectPickerView *)v21 _keyboardIsOnTopOfEffectPickerWindow]&& UIKeyboardAutomaticIsOnScreen())
    {
      v184 = MEMORY[0x1E696ACD8];
      pageControl = [(CKEffectPickerView *)v21 pageControl];
      closeButton4 = [(CKEffectPickerView *)v21 closeButton];
      v187 = 1.0;
      v188 = 0.0;
      v189 = v184;
      v190 = pageControl;
      v191 = 10;
      v192 = closeButton4;
      v193 = 10;
    }

    else
    {
      v194 = MEMORY[0x1E696ACD8];
      pageControl = [(CKEffectPickerView *)v21 pageControl];
      closeButton4 = [(CKEffectPickerView *)v21 peekContainer];
      v187 = 1.0;
      v188 = -20.0;
      v189 = v194;
      v190 = pageControl;
      v191 = 4;
      v192 = closeButton4;
      v193 = 4;
    }

    v195 = [v189 constraintWithItem:v190 attribute:v191 relatedBy:0 toItem:v192 attribute:v193 multiplier:v187 constant:v188];

    [v195 setIdentifier:@"pageControlBottom"];
    [(CKEffectPickerView *)v21 addConstraint:v195];
    v196 = MEMORY[0x1E696ACD8];
    pageControl2 = [(CKEffectPickerView *)v21 pageControl];
    peekContainer15 = [(CKEffectPickerView *)v21 peekContainer];
    v199 = [v196 constraintWithItem:pageControl2 attribute:7 relatedBy:0 toItem:peekContainer15 attribute:7 multiplier:1.0 constant:0.0];

    [(CKEffectPickerView *)v21 addConstraint:v199];
    [(CKEffectPickerView *)v21 activateTextSizeDependentConstraintsForSendButtonFrame:v128, v51, v54, v80];
    v200 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:v21 action:sel__panGesture_];
    [(CKEffectPickerView *)v21 addGestureRecognizer:v200];
    [(CKEffectPickerView *)v21 setPanGestureRecognizer:v200];
    [(CKEffectPickerView *)v21 _updateBalloonViewPositionAnimated:0];
    [(CKEffectPickerView *)v21 updateMomentTitle:0];
    [(CKEffectPickerView *)v21 effectTypeDidChange:v77];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [(CKEffectPickerView *)v21 setAnimatedCells:dictionary2];

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    [(CKEffectPickerView *)v21 setPausedAnimatedCells:dictionary3];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v21 selector:sel__applicationDidEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v21 selector:sel__applicationWillEnterForeground name:*MEMORY[0x1E69DDBC0] object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v21 selector:sel__accessibilityContrastStatusDidChange name:*MEMORY[0x1E69DD920] object:0];

    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter5 addObserver:v21 selector:sel__accessibilityContrastStatusDidChange name:*MEMORY[0x1E69DD8B8] object:0];

    [(CKEffectPickerView *)v21 _accessibilityContrastStatusDidChange];
    [(CKEffectPickerView *)v21 updateViewColors];

    compositionCopy = v224;
    v19 = v225;
  }

  return v21;
}

- (void)updateViewColors
{
  momentIdentifiers = [(CKEffectPickerView *)self momentIdentifiers];
  pageControl = [(CKEffectPickerView *)self pageControl];
  v9 = [momentIdentifiers objectAtIndex:{objc_msgSend(pageControl, "currentPage")}];

  fsem = [(CKEffectPickerView *)self fsem];
  v6 = [fsem effectForIdentifier:v9];

  typeSegmentedControl = [(CKEffectPickerView *)self typeSegmentedControl];
  if ([typeSegmentedControl selectedSegmentIndex] == 1)
  {
    effectIsDark = [v6 effectIsDark];
  }

  else
  {
    effectIsDark = 0;
  }

  [(CKEffectPickerView *)self updateViewColors:effectIsDark];
}

- (void)updateViewColors:(BOOL)colors
{
  v88 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if ((isEntryViewRefreshEnabled & 1) == 0)
  {
    typeSegmentedControl = [(CKEffectPickerView *)self typeSegmentedControl];
    v8 = +[CKUIBehavior sharedBehaviors];
    theme = [v8 theme];
    v10 = theme;
    if (colors)
    {
      [theme fsmPickerPrimaryTintColorDarkEffect];
    }

    else
    {
      [theme fsmPickerPrimaryTintColor];
    }
    v11 = ;
    [typeSegmentedControl setTintColor:v11];

    segmentedBackdrop = [(CKEffectPickerView *)self segmentedBackdrop];
    v13 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v13 theme];
    v15 = theme2;
    if (colors)
    {
      fsmPickerSecondaryColorDarkEffect = [theme2 fsmPickerSecondaryColorDarkEffect];
      cgColor = [fsmPickerSecondaryColorDarkEffect cgColor];
    }

    else
    {
      fsmPickerSecondaryColorDarkEffect = [theme2 fsmPickerSecondaryColor];
      cgColor = [fsmPickerSecondaryColorDarkEffect CGColor];
    }

    [segmentedBackdrop setBackgroundColor:cgColor];
  }

  pageControl = [(CKEffectPickerView *)self pageControl];
  v19 = +[CKUIBehavior sharedBehaviors];
  theme3 = [v19 theme];
  v21 = theme3;
  if (colors)
  {
    [theme3 fsmPickerPageIndicatorColorDarkEffect];
  }

  else
  {
    [theme3 fsmPickerPageIndicatorColor];
  }
  v22 = ;
  [pageControl setPageIndicatorTintColor:v22];

  pageControl2 = [(CKEffectPickerView *)self pageControl];
  v24 = +[CKUIBehavior sharedBehaviors];
  theme4 = [v24 theme];
  v26 = theme4;
  if (colors)
  {
    [theme4 fsmPickerCurrentPageIndicatorColorDarkEffect];
  }

  else
  {
    [theme4 fsmPickerCurrentPageIndicatorColor];
  }
  v27 = ;
  [pageControl2 setCurrentPageIndicatorTintColor:v27];

  mainLabel = [(CKEffectPickerView *)self mainLabel];
  v29 = +[CKUIBehavior sharedBehaviors];
  theme5 = [v29 theme];
  v31 = theme5;
  if (colors)
  {
    [theme5 fsmPickerPrimaryColorDarkEffect];
  }

  else
  {
    [theme5 fsmPickerPrimaryColor];
  }
  v32 = ;
  [mainLabel setTextColor:v32];

  momentTitleLabel = [(CKEffectPickerView *)self momentTitleLabel];
  v34 = +[CKUIBehavior sharedBehaviors];
  theme6 = [v34 theme];
  v36 = theme6;
  if (colors)
  {
    [theme6 fsmPickerPrimaryColorDarkEffect];
  }

  else
  {
    [theme6 fsmPickerPrimaryColor];
  }
  v37 = ;
  [momentTitleLabel setTextColor:v37];

  closeButton = [(CKEffectPickerView *)self closeButton];
  v39 = +[CKUIBehavior sharedBehaviors];
  theme7 = [v39 theme];
  v41 = theme7;
  if (colors)
  {
    [theme7 fsmPickerCloseButtonColorDarkEffect];
  }

  else
  {
    [theme7 fsmPickerCloseButtonColor];
  }
  v42 = ;
  [closeButton setTintColor:v42];

  accessibilityCloseBackgroundView = [(CKEffectPickerView *)self accessibilityCloseBackgroundView];
  v44 = +[CKUIBehavior sharedBehaviors];
  theme8 = [v44 theme];
  v46 = theme8;
  if (colors)
  {
    [theme8 fsmPickerSecondaryColorDarkEffect];
  }

  else
  {
    [theme8 fsmPickerSecondaryColor];
  }
  v47 = ;
  [accessibilityCloseBackgroundView setBackgroundColor:v47];

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  selfCopy = self;
  effectLabels = [(CKEffectPickerView *)self effectLabels];
  v49 = [effectLabels countByEnumeratingWithState:&v82 objects:v87 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v83;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v83 != v51)
        {
          objc_enumerationMutation(effectLabels);
        }

        v53 = *(*(&v82 + 1) + 8 * i);
        v54 = +[CKUIBehavior sharedBehaviors];
        theme9 = [v54 theme];
        v56 = theme9;
        if (colors)
        {
          [theme9 fsmPickerPrimaryColorDarkEffect];
        }

        else
        {
          [theme9 fsmPickerPrimaryColor];
        }
        v57 = ;
        [v53 setTextColor:v57];
      }

      v50 = [effectLabels countByEnumeratingWithState:&v82 objects:v87 count:16];
    }

    while (v50);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  effectDescriptiveLabels = [(CKEffectPickerView *)selfCopy effectDescriptiveLabels];
  v59 = [effectDescriptiveLabels countByEnumeratingWithState:&v78 objects:v86 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v79;
    do
    {
      for (j = 0; j != v60; ++j)
      {
        if (*v79 != v61)
        {
          objc_enumerationMutation(effectDescriptiveLabels);
        }

        v63 = *(*(&v78 + 1) + 8 * j);
        v64 = +[CKUIBehavior sharedBehaviors];
        theme10 = [v64 theme];
        v66 = theme10;
        if (colors)
        {
          [theme10 fsmPickerPrimaryColorDarkEffect];
        }

        else
        {
          [theme10 fsmPickerPrimaryColor];
        }
        v67 = ;
        [v63 setTextColor:v67];
      }

      v60 = [effectDescriptiveLabels countByEnumeratingWithState:&v78 objects:v86 count:16];
    }

    while (v60);
  }

  roundedView = [(CKEffectPickerView *)selfCopy roundedView];
  v69 = +[CKUIBehavior sharedBehaviors];
  theme11 = [v69 theme];
  fsmPickerRoundedViewColor = [theme11 fsmPickerRoundedViewColor];
  [roundedView setBackgroundColor:fsmPickerRoundedViewColor];

  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    backgroundView = [(CKEffectPickerView *)selfCopy backgroundView];
  }

  else
  {
    v73 = UIAccessibilityDarkerSystemColorsEnabled();
    backgroundView = [(CKEffectPickerView *)selfCopy backgroundView];
    if (!v73)
    {
      v74 = +[CKUIBehavior sharedBehaviors];
      theme12 = [v74 theme];
      fsmPickerBackgroundViewColor = [theme12 fsmPickerBackgroundViewColor];
      [backgroundView setBackgroundColor:fsmPickerBackgroundViewColor];

      goto LABEL_52;
    }
  }

  [backgroundView setBackgroundColor:0];
LABEL_52:
}

- (void)safeAreaInsetsDidChange
{
  v28 = *MEMORY[0x1E69E9840];
  [(CKEffectPickerView *)self safeAreaInsets];
  v4 = v3;
  v6 = v5;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  constraints = [(CKEffectPickerView *)self constraints];
  v8 = [constraints countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    v11 = v4 + 70.0;
    v12 = v4 + 50.0;
    v13 = -20.0 - v6;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(constraints);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        identifier = [v15 identifier];
        v17 = [identifier isEqualToString:@"pageControlBottom"];

        v18 = v13;
        if ((v17 & 1) == 0)
        {
          identifier2 = [v15 identifier];
          v20 = [identifier2 isEqualToString:@"mainLabelBottom"];

          v18 = v12;
          if ((v20 & 1) == 0)
          {
            identifier3 = [v15 identifier];
            v22 = [identifier3 isEqualToString:@"typeSegmentedControlBottom"];

            v18 = v11;
            if (!v22)
            {
              continue;
            }
          }
        }

        [v15 setConstant:v18];
      }

      v9 = [constraints countByEnumeratingWithState:&v23 objects:v27 count:{16, v18}];
    }

    while (v9);
  }
}

- (int64_t)selectedMomentIndex
{
  momentsCollectionView = [(CKEffectPickerView *)self momentsCollectionView];
  [momentsCollectionView frame];
  v5 = v4;

  momentsCollectionView2 = [(CKEffectPickerView *)self momentsCollectionView];
  [momentsCollectionView2 contentOffset];
  *&v7 = v7 / v5;
  v8 = llroundf(*&v7);

  return v8;
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  selectedMomentIndex = [(CKEffectPickerView *)self selectedMomentIndex];
  pageControl = [(CKEffectPickerView *)self pageControl];
  currentPage = [pageControl currentPage];

  if (currentPage != selectedMomentIndex)
  {
    pageControl2 = [(CKEffectPickerView *)self pageControl];
    [pageControl2 setCurrentPage:selectedMomentIndex];

    [(CKEffectPickerView *)self updateMomentTitle:0];
  }
}

- (void)dealloc
{
  [(CKEffectPickerView *)self setDelegate:0];
  balloonView = [(CKEffectPickerView *)self balloonView];
  layer = [balloonView layer];
  v5 = *(MEMORY[0x1E69792E8] + 80);
  v18[4] = *(MEMORY[0x1E69792E8] + 64);
  v18[5] = v5;
  v6 = *(MEMORY[0x1E69792E8] + 112);
  v18[6] = *(MEMORY[0x1E69792E8] + 96);
  v18[7] = v6;
  v7 = *(MEMORY[0x1E69792E8] + 16);
  v18[0] = *MEMORY[0x1E69792E8];
  v18[1] = v7;
  v8 = *(MEMORY[0x1E69792E8] + 48);
  v18[2] = *(MEMORY[0x1E69792E8] + 32);
  v18[3] = v8;
  [layer setTransform:v18];

  balloonView2 = [(CKEffectPickerView *)self balloonView];
  [balloonView2 _removeAllAnimations:1];

  balloonView3 = [(CKEffectPickerView *)self balloonView];
  [balloonView3 setUserInteractionEnabled:1];

  balloonView4 = [(CKEffectPickerView *)self balloonView];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v12 = +[CKUIBehavior sharedBehaviors];
  isAccessibilityPreferredContentSizeCategory = [v12 isAccessibilityPreferredContentSizeCategory];

  if (isAccessibilityPreferredContentSizeCategory)
  {
    balloonView4 = [(CKEffectPickerView *)self balloonView];
    [balloonView4 restoreFromLargeTextTruncation];
LABEL_4:
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 removeObserver:self name:*MEMORY[0x1E69DD920] object:0];

  v17.receiver = self;
  v17.super_class = CKEffectPickerView;
  [(CKEffectPickerView *)&v17 dealloc];
}

- (void)layoutSubviews
{
  v57.receiver = self;
  v57.super_class = CKEffectPickerView;
  [(CKEffectPickerView *)&v57 layoutSubviews];
  [(CKEffectPickerView *)self _updateBalloonViewPositionAnimated:0];
  backdrop = [(CKEffectPickerView *)self backdrop];
  layer = [(CKEffectPickerView *)self layer];
  [layer bounds];
  [backdrop setFrame:?];

  if (UIAccessibilityIsReduceTransparencyEnabled() || UIAccessibilityDarkerSystemColorsEnabled())
  {
    accessibilityBackdropView = [(CKEffectPickerView *)self accessibilityBackdropView];
    [(CKEffectPickerView *)self bounds];
    [accessibilityBackdropView setFrame:?];

    sendMomentButton = [(CKEffectPickerView *)self sendMomentButton];
    [sendMomentButton frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    accessibilitySendBackgroundView = [(CKEffectPickerView *)self accessibilitySendBackgroundView];
    [accessibilitySendBackgroundView setFrame:{v8 + 2.0, v10 + 2.0, v12 + -4.0, v14 + -4.0}];

    closeButton = [(CKEffectPickerView *)self closeButton];
    [closeButton frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    accessibilityCloseBackgroundView = [(CKEffectPickerView *)self accessibilityCloseBackgroundView];
    [accessibilityCloseBackgroundView setFrame:{v18 + 2.0, v20 + 2.0, v22 + -4.0, v24 + -4.0}];

    accessibilitySendBackgroundView2 = [(CKEffectPickerView *)self accessibilitySendBackgroundView];
    layer2 = [accessibilitySendBackgroundView2 layer];
    accessibilitySendBackgroundView3 = [(CKEffectPickerView *)self accessibilitySendBackgroundView];
    [accessibilitySendBackgroundView3 bounds];
    [layer2 setCornerRadius:v29 * 0.5];

    accessibilityCloseBackgroundView2 = [(CKEffectPickerView *)self accessibilityCloseBackgroundView];
    layer3 = [accessibilityCloseBackgroundView2 layer];
    accessibilityCloseBackgroundView3 = [(CKEffectPickerView *)self accessibilityCloseBackgroundView];
    [accessibilityCloseBackgroundView3 bounds];
    [layer3 setCornerRadius:v33 * 0.5];

    typeSegmentedControl = [(CKEffectPickerView *)self typeSegmentedControl];
    selectedSegmentIndex = [typeSegmentedControl selectedSegmentIndex];

    if (!selectedSegmentIndex)
    {
      accessibilitySendBackgroundView4 = [(CKEffectPickerView *)self accessibilitySendBackgroundView];
      [accessibilitySendBackgroundView4 setHidden:1];
    }
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if ((isEntryViewRefreshEnabled & 1) == 0)
  {
    segmentedBackdrop = [(CKEffectPickerView *)self segmentedBackdrop];
    [(CKEffectPickerView *)self bounds];
    v41 = v40 * 0.5;
    segmentedBackdrop2 = [(CKEffectPickerView *)self segmentedBackdrop];
    [segmentedBackdrop2 bounds];
    v44 = v41 - v43 * 0.5;
    typeSegmentedControlBottomConstraint = [(CKEffectPickerView *)self typeSegmentedControlBottomConstraint];
    [typeSegmentedControlBottomConstraint constant];
    v47 = v46;
    segmentedBackdrop3 = [(CKEffectPickerView *)self segmentedBackdrop];
    [segmentedBackdrop3 bounds];
    v50 = v49;
    segmentedBackdrop4 = [(CKEffectPickerView *)self segmentedBackdrop];
    [segmentedBackdrop4 bounds];
    [segmentedBackdrop setFrame:{v44, v47, v50}];
  }

  momentsCollectionView = [(CKEffectPickerView *)self momentsCollectionView];
  collectionViewLayout = [momentsCollectionView collectionViewLayout];
  [momentsCollectionView bounds];
  v55 = v54;
  [momentsCollectionView bounds];
  [collectionViewLayout setItemSize:{v55, v56}];
}

- (void)updateHintTransition:(double)transition
{
  if (![(CKEffectPickerView *)self isAnimating])
  {
    hintBlackText = [(CKEffectPickerView *)self hintBlackText];

    if (transition < 1.0 && hintBlackText == 0)
    {
      [(CKEffectPickerView *)self _resizeBalloon];
      [(CKEffectPickerView *)self _updateBalloonViewPositionAnimated:0];
      balloonView = [(CKEffectPickerView *)self balloonView];
      [(CKEffectPickerView *)self balloonViewOrigin];
      v12 = v11 + 1.0;
      balloonView2 = [(CKEffectPickerView *)self balloonView];
      [balloonView2 origin];
      [balloonView setOrigin:{v12, v14 + 3.0}];

      _blackTextReplica = [(CKEffectPickerView *)self _blackTextReplica];
      if (!_blackTextReplica)
      {
        _blackTextReplica = [(CKEffectPickerView *)self balloonView];
      }

      [(CKEffectPickerView *)self balloonViewOrigin];
      [_blackTextReplica setOrigin:?];
      hintContainer = [(CKEffectPickerView *)self hintContainer];
      [hintContainer addSubview:_blackTextReplica];

      [(CKEffectPickerView *)self setHintBlackText:_blackTextReplica];
      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

      if (isEntryViewRefreshEnabled)
      {
        v19 = objc_alloc_init(CKGlassSendButton);
        [(CKGlassSendButton *)v19 setCkTintColor:[(CKEffectPickerView *)self controlColor]];
        [(CKGlassSendButton *)v19 setOpaque:0];
        closeButton = [(CKEffectPickerView *)self closeButton];
        [closeButton frame];
        v22 = v21;
        v24 = v23;

        +[CKGlassSendButton buttonSize];
        [(CKGlassSendButton *)v19 setBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v25, v26];
        [(CKGlassSendButton *)v19 setTranslatesAutoresizingMaskIntoConstraints:1];
        [(CKGlassSendButton *)v19 setOrigin:v22, v24];
        hintContainer2 = [(CKEffectPickerView *)self hintContainer];
        [hintContainer2 addSubview:v19];

        [(CKEffectPickerView *)self setHintSendButton:v19];
      }

      else
      {
        v28 = +[CKUIBehavior sharedBehaviors];
        theme = [v28 theme];
        v19 = [theme sendButtonColorForColorType:{-[CKEffectPickerView controlColor](self, "controlColor")}];

        v30 = [MEMORY[0x1E69DC738] buttonWithType:1];
        sendImage = [(CKEffectPickerView *)self sendImage];
        [v30 setImage:sendImage forState:0];
        [v30 setImage:sendImage forState:4];
        [v30 setOpaque:0];
        closeButton2 = [(CKEffectPickerView *)self closeButton];
        [closeButton2 frame];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;

        [v30 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v38, v40}];
        [v30 setTintColor:v19];
        [v30 setTranslatesAutoresizingMaskIntoConstraints:1];
        [v30 setOrigin:{v34, v36}];
        hintContainer3 = [(CKEffectPickerView *)self hintContainer];
        [hintContainer3 addSubview:v30];

        [(CKEffectPickerView *)self setHintSendButton:v30];
      }
    }

    else
    {
      hintBlackText2 = [(CKEffectPickerView *)self hintBlackText];

      if (transition == 1.0 && hintBlackText2)
      {
        hintBlackText3 = [(CKEffectPickerView *)self hintBlackText];
        [hintBlackText3 removeFromSuperview];

        [(CKEffectPickerView *)self setHintBlackText:0];
        hintSendButton = [(CKEffectPickerView *)self hintSendButton];
        [hintSendButton removeFromSuperview];

        [(CKEffectPickerView *)self setHintSendButton:0];
      }
    }

    backdrop = [(CKEffectPickerView *)self backdrop];
    v43 = fmin(transition, 0.6);
    v44 = v43 * 64.0;
    if (v43 * 64.0 < 3.0)
    {
      v44 = 3.0;
    }

    v45 = [MEMORY[0x1E696AD98] numberWithDouble:v44];
    [backdrop setValue:v45 forKeyPath:@"filters.gaussianBlur.inputRadius"];

    blueContrastLayer = [(CKEffectPickerView *)self blueContrastLayer];
    v47 = [MEMORY[0x1E696AD98] numberWithDouble:v43];
    [blueContrastLayer setValue:v47 forKey:@"opacity"];

    v48 = transition * 0.15 + 1.0;
    balloonView3 = [(CKEffectPickerView *)self balloonView];
    layer = [balloonView3 layer];
    v59 = *(MEMORY[0x1E69792E8] + 80);
    *&v61.m31 = *(MEMORY[0x1E69792E8] + 64);
    v60 = *&v61.m31;
    *&v61.m33 = v59;
    v57 = *(MEMORY[0x1E69792E8] + 112);
    *&v61.m41 = *(MEMORY[0x1E69792E8] + 96);
    v58 = *&v61.m41;
    *&v61.m43 = v57;
    v55 = *(MEMORY[0x1E69792E8] + 16);
    *&v61.m11 = *MEMORY[0x1E69792E8];
    v56 = *&v61.m11;
    *&v61.m13 = v55;
    v53 = *(MEMORY[0x1E69792E8] + 48);
    *&v61.m21 = *(MEMORY[0x1E69792E8] + 32);
    v54 = *&v61.m21;
    *&v61.m23 = v53;
    CATransform3DScale(&v62, &v61, v48, v48, 1.0);
    [layer setTransform:&v62];

    hintBlackText4 = [(CKEffectPickerView *)self hintBlackText];
    layer2 = [hintBlackText4 layer];
    *&v61.m31 = v60;
    *&v61.m33 = v59;
    *&v61.m41 = v58;
    *&v61.m43 = v57;
    *&v61.m11 = v56;
    *&v61.m13 = v55;
    *&v61.m21 = v54;
    *&v61.m23 = v53;
    CATransform3DScale(&v62, &v61, v48, v48, 1.0);
    [layer2 setTransform:&v62];
  }
}

- (void)updateColor:(char)color
{
  colorCopy = color;
  v28 = *MEMORY[0x1E69E9840];
  [(CKEffectPickerView *)self setControlColor:?];
  v5 = +[CKUIBehavior sharedBehaviors];
  theme = [v5 theme];
  v7 = [theme sendButtonColorForColorType:colorCopy];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  effectSendButtons = [(CKEffectPickerView *)self effectSendButtons];
  v9 = [effectSendButtons countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(effectSendButtons);
        }

        [*(*(&v23 + 1) + 8 * v12++) setTintColor:v7];
      }

      while (v10 != v12);
      v10 = [effectSendButtons countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  hintSendButton = [(CKEffectPickerView *)self hintSendButton];
  [hintSendButton setTintColor:v7];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  sendMomentButton = [(CKEffectPickerView *)self sendMomentButton];
  sendMomentButton2 = sendMomentButton;
  if (isEntryViewRefreshEnabled)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_13;
    }

    sendMomentButton2 = [(CKEffectPickerView *)self sendMomentButton];
    [sendMomentButton2 setCkTintColor:colorCopy];
  }

  else
  {
    [sendMomentButton setTintColor:v7];
  }

LABEL_13:
  balloonView = [(CKEffectPickerView *)self balloonView];
  objc_opt_class();
  v20 = objc_opt_isKindOfClass();

  if (v20)
  {
    balloonView2 = [(CKEffectPickerView *)self balloonView];
    [balloonView2 setColor:colorCopy];

    balloonView3 = [(CKEffectPickerView *)self balloonView];
    [balloonView3 prepareForDisplayIfNeeded];
  }
}

- (void)setBalloonText:(id)text
{
  textCopy = text;
  v7 = +[CKUIBehavior sharedBehaviors];
  theme = [v7 theme];
  v6 = [theme balloonTextColorForColorType:1];
  [(CKEffectPickerView *)self _setBalloonText:textCopy withColor:v6];
}

- (UIFont)effectLabelFont
{
  effectLabelFont = self->_effectLabelFont;
  if (effectLabelFont)
  {
    v3 = effectLabelFont;
  }

  else
  {
    v5 = [CKUIBehavior fontWithStyle:*MEMORY[0x1E69DDD10] adjustedForMaxSizeCategory:*MEMORY[0x1E69DDC28]];
    fontDescriptor = [v5 fontDescriptor];
    fontAttributes = [fontDescriptor fontAttributes];
    v8 = [fontAttributes mutableCopy];

    v9 = *MEMORY[0x1E69DB8F0];
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69DB8F0]];
    dictionary = [v10 mutableCopy];

    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v12 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB980]];
    [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x1E69DB990]];

    [v8 setObject:dictionary forKeyedSubscript:v9];
    v13 = [MEMORY[0x1E69DB880] fontDescriptorWithFontAttributes:v8];
    v14 = MEMORY[0x1E69DB878];
    [v5 pointSize];
    v15 = [v14 fontWithDescriptor:v13 size:?];
    v16 = self->_effectLabelFont;
    self->_effectLabelFont = v15;

    v3 = self->_effectLabelFont;
  }

  return v3;
}

- (id)sendImage
{
  v2 = [CKEntryViewButton entryViewButtonImageForType:0 color:[(CKEffectPickerView *)self controlColor]];
  _imageThatSuppressesAccessibilityHairlineThickening = [v2 _imageThatSuppressesAccessibilityHairlineThickening];

  return _imageThatSuppressesAccessibilityHairlineThickening;
}

- (void)addEffect:(id)effect withDescriptiveText:(id)text withIdentifier:(id)identifier
{
  v127[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  textCopy = text;
  effectCopy = effect;
  effectLabels = [(CKEffectPickerView *)self effectLabels];

  if (!effectLabels)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(CKEffectPickerView *)self setEffectLabels:v11];

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(CKEffectPickerView *)self setEffectDescriptiveLabels:v12];

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(CKEffectPickerView *)self setEffectDotButtons:v13];

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(CKEffectPickerView *)self setEffectSendButtons:v14];

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(CKEffectPickerView *)self setEffectIdentifiers:v15];

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CKEffectPickerView *)self setEffectDotConstraintsThatChange:v16];
  }

  v17 = objc_alloc(MEMORY[0x1E69DCC10]);
  v18 = *MEMORY[0x1E695F058];
  v19 = *(MEMORY[0x1E695F058] + 8);
  v20 = *(MEMORY[0x1E695F058] + 16);
  v21 = *(MEMORY[0x1E695F058] + 24);
  v22 = [v17 initWithFrame:{*MEMORY[0x1E695F058], v19, v20, v21}];
  [v22 setText:effectCopy];

  effectLabelFont = [(CKEffectPickerView *)self effectLabelFont];
  [v22 setFont:effectLabelFont];

  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v22 sizeToFit];
  peekContainer = [(CKEffectPickerView *)self peekContainer];
  [peekContainer addSubview:v22];

  v25 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v18, v19, v20, v21}];
  [v25 setText:textCopy];

  effectLabelFont2 = [(CKEffectPickerView *)self effectLabelFont];
  [v25 setFont:effectLabelFont2];

  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v25 sizeToFit];
  [v25 setHidden:1];
  peekContainer2 = [(CKEffectPickerView *)self peekContainer];
  [peekContainer2 addSubview:v25];

  LOBYTE(peekContainer2) = UIAccessibilityIsReduceTransparencyEnabled();
  v28 = peekContainer2 | UIAccessibilityDarkerSystemColorsEnabled();
  v29 = +[CKUIBehavior sharedBehaviors];
  theme = [v29 theme];
  fsmPickerPrimaryColor = [theme fsmPickerPrimaryColor];
  [v22 setTextColor:fsmPickerPrimaryColor];

  v32 = +[CKUIBehavior sharedBehaviors];
  theme2 = [v32 theme];
  fsmPickerPrimaryColor2 = [theme2 fsmPickerPrimaryColor];
  [v25 setTextColor:fsmPickerPrimaryColor2];

  if ((v28 & 1) == 0)
  {
    layer = [v22 layer];
    setUpVibrancyForLayer(layer, 0, ![(CKEffectPickerView *)self isInDarkMode], [(CKEffectPickerView *)self isInDarkMode]);

    layer2 = [v25 layer];
    setUpVibrancyForLayer(layer2, 0, ![(CKEffectPickerView *)self isInDarkMode], [(CKEffectPickerView *)self isInDarkMode]);
  }

  v125 = v22;
  sendImage = [(CKEffectPickerView *)self sendImage];
  [sendImage size];
  UIGraphicsBeginImageContext(v128);
  [sendImage size];
  UIGraphicsBeginImageContextWithOptions(v129, 0, 0.0);
  v38 = +[CKUIBehavior sharedBehaviors];
  theme3 = [v38 theme];
  v40 = theme3;
  v124 = v25;
  if (v28)
  {
    [theme3 fsmPickerPrimaryColor];
  }

  else
  {
    [theme3 fsmPickerDotColor];
  }
  v41 = ;
  [v41 set];

  v42 = MEMORY[0x1E69DC728];
  [sendImage size];
  v44 = v43 * 0.5 + -4.5;
  [sendImage size];
  v46 = [v42 bezierPathWithOvalInRect:{v44, v45 * 0.5 + -4.5, 9.0, 9.0}];
  [v46 fill];

  v47 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v48 = [CKLargeHitButton buttonWithType:0];
  [v48 setCk_hitTestInsets:{-15.0, -15.0, -15.0, -15.0}];
  [v48 setImage:v47 forState:0];
  v122 = v47;
  [v48 setImage:v47 forState:4];
  [v48 sizeToFit];
  roundedContainerView = [(CKEffectPickerView *)self roundedContainerView];
  [roundedContainerView addSubview:v48];

  [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v48 addTarget:self action:sel__touchUpInsideDotButton_ forControlEvents:64];
  if ((v28 & 1) == 0)
  {
    [v48 setOpaque:0];
    isInDarkMode = [(CKEffectPickerView *)self isInDarkMode];
    v51 = MEMORY[0x1E6979CF8];
    if (!isInDarkMode)
    {
      v51 = MEMORY[0x1E6979CE8];
    }

    v52 = *v51;
    layer3 = [v48 layer];
    v54 = [MEMORY[0x1E6979378] filterWithType:v52];

    [layer3 setCompositingFilter:v54];
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    v57 = objc_alloc_init(CKGlassSendButton);
    [(CKGlassSendButton *)v57 setCkTintColor:[(CKEffectPickerView *)self controlColor]];
    v58 = v57;
    [(CKGlassSendButton *)v58 setOpaque:0];
    +[CKGlassSendButton buttonSize];
    [(CKGlassSendButton *)v58 setBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v59, v60];
    roundedContainerView2 = [(CKEffectPickerView *)self roundedContainerView];
    [roundedContainerView2 addSubview:v58];

    v62 = v58;
  }

  else
  {
    v63 = +[CKUIBehavior sharedBehaviors];
    theme4 = [v63 theme];
    v62 = [theme4 sendButtonColorForColorType:{-[CKEffectPickerView controlColor](self, "controlColor")}];

    v58 = [MEMORY[0x1E69DC738] buttonWithType:1];
    [(CKGlassSendButton *)v58 setImage:sendImage forState:0];
    [(CKGlassSendButton *)v58 setImage:sendImage forState:4];
    [(CKGlassSendButton *)v58 setOpaque:0];
    [(CKGlassSendButton *)v58 setBounds:0.0, 0.0, 52.0, 52.0];
    roundedContainerView3 = [(CKEffectPickerView *)self roundedContainerView];
    [roundedContainerView3 addSubview:v58];

    [(CKGlassSendButton *)v58 setTintColor:v62];
  }

  v123 = sendImage;
  [(CKGlassSendButton *)v58 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CKGlassSendButton *)v58 addTarget:self action:sel__touchUpInsideSendButton_ forControlEvents:64];
  [(CKGlassSendButton *)v58 setHidden:1];

  [v48 bounds];
  v67 = v66;
  [(CKGlassSendButton *)v58 bounds];
  v69 = v67 - v68;
  stylingMetrics = [(CKEffectPickerView *)self stylingMetrics];
  [stylingMetrics roundTrackPadding];
  v72 = v71 + v69 * -0.5;

  [(CKEffectPickerView *)self marginBetweenPickerDotButtons];
  v74 = v73;
  v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
  effectLabels2 = [(CKEffectPickerView *)self effectLabels];
  v77 = [effectLabels2 count];

  v78 = 0x1E696A000uLL;
  v79 = MEMORY[0x1E696ACD8];
  if (v77)
  {
    effectDotButtons = [(CKEffectPickerView *)self effectDotButtons];
    lastObject = [effectDotButtons lastObject];
    v82 = [v79 constraintWithItem:v48 attribute:10 relatedBy:0 toItem:lastObject attribute:10 multiplier:1.0 constant:-(v74 + 9.0)];

    roundedContainerView4 = [(CKEffectPickerView *)self roundedContainerView];
    [roundedContainerView4 addConstraint:v82];

    [v75 addObject:v82];
    effectDotConstraintsThatChange = [(CKEffectPickerView *)self effectDotConstraintsThatChange];
    effectIdentifiers = [(CKEffectPickerView *)self effectIdentifiers];
    effectLabels3 = [(CKEffectPickerView *)self effectLabels];
    [effectIdentifiers objectAtIndex:{objc_msgSend(effectLabels3, "count") - 1}];
    v88 = v87 = v75;
    roundedContainerView6 = [effectDotConstraintsThatChange objectForKey:v88];

    v75 = v87;
    v78 = 0x1E696A000;

    [roundedContainerView6 addObject:v82];
  }

  else
  {
    roundedContainerView5 = [(CKEffectPickerView *)self roundedContainerView];
    v82 = [v79 constraintWithItem:v48 attribute:4 relatedBy:0 toItem:roundedContainerView5 attribute:4 multiplier:1.0 constant:-v72];

    roundedContainerView6 = [(CKEffectPickerView *)self roundedContainerView];
    [roundedContainerView6 addConstraint:v82];
  }

  effectDotConstraintsThatChange2 = [(CKEffectPickerView *)self effectDotConstraintsThatChange];
  [effectDotConstraintsThatChange2 setObject:v75 forKey:identifierCopy];

  v92 = *(v78 + 3288);
  roundedContainerView7 = [(CKEffectPickerView *)self roundedContainerView];
  v94 = [v92 constraintWithItem:v48 attribute:9 relatedBy:0 toItem:roundedContainerView7 attribute:9 multiplier:1.0 constant:0.0];

  roundedContainerView8 = [(CKEffectPickerView *)self roundedContainerView];
  [roundedContainerView8 addConstraint:v94];

  lastEffectDotTopConstraint = [(CKEffectPickerView *)self lastEffectDotTopConstraint];

  if (lastEffectDotTopConstraint)
  {
    v97 = *(v78 + 3288);
    lastEffectDotTopConstraint2 = [(CKEffectPickerView *)self lastEffectDotTopConstraint];
    v127[0] = lastEffectDotTopConstraint2;
    v99 = [MEMORY[0x1E695DEC8] arrayWithObjects:v127 count:1];
    [v97 deactivateConstraints:v99];

    lastEffectDotTopConstraint3 = [(CKEffectPickerView *)self lastEffectDotTopConstraint];
    [(CKEffectPickerView *)self removeConstraint:lastEffectDotTopConstraint3];
  }

  v101 = *(v78 + 3288);
  roundedContainerView9 = [(CKEffectPickerView *)self roundedContainerView];
  v103 = [v101 constraintWithItem:v48 attribute:3 relatedBy:0 toItem:roundedContainerView9 attribute:3 multiplier:1.0 constant:v72];

  roundedContainerView10 = [(CKEffectPickerView *)self roundedContainerView];
  [roundedContainerView10 addConstraint:v103];

  [(CKEffectPickerView *)self setLastEffectDotTopConstraint:v103];
  v105 = [*(v78 + 3288) constraintWithItem:v58 attribute:9 relatedBy:0 toItem:v48 attribute:9 multiplier:1.0 constant:0.0];
  v106 = [*(v78 + 3288) constraintWithItem:v58 attribute:10 relatedBy:0 toItem:v48 attribute:10 multiplier:1.0 constant:0.0];
  roundedContainerView11 = [(CKEffectPickerView *)self roundedContainerView];
  [roundedContainerView11 addConstraint:v105];

  roundedContainerView12 = [(CKEffectPickerView *)self roundedContainerView];
  [roundedContainerView12 addConstraint:v106];

  v109 = [*(v78 + 3288) constraintWithItem:v48 attribute:10 relatedBy:0 toItem:v125 attribute:10 multiplier:1.0 constant:0.0];
  v110 = *(v78 + 3288);
  roundedContainerView13 = [(CKEffectPickerView *)self roundedContainerView];
  v112 = [v110 constraintWithItem:roundedContainerView13 attribute:5 relatedBy:0 toItem:v125 attribute:6 multiplier:1.0 constant:22.0];

  [(CKEffectPickerView *)self addConstraint:v109];
  [(CKEffectPickerView *)self addConstraint:v112];

  v113 = [*(v78 + 3288) constraintWithItem:v125 attribute:6 relatedBy:0 toItem:v124 attribute:6 multiplier:1.0 constant:0.0];
  v114 = [*(v78 + 3288) constraintWithItem:v125 attribute:10 relatedBy:0 toItem:v124 attribute:10 multiplier:1.0 constant:0.0];
  [(CKEffectPickerView *)self addConstraint:v113];
  [(CKEffectPickerView *)self addConstraint:v114];

  effectLabels4 = [(CKEffectPickerView *)self effectLabels];
  [effectLabels4 addObject:v125];

  effectDescriptiveLabels = [(CKEffectPickerView *)self effectDescriptiveLabels];
  [effectDescriptiveLabels addObject:v124];

  effectSendButtons = [(CKEffectPickerView *)self effectSendButtons];
  [effectSendButtons addObject:v58];

  effectDotButtons2 = [(CKEffectPickerView *)self effectDotButtons];
  [effectDotButtons2 addObject:v48];

  effectIdentifiers2 = [(CKEffectPickerView *)self effectIdentifiers];
  [effectIdentifiers2 addObject:identifierCopy];

  peekContainer3 = [(CKEffectPickerView *)self peekContainer];
  balloonView = [(CKEffectPickerView *)self balloonView];
  [peekContainer3 addSubview:balloonView];
}

- (void)_resizeBalloon
{
  v3 = +[CKUIBehavior sharedBehaviors];
  [(CKEffectPickerView *)self frame];
  v5 = v4;
  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 senderTranscriptInsets];
  [v3 balloonMaxWidthForTranscriptWidth:1 marginInsets:0 shouldShowPluginButtons:0 shouldShowCharacterCount:0 shouldCoverSendButton:v5 isStewieMode:{v7, v8, v9, v10}];
  v12 = v11;

  balloonView = [(CKEffectPickerView *)self balloonView];
  [balloonView prepareForDisplay];

  balloonView2 = [(CKEffectPickerView *)self balloonView];
  [balloonView2 setNeedsLayout];

  balloonView3 = [(CKEffectPickerView *)self balloonView];
  [balloonView3 setNeedsDisplay];

  balloonView4 = [(CKEffectPickerView *)self balloonView];
  [balloonView4 layoutIfNeeded];

  balloonView5 = [(CKEffectPickerView *)self balloonView];
  [balloonView5 sizeThatFits:{v12, 1.79769313e308}];
  v19 = v18;
  v21 = v20;

  balloonView6 = [(CKEffectPickerView *)self balloonView];
  [balloonView6 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v19, v21}];
}

- (void)_setBalloonText:(id)text withColor:(id)color
{
  textCopy = text;
  colorCopy = color;
  balloonView = [(CKEffectPickerView *)self balloonView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:textCopy];
    v10 = [v9 length];
    [v9 addAttribute:*MEMORY[0x1E69DB650] value:colorCopy range:{0, v10}];
    balloonView2 = [(CKEffectPickerView *)self balloonView];
    [balloonView2 setAttributedText:v9];

    [(CKEffectPickerView *)self _resizeBalloon];
  }
}

- (void)_adjustMainLabelAndTypeSegmentedControlIfNecessary
{
  [(CKEffectPickerView *)self _setNeedsSwitcherAnimationIfNecessary];
  if ([(CKEffectPickerView *)self needsSwitcherAnimation])
  {
    mainLabelBottomConstraint = [(CKEffectPickerView *)self mainLabelBottomConstraint];
    [mainLabelBottomConstraint setConstant:40.0];

    typeSegmentedControlBottomConstraint = [(CKEffectPickerView *)self typeSegmentedControlBottomConstraint];
    mainLabel = [(CKEffectPickerView *)self mainLabel];
    [mainLabel bounds];
    [typeSegmentedControlBottomConstraint setConstant:CGRectGetHeight(v10) + 40.0];

    typeSegmentedControl = [(CKEffectPickerView *)self typeSegmentedControl];
    [typeSegmentedControl setAlpha:0.0];

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LOBYTE(mainLabel) = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

    if ((mainLabel & 1) == 0)
    {
      segmentedBackdrop = [(CKEffectPickerView *)self segmentedBackdrop];
      [segmentedBackdrop setHidden:1];
    }

    [(CKEffectPickerView *)self layoutIfNeeded];
  }
}

- (void)_updateBalloonViewPositionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(CKEffectPickerView *)self isAnimating])
  {
    return;
  }

  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  typeSegmentedControl = [(CKEffectPickerView *)self typeSegmentedControl];
  selectedSegmentIndex = [typeSegmentedControl selectedSegmentIndex];

  if (selectedSegmentIndex == 1)
  {
    effectSendButtons = [(CKEffectPickerView *)self effectSendButtons];
    v12 = [effectSendButtons objectAtIndex:0];
    [v12 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    roundedContainerView = [(CKEffectPickerView *)self roundedContainerView];
    [roundedContainerView convertRect:self toView:{v14, v16, v18, v20}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
LABEL_6:

    goto LABEL_7;
  }

  v29 = v8;
  v27 = v7;
  v25 = v6;
  v23 = v5;
  if ([(CKEffectPickerView *)self selectedIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    effectSendButtons2 = [(CKEffectPickerView *)self effectSendButtons];
    roundedContainerView = [effectSendButtons2 objectAtIndex:{-[CKEffectPickerView selectedIndex](self, "selectedIndex")}];

    [roundedContainerView frame];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    roundedContainerView2 = [(CKEffectPickerView *)self roundedContainerView];
    [roundedContainerView2 convertRect:self toView:{v32, v34, v36, v38}];
    v23 = v40;
    v25 = v41;
    v27 = v42;
    v29 = v43;

    goto LABEL_6;
  }

LABEL_7:
  v69.origin.x = v5;
  v69.origin.y = v6;
  v69.size.width = v7;
  v69.size.height = v8;
  v70.origin.x = v23;
  v70.origin.y = v25;
  v70.size.width = v27;
  v70.size.height = v29;
  if (CGRectEqualToRect(v69, v70))
  {
    closeButton = [(CKEffectPickerView *)self closeButton];
    [closeButton frame];
    v23 = v45;
    v25 = v46;
    v27 = v47;
    v29 = v48;
  }

  balloonView = [(CKEffectPickerView *)self balloonView];
  [balloonView frame];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;

  [(CKEffectPickerView *)self _updateBalloonViewOrigin:v51 forButtonFrame:v53, v55, v57, v23, v25, v27, v29];
  v62 = v58;
  v63 = v59;
  v64 = v60;
  v65 = v61;
  if (animatedCopy)
  {
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __57__CKEffectPickerView__updateBalloonViewPositionAnimated___block_invoke;
    v67[3] = &unk_1E72EC7B0;
    v67[4] = self;
    *&v67[5] = v58;
    *&v67[6] = v59;
    *&v67[7] = v60;
    *&v67[8] = v61;
    [MEMORY[0x1E69DD250] animateWithDuration:v67 animations:0.3];
  }

  else
  {
    balloonView2 = [(CKEffectPickerView *)self balloonView];
    [balloonView2 setFrame:{v62, v63, v64, v65}];
  }
}

void __57__CKEffectPickerView__updateBalloonViewPositionAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) balloonView];
  [v2 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

- (CGRect)_updateBalloonViewOrigin:(CGRect)origin forButtonFrame:(CGRect)frame
{
  v4 = *MEMORY[0x1E695F050];
  v5 = *(MEMORY[0x1E695F050] + 8);
  v6 = *(MEMORY[0x1E695F050] + 16);
  v7 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)_updateMomentsBackgroundColor
{
  v77 = *MEMORY[0x1E69E9840];
  momentsCollectionView = [(CKEffectPickerView *)self momentsCollectionView];
  [momentsCollectionView frame];
  v5 = v4;

  momentsCollectionView2 = [(CKEffectPickerView *)self momentsCollectionView];
  [momentsCollectionView2 contentOffset];
  v8 = v7 / v5;

  v9 = v8;
  v10 = vcvtms_s32_f32(v9);
  v11 = vcvtps_s32_f32(v9);
  v12 = v10;
  if (v10 < 0)
  {
    effect = 0;
  }

  else
  {
    momentsCollectionView3 = [(CKEffectPickerView *)self momentsCollectionView];
    v14 = [MEMORY[0x1E696AC88] indexPathForItem:v10 inSection:0];
    v15 = [momentsCollectionView3 cellForItemAtIndexPath:v14];

    effect = [v15 effect];
  }

  v17 = v8 - v12;
  momentIdentifiers = [(CKEffectPickerView *)self momentIdentifiers];
  v19 = [momentIdentifiers count];

  if (v19 <= v11)
  {
    effect2 = 0;
  }

  else
  {
    momentsCollectionView4 = [(CKEffectPickerView *)self momentsCollectionView];
    v21 = [MEMORY[0x1E696AC88] indexPathForItem:v11 inSection:0];
    v22 = [momentsCollectionView4 cellForItemAtIndexPath:v21];

    effect2 = [v22 effect];
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v68 = effect2;
  if (v17 > 0.5)
  {
    v24 = effect2;
  }

  else
  {
    v24 = effect;
  }

  messageFilters = [v24 messageFilters];
  v26 = [messageFilters countByEnumeratingWithState:&v72 objects:v76 count:16];
  if (v26)
  {
    v27 = effect;
    v28 = *v73;
    while (2)
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v73 != v28)
        {
          objc_enumerationMutation(messageFilters);
        }

        v30 = *(*(&v72 + 1) + 8 * i);
        if ([v30 type] == 6)
        {
          balloonView = [(CKEffectPickerView *)self balloonView];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v26 = v30;
            goto LABEL_21;
          }
        }
      }

      v26 = [messageFilters countByEnumeratingWithState:&v72 objects:v76 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }

LABEL_21:
    effect = v27;
  }

  balloonView2 = [(CKEffectPickerView *)self balloonView];
  filters = [balloonView2 filters];
  if (![filters count])
  {

    v38 = v68;
    goto LABEL_26;
  }

  balloonView3 = [(CKEffectPickerView *)self balloonView];
  filters2 = [balloonView3 filters];
  v37 = [filters2 containsObject:v26];

  v38 = v68;
  if ((v37 & 1) == 0)
  {
    balloonView2 = [(CKEffectPickerView *)self balloonView];
    [balloonView2 clearFilters];
LABEL_26:
  }

  if (v26)
  {
    balloonView4 = [(CKEffectPickerView *)self balloonView];
    filters3 = [balloonView4 filters];
    v41 = [filters3 containsObject:v26];

    if ((v41 & 1) == 0)
    {
      balloonView5 = [(CKEffectPickerView *)self balloonView];
      [balloonView5 addFilter:v26];
    }
  }

  backgroundColor = [effect backgroundColor];
  backgroundColor2 = [v38 backgroundColor];
  clearColor = backgroundColor2;
  if (backgroundColor)
  {
    if (backgroundColor2)
    {
      goto LABEL_32;
    }
  }

  else
  {
    backgroundColor = [MEMORY[0x1E69DC888] clearColor];
    if (clearColor)
    {
      goto LABEL_32;
    }
  }

  clearColor = [MEMORY[0x1E69DC888] clearColor];
LABEL_32:
  v46 = [backgroundColor colorByBlendingWithColor:clearColor withFraction:v17];
  v70 = 0.0;
  v71 = 0.0;
  [v46 getHue:0 saturation:0 brightness:&v71 alpha:&v70];
  v47 = v70 > 0.5 && v71 < 0.5;
  [(CKEffectPickerView *)self setUsesDarkVibrancyForLayers:v47, v70, 0.5, v71];
  if (!UIAccessibilityIsReduceTransparencyEnabled() && !UIAccessibilityDarkerSystemColorsEnabled())
  {
    v69 = effect;
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

    if ((isEntryViewRefreshEnabled & 1) == 0)
    {
      closeButton = [(CKEffectPickerView *)self closeButton];
      layer = [closeButton layer];
      setUpVibrancyForLayer(layer, v47, ![(CKEffectPickerView *)self isInDarkMode], [(CKEffectPickerView *)self isInDarkMode]);
    }

    momentTitleLabel = [(CKEffectPickerView *)self momentTitleLabel];
    layer2 = [momentTitleLabel layer];
    setUpVibrancyForLayer(layer2, v47, ![(CKEffectPickerView *)self isInDarkMode], [(CKEffectPickerView *)self isInDarkMode]);

    pageControl = [(CKEffectPickerView *)self pageControl];
    layer3 = [pageControl layer];
    setUpVibrancyForLayer(layer3, v47, 0, [(CKEffectPickerView *)self isInDarkMode]);

    mainLabel = [(CKEffectPickerView *)self mainLabel];
    layer4 = [mainLabel layer];
    setUpVibrancyForLayer(layer4, v47, ![(CKEffectPickerView *)self isInDarkMode], [(CKEffectPickerView *)self isInDarkMode]);

    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LOBYTE(layer4) = [mEMORY[0x1E69A8070]2 isEntryViewRefreshEnabled];

    if ((layer4 & 1) == 0)
    {
      typeSegmentedControl = [(CKEffectPickerView *)self typeSegmentedControl];
      layer5 = [typeSegmentedControl layer];
      setUpVibrancyForLayer(layer5, v47, ![(CKEffectPickerView *)self isInDarkMode], [(CKEffectPickerView *)self isInDarkMode]);
    }

    pageControl2 = [(CKEffectPickerView *)self pageControl];
    if (v47)
    {
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [pageControl2 setCurrentPageIndicatorTintColor:whiteColor];
    }

    else
    {
      whiteColor = +[CKUIBehavior sharedBehaviors];
      theme = [whiteColor theme];
      fsmPickerCurrentPageIndicatorColor = [theme fsmPickerCurrentPageIndicatorColor];
      [pageControl2 setCurrentPageIndicatorTintColor:fsmPickerCurrentPageIndicatorColor];
    }

    effect = v69;
  }

  momentsCollectionView5 = [(CKEffectPickerView *)self momentsCollectionView];
  [momentsCollectionView5 setBackgroundColor:v46];

  backdrop = [(CKEffectPickerView *)self backdrop];
  [backdrop setEnabled:0];

  backdrop2 = [(CKEffectPickerView *)self backdrop];
  [backdrop2 setEnabled:1];
}

- (id)_blackTextReplica
{
  v24 = *MEMORY[0x1E69E9840];
  [(CKEffectPickerView *)self _resizeBalloon];
  balloonView = [(CKEffectPickerView *)self balloonView];
  v4 = objc_alloc(MEMORY[0x1E69DD250]);
  [balloonView frame];
  v5 = [v4 initWithFrame:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    subviews = [balloonView subviews];
    v7 = [subviews countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = *v20;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(subviews);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [subviews countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v7 = v10;

      if (!v7)
      {
        goto LABEL_12;
      }

      v11 = +[CKBalloonTextView makeTextView];
      v13 = objc_alloc(MEMORY[0x1E696AD40]);
      attributedText = [v7 attributedText];
      subviews = [v13 initWithAttributedString:attributedText];

      v15 = [subviews length];
      v16 = *MEMORY[0x1E69DB650];
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      [subviews addAttribute:v16 value:blackColor range:{0, v15}];

      [v11 setAttributedText:subviews];
      [v7 frame];
      [v11 setFrame:?];
      [v5 addSubview:v11];
    }

    else
    {
LABEL_10:
      v11 = v5;
      v5 = 0;
    }

    v12 = v5;

    v5 = v11;
  }

  else
  {
    v7 = 0;
LABEL_12:
    v12 = 0;
  }

  return v12;
}

- (BOOL)_keyboardIsOnTopOfEffectPickerWindow
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {
    activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
    window = [activeKeyboard window];
    v5 = window != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_animateIn
{
  v187 = *MEMORY[0x1E69E9840];
  balloonView = [(CKEffectPickerView *)self balloonView];
  layer = [balloonView layer];
  v169 = *(MEMORY[0x1E69792E8] + 80);
  *&v184.m31 = *(MEMORY[0x1E69792E8] + 64);
  v171 = *&v184.m31;
  *&v184.m33 = v169;
  *obja = *(MEMORY[0x1E69792E8] + 112);
  *&v184.m41 = *(MEMORY[0x1E69792E8] + 96);
  v167 = *&v184.m41;
  *&v184.m43 = *obja;
  v161 = *(MEMORY[0x1E69792E8] + 16);
  *&v184.m11 = *MEMORY[0x1E69792E8];
  v163 = *&v184.m11;
  *&v184.m13 = v161;
  v157 = *(MEMORY[0x1E69792E8] + 48);
  *&v184.m21 = *(MEMORY[0x1E69792E8] + 32);
  v159 = *&v184.m21;
  *&v184.m23 = v157;
  [layer setTransform:&v184];

  hintBlackText = [(CKEffectPickerView *)self hintBlackText];
  layer2 = [hintBlackText layer];
  *&v184.m31 = v171;
  *&v184.m33 = v169;
  *&v184.m41 = v167;
  *&v184.m43 = *obja;
  *&v184.m11 = v163;
  *&v184.m13 = v161;
  *&v184.m21 = v159;
  *&v184.m23 = v157;
  [layer2 setTransform:&v184];

  hintBlackText2 = [(CKEffectPickerView *)self hintBlackText];
  [hintBlackText2 removeFromSuperview];

  [(CKEffectPickerView *)self setHintBlackText:0];
  hintSendButton = [(CKEffectPickerView *)self hintSendButton];
  [hintSendButton removeFromSuperview];

  [(CKEffectPickerView *)self setHintSendButton:0];
  v9 = [CKTransientReplicaButtonContainer alloc];
  closeButton = [(CKEffectPickerView *)self closeButton];
  [closeButton frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  isInDarkMode = [(CKEffectPickerView *)self isInDarkMode];
  v20 = +[CKUIBehavior sharedBehaviors];
  theme = [v20 theme];
  fsmPickerCloseButtonColor = [theme fsmPickerCloseButtonColor];
  v23 = [(CKTransientReplicaButtonContainer *)v9 initWithFrame:0 hasDarkVibrancy:isInDarkMode isInDarkMode:fsmPickerCloseButtonColor color:[(CKEffectPickerView *)self controlColor] sendColor:v12, v14, v16, v18];

  peekContainer = [(CKEffectPickerView *)self peekContainer];
  [peekContainer addSubview:v23];

  closeButton2 = [(CKEffectPickerView *)self closeButton];
  [closeButton2 setHidden:1];

  cancelButtonCircle = [(CKTransientReplicaButtonContainer *)v23 cancelButtonCircle];
  layer3 = [cancelButtonCircle layer];
  [layer3 setOpacity:0.0];

  cancelButtonGlyphLayer = [(CKTransientReplicaButtonContainer *)v23 cancelButtonGlyphLayer];
  CATransform3DMakeScale(&v184, 0.0, 0.0, 1.0);
  [cancelButtonGlyphLayer setTransform:&v184];

  peekContainer2 = [(CKEffectPickerView *)self peekContainer];
  balloonView2 = [(CKEffectPickerView *)self balloonView];
  [peekContainer2 addSubview:balloonView2];

  [(CKEffectPickerView *)self _resizeBalloon];
  [(CKEffectPickerView *)self _updateBalloonViewPositionAnimated:0];
  balloonView3 = [(CKEffectPickerView *)self balloonView];
  [balloonView3 frame];
  v33 = v32;
  [balloonView3 frame];
  v35 = v34;
  layer4 = [balloonView3 layer];
  [layer4 anchorPoint];
  v38 = v33 + v35 * v37;

  [balloonView3 frame];
  v40 = v39;
  [balloonView3 frame];
  v42 = v41;
  layer5 = [balloonView3 layer];
  [layer5 anchorPoint];
  v45 = v40 + v42 * v44;

  [(CKEffectPickerView *)self balloonViewOrigin];
  [balloonView3 setOrigin:?];
  _blackTextReplica = [(CKEffectPickerView *)self _blackTextReplica];
  [(CKEffectPickerView *)self balloonViewOrigin];
  [_blackTextReplica setOrigin:?];
  peekContainer3 = [(CKEffectPickerView *)self peekContainer];
  [peekContainer3 addSubview:_blackTextReplica];

  balloonView4 = [(CKEffectPickerView *)self balloonView];
  layer6 = [balloonView4 layer];
  [layer6 setOpacity:0.0];

  roundedContainerView = [(CKEffectPickerView *)self roundedContainerView];
  layer7 = [roundedContainerView layer];
  [layer7 setOpacity:0.0];

  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  effectLabels = [(CKEffectPickerView *)self effectLabels];
  v53 = [effectLabels countByEnumeratingWithState:&v180 objects:v186 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v181;
    do
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v181 != v55)
        {
          objc_enumerationMutation(effectLabels);
        }

        layer8 = [*(*(&v180 + 1) + 8 * i) layer];
        [layer8 setOpacity:0.0];
      }

      v54 = [effectLabels countByEnumeratingWithState:&v180 objects:v186 count:16];
    }

    while (v54);
  }

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:0.325];
  [(CKEffectPickerView *)self setIsAnimating:1];
  v58 = MEMORY[0x1E6979518];
  v177[0] = MEMORY[0x1E69E9820];
  v177[1] = 3221225472;
  v177[2] = __32__CKEffectPickerView__animateIn__block_invoke;
  v177[3] = &unk_1E72EB880;
  v177[4] = self;
  v59 = v23;
  v178 = v59;
  v164 = _blackTextReplica;
  v179 = v164;
  [v58 setCompletionBlock:v177];
  v60 = objc_alloc_init(MEMORY[0x1E6979318]);
  [v60 setToValue:&unk_1F04E8AF8];
  v61 = *MEMORY[0x1E69797E8];
  [v60 setFillMode:*MEMORY[0x1E69797E8]];
  [v60 setRemovedOnCompletion:0];
  [v60 setBeginTime:CACurrentMediaTime()];
  v62 = *MEMORY[0x1E6979ED0];
  v63 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
  [v60 setTimingFunction:v63];

  backdrop = [(CKEffectPickerView *)self backdrop];
  v156 = v60;
  [backdrop addAnimation:v60 forKey:@"filters.gaussianBlur.inputRadius"];

  v65 = objc_alloc_init(MEMORY[0x1E6979318]);
  [v65 setToValue:&unk_1F04E8B08];
  [v65 setFillMode:v61];
  [v65 setRemovedOnCompletion:0];
  [v65 setBeginTime:CACurrentMediaTime()];
  v168 = v62;
  v66 = [MEMORY[0x1E69793D0] functionWithName:v62];
  [v65 setTimingFunction:v66];

  v67 = objc_alloc_init(MEMORY[0x1E6979318]);
  [v67 setFromValue:&unk_1F04E8B08];
  [v67 setToValue:&unk_1F04E8B18];
  v172 = v61;
  [v67 setFillMode:v61];
  [v67 setRemovedOnCompletion:0];
  [v67 setBeginTime:CACurrentMediaTime()];
  v68 = *MEMORY[0x1E6979EB0];
  v69 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB0]];
  [v67 setTimingFunction:v69];

  v70 = v67;
  v71 = v70;
  if ([(CKEffectPickerView *)self isInDarkMode])
  {
    v71 = objc_alloc_init(MEMORY[0x1E6979318]);

    [v71 setFromValue:&unk_1F04E8B28];
    [v71 setToValue:&unk_1F04E8B18];
    [v71 setFillMode:v172];
    [v71 setRemovedOnCompletion:0];
    [v71 setBeginTime:CACurrentMediaTime()];
    v72 = [MEMORY[0x1E69793D0] functionWithName:v68];
    [v71 setTimingFunction:v72];
  }

  v162 = v70;
  blueContrastLayer = [(CKEffectPickerView *)self blueContrastLayer];
  [blueContrastLayer addAnimation:v65 forKey:@"opacity"];

  sendButtonCircle = [(CKTransientReplicaButtonContainer *)v59 sendButtonCircle];
  v155 = v71;
  [sendButtonCircle addAnimation:v71 forKey:@"opacity"];

  cancelButtonCircle2 = [(CKTransientReplicaButtonContainer *)v59 cancelButtonCircle];
  [cancelButtonCircle2 addAnimation:v65 forKey:@"opacity"];

  if (UIAccessibilityIsReduceTransparencyEnabled() || UIAccessibilityDarkerSystemColorsEnabled())
  {
    accessibilityBackdropView = [(CKEffectPickerView *)self accessibilityBackdropView];
    [accessibilityBackdropView addAnimation:v65 forKey:@"opacity"];
  }

  v77 = objc_alloc_init(MEMORY[0x1E6979390]);
  [v77 setValues:&unk_1F04E6E70];
  [v77 setKeyTimes:&unk_1F04E6E88];
  v78 = [MEMORY[0x1E69793D0] functionWithName:v68];
  [v77 setTimingFunction:v78];

  [v77 setFillMode:v172];
  [v77 setRemovedOnCompletion:0];
  [v77 setBeginTime:CACurrentMediaTime()];
  v79 = objc_alloc_init(MEMORY[0x1E6979390]);
  [v79 setValues:&unk_1F04E6EA0];
  [v79 setKeyTimes:&unk_1F04E6EB8];
  v80 = [MEMORY[0x1E69793D0] functionWithName:v168];
  [v79 setTimingFunction:v80];

  [v79 setFillMode:v172];
  [v79 setRemovedOnCompletion:0];
  [v79 setBeginTime:CACurrentMediaTime()];
  sendButtonGlyphLayer = [(CKTransientReplicaButtonContainer *)v59 sendButtonGlyphLayer];
  v153 = v79;
  [sendButtonGlyphLayer addAnimation:v79 forKey:@"transform.scale"];

  cancelButtonGlyphLayer2 = [(CKTransientReplicaButtonContainer *)v59 cancelButtonGlyphLayer];
  v154 = v77;
  [cancelButtonGlyphLayer2 addAnimation:v77 forKey:@"transform.scale"];

  v83 = objc_alloc_init(MEMORY[0x1E6979318]);
  v84 = [MEMORY[0x1E696AD98] numberWithInteger:v38];
  [v83 setToValue:v84];

  [v83 setFillMode:v172];
  [v83 setRemovedOnCompletion:0];
  [v83 setBeginTime:CACurrentMediaTime()];
  v85 = [MEMORY[0x1E69793D0] functionWithName:v168];
  [v83 setTimingFunction:v85];

  v86 = objc_alloc_init(MEMORY[0x1E6979318]);
  v87 = [MEMORY[0x1E696AD98] numberWithInteger:v45];
  [v86 setToValue:v87];

  [v86 setFillMode:v172];
  [v86 setRemovedOnCompletion:0];
  [v86 setBeginTime:CACurrentMediaTime()];
  v88 = [MEMORY[0x1E69793D0] functionWithName:v168];
  [v86 setTimingFunction:v88];

  [balloonView3 addAnimation:v83 forKey:@"position.x"];
  [balloonView3 addAnimation:v86 forKey:@"position.y"];
  v158 = balloonView3;
  v170 = v65;
  [balloonView3 addAnimation:v65 forKey:@"opacity"];
  v89 = v70;
  if (v164)
  {
    [v164 addAnimation:v70 forKey:@"opacity"];
    [v164 addAnimation:v83 forKey:@"position.x"];
    [v164 addAnimation:v86 forKey:@"position.y"];
  }

  v151 = v86;
  v152 = v83;
  closeButton3 = [(CKEffectPickerView *)self closeButton];
  [closeButton3 frame];
  x = v188.origin.x;
  y = v188.origin.y;
  width = v188.size.width;
  height = v188.size.height;
  CGRectGetMidX(v188);
  v189.origin.x = x;
  v189.origin.y = y;
  v189.size.width = width;
  v189.size.height = height;
  MidY = CGRectGetMidY(v189);
  effectLabels2 = [(CKEffectPickerView *)self effectLabels];
  lastObject = [effectLabels2 lastObject];
  [lastObject frame];
  v98 = v190.origin.x;
  v99 = v190.origin.y;
  v100 = v190.size.width;
  v101 = v190.size.height;
  CGRectGetMidX(v190);
  v191.origin.x = v98;
  v191.origin.y = v99;
  v191.size.width = v100;
  v191.size.height = v101;
  v102 = CGRectGetMidY(v191);

  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  selfCopy = self;
  obj = [(CKEffectPickerView *)self effectLabels];
  v103 = [obj countByEnumeratingWithState:&v173 objects:v185 count:16];
  if (v103)
  {
    v104 = v103;
    v105 = MidY - v102;
    v106 = *v174;
    do
    {
      for (j = 0; j != v104; ++j)
      {
        if (*v174 != v106)
        {
          objc_enumerationMutation(obj);
        }

        v108 = *(*(&v173 + 1) + 8 * j);
        [v108 frame];
        v110 = v109;
        v112 = v111;
        v113 = objc_alloc_init(MEMORY[0x1E6979318]);
        v114 = MEMORY[0x1E696AD98];
        layer9 = [v108 layer];
        [layer9 anchorPoint];
        v116 = [v114 numberWithDouble:v105 + v110 + v112 * v116];
        [v113 setFromValue:v116];

        v118 = MEMORY[0x1E696AD98];
        layer10 = [v108 layer];
        [layer10 anchorPoint];
        v120 = [v118 numberWithDouble:v110 + v112 * v120];
        [v113 setToValue:v120];

        [v113 setRemovedOnCompletion:0];
        [v113 setFillMode:v172];
        v122 = [MEMORY[0x1E69793D0] functionWithName:v168];
        [v113 setTimingFunction:v122];

        [v113 setBeginTime:CACurrentMediaTime()];
        [v108 addAnimation:v113 forKey:@"position.y"];
        v123 = [v170 copy];
        v124 = CACurrentMediaTime();
        [MEMORY[0x1E6979518] animationDuration];
        [v123 setBeginTime:v124 + v125 * 0.6];
        [v108 addAnimation:v123 forKey:@"opacity"];
      }

      v104 = [obj countByEnumeratingWithState:&v173 objects:v185 count:16];
    }

    while (v104);
  }

  roundedContainerView2 = [(CKEffectPickerView *)selfCopy roundedContainerView];
  [roundedContainerView2 frame];
  v128 = v127;
  v130 = v129;

  v131 = objc_alloc_init(MEMORY[0x1E6979318]);
  v132 = MEMORY[0x1E696AD98];
  roundedContainerView3 = [(CKEffectPickerView *)selfCopy roundedContainerView];
  layer11 = [roundedContainerView3 layer];
  [layer11 anchorPoint];
  v136 = [v132 numberWithDouble:v128 + v130 * v135 + 150.0];
  [v131 setFromValue:v136];

  v137 = MEMORY[0x1E696AD98];
  roundedContainerView4 = [(CKEffectPickerView *)selfCopy roundedContainerView];
  layer12 = [roundedContainerView4 layer];
  [layer12 anchorPoint];
  v140 = [v137 numberWithDouble:v128 + v130 * v140];
  [v131 setToValue:v140];

  [v131 setRemovedOnCompletion:0];
  [v131 setFillMode:v172];
  v142 = *MEMORY[0x1E6979EB8];
  v143 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v131 setTimingFunction:v143];

  [v131 setBeginTime:CACurrentMediaTime()];
  roundedContainerView5 = [(CKEffectPickerView *)selfCopy roundedContainerView];
  [roundedContainerView5 addAnimation:v131 forKey:@"position.y"];

  roundedContainerView6 = [(CKEffectPickerView *)selfCopy roundedContainerView];
  [roundedContainerView6 addAnimation:v170 forKey:@"opacity"];

  v146 = objc_alloc_init(MEMORY[0x1E6979318]);
  [v146 setFromValue:&unk_1F04E8B58];
  v147 = [MEMORY[0x1E696AD98] numberWithDouble:v130];
  [v146 setToValue:v147];

  [v146 setFillMode:v172];
  [v146 setRemovedOnCompletion:0];
  [v146 setFillMode:v172];
  v148 = [MEMORY[0x1E69793D0] functionWithName:v142];
  [v146 setTimingFunction:v148];

  [v146 setBeginTime:CACurrentMediaTime()];
  roundedContainerView7 = [(CKEffectPickerView *)selfCopy roundedContainerView];
  [roundedContainerView7 addAnimation:v146 forKey:@"bounds.size.height"];

  [MEMORY[0x1E6979518] commit];
  peekContainer4 = [(CKEffectPickerView *)selfCopy peekContainer];
  [peekContainer4 setHidden:0];
}

void __32__CKEffectPickerView__animateIn__block_invoke(id *a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] backdrop];
  [v2 setValue:&unk_1F04E8AF8 forKeyPath:@"filters.gaussianBlur.inputRadius"];

  v3 = [a1[4] roundedContainerView];
  v4 = [v3 layer];
  LODWORD(v5) = 1.0;
  [v4 setOpacity:v5];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = [a1[4] effectLabels];
  v7 = [v6 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v49;
    do
    {
      v10 = 0;
      do
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v48 + 1) + 8 * v10) layer];
        LODWORD(v12) = 1.0;
        [v11 setOpacity:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v8);
  }

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [a1[5] removeFromSuperview];
  v13 = [a1[4] closeButton];
  [v13 setHidden:0];

  [a1[6] removeFromSuperview];
  [a1[4] setIsAnimating:0];
  [a1[4] _updateBalloonViewPositionAnimated:0];
  v14 = [a1[4] balloonView];
  v15 = [v14 layer];
  LODWORD(v16) = 1.0;
  [v15 setOpacity:v16];

  v17 = [a1[4] blueContrastLayer];
  LODWORD(v18) = 1.0;
  [v17 setOpacity:v18];

  v19 = [a1[4] balloonView];
  [v19 _removeAllAnimations:1];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v20 = [a1[4] effectLabels];
  v21 = [v20 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v45;
    do
    {
      v24 = 0;
      do
      {
        if (*v45 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v44 + 1) + 8 * v24++) _removeAllAnimations:1];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v22);
  }

  v25 = [a1[4] roundedContainerView];
  [v25 _removeAllAnimations:1];

  v26 = [a1[4] hintContainer];
  [v26 setHidden:1];

  v27 = [a1[4] backdrop];
  v28 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v28 scale];
  [v27 setRasterizationScale:?];

  v29 = [a1[4] backdrop];
  [v29 setShouldRasterize:1];

  [MEMORY[0x1E6979518] commit];
  v30 = [a1[4] delegate];
  [v30 effectPickerViewDidFinishAnimatingIn:a1[4]];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v31 = [a1[4] fsem];
  v32 = [v31 effectIdentifiers];

  v33 = [v32 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v41;
    do
    {
      v36 = 0;
      do
      {
        if (*v41 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v40 + 1) + 8 * v36);
        v38 = [a1[4] fsem];
        v39 = [v38 effectForIdentifier:v37];

        ++v36;
      }

      while (v34 != v36);
      v34 = [v32 countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v34);
  }
}

- (void)_stopBalloonAnimation
{
  v21 = *MEMORY[0x1E69E9840];
  balloonView = [(CKEffectPickerView *)self balloonView];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  subviews = [balloonView subviews];
  v5 = [subviews countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v5)
  {
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [subviews countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (balloonView)
  {
    [balloonView setInvisibleInkEffectEnabled:0];
    [balloonView prepareForDisplayIfNeeded];
    v9 = objc_alloc_init(CKSendAnimationContext);
    v19 = balloonView;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    [(CKSendAnimationContext *)v9 setThrowBalloonViews:v10];

    null = v5;
    if (!v5)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v18 = null;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    [(CKSendAnimationContext *)v9 setAnimatableTextViews:v12];

    if (!v5)
    {
    }

    [(CKSendAnimationContext *)v9 setIsSender:1];
    [(CKSendAnimationContext *)v9 setImpactIdentifier:@"nil"];
    dummyAnimator = [(CKEffectPickerView *)self dummyAnimator];
    [dummyAnimator stopAnimationWithSendAnimationContext:v9];
  }
}

- (void)_animateOut
{
  v167 = *MEMORY[0x1E69E9840];
  [(CKEffectPickerView *)self cancelImpactSelection];
  v165[0] = MEMORY[0x1E69E9820];
  v165[1] = 3221225472;
  v165[2] = __33__CKEffectPickerView__animateOut__block_invoke;
  v165[3] = &unk_1E72EBA18;
  v165[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v165 animations:0.325];
  v3 = [CKTransientReplicaButtonContainer alloc];
  closeButton = [(CKEffectPickerView *)self closeButton];
  [closeButton frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  usesDarkVibrancyForLayers = [(CKEffectPickerView *)self usesDarkVibrancyForLayers];
  isInDarkMode = [(CKEffectPickerView *)self isInDarkMode];
  v15 = +[CKUIBehavior sharedBehaviors];
  theme = [v15 theme];
  fsmPickerCloseButtonColor = [theme fsmPickerCloseButtonColor];
  v18 = [(CKTransientReplicaButtonContainer *)v3 initWithFrame:usesDarkVibrancyForLayers hasDarkVibrancy:isInDarkMode isInDarkMode:fsmPickerCloseButtonColor color:[(CKEffectPickerView *)self controlColor] sendColor:v6, v8, v10, v12];

  peekContainer = [(CKEffectPickerView *)self peekContainer];
  [peekContainer addSubview:v18];

  closeButton2 = [(CKEffectPickerView *)self closeButton];
  [closeButton2 setHidden:1];

  sendButtonCircle = [(CKTransientReplicaButtonContainer *)v18 sendButtonCircle];
  layer = [sendButtonCircle layer];
  [layer setOpacity:0.0];

  v155 = v18;
  sendButtonGlyphLayer = [(CKTransientReplicaButtonContainer *)v18 sendButtonGlyphLayer];
  [sendButtonGlyphLayer setOpacity:0.0];

  [(CKEffectPickerView *)self _resizeBalloon];
  [(CKEffectPickerView *)self _updateBalloonViewPositionAnimated:0];
  balloonView = [(CKEffectPickerView *)self balloonView];
  [(CKEffectPickerView *)self balloonViewOrigin];
  v26 = v25;
  [balloonView frame];
  v28 = v27;
  layer2 = [balloonView layer];
  [layer2 anchorPoint];
  v31 = v30;

  [(CKEffectPickerView *)self balloonViewOrigin];
  v33 = v32;
  [balloonView frame];
  v35 = v34;
  v154 = balloonView;
  layer3 = [balloonView layer];
  [layer3 anchorPoint];
  v38 = v37;

  _blackTextReplica = [(CKEffectPickerView *)self _blackTextReplica];
  if (_blackTextReplica)
  {
    peekContainer2 = [(CKEffectPickerView *)self peekContainer];
    [peekContainer2 addSubview:_blackTextReplica];

    layer4 = [_blackTextReplica layer];
    [layer4 setOpacity:0.0];
  }

  v153 = _blackTextReplica;
  backdrop = [(CKEffectPickerView *)self backdrop];
  [backdrop setShouldRasterize:0];

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:0.325];
  [(CKEffectPickerView *)self setIsAnimating:1];
  v164[0] = MEMORY[0x1E69E9820];
  v164[1] = 3221225472;
  v164[2] = __33__CKEffectPickerView__animateOut__block_invoke_2;
  v164[3] = &unk_1E72EBA18;
  v164[4] = self;
  [MEMORY[0x1E6979518] setCompletionBlock:v164];
  v43 = objc_alloc_init(MEMORY[0x1E6979318]);
  [v43 setFromValue:&unk_1F04E8AF8];
  [v43 setToValue:&unk_1F04E8B18];
  v44 = *MEMORY[0x1E69797E8];
  [v43 setFillMode:*MEMORY[0x1E69797E8]];
  [v43 setRemovedOnCompletion:0];
  [v43 setBeginTime:CACurrentMediaTime()];
  v45 = *MEMORY[0x1E6979ED0];
  v46 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
  [v43 setTimingFunction:v46];

  backdrop2 = [(CKEffectPickerView *)self backdrop];
  v151 = v43;
  [backdrop2 addAnimation:v43 forKey:@"filters.gaussianBlur.inputRadius"];

  v48 = objc_alloc_init(MEMORY[0x1E6979318]);
  [v48 setFromValue:&unk_1F04E8B18];
  [v48 setToValue:&unk_1F04E8B08];
  [v48 setFillMode:v44];
  [v48 setRemovedOnCompletion:0];
  [v48 setBeginTime:CACurrentMediaTime()];
  v49 = [MEMORY[0x1E69793D0] functionWithName:v45];
  [v48 setTimingFunction:v49];

  v50 = objc_alloc_init(MEMORY[0x1E6979318]);
  [v50 setFromValue:&unk_1F04E8B08];
  [v50 setToValue:&unk_1F04E8B18];
  [v50 setFillMode:*MEMORY[0x1E69797E0]];
  [v50 setRemovedOnCompletion:0];
  [v50 setBeginTime:CACurrentMediaTime()];
  v51 = *MEMORY[0x1E6979EB0];
  v52 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB0]];
  v159 = v50;
  [v50 setTimingFunction:v52];

  v53 = objc_alloc_init(MEMORY[0x1E6979318]);
  [v53 setFromValue:&unk_1F04E8B08];
  [v53 setToValue:&unk_1F04E8B18];
  v158 = v44;
  [v53 setFillMode:v44];
  [v53 setRemovedOnCompletion:0];
  [v53 setBeginTime:CACurrentMediaTime()];
  v157 = v45;
  v54 = [MEMORY[0x1E69793D0] functionWithName:v45];
  [v53 setTimingFunction:v54];

  v55 = v48;
  v56 = v55;
  if ([(CKEffectPickerView *)self isInDarkMode])
  {
    v56 = objc_alloc_init(MEMORY[0x1E6979318]);

    [v56 setFromValue:&unk_1F04E8B18];
    [v56 setToValue:&unk_1F04E8B68];
    [v56 setFillMode:v44];
    [v56 setRemovedOnCompletion:0];
    [v56 setBeginTime:CACurrentMediaTime()];
    v57 = [MEMORY[0x1E69793D0] functionWithName:v51];
    [v56 setTimingFunction:v57];
  }

  sendButtonCircle2 = [(CKTransientReplicaButtonContainer *)v155 sendButtonCircle];
  [sendButtonCircle2 addAnimation:v56 forKey:@"opacity"];

  sendButtonGlyphLayer2 = [(CKTransientReplicaButtonContainer *)v155 sendButtonGlyphLayer];
  [sendButtonGlyphLayer2 addAnimation:v56 forKey:@"opacity"];

  cancelButtonCircle = [(CKTransientReplicaButtonContainer *)v155 cancelButtonCircle];
  [cancelButtonCircle addAnimation:v159 forKey:@"opacity"];

  momentTitleLabel = [(CKEffectPickerView *)self momentTitleLabel];
  [momentTitleLabel addAnimation:v53 forKey:@"opacity"];

  sendMomentButton = [(CKEffectPickerView *)self sendMomentButton];
  [sendMomentButton addAnimation:v53 forKey:@"opacity"];

  pageControl = [(CKEffectPickerView *)self pageControl];
  [pageControl addAnimation:v53 forKey:@"opacity"];

  backgroundView = [(CKEffectPickerView *)self backgroundView];
  [backgroundView addAnimation:v53 forKey:@"opacity"];

  momentsCollectionView = [(CKEffectPickerView *)self momentsCollectionView];
  [momentsCollectionView addAnimation:v53 forKey:@"opacity"];

  mainLabel = [(CKEffectPickerView *)self mainLabel];
  [mainLabel addAnimation:v53 forKey:@"opacity"];

  typeSegmentedControl = [(CKEffectPickerView *)self typeSegmentedControl];
  [typeSegmentedControl addAnimation:v53 forKey:@"opacity"];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LOBYTE(typeSegmentedControl) = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if ((typeSegmentedControl & 1) == 0)
  {
    segmentedBackdrop = [(CKEffectPickerView *)self segmentedBackdrop];
    [segmentedBackdrop addAnimation:v53 forKey:@"opacity"];
  }

  v148 = v56;
  v70 = v26 + v28 * v31;
  blueContrastLayer = [(CKEffectPickerView *)self blueContrastLayer];
  [blueContrastLayer addAnimation:v53 forKey:@"opacity"];

  if (UIAccessibilityIsReduceTransparencyEnabled() || UIAccessibilityDarkerSystemColorsEnabled())
  {
    accessibilityBackdropView = [(CKEffectPickerView *)self accessibilityBackdropView];
    [accessibilityBackdropView addAnimation:v53 forKey:@"opacity"];
  }

  v150 = v53;
  v73 = objc_alloc_init(MEMORY[0x1E6979390]);
  [v73 setValues:&unk_1F04E6ED0];
  [v73 setKeyTimes:&unk_1F04E6EE8];
  v74 = [MEMORY[0x1E69793D0] functionWithName:v51];
  [v73 setTimingFunction:v74];

  [v73 setFillMode:v158];
  [v73 setRemovedOnCompletion:0];
  [v73 setBeginTime:CACurrentMediaTime()];
  v75 = objc_alloc_init(MEMORY[0x1E6979390]);
  [v75 setValues:&unk_1F04E6F00];
  [v75 setKeyTimes:&unk_1F04E6F18];
  v76 = [MEMORY[0x1E69793D0] functionWithName:v45];
  [v75 setTimingFunction:v76];

  [v75 setFillMode:v158];
  [v75 setRemovedOnCompletion:0];
  [v75 setBeginTime:CACurrentMediaTime()];
  sendButtonGlyphLayer3 = [(CKTransientReplicaButtonContainer *)v155 sendButtonGlyphLayer];
  v147 = v73;
  [sendButtonGlyphLayer3 addAnimation:v73 forKey:@"transform.scale"];

  cancelButtonGlyphLayer = [(CKTransientReplicaButtonContainer *)v155 cancelButtonGlyphLayer];
  v146 = v75;
  [cancelButtonGlyphLayer addAnimation:v75 forKey:@"transform.scale"];

  v79 = objc_alloc_init(MEMORY[0x1E6979318]);
  v80 = [MEMORY[0x1E696AD98] numberWithDouble:v70];
  [v79 setToValue:v80];

  [v79 setFillMode:v158];
  [v79 setRemovedOnCompletion:0];
  [v79 setBeginTime:CACurrentMediaTime()];
  v81 = [MEMORY[0x1E69793D0] functionWithName:v157];
  [v79 setTimingFunction:v81];

  v82 = objc_alloc_init(MEMORY[0x1E6979318]);
  v83 = [MEMORY[0x1E696AD98] numberWithDouble:v33 + v35 * v38];
  [v82 setToValue:v83];

  [v82 setFillMode:v158];
  [v82 setRemovedOnCompletion:0];
  [v82 setBeginTime:CACurrentMediaTime()];
  v84 = [MEMORY[0x1E69793D0] functionWithName:v157];
  [v82 setTimingFunction:v84];

  [v154 addAnimation:v79 forKey:@"position.x"];
  [v154 addAnimation:v82 forKey:@"position.y"];
  if (v153)
  {
    [v154 addAnimation:v159 forKey:@"opacity"];
    [v153 addAnimation:v55 forKey:@"opacity"];
    [v153 addAnimation:v79 forKey:@"position.x"];
    [v153 addAnimation:v82 forKey:@"position.y"];
  }

  v145 = v79;
  v149 = v55;
  closeButton3 = [(CKEffectPickerView *)self closeButton];
  [closeButton3 frame];
  x = v168.origin.x;
  y = v168.origin.y;
  width = v168.size.width;
  height = v168.size.height;
  CGRectGetMidX(v168);
  v169.origin.x = x;
  v169.origin.y = y;
  v169.size.width = width;
  v169.size.height = height;
  MidY = CGRectGetMidY(v169);
  effectLabels = [(CKEffectPickerView *)self effectLabels];
  lastObject = [effectLabels lastObject];
  [lastObject frame];
  v93 = v170.origin.x;
  v94 = v170.origin.y;
  v95 = v170.size.width;
  v96 = v170.size.height;
  CGRectGetMidX(v170);
  v171.origin.x = v93;
  v171.origin.y = v94;
  v171.size.width = v95;
  v171.size.height = v96;
  v97 = CGRectGetMidY(v171);

  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  selfCopy = self;
  obj = [(CKEffectPickerView *)self effectLabels];
  v98 = [obj countByEnumeratingWithState:&v160 objects:v166 count:16];
  if (v98)
  {
    v99 = v98;
    v100 = MidY - v97;
    v101 = *v161;
    do
    {
      for (i = 0; i != v99; ++i)
      {
        if (*v161 != v101)
        {
          objc_enumerationMutation(obj);
        }

        v103 = *(*(&v160 + 1) + 8 * i);
        [v103 frame];
        v105 = v104;
        v107 = v106;
        v108 = objc_alloc_init(MEMORY[0x1E6979318]);
        v109 = MEMORY[0x1E696AD98];
        layer5 = [v103 layer];
        [layer5 anchorPoint];
        v111 = [v109 numberWithDouble:v105 + v107 * v111];
        [v108 setFromValue:v111];

        v113 = MEMORY[0x1E696AD98];
        layer6 = [v103 layer];
        [layer6 anchorPoint];
        v115 = [v113 numberWithDouble:v100 + v105 + v107 * v115];
        [v108 setToValue:v115];

        [v108 setRemovedOnCompletion:0];
        [v108 setFillMode:v158];
        v117 = [MEMORY[0x1E69793D0] functionWithName:v157];
        [v108 setTimingFunction:v117];

        [v108 setBeginTime:CACurrentMediaTime()];
        [v103 addAnimation:v108 forKey:@"position.y"];
        v118 = [v159 copy];
        v119 = CACurrentMediaTime();
        [MEMORY[0x1E6979518] animationDuration];
        [v118 setBeginTime:v119 + v120 * -0.8];
        [v103 addAnimation:v118 forKey:@"opacity"];
      }

      v99 = [obj countByEnumeratingWithState:&v160 objects:v166 count:16];
    }

    while (v99);
  }

  roundedContainerView = [(CKEffectPickerView *)self roundedContainerView];
  [roundedContainerView frame];
  v123 = v122;
  v125 = v124;

  v126 = objc_alloc_init(MEMORY[0x1E6979318]);
  v127 = MEMORY[0x1E696AD98];
  roundedContainerView2 = [(CKEffectPickerView *)selfCopy roundedContainerView];
  layer7 = [roundedContainerView2 layer];
  [layer7 anchorPoint];
  v130 = [v127 numberWithDouble:v123 + v125 * v130];
  [v126 setFromValue:v130];

  v132 = MEMORY[0x1E696AD98];
  roundedContainerView3 = [(CKEffectPickerView *)selfCopy roundedContainerView];
  layer8 = [roundedContainerView3 layer];
  [layer8 anchorPoint];
  v136 = [v132 numberWithDouble:v123 + v125 * v135 + 150.0];
  [v126 setToValue:v136];

  [v126 setRemovedOnCompletion:0];
  [v126 setFillMode:v158];
  v137 = [MEMORY[0x1E69793D0] functionWithName:v157];
  [v126 setTimingFunction:v137];

  [v126 setBeginTime:CACurrentMediaTime()];
  roundedContainerView4 = [(CKEffectPickerView *)selfCopy roundedContainerView];
  [roundedContainerView4 addAnimation:v126 forKey:@"position.y"];

  roundedContainerView5 = [(CKEffectPickerView *)selfCopy roundedContainerView];
  [roundedContainerView5 addAnimation:v159 forKey:@"opacity"];

  v140 = objc_alloc_init(MEMORY[0x1E6979318]);
  v141 = [MEMORY[0x1E696AD98] numberWithDouble:v125];
  [v140 setFromValue:v141];

  [v140 setToValue:&unk_1F04E8B58];
  [v140 setFillMode:v158];
  [v140 setRemovedOnCompletion:0];
  [v140 setFillMode:v158];
  v142 = [MEMORY[0x1E69793D0] functionWithName:v157];
  [v140 setTimingFunction:v142];

  [v140 setBeginTime:CACurrentMediaTime()];
  roundedContainerView6 = [(CKEffectPickerView *)selfCopy roundedContainerView];
  [roundedContainerView6 addAnimation:v140 forKey:@"bounds.size.height"];

  [MEMORY[0x1E6979518] commit];
}

void __33__CKEffectPickerView__animateOut__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundView];
  [v2 setBackgroundColor:0];

  v3 = [*(a1 + 32) accessibilitySendBackgroundView];
  [v3 setBackgroundColor:0];

  v4 = [*(a1 + 32) accessibilityCloseBackgroundView];
  [v4 setBackgroundColor:0];
}

void __33__CKEffectPickerView__animateOut__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 touchUpInsideCloseButton];
}

- (id)_glyphLayerForButtonAnimationWithGlyphName:(id)name
{
  v3 = [MEMORY[0x1E69DCAB8] ckImageNamed:name];
  [v3 size];
  v5 = v4;
  v7 = v6;
  layer = [MEMORY[0x1E6979398] layer];
  [layer setContents:{objc_msgSend(v3, "CGImage")}];
  [layer setBounds:{0.0, 0.0, v5, v7}];
  v9 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
  [layer setCompositingFilter:v9];

  return layer;
}

- (void)_animateSelectedEffectLabelAtIndex:(unint64_t)index fromPreviousIndex:(unint64_t)previousIndex
{
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__54;
  v49 = __Block_byref_object_dispose__54;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__54;
  v43 = __Block_byref_object_dispose__54;
  v44 = 0;
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    effectLabels = [(CKEffectPickerView *)self effectLabels];
    v8 = [effectLabels objectAtIndex:index];
    v9 = v46[5];
    v46[5] = v8;

    effectDescriptiveLabels = [(CKEffectPickerView *)self effectDescriptiveLabels];
    v11 = [effectDescriptiveLabels objectAtIndex:index];
    v12 = v40[5];
    v40[5] = v11;
  }

  v13 = 0;
  v14 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__54;
  v37 = __Block_byref_object_dispose__54;
  v38 = 0;
  if (previousIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    effectLabels2 = [(CKEffectPickerView *)self effectLabels];
    v16 = [effectLabels2 objectAtIndex:previousIndex];
    v17 = v34[5];
    v34[5] = v16;

    effectDescriptiveLabels2 = [(CKEffectPickerView *)self effectDescriptiveLabels];
    v14 = [effectDescriptiveLabels2 objectAtIndex:previousIndex];

    v13 = v34[5];
  }

  [v13 setHidden:0];
  [v14 setHidden:1];
  [v46[5] setHidden:1];
  [v40[5] setHidden:0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__CKEffectPickerView__animateSelectedEffectLabelAtIndex_fromPreviousIndex___block_invoke;
  aBlock[3] = &unk_1E72F24F0;
  aBlock[4] = self;
  aBlock[5] = &v33;
  v32 = xmmword_190DD1860;
  v19 = _Block_copy(aBlock);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __75__CKEffectPickerView__animateSelectedEffectLabelAtIndex_fromPreviousIndex___block_invoke_2;
  v29[3] = &unk_1E72F24F0;
  v29[4] = self;
  v29[5] = &v45;
  v30 = xmmword_190DD1870;
  v20 = _Block_copy(v29);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __75__CKEffectPickerView__animateSelectedEffectLabelAtIndex_fromPreviousIndex___block_invoke_3;
  v27[3] = &unk_1E72F5C70;
  v27[4] = self;
  v27[5] = &v45;
  v27[6] = &v39;
  v27[7] = index;
  v28 = xmmword_190DD1870;
  v21 = _Block_copy(v27);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __75__CKEffectPickerView__animateSelectedEffectLabelAtIndex_fromPreviousIndex___block_invoke_4;
  v25[3] = &unk_1E72F5C98;
  v25[4] = self;
  v25[5] = &v33;
  v25[6] = previousIndex;
  v26 = xmmword_190DD1860;
  v22 = _Block_copy(v25);
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:0.25];
  if (previousIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19[2](v19);
    v23 = 0;
    v24 = v21;
  }

  else if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20[2](v20);
    if (![(CKEffectPickerView *)self shouldAnimatePreviousLabelForCancel:v34[5]])
    {
      [v34[5] _removeAllAnimations:1];
      goto LABEL_12;
    }

    v23 = 0;
    v24 = v22;
  }

  else
  {
    v23 = 1;
    v21[2](v21, 1);
    v24 = v22;
  }

  v24[2](v24, v23);
LABEL_12:
  [MEMORY[0x1E6979518] commit];

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);
}

void __75__CKEffectPickerView__animateSelectedEffectLabelAtIndex_fromPreviousIndex___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [*(a1 + 32) effectLabels];
  v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    v5 = *MEMORY[0x1E6979ED0];
    v6 = *MEMORY[0x1E69797E8];
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        if (v8 != *(*(*(a1 + 40) + 8) + 40))
        {
          v9 = objc_alloc_init(MEMORY[0x1E6979318]);
          [v9 setBeginTime:CACurrentMediaTime()];
          v10 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
          [v9 setFromValue:v10];

          v11 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 56)];
          [v9 setToValue:v11];

          v12 = [MEMORY[0x1E69793D0] functionWithName:v5];
          [v9 setTimingFunction:v12];

          [v9 setRemovedOnCompletion:0];
          [v9 setFillMode:v6];
          [v8 addAnimation:v9 forKey:@"opacity"];
        }

        ++v7;
      }

      while (v3 != v7);
      v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }
}

void __75__CKEffectPickerView__animateSelectedEffectLabelAtIndex_fromPreviousIndex___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [*(a1 + 32) effectLabels];
  v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    v5 = *MEMORY[0x1E6979ED0];
    v6 = *MEMORY[0x1E69797E8];
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        if (v8 != *(*(*(a1 + 40) + 8) + 40))
        {
          v9 = objc_alloc_init(MEMORY[0x1E6979318]);
          [v9 setBeginTime:CACurrentMediaTime()];
          v10 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
          [v9 setFromValue:v10];

          v11 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 56)];
          [v9 setToValue:v11];

          v12 = [MEMORY[0x1E69793D0] functionWithName:v5];
          [v9 setTimingFunction:v12];

          [v9 setRemovedOnCompletion:0];
          [v9 setFillMode:v6];
          [v8 addAnimation:v9 forKey:@"opacity"];
        }

        ++v7;
      }

      while (v3 != v7);
      v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }
}

void __75__CKEffectPickerView__animateSelectedEffectLabelAtIndex_fromPreviousIndex___block_invoke_3(uint64_t a1, int a2)
{
  v22 = objc_alloc_init(MEMORY[0x1E6979318]);
  [v22 setBeginTime:CACurrentMediaTime()];
  [*(*(*(a1 + 40) + 8) + 40) frame];
  v5 = v4;
  v6 = [*(*(*(a1 + 40) + 8) + 40) layer];
  [v6 anchorPoint];
  v8 = v7;
  [*(*(*(a1 + 40) + 8) + 40) frame];
  v10 = v5 + v8 * v9;

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
  [v22 setFromValue:v11];

  v12 = MEMORY[0x1E696AD98];
  [*(a1 + 32) offsetYForLabelAtIndex:*(a1 + 56) withInitialY:v10];
  v13 = [v12 numberWithDouble:?];
  [v22 setToValue:v13];

  v14 = *MEMORY[0x1E6979ED0];
  v15 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
  [v22 setTimingFunction:v15];

  [v22 setRemovedOnCompletion:0];
  v16 = *MEMORY[0x1E69797E8];
  [v22 setFillMode:*MEMORY[0x1E69797E8]];
  v17 = [*(*(*(a1 + 48) + 8) + 40) layer];
  [v17 addAnimation:v22 forKey:@"position.y"];

  if (a2)
  {
    v18 = objc_alloc_init(MEMORY[0x1E6979318]);
    [v18 setBeginTime:CACurrentMediaTime()];
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 64)];
    [v18 setFromValue:v19];

    v20 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 72)];
    [v18 setToValue:v20];

    v21 = [MEMORY[0x1E69793D0] functionWithName:v14];
    [v18 setTimingFunction:v21];

    [v18 setFillMode:v16];
    [v18 setRemovedOnCompletion:0];
    [*(*(*(a1 + 40) + 8) + 40) addAnimation:v18 forKey:@"opacity"];
  }
}

void __75__CKEffectPickerView__animateSelectedEffectLabelAtIndex_fromPreviousIndex___block_invoke_4(uint64_t a1, int a2)
{
  v22 = objc_alloc_init(MEMORY[0x1E6979318]);
  [v22 setBeginTime:CACurrentMediaTime()];
  [*(*(*(a1 + 40) + 8) + 40) frame];
  v5 = v4;
  v6 = [*(*(*(a1 + 40) + 8) + 40) layer];
  [v6 anchorPoint];
  v8 = v7;
  [*(*(*(a1 + 40) + 8) + 40) frame];
  v10 = v5 + v8 * v9;

  v11 = MEMORY[0x1E696AD98];
  [*(a1 + 32) offsetYForLabelAtIndex:*(a1 + 48) withInitialY:v10];
  v12 = [v11 numberWithDouble:?];
  [v22 setFromValue:v12];

  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
  [v22 setToValue:v13];

  v14 = *MEMORY[0x1E6979ED0];
  v15 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
  [v22 setTimingFunction:v15];

  [v22 setRemovedOnCompletion:1];
  v16 = *MEMORY[0x1E69797E8];
  [v22 setFillMode:*MEMORY[0x1E69797E8]];
  v17 = [*(*(*(a1 + 40) + 8) + 40) layer];
  [v17 addAnimation:v22 forKey:@"position.y"];

  if (a2)
  {
    v18 = objc_alloc_init(MEMORY[0x1E6979318]);
    [v18 setBeginTime:CACurrentMediaTime()];
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 56)];
    [v18 setFromValue:v19];

    v20 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 64)];
    [v18 setToValue:v20];

    v21 = [MEMORY[0x1E69793D0] functionWithName:v14];
    [v18 setTimingFunction:v21];

    [v18 setFillMode:v16];
    [v18 setRemovedOnCompletion:0];
    [*(*(*(a1 + 40) + 8) + 40) addAnimation:v18 forKey:@"opacity"];
  }
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(CKEffectPickerView *)self momentIdentifiers:view];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  momentsCollectionView = [(CKEffectPickerView *)self momentsCollectionView];
  v7 = +[CKMomentCollectionViewCell reuseIdentifier];
  v8 = [momentsCollectionView dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:pathCopy];

  contentView = [v8 contentView];
  subviews = [contentView subviews];
  [subviews makeObjectsPerformSelector:sel_removeFromSuperview];

  fsem = [(CKEffectPickerView *)self fsem];
  momentIdentifiers = [(CKEffectPickerView *)self momentIdentifiers];
  v13 = [pathCopy row];

  v14 = [momentIdentifiers objectAtIndex:v13];
  v15 = [fsem effectForIdentifier:v14];

  [v8 setEffect:v15];

  return v8;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v49 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  effect = [cellCopy effect];
  if (effect)
  {
    v30 = effect;
    [cellCopy setupEffectIfNeeded];
    balloonView = [(CKEffectPickerView *)self balloonView];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = [cellCopy effectViews];
    v35 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v35)
    {
      v32 = *v44;
      v33 = cellCopy;
      do
      {
        v8 = 0;
        do
        {
          if (*v44 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v43 + 1) + 8 * v8);
          superview = [balloonView superview];
          [balloonView center];
          [superview convertPoint:self toView:?];
          [v9 setFocusPoint:?];

          superview2 = [balloonView superview];
          [balloonView frame];
          [superview2 convertRect:self toView:?];
          [v9 setMessageRect:?];

          [v9 setMessageOrientation:{objc_msgSend(balloonView, "orientation")}];
          balloonView2 = [(CKEffectPickerView *)self balloonView];
          [balloonView2 center];
          v14 = v13;
          v16 = v15;
          v17 = objc_alloc(MEMORY[0x1E69DCA78]);
          [balloonView2 bounds];
          v20 = [v17 initWithSize:{v18, v19}];
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __72__CKEffectPickerView_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke;
          v41[3] = &unk_1E72EBBE8;
          v21 = balloonView2;
          v42 = v21;
          v36 = v20;
          v22 = [v20 imageWithActions:v41];
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          effectViews = [cellCopy effectViews];
          v24 = [effectViews countByEnumeratingWithState:&v37 objects:v47 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v38;
            do
            {
              v27 = 0;
              do
              {
                if (*v38 != v26)
                {
                  objc_enumerationMutation(effectViews);
                }

                v28 = *(*(&v37 + 1) + 8 * v27);
                superview3 = [v21 superview];
                [superview3 convertPoint:self toView:{v14, v16}];
                [v28 setFocusPoint:?];

                [v28 setMessageImage:v22];
                ++v27;
              }

              while (v25 != v27);
              v25 = [effectViews countByEnumeratingWithState:&v37 objects:v47 count:16];
            }

            while (v25);
          }

          ++v8;
          cellCopy = v33;
        }

        while (v8 != v35);
        v35 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v35);
    }

    [cellCopy animate];
    [(CKEffectPickerView *)self checkAndUpdateForSpotlightEffect:cellCopy];
    [(CKEffectPickerView *)self addAnimationTimerForCell:cellCopy];

    effect = v30;
  }
}

uint64_t __72__CKEffectPickerView_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  [*(a1 + 32) frame];
  v4 = *(a1 + 32);

  return [v4 drawViewHierarchyInRect:{v2, v3}];
}

- (void)checkAndUpdateForSpotlightEffect:(id)effect
{
  effectCopy = effect;
  if (UIAccessibilityIsReduceTransparencyEnabled() || UIAccessibilityDarkerSystemColorsEnabled())
  {
    effect = [effectCopy effect];
    identifier = [effect identifier];
    v6 = [identifier isEqualToString:@"com.apple.messages.effect.CKSpotlightEffect"];

    if (v6)
    {
      [(CKEffectPickerView *)self updateViewColors:1];
      v7 = [MEMORY[0x1E696AD98] numberWithBool:0];
      [(CKEffectPickerView *)self performSelector:sel_updateViewColors_ withObject:v7 afterDelay:4.0];
    }
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  effect = [cellCopy effect];

  if (effect)
  {
    [(CKEffectPickerView *)self removeAnimationTimerForCell:cellCopy];
    [cellCopy stopAnimation];
  }
}

- (void)addAnimationTimerForCell:(id)cell
{
  cellCopy = cell;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E695DFF0];
  effect = [cellCopy effect];
  [effect duration];
  v8 = v7;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __47__CKEffectPickerView_addAnimationTimerForCell___block_invoke;
  v18[3] = &unk_1E72F5CC0;
  v9 = cellCopy;
  v19 = v9;
  objc_copyWeak(&v20, &location);
  v10 = [v5 timerWithTimeInterval:1 repeats:v18 block:v8];

  currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
  [currentRunLoop addTimer:v10 forMode:*MEMORY[0x1E695DA28]];

  animationTimers = [(CKEffectPickerView *)self animationTimers];
  effect2 = [v9 effect];
  identifier = [effect2 identifier];
  [animationTimers setObject:v10 forKey:identifier];

  animatedCells = [(CKEffectPickerView *)self animatedCells];
  effect3 = [v9 effect];
  identifier2 = [effect3 identifier];
  [animatedCells setObject:v9 forKey:identifier2];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __47__CKEffectPickerView_addAnimationTimerForCell___block_invoke(uint64_t a1)
{
  [*(a1 + 32) animate];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained checkAndUpdateForSpotlightEffect:*(a1 + 32)];
}

- (void)removeAnimationTimerForCell:(id)cell
{
  cellCopy = cell;
  animationTimers = [(CKEffectPickerView *)self animationTimers];
  effect = [cellCopy effect];
  identifier = [effect identifier];
  v14 = [animationTimers objectForKey:identifier];

  [v14 invalidate];
  animationTimers2 = [(CKEffectPickerView *)self animationTimers];
  effect2 = [cellCopy effect];
  identifier2 = [effect2 identifier];
  [animationTimers2 removeObjectForKey:identifier2];

  animatedCells = [(CKEffectPickerView *)self animatedCells];
  effect3 = [cellCopy effect];

  identifier3 = [effect3 identifier];
  [animatedCells removeObjectForKey:identifier3];
}

- (void)invalidateAllAnimationTimers
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  animationTimers = [(CKEffectPickerView *)self animationTimers];
  allValues = [animationTimers allValues];

  v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v11 + 1) + 8 * v8++) invalidate];
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  animationTimers2 = [(CKEffectPickerView *)self animationTimers];
  [animationTimers2 removeAllObjects];

  animatedCells = [(CKEffectPickerView *)self animatedCells];
  [animatedCells removeAllObjects];
}

- (void)_setNeedsSwitcherAnimationIfNecessary
{
  if ([objc_opt_class() shouldUseLargeScreenDimension])
  {
    typeSegmentedControl = [(CKEffectPickerView *)self typeSegmentedControl];
    [typeSegmentedControl frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    roundedContainerView = [(CKEffectPickerView *)self roundedContainerView];
    [roundedContainerView frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v23.origin.x = v4;
    v23.origin.y = v6;
    v23.size.width = v8;
    v23.size.height = v10;
    MaxY = CGRectGetMaxY(v23);
    v24.origin.x = v13;
    v24.origin.y = v15;
    v24.size.width = v17;
    v24.size.height = v19;
    [(CKEffectPickerView *)self setNeedsSwitcherAnimation:MaxY >= CGRectGetMinY(v24)];
  }

  else
  {

    [(CKEffectPickerView *)self setNeedsSwitcherAnimation:1];
  }
}

- (void)_startSwitcherAnimationIfNecessary
{
  if ([(CKEffectPickerView *)self needsSwitcherAnimation])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __56__CKEffectPickerView__startSwitcherAnimationIfNecessary__block_invoke;
    v4[3] = &unk_1E72EBA18;
    v4[4] = self;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __56__CKEffectPickerView__startSwitcherAnimationIfNecessary__block_invoke_2;
    v3[3] = &unk_1E72EB9C8;
    v3[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v4 options:v3 animations:0.2 completion:0.5];
  }
}

uint64_t __56__CKEffectPickerView__startSwitcherAnimationIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) typeSegmentedControlBottomConstraint];
  [v2 setConstant:20.0];

  v3 = [*(a1 + 32) mainLabelBottomConstraint];
  [v3 setConstant:0.0];

  v4 = [*(a1 + 32) typeSegmentedControl];
  [v4 setAlpha:1.0];

  v5 = [*(a1 + 32) mainLabel];
  [v5 setAlpha:0.0];

  [*(a1 + 32) setNeedsLayout];
  v6 = *(a1 + 32);

  return [v6 layoutIfNeeded];
}

uint64_t __56__CKEffectPickerView__startSwitcherAnimationIfNecessary__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isEntryViewRefreshEnabled];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) segmentedBackdrop];
    [v4 setHidden:0];
  }

  v5 = *(a1 + 32);

  return [v5 setNeedsSwitcherAnimation:0];
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = CKEffectPickerView;
  [(CKEffectPickerView *)&v5 traitCollectionDidChange:change];
  traitCollection = [(CKEffectPickerView *)self traitCollection];
  -[CKEffectPickerView setIsInDarkMode:](self, "setIsInDarkMode:", [traitCollection userInterfaceStyle] == 2);

  [(CKEffectPickerView *)self updateViewColors];
}

- (void)handleTouchUp:(CGPoint)up
{
  v6 = [(CKEffectPickerView *)self hitTest:0 withEvent:up.x, up.y];
  effectSendButtons = [(CKEffectPickerView *)self effectSendButtons];
  v5 = [effectSendButtons containsObject:v6];

  if (v5)
  {
    [(CKEffectPickerView *)self _touchUpInsideSendButton:v6];
  }
}

- (void)handleTouchMoved:(CGPoint)moved
{
  v8 = [(CKEffectPickerView *)self hitTest:0 withEvent:moved.x, moved.y];
  effectDotButtons = [(CKEffectPickerView *)self effectDotButtons];
  v5 = [effectDotButtons containsObject:v8];

  if (v5)
  {
    [(CKEffectPickerView *)self _touchUpInsideDotButton:v8];
  }

  else
  {
    closeButton = [(CKEffectPickerView *)self closeButton];
    if (v8 == closeButton)
    {
      selectedIndex = self->_selectedIndex;

      if (selectedIndex != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(CKEffectPickerView *)self _touchUpInsideCloseButton:v8];
      }
    }

    else
    {
    }
  }
}

- (void)pageControlChanged:(id)changed
{
  currentPage = [changed currentPage];
  momentsCollectionView = [(CKEffectPickerView *)self momentsCollectionView];
  v5 = [MEMORY[0x1E696AC88] indexPathForItem:currentPage inSection:0];
  [momentsCollectionView scrollToItemAtIndexPath:v5 atScrollPosition:16 animated:1];
}

- (void)updateMomentTitle:(BOOL)title
{
  titleCopy = title;
  momentTitleLabel = [(CKEffectPickerView *)self momentTitleLabel];
  momentIdentifiers = [(CKEffectPickerView *)self momentIdentifiers];
  pageControl = [(CKEffectPickerView *)self pageControl];
  v7 = [momentIdentifiers objectAtIndex:{objc_msgSend(pageControl, "currentPage")}];

  fsem = [(CKEffectPickerView *)self fsem];
  v9 = [fsem localizedPickerTitleForEffectWithIdentifier:v7];

  [momentTitleLabel setText:v9];
  [momentTitleLabel sizeToFit];
  balloonView = [(CKEffectPickerView *)self balloonView];
  [balloonView frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v38.origin.x = v12;
  v38.origin.y = v14;
  v38.size.width = v16;
  v38.size.height = v18;
  MaxX = CGRectGetMaxX(v38);
  [momentTitleLabel frame];
  v20 = MaxX - CGRectGetWidth(v39);
  v21 = +[CKUIBehavior sharedBehaviors];
  [v21 balloonMaskTailSizeForTailShape:2];
  v23 = v20 - v22;
  v40.origin.x = v12;
  v40.origin.y = v14;
  v40.size.width = v16;
  v40.size.height = v18;
  MinY = CGRectGetMinY(v40);
  [momentTitleLabel frame];
  v25 = MinY - CGRectGetHeight(v41) + -4.0;

  [momentTitleLabel frame];
  [momentTitleLabel setFrame:{v23, v25}];
  if (titleCopy)
  {
    v26 = objc_alloc_init(MEMORY[0x1E6979318]);
    [v26 setBeginTime:CACurrentMediaTime()];
    momentTitleLabel2 = [(CKEffectPickerView *)self momentTitleLabel];
    layer = [momentTitleLabel2 layer];
    [layer position];
    v30 = v29;

    v31 = [MEMORY[0x1E696AD98] numberWithDouble:v30 + 30.0];
    [v26 setFromValue:v31];

    v32 = [MEMORY[0x1E696AD98] numberWithDouble:v30];
    [v26 setToValue:v32];

    v33 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
    [v26 setTimingFunction:v33];

    momentTitleLabel3 = [(CKEffectPickerView *)self momentTitleLabel];
    layer2 = [momentTitleLabel3 layer];
    [layer2 addAnimation:v26 forKey:@"position.y"];
  }

  [(CKEffectPickerView *)self updateViewColors];
}

- (void)effectTypeDidChange:(id)change
{
  v65 = *MEMORY[0x1E69E9840];
  [(CKEffectPickerView *)self _updateBalloonViewPositionAnimated:1];
  [(CKEffectPickerView *)self updateViewColors];
  typeSegmentedControl = [(CKEffectPickerView *)self typeSegmentedControl];
  selectedSegmentIndex = [typeSegmentedControl selectedSegmentIndex];

  if (selectedSegmentIndex)
  {
    [(CKEffectPickerView *)self _stopBalloonAnimation];
    roundedContainerView = [(CKEffectPickerView *)self roundedContainerView];
    [roundedContainerView setHidden:1];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    effectLabels = [(CKEffectPickerView *)self effectLabels];
    v8 = [effectLabels countByEnumeratingWithState:&v54 objects:v63 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v55;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v55 != v10)
          {
            objc_enumerationMutation(effectLabels);
          }

          [*(*(&v54 + 1) + 8 * i) setHidden:1];
        }

        v9 = [effectLabels countByEnumeratingWithState:&v54 objects:v63 count:16];
      }

      while (v9);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    effectDescriptiveLabels = [(CKEffectPickerView *)self effectDescriptiveLabels];
    v13 = [effectDescriptiveLabels countByEnumeratingWithState:&v50 objects:v62 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v51;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v51 != v15)
          {
            objc_enumerationMutation(effectDescriptiveLabels);
          }

          [*(*(&v50 + 1) + 8 * j) setHidden:1];
        }

        v14 = [effectDescriptiveLabels countByEnumeratingWithState:&v50 objects:v62 count:16];
      }

      while (v14);
    }

    [(CKEffectPickerView *)self invalidateAllAnimationTimers];
    momentsCollectionView = [(CKEffectPickerView *)self momentsCollectionView];
    [momentsCollectionView setDelegate:self];

    momentsCollectionView2 = [(CKEffectPickerView *)self momentsCollectionView];
    [momentsCollectionView2 setDataSource:self];

    momentsCollectionView3 = [(CKEffectPickerView *)self momentsCollectionView];
    [momentsCollectionView3 setHidden:0];

    pageControl = [(CKEffectPickerView *)self pageControl];
    [pageControl setHidden:0];

    sendMomentButton = [(CKEffectPickerView *)self sendMomentButton];
    [sendMomentButton setHidden:0];

    momentTitleLabel = [(CKEffectPickerView *)self momentTitleLabel];
    [momentTitleLabel setHidden:0];

    accessibilitySendBackgroundView = [(CKEffectPickerView *)self accessibilitySendBackgroundView];
    [accessibilitySendBackgroundView setHidden:0];

    if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
    {
      v24 = [(NSArray *)self->_momentIdentifiers count];
      momentsCollectionView4 = [(CKEffectPickerView *)self momentsCollectionView];
      [momentsCollectionView4 frame];
      v27 = v26;

      v28 = v27 * v24;
      momentsCollectionView5 = [(CKEffectPickerView *)self momentsCollectionView];
      [momentsCollectionView5 contentOffset];
      v31 = v30;

      momentsCollectionView6 = [(CKEffectPickerView *)self momentsCollectionView];
      [momentsCollectionView6 setContentOffset:{v28, v31}];
    }

    pageControl2 = [(CKEffectPickerView *)self pageControl];
    [pageControl2 setCurrentPage:{-[CKEffectPickerView selectedMomentIndex](self, "selectedMomentIndex")}];
    goto LABEL_28;
  }

  roundedContainerView2 = [(CKEffectPickerView *)self roundedContainerView];
  [roundedContainerView2 setHidden:0];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  effectLabels2 = [(CKEffectPickerView *)self effectLabels];
  v36 = [effectLabels2 countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v59;
    do
    {
      for (k = 0; k != v37; ++k)
      {
        if (*v59 != v38)
        {
          objc_enumerationMutation(effectLabels2);
        }

        [*(*(&v58 + 1) + 8 * k) setHidden:0];
      }

      v37 = [effectLabels2 countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v37);
  }

  momentsCollectionView7 = [(CKEffectPickerView *)self momentsCollectionView];
  [momentsCollectionView7 setDelegate:0];

  momentsCollectionView8 = [(CKEffectPickerView *)self momentsCollectionView];
  [momentsCollectionView8 setDataSource:0];

  [(CKEffectPickerView *)self invalidateAllAnimationTimers];
  momentsCollectionView9 = [(CKEffectPickerView *)self momentsCollectionView];
  [momentsCollectionView9 setHidden:1];

  pageControl3 = [(CKEffectPickerView *)self pageControl];
  [pageControl3 setHidden:1];

  sendMomentButton2 = [(CKEffectPickerView *)self sendMomentButton];
  [sendMomentButton2 setHidden:1];

  momentTitleLabel2 = [(CKEffectPickerView *)self momentTitleLabel];
  [momentTitleLabel2 setHidden:1];

  selectedIndex = [(CKEffectPickerView *)self selectedIndex];
  if (selectedIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v47 = selectedIndex;
    pageControl2 = [(CKEffectPickerView *)self effectDotButtons];
    v48 = [pageControl2 objectAtIndex:v47];
    [(CKEffectPickerView *)self _touchUpInsideDotButton:v48];

LABEL_28:
  }

  momentsCollectionView10 = [(CKEffectPickerView *)self momentsCollectionView];
  [momentsCollectionView10 reloadData];

  [(CKEffectPickerView *)self _updateMomentsBackgroundColor];
  [(CKEffectPickerView *)self updateMomentTitle:1];
}

- (void)_panGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] != 3)
  {
    [gestureCopy locationInView:self];
    [(CKEffectPickerView *)self handleTouchMoved:?];
  }
}

- (void)cancelImpactSelection
{
  v24 = *MEMORY[0x1E69E9840];
  selectedIndex = [(CKEffectPickerView *)self selectedIndex];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  effectSendButtons = [(CKEffectPickerView *)self effectSendButtons];
  v5 = [effectSendButtons countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(effectSendButtons);
        }

        [*(*(&v18 + 1) + 8 * v8++) setHidden:1];
      }

      while (v6 != v8);
      v6 = [effectSendButtons countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v6);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  effectDotButtons = [(CKEffectPickerView *)self effectDotButtons];
  v10 = [effectDotButtons countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(effectDotButtons);
        }

        [*(*(&v14 + 1) + 8 * v13++) setHidden:0];
      }

      while (v11 != v13);
      v11 = [effectDotButtons countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v11);
  }

  [(CKEffectPickerView *)self _animateSelectedEffectLabelAtIndex:0x7FFFFFFFFFFFFFFFLL fromPreviousIndex:selectedIndex];
  [(CKEffectPickerView *)self resetDotConstraintsToDefault];
  [(CKEffectPickerView *)self _stopBalloonAnimation];
}

- (void)_touchUpInsideSendButton:(id)button
{
  buttonCopy = button;
  effectSendButtons = [(CKEffectPickerView *)self effectSendButtons];
  v6 = [effectSendButtons indexOfObject:buttonCopy];

  delegate = [(CKEffectPickerView *)self delegate];
  effectIdentifiers = [(CKEffectPickerView *)self effectIdentifiers];
  v8 = [effectIdentifiers objectAtIndex:v6];
  [delegate effectSelectedWithIdentifier:v8];
}

- (void)_touchUpInsideSendMomentButton:(id)button
{
  delegate = [(CKEffectPickerView *)self delegate];
  momentIdentifiers = [(CKEffectPickerView *)self momentIdentifiers];
  pageControl = [(CKEffectPickerView *)self pageControl];
  v6 = [momentIdentifiers objectAtIndex:{objc_msgSend(pageControl, "currentPage")}];
  [delegate effectSelectedWithIdentifier:v6];
}

- (void)_animateInSendButton:(id)button
{
  buttonCopy = button;
  [buttonCopy bounds];
  v4 = 9.0 / CGRectGetWidth(v21);
  [buttonCopy bounds];
  Height = CGRectGetHeight(v22);
  memset(&v20, 0, sizeof(v20));
  CATransform3DMakeScale(&v20, v4, 9.0 / Height, 1.0);
  layer = [buttonCopy layer];
  v19 = v20;
  [layer setTransform:&v19];

  [MEMORY[0x1E6979518] begin];
  v7 = MEMORY[0x1E6979518];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __43__CKEffectPickerView__animateInSendButton___block_invoke;
  v17[3] = &unk_1E72EBA18;
  v18 = buttonCopy;
  v8 = buttonCopy;
  [v7 setCompletionBlock:v17];
  [MEMORY[0x1E6979518] setAnimationDuration:0.15];
  v9 = objc_alloc_init(MEMORY[0x1E6979318]);
  v19 = v20;
  v10 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v19];
  [v9 setFromValue:v10];

  v11 = *(MEMORY[0x1E69792E8] + 80);
  *&v19.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&v19.m33 = v11;
  v12 = *(MEMORY[0x1E69792E8] + 112);
  *&v19.m41 = *(MEMORY[0x1E69792E8] + 96);
  *&v19.m43 = v12;
  v13 = *(MEMORY[0x1E69792E8] + 16);
  *&v19.m11 = *MEMORY[0x1E69792E8];
  *&v19.m13 = v13;
  v14 = *(MEMORY[0x1E69792E8] + 48);
  *&v19.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&v19.m23 = v14;
  v15 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v19];
  [v9 setToValue:v15];

  [v9 setRemovedOnCompletion:0];
  [v9 setFillMode:*MEMORY[0x1E69797E8]];
  [v9 setBeginTime:CACurrentMediaTime()];
  layer2 = [v8 layer];
  [layer2 addAnimation:v9 forKey:@"transform"];

  [MEMORY[0x1E6979518] commit];
}

uint64_t __43__CKEffectPickerView__animateInSendButton___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  v3 = *(MEMORY[0x1E69792E8] + 80);
  v8[4] = *(MEMORY[0x1E69792E8] + 64);
  v8[5] = v3;
  v4 = *(MEMORY[0x1E69792E8] + 112);
  v8[6] = *(MEMORY[0x1E69792E8] + 96);
  v8[7] = v4;
  v5 = *(MEMORY[0x1E69792E8] + 16);
  v8[0] = *MEMORY[0x1E69792E8];
  v8[1] = v5;
  v6 = *(MEMORY[0x1E69792E8] + 48);
  v8[2] = *(MEMORY[0x1E69792E8] + 32);
  v8[3] = v6;
  [v2 setTransform:v8];

  return [*(a1 + 32) setHidden:0];
}

- (void)_animateOutSendButton:(id)button
{
  buttonCopy = button;
  [buttonCopy bounds];
  v4 = 9.0 / CGRectGetWidth(v21);
  [buttonCopy bounds];
  Height = CGRectGetHeight(v22);
  memset(&v20, 0, sizeof(v20));
  CATransform3DMakeScale(&v20, v4, 9.0 / Height, 1.0);
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:0.15];
  v6 = MEMORY[0x1E6979518];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v19 = v20;
  v17[2] = __44__CKEffectPickerView__animateOutSendButton___block_invoke;
  v17[3] = &unk_1E72F5CE8;
  v18 = buttonCopy;
  v7 = buttonCopy;
  [v6 setCompletionBlock:v17];
  v8 = objc_alloc_init(MEMORY[0x1E6979318]);
  v9 = *(MEMORY[0x1E69792E8] + 80);
  *&v16.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&v16.m33 = v9;
  v10 = *(MEMORY[0x1E69792E8] + 112);
  *&v16.m41 = *(MEMORY[0x1E69792E8] + 96);
  *&v16.m43 = v10;
  v11 = *(MEMORY[0x1E69792E8] + 16);
  *&v16.m11 = *MEMORY[0x1E69792E8];
  *&v16.m13 = v11;
  v12 = *(MEMORY[0x1E69792E8] + 48);
  *&v16.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&v16.m23 = v12;
  v13 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v16];
  [v8 setFromValue:v13];

  v16 = v20;
  v14 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v16];
  [v8 setToValue:v14];

  [v8 setRemovedOnCompletion:0];
  [v8 setFillMode:*MEMORY[0x1E69797E8]];
  [v8 setBeginTime:CACurrentMediaTime()];
  layer = [v7 layer];
  [layer addAnimation:v8 forKey:@"transform"];

  [MEMORY[0x1E6979518] commit];
}

uint64_t __44__CKEffectPickerView__animateOutSendButton___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  v3 = *(a1 + 120);
  v8[4] = *(a1 + 104);
  v8[5] = v3;
  v4 = *(a1 + 152);
  v8[6] = *(a1 + 136);
  v8[7] = v4;
  v5 = *(a1 + 56);
  v8[0] = *(a1 + 40);
  v8[1] = v5;
  v6 = *(a1 + 88);
  v8[2] = *(a1 + 72);
  v8[3] = v6;
  [v2 setTransform:v8];

  return [*(a1 + 32) setHidden:1];
}

- (void)resetDotConstraintsToDefault
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  effectDotConstraintsThatChange = [(CKEffectPickerView *)self effectDotConstraintsThatChange];
  allValues = [effectDotConstraintsThatChange allValues];

  v5 = [allValues countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v18;
          do
          {
            v14 = 0;
            do
            {
              if (*v18 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v17 + 1) + 8 * v14);
              [(CKEffectPickerView *)self marginBetweenPickerDotButtons];
              [v15 setConstant:-(v16 + 9.0)];
              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [allValues countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }
}

- (void)_touchUpInsideDotButton:(id)button
{
  v54 = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  selectedIndex = [(CKEffectPickerView *)self selectedIndex];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  effectSendButtons = [(CKEffectPickerView *)self effectSendButtons];
  v7 = [effectSendButtons countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v47;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(effectSendButtons);
        }

        [*(*(&v46 + 1) + 8 * i) setHidden:1];
      }

      v8 = [effectSendButtons countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v8);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  effectDotButtons = [(CKEffectPickerView *)self effectDotButtons];
  v12 = [effectDotButtons countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v43;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v43 != v14)
        {
          objc_enumerationMutation(effectDotButtons);
        }

        [*(*(&v42 + 1) + 8 * j) setHidden:0];
      }

      v13 = [effectDotButtons countByEnumeratingWithState:&v42 objects:v52 count:16];
    }

    while (v13);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  effectLabels = [(CKEffectPickerView *)self effectLabels];
  v17 = [effectLabels countByEnumeratingWithState:&v38 objects:v51 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v39;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(effectLabels);
        }

        [*(*(&v38 + 1) + 8 * k) setHidden:0];
      }

      v18 = [effectLabels countByEnumeratingWithState:&v38 objects:v51 count:16];
    }

    while (v18);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  effectDescriptiveLabels = [(CKEffectPickerView *)self effectDescriptiveLabels];
  v22 = [effectDescriptiveLabels countByEnumeratingWithState:&v34 objects:v50 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v35;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(effectDescriptiveLabels);
        }

        [*(*(&v34 + 1) + 8 * m) setHidden:1];
      }

      v23 = [effectDescriptiveLabels countByEnumeratingWithState:&v34 objects:v50 count:16];
    }

    while (v23);
  }

  effectDotButtons2 = [(CKEffectPickerView *)self effectDotButtons];
  v27 = [effectDotButtons2 indexOfObject:buttonCopy];

  effectSendButtons2 = [(CKEffectPickerView *)self effectSendButtons];
  v29 = [effectSendButtons2 objectAtIndex:v27];

  [(CKEffectPickerView *)self _animateInSendButton:v29];
  [(CKEffectPickerView *)self _animateSelectedEffectLabelAtIndex:v27 fromPreviousIndex:selectedIndex];
  [(CKEffectPickerView *)self setSelectedIndex:v27];
  if (selectedIndex != 0x7FFFFFFFFFFFFFFFLL && selectedIndex != v27)
  {
    effectSendButtons3 = [(CKEffectPickerView *)self effectSendButtons];
    v31 = [effectSendButtons3 objectAtIndex:selectedIndex];

    [v31 setHidden:0];
    [(CKEffectPickerView *)self _animateOutSendButton:v31];
  }

  [buttonCopy setHidden:1];
  [(CKEffectPickerView *)self _updateBalloonViewPositionAnimated:1];
  effectIdentifiers = [(CKEffectPickerView *)self effectIdentifiers];
  v33 = [effectIdentifiers objectAtIndex:v27];
  [(CKEffectPickerView *)self startAnimationPreviewForIdentifier:v33];
}

- (void)startAnimationPreviewForIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  balloonView = [(CKEffectPickerView *)self balloonView];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  subviews = [balloonView subviews];
  v7 = [subviews countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(subviews);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [subviews countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (balloonView)
  {
    [balloonView setInvisibleInkEffectEnabled:{objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.MobileSMS.expressivesend.invisibleink"}];
    [balloonView prepareForDisplayIfNeeded];
    _defaultSendAnimationContextForAnimationPreview = [(CKEffectPickerView *)self _defaultSendAnimationContextForAnimationPreview];
    v21 = balloonView;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    [_defaultSendAnimationContextForAnimationPreview setThrowBalloonViews:v12];

    null = v7;
    if (!v7)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v20 = null;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    [_defaultSendAnimationContextForAnimationPreview setAnimatableTextViews:v14];

    if (!v7)
    {
    }

    [_defaultSendAnimationContextForAnimationPreview setImpactIdentifier:identifierCopy];
    dummyAnimator = [(CKEffectPickerView *)self dummyAnimator];
    [dummyAnimator beginAnimationWithSendAnimationContext:_defaultSendAnimationContextForAnimationPreview];
  }
}

- (void)_applicationDidEnterBackground
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  fsem = [(CKEffectPickerView *)self fsem];
  effectIdentifiers = [fsem effectIdentifiers];

  v5 = [effectIdentifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(effectIdentifiers);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        animationTimers = [(CKEffectPickerView *)self animationTimers];
        v11 = [animationTimers objectForKey:v9];

        if (v11)
        {
          animatedCells = [(CKEffectPickerView *)self animatedCells];
          v13 = [animatedCells objectForKey:v9];

          [(CKEffectPickerView *)self removeAnimationTimerForCell:v13];
          pausedAnimatedCells = [(CKEffectPickerView *)self pausedAnimatedCells];
          [pausedAnimatedCells setObject:v13 forKey:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [effectIdentifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)_applicationWillEnterForeground
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  pausedAnimatedCells = [(CKEffectPickerView *)self pausedAnimatedCells];
  v4 = [pausedAnimatedCells copy];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        pausedAnimatedCells2 = [(CKEffectPickerView *)self pausedAnimatedCells];
        v11 = [pausedAnimatedCells2 objectForKey:v9];

        [v11 animate];
        [(CKEffectPickerView *)self addAnimationTimerForCell:v11];
        pausedAnimatedCells3 = [(CKEffectPickerView *)self pausedAnimatedCells];
        [pausedAnimatedCells3 removeObjectForKey:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (id)_defaultSendAnimationContextForAnimationPreview
{
  v2 = objc_alloc_init(CKSendAnimationContext);
  [(CKSendAnimationContext *)v2 setIsSender:1];
  [(CKSendAnimationContext *)v2 setShouldRepeat:0];

  return v2;
}

- (void)_accessibilityContrastStatusDidChange
{
  v106 = *MEMORY[0x1E69E9840];
  if (UIAccessibilityIsReduceTransparencyEnabled() || UIAccessibilityDarkerSystemColorsEnabled())
  {
    pageControl = [(CKEffectPickerView *)self pageControl];
    layer = [pageControl layer];
    [layer setFilters:0];

    mainLabel = [(CKEffectPickerView *)self mainLabel];
    layer2 = [mainLabel layer];
    [layer2 setFilters:0];

    momentTitleLabel = [(CKEffectPickerView *)self momentTitleLabel];
    layer3 = [momentTitleLabel layer];
    [layer3 setFilters:0];

    closeButton = [(CKEffectPickerView *)self closeButton];
    layer4 = [closeButton layer];
    [layer4 setFilters:0];

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LOBYTE(layer4) = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

    if ((layer4 & 1) == 0)
    {
      typeSegmentedControl = [(CKEffectPickerView *)self typeSegmentedControl];
      layer5 = [typeSegmentedControl layer];
      [layer5 setFilters:0];
    }

    roundedView = [(CKEffectPickerView *)self roundedView];
    layer6 = [roundedView layer];
    [layer6 setCompositingFilter:0];

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    effectLabels = [(CKEffectPickerView *)self effectLabels];
    v17 = [effectLabels countByEnumeratingWithState:&v90 objects:v103 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v91;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v91 != v19)
          {
            objc_enumerationMutation(effectLabels);
          }

          layer7 = [*(*(&v90 + 1) + 8 * i) layer];
          [layer7 setFilters:0];
        }

        v18 = [effectLabels countByEnumeratingWithState:&v90 objects:v103 count:16];
      }

      while (v18);
    }

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    effectDescriptiveLabels = [(CKEffectPickerView *)self effectDescriptiveLabels];
    v23 = [effectDescriptiveLabels countByEnumeratingWithState:&v86 objects:v102 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v87;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v87 != v25)
          {
            objc_enumerationMutation(effectDescriptiveLabels);
          }

          layer8 = [*(*(&v86 + 1) + 8 * j) layer];
          [layer8 setFilters:0];
        }

        v24 = [effectDescriptiveLabels countByEnumeratingWithState:&v86 objects:v102 count:16];
      }

      while (v24);
    }

    accessibilityBackdropView = [(CKEffectPickerView *)self accessibilityBackdropView];

    if (!accessibilityBackdropView)
    {
      v29 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v30 = +[CKUIBehavior sharedBehaviors];
      theme = [v30 theme];
      fsmPickerBackgroundColor = [theme fsmPickerBackgroundColor];
      [v29 setBackgroundColor:fsmPickerBackgroundColor];

      [(CKEffectPickerView *)self setAccessibilityBackdropView:v29];
      accessibilityBackdropView2 = [(CKEffectPickerView *)self accessibilityBackdropView];
      peekContainer = [(CKEffectPickerView *)self peekContainer];
      [(CKEffectPickerView *)self insertSubview:accessibilityBackdropView2 belowSubview:peekContainer];
    }

    accessibilityCloseBackgroundView = [(CKEffectPickerView *)self accessibilityCloseBackgroundView];

    if (!accessibilityCloseBackgroundView)
    {
      v36 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v37 = +[CKUIBehavior sharedBehaviors];
      theme2 = [v37 theme];
      fsmPickerSecondaryColor = [theme2 fsmPickerSecondaryColor];
      [v36 setBackgroundColor:fsmPickerSecondaryColor];

      [(CKEffectPickerView *)self setAccessibilityCloseBackgroundView:v36];
      peekContainer2 = [(CKEffectPickerView *)self peekContainer];
      accessibilityCloseBackgroundView2 = [(CKEffectPickerView *)self accessibilityCloseBackgroundView];
      closeButton2 = [(CKEffectPickerView *)self closeButton];
      [peekContainer2 insertSubview:accessibilityCloseBackgroundView2 belowSubview:closeButton2];
    }

    accessibilitySendBackgroundView = [(CKEffectPickerView *)self accessibilitySendBackgroundView];

    if (!accessibilitySendBackgroundView)
    {
      v44 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v45 = +[CKUIBehavior sharedBehaviors];
      theme3 = [v45 theme];
      fsmPickerBackgroundColor2 = [theme3 fsmPickerBackgroundColor];
      [v44 setBackgroundColor:fsmPickerBackgroundColor2];

      [(CKEffectPickerView *)self setAccessibilitySendBackgroundView:v44];
      peekContainer3 = [(CKEffectPickerView *)self peekContainer];
      accessibilitySendBackgroundView2 = [(CKEffectPickerView *)self accessibilitySendBackgroundView];
      sendMomentButton = [(CKEffectPickerView *)self sendMomentButton];
      [peekContainer3 insertSubview:accessibilitySendBackgroundView2 belowSubview:sendMomentButton];
    }

    accessibilityBackdropView3 = [(CKEffectPickerView *)self accessibilityBackdropView];
    [accessibilityBackdropView3 setHidden:0];

    accessibilitySendBackgroundView3 = [(CKEffectPickerView *)self accessibilitySendBackgroundView];
    [accessibilitySendBackgroundView3 setHidden:0];

    accessibilityCloseBackgroundView3 = [(CKEffectPickerView *)self accessibilityCloseBackgroundView];
    [accessibilityCloseBackgroundView3 setHidden:0];

    backdrop = [(CKEffectPickerView *)self backdrop];
    [backdrop setHidden:1];

    blueContrastLayer = [(CKEffectPickerView *)self blueContrastLayer];
    [blueContrastLayer setHidden:1];
  }

  else
  {
    blueContrastLayer2 = [(CKEffectPickerView *)self blueContrastLayer];
    [blueContrastLayer2 setHidden:0];

    backdrop2 = [(CKEffectPickerView *)self backdrop];
    [backdrop2 setHidden:0];

    accessibilityBackdropView4 = [(CKEffectPickerView *)self accessibilityBackdropView];
    [accessibilityBackdropView4 setHidden:1];

    accessibilitySendBackgroundView4 = [(CKEffectPickerView *)self accessibilitySendBackgroundView];
    [accessibilitySendBackgroundView4 setHidden:1];

    accessibilityCloseBackgroundView4 = [(CKEffectPickerView *)self accessibilityCloseBackgroundView];
    [accessibilityCloseBackgroundView4 setHidden:1];

    pageControl2 = [(CKEffectPickerView *)self pageControl];
    layer9 = [pageControl2 layer];
    setUpVibrancyForLayer(layer9, 0, 0, [(CKEffectPickerView *)self isInDarkMode]);

    mainLabel2 = [(CKEffectPickerView *)self mainLabel];
    layer10 = [mainLabel2 layer];
    setUpVibrancyForLayer(layer10, 0, ![(CKEffectPickerView *)self isInDarkMode], [(CKEffectPickerView *)self isInDarkMode]);

    momentTitleLabel2 = [(CKEffectPickerView *)self momentTitleLabel];
    layer11 = [momentTitleLabel2 layer];
    setUpVibrancyForLayer(layer11, 0, ![(CKEffectPickerView *)self isInDarkMode], [(CKEffectPickerView *)self isInDarkMode]);

    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LOBYTE(layer11) = [mEMORY[0x1E69A8070]2 isEntryViewRefreshEnabled];

    if ((layer11 & 1) == 0)
    {
      closeButton3 = [(CKEffectPickerView *)self closeButton];
      layer12 = [closeButton3 layer];
      setUpVibrancyForLayer(layer12, 0, ![(CKEffectPickerView *)self isInDarkMode], [(CKEffectPickerView *)self isInDarkMode]);

      typeSegmentedControl2 = [(CKEffectPickerView *)self typeSegmentedControl];
      layer13 = [typeSegmentedControl2 layer];
      setUpVibrancyForLayer(layer13, 0, ![(CKEffectPickerView *)self isInDarkMode], [(CKEffectPickerView *)self isInDarkMode]);
    }

    roundedView2 = [(CKEffectPickerView *)self roundedView];
    layer14 = [roundedView2 layer];
    v74 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
    [layer14 setCompositingFilter:v74];

    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    effectLabels2 = [(CKEffectPickerView *)self effectLabels];
    v76 = [effectLabels2 countByEnumeratingWithState:&v98 objects:v105 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = *v99;
      do
      {
        for (k = 0; k != v77; ++k)
        {
          if (*v99 != v78)
          {
            objc_enumerationMutation(effectLabels2);
          }

          layer15 = [*(*(&v98 + 1) + 8 * k) layer];
          setUpVibrancyForLayer(layer15, 0, ![(CKEffectPickerView *)self isInDarkMode], [(CKEffectPickerView *)self isInDarkMode]);
        }

        v77 = [effectLabels2 countByEnumeratingWithState:&v98 objects:v105 count:16];
      }

      while (v77);
    }

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    blueContrastLayer = [(CKEffectPickerView *)self effectDescriptiveLabels];
    v81 = [blueContrastLayer countByEnumeratingWithState:&v94 objects:v104 count:16];
    if (v81)
    {
      v82 = v81;
      v83 = *v95;
      do
      {
        for (m = 0; m != v82; ++m)
        {
          if (*v95 != v83)
          {
            objc_enumerationMutation(blueContrastLayer);
          }

          layer16 = [*(*(&v94 + 1) + 8 * m) layer];
          setUpVibrancyForLayer(layer16, 0, ![(CKEffectPickerView *)self isInDarkMode], [(CKEffectPickerView *)self isInDarkMode]);
        }

        v82 = [blueContrastLayer countByEnumeratingWithState:&v94 objects:v104 count:16];
      }

      while (v82);
    }
  }

  [(CKEffectPickerView *)self updateViewColors];
  [(CKEffectPickerView *)self setNeedsLayout];
}

- (CKEffectPickerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)balloonViewOrigin
{
  x = self->_balloonViewOrigin.x;
  y = self->_balloonViewOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

@end