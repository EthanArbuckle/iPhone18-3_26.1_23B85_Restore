@interface CKEffectPickerView
+ (BOOL)shouldUseLargeScreenDimension;
- (BOOL)_keyboardIsOnTopOfEffectPickerWindow;
- (CGPoint)balloonViewOrigin;
- (CGRect)_updateBalloonViewOrigin:(CGRect)a3 forButtonFrame:(CGRect)a4;
- (CKEffectPickerView)initWithFrame:(CGRect)a3 sendButtonFrame:(CGRect)a4 balloonViewOrigin:(CGPoint)a5 composition:(id)a6 color:(char)a7 gradientReferenceView:(id)a8;
- (CKEffectPickerViewDelegate)delegate;
- (UIFont)effectLabelFont;
- (id)_blackTextReplica;
- (id)_defaultSendAnimationContextForAnimationPreview;
- (id)_glyphLayerForButtonAnimationWithGlyphName:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)sendImage;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)selectedMomentIndex;
- (void)_accessibilityContrastStatusDidChange;
- (void)_adjustMainLabelAndTypeSegmentedControlIfNecessary;
- (void)_animateIn;
- (void)_animateInSendButton:(id)a3;
- (void)_animateOut;
- (void)_animateOutSendButton:(id)a3;
- (void)_animateSelectedEffectLabelAtIndex:(unint64_t)a3 fromPreviousIndex:(unint64_t)a4;
- (void)_applicationDidEnterBackground;
- (void)_applicationWillEnterForeground;
- (void)_panGesture:(id)a3;
- (void)_resizeBalloon;
- (void)_setBalloonText:(id)a3 withColor:(id)a4;
- (void)_setNeedsSwitcherAnimationIfNecessary;
- (void)_startSwitcherAnimationIfNecessary;
- (void)_stopBalloonAnimation;
- (void)_touchUpInsideDotButton:(id)a3;
- (void)_touchUpInsideSendButton:(id)a3;
- (void)_touchUpInsideSendMomentButton:(id)a3;
- (void)_updateBalloonViewPositionAnimated:(BOOL)a3;
- (void)_updateMomentsBackgroundColor;
- (void)addAnimationTimerForCell:(id)a3;
- (void)addEffect:(id)a3 withDescriptiveText:(id)a4 withIdentifier:(id)a5;
- (void)cancelImpactSelection;
- (void)checkAndUpdateForSpotlightEffect:(id)a3;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)dealloc;
- (void)effectTypeDidChange:(id)a3;
- (void)handleTouchMoved:(CGPoint)a3;
- (void)handleTouchUp:(CGPoint)a3;
- (void)invalidateAllAnimationTimers;
- (void)layoutSubviews;
- (void)pageControlChanged:(id)a3;
- (void)removeAnimationTimerForCell:(id)a3;
- (void)resetDotConstraintsToDefault;
- (void)safeAreaInsetsDidChange;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)setBalloonText:(id)a3;
- (void)startAnimationPreviewForIdentifier:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateColor:(char)a3;
- (void)updateHintTransition:(double)a3;
- (void)updateMomentTitle:(BOOL)a3;
- (void)updateViewColors;
- (void)updateViewColors:(BOOL)a3;
@end

@implementation CKEffectPickerView

+ (BOOL)shouldUseLargeScreenDimension
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 bounds];
  Height = CGRectGetHeight(v7);

  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 bounds];
  Width = CGRectGetWidth(v8);

  return Height <= Width || Height > 568.0;
}

- (CKEffectPickerView)initWithFrame:(CGRect)a3 sendButtonFrame:(CGRect)a4 balloonViewOrigin:(CGPoint)a5 composition:(id)a6 color:(char)a7 gradientReferenceView:(id)a8
{
  y = a5.y;
  height = a4.size.height;
  width = a4.size.width;
  v12 = a4.origin.y;
  x = a4.origin.x;
  v14 = a3.size.height;
  v15 = a3.size.width;
  v16 = a3.origin.y;
  v17 = a3.origin.x;
  v229[1] = *MEMORY[0x1E69E9840];
  v19 = *&a5.x;
  v20 = a6;
  v226.receiver = self;
  v226.super_class = CKEffectPickerView;
  v21 = [(CKEffectPickerView *)&v226 initWithFrame:v17, v16, v15, v14];
  if (v21)
  {
    v224 = v20;
    v225 = v19;
    v22 = objc_alloc_init(_TtC7ChatKit28CKEffectPickerStylingMetrics);
    [(CKEffectPickerView *)v21 setStylingMetrics:v22];

    v23 = [MEMORY[0x1E696AD88] defaultCenter];
    [v23 addObserver:v21 selector:sel_contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

    v21->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    [(CKEffectPickerView *)v21 setBalloonViewOrigin:v230, v231];
    [(CKEffectPickerView *)v21 setControlColor:*&y];
    v24 = [(CKEffectPickerView *)v21 traitCollection];
    -[CKEffectPickerView setIsInDarkMode:](v21, "setIsInDarkMode:", [v24 userInterfaceStyle] == 2);

    v25 = objc_alloc_init(CKChatControllerDummyAnimator);
    [(CKEffectPickerView *)v21 setDummyAnimator:v25];

    v26 = [(CKEffectPickerView *)v21 layer];
    [v26 setAllowsGroupBlending:0];

    v27 = objc_alloc_init(MEMORY[0x1E6979398]);
    v28 = +[CKUIBehavior sharedBehaviors];
    v29 = [v28 theme];
    v30 = [v29 fsmPickerBlueLayerBackgroundColor];
    [v27 setBackgroundColor:{objc_msgSend(v30, "CGColor")}];

    v31 = [(CKEffectPickerView *)v21 layer];
    [v31 bounds];
    [v27 setFrame:?];

    [v27 setAllowsGroupBlending:0];
    [v27 setAllowsGroupOpacity:0];
    v221 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979C60]];
    [v27 setCompositingFilter:?];
    [v27 setOpacity:0.0];
    [(CKEffectPickerView *)v21 setBlueContrastLayer:v27];
    v32 = [(CKEffectPickerView *)v21 layer];
    v222 = v27;
    [v32 addSublayer:v27];

    v212 = *MEMORY[0x1E6979928];
    v33 = [MEMORY[0x1E6979378] filterWithType:?];
    v210 = *MEMORY[0x1E6979BA8];
    [v33 setValue:&unk_1F04E8AE8 forKey:?];
    v34 = *MEMORY[0x1E6979B78];
    [v33 setValue:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6979B78]];
    v35 = objc_alloc_init(MEMORY[0x1E6979310]);
    [v35 setAllowsGroupBlending:0];
    v36 = [(CKEffectPickerView *)v21 layer];
    [v36 bounds];
    [v35 setFrame:?];

    v220 = v33;
    v229[0] = v33;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v229 count:1];
    [v35 setFilters:v37];

    [v35 setScale:0.5];
    [(CKEffectPickerView *)v21 setBackdrop:v35];
    v38 = [(CKEffectPickerView *)v21 layer];
    v219 = v35;
    [v38 addSublayer:v35];

    v39 = objc_alloc(MEMORY[0x1E69DD250]);
    [(CKEffectPickerView *)v21 bounds];
    v40 = [v39 initWithFrame:?];
    v41 = [v40 layer];
    [v41 setAllowsGroupBlending:0];

    [v40 setAutoresizingMask:18];
    [(CKEffectPickerView *)v21 setHintContainer:v40];
    v218 = v40;
    [(CKEffectPickerView *)v21 addSubview:v40];
    v42 = objc_alloc(MEMORY[0x1E69DD250]);
    [(CKEffectPickerView *)v21 bounds];
    v43 = [v42 initWithFrame:?];
    v44 = [v43 layer];
    [v44 setAllowsGroupBlending:0];

    [v43 setAutoresizingMask:18];
    [v43 setSemanticContentAttribute:3];
    [(CKEffectPickerView *)v21 setPeekContainer:v43];
    [(CKEffectPickerView *)v21 addSubview:v43];
    v217 = v43;
    [v43 setHidden:1];
    v45 = [MEMORY[0x1E695DF90] dictionary];
    [(CKEffectPickerView *)v21 setAnimationTimers:v45];

    v46 = objc_alloc_init(CKFullScreenEffectManager);
    [(CKEffectPickerView *)v21 setFsem:v46];
    v47 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
    v216 = v46;
    v48 = [(CKFullScreenEffectManager *)v46 effectIdentifiers];
    v49 = v48;
    v50 = y;
    v51 = v12;
    if (v47 == 1)
    {
      v52 = [v48 reverseObjectEnumerator];
      v53 = [v52 allObjects];

      v49 = v53;
    }

    v54 = width;
    v215 = v49;
    [(CKEffectPickerView *)v21 setMomentIdentifiers:v49];
    v55 = objc_alloc(MEMORY[0x1E69DD250]);
    v56 = [(CKEffectPickerView *)v21 peekContainer];
    [v56 bounds];
    v57 = [v55 initWithFrame:?];

    v58 = [v57 layer];
    [v58 setAllowsGroupOpacity:0];

    v59 = [v57 layer];
    [v59 setAllowsGroupBlending:0];

    [v57 setOpaque:0];
    [v57 setAutoresizingMask:18];
    v60 = [(CKEffectPickerView *)v21 peekContainer];
    [v60 addSubview:v57];

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
    v67 = [MEMORY[0x1E69DC888] clearColor];
    [v66 setBackgroundColor:v67];

    [v66 setShowsHorizontalScrollIndicator:0];
    [v66 setShowsVerticalScrollIndicator:0];
    v68 = objc_opt_class();
    v69 = +[CKMomentCollectionViewCell reuseIdentifier];
    [v66 registerClass:v68 forCellWithReuseIdentifier:v69];

    v70 = [(CKEffectPickerView *)v21 peekContainer];
    [v70 addSubview:v66];

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
    v81 = [(CKEffectPickerView *)v21 peekContainer];
    [v81 addSubview:v77];

    [(CKEffectPickerView *)v21 setTypeSegmentedControl:v77];
    v82 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v83 = [v82 isEntryViewRefreshEnabled];

    v84 = v50;
    if ((v83 & 1) == 0)
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
      v88 = [(CKEffectPickerView *)v21 peekContainer];
      v89 = [v88 layer];
      v90 = [v223 layer];
      [v89 insertSublayer:v86 above:v90];
    }

    v91 = objc_alloc(MEMORY[0x1E69DCD10]);
    v92 = *MEMORY[0x1E695F058];
    v93 = *(MEMORY[0x1E695F058] + 8);
    v94 = *(MEMORY[0x1E695F058] + 16);
    v95 = *(MEMORY[0x1E695F058] + 24);
    v96 = [v91 initWithFrame:{*MEMORY[0x1E695F058], v93, v94, v95}];
    [v96 addTarget:v21 action:sel_pageControlChanged_ forControlEvents:4096];
    [v96 setTranslatesAutoresizingMaskIntoConstraints:0];
    v97 = [(CKEffectPickerView *)v21 momentIdentifiers];
    [v96 setNumberOfPages:{objc_msgSend(v97, "count")}];

    [v96 setCurrentPage:0];
    [v96 sizeToFit];
    v98 = [(CKEffectPickerView *)v21 peekContainer];
    [v98 addSubview:v96];

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
    v103 = [(CKEffectPickerView *)v21 peekContainer];
    [v103 addSubview:v99];

    v209 = v99;
    [(CKEffectPickerView *)v21 setMainLabel:v99];
    v104 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LODWORD(v101) = [v104 isEntryViewRefreshEnabled];

    if (v101)
    {
      v105 = objc_alloc_init(CKGlassSendButton);
      [(CKGlassSendButton *)v105 setCkTintColor:*&v84];
      [(CKGlassSendButton *)v105 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(CKGlassSendButton *)v105 setOpaque:0];
      [(CKGlassSendButton *)v105 addTarget:v21 action:sel__touchUpInsideSendMomentButton_ forControlEvents:64];
      [(CKGlassSendButton *)v105 accessibilitySetIdentification:@"sendButton"];
      [(CKGlassSendButton *)v105 setExclusiveTouch:1];
      v106 = [(CKEffectPickerView *)v21 peekContainer];
      [v106 addSubview:v105];

      [(CKEffectPickerView *)v21 setSendMomentButton:v105];
    }

    else
    {
      v105 = [MEMORY[0x1E69DC738] buttonWithType:1];
      v107 = +[CKUIBehavior sharedBehaviors];
      v108 = [v107 theme];
      v109 = [v108 sendButtonColorForColorType:*&v84];
      [(CKGlassSendButton *)v105 setTintColor:v109];

      [(CKGlassSendButton *)v105 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(CKGlassSendButton *)v105 setOpaque:0];
      v110 = [(CKEffectPickerView *)v21 sendImage];
      [(CKGlassSendButton *)v105 setImage:v110 forState:0];
      [(CKGlassSendButton *)v105 setImage:v110 forState:4];
      [(CKGlassSendButton *)v105 setEnabled:1];
      [(CKGlassSendButton *)v105 addTarget:v21 action:sel__touchUpInsideSendMomentButton_ forControlEvents:64];
      [(CKGlassSendButton *)v105 accessibilitySetIdentification:@"sendButton"];
      [(CKGlassSendButton *)v105 setExclusiveTouch:1];
      v111 = [(CKEffectPickerView *)v21 peekContainer];
      [v111 addSubview:v105];

      [(CKEffectPickerView *)v21 setSendMomentButton:v105];
    }

    v112 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v92, v93, v94, v95}];
    v113 = [CKUIBehavior fontWithStyle:*MEMORY[0x1E69DDD10] adjustedForMaxSizeCategory:*MEMORY[0x1E69DDC30]];
    [v112 setFont:v113];

    v114 = [(CKEffectPickerView *)v21 peekContainer];
    [v114 addSubview:v112];

    v208 = v112;
    [(CKEffectPickerView *)v21 setMomentTitleLabel:v112];
    v115 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LODWORD(v112) = [v115 isEntryViewRefreshEnabled];

    if (v112)
    {
      v116 = objc_alloc_init(_TtC7ChatKit19CKPillShapedXButton);
      +[_TtC7ChatKit19CKPillShapedXButton buttonSize];
      [(CKPillShapedXButton *)v116 setBounds:0.0, 0.0, v117, v118];
      [(CKPillShapedXButton *)v116 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(CKPillShapedXButton *)v116 addTarget:v21 action:sel__touchUpInsideCloseButton_ forControlEvents:64];
      v119 = [(CKEffectPickerView *)v21 peekContainer];
      [v119 addSubview:v116];

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
      v127 = [(CKEffectPickerView *)v21 peekContainer];
      [v127 addSubview:v116];

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
      v138 = [v137 isAccessibilityPreferredContentSizeCategory];

      if (v138)
      {
        [v129 truncateForLargeText];
      }
    }

    [v129 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v129 setCanUseOpaqueMask:0];
    [v129 setUserInteractionEnabled:0];
    v139 = [(CKEffectPickerView *)v21 peekContainer];
    [v139 addSubview:v129];

    [(CKEffectPickerView *)v21 setBalloonView:v129];
    [(CKEffectPickerView *)v21 _resizeBalloon];
    v140 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v141 = [v140 layer];
    [v141 setMasksToBounds:1];

    v142 = [v140 layer];
    v143 = [(CKEffectPickerView *)v21 stylingMetrics];
    [v143 roundTrackContainerViewCornerRadius];
    [v142 setCornerRadius:?];

    v144 = [v140 layer];
    [v144 setAllowsGroupOpacity:0];

    v145 = [v140 layer];
    [v145 setAllowsGroupBlending:0];

    [v140 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v140 setUserInteractionEnabled:1];
    v146 = [(CKEffectPickerView *)v21 peekContainer];
    [v146 addSubview:v140];

    [(CKEffectPickerView *)v21 setRoundedContainerView:v140];
    v147 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v148 = [v147 layer];
    v149 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
    [v148 setCompositingFilter:v149];

    [v140 addSubview:v147];
    [v140 bounds];
    [v147 setFrame:?];
    [v147 setAutoresizingMask:18];
    [(CKEffectPickerView *)v21 setRoundedView:v147];
    v150 = MEMORY[0x1E696ACD8];
    v151 = [(CKEffectPickerView *)v21 closeButton];
    v152 = [v150 constraintWithItem:v151 attribute:5 relatedBy:0 toItem:v21 attribute:5 multiplier:1.0 constant:v128];

    [(CKEffectPickerView *)v21 addConstraint:v152];
    v153 = MEMORY[0x1E696ACD8];
    v154 = [(CKEffectPickerView *)v21 sendMomentButton];
    v155 = [(CKEffectPickerView *)v21 closeButton];
    v156 = [v153 constraintWithItem:v154 attribute:9 relatedBy:0 toItem:v155 attribute:9 multiplier:1.0 constant:0.0];

    [(CKEffectPickerView *)v21 addConstraint:v156];
    v157 = MEMORY[0x1E696ACD8];
    v158 = [(CKEffectPickerView *)v21 roundedContainerView];
    v159 = [(CKEffectPickerView *)v21 closeButton];
    v160 = [v157 constraintWithItem:v158 attribute:9 relatedBy:0 toItem:v159 attribute:9 multiplier:1.0 constant:0.0];

    [(CKEffectPickerView *)v21 addConstraint:v160];
    v161 = MEMORY[0x1E696ACD8];
    v162 = [(CKEffectPickerView *)v21 roundedContainerView];
    v163 = [(CKEffectPickerView *)v21 stylingMetrics];
    [v163 roundTrackContainerViewWidth];
    v165 = [v161 constraintWithItem:v162 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v164];

    [(CKEffectPickerView *)v21 addConstraint:v165];
    v166 = MEMORY[0x1E696ACD8];
    v167 = [(CKEffectPickerView *)v21 typeSegmentedControl];
    v168 = [v166 constraintWithItem:v167 attribute:3 relatedBy:0 toItem:v21 attribute:3 multiplier:1.0 constant:70.0];

    [v168 setIdentifier:@"typeSegmentedControlBottom"];
    [(CKEffectPickerView *)v21 setTypeSegmentedControlBottomConstraint:v168];
    [(CKEffectPickerView *)v21 addConstraint:v168];
    v169 = MEMORY[0x1E696ACD8];
    v170 = [(CKEffectPickerView *)v21 typeSegmentedControl];
    v171 = [v169 constraintWithItem:v170 attribute:9 relatedBy:0 toItem:v21 attribute:9 multiplier:1.0 constant:0.0];

    [(CKEffectPickerView *)v21 addConstraint:v171];
    v172 = MEMORY[0x1E696ACD8];
    v173 = [(CKEffectPickerView *)v21 mainLabel];
    v174 = [v172 constraintWithItem:v173 attribute:11 relatedBy:0 toItem:v21 attribute:3 multiplier:1.0 constant:50.0];

    [v174 setIdentifier:@"mainLabelBottom"];
    [(CKEffectPickerView *)v21 setMainLabelBottomConstraint:v174];
    [(CKEffectPickerView *)v21 addConstraint:v174];
    v175 = MEMORY[0x1E696ACD8];
    v176 = [(CKEffectPickerView *)v21 mainLabel];
    v177 = [v175 constraintWithItem:v176 attribute:9 relatedBy:0 toItem:v21 attribute:9 multiplier:1.0 constant:0.0];

    [(CKEffectPickerView *)v21 addConstraint:v177];
    v178 = MEMORY[0x1E696ACD8];
    v179 = [(CKEffectPickerView *)v21 mainLabel];
    v180 = [v178 constraintWithItem:v179 attribute:5 relatedBy:1 toItem:v21 attribute:5 multiplier:1.0 constant:20.0];

    [(CKEffectPickerView *)v21 addConstraint:v180];
    v181 = MEMORY[0x1E696ACD8];
    v182 = [(CKEffectPickerView *)v21 mainLabel];
    v183 = [v181 constraintWithItem:v182 attribute:6 relatedBy:1 toItem:v21 attribute:6 multiplier:1.0 constant:-20.0];

    [(CKEffectPickerView *)v21 addConstraint:v183];
    if ([(CKEffectPickerView *)v21 _keyboardIsOnTopOfEffectPickerWindow]&& UIKeyboardAutomaticIsOnScreen())
    {
      v184 = MEMORY[0x1E696ACD8];
      v185 = [(CKEffectPickerView *)v21 pageControl];
      v186 = [(CKEffectPickerView *)v21 closeButton];
      v187 = 1.0;
      v188 = 0.0;
      v189 = v184;
      v190 = v185;
      v191 = 10;
      v192 = v186;
      v193 = 10;
    }

    else
    {
      v194 = MEMORY[0x1E696ACD8];
      v185 = [(CKEffectPickerView *)v21 pageControl];
      v186 = [(CKEffectPickerView *)v21 peekContainer];
      v187 = 1.0;
      v188 = -20.0;
      v189 = v194;
      v190 = v185;
      v191 = 4;
      v192 = v186;
      v193 = 4;
    }

    v195 = [v189 constraintWithItem:v190 attribute:v191 relatedBy:0 toItem:v192 attribute:v193 multiplier:v187 constant:v188];

    [v195 setIdentifier:@"pageControlBottom"];
    [(CKEffectPickerView *)v21 addConstraint:v195];
    v196 = MEMORY[0x1E696ACD8];
    v197 = [(CKEffectPickerView *)v21 pageControl];
    v198 = [(CKEffectPickerView *)v21 peekContainer];
    v199 = [v196 constraintWithItem:v197 attribute:7 relatedBy:0 toItem:v198 attribute:7 multiplier:1.0 constant:0.0];

    [(CKEffectPickerView *)v21 addConstraint:v199];
    [(CKEffectPickerView *)v21 activateTextSizeDependentConstraintsForSendButtonFrame:v128, v51, v54, v80];
    v200 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:v21 action:sel__panGesture_];
    [(CKEffectPickerView *)v21 addGestureRecognizer:v200];
    [(CKEffectPickerView *)v21 setPanGestureRecognizer:v200];
    [(CKEffectPickerView *)v21 _updateBalloonViewPositionAnimated:0];
    [(CKEffectPickerView *)v21 updateMomentTitle:0];
    [(CKEffectPickerView *)v21 effectTypeDidChange:v77];
    v201 = [MEMORY[0x1E695DF90] dictionary];
    [(CKEffectPickerView *)v21 setAnimatedCells:v201];

    v202 = [MEMORY[0x1E695DF90] dictionary];
    [(CKEffectPickerView *)v21 setPausedAnimatedCells:v202];

    v203 = [MEMORY[0x1E696AD88] defaultCenter];
    [v203 addObserver:v21 selector:sel__applicationDidEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];

    v204 = [MEMORY[0x1E696AD88] defaultCenter];
    [v204 addObserver:v21 selector:sel__applicationWillEnterForeground name:*MEMORY[0x1E69DDBC0] object:0];

    v205 = [MEMORY[0x1E696AD88] defaultCenter];
    [v205 addObserver:v21 selector:sel__accessibilityContrastStatusDidChange name:*MEMORY[0x1E69DD920] object:0];

    v206 = [MEMORY[0x1E696AD88] defaultCenter];
    [v206 addObserver:v21 selector:sel__accessibilityContrastStatusDidChange name:*MEMORY[0x1E69DD8B8] object:0];

    [(CKEffectPickerView *)v21 _accessibilityContrastStatusDidChange];
    [(CKEffectPickerView *)v21 updateViewColors];

    v20 = v224;
    v19 = v225;
  }

  return v21;
}

- (void)updateViewColors
{
  v3 = [(CKEffectPickerView *)self momentIdentifiers];
  v4 = [(CKEffectPickerView *)self pageControl];
  v9 = [v3 objectAtIndex:{objc_msgSend(v4, "currentPage")}];

  v5 = [(CKEffectPickerView *)self fsem];
  v6 = [v5 effectForIdentifier:v9];

  v7 = [(CKEffectPickerView *)self typeSegmentedControl];
  if ([v7 selectedSegmentIndex] == 1)
  {
    v8 = [v6 effectIsDark];
  }

  else
  {
    v8 = 0;
  }

  [(CKEffectPickerView *)self updateViewColors:v8];
}

- (void)updateViewColors:(BOOL)a3
{
  v88 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isEntryViewRefreshEnabled];

  if ((v6 & 1) == 0)
  {
    v7 = [(CKEffectPickerView *)self typeSegmentedControl];
    v8 = +[CKUIBehavior sharedBehaviors];
    v9 = [v8 theme];
    v10 = v9;
    if (a3)
    {
      [v9 fsmPickerPrimaryTintColorDarkEffect];
    }

    else
    {
      [v9 fsmPickerPrimaryTintColor];
    }
    v11 = ;
    [v7 setTintColor:v11];

    v12 = [(CKEffectPickerView *)self segmentedBackdrop];
    v13 = +[CKUIBehavior sharedBehaviors];
    v14 = [v13 theme];
    v15 = v14;
    if (a3)
    {
      v16 = [v14 fsmPickerSecondaryColorDarkEffect];
      v17 = [v16 cgColor];
    }

    else
    {
      v16 = [v14 fsmPickerSecondaryColor];
      v17 = [v16 CGColor];
    }

    [v12 setBackgroundColor:v17];
  }

  v18 = [(CKEffectPickerView *)self pageControl];
  v19 = +[CKUIBehavior sharedBehaviors];
  v20 = [v19 theme];
  v21 = v20;
  if (a3)
  {
    [v20 fsmPickerPageIndicatorColorDarkEffect];
  }

  else
  {
    [v20 fsmPickerPageIndicatorColor];
  }
  v22 = ;
  [v18 setPageIndicatorTintColor:v22];

  v23 = [(CKEffectPickerView *)self pageControl];
  v24 = +[CKUIBehavior sharedBehaviors];
  v25 = [v24 theme];
  v26 = v25;
  if (a3)
  {
    [v25 fsmPickerCurrentPageIndicatorColorDarkEffect];
  }

  else
  {
    [v25 fsmPickerCurrentPageIndicatorColor];
  }
  v27 = ;
  [v23 setCurrentPageIndicatorTintColor:v27];

  v28 = [(CKEffectPickerView *)self mainLabel];
  v29 = +[CKUIBehavior sharedBehaviors];
  v30 = [v29 theme];
  v31 = v30;
  if (a3)
  {
    [v30 fsmPickerPrimaryColorDarkEffect];
  }

  else
  {
    [v30 fsmPickerPrimaryColor];
  }
  v32 = ;
  [v28 setTextColor:v32];

  v33 = [(CKEffectPickerView *)self momentTitleLabel];
  v34 = +[CKUIBehavior sharedBehaviors];
  v35 = [v34 theme];
  v36 = v35;
  if (a3)
  {
    [v35 fsmPickerPrimaryColorDarkEffect];
  }

  else
  {
    [v35 fsmPickerPrimaryColor];
  }
  v37 = ;
  [v33 setTextColor:v37];

  v38 = [(CKEffectPickerView *)self closeButton];
  v39 = +[CKUIBehavior sharedBehaviors];
  v40 = [v39 theme];
  v41 = v40;
  if (a3)
  {
    [v40 fsmPickerCloseButtonColorDarkEffect];
  }

  else
  {
    [v40 fsmPickerCloseButtonColor];
  }
  v42 = ;
  [v38 setTintColor:v42];

  v43 = [(CKEffectPickerView *)self accessibilityCloseBackgroundView];
  v44 = +[CKUIBehavior sharedBehaviors];
  v45 = [v44 theme];
  v46 = v45;
  if (a3)
  {
    [v45 fsmPickerSecondaryColorDarkEffect];
  }

  else
  {
    [v45 fsmPickerSecondaryColor];
  }
  v47 = ;
  [v43 setBackgroundColor:v47];

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v77 = self;
  v48 = [(CKEffectPickerView *)self effectLabels];
  v49 = [v48 countByEnumeratingWithState:&v82 objects:v87 count:16];
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
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v82 + 1) + 8 * i);
        v54 = +[CKUIBehavior sharedBehaviors];
        v55 = [v54 theme];
        v56 = v55;
        if (a3)
        {
          [v55 fsmPickerPrimaryColorDarkEffect];
        }

        else
        {
          [v55 fsmPickerPrimaryColor];
        }
        v57 = ;
        [v53 setTextColor:v57];
      }

      v50 = [v48 countByEnumeratingWithState:&v82 objects:v87 count:16];
    }

    while (v50);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v58 = [(CKEffectPickerView *)v77 effectDescriptiveLabels];
  v59 = [v58 countByEnumeratingWithState:&v78 objects:v86 count:16];
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
          objc_enumerationMutation(v58);
        }

        v63 = *(*(&v78 + 1) + 8 * j);
        v64 = +[CKUIBehavior sharedBehaviors];
        v65 = [v64 theme];
        v66 = v65;
        if (a3)
        {
          [v65 fsmPickerPrimaryColorDarkEffect];
        }

        else
        {
          [v65 fsmPickerPrimaryColor];
        }
        v67 = ;
        [v63 setTextColor:v67];
      }

      v60 = [v58 countByEnumeratingWithState:&v78 objects:v86 count:16];
    }

    while (v60);
  }

  v68 = [(CKEffectPickerView *)v77 roundedView];
  v69 = +[CKUIBehavior sharedBehaviors];
  v70 = [v69 theme];
  v71 = [v70 fsmPickerRoundedViewColor];
  [v68 setBackgroundColor:v71];

  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v72 = [(CKEffectPickerView *)v77 backgroundView];
  }

  else
  {
    v73 = UIAccessibilityDarkerSystemColorsEnabled();
    v72 = [(CKEffectPickerView *)v77 backgroundView];
    if (!v73)
    {
      v74 = +[CKUIBehavior sharedBehaviors];
      v75 = [v74 theme];
      v76 = [v75 fsmPickerBackgroundViewColor];
      [v72 setBackgroundColor:v76];

      goto LABEL_52;
    }
  }

  [v72 setBackgroundColor:0];
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
  v7 = [(CKEffectPickerView *)self constraints];
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [v15 identifier];
        v17 = [v16 isEqualToString:@"pageControlBottom"];

        v18 = v13;
        if ((v17 & 1) == 0)
        {
          v19 = [v15 identifier];
          v20 = [v19 isEqualToString:@"mainLabelBottom"];

          v18 = v12;
          if ((v20 & 1) == 0)
          {
            v21 = [v15 identifier];
            v22 = [v21 isEqualToString:@"typeSegmentedControlBottom"];

            v18 = v11;
            if (!v22)
            {
              continue;
            }
          }
        }

        [v15 setConstant:v18];
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:{16, v18}];
    }

    while (v9);
  }
}

- (int64_t)selectedMomentIndex
{
  v3 = [(CKEffectPickerView *)self momentsCollectionView];
  [v3 frame];
  v5 = v4;

  v6 = [(CKEffectPickerView *)self momentsCollectionView];
  [v6 contentOffset];
  *&v7 = v7 / v5;
  v8 = llroundf(*&v7);

  return v8;
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = [(CKEffectPickerView *)self selectedMomentIndex];
  v5 = [(CKEffectPickerView *)self pageControl];
  v6 = [v5 currentPage];

  if (v6 != v4)
  {
    v7 = [(CKEffectPickerView *)self pageControl];
    [v7 setCurrentPage:v4];

    [(CKEffectPickerView *)self updateMomentTitle:0];
  }
}

- (void)dealloc
{
  [(CKEffectPickerView *)self setDelegate:0];
  v3 = [(CKEffectPickerView *)self balloonView];
  v4 = [v3 layer];
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
  [v4 setTransform:v18];

  v9 = [(CKEffectPickerView *)self balloonView];
  [v9 _removeAllAnimations:1];

  v10 = [(CKEffectPickerView *)self balloonView];
  [v10 setUserInteractionEnabled:1];

  v11 = [(CKEffectPickerView *)self balloonView];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v12 = +[CKUIBehavior sharedBehaviors];
  v13 = [v12 isAccessibilityPreferredContentSizeCategory];

  if (v13)
  {
    v11 = [(CKEffectPickerView *)self balloonView];
    [v11 restoreFromLargeTextTruncation];
LABEL_4:
  }

  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  [v14 removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];

  v15 = [MEMORY[0x1E696AD88] defaultCenter];
  [v15 removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];

  v16 = [MEMORY[0x1E696AD88] defaultCenter];
  [v16 removeObserver:self name:*MEMORY[0x1E69DD920] object:0];

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
  v3 = [(CKEffectPickerView *)self backdrop];
  v4 = [(CKEffectPickerView *)self layer];
  [v4 bounds];
  [v3 setFrame:?];

  if (UIAccessibilityIsReduceTransparencyEnabled() || UIAccessibilityDarkerSystemColorsEnabled())
  {
    v5 = [(CKEffectPickerView *)self accessibilityBackdropView];
    [(CKEffectPickerView *)self bounds];
    [v5 setFrame:?];

    v6 = [(CKEffectPickerView *)self sendMomentButton];
    [v6 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = [(CKEffectPickerView *)self accessibilitySendBackgroundView];
    [v15 setFrame:{v8 + 2.0, v10 + 2.0, v12 + -4.0, v14 + -4.0}];

    v16 = [(CKEffectPickerView *)self closeButton];
    [v16 frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = [(CKEffectPickerView *)self accessibilityCloseBackgroundView];
    [v25 setFrame:{v18 + 2.0, v20 + 2.0, v22 + -4.0, v24 + -4.0}];

    v26 = [(CKEffectPickerView *)self accessibilitySendBackgroundView];
    v27 = [v26 layer];
    v28 = [(CKEffectPickerView *)self accessibilitySendBackgroundView];
    [v28 bounds];
    [v27 setCornerRadius:v29 * 0.5];

    v30 = [(CKEffectPickerView *)self accessibilityCloseBackgroundView];
    v31 = [v30 layer];
    v32 = [(CKEffectPickerView *)self accessibilityCloseBackgroundView];
    [v32 bounds];
    [v31 setCornerRadius:v33 * 0.5];

    v34 = [(CKEffectPickerView *)self typeSegmentedControl];
    v35 = [v34 selectedSegmentIndex];

    if (!v35)
    {
      v36 = [(CKEffectPickerView *)self accessibilitySendBackgroundView];
      [v36 setHidden:1];
    }
  }

  v37 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v38 = [v37 isEntryViewRefreshEnabled];

  if ((v38 & 1) == 0)
  {
    v39 = [(CKEffectPickerView *)self segmentedBackdrop];
    [(CKEffectPickerView *)self bounds];
    v41 = v40 * 0.5;
    v42 = [(CKEffectPickerView *)self segmentedBackdrop];
    [v42 bounds];
    v44 = v41 - v43 * 0.5;
    v45 = [(CKEffectPickerView *)self typeSegmentedControlBottomConstraint];
    [v45 constant];
    v47 = v46;
    v48 = [(CKEffectPickerView *)self segmentedBackdrop];
    [v48 bounds];
    v50 = v49;
    v51 = [(CKEffectPickerView *)self segmentedBackdrop];
    [v51 bounds];
    [v39 setFrame:{v44, v47, v50}];
  }

  v52 = [(CKEffectPickerView *)self momentsCollectionView];
  v53 = [v52 collectionViewLayout];
  [v52 bounds];
  v55 = v54;
  [v52 bounds];
  [v53 setItemSize:{v55, v56}];
}

- (void)updateHintTransition:(double)a3
{
  if (![(CKEffectPickerView *)self isAnimating])
  {
    v5 = [(CKEffectPickerView *)self hintBlackText];

    if (a3 < 1.0 && v5 == 0)
    {
      [(CKEffectPickerView *)self _resizeBalloon];
      [(CKEffectPickerView *)self _updateBalloonViewPositionAnimated:0];
      v10 = [(CKEffectPickerView *)self balloonView];
      [(CKEffectPickerView *)self balloonViewOrigin];
      v12 = v11 + 1.0;
      v13 = [(CKEffectPickerView *)self balloonView];
      [v13 origin];
      [v10 setOrigin:{v12, v14 + 3.0}];

      v15 = [(CKEffectPickerView *)self _blackTextReplica];
      if (!v15)
      {
        v15 = [(CKEffectPickerView *)self balloonView];
      }

      [(CKEffectPickerView *)self balloonViewOrigin];
      [v15 setOrigin:?];
      v16 = [(CKEffectPickerView *)self hintContainer];
      [v16 addSubview:v15];

      [(CKEffectPickerView *)self setHintBlackText:v15];
      v17 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v18 = [v17 isEntryViewRefreshEnabled];

      if (v18)
      {
        v19 = objc_alloc_init(CKGlassSendButton);
        [(CKGlassSendButton *)v19 setCkTintColor:[(CKEffectPickerView *)self controlColor]];
        [(CKGlassSendButton *)v19 setOpaque:0];
        v20 = [(CKEffectPickerView *)self closeButton];
        [v20 frame];
        v22 = v21;
        v24 = v23;

        +[CKGlassSendButton buttonSize];
        [(CKGlassSendButton *)v19 setBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v25, v26];
        [(CKGlassSendButton *)v19 setTranslatesAutoresizingMaskIntoConstraints:1];
        [(CKGlassSendButton *)v19 setOrigin:v22, v24];
        v27 = [(CKEffectPickerView *)self hintContainer];
        [v27 addSubview:v19];

        [(CKEffectPickerView *)self setHintSendButton:v19];
      }

      else
      {
        v28 = +[CKUIBehavior sharedBehaviors];
        v29 = [v28 theme];
        v19 = [v29 sendButtonColorForColorType:{-[CKEffectPickerView controlColor](self, "controlColor")}];

        v30 = [MEMORY[0x1E69DC738] buttonWithType:1];
        v31 = [(CKEffectPickerView *)self sendImage];
        [v30 setImage:v31 forState:0];
        [v30 setImage:v31 forState:4];
        [v30 setOpaque:0];
        v32 = [(CKEffectPickerView *)self closeButton];
        [v32 frame];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;

        [v30 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v38, v40}];
        [v30 setTintColor:v19];
        [v30 setTranslatesAutoresizingMaskIntoConstraints:1];
        [v30 setOrigin:{v34, v36}];
        v41 = [(CKEffectPickerView *)self hintContainer];
        [v41 addSubview:v30];

        [(CKEffectPickerView *)self setHintSendButton:v30];
      }
    }

    else
    {
      v7 = [(CKEffectPickerView *)self hintBlackText];

      if (a3 == 1.0 && v7)
      {
        v8 = [(CKEffectPickerView *)self hintBlackText];
        [v8 removeFromSuperview];

        [(CKEffectPickerView *)self setHintBlackText:0];
        v9 = [(CKEffectPickerView *)self hintSendButton];
        [v9 removeFromSuperview];

        [(CKEffectPickerView *)self setHintSendButton:0];
      }
    }

    v42 = [(CKEffectPickerView *)self backdrop];
    v43 = fmin(a3, 0.6);
    v44 = v43 * 64.0;
    if (v43 * 64.0 < 3.0)
    {
      v44 = 3.0;
    }

    v45 = [MEMORY[0x1E696AD98] numberWithDouble:v44];
    [v42 setValue:v45 forKeyPath:@"filters.gaussianBlur.inputRadius"];

    v46 = [(CKEffectPickerView *)self blueContrastLayer];
    v47 = [MEMORY[0x1E696AD98] numberWithDouble:v43];
    [v46 setValue:v47 forKey:@"opacity"];

    v48 = a3 * 0.15 + 1.0;
    v49 = [(CKEffectPickerView *)self balloonView];
    v50 = [v49 layer];
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
    [v50 setTransform:&v62];

    v51 = [(CKEffectPickerView *)self hintBlackText];
    v52 = [v51 layer];
    *&v61.m31 = v60;
    *&v61.m33 = v59;
    *&v61.m41 = v58;
    *&v61.m43 = v57;
    *&v61.m11 = v56;
    *&v61.m13 = v55;
    *&v61.m21 = v54;
    *&v61.m23 = v53;
    CATransform3DScale(&v62, &v61, v48, v48, 1.0);
    [v52 setTransform:&v62];
  }
}

- (void)updateColor:(char)a3
{
  v3 = a3;
  v28 = *MEMORY[0x1E69E9840];
  [(CKEffectPickerView *)self setControlColor:?];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 theme];
  v7 = [v6 sendButtonColorForColorType:v3];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [(CKEffectPickerView *)self effectSendButtons];
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v8);
        }

        [*(*(&v23 + 1) + 8 * v12++) setTintColor:v7];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v13 = [(CKEffectPickerView *)self hintSendButton];
  [v13 setTintColor:v7];

  v14 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v15 = [v14 isEntryViewRefreshEnabled];

  v16 = [(CKEffectPickerView *)self sendMomentButton];
  v17 = v16;
  if (v15)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_13;
    }

    v17 = [(CKEffectPickerView *)self sendMomentButton];
    [v17 setCkTintColor:v3];
  }

  else
  {
    [v16 setTintColor:v7];
  }

LABEL_13:
  v19 = [(CKEffectPickerView *)self balloonView];
  objc_opt_class();
  v20 = objc_opt_isKindOfClass();

  if (v20)
  {
    v21 = [(CKEffectPickerView *)self balloonView];
    [v21 setColor:v3];

    v22 = [(CKEffectPickerView *)self balloonView];
    [v22 prepareForDisplayIfNeeded];
  }
}

- (void)setBalloonText:(id)a3
{
  v4 = a3;
  v7 = +[CKUIBehavior sharedBehaviors];
  v5 = [v7 theme];
  v6 = [v5 balloonTextColorForColorType:1];
  [(CKEffectPickerView *)self _setBalloonText:v4 withColor:v6];
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
    v6 = [v5 fontDescriptor];
    v7 = [v6 fontAttributes];
    v8 = [v7 mutableCopy];

    v9 = *MEMORY[0x1E69DB8F0];
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69DB8F0]];
    v11 = [v10 mutableCopy];

    if (!v11)
    {
      v11 = [MEMORY[0x1E695DF90] dictionary];
    }

    v12 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB980]];
    [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69DB990]];

    [v8 setObject:v11 forKeyedSubscript:v9];
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
  v3 = [v2 _imageThatSuppressesAccessibilityHairlineThickening];

  return v3;
}

- (void)addEffect:(id)a3 withDescriptiveText:(id)a4 withIdentifier:(id)a5
{
  v127[1] = *MEMORY[0x1E69E9840];
  v126 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(CKEffectPickerView *)self effectLabels];

  if (!v10)
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
  [v22 setText:v9];

  v23 = [(CKEffectPickerView *)self effectLabelFont];
  [v22 setFont:v23];

  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v22 sizeToFit];
  v24 = [(CKEffectPickerView *)self peekContainer];
  [v24 addSubview:v22];

  v25 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v18, v19, v20, v21}];
  [v25 setText:v8];

  v26 = [(CKEffectPickerView *)self effectLabelFont];
  [v25 setFont:v26];

  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v25 sizeToFit];
  [v25 setHidden:1];
  v27 = [(CKEffectPickerView *)self peekContainer];
  [v27 addSubview:v25];

  LOBYTE(v27) = UIAccessibilityIsReduceTransparencyEnabled();
  v28 = v27 | UIAccessibilityDarkerSystemColorsEnabled();
  v29 = +[CKUIBehavior sharedBehaviors];
  v30 = [v29 theme];
  v31 = [v30 fsmPickerPrimaryColor];
  [v22 setTextColor:v31];

  v32 = +[CKUIBehavior sharedBehaviors];
  v33 = [v32 theme];
  v34 = [v33 fsmPickerPrimaryColor];
  [v25 setTextColor:v34];

  if ((v28 & 1) == 0)
  {
    v35 = [v22 layer];
    setUpVibrancyForLayer(v35, 0, ![(CKEffectPickerView *)self isInDarkMode], [(CKEffectPickerView *)self isInDarkMode]);

    v36 = [v25 layer];
    setUpVibrancyForLayer(v36, 0, ![(CKEffectPickerView *)self isInDarkMode], [(CKEffectPickerView *)self isInDarkMode]);
  }

  v125 = v22;
  v37 = [(CKEffectPickerView *)self sendImage];
  [v37 size];
  UIGraphicsBeginImageContext(v128);
  [v37 size];
  UIGraphicsBeginImageContextWithOptions(v129, 0, 0.0);
  v38 = +[CKUIBehavior sharedBehaviors];
  v39 = [v38 theme];
  v40 = v39;
  v124 = v25;
  if (v28)
  {
    [v39 fsmPickerPrimaryColor];
  }

  else
  {
    [v39 fsmPickerDotColor];
  }
  v41 = ;
  [v41 set];

  v42 = MEMORY[0x1E69DC728];
  [v37 size];
  v44 = v43 * 0.5 + -4.5;
  [v37 size];
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
  v49 = [(CKEffectPickerView *)self roundedContainerView];
  [v49 addSubview:v48];

  [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v48 addTarget:self action:sel__touchUpInsideDotButton_ forControlEvents:64];
  if ((v28 & 1) == 0)
  {
    [v48 setOpaque:0];
    v50 = [(CKEffectPickerView *)self isInDarkMode];
    v51 = MEMORY[0x1E6979CF8];
    if (!v50)
    {
      v51 = MEMORY[0x1E6979CE8];
    }

    v52 = *v51;
    v53 = [v48 layer];
    v54 = [MEMORY[0x1E6979378] filterWithType:v52];

    [v53 setCompositingFilter:v54];
  }

  v55 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v56 = [v55 isEntryViewRefreshEnabled];

  if (v56)
  {
    v57 = objc_alloc_init(CKGlassSendButton);
    [(CKGlassSendButton *)v57 setCkTintColor:[(CKEffectPickerView *)self controlColor]];
    v58 = v57;
    [(CKGlassSendButton *)v58 setOpaque:0];
    +[CKGlassSendButton buttonSize];
    [(CKGlassSendButton *)v58 setBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v59, v60];
    v61 = [(CKEffectPickerView *)self roundedContainerView];
    [v61 addSubview:v58];

    v62 = v58;
  }

  else
  {
    v63 = +[CKUIBehavior sharedBehaviors];
    v64 = [v63 theme];
    v62 = [v64 sendButtonColorForColorType:{-[CKEffectPickerView controlColor](self, "controlColor")}];

    v58 = [MEMORY[0x1E69DC738] buttonWithType:1];
    [(CKGlassSendButton *)v58 setImage:v37 forState:0];
    [(CKGlassSendButton *)v58 setImage:v37 forState:4];
    [(CKGlassSendButton *)v58 setOpaque:0];
    [(CKGlassSendButton *)v58 setBounds:0.0, 0.0, 52.0, 52.0];
    v65 = [(CKEffectPickerView *)self roundedContainerView];
    [v65 addSubview:v58];

    [(CKGlassSendButton *)v58 setTintColor:v62];
  }

  v123 = v37;
  [(CKGlassSendButton *)v58 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CKGlassSendButton *)v58 addTarget:self action:sel__touchUpInsideSendButton_ forControlEvents:64];
  [(CKGlassSendButton *)v58 setHidden:1];

  [v48 bounds];
  v67 = v66;
  [(CKGlassSendButton *)v58 bounds];
  v69 = v67 - v68;
  v70 = [(CKEffectPickerView *)self stylingMetrics];
  [v70 roundTrackPadding];
  v72 = v71 + v69 * -0.5;

  [(CKEffectPickerView *)self marginBetweenPickerDotButtons];
  v74 = v73;
  v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v76 = [(CKEffectPickerView *)self effectLabels];
  v77 = [v76 count];

  v78 = 0x1E696A000uLL;
  v79 = MEMORY[0x1E696ACD8];
  if (v77)
  {
    v80 = [(CKEffectPickerView *)self effectDotButtons];
    v81 = [v80 lastObject];
    v82 = [v79 constraintWithItem:v48 attribute:10 relatedBy:0 toItem:v81 attribute:10 multiplier:1.0 constant:-(v74 + 9.0)];

    v83 = [(CKEffectPickerView *)self roundedContainerView];
    [v83 addConstraint:v82];

    [v75 addObject:v82];
    v84 = [(CKEffectPickerView *)self effectDotConstraintsThatChange];
    v85 = [(CKEffectPickerView *)self effectIdentifiers];
    v86 = [(CKEffectPickerView *)self effectLabels];
    [v85 objectAtIndex:{objc_msgSend(v86, "count") - 1}];
    v88 = v87 = v75;
    v89 = [v84 objectForKey:v88];

    v75 = v87;
    v78 = 0x1E696A000;

    [v89 addObject:v82];
  }

  else
  {
    v90 = [(CKEffectPickerView *)self roundedContainerView];
    v82 = [v79 constraintWithItem:v48 attribute:4 relatedBy:0 toItem:v90 attribute:4 multiplier:1.0 constant:-v72];

    v89 = [(CKEffectPickerView *)self roundedContainerView];
    [v89 addConstraint:v82];
  }

  v91 = [(CKEffectPickerView *)self effectDotConstraintsThatChange];
  [v91 setObject:v75 forKey:v126];

  v92 = *(v78 + 3288);
  v93 = [(CKEffectPickerView *)self roundedContainerView];
  v94 = [v92 constraintWithItem:v48 attribute:9 relatedBy:0 toItem:v93 attribute:9 multiplier:1.0 constant:0.0];

  v95 = [(CKEffectPickerView *)self roundedContainerView];
  [v95 addConstraint:v94];

  v96 = [(CKEffectPickerView *)self lastEffectDotTopConstraint];

  if (v96)
  {
    v97 = *(v78 + 3288);
    v98 = [(CKEffectPickerView *)self lastEffectDotTopConstraint];
    v127[0] = v98;
    v99 = [MEMORY[0x1E695DEC8] arrayWithObjects:v127 count:1];
    [v97 deactivateConstraints:v99];

    v100 = [(CKEffectPickerView *)self lastEffectDotTopConstraint];
    [(CKEffectPickerView *)self removeConstraint:v100];
  }

  v101 = *(v78 + 3288);
  v102 = [(CKEffectPickerView *)self roundedContainerView];
  v103 = [v101 constraintWithItem:v48 attribute:3 relatedBy:0 toItem:v102 attribute:3 multiplier:1.0 constant:v72];

  v104 = [(CKEffectPickerView *)self roundedContainerView];
  [v104 addConstraint:v103];

  [(CKEffectPickerView *)self setLastEffectDotTopConstraint:v103];
  v105 = [*(v78 + 3288) constraintWithItem:v58 attribute:9 relatedBy:0 toItem:v48 attribute:9 multiplier:1.0 constant:0.0];
  v106 = [*(v78 + 3288) constraintWithItem:v58 attribute:10 relatedBy:0 toItem:v48 attribute:10 multiplier:1.0 constant:0.0];
  v107 = [(CKEffectPickerView *)self roundedContainerView];
  [v107 addConstraint:v105];

  v108 = [(CKEffectPickerView *)self roundedContainerView];
  [v108 addConstraint:v106];

  v109 = [*(v78 + 3288) constraintWithItem:v48 attribute:10 relatedBy:0 toItem:v125 attribute:10 multiplier:1.0 constant:0.0];
  v110 = *(v78 + 3288);
  v111 = [(CKEffectPickerView *)self roundedContainerView];
  v112 = [v110 constraintWithItem:v111 attribute:5 relatedBy:0 toItem:v125 attribute:6 multiplier:1.0 constant:22.0];

  [(CKEffectPickerView *)self addConstraint:v109];
  [(CKEffectPickerView *)self addConstraint:v112];

  v113 = [*(v78 + 3288) constraintWithItem:v125 attribute:6 relatedBy:0 toItem:v124 attribute:6 multiplier:1.0 constant:0.0];
  v114 = [*(v78 + 3288) constraintWithItem:v125 attribute:10 relatedBy:0 toItem:v124 attribute:10 multiplier:1.0 constant:0.0];
  [(CKEffectPickerView *)self addConstraint:v113];
  [(CKEffectPickerView *)self addConstraint:v114];

  v115 = [(CKEffectPickerView *)self effectLabels];
  [v115 addObject:v125];

  v116 = [(CKEffectPickerView *)self effectDescriptiveLabels];
  [v116 addObject:v124];

  v117 = [(CKEffectPickerView *)self effectSendButtons];
  [v117 addObject:v58];

  v118 = [(CKEffectPickerView *)self effectDotButtons];
  [v118 addObject:v48];

  v119 = [(CKEffectPickerView *)self effectIdentifiers];
  [v119 addObject:v126];

  v120 = [(CKEffectPickerView *)self peekContainer];
  v121 = [(CKEffectPickerView *)self balloonView];
  [v120 addSubview:v121];
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

  v13 = [(CKEffectPickerView *)self balloonView];
  [v13 prepareForDisplay];

  v14 = [(CKEffectPickerView *)self balloonView];
  [v14 setNeedsLayout];

  v15 = [(CKEffectPickerView *)self balloonView];
  [v15 setNeedsDisplay];

  v16 = [(CKEffectPickerView *)self balloonView];
  [v16 layoutIfNeeded];

  v17 = [(CKEffectPickerView *)self balloonView];
  [v17 sizeThatFits:{v12, 1.79769313e308}];
  v19 = v18;
  v21 = v20;

  v22 = [(CKEffectPickerView *)self balloonView];
  [v22 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v19, v21}];
}

- (void)_setBalloonText:(id)a3 withColor:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(CKEffectPickerView *)self balloonView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v12];
    v10 = [v9 length];
    [v9 addAttribute:*MEMORY[0x1E69DB650] value:v6 range:{0, v10}];
    v11 = [(CKEffectPickerView *)self balloonView];
    [v11 setAttributedText:v9];

    [(CKEffectPickerView *)self _resizeBalloon];
  }
}

- (void)_adjustMainLabelAndTypeSegmentedControlIfNecessary
{
  [(CKEffectPickerView *)self _setNeedsSwitcherAnimationIfNecessary];
  if ([(CKEffectPickerView *)self needsSwitcherAnimation])
  {
    v3 = [(CKEffectPickerView *)self mainLabelBottomConstraint];
    [v3 setConstant:40.0];

    v4 = [(CKEffectPickerView *)self typeSegmentedControlBottomConstraint];
    v5 = [(CKEffectPickerView *)self mainLabel];
    [v5 bounds];
    [v4 setConstant:CGRectGetHeight(v10) + 40.0];

    v6 = [(CKEffectPickerView *)self typeSegmentedControl];
    [v6 setAlpha:0.0];

    v7 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LOBYTE(v5) = [v7 isEntryViewRefreshEnabled];

    if ((v5 & 1) == 0)
    {
      v8 = [(CKEffectPickerView *)self segmentedBackdrop];
      [v8 setHidden:1];
    }

    [(CKEffectPickerView *)self layoutIfNeeded];
  }
}

- (void)_updateBalloonViewPositionAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(CKEffectPickerView *)self isAnimating])
  {
    return;
  }

  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [(CKEffectPickerView *)self typeSegmentedControl];
  v10 = [v9 selectedSegmentIndex];

  if (v10 == 1)
  {
    v11 = [(CKEffectPickerView *)self effectSendButtons];
    v12 = [v11 objectAtIndex:0];
    [v12 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = [(CKEffectPickerView *)self roundedContainerView];
    [v21 convertRect:self toView:{v14, v16, v18, v20}];
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
    v30 = [(CKEffectPickerView *)self effectSendButtons];
    v21 = [v30 objectAtIndex:{-[CKEffectPickerView selectedIndex](self, "selectedIndex")}];

    [v21 frame];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = [(CKEffectPickerView *)self roundedContainerView];
    [v39 convertRect:self toView:{v32, v34, v36, v38}];
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
    v44 = [(CKEffectPickerView *)self closeButton];
    [v44 frame];
    v23 = v45;
    v25 = v46;
    v27 = v47;
    v29 = v48;
  }

  v49 = [(CKEffectPickerView *)self balloonView];
  [v49 frame];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;

  [(CKEffectPickerView *)self _updateBalloonViewOrigin:v51 forButtonFrame:v53, v55, v57, v23, v25, v27, v29];
  v62 = v58;
  v63 = v59;
  v64 = v60;
  v65 = v61;
  if (v3)
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
    v66 = [(CKEffectPickerView *)self balloonView];
    [v66 setFrame:{v62, v63, v64, v65}];
  }
}

void __57__CKEffectPickerView__updateBalloonViewPositionAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) balloonView];
  [v2 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

- (CGRect)_updateBalloonViewOrigin:(CGRect)a3 forButtonFrame:(CGRect)a4
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
  v3 = [(CKEffectPickerView *)self momentsCollectionView];
  [v3 frame];
  v5 = v4;

  v6 = [(CKEffectPickerView *)self momentsCollectionView];
  [v6 contentOffset];
  v8 = v7 / v5;

  v9 = v8;
  v10 = vcvtms_s32_f32(v9);
  v11 = vcvtps_s32_f32(v9);
  v12 = v10;
  if (v10 < 0)
  {
    v16 = 0;
  }

  else
  {
    v13 = [(CKEffectPickerView *)self momentsCollectionView];
    v14 = [MEMORY[0x1E696AC88] indexPathForItem:v10 inSection:0];
    v15 = [v13 cellForItemAtIndexPath:v14];

    v16 = [v15 effect];
  }

  v17 = v8 - v12;
  v18 = [(CKEffectPickerView *)self momentIdentifiers];
  v19 = [v18 count];

  if (v19 <= v11)
  {
    v23 = 0;
  }

  else
  {
    v20 = [(CKEffectPickerView *)self momentsCollectionView];
    v21 = [MEMORY[0x1E696AC88] indexPathForItem:v11 inSection:0];
    v22 = [v20 cellForItemAtIndexPath:v21];

    v23 = [v22 effect];
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v68 = v23;
  if (v17 > 0.5)
  {
    v24 = v23;
  }

  else
  {
    v24 = v16;
  }

  v25 = [v24 messageFilters];
  v26 = [v25 countByEnumeratingWithState:&v72 objects:v76 count:16];
  if (v26)
  {
    v27 = v16;
    v28 = *v73;
    while (2)
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v73 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v72 + 1) + 8 * i);
        if ([v30 type] == 6)
        {
          v31 = [(CKEffectPickerView *)self balloonView];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v26 = v30;
            goto LABEL_21;
          }
        }
      }

      v26 = [v25 countByEnumeratingWithState:&v72 objects:v76 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }

LABEL_21:
    v16 = v27;
  }

  v33 = [(CKEffectPickerView *)self balloonView];
  v34 = [v33 filters];
  if (![v34 count])
  {

    v38 = v68;
    goto LABEL_26;
  }

  v35 = [(CKEffectPickerView *)self balloonView];
  v36 = [v35 filters];
  v37 = [v36 containsObject:v26];

  v38 = v68;
  if ((v37 & 1) == 0)
  {
    v33 = [(CKEffectPickerView *)self balloonView];
    [v33 clearFilters];
LABEL_26:
  }

  if (v26)
  {
    v39 = [(CKEffectPickerView *)self balloonView];
    v40 = [v39 filters];
    v41 = [v40 containsObject:v26];

    if ((v41 & 1) == 0)
    {
      v42 = [(CKEffectPickerView *)self balloonView];
      [v42 addFilter:v26];
    }
  }

  v43 = [v16 backgroundColor];
  v44 = [v38 backgroundColor];
  v45 = v44;
  if (v43)
  {
    if (v44)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v43 = [MEMORY[0x1E69DC888] clearColor];
    if (v45)
    {
      goto LABEL_32;
    }
  }

  v45 = [MEMORY[0x1E69DC888] clearColor];
LABEL_32:
  v46 = [v43 colorByBlendingWithColor:v45 withFraction:v17];
  v70 = 0.0;
  v71 = 0.0;
  [v46 getHue:0 saturation:0 brightness:&v71 alpha:&v70];
  v47 = v70 > 0.5 && v71 < 0.5;
  [(CKEffectPickerView *)self setUsesDarkVibrancyForLayers:v47, v70, 0.5, v71];
  if (!UIAccessibilityIsReduceTransparencyEnabled() && !UIAccessibilityDarkerSystemColorsEnabled())
  {
    v69 = v16;
    v48 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v49 = [v48 isEntryViewRefreshEnabled];

    if ((v49 & 1) == 0)
    {
      v50 = [(CKEffectPickerView *)self closeButton];
      v51 = [v50 layer];
      setUpVibrancyForLayer(v51, v47, ![(CKEffectPickerView *)self isInDarkMode], [(CKEffectPickerView *)self isInDarkMode]);
    }

    v52 = [(CKEffectPickerView *)self momentTitleLabel];
    v53 = [v52 layer];
    setUpVibrancyForLayer(v53, v47, ![(CKEffectPickerView *)self isInDarkMode], [(CKEffectPickerView *)self isInDarkMode]);

    v54 = [(CKEffectPickerView *)self pageControl];
    v55 = [v54 layer];
    setUpVibrancyForLayer(v55, v47, 0, [(CKEffectPickerView *)self isInDarkMode]);

    v56 = [(CKEffectPickerView *)self mainLabel];
    v57 = [v56 layer];
    setUpVibrancyForLayer(v57, v47, ![(CKEffectPickerView *)self isInDarkMode], [(CKEffectPickerView *)self isInDarkMode]);

    v58 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LOBYTE(v57) = [v58 isEntryViewRefreshEnabled];

    if ((v57 & 1) == 0)
    {
      v59 = [(CKEffectPickerView *)self typeSegmentedControl];
      v60 = [v59 layer];
      setUpVibrancyForLayer(v60, v47, ![(CKEffectPickerView *)self isInDarkMode], [(CKEffectPickerView *)self isInDarkMode]);
    }

    v61 = [(CKEffectPickerView *)self pageControl];
    if (v47)
    {
      v62 = [MEMORY[0x1E69DC888] whiteColor];
      [v61 setCurrentPageIndicatorTintColor:v62];
    }

    else
    {
      v62 = +[CKUIBehavior sharedBehaviors];
      v63 = [v62 theme];
      v64 = [v63 fsmPickerCurrentPageIndicatorColor];
      [v61 setCurrentPageIndicatorTintColor:v64];
    }

    v16 = v69;
  }

  v65 = [(CKEffectPickerView *)self momentsCollectionView];
  [v65 setBackgroundColor:v46];

  v66 = [(CKEffectPickerView *)self backdrop];
  [v66 setEnabled:0];

  v67 = [(CKEffectPickerView *)self backdrop];
  [v67 setEnabled:1];
}

- (id)_blackTextReplica
{
  v24 = *MEMORY[0x1E69E9840];
  [(CKEffectPickerView *)self _resizeBalloon];
  v3 = [(CKEffectPickerView *)self balloonView];
  v4 = objc_alloc(MEMORY[0x1E69DD250]);
  [v3 frame];
  v5 = [v4 initWithFrame:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [v3 subviews];
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = *v20;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
      v14 = [v7 attributedText];
      v6 = [v13 initWithAttributedString:v14];

      v15 = [v6 length];
      v16 = *MEMORY[0x1E69DB650];
      v17 = [MEMORY[0x1E69DC888] blackColor];
      [v6 addAttribute:v16 value:v17 range:{0, v15}];

      [v11 setAttributedText:v6];
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
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v2 userInterfaceIdiom] == 1)
  {
    v3 = [MEMORY[0x1E69DCBB8] activeKeyboard];
    v4 = [v3 window];
    v5 = v4 != 0;
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
  v3 = [(CKEffectPickerView *)self balloonView];
  v4 = [v3 layer];
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
  [v4 setTransform:&v184];

  v5 = [(CKEffectPickerView *)self hintBlackText];
  v6 = [v5 layer];
  *&v184.m31 = v171;
  *&v184.m33 = v169;
  *&v184.m41 = v167;
  *&v184.m43 = *obja;
  *&v184.m11 = v163;
  *&v184.m13 = v161;
  *&v184.m21 = v159;
  *&v184.m23 = v157;
  [v6 setTransform:&v184];

  v7 = [(CKEffectPickerView *)self hintBlackText];
  [v7 removeFromSuperview];

  [(CKEffectPickerView *)self setHintBlackText:0];
  v8 = [(CKEffectPickerView *)self hintSendButton];
  [v8 removeFromSuperview];

  [(CKEffectPickerView *)self setHintSendButton:0];
  v9 = [CKTransientReplicaButtonContainer alloc];
  v10 = [(CKEffectPickerView *)self closeButton];
  [v10 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(CKEffectPickerView *)self isInDarkMode];
  v20 = +[CKUIBehavior sharedBehaviors];
  v21 = [v20 theme];
  v22 = [v21 fsmPickerCloseButtonColor];
  v23 = [(CKTransientReplicaButtonContainer *)v9 initWithFrame:0 hasDarkVibrancy:v19 isInDarkMode:v22 color:[(CKEffectPickerView *)self controlColor] sendColor:v12, v14, v16, v18];

  v24 = [(CKEffectPickerView *)self peekContainer];
  [v24 addSubview:v23];

  v25 = [(CKEffectPickerView *)self closeButton];
  [v25 setHidden:1];

  v26 = [(CKTransientReplicaButtonContainer *)v23 cancelButtonCircle];
  v27 = [v26 layer];
  [v27 setOpacity:0.0];

  v28 = [(CKTransientReplicaButtonContainer *)v23 cancelButtonGlyphLayer];
  CATransform3DMakeScale(&v184, 0.0, 0.0, 1.0);
  [v28 setTransform:&v184];

  v29 = [(CKEffectPickerView *)self peekContainer];
  v30 = [(CKEffectPickerView *)self balloonView];
  [v29 addSubview:v30];

  [(CKEffectPickerView *)self _resizeBalloon];
  [(CKEffectPickerView *)self _updateBalloonViewPositionAnimated:0];
  v31 = [(CKEffectPickerView *)self balloonView];
  [v31 frame];
  v33 = v32;
  [v31 frame];
  v35 = v34;
  v36 = [v31 layer];
  [v36 anchorPoint];
  v38 = v33 + v35 * v37;

  [v31 frame];
  v40 = v39;
  [v31 frame];
  v42 = v41;
  v43 = [v31 layer];
  [v43 anchorPoint];
  v45 = v40 + v42 * v44;

  [(CKEffectPickerView *)self balloonViewOrigin];
  [v31 setOrigin:?];
  v46 = [(CKEffectPickerView *)self _blackTextReplica];
  [(CKEffectPickerView *)self balloonViewOrigin];
  [v46 setOrigin:?];
  v47 = [(CKEffectPickerView *)self peekContainer];
  [v47 addSubview:v46];

  v48 = [(CKEffectPickerView *)self balloonView];
  v49 = [v48 layer];
  [v49 setOpacity:0.0];

  v50 = [(CKEffectPickerView *)self roundedContainerView];
  v51 = [v50 layer];
  [v51 setOpacity:0.0];

  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  v52 = [(CKEffectPickerView *)self effectLabels];
  v53 = [v52 countByEnumeratingWithState:&v180 objects:v186 count:16];
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
          objc_enumerationMutation(v52);
        }

        v57 = [*(*(&v180 + 1) + 8 * i) layer];
        [v57 setOpacity:0.0];
      }

      v54 = [v52 countByEnumeratingWithState:&v180 objects:v186 count:16];
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
  v164 = v46;
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

  v64 = [(CKEffectPickerView *)self backdrop];
  v156 = v60;
  [v64 addAnimation:v60 forKey:@"filters.gaussianBlur.inputRadius"];

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
  v73 = [(CKEffectPickerView *)self blueContrastLayer];
  [v73 addAnimation:v65 forKey:@"opacity"];

  v74 = [(CKTransientReplicaButtonContainer *)v59 sendButtonCircle];
  v155 = v71;
  [v74 addAnimation:v71 forKey:@"opacity"];

  v75 = [(CKTransientReplicaButtonContainer *)v59 cancelButtonCircle];
  [v75 addAnimation:v65 forKey:@"opacity"];

  if (UIAccessibilityIsReduceTransparencyEnabled() || UIAccessibilityDarkerSystemColorsEnabled())
  {
    v76 = [(CKEffectPickerView *)self accessibilityBackdropView];
    [v76 addAnimation:v65 forKey:@"opacity"];
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
  v81 = [(CKTransientReplicaButtonContainer *)v59 sendButtonGlyphLayer];
  v153 = v79;
  [v81 addAnimation:v79 forKey:@"transform.scale"];

  v82 = [(CKTransientReplicaButtonContainer *)v59 cancelButtonGlyphLayer];
  v154 = v77;
  [v82 addAnimation:v77 forKey:@"transform.scale"];

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

  [v31 addAnimation:v83 forKey:@"position.x"];
  [v31 addAnimation:v86 forKey:@"position.y"];
  v158 = v31;
  v170 = v65;
  [v31 addAnimation:v65 forKey:@"opacity"];
  v89 = v70;
  if (v164)
  {
    [v164 addAnimation:v70 forKey:@"opacity"];
    [v164 addAnimation:v83 forKey:@"position.x"];
    [v164 addAnimation:v86 forKey:@"position.y"];
  }

  v151 = v86;
  v152 = v83;
  v90 = [(CKEffectPickerView *)self closeButton];
  [v90 frame];
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
  v96 = [(CKEffectPickerView *)self effectLabels];
  v97 = [v96 lastObject];
  [v97 frame];
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
  v160 = self;
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
        v115 = [v108 layer];
        [v115 anchorPoint];
        v117 = [v114 numberWithDouble:v105 + v110 + v112 * v116];
        [v113 setFromValue:v117];

        v118 = MEMORY[0x1E696AD98];
        v119 = [v108 layer];
        [v119 anchorPoint];
        v121 = [v118 numberWithDouble:v110 + v112 * v120];
        [v113 setToValue:v121];

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

  v126 = [(CKEffectPickerView *)v160 roundedContainerView];
  [v126 frame];
  v128 = v127;
  v130 = v129;

  v131 = objc_alloc_init(MEMORY[0x1E6979318]);
  v132 = MEMORY[0x1E696AD98];
  v133 = [(CKEffectPickerView *)v160 roundedContainerView];
  v134 = [v133 layer];
  [v134 anchorPoint];
  v136 = [v132 numberWithDouble:v128 + v130 * v135 + 150.0];
  [v131 setFromValue:v136];

  v137 = MEMORY[0x1E696AD98];
  v138 = [(CKEffectPickerView *)v160 roundedContainerView];
  v139 = [v138 layer];
  [v139 anchorPoint];
  v141 = [v137 numberWithDouble:v128 + v130 * v140];
  [v131 setToValue:v141];

  [v131 setRemovedOnCompletion:0];
  [v131 setFillMode:v172];
  v142 = *MEMORY[0x1E6979EB8];
  v143 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v131 setTimingFunction:v143];

  [v131 setBeginTime:CACurrentMediaTime()];
  v144 = [(CKEffectPickerView *)v160 roundedContainerView];
  [v144 addAnimation:v131 forKey:@"position.y"];

  v145 = [(CKEffectPickerView *)v160 roundedContainerView];
  [v145 addAnimation:v170 forKey:@"opacity"];

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
  v149 = [(CKEffectPickerView *)v160 roundedContainerView];
  [v149 addAnimation:v146 forKey:@"bounds.size.height"];

  [MEMORY[0x1E6979518] commit];
  v150 = [(CKEffectPickerView *)v160 peekContainer];
  [v150 setHidden:0];
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
  v3 = [(CKEffectPickerView *)self balloonView];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 subviews];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v5)
  {
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (v3)
  {
    [v3 setInvisibleInkEffectEnabled:0];
    [v3 prepareForDisplayIfNeeded];
    v9 = objc_alloc_init(CKSendAnimationContext);
    v19 = v3;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    [(CKSendAnimationContext *)v9 setThrowBalloonViews:v10];

    v11 = v5;
    if (!v5)
    {
      v11 = [MEMORY[0x1E695DFB0] null];
    }

    v18 = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    [(CKSendAnimationContext *)v9 setAnimatableTextViews:v12];

    if (!v5)
    {
    }

    [(CKSendAnimationContext *)v9 setIsSender:1];
    [(CKSendAnimationContext *)v9 setImpactIdentifier:@"nil"];
    v13 = [(CKEffectPickerView *)self dummyAnimator];
    [v13 stopAnimationWithSendAnimationContext:v9];
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
  v4 = [(CKEffectPickerView *)self closeButton];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(CKEffectPickerView *)self usesDarkVibrancyForLayers];
  v14 = [(CKEffectPickerView *)self isInDarkMode];
  v15 = +[CKUIBehavior sharedBehaviors];
  v16 = [v15 theme];
  v17 = [v16 fsmPickerCloseButtonColor];
  v18 = [(CKTransientReplicaButtonContainer *)v3 initWithFrame:v13 hasDarkVibrancy:v14 isInDarkMode:v17 color:[(CKEffectPickerView *)self controlColor] sendColor:v6, v8, v10, v12];

  v19 = [(CKEffectPickerView *)self peekContainer];
  [v19 addSubview:v18];

  v20 = [(CKEffectPickerView *)self closeButton];
  [v20 setHidden:1];

  v21 = [(CKTransientReplicaButtonContainer *)v18 sendButtonCircle];
  v22 = [v21 layer];
  [v22 setOpacity:0.0];

  v155 = v18;
  v23 = [(CKTransientReplicaButtonContainer *)v18 sendButtonGlyphLayer];
  [v23 setOpacity:0.0];

  [(CKEffectPickerView *)self _resizeBalloon];
  [(CKEffectPickerView *)self _updateBalloonViewPositionAnimated:0];
  v24 = [(CKEffectPickerView *)self balloonView];
  [(CKEffectPickerView *)self balloonViewOrigin];
  v26 = v25;
  [v24 frame];
  v28 = v27;
  v29 = [v24 layer];
  [v29 anchorPoint];
  v31 = v30;

  [(CKEffectPickerView *)self balloonViewOrigin];
  v33 = v32;
  [v24 frame];
  v35 = v34;
  v154 = v24;
  v36 = [v24 layer];
  [v36 anchorPoint];
  v38 = v37;

  v39 = [(CKEffectPickerView *)self _blackTextReplica];
  if (v39)
  {
    v40 = [(CKEffectPickerView *)self peekContainer];
    [v40 addSubview:v39];

    v41 = [v39 layer];
    [v41 setOpacity:0.0];
  }

  v153 = v39;
  v42 = [(CKEffectPickerView *)self backdrop];
  [v42 setShouldRasterize:0];

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

  v47 = [(CKEffectPickerView *)self backdrop];
  v151 = v43;
  [v47 addAnimation:v43 forKey:@"filters.gaussianBlur.inputRadius"];

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

  v58 = [(CKTransientReplicaButtonContainer *)v155 sendButtonCircle];
  [v58 addAnimation:v56 forKey:@"opacity"];

  v59 = [(CKTransientReplicaButtonContainer *)v155 sendButtonGlyphLayer];
  [v59 addAnimation:v56 forKey:@"opacity"];

  v60 = [(CKTransientReplicaButtonContainer *)v155 cancelButtonCircle];
  [v60 addAnimation:v159 forKey:@"opacity"];

  v61 = [(CKEffectPickerView *)self momentTitleLabel];
  [v61 addAnimation:v53 forKey:@"opacity"];

  v62 = [(CKEffectPickerView *)self sendMomentButton];
  [v62 addAnimation:v53 forKey:@"opacity"];

  v63 = [(CKEffectPickerView *)self pageControl];
  [v63 addAnimation:v53 forKey:@"opacity"];

  v64 = [(CKEffectPickerView *)self backgroundView];
  [v64 addAnimation:v53 forKey:@"opacity"];

  v65 = [(CKEffectPickerView *)self momentsCollectionView];
  [v65 addAnimation:v53 forKey:@"opacity"];

  v66 = [(CKEffectPickerView *)self mainLabel];
  [v66 addAnimation:v53 forKey:@"opacity"];

  v67 = [(CKEffectPickerView *)self typeSegmentedControl];
  [v67 addAnimation:v53 forKey:@"opacity"];

  v68 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LOBYTE(v67) = [v68 isEntryViewRefreshEnabled];

  if ((v67 & 1) == 0)
  {
    v69 = [(CKEffectPickerView *)self segmentedBackdrop];
    [v69 addAnimation:v53 forKey:@"opacity"];
  }

  v148 = v56;
  v70 = v26 + v28 * v31;
  v71 = [(CKEffectPickerView *)self blueContrastLayer];
  [v71 addAnimation:v53 forKey:@"opacity"];

  if (UIAccessibilityIsReduceTransparencyEnabled() || UIAccessibilityDarkerSystemColorsEnabled())
  {
    v72 = [(CKEffectPickerView *)self accessibilityBackdropView];
    [v72 addAnimation:v53 forKey:@"opacity"];
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
  v77 = [(CKTransientReplicaButtonContainer *)v155 sendButtonGlyphLayer];
  v147 = v73;
  [v77 addAnimation:v73 forKey:@"transform.scale"];

  v78 = [(CKTransientReplicaButtonContainer *)v155 cancelButtonGlyphLayer];
  v146 = v75;
  [v78 addAnimation:v75 forKey:@"transform.scale"];

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
  v85 = [(CKEffectPickerView *)self closeButton];
  [v85 frame];
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
  v91 = [(CKEffectPickerView *)self effectLabels];
  v92 = [v91 lastObject];
  [v92 frame];
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
  v152 = self;
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
        v110 = [v103 layer];
        [v110 anchorPoint];
        v112 = [v109 numberWithDouble:v105 + v107 * v111];
        [v108 setFromValue:v112];

        v113 = MEMORY[0x1E696AD98];
        v114 = [v103 layer];
        [v114 anchorPoint];
        v116 = [v113 numberWithDouble:v100 + v105 + v107 * v115];
        [v108 setToValue:v116];

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

  v121 = [(CKEffectPickerView *)self roundedContainerView];
  [v121 frame];
  v123 = v122;
  v125 = v124;

  v126 = objc_alloc_init(MEMORY[0x1E6979318]);
  v127 = MEMORY[0x1E696AD98];
  v128 = [(CKEffectPickerView *)v152 roundedContainerView];
  v129 = [v128 layer];
  [v129 anchorPoint];
  v131 = [v127 numberWithDouble:v123 + v125 * v130];
  [v126 setFromValue:v131];

  v132 = MEMORY[0x1E696AD98];
  v133 = [(CKEffectPickerView *)v152 roundedContainerView];
  v134 = [v133 layer];
  [v134 anchorPoint];
  v136 = [v132 numberWithDouble:v123 + v125 * v135 + 150.0];
  [v126 setToValue:v136];

  [v126 setRemovedOnCompletion:0];
  [v126 setFillMode:v158];
  v137 = [MEMORY[0x1E69793D0] functionWithName:v157];
  [v126 setTimingFunction:v137];

  [v126 setBeginTime:CACurrentMediaTime()];
  v138 = [(CKEffectPickerView *)v152 roundedContainerView];
  [v138 addAnimation:v126 forKey:@"position.y"];

  v139 = [(CKEffectPickerView *)v152 roundedContainerView];
  [v139 addAnimation:v159 forKey:@"opacity"];

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
  v143 = [(CKEffectPickerView *)v152 roundedContainerView];
  [v143 addAnimation:v140 forKey:@"bounds.size.height"];

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

- (id)_glyphLayerForButtonAnimationWithGlyphName:(id)a3
{
  v3 = [MEMORY[0x1E69DCAB8] ckImageNamed:a3];
  [v3 size];
  v5 = v4;
  v7 = v6;
  v8 = [MEMORY[0x1E6979398] layer];
  [v8 setContents:{objc_msgSend(v3, "CGImage")}];
  [v8 setBounds:{0.0, 0.0, v5, v7}];
  v9 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
  [v8 setCompositingFilter:v9];

  return v8;
}

- (void)_animateSelectedEffectLabelAtIndex:(unint64_t)a3 fromPreviousIndex:(unint64_t)a4
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
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(CKEffectPickerView *)self effectLabels];
    v8 = [v7 objectAtIndex:a3];
    v9 = v46[5];
    v46[5] = v8;

    v10 = [(CKEffectPickerView *)self effectDescriptiveLabels];
    v11 = [v10 objectAtIndex:a3];
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
  if (a4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [(CKEffectPickerView *)self effectLabels];
    v16 = [v15 objectAtIndex:a4];
    v17 = v34[5];
    v34[5] = v16;

    v18 = [(CKEffectPickerView *)self effectDescriptiveLabels];
    v14 = [v18 objectAtIndex:a4];

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
  v27[7] = a3;
  v28 = xmmword_190DD1870;
  v21 = _Block_copy(v27);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __75__CKEffectPickerView__animateSelectedEffectLabelAtIndex_fromPreviousIndex___block_invoke_4;
  v25[3] = &unk_1E72F5C98;
  v25[4] = self;
  v25[5] = &v33;
  v25[6] = a4;
  v26 = xmmword_190DD1860;
  v22 = _Block_copy(v25);
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:0.25];
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19[2](v19);
    v23 = 0;
    v24 = v21;
  }

  else if (a3 == 0x7FFFFFFFFFFFFFFFLL)
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

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(CKEffectPickerView *)self momentIdentifiers:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CKEffectPickerView *)self momentsCollectionView];
  v7 = +[CKMomentCollectionViewCell reuseIdentifier];
  v8 = [v6 dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:v5];

  v9 = [v8 contentView];
  v10 = [v9 subviews];
  [v10 makeObjectsPerformSelector:sel_removeFromSuperview];

  v11 = [(CKEffectPickerView *)self fsem];
  v12 = [(CKEffectPickerView *)self momentIdentifiers];
  v13 = [v5 row];

  v14 = [v12 objectAtIndex:v13];
  v15 = [v11 effectForIdentifier:v14];

  [v8 setEffect:v15];

  return v8;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [v6 effect];
  if (v7)
  {
    v30 = v7;
    [v6 setupEffectIfNeeded];
    v34 = [(CKEffectPickerView *)self balloonView];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = [v6 effectViews];
    v35 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v35)
    {
      v32 = *v44;
      v33 = v6;
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
          v10 = [v34 superview];
          [v34 center];
          [v10 convertPoint:self toView:?];
          [v9 setFocusPoint:?];

          v11 = [v34 superview];
          [v34 frame];
          [v11 convertRect:self toView:?];
          [v9 setMessageRect:?];

          [v9 setMessageOrientation:{objc_msgSend(v34, "orientation")}];
          v12 = [(CKEffectPickerView *)self balloonView];
          [v12 center];
          v14 = v13;
          v16 = v15;
          v17 = objc_alloc(MEMORY[0x1E69DCA78]);
          [v12 bounds];
          v20 = [v17 initWithSize:{v18, v19}];
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __72__CKEffectPickerView_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke;
          v41[3] = &unk_1E72EBBE8;
          v21 = v12;
          v42 = v21;
          v36 = v20;
          v22 = [v20 imageWithActions:v41];
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v23 = [v6 effectViews];
          v24 = [v23 countByEnumeratingWithState:&v37 objects:v47 count:16];
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
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v37 + 1) + 8 * v27);
                v29 = [v21 superview];
                [v29 convertPoint:self toView:{v14, v16}];
                [v28 setFocusPoint:?];

                [v28 setMessageImage:v22];
                ++v27;
              }

              while (v25 != v27);
              v25 = [v23 countByEnumeratingWithState:&v37 objects:v47 count:16];
            }

            while (v25);
          }

          ++v8;
          v6 = v33;
        }

        while (v8 != v35);
        v35 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v35);
    }

    [v6 animate];
    [(CKEffectPickerView *)self checkAndUpdateForSpotlightEffect:v6];
    [(CKEffectPickerView *)self addAnimationTimerForCell:v6];

    v7 = v30;
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

- (void)checkAndUpdateForSpotlightEffect:(id)a3
{
  v8 = a3;
  if (UIAccessibilityIsReduceTransparencyEnabled() || UIAccessibilityDarkerSystemColorsEnabled())
  {
    v4 = [v8 effect];
    v5 = [v4 identifier];
    v6 = [v5 isEqualToString:@"com.apple.messages.effect.CKSpotlightEffect"];

    if (v6)
    {
      [(CKEffectPickerView *)self updateViewColors:1];
      v7 = [MEMORY[0x1E696AD98] numberWithBool:0];
      [(CKEffectPickerView *)self performSelector:sel_updateViewColors_ withObject:v7 afterDelay:4.0];
    }
  }
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v7 = a4;
  v6 = [v7 effect];

  if (v6)
  {
    [(CKEffectPickerView *)self removeAnimationTimerForCell:v7];
    [v7 stopAnimation];
  }
}

- (void)addAnimationTimerForCell:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E695DFF0];
  v6 = [v4 effect];
  [v6 duration];
  v8 = v7;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __47__CKEffectPickerView_addAnimationTimerForCell___block_invoke;
  v18[3] = &unk_1E72F5CC0;
  v9 = v4;
  v19 = v9;
  objc_copyWeak(&v20, &location);
  v10 = [v5 timerWithTimeInterval:1 repeats:v18 block:v8];

  v11 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [v11 addTimer:v10 forMode:*MEMORY[0x1E695DA28]];

  v12 = [(CKEffectPickerView *)self animationTimers];
  v13 = [v9 effect];
  v14 = [v13 identifier];
  [v12 setObject:v10 forKey:v14];

  v15 = [(CKEffectPickerView *)self animatedCells];
  v16 = [v9 effect];
  v17 = [v16 identifier];
  [v15 setObject:v9 forKey:v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __47__CKEffectPickerView_addAnimationTimerForCell___block_invoke(uint64_t a1)
{
  [*(a1 + 32) animate];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained checkAndUpdateForSpotlightEffect:*(a1 + 32)];
}

- (void)removeAnimationTimerForCell:(id)a3
{
  v4 = a3;
  v5 = [(CKEffectPickerView *)self animationTimers];
  v6 = [v4 effect];
  v7 = [v6 identifier];
  v14 = [v5 objectForKey:v7];

  [v14 invalidate];
  v8 = [(CKEffectPickerView *)self animationTimers];
  v9 = [v4 effect];
  v10 = [v9 identifier];
  [v8 removeObjectForKey:v10];

  v11 = [(CKEffectPickerView *)self animatedCells];
  v12 = [v4 effect];

  v13 = [v12 identifier];
  [v11 removeObjectForKey:v13];
}

- (void)invalidateAllAnimationTimers
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(CKEffectPickerView *)self animationTimers];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * v8++) invalidate];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [(CKEffectPickerView *)self animationTimers];
  [v9 removeAllObjects];

  v10 = [(CKEffectPickerView *)self animatedCells];
  [v10 removeAllObjects];
}

- (void)_setNeedsSwitcherAnimationIfNecessary
{
  if ([objc_opt_class() shouldUseLargeScreenDimension])
  {
    v21 = [(CKEffectPickerView *)self typeSegmentedControl];
    [v21 frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [(CKEffectPickerView *)self roundedContainerView];
    [v11 frame];
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

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = CKEffectPickerView;
  [(CKEffectPickerView *)&v5 traitCollectionDidChange:a3];
  v4 = [(CKEffectPickerView *)self traitCollection];
  -[CKEffectPickerView setIsInDarkMode:](self, "setIsInDarkMode:", [v4 userInterfaceStyle] == 2);

  [(CKEffectPickerView *)self updateViewColors];
}

- (void)handleTouchUp:(CGPoint)a3
{
  v6 = [(CKEffectPickerView *)self hitTest:0 withEvent:a3.x, a3.y];
  v4 = [(CKEffectPickerView *)self effectSendButtons];
  v5 = [v4 containsObject:v6];

  if (v5)
  {
    [(CKEffectPickerView *)self _touchUpInsideSendButton:v6];
  }
}

- (void)handleTouchMoved:(CGPoint)a3
{
  v8 = [(CKEffectPickerView *)self hitTest:0 withEvent:a3.x, a3.y];
  v4 = [(CKEffectPickerView *)self effectDotButtons];
  v5 = [v4 containsObject:v8];

  if (v5)
  {
    [(CKEffectPickerView *)self _touchUpInsideDotButton:v8];
  }

  else
  {
    v6 = [(CKEffectPickerView *)self closeButton];
    if (v8 == v6)
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

- (void)pageControlChanged:(id)a3
{
  v4 = [a3 currentPage];
  v6 = [(CKEffectPickerView *)self momentsCollectionView];
  v5 = [MEMORY[0x1E696AC88] indexPathForItem:v4 inSection:0];
  [v6 scrollToItemAtIndexPath:v5 atScrollPosition:16 animated:1];
}

- (void)updateMomentTitle:(BOOL)a3
{
  v3 = a3;
  v36 = [(CKEffectPickerView *)self momentTitleLabel];
  v5 = [(CKEffectPickerView *)self momentIdentifiers];
  v6 = [(CKEffectPickerView *)self pageControl];
  v7 = [v5 objectAtIndex:{objc_msgSend(v6, "currentPage")}];

  v8 = [(CKEffectPickerView *)self fsem];
  v9 = [v8 localizedPickerTitleForEffectWithIdentifier:v7];

  [v36 setText:v9];
  [v36 sizeToFit];
  v10 = [(CKEffectPickerView *)self balloonView];
  [v10 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v38.origin.x = v12;
  v38.origin.y = v14;
  v38.size.width = v16;
  v38.size.height = v18;
  MaxX = CGRectGetMaxX(v38);
  [v36 frame];
  v20 = MaxX - CGRectGetWidth(v39);
  v21 = +[CKUIBehavior sharedBehaviors];
  [v21 balloonMaskTailSizeForTailShape:2];
  v23 = v20 - v22;
  v40.origin.x = v12;
  v40.origin.y = v14;
  v40.size.width = v16;
  v40.size.height = v18;
  MinY = CGRectGetMinY(v40);
  [v36 frame];
  v25 = MinY - CGRectGetHeight(v41) + -4.0;

  [v36 frame];
  [v36 setFrame:{v23, v25}];
  if (v3)
  {
    v26 = objc_alloc_init(MEMORY[0x1E6979318]);
    [v26 setBeginTime:CACurrentMediaTime()];
    v27 = [(CKEffectPickerView *)self momentTitleLabel];
    v28 = [v27 layer];
    [v28 position];
    v30 = v29;

    v31 = [MEMORY[0x1E696AD98] numberWithDouble:v30 + 30.0];
    [v26 setFromValue:v31];

    v32 = [MEMORY[0x1E696AD98] numberWithDouble:v30];
    [v26 setToValue:v32];

    v33 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
    [v26 setTimingFunction:v33];

    v34 = [(CKEffectPickerView *)self momentTitleLabel];
    v35 = [v34 layer];
    [v35 addAnimation:v26 forKey:@"position.y"];
  }

  [(CKEffectPickerView *)self updateViewColors];
}

- (void)effectTypeDidChange:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  [(CKEffectPickerView *)self _updateBalloonViewPositionAnimated:1];
  [(CKEffectPickerView *)self updateViewColors];
  v4 = [(CKEffectPickerView *)self typeSegmentedControl];
  v5 = [v4 selectedSegmentIndex];

  if (v5)
  {
    [(CKEffectPickerView *)self _stopBalloonAnimation];
    v6 = [(CKEffectPickerView *)self roundedContainerView];
    [v6 setHidden:1];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v7 = [(CKEffectPickerView *)self effectLabels];
    v8 = [v7 countByEnumeratingWithState:&v54 objects:v63 count:16];
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
            objc_enumerationMutation(v7);
          }

          [*(*(&v54 + 1) + 8 * i) setHidden:1];
        }

        v9 = [v7 countByEnumeratingWithState:&v54 objects:v63 count:16];
      }

      while (v9);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v12 = [(CKEffectPickerView *)self effectDescriptiveLabels];
    v13 = [v12 countByEnumeratingWithState:&v50 objects:v62 count:16];
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
            objc_enumerationMutation(v12);
          }

          [*(*(&v50 + 1) + 8 * j) setHidden:1];
        }

        v14 = [v12 countByEnumeratingWithState:&v50 objects:v62 count:16];
      }

      while (v14);
    }

    [(CKEffectPickerView *)self invalidateAllAnimationTimers];
    v17 = [(CKEffectPickerView *)self momentsCollectionView];
    [v17 setDelegate:self];

    v18 = [(CKEffectPickerView *)self momentsCollectionView];
    [v18 setDataSource:self];

    v19 = [(CKEffectPickerView *)self momentsCollectionView];
    [v19 setHidden:0];

    v20 = [(CKEffectPickerView *)self pageControl];
    [v20 setHidden:0];

    v21 = [(CKEffectPickerView *)self sendMomentButton];
    [v21 setHidden:0];

    v22 = [(CKEffectPickerView *)self momentTitleLabel];
    [v22 setHidden:0];

    v23 = [(CKEffectPickerView *)self accessibilitySendBackgroundView];
    [v23 setHidden:0];

    if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
    {
      v24 = [(NSArray *)self->_momentIdentifiers count];
      v25 = [(CKEffectPickerView *)self momentsCollectionView];
      [v25 frame];
      v27 = v26;

      v28 = v27 * v24;
      v29 = [(CKEffectPickerView *)self momentsCollectionView];
      [v29 contentOffset];
      v31 = v30;

      v32 = [(CKEffectPickerView *)self momentsCollectionView];
      [v32 setContentOffset:{v28, v31}];
    }

    v33 = [(CKEffectPickerView *)self pageControl];
    [v33 setCurrentPage:{-[CKEffectPickerView selectedMomentIndex](self, "selectedMomentIndex")}];
    goto LABEL_28;
  }

  v34 = [(CKEffectPickerView *)self roundedContainerView];
  [v34 setHidden:0];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v35 = [(CKEffectPickerView *)self effectLabels];
  v36 = [v35 countByEnumeratingWithState:&v58 objects:v64 count:16];
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
          objc_enumerationMutation(v35);
        }

        [*(*(&v58 + 1) + 8 * k) setHidden:0];
      }

      v37 = [v35 countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v37);
  }

  v40 = [(CKEffectPickerView *)self momentsCollectionView];
  [v40 setDelegate:0];

  v41 = [(CKEffectPickerView *)self momentsCollectionView];
  [v41 setDataSource:0];

  [(CKEffectPickerView *)self invalidateAllAnimationTimers];
  v42 = [(CKEffectPickerView *)self momentsCollectionView];
  [v42 setHidden:1];

  v43 = [(CKEffectPickerView *)self pageControl];
  [v43 setHidden:1];

  v44 = [(CKEffectPickerView *)self sendMomentButton];
  [v44 setHidden:1];

  v45 = [(CKEffectPickerView *)self momentTitleLabel];
  [v45 setHidden:1];

  v46 = [(CKEffectPickerView *)self selectedIndex];
  if (v46 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v47 = v46;
    v33 = [(CKEffectPickerView *)self effectDotButtons];
    v48 = [v33 objectAtIndex:v47];
    [(CKEffectPickerView *)self _touchUpInsideDotButton:v48];

LABEL_28:
  }

  v49 = [(CKEffectPickerView *)self momentsCollectionView];
  [v49 reloadData];

  [(CKEffectPickerView *)self _updateMomentsBackgroundColor];
  [(CKEffectPickerView *)self updateMomentTitle:1];
}

- (void)_panGesture:(id)a3
{
  v4 = a3;
  if ([v4 state] != 3)
  {
    [v4 locationInView:self];
    [(CKEffectPickerView *)self handleTouchMoved:?];
  }
}

- (void)cancelImpactSelection
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(CKEffectPickerView *)self selectedIndex];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(CKEffectPickerView *)self effectSendButtons];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v18 + 1) + 8 * v8++) setHidden:1];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v6);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [(CKEffectPickerView *)self effectDotButtons];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
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
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) setHidden:0];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v11);
  }

  [(CKEffectPickerView *)self _animateSelectedEffectLabelAtIndex:0x7FFFFFFFFFFFFFFFLL fromPreviousIndex:v3];
  [(CKEffectPickerView *)self resetDotConstraintsToDefault];
  [(CKEffectPickerView *)self _stopBalloonAnimation];
}

- (void)_touchUpInsideSendButton:(id)a3
{
  v4 = a3;
  v5 = [(CKEffectPickerView *)self effectSendButtons];
  v6 = [v5 indexOfObject:v4];

  v9 = [(CKEffectPickerView *)self delegate];
  v7 = [(CKEffectPickerView *)self effectIdentifiers];
  v8 = [v7 objectAtIndex:v6];
  [v9 effectSelectedWithIdentifier:v8];
}

- (void)_touchUpInsideSendMomentButton:(id)a3
{
  v7 = [(CKEffectPickerView *)self delegate];
  v4 = [(CKEffectPickerView *)self momentIdentifiers];
  v5 = [(CKEffectPickerView *)self pageControl];
  v6 = [v4 objectAtIndex:{objc_msgSend(v5, "currentPage")}];
  [v7 effectSelectedWithIdentifier:v6];
}

- (void)_animateInSendButton:(id)a3
{
  v3 = a3;
  [v3 bounds];
  v4 = 9.0 / CGRectGetWidth(v21);
  [v3 bounds];
  Height = CGRectGetHeight(v22);
  memset(&v20, 0, sizeof(v20));
  CATransform3DMakeScale(&v20, v4, 9.0 / Height, 1.0);
  v6 = [v3 layer];
  v19 = v20;
  [v6 setTransform:&v19];

  [MEMORY[0x1E6979518] begin];
  v7 = MEMORY[0x1E6979518];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __43__CKEffectPickerView__animateInSendButton___block_invoke;
  v17[3] = &unk_1E72EBA18;
  v18 = v3;
  v8 = v3;
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
  v16 = [v8 layer];
  [v16 addAnimation:v9 forKey:@"transform"];

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

- (void)_animateOutSendButton:(id)a3
{
  v3 = a3;
  [v3 bounds];
  v4 = 9.0 / CGRectGetWidth(v21);
  [v3 bounds];
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
  v18 = v3;
  v7 = v3;
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
  v15 = [v7 layer];
  [v15 addAnimation:v8 forKey:@"transform"];

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
  v3 = [(CKEffectPickerView *)self effectDotConstraintsThatChange];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(v4);
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
      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }
}

- (void)_touchUpInsideDotButton:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKEffectPickerView *)self selectedIndex];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = [(CKEffectPickerView *)self effectSendButtons];
  v7 = [v6 countByEnumeratingWithState:&v46 objects:v53 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v46 + 1) + 8 * i) setHidden:1];
      }

      v8 = [v6 countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v8);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v11 = [(CKEffectPickerView *)self effectDotButtons];
  v12 = [v11 countByEnumeratingWithState:&v42 objects:v52 count:16];
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
          objc_enumerationMutation(v11);
        }

        [*(*(&v42 + 1) + 8 * j) setHidden:0];
      }

      v13 = [v11 countByEnumeratingWithState:&v42 objects:v52 count:16];
    }

    while (v13);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v16 = [(CKEffectPickerView *)self effectLabels];
  v17 = [v16 countByEnumeratingWithState:&v38 objects:v51 count:16];
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
          objc_enumerationMutation(v16);
        }

        [*(*(&v38 + 1) + 8 * k) setHidden:0];
      }

      v18 = [v16 countByEnumeratingWithState:&v38 objects:v51 count:16];
    }

    while (v18);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v21 = [(CKEffectPickerView *)self effectDescriptiveLabels];
  v22 = [v21 countByEnumeratingWithState:&v34 objects:v50 count:16];
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
          objc_enumerationMutation(v21);
        }

        [*(*(&v34 + 1) + 8 * m) setHidden:1];
      }

      v23 = [v21 countByEnumeratingWithState:&v34 objects:v50 count:16];
    }

    while (v23);
  }

  v26 = [(CKEffectPickerView *)self effectDotButtons];
  v27 = [v26 indexOfObject:v4];

  v28 = [(CKEffectPickerView *)self effectSendButtons];
  v29 = [v28 objectAtIndex:v27];

  [(CKEffectPickerView *)self _animateInSendButton:v29];
  [(CKEffectPickerView *)self _animateSelectedEffectLabelAtIndex:v27 fromPreviousIndex:v5];
  [(CKEffectPickerView *)self setSelectedIndex:v27];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL && v5 != v27)
  {
    v30 = [(CKEffectPickerView *)self effectSendButtons];
    v31 = [v30 objectAtIndex:v5];

    [v31 setHidden:0];
    [(CKEffectPickerView *)self _animateOutSendButton:v31];
  }

  [v4 setHidden:1];
  [(CKEffectPickerView *)self _updateBalloonViewPositionAnimated:1];
  v32 = [(CKEffectPickerView *)self effectIdentifiers];
  v33 = [v32 objectAtIndex:v27];
  [(CKEffectPickerView *)self startAnimationPreviewForIdentifier:v33];
}

- (void)startAnimationPreviewForIdentifier:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKEffectPickerView *)self balloonView];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 subviews];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (v5)
  {
    [v5 setInvisibleInkEffectEnabled:{objc_msgSend(v4, "isEqualToString:", @"com.apple.MobileSMS.expressivesend.invisibleink"}];
    [v5 prepareForDisplayIfNeeded];
    v11 = [(CKEffectPickerView *)self _defaultSendAnimationContextForAnimationPreview];
    v21 = v5;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    [v11 setThrowBalloonViews:v12];

    v13 = v7;
    if (!v7)
    {
      v13 = [MEMORY[0x1E695DFB0] null];
    }

    v20 = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    [v11 setAnimatableTextViews:v14];

    if (!v7)
    {
    }

    [v11 setImpactIdentifier:v4];
    v15 = [(CKEffectPickerView *)self dummyAnimator];
    [v15 beginAnimationWithSendAnimationContext:v11];
  }
}

- (void)_applicationDidEnterBackground
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(CKEffectPickerView *)self fsem];
  v4 = [v3 effectIdentifiers];

  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = [(CKEffectPickerView *)self animationTimers];
        v11 = [v10 objectForKey:v9];

        if (v11)
        {
          v12 = [(CKEffectPickerView *)self animatedCells];
          v13 = [v12 objectForKey:v9];

          [(CKEffectPickerView *)self removeAnimationTimerForCell:v13];
          v14 = [(CKEffectPickerView *)self pausedAnimatedCells];
          [v14 setObject:v13 forKey:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v3 = [(CKEffectPickerView *)self pausedAnimatedCells];
  v4 = [v3 copy];

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
        v10 = [(CKEffectPickerView *)self pausedAnimatedCells];
        v11 = [v10 objectForKey:v9];

        [v11 animate];
        [(CKEffectPickerView *)self addAnimationTimerForCell:v11];
        v12 = [(CKEffectPickerView *)self pausedAnimatedCells];
        [v12 removeObjectForKey:v9];

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
    v3 = [(CKEffectPickerView *)self pageControl];
    v4 = [v3 layer];
    [v4 setFilters:0];

    v5 = [(CKEffectPickerView *)self mainLabel];
    v6 = [v5 layer];
    [v6 setFilters:0];

    v7 = [(CKEffectPickerView *)self momentTitleLabel];
    v8 = [v7 layer];
    [v8 setFilters:0];

    v9 = [(CKEffectPickerView *)self closeButton];
    v10 = [v9 layer];
    [v10 setFilters:0];

    v11 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LOBYTE(v10) = [v11 isEntryViewRefreshEnabled];

    if ((v10 & 1) == 0)
    {
      v12 = [(CKEffectPickerView *)self typeSegmentedControl];
      v13 = [v12 layer];
      [v13 setFilters:0];
    }

    v14 = [(CKEffectPickerView *)self roundedView];
    v15 = [v14 layer];
    [v15 setCompositingFilter:0];

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v16 = [(CKEffectPickerView *)self effectLabels];
    v17 = [v16 countByEnumeratingWithState:&v90 objects:v103 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v90 + 1) + 8 * i) layer];
          [v21 setFilters:0];
        }

        v18 = [v16 countByEnumeratingWithState:&v90 objects:v103 count:16];
      }

      while (v18);
    }

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v22 = [(CKEffectPickerView *)self effectDescriptiveLabels];
    v23 = [v22 countByEnumeratingWithState:&v86 objects:v102 count:16];
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
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v86 + 1) + 8 * j) layer];
          [v27 setFilters:0];
        }

        v24 = [v22 countByEnumeratingWithState:&v86 objects:v102 count:16];
      }

      while (v24);
    }

    v28 = [(CKEffectPickerView *)self accessibilityBackdropView];

    if (!v28)
    {
      v29 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v30 = +[CKUIBehavior sharedBehaviors];
      v31 = [v30 theme];
      v32 = [v31 fsmPickerBackgroundColor];
      [v29 setBackgroundColor:v32];

      [(CKEffectPickerView *)self setAccessibilityBackdropView:v29];
      v33 = [(CKEffectPickerView *)self accessibilityBackdropView];
      v34 = [(CKEffectPickerView *)self peekContainer];
      [(CKEffectPickerView *)self insertSubview:v33 belowSubview:v34];
    }

    v35 = [(CKEffectPickerView *)self accessibilityCloseBackgroundView];

    if (!v35)
    {
      v36 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v37 = +[CKUIBehavior sharedBehaviors];
      v38 = [v37 theme];
      v39 = [v38 fsmPickerSecondaryColor];
      [v36 setBackgroundColor:v39];

      [(CKEffectPickerView *)self setAccessibilityCloseBackgroundView:v36];
      v40 = [(CKEffectPickerView *)self peekContainer];
      v41 = [(CKEffectPickerView *)self accessibilityCloseBackgroundView];
      v42 = [(CKEffectPickerView *)self closeButton];
      [v40 insertSubview:v41 belowSubview:v42];
    }

    v43 = [(CKEffectPickerView *)self accessibilitySendBackgroundView];

    if (!v43)
    {
      v44 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v45 = +[CKUIBehavior sharedBehaviors];
      v46 = [v45 theme];
      v47 = [v46 fsmPickerBackgroundColor];
      [v44 setBackgroundColor:v47];

      [(CKEffectPickerView *)self setAccessibilitySendBackgroundView:v44];
      v48 = [(CKEffectPickerView *)self peekContainer];
      v49 = [(CKEffectPickerView *)self accessibilitySendBackgroundView];
      v50 = [(CKEffectPickerView *)self sendMomentButton];
      [v48 insertSubview:v49 belowSubview:v50];
    }

    v51 = [(CKEffectPickerView *)self accessibilityBackdropView];
    [v51 setHidden:0];

    v52 = [(CKEffectPickerView *)self accessibilitySendBackgroundView];
    [v52 setHidden:0];

    v53 = [(CKEffectPickerView *)self accessibilityCloseBackgroundView];
    [v53 setHidden:0];

    v54 = [(CKEffectPickerView *)self backdrop];
    [v54 setHidden:1];

    v55 = [(CKEffectPickerView *)self blueContrastLayer];
    [v55 setHidden:1];
  }

  else
  {
    v56 = [(CKEffectPickerView *)self blueContrastLayer];
    [v56 setHidden:0];

    v57 = [(CKEffectPickerView *)self backdrop];
    [v57 setHidden:0];

    v58 = [(CKEffectPickerView *)self accessibilityBackdropView];
    [v58 setHidden:1];

    v59 = [(CKEffectPickerView *)self accessibilitySendBackgroundView];
    [v59 setHidden:1];

    v60 = [(CKEffectPickerView *)self accessibilityCloseBackgroundView];
    [v60 setHidden:1];

    v61 = [(CKEffectPickerView *)self pageControl];
    v62 = [v61 layer];
    setUpVibrancyForLayer(v62, 0, 0, [(CKEffectPickerView *)self isInDarkMode]);

    v63 = [(CKEffectPickerView *)self mainLabel];
    v64 = [v63 layer];
    setUpVibrancyForLayer(v64, 0, ![(CKEffectPickerView *)self isInDarkMode], [(CKEffectPickerView *)self isInDarkMode]);

    v65 = [(CKEffectPickerView *)self momentTitleLabel];
    v66 = [v65 layer];
    setUpVibrancyForLayer(v66, 0, ![(CKEffectPickerView *)self isInDarkMode], [(CKEffectPickerView *)self isInDarkMode]);

    v67 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LOBYTE(v66) = [v67 isEntryViewRefreshEnabled];

    if ((v66 & 1) == 0)
    {
      v68 = [(CKEffectPickerView *)self closeButton];
      v69 = [v68 layer];
      setUpVibrancyForLayer(v69, 0, ![(CKEffectPickerView *)self isInDarkMode], [(CKEffectPickerView *)self isInDarkMode]);

      v70 = [(CKEffectPickerView *)self typeSegmentedControl];
      v71 = [v70 layer];
      setUpVibrancyForLayer(v71, 0, ![(CKEffectPickerView *)self isInDarkMode], [(CKEffectPickerView *)self isInDarkMode]);
    }

    v72 = [(CKEffectPickerView *)self roundedView];
    v73 = [v72 layer];
    v74 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
    [v73 setCompositingFilter:v74];

    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v75 = [(CKEffectPickerView *)self effectLabels];
    v76 = [v75 countByEnumeratingWithState:&v98 objects:v105 count:16];
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
            objc_enumerationMutation(v75);
          }

          v80 = [*(*(&v98 + 1) + 8 * k) layer];
          setUpVibrancyForLayer(v80, 0, ![(CKEffectPickerView *)self isInDarkMode], [(CKEffectPickerView *)self isInDarkMode]);
        }

        v77 = [v75 countByEnumeratingWithState:&v98 objects:v105 count:16];
      }

      while (v77);
    }

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v55 = [(CKEffectPickerView *)self effectDescriptiveLabels];
    v81 = [v55 countByEnumeratingWithState:&v94 objects:v104 count:16];
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
            objc_enumerationMutation(v55);
          }

          v85 = [*(*(&v94 + 1) + 8 * m) layer];
          setUpVibrancyForLayer(v85, 0, ![(CKEffectPickerView *)self isInDarkMode], [(CKEffectPickerView *)self isInDarkMode]);
        }

        v82 = [v55 countByEnumeratingWithState:&v94 objects:v104 count:16];
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