@interface IMTypingIndicatorLayer
+ (CGPoint)largeBubbleGrowOffset;
+ (CGPoint)mediumBubbleGrowOffset;
+ (CGPoint)smallBubbleGrowOffset;
+ (CGPoint)thinkingDotsOffset;
+ (CGRect)iconImageFrame;
+ (CGRect)largeBubbleFrame;
+ (CGRect)mediumBubbleFrame;
+ (CGRect)smallBubbleFrame;
+ (CGSize)defaultSize;
- (IMTypingIndicatorLayer)init;
- (double)convertedCurrentMediaTime;
- (id)_largeBubbleGrowAnimationsWithSpeed:(double)a3 offset:(CGPoint)a4;
- (id)_largeBubblePulseAnimationWithSpeed:(double)a3 delay:(double)a4;
- (id)_mediumBubbleGrowAnimationsWithSpeed:(double)a3 offset:(CGPoint)a4;
- (id)_mediumBubblePulseAnimationWithSpeed:(double)a3 delay:(double)a4;
- (id)_smallBubbleGrowAnimationsWithSpeed:(double)a3 offset:(CGPoint)a4;
- (id)_smallBubblePulseAnimationWithSpeed:(double)a3 delay:(double)a4;
- (id)initHighlighted:(BOOL)a3;
- (id)resolvedColor:(id)a3 forTraitCollection:(id)a4;
- (void)_buildIconImage;
- (void)_buildThinkingDots;
- (void)_setup;
- (void)_updateBubbleColors;
- (void)_updateBubbleOpacity;
- (void)_updateForImage;
- (void)setBubbleColor:(id)a3;
- (void)setBubbleOpacity:(double)a3;
- (void)setIconImage:(id)a3;
- (void)setTraitCollection:(id)a3;
- (void)startGrowAnimationWithCompletionBlock:(id)a3;
- (void)startPulseAnimation;
- (void)startShrinkAnimationWithCompletionBlock:(id)a3;
- (void)stopAnimation;
- (void)stopPulseAnimation;
@end

@implementation IMTypingIndicatorLayer

- (IMTypingIndicatorLayer)init
{
  v7.receiver = self;
  v7.super_class = IMTypingIndicatorLayer;
  v2 = [(IMTypingIndicatorLayer *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend__setup(v2, v3, v4);
  }

  return v5;
}

- (id)initHighlighted:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = IMTypingIndicatorLayer;
  v4 = [(IMTypingIndicatorLayer *)&v9 init];
  v7 = v4;
  if (v4)
  {
    v4->_highlighted = a3;
    objc_msgSend__setup(v4, v5, v6);
  }

  return v7;
}

- (double)convertedCurrentMediaTime
{
  CACurrentMediaTime();

  MEMORY[0x2821F9670](self, sel_convertTime_fromLayer_, 0);
  return result;
}

- (void)setBubbleColor:(id)a3
{
  v5 = a3;
  if (self->_bubbleColor != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_bubbleColor, a3);
    objc_msgSend__updateBubbleColors(self, v6, v7);
    v5 = v8;
  }
}

- (void)setBubbleOpacity:(double)a3
{
  if (self->_bubbleOpacity != a3)
  {
    self->_bubbleOpacity = a3;
    objc_msgSend__updateBubbleOpacity(self, a2, v3);
  }
}

- (id)resolvedColor:(id)a3 forTraitCollection:(id)a4
{
  v5 = a3;
  v7 = v5;
  if (a4)
  {
    v8 = objc_msgSend_resolvedColorWithTraitCollection_(v5, v6, a4);
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v9;
}

- (void)setTraitCollection:(id)a3
{
  v5 = a3;
  if (self->_traitCollection != v5)
  {
    v29 = v5;
    objc_storeStrong(&self->_traitCollection, a3);
    v8 = objc_msgSend_defaultThinkingDotColor(self, v6, v7);
    v10 = objc_msgSend_resolvedColor_forTraitCollection_(self, v9, v8, self->_traitCollection);
    thinkingDotColor = self->_thinkingDotColor;
    self->_thinkingDotColor = v10;

    v14 = objc_msgSend_defaultBubbleColor(self, v12, v13);
    v16 = objc_msgSend_resolvedColor_forTraitCollection_(self, v15, v14, self->_traitCollection);
    bubbleColor = self->_bubbleColor;
    self->_bubbleColor = v16;

    objc_msgSend__updateBubbleColors(self, v18, v19);
    thinkingDot = self->_thinkingDot;
    v23 = objc_msgSend_thinkingDotColor(self, v21, v22);
    v24 = v23;
    v27 = objc_msgSend_CGColor(v24, v25, v26);
    objc_msgSend_setBackgroundColor_(thinkingDot, v28, v27);

    v5 = v29;
  }
}

- (void)setIconImage:(id)a3
{
  v5 = a3;
  iconImage = self->_iconImage;
  if (iconImage != v5 && (objc_msgSend_isEqual_(iconImage, v5, v5) & 1) == 0)
  {
    objc_storeStrong(&self->_iconImage, a3);
    objc_msgSend__updateForImage(self, v7, v8);
  }

  MEMORY[0x2821F96F8]();
}

- (void)_setup
{
  v128 = objc_msgSend_defaultThinkingDotColor(self, a2, v2);
  v5 = objc_msgSend_resolvedColor_forTraitCollection_(self, v4, v128, self->_traitCollection);
  thinkingDotColor = self->_thinkingDotColor;
  self->_thinkingDotColor = v5;

  v9 = objc_msgSend_defaultBubbleColor(self, v7, v8);
  v11 = objc_msgSend_resolvedColor_forTraitCollection_(self, v10, v9, self->_traitCollection);
  bubbleColor = self->_bubbleColor;
  self->_bubbleColor = v11;

  objc_msgSend_defaultThinkingDotOpacity(self, v13, v14);
  self->_thinkingDotOpacity = v15;
  objc_msgSend_defaultBubbleOpacity(self, v16, v17);
  self->_bubbleOpacity = v18;
  objc_msgSend_frame(self, v19, v20);
  v22 = v21;
  v24 = v23;
  v25 = objc_opt_class();
  objc_msgSend_defaultSize(v25, v26, v27);
  objc_msgSend_setFrame_(self, v28, v29, v22, v24, v30, v31);
  v32 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  bubbleContainer = self->_bubbleContainer;
  self->_bubbleContainer = v32;

  v34 = self->_bubbleContainer;
  objc_msgSend_bounds(self, v35, v36);
  objc_msgSend_setFrame_(v34, v37, v38);
  objc_msgSend_setAllowsGroupOpacity_(self->_bubbleContainer, v39, 1);
  objc_msgSend_addSublayer_(self, v40, self->_bubbleContainer);
  v41 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  smallBubble = self->_smallBubble;
  self->_smallBubble = v41;

  v43 = objc_opt_class();
  objc_msgSend_smallBubbleFrame(v43, v44, v45);
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  objc_msgSend_setCornerRadius_(self->_smallBubble, v54, v55, v50 * 0.5);
  objc_msgSend_setAnchorPoint_(self->_smallBubble, v56, v57, 0.318, 0.318);
  objc_msgSend_setPosition_(self->_smallBubble, v58, v59, v47, v49);
  objc_msgSend_setBounds_(self->_smallBubble, v60, v61, 0.0, 0.0, v51, v53);
  objc_msgSend_addSublayer_(self->_bubbleContainer, v62, self->_smallBubble);
  v63 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  mediumBubble = self->_mediumBubble;
  self->_mediumBubble = v63;

  v65 = objc_opt_class();
  objc_msgSend_mediumBubbleFrame(v65, v66, v67);
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  objc_msgSend_setCornerRadius_(self->_mediumBubble, v76, v77, v74 * 0.5);
  objc_msgSend_setAnchorPoint_(self->_mediumBubble, v78, v79, 0.326, 0.37);
  objc_msgSend_setPosition_(self->_mediumBubble, v80, v81, v69, v71);
  objc_msgSend_setBounds_(self->_mediumBubble, v82, v83, 0.0, 0.0, v73, v75);
  objc_msgSend_addSublayer_(self->_bubbleContainer, v84, self->_mediumBubble);
  v85 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  largeBubble = self->_largeBubble;
  self->_largeBubble = v85;

  v87 = objc_opt_class();
  objc_msgSend_largeBubbleFrame(v87, v88, v89);
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v97 = v96;
  objc_msgSend_setCornerRadius_(self->_largeBubble, v98, v99, v96 * 0.5);
  objc_msgSend_setAnchorPoint_(self->_largeBubble, v100, v101, 0.185, 0.28);
  objc_msgSend_setPosition_(self->_largeBubble, v102, v103, v91, v93);
  objc_msgSend_setBounds_(self->_largeBubble, v104, v105, 0.0, 0.0, v95, v97);
  objc_msgSend_addSublayer_(self->_bubbleContainer, v106, self->_largeBubble);
  v107 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  thinkingDotContainer = self->_thinkingDotContainer;
  self->_thinkingDotContainer = v107;

  v109 = self->_thinkingDotContainer;
  v112 = objc_msgSend_largeBubble(self, v110, v111);
  objc_msgSend_anchorPoint(v112, v113, v114);
  objc_msgSend_setAnchorPoint_(v109, v115, v116);

  objc_msgSend_setPosition_(self->_thinkingDotContainer, v117, v118, v91, v93);
  objc_msgSend_setBounds_(self->_thinkingDotContainer, v119, v120, 0.0, 0.0, v95, v97);
  objc_msgSend_addSublayer_(self, v121, self->_thinkingDotContainer);
  objc_msgSend__updateBubbleColors(self, v122, v123);
  objc_msgSend__updateBubbleOpacity(self, v124, v125);
  objc_msgSend__updateForImage(self, v126, v127);
}

- (void)_updateForImage
{
  v31 = objc_msgSend_largeBubble(self, a2, v2);
  objc_msgSend_frame(v31, v4, v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = objc_opt_class();
  objc_msgSend_largeBubbleFrame(v12, v13, v14);
  v18 = v17;
  if (self->_iconImage)
  {
    v19 = objc_opt_class();
    objc_msgSend_iconImageFrame(v19, v20, v21);
    MaxX = CGRectGetMaxX(v33);
  }

  else
  {
    MaxX = 0.0;
  }

  v23 = v18 + MaxX;
  v24 = objc_msgSend_largeBubble(self, v15, v16);
  objc_msgSend_setFrame_(v24, v25, v26, v7, v9, v23, v11);

  objc_msgSend__buildIconImage(self, v27, v28);
  objc_msgSend__buildThinkingDots(self, v29, v30);
}

- (void)_buildIconImage
{
  v4 = objc_msgSend_iconImageLayer(self, a2, v2);
  iconImage = self->_iconImage;
  if (iconImage)
  {
    if (v4)
    {
      v44 = v4;
      objc_msgSend_setContents_(v4, v5, iconImage);
    }

    else
    {
      v44 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v5, iconImage);
      v8 = objc_opt_class();
      objc_msgSend_iconImageFrame(v8, v9, v10);
      v12 = v11;
      objc_msgSend_setFrame_(v44, v13, v14);
      v15 = self->_iconImage;
      v18 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], v16, v17);
      objc_msgSend_scale(v18, v19, v20);
      v22 = v21;

      if (v22 == 1.0)
      {
        v25 = 73;
      }

      else
      {
        v26 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], v23, v24);
        objc_msgSend_scale(v26, v27, v28);
        v30 = v29;

        if (v30 == 2.0)
        {
          v25 = 74;
        }

        else
        {
          v25 = 75;
        }
      }

      v31 = MEMORY[0x259C1A7F0]("LICreateIconForImage", @"MobileIcons");
      v32 = v31(v15, v25, 0);
      if (v32)
      {
        v34 = v32;
        objc_msgSend_setContents_(v44, v33, v32);
        CFAutorelease(v34);
      }

      else
      {
        objc_msgSend_setMasksToBounds_(v44, v33, 1);
        objc_msgSend_setCornerCurve_(v44, v36, *MEMORY[0x277CDA138]);
        objc_msgSend_setCornerRadius_(v44, v37, v38, v12 * 0.5);
        objc_msgSend_setContents_(v44, v39, self->_iconImage);
      }

      objc_msgSend_setIconImageLayer_(self, v35, v44);
      v42 = objc_msgSend_largeBubble(self, v40, v41);
      objc_msgSend_addSublayer_(v42, v43, v44);
    }
  }

  else
  {
    v44 = v4;
    objc_msgSend_removeFromSuperlayer(v4, v5, 0);
    objc_msgSend_setIconImageLayer_(self, v7, 0);
  }
}

- (void)_buildThinkingDots
{
  v112[2] = *MEMORY[0x277D85DE8];
  objc_msgSend_begin(MEMORY[0x277CD9FF0], a2, v2);
  objc_msgSend_setAnimationDuration_(MEMORY[0x277CD9FF0], v4, v5, 0.0);
  objc_msgSend_removeAllAnimations(self->_thinkingDot, v6, v7);
  objc_msgSend_removeFromSuperlayer(self->_thinkingDots, v8, v9);
  objc_msgSend_removeFromSuperlayer(self->_thinkingDot, v10, v11);
  thinkingDot = self->_thinkingDot;
  self->_thinkingDot = 0;

  thinkingDots = self->_thinkingDots;
  self->_thinkingDots = 0;

  v16 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v14, v15);
  v17 = self->_thinkingDot;
  self->_thinkingDot = v16;

  v18 = objc_opt_class();
  objc_msgSend_thinkingDotDiameter(v18, v19, v20);
  v22 = v21;
  objc_msgSend_setFrame_(self->_thinkingDot, v23, v24, 0.0, 0.0, v22, v22);
  objc_msgSend_setCornerRadius_(self->_thinkingDot, v25, v26, v22 * 0.5);
  v27 = self->_thinkingDot;
  v30 = objc_msgSend_thinkingDotColor(self, v28, v29);
  v31 = v30;
  v34 = objc_msgSend_CGColor(v31, v32, v33);
  objc_msgSend_setBackgroundColor_(v27, v35, v34);

  v36 = objc_opt_class();
  if (objc_msgSend_supportsTypingIndicatorAnimation(v36, v37, v38))
  {
    v41 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9EC8], v39, @"opacity");
    v112[0] = &unk_28669A6C8;
    v42 = MEMORY[0x277CCABB0];
    objc_msgSend_thinkingDotOpacity(self, v43, v44);
    v47 = objc_msgSend_numberWithDouble_(v42, v45, v46);
    v112[1] = v47;
    v49 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v48, v112, 2);
    objc_msgSend_setValues_(v41, v50, v49);

    objc_msgSend_setKeyTimes_(v41, v51, &unk_28669A760);
    objc_msgSend_setCalculationMode_(v41, v52, *MEMORY[0x277CDA070]);
    objc_msgSend_setDuration_(v41, v53, v54, 0.5);
    LODWORD(v55) = 1061271823;
    LODWORD(v56) = 1014679044;
    LODWORD(v57) = 1058306785;
    LODWORD(v58) = 1.0;
    v61 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v59, v60, v55, v56, v57, v58);
    objc_msgSend_setTimingFunction_(v41, v62, v61);

    LODWORD(v63) = 2139095040;
    objc_msgSend_setRepeatCount_(v41, v64, v65, v63);
    objc_msgSend_setAutoreverses_(v41, v66, 1);
    objc_msgSend_setFillMode_(v41, v67, *MEMORY[0x277CDA230]);
    objc_msgSend_addAnimation_forKey_(self->_thinkingDot, v68, v41, @"Opacity");
  }

  else
  {
    v71 = self->_thinkingDot;
    objc_msgSend_thinkingDotOpacity(self, v39, v40);
    *&v72 = v72;
    objc_msgSend_setOpacity_(v71, v73, v74, v72);
  }

  v75 = objc_msgSend_layer(MEMORY[0x277CD9F48], v69, v70);
  v76 = self->_thinkingDots;
  self->_thinkingDots = v75;

  v77 = objc_opt_class();
  objc_msgSend_thinkingDotsOffset(v77, v78, v79);
  v81 = v80;
  v83 = v82;
  v86 = objc_msgSend_iconImage(self, v84, v85);
  if (v86)
  {
    v87 = objc_opt_class();
    objc_msgSend_iconImageFrame(v87, v88, v89);
    MaxX = CGRectGetMaxX(v113);
    v91 = objc_opt_class();
    objc_msgSend_iconImageTrailingSpace(v91, v92, v93);
    v81 = MaxX + v94;
  }

  objc_msgSend_setFrame_(self->_thinkingDots, v95, v96, v81, v83, 0.0, 0.0);
  objc_msgSend_setInstanceCount_(self->_thinkingDots, v97, 3);
  v98 = self->_thinkingDots;
  v99 = objc_opt_class();
  objc_msgSend_thinkingDotSpace(v99, v100, v101);
  CATransform3DMakeTranslation(&v111, v102, 0.0, 0.0);
  objc_msgSend_setInstanceTransform_(v98, v103, &v111);
  objc_msgSend_setInstanceDelay_(self->_thinkingDots, v104, v105, 0.25);
  objc_msgSend_addSublayer_(self->_thinkingDots, v106, self->_thinkingDot);
  objc_msgSend_addSublayer_(self->_thinkingDotContainer, v107, self->_thinkingDots);
  objc_msgSend_commit(MEMORY[0x277CD9FF0], v108, v109);
  v110 = *MEMORY[0x277D85DE8];
}

- (void)_updateBubbleColors
{
  v4 = objc_msgSend_bubbleColor(self, a2, v2);
  v5 = v4;
  v8 = objc_msgSend_CGColor(v5, v6, v7);

  v11 = objc_msgSend_largeBubble(self, v9, v10);
  objc_msgSend_setBackgroundColor_(v11, v12, v8);

  v15 = objc_msgSend_mediumBubble(self, v13, v14);
  objc_msgSend_setBackgroundColor_(v15, v16, v8);

  v20 = objc_msgSend_smallBubble(self, v17, v18);
  objc_msgSend_setBackgroundColor_(v20, v19, v8);
}

- (void)_updateBubbleOpacity
{
  v4 = objc_msgSend_largeBubble(self, a2, v2);
  LODWORD(v5) = 1.0;
  objc_msgSend_setOpacity_(v4, v6, v7, v5);

  v10 = objc_msgSend_mediumBubble(self, v8, v9);
  LODWORD(v11) = 1.0;
  objc_msgSend_setOpacity_(v10, v12, v13, v11);

  v16 = objc_msgSend_smallBubble(self, v14, v15);
  LODWORD(v17) = 1.0;
  objc_msgSend_setOpacity_(v16, v18, v19, v17);

  bubbleContainer = self->_bubbleContainer;
  objc_msgSend_bubbleOpacity(self, v21, v22);
  *&v25 = v25;

  objc_msgSend_setOpacity_(bubbleContainer, v23, v24, v25);
}

- (id)_smallBubbleGrowAnimationsWithSpeed:(double)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v127[3] = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], a2, @"hidden");
  v9 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v8, 1);
  objc_msgSend_setFromValue_(v7, v10, v9);

  v12 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v11, 0);
  objc_msgSend_setToValue_(v7, v13, v12);

  objc_msgSend_setDuration_(v7, v14, v15, 0.0);
  v16 = *MEMORY[0x277CDA238];
  objc_msgSend_setFillMode_(v7, v17, *MEMORY[0x277CDA238]);
  objc_msgSend_setRemovedOnCompletion_(v7, v18, 1);
  v19 = objc_opt_class();
  objc_msgSend_smallBubbleGrowOffset(v19, v20, v21);
  v23 = v22;
  v25 = v24;
  v27 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9EC8], v26, @"position.x");
  v28 = x;
  *&v29 = v28;
  v32 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v30, v31, v29);
  v127[0] = v32;
  v33 = x + v23;
  *&v33 = x + v23;
  v36 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v34, v35, v33);
  v127[1] = v36;
  *&v37 = x;
  v40 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v38, v39, v37);
  v127[2] = v40;
  v42 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v41, v127, 3);
  objc_msgSend_setValues_(v27, v43, v42);

  v44 = *MEMORY[0x277CDA060];
  objc_msgSend_setCalculationMode_(v27, v45, *MEMORY[0x277CDA060]);
  objc_msgSend_setDuration_(v27, v46, v47, 0.4);
  LODWORD(v48) = 0.25;
  LODWORD(v49) = 0.25;
  LODWORD(v50) = 1.0;
  LODWORD(v51) = 1036831949;
  v54 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v52, v53, v48, v51, v49, v50);
  objc_msgSend_setTimingFunction_(v27, v55, v54);

  *&a3 = a3;
  LODWORD(v56) = LODWORD(a3);
  objc_msgSend_setSpeed_(v27, v57, v58, v56);
  objc_msgSend_setFillMode_(v27, v59, v16);
  objc_msgSend_setRemovedOnCompletion_(v27, v60, 1);
  v62 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9EC8], v61, @"position.y");
  v63 = y;
  *&v64 = v63;
  v67 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v65, v66, v64);
  v126[0] = v67;
  v68 = y + v25;
  *&v68 = y + v25;
  v71 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v69, v70, v68);
  v126[1] = v71;
  *&v72 = y;
  v75 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v73, v74, v72);
  v126[2] = v75;
  v77 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v76, v126, 3);
  objc_msgSend_setValues_(v62, v78, v77);

  objc_msgSend_setCalculationMode_(v62, v79, v44);
  objc_msgSend_setDuration_(v62, v80, v81, 0.4);
  LODWORD(v82) = 1051315048;
  LODWORD(v83) = 1057991709;
  LODWORD(v84) = 1064582806;
  LODWORD(v85) = 1036831949;
  v88 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v86, v87, v82, v85, v83, v84);
  objc_msgSend_setTimingFunction_(v62, v89, v88);

  LODWORD(v90) = LODWORD(a3);
  objc_msgSend_setSpeed_(v62, v91, v92, v90);
  objc_msgSend_setFillMode_(v62, v93, v16);
  objc_msgSend_setRemovedOnCompletion_(v62, v94, 1);
  v96 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v95, @"transform.scale.xy");
  v99 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v97, v98, 0.0);
  objc_msgSend_setFromValue_(v96, v100, v99);

  LODWORD(v101) = 1.0;
  v104 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v102, v103, v101);
  objc_msgSend_setToValue_(v96, v105, v104);

  objc_msgSend_setDuration_(v96, v106, v107, 0.25);
  LODWORD(v108) = LODWORD(a3);
  objc_msgSend_setSpeed_(v96, v109, v110, v108);
  LODWORD(v111) = 0.25;
  LODWORD(v112) = 0.25;
  LODWORD(v113) = 1.0;
  LODWORD(v114) = 1036831949;
  v117 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v115, v116, v111, v114, v112, v113);
  objc_msgSend_setTimingFunction_(v96, v118, v117);

  objc_msgSend_setFillMode_(v96, v119, v16);
  objc_msgSend_setRemovedOnCompletion_(v96, v120, 1);
  v125[0] = v7;
  v125[1] = v27;
  v125[2] = v62;
  v125[3] = v96;
  v122 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v121, v125, 4);

  v123 = *MEMORY[0x277D85DE8];

  return v122;
}

- (id)_smallBubblePulseAnimationWithSpeed:(double)a3 delay:(double)a4
{
  v7 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9EC8], a2, @"transform.scale.xy");
  objc_msgSend_setValues_(v7, v8, &unk_28669A778);
  objc_msgSend_setCalculationMode_(v7, v9, *MEMORY[0x277CDA060]);
  objc_msgSend_setTensionValues_(v7, v10, &unk_28669A790);
  objc_msgSend_setDuration_(v7, v11, v12, 0.7);
  objc_msgSend_convertedCurrentMediaTime(self, v13, v14);
  objc_msgSend_setBeginTime_(v7, v16, v17, v15 + a4);
  *&v18 = a3;
  objc_msgSend_setSpeed_(v7, v19, v20, v18);
  v22 = objc_msgSend_functionWithName_(MEMORY[0x277CD9EF8], v21, *MEMORY[0x277CDA7B8]);
  objc_msgSend_setTimingFunction_(v7, v23, v22);

  LODWORD(v24) = 2139095040;
  objc_msgSend_setRepeatCount_(v7, v25, v26, v24);
  objc_msgSend_setAutoreverses_(v7, v27, 1);
  objc_msgSend_setFillMode_(v7, v28, *MEMORY[0x277CDA238]);
  objc_msgSend_setRemovedOnCompletion_(v7, v29, 0);

  return v7;
}

- (id)_mediumBubbleGrowAnimationsWithSpeed:(double)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v145[3] = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], a2, @"hidden");
  v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v9, 1);
  objc_msgSend_setFromValue_(v8, v11, v10);

  v13 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v12, 0);
  objc_msgSend_setToValue_(v8, v14, v13);

  objc_msgSend_setDuration_(v8, v15, v16, 0.25);
  v17 = *MEMORY[0x277CDA238];
  objc_msgSend_setFillMode_(v8, v18, *MEMORY[0x277CDA238]);
  objc_msgSend_setRemovedOnCompletion_(v8, v19, 1);
  v142 = self;
  v20 = objc_opt_class();
  objc_msgSend_mediumBubbleGrowOffset(v20, v21, v22);
  v24 = v23;
  v26 = v25;
  v28 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9EC8], v27, @"position.x");
  v29 = x;
  *&v30 = v29;
  v33 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v31, v32, v30);
  v145[0] = v33;
  v34 = x + v24;
  *&v34 = x + v24;
  v37 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v35, v36, v34);
  v145[1] = v37;
  *&v38 = x;
  v41 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v39, v40, v38);
  v145[2] = v41;
  v43 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v42, v145, 3);
  objc_msgSend_setValues_(v28, v44, v43);

  v45 = *MEMORY[0x277CDA060];
  objc_msgSend_setCalculationMode_(v28, v46, *MEMORY[0x277CDA060]);
  objc_msgSend_convertedCurrentMediaTime(self, v47, v48);
  objc_msgSend_setBeginTime_(v28, v50, v51, v49 + 0.065);
  objc_msgSend_setDuration_(v28, v52, v53, 0.4);
  LODWORD(v54) = 0.25;
  LODWORD(v55) = 0.25;
  LODWORD(v56) = 1.0;
  LODWORD(v57) = 1036831949;
  v60 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v58, v59, v54, v57, v55, v56);
  objc_msgSend_setTimingFunction_(v28, v61, v60);

  *&a3 = a3;
  LODWORD(v62) = LODWORD(a3);
  objc_msgSend_setSpeed_(v28, v63, v64, v62);
  v65 = v17;
  objc_msgSend_setFillMode_(v28, v66, v17);
  objc_msgSend_setRemovedOnCompletion_(v28, v67, 1);
  v69 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9EC8], v68, @"position.y");
  v70 = y;
  *&v71 = v70;
  v74 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v72, v73, v71);
  v144[0] = v74;
  v75 = y + v26;
  *&v75 = y + v26;
  v78 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v76, v77, v75);
  v144[1] = v78;
  *&v79 = y;
  v82 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v80, v81, v79);
  v144[2] = v82;
  v84 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v83, v144, 3);
  objc_msgSend_setValues_(v69, v85, v84);

  objc_msgSend_setCalculationMode_(v69, v86, v45);
  objc_msgSend_convertedCurrentMediaTime(v142, v87, v88);
  objc_msgSend_setBeginTime_(v69, v90, v91, v89 + 0.065);
  objc_msgSend_setDuration_(v69, v92, v93, 0.4);
  LODWORD(v94) = 1051315048;
  LODWORD(v95) = 1057991709;
  LODWORD(v96) = 1064582806;
  LODWORD(v97) = 1036831949;
  v100 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v98, v99, v94, v97, v95, v96);
  objc_msgSend_setTimingFunction_(v69, v101, v100);

  LODWORD(v102) = LODWORD(a3);
  objc_msgSend_setSpeed_(v69, v103, v104, v102);
  objc_msgSend_setFillMode_(v69, v105, v65);
  objc_msgSend_setRemovedOnCompletion_(v69, v106, 1);
  v108 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v107, @"transform.scale.xy");
  v111 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v109, v110, 0.0);
  objc_msgSend_setFromValue_(v108, v112, v111);

  LODWORD(v113) = 1.0;
  v116 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v114, v115, v113);
  objc_msgSend_setToValue_(v108, v117, v116);

  objc_msgSend_convertedCurrentMediaTime(v142, v118, v119);
  objc_msgSend_setBeginTime_(v108, v121, v122, v120 + 0.065);
  objc_msgSend_setDuration_(v108, v123, v124, 0.25);
  LODWORD(v125) = LODWORD(a3);
  objc_msgSend_setSpeed_(v108, v126, v127, v125);
  LODWORD(v128) = 0.25;
  LODWORD(v129) = 0.25;
  LODWORD(v130) = 1.0;
  LODWORD(v131) = 1036831949;
  v134 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v132, v133, v128, v131, v129, v130);
  objc_msgSend_setTimingFunction_(v108, v135, v134);

  objc_msgSend_setFillMode_(v108, v136, v65);
  objc_msgSend_setRemovedOnCompletion_(v108, v137, 1);
  v143[0] = v8;
  v143[1] = v28;
  v143[2] = v69;
  v143[3] = v108;
  v139 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v138, v143, 4);

  v140 = *MEMORY[0x277D85DE8];

  return v139;
}

- (id)_mediumBubblePulseAnimationWithSpeed:(double)a3 delay:(double)a4
{
  v7 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9EC8], a2, @"transform.scale.xy");
  objc_msgSend_setValues_(v7, v8, &unk_28669A7A8);
  objc_msgSend_setCalculationMode_(v7, v9, *MEMORY[0x277CDA060]);
  objc_msgSend_setTensionValues_(v7, v10, &unk_28669A7C0);
  objc_msgSend_convertedCurrentMediaTime(self, v11, v12);
  objc_msgSend_setBeginTime_(v7, v14, v15, v13 + a4);
  objc_msgSend_setDuration_(v7, v16, v17, 0.9);
  *&v18 = a3;
  objc_msgSend_setSpeed_(v7, v19, v20, v18);
  v22 = objc_msgSend_functionWithName_(MEMORY[0x277CD9EF8], v21, *MEMORY[0x277CDA7B8]);
  objc_msgSend_setTimingFunction_(v7, v23, v22);

  LODWORD(v24) = 2139095040;
  objc_msgSend_setRepeatCount_(v7, v25, v26, v24);
  objc_msgSend_setAutoreverses_(v7, v27, 1);
  objc_msgSend_setFillMode_(v7, v28, *MEMORY[0x277CDA238]);
  objc_msgSend_setRemovedOnCompletion_(v7, v29, 0);

  return v7;
}

- (id)_largeBubbleGrowAnimationsWithSpeed:(double)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v145[3] = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], a2, @"hidden");
  v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v9, 1);
  objc_msgSend_setFromValue_(v8, v11, v10);

  v13 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v12, 0);
  objc_msgSend_setToValue_(v8, v14, v13);

  objc_msgSend_setDuration_(v8, v15, v16, 0.25);
  v17 = *MEMORY[0x277CDA238];
  objc_msgSend_setFillMode_(v8, v18, *MEMORY[0x277CDA238]);
  objc_msgSend_setRemovedOnCompletion_(v8, v19, 1);
  v142 = self;
  v20 = objc_opt_class();
  objc_msgSend_largeBubbleGrowOffset(v20, v21, v22);
  v24 = v23;
  v26 = v25;
  v28 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9EC8], v27, @"position.x");
  v29 = x;
  *&v30 = v29;
  v33 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v31, v32, v30);
  v145[0] = v33;
  v34 = x + v24;
  *&v34 = x + v24;
  v37 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v35, v36, v34);
  v145[1] = v37;
  *&v38 = x;
  v41 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v39, v40, v38);
  v145[2] = v41;
  v43 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v42, v145, 3);
  objc_msgSend_setValues_(v28, v44, v43);

  v45 = *MEMORY[0x277CDA060];
  objc_msgSend_setCalculationMode_(v28, v46, *MEMORY[0x277CDA060]);
  objc_msgSend_convertedCurrentMediaTime(self, v47, v48);
  objc_msgSend_setBeginTime_(v28, v50, v51, v49 + 0.12);
  objc_msgSend_setDuration_(v28, v52, v53, 0.4);
  LODWORD(v54) = 0.25;
  LODWORD(v55) = 0.25;
  LODWORD(v56) = 1.0;
  LODWORD(v57) = 1036831949;
  v60 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v58, v59, v54, v57, v55, v56);
  objc_msgSend_setTimingFunction_(v28, v61, v60);

  *&a3 = a3;
  LODWORD(v62) = LODWORD(a3);
  objc_msgSend_setSpeed_(v28, v63, v64, v62);
  v65 = v17;
  objc_msgSend_setFillMode_(v28, v66, v17);
  objc_msgSend_setRemovedOnCompletion_(v28, v67, 1);
  v69 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9EC8], v68, @"position.y");
  v70 = y;
  *&v71 = v70;
  v74 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v72, v73, v71);
  v144[0] = v74;
  v75 = y + v26;
  *&v75 = y + v26;
  v78 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v76, v77, v75);
  v144[1] = v78;
  *&v79 = y;
  v82 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v80, v81, v79);
  v144[2] = v82;
  v84 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v83, v144, 3);
  objc_msgSend_setValues_(v69, v85, v84);

  objc_msgSend_setCalculationMode_(v69, v86, v45);
  objc_msgSend_convertedCurrentMediaTime(v142, v87, v88);
  objc_msgSend_setBeginTime_(v69, v90, v91, v89 + 0.12);
  objc_msgSend_setDuration_(v69, v92, v93, 0.4);
  LODWORD(v94) = 1045836616;
  LODWORD(v95) = 1048849804;
  LODWORD(v96) = 1057991709;
  LODWORD(v97) = 1064582806;
  v100 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v98, v99, v94, v95, v96, v97);
  objc_msgSend_setTimingFunction_(v69, v101, v100);

  LODWORD(v102) = LODWORD(a3);
  objc_msgSend_setSpeed_(v69, v103, v104, v102);
  objc_msgSend_setFillMode_(v69, v105, v65);
  objc_msgSend_setRemovedOnCompletion_(v69, v106, 1);
  v108 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v107, @"transform.scale.xy");
  v111 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v109, v110, 0.0);
  objc_msgSend_setFromValue_(v108, v112, v111);

  LODWORD(v113) = 1.0;
  v116 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v114, v115, v113);
  objc_msgSend_setToValue_(v108, v117, v116);

  objc_msgSend_convertedCurrentMediaTime(v142, v118, v119);
  objc_msgSend_setBeginTime_(v108, v121, v122, v120 + 0.12);
  objc_msgSend_setDuration_(v108, v123, v124, 0.25);
  LODWORD(v125) = LODWORD(a3);
  objc_msgSend_setSpeed_(v108, v126, v127, v125);
  LODWORD(v128) = 0.25;
  LODWORD(v129) = 0.25;
  LODWORD(v130) = 1.0;
  LODWORD(v131) = 1036831949;
  v134 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v132, v133, v128, v131, v129, v130);
  objc_msgSend_setTimingFunction_(v108, v135, v134);

  objc_msgSend_setFillMode_(v108, v136, v65);
  objc_msgSend_setRemovedOnCompletion_(v108, v137, 1);
  v143[0] = v8;
  v143[1] = v28;
  v143[2] = v69;
  v143[3] = v108;
  v139 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v138, v143, 4);

  v140 = *MEMORY[0x277D85DE8];

  return v139;
}

- (id)_largeBubblePulseAnimationWithSpeed:(double)a3 delay:(double)a4
{
  v7 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9EC8], a2, @"transform.scale.xy");
  objc_msgSend_setValues_(v7, v8, &unk_28669A7D8);
  objc_msgSend_setCalculationMode_(v7, v9, *MEMORY[0x277CDA060]);
  objc_msgSend_setTensionValues_(v7, v10, &unk_28669A7F0);
  objc_msgSend_convertedCurrentMediaTime(self, v11, v12);
  objc_msgSend_setBeginTime_(v7, v14, v15, v13 + a4);
  objc_msgSend_setDuration_(v7, v16, v17, 1.9);
  *&v18 = a3;
  objc_msgSend_setSpeed_(v7, v19, v20, v18);
  v22 = objc_msgSend_functionWithName_(MEMORY[0x277CD9EF8], v21, *MEMORY[0x277CDA7B8]);
  objc_msgSend_setTimingFunction_(v7, v23, v22);

  LODWORD(v24) = 2139095040;
  objc_msgSend_setRepeatCount_(v7, v25, v26, v24);
  objc_msgSend_setAutoreverses_(v7, v27, 1);
  objc_msgSend_setFillMode_(v7, v28, *MEMORY[0x277CDA238]);
  objc_msgSend_setRemovedOnCompletion_(v7, v29, 0);

  return v7;
}

- (void)startGrowAnimationWithCompletionBlock:(id)a3
{
  v93 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v5, v6);
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v7 = objc_opt_class();
  objc_msgSend_smallBubbleFrame(v7, v8, v9);
  v14 = objc_msgSend__smallBubbleGrowAnimationsWithSpeed_offset_(self, v10, v11, 1.0, v12, v13);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v85, v92, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v86;
    do
    {
      v20 = 0;
      do
      {
        if (*v86 != v19)
        {
          objc_enumerationMutation(v14);
        }

        objc_msgSend_addAnimation_forKey_(self->_smallBubble, v17, *(*(&v85 + 1) + 8 * v20++), 0);
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v85, v92, 16);
    }

    while (v18);
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v21 = objc_opt_class();
  objc_msgSend_mediumBubbleFrame(v21, v22, v23);
  v28 = objc_msgSend__mediumBubbleGrowAnimationsWithSpeed_offset_(self, v24, v25, 1.0, v26, v27);
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v81, v91, 16);
  if (v30)
  {
    v32 = v30;
    v33 = *v82;
    do
    {
      v34 = 0;
      do
      {
        if (*v82 != v33)
        {
          objc_enumerationMutation(v28);
        }

        objc_msgSend_addAnimation_forKey_(self->_mediumBubble, v31, *(*(&v81 + 1) + 8 * v34++), 0);
      }

      while (v32 != v34);
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v81, v91, 16);
    }

    while (v32);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  objc_msgSend_position(self->_largeBubble, v35, v36);
  v41 = objc_msgSend__largeBubbleGrowAnimationsWithSpeed_offset_(self, v37, v38, 1.0, v39, v40);
  v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v77, v90, 16);
  if (v43)
  {
    v45 = v43;
    v46 = *v78;
    do
    {
      v47 = 0;
      do
      {
        if (*v78 != v46)
        {
          objc_enumerationMutation(v41);
        }

        objc_msgSend_addAnimation_forKey_(self->_largeBubble, v44, *(*(&v77 + 1) + 8 * v47++), 0);
      }

      while (v45 != v47);
      v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v44, &v77, v90, 16);
    }

    while (v45);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  objc_msgSend_position(self->_largeBubble, v48, v49);
  v54 = objc_msgSend__largeBubbleGrowAnimationsWithSpeed_offset_(self, v50, v51, 1.0, v52, v53);
  v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v55, &v73, v89, 16);
  if (v56)
  {
    v58 = v56;
    v59 = *v74;
    do
    {
      v60 = 0;
      do
      {
        if (*v74 != v59)
        {
          objc_enumerationMutation(v54);
        }

        objc_msgSend_addAnimation_forKey_(self->_thinkingDotContainer, v57, *(*(&v73 + 1) + 8 * v60++), 0);
      }

      while (v58 != v60);
      v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v57, &v73, v89, 16);
    }

    while (v58);
  }

  v61 = MEMORY[0x277CD9FF0];
  v67 = MEMORY[0x277D85DD0];
  v68 = 3221225472;
  v69 = sub_2547FB9D8;
  v70 = &unk_279788F30;
  v71 = self;
  v72 = v4;
  v62 = v4;
  objc_msgSend_setCompletionBlock_(v61, v63, &v67);
  objc_msgSend_commit(MEMORY[0x277CD9FF0], v64, v65, v67, v68, v69, v70, v71);

  v66 = *MEMORY[0x277D85DE8];
}

- (void)startPulseAnimation
{
  v3 = objc_opt_class();
  if (objc_msgSend_supportsTypingIndicatorAnimation(v3, v4, v5))
  {
    objc_msgSend_stopPulseAnimation(self, v6, v7);
    objc_msgSend_begin(MEMORY[0x277CD9FF0], v8, v9);
    smallBubble = self->_smallBubble;
    v13 = objc_msgSend__smallBubblePulseAnimationWithSpeed_delay_(self, v11, v12, 1.0, 0.25);
    objc_msgSend_addAnimation_forKey_(smallBubble, v14, v13, @"kCKAnimationKeyPulse");

    mediumBubble = self->_mediumBubble;
    v18 = objc_msgSend__mediumBubblePulseAnimationWithSpeed_delay_(self, v16, v17, 1.0, 0.314999998);
    objc_msgSend_addAnimation_forKey_(mediumBubble, v19, v18, @"kCKAnimationKeyPulse");

    largeBubble = self->_largeBubble;
    v23 = objc_msgSend__largeBubblePulseAnimationWithSpeed_delay_(self, v21, v22, 1.0, 0.370000005);
    objc_msgSend_addAnimation_forKey_(largeBubble, v24, v23, @"kCKAnimationKeyPulse");

    thinkingDotContainer = self->_thinkingDotContainer;
    v28 = objc_msgSend__largeBubblePulseAnimationWithSpeed_delay_(self, v26, v27, 1.0, 0.370000005);
    objc_msgSend_addAnimation_forKey_(thinkingDotContainer, v29, v28, @"kCKAnimationKeyPulse");

    objc_msgSend__buildThinkingDots(self, v30, v31);
    v34 = MEMORY[0x277CD9FF0];

    objc_msgSend_commit(v34, v32, v33);
  }
}

- (void)stopPulseAnimation
{
  objc_msgSend_thinkingDotOpacity(self, a2, v2);
  *&v4 = v4;
  objc_msgSend_setOpacity_(self->_thinkingDot, v5, v6, v4);
  objc_msgSend_removeAllAnimations(self->_thinkingDot, v7, v8);
  objc_msgSend_removeAnimationForKey_(self->_smallBubble, v9, @"kCKAnimationKeyPulse");
  objc_msgSend_removeAnimationForKey_(self->_mediumBubble, v10, @"kCKAnimationKeyPulse");
  objc_msgSend_removeAnimationForKey_(self->_largeBubble, v11, @"kCKAnimationKeyPulse");
  thinkingDotContainer = self->_thinkingDotContainer;

  objc_msgSend_removeAnimationForKey_(thinkingDotContainer, v12, @"kCKAnimationKeyPulse");
}

- (void)startShrinkAnimationWithCompletionBlock:(id)a3
{
  v143[3] = *MEMORY[0x277D85DE8];
  v138 = a3;
  objc_msgSend_stopPulseAnimation(self, v4, v5);
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v6, v7);
  v9 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v8, @"transform.scale.xy");
  LODWORD(v10) = 1.0;
  v13 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v11, v12, v10);
  objc_msgSend_setFromValue_(v9, v14, v13);

  v17 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v15, v16, 0.0);
  objc_msgSend_setToValue_(v9, v18, v17);

  objc_msgSend_convertedCurrentMediaTime(self, v19, v20);
  objc_msgSend_setBeginTime_(v9, v21, v22);
  objc_msgSend_setDuration_(v9, v23, v24, 0.25);
  LODWORD(v25) = 1.0;
  objc_msgSend_setSpeed_(v9, v26, v27, v25);
  LODWORD(v28) = 0.25;
  LODWORD(v29) = 0.25;
  LODWORD(v30) = 1.0;
  LODWORD(v31) = 1036831949;
  v34 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v32, v33, v28, v31, v29, v30);
  objc_msgSend_setTimingFunction_(v9, v35, v34);

  v139 = *MEMORY[0x277CDA238];
  objc_msgSend_setFillMode_(v9, v36, *MEMORY[0x277CDA238]);
  objc_msgSend_setRemovedOnCompletion_(v9, v37, 1);
  objc_msgSend_addAnimation_forKey_(self->_smallBubble, v38, v9, 0);
  objc_msgSend_addAnimation_forKey_(self->_mediumBubble, v39, v9, 0);
  objc_msgSend_addAnimation_forKey_(self->_largeBubble, v40, v9, 0);
  objc_msgSend_addAnimation_forKey_(self->_thinkingDotContainer, v41, v9, 0);
  v43 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9EC8], v42, @"position.x");
  v44 = objc_opt_class();
  objc_msgSend_largeBubbleFrame(v44, v45, v46);
  v48 = v47;
  v50 = v49;
  v51 = v47;
  *&v47 = v51;
  v54 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v52, v53, v47);
  v143[0] = v54;
  v55 = v48 + 5.0;
  *&v55 = v48 + 5.0;
  v58 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v56, v57, v55);
  v143[1] = v58;
  *&v59 = v51;
  v62 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v60, v61, v59);
  v143[2] = v62;
  v64 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v63, v143, 3);
  objc_msgSend_setValues_(v43, v65, v64);

  v66 = *MEMORY[0x277CDA060];
  objc_msgSend_setCalculationMode_(v43, v67, *MEMORY[0x277CDA060]);
  objc_msgSend_convertedCurrentMediaTime(self, v68, v69);
  objc_msgSend_setBeginTime_(v43, v70, v71);
  objc_msgSend_setDuration_(v43, v72, v73, 0.25);
  LODWORD(v74) = 0.25;
  LODWORD(v75) = 0.25;
  LODWORD(v76) = 1.0;
  LODWORD(v77) = 1036831949;
  v80 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v78, v79, v74, v77, v75, v76);
  objc_msgSend_setTimingFunction_(v43, v81, v80);

  LODWORD(v82) = 1.0;
  objc_msgSend_setSpeed_(v43, v83, v84, v82);
  objc_msgSend_setFillMode_(v43, v85, v139);
  objc_msgSend_setRemovedOnCompletion_(v43, v86, 1);
  objc_msgSend_addAnimation_forKey_(self->_smallBubble, v87, v43, 0);
  objc_msgSend_addAnimation_forKey_(self->_mediumBubble, v88, v43, 0);
  objc_msgSend_addAnimation_forKey_(self->_largeBubble, v89, v43, 0);
  objc_msgSend_addAnimation_forKey_(self->_thinkingDotContainer, v90, v43, 0);
  v92 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9EC8], v91, @"position.y");
  v93 = v50;
  *&v94 = v93;
  v97 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v95, v96, v94);
  v142[0] = v97;
  v98 = v50 + -6.0;
  *&v98 = v50 + -6.0;
  v101 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v99, v100, v98);
  v142[1] = v101;
  *&v102 = v50;
  v105 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v103, v104, v102);
  v142[2] = v105;
  v107 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v106, v142, 3);
  objc_msgSend_setValues_(v92, v108, v107);

  objc_msgSend_setCalculationMode_(v92, v109, v66);
  objc_msgSend_convertedCurrentMediaTime(self, v110, v111);
  objc_msgSend_setBeginTime_(v92, v112, v113);
  objc_msgSend_setDuration_(v92, v114, v115, 0.25);
  LODWORD(v116) = 1045836616;
  LODWORD(v117) = 1048849804;
  LODWORD(v118) = 1057991709;
  LODWORD(v119) = 1064582806;
  v122 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x277CD9EF8], v120, v121, v116, v117, v118, v119);
  objc_msgSend_setTimingFunction_(v92, v123, v122);

  LODWORD(v124) = 1.0;
  objc_msgSend_setSpeed_(v92, v125, v126, v124);
  objc_msgSend_setFillMode_(v92, v127, v139);
  objc_msgSend_setRemovedOnCompletion_(v92, v128, 1);
  objc_msgSend_addAnimation_forKey_(self->_smallBubble, v129, v92, 0);
  objc_msgSend_addAnimation_forKey_(self->_mediumBubble, v130, v92, 0);
  objc_msgSend_addAnimation_forKey_(self->_largeBubble, v131, v92, 0);
  objc_msgSend_addAnimation_forKey_(self->_thinkingDotContainer, v132, v92, 0);
  if (v138)
  {
    v135 = MEMORY[0x277CD9FF0];
    v140[0] = MEMORY[0x277D85DD0];
    v140[1] = 3221225472;
    v140[2] = sub_2547FC200;
    v140[3] = &unk_279788F58;
    v141 = v138;
    objc_msgSend_setCompletionBlock_(v135, v136, v140);
  }

  objc_msgSend_commit(MEMORY[0x277CD9FF0], v133, v134);

  v137 = *MEMORY[0x277D85DE8];
}

- (void)stopAnimation
{
  objc_msgSend_stopPulseAnimation(self, a2, v2);
  objc_msgSend_removeAllAnimations(self->_smallBubble, v4, v5);
  objc_msgSend_removeAllAnimations(self->_mediumBubble, v6, v7);
  objc_msgSend_removeAllAnimations(self->_largeBubble, v8, v9);
  thinkingDotContainer = self->_thinkingDotContainer;

  objc_msgSend_removeAllAnimations(thinkingDotContainer, v10, v11);
}

+ (CGSize)defaultSize
{
  v2 = 78.5;
  v3 = 35.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGRect)smallBubbleFrame
{
  v2 = 35.0;
  v3 = 2.0;
  v4 = 5.5;
  v5 = 5.5;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v2;
  result.origin.x = v3;
  return result;
}

+ (CGPoint)smallBubbleGrowOffset
{
  v2 = 5.5;
  v3 = -2.5;
  result.y = v3;
  result.x = v2;
  return result;
}

+ (CGRect)mediumBubbleFrame
{
  objc_msgSend_smallBubbleFrame(a1, a2, v2);
  v4 = v3 + 7.0;
  v6 = v5 + -7.5;
  v7 = 11.5;
  v8 = 11.5;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v4;
  return result;
}

+ (CGPoint)mediumBubbleGrowOffset
{
  v2 = 5.0;
  v3 = 3.5;
  result.y = v3;
  result.x = v2;
  return result;
}

+ (CGRect)largeBubbleFrame
{
  objc_msgSend_smallBubbleFrame(a1, a2, v2);
  v4 = v3 + 16.0;
  v6 = v5 + -25.5;
  v7 = 57.5;
  v8 = 35.0;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v4;
  return result;
}

+ (CGPoint)largeBubbleGrowOffset
{
  v2 = 5.0;
  v3 = -6.0;
  result.y = v3;
  result.x = v2;
  return result;
}

+ (CGRect)iconImageFrame
{
  v2 = 11.0;
  v3 = 7.5;
  v4 = 27.0;
  v5 = 20.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

+ (CGPoint)thinkingDotsOffset
{
  v2 = 12.0;
  v3 = 13.5;
  result.y = v3;
  result.x = v2;
  return result;
}

@end