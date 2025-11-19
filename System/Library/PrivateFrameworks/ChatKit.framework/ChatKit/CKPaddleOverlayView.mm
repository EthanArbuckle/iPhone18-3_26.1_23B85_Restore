@interface CKPaddleOverlayView
- (CGRect)anchorRect;
- (CGRect)overlayRect;
- (CKPaddleOverlayView)initWithOverlayView:(id)a3 atAnchorRect:(CGRect)a4 inView:(id)a5 delegate:(id)a6;
- (CKPaddleOverlayViewDelegate)delegate;
- (void)dismiss;
- (void)showPaddleAnimated:(BOOL)a3 completion:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateShadowVisualStyling;
@end

@implementation CKPaddleOverlayView

- (CKPaddleOverlayView)initWithOverlayView:(id)a3 atAnchorRect:(CGRect)a4 inView:(id)a5 delegate:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = a3;
  v15 = a5;
  [(CKPaddleOverlayView *)self setDelegate:a6];
  [(CKPaddleOverlayView *)self setOpaque:0];
  v16 = [(CKPaddleOverlayView *)self layer];
  [v16 setAllowsGroupBlending:0];

  v17 = v15;
  v18 = [v17 superview];

  v19 = v17;
  if (v18)
  {
    v20 = v17;
    do
    {
      v19 = [v20 superview];

      v21 = [v19 superview];

      v20 = v19;
    }

    while (v21);
  }

  [v19 convertRect:v17 fromView:{x, y, width, height}];
  [(CKPaddleOverlayView *)self setAnchorRect:?];
  [v19 bounds];
  v22 = [(CKPaddleOverlayView *)self initWithFrame:?];
  v23 = v22;
  if (v22)
  {
    [(CKPaddleOverlayView *)v22 bounds];
    v25 = v24;
    objc_storeStrong(&v23->_viewToShow, a3);
    [(UIView *)v23->_viewToShow bounds];
    v27 = v26;
    v29 = v28;
    [(UIView *)v23->_viewToShow setFrame:v26];
    [(UIView *)v23->_viewToShow layoutIfNeeded];
    [(UIView *)v23->_viewToShow intrinsicContentSize];
    v32 = v30;
    v33 = v31;
    if (v30 >= v25 + -16.0)
    {
      v34 = v25 + -16.0;
    }

    else
    {
      v34 = v30;
    }

    if (v31 >= 94.0)
    {
      v35 = v31;
    }

    else
    {
      v35 = 94.0;
    }

    [(UIView *)v23->_viewToShow setFrame:v27, v29, v34, v35];
    p_x = &v23->_overlayRect.origin.x;
    v37 = v23->_anchorRect.origin.x + v23->_anchorRect.size.width * 0.5 - v32 * 0.5;
    v38 = ceilf(v37);
    if (v32 + 16.0 <= v25)
    {
      v39 = v32;
    }

    else
    {
      v39 = v25 + -16.0;
    }

    v40 = 8.0;
    if (v38 >= 8.0)
    {
      v40 = v38;
      if (v39 + v38 + 8.0 > v25)
      {
        v40 = v25 - v39 + -8.0;
      }
    }

    v41 = v23->_anchorRect.origin.y - v33 + -8.0;
    *p_x = v40;
    v23->_overlayRect.origin.y = ceilf(v41);
    v23->_overlayRect.size.width = v39;
    v23->_overlayRect.size.height = v33;
    v42 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{*p_x, v23->_overlayRect.origin.y, v23->_overlayRect.size.width, v23->_overlayRect.size.height}];
    contentView = v23->_contentView;
    v23->_contentView = v42;

    [(CKPaddleOverlayView *)v23 addSubview:v23->_contentView];
    v44 = objc_alloc(MEMORY[0x1E69DD298]);
    v45 = [MEMORY[0x1E69DC730] effectWithStyle:8];
    v46 = [v44 initWithEffect:v45];
    visualEffectView = v23->_visualEffectView;
    v23->_visualEffectView = v46;

    v48 = v23->_visualEffectView;
    [(UIView *)v23->_contentView bounds];
    [(UIVisualEffectView *)v48 setFrame:?];
    v49 = v23->_visualEffectView;
    v50 = +[CKUIBehavior sharedBehaviors];
    [v50 paddleOverlayRadius];
    [(UIVisualEffectView *)v49 _setContinuousCornerRadius:?];

    v51 = [(UIVisualEffectView *)v23->_visualEffectView layer];
    [v51 setMasksToBounds:1];

    v52 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    shadowView = v23->_shadowView;
    v23->_shadowView = v52;

    v54 = v23->_shadowView;
    [(UIView *)v23->_contentView bounds];
    [(UIImageView *)v54 setFrame:v55 + -150.0, v56 + -150.0, v57 + 300.0, v58 + 300.0];
    v105 = v23->_shadowView;
    v59 = [(CKPaddleOverlayView *)v23 traitCollection];
    [v59 displayScale];
    v61 = v60;
    if (CKShadowImageCreateWithShadowProperties_onceToken != -1)
    {
      [CKPaddleOverlayView initWithOverlayView:atAnchorRect:inView:delegate:];
    }

    v62 = [MEMORY[0x1E696AD98] numberWithDouble:v61];
    v63 = [CKShadowImageCreateWithShadowProperties_shadowImages objectForKey:v62];
    if (!v63)
    {
      v102 = v59;
      v103 = v62;
      v64 = v61 * 400.0;
      DeviceGray = CGColorSpaceCreateDeviceGray();
      if (CKIsRunningInMacCatalyst())
      {
        v66 = 1;
      }

      else
      {
        v66 = 7;
      }

      v67 = CKIsRunningInMacCatalyst() != 0;
      space = DeviceGray;
      v68 = CGBitmapContextCreate(0, (v61 * 400.0), (v61 * 400.0), 8uLL, (v61 * 400.0) << v67, DeviceGray, v66);
      v107.origin.x = 0.0;
      v107.origin.y = 0.0;
      v107.size.width = v64;
      v107.size.height = v107.size.width;
      CGContextClearRect(v68, v107);
      CGContextTranslateCTM(v68, 0.0, v64);
      CGContextScaleCTM(v68, v61, -v61);
      UIGraphicsPushContext(v68);
      v69 = MEMORY[0x1E69DC728];
      v108.origin.x = 0.0;
      v108.origin.y = 0.0;
      v108.size.width = 400.0;
      v108.size.height = 400.0;
      v109 = CGRectInset(v108, 150.0, 150.0);
      v70 = v109.origin.x;
      v71 = v109.origin.y;
      v72 = v109.size.width;
      v73 = v109.size.height;
      v74 = +[CKUIBehavior sharedBehaviors];
      [v74 paddleOverlayRadius];
      v104 = [v69 bezierPathWithRoundedRect:v70 cornerRadius:{v71, v72, v73, v75}];

      if (CKIsRunningInMacCatalyst())
      {
        CGContextSaveGState(v68);
        CGContextSetBlendMode(v68, kCGBlendModeMultiply);
        v76 = +[CKUIBehavior sharedBehaviors];
        v77 = [v76 theme];
        v78 = [v77 paddleShadow];
        v79 = [v78 CGColor];
        v106.width = 0.0;
        v106.height = -4.0;
        CGContextSetShadowWithColor(v68, v106, 16.0, v79);

        v80 = [MEMORY[0x1E69DC888] whiteColor];
        CGContextSetFillColorWithColor(v68, [v80 CGColor]);

        v81 = v104;
        [v104 fill];
        CGContextRestoreGState(v68);
      }

      else
      {
        v100 = v61;
        v82 = [MEMORY[0x1E69DCAB8] kitImageNamed:@"_UIPopoverShadow"];
        v83 = 0;
        v84 = *MEMORY[0x1E695F060];
        v85 = *(MEMORY[0x1E695F060] + 8);
        v86 = *MEMORY[0x1E695EFF8];
        v87 = *(MEMORY[0x1E695EFF8] + 8);
        v81 = v104;
        do
        {
          CGContextSaveGState(v68);
          switch(v83)
          {
            case 1:
              v89 = 0.0;
              v90 = 400.0;
              v91 = 1.57079633;
              break;
            case 3:
              v90 = 0.0;
              v89 = 400.0;
              v91 = 4.71238898;
              break;
            case 2:
              [v82 size];
              v89 = v88 + v88;
              v90 = 400.0;
              v91 = 3.14159265;
              break;
            default:
              v91 = 0.0;
              v89 = v85;
              v90 = v84;
              break;
          }

          CGContextTranslateCTM(v68, v90, v89);
          CGContextRotateCTM(v68, v91);
          [v82 drawAtPoint:{v86, v87}];
          CGContextRestoreGState(v68);
          ++v83;
        }

        while (v83 != 4);

        v61 = v100;
      }

      v92 = [MEMORY[0x1E69DC888] blackColor];
      CGContextSetFillColorWithColor(v68, [v92 CGColor]);

      CGContextSetBlendMode(v68, kCGBlendModeClear);
      [v81 fill];
      UIGraphicsPopContext();
      Image = CGBitmapContextCreateImage(v68);
      v94 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image scale:0 orientation:v61];
      v63 = [v94 resizableImageWithCapInsets:{170.0, 170.0, 170.0, 170.0}];
      if (v63)
      {
        [CKShadowImageCreateWithShadowProperties_shadowImages setObject:v63 forKey:v103];
      }

      CGImageRelease(Image);
      CGContextRelease(v68);
      CGColorSpaceRelease(space);

      v59 = v102;
      v62 = v103;
    }

    [(UIImageView *)v105 setImage:v63];
    [(CKPaddleOverlayView *)v23 updateShadowVisualStyling];
    [(UIView *)v23->_contentView addSubview:v23->_shadowView];
    v95 = objc_alloc(MEMORY[0x1E69DD250]);
    [(UIVisualEffectView *)v23->_visualEffectView bounds];
    v96 = [v95 initWithFrame:?];
    paddleView = v23->_paddleView;
    v23->_paddleView = v96;

    [(UIView *)v23->_paddleView addSubview:v23->_viewToShow];
    v98 = [(UIVisualEffectView *)v23->_visualEffectView contentView];
    [v98 addSubview:v23->_paddleView];

    [(UIView *)v23->_contentView addSubview:v23->_visualEffectView];
    [v19 addSubview:v23];
    [v19 bringSubviewToFront:v23];
  }

  return v23;
}

- (void)updateShadowVisualStyling
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (!CKIsRunningInMacCatalyst())
  {
    v8[0] = xmmword_190DD10C0;
    v8[1] = xmmword_190DD10D0;
    v8[2] = xmmword_190DD10E0;
    v8[3] = xmmword_190DD10F0;
    v8[4] = xmmword_190DD1100;
    v3 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v8];
    v4 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D78]];
    [v4 setValue:v3 forKey:@"inputColorMatrix"];
    v5 = [(CKPaddleOverlayView *)self shadowView];
    v6 = [v5 layer];
    v9[0] = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v6 setFilters:v7];
  }
}

- (void)showPaddleAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = [(CKPaddleOverlayView *)self contentView];
    v8 = [v7 layer];
    [v8 setAnchorPoint:{0.5, 1.0}];

    [(CKPaddleOverlayView *)self overlayRect];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(CKPaddleOverlayView *)self contentView];
    [v17 setFrame:{v10, v12, v14, v16}];

    v18 = [(CKPaddleOverlayView *)self contentView];
    v19 = v18;
    if (v18)
    {
      [v18 transform3D];
    }

    else
    {
      memset(&v31, 0, sizeof(v31));
    }

    v22 = 1.0;
    CATransform3DScale(&v32, &v31, 0.2, 0.2, 1.0);
    v23 = [(CKPaddleOverlayView *)self contentView];
    v31 = v32;
    [v23 setTransform3D:&v31];

    v24 = [(CKPaddleOverlayView *)self shadowView];
    [v24 setAlpha:0.0];

    v25 = [(CKPaddleOverlayView *)self visualEffectView];
    [v25 setAlpha:0.0];

    if (UIAccessibilityIsReduceMotionEnabled())
    {
      v26 = 0.4;
    }

    else
    {
      v22 = 0.8;
      v26 = 0.32;
    }

    v27 = MEMORY[0x1E69DD250];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __53__CKPaddleOverlayView_showPaddleAnimated_completion___block_invoke;
    v30[3] = &unk_1E72EBA18;
    v30[4] = self;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __53__CKPaddleOverlayView_showPaddleAnimated_completion___block_invoke_2;
    v28[3] = &unk_1E72F4FB0;
    v29 = v6;
    [v27 _animateUsingSpringWithDampingRatio:1 response:v30 tracking:v28 dampingRatioSmoothing:v22 responseSmoothing:v26 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
  }

  else
  {
    v20 = [(CKPaddleOverlayView *)self shadowView];
    [v20 setAlpha:1.0];

    v21 = [(CKPaddleOverlayView *)self visualEffectView];
    [v21 setAlpha:1.0];

    if (v6)
    {
      (*(v6 + 2))(v6, 1);
    }
  }
}

void __53__CKPaddleOverlayView_showPaddleAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contentView];
  v3 = *(MEMORY[0x1E69792E8] + 80);
  v9[4] = *(MEMORY[0x1E69792E8] + 64);
  v9[5] = v3;
  v4 = *(MEMORY[0x1E69792E8] + 112);
  v9[6] = *(MEMORY[0x1E69792E8] + 96);
  v9[7] = v4;
  v5 = *(MEMORY[0x1E69792E8] + 16);
  v9[0] = *MEMORY[0x1E69792E8];
  v9[1] = v5;
  v6 = *(MEMORY[0x1E69792E8] + 48);
  v9[2] = *(MEMORY[0x1E69792E8] + 32);
  v9[3] = v6;
  [v2 setTransform3D:v9];

  v7 = [*(a1 + 32) shadowView];
  [v7 setAlpha:1.0];

  v8 = [*(a1 + 32) visualEffectView];
  [v8 setAlpha:1.0];
}

uint64_t __53__CKPaddleOverlayView_showPaddleAnimated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dismiss
{
  if (CKIsRunningInMacCatalyst())
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __30__CKPaddleOverlayView_dismiss__block_invoke;
    v9[3] = &unk_1E72EBA18;
    v9[4] = self;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __30__CKPaddleOverlayView_dismiss__block_invoke_2;
    v8[3] = &unk_1E72EB9C8;
    v8[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v9 animations:v8 completion:0.2];
  }

  else
  {
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    v4 = 0.85;
    if (IsReduceMotionEnabled)
    {
      v4 = 1.0;
    }

    v5 = 0.35;
    if (IsReduceMotionEnabled)
    {
      v5 = 0.4;
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __30__CKPaddleOverlayView_dismiss__block_invoke_3;
    v7[3] = &unk_1E72EBA18;
    v7[4] = self;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __30__CKPaddleOverlayView_dismiss__block_invoke_4;
    v6[3] = &unk_1E72F4FD8;
    v6[4] = self;
    [MEMORY[0x1E69DD250] _animateUsingSpringWithDampingRatio:0 response:v7 tracking:v6 dampingRatioSmoothing:v4 responseSmoothing:v5 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
  }
}

void __30__CKPaddleOverlayView_dismiss__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) darkOuterGlowView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) shadowView];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) visualEffectView];
  [v4 setAlpha:0.0];
}

void __30__CKPaddleOverlayView_dismiss__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = [*(a1 + 32) delegate];
  [v2 didDismissPaddleOverlayView:*(a1 + 32)];
}

void __30__CKPaddleOverlayView_dismiss__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) contentView];
  v3 = v2;
  if (v2)
  {
    [v2 transform3D];
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
  }

  CATransform3DScale(&v8, &v7, 0.2, 0.2, 1.0);
  v4 = [*(a1 + 32) contentView];
  v7 = v8;
  [v4 setTransform3D:&v7];

  v5 = [*(a1 + 32) shadowView];
  [v5 setAlpha:0.0];

  v6 = [*(a1 + 32) visualEffectView];
  [v6 setAlpha:0.0];
}

void __30__CKPaddleOverlayView_dismiss__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = [*(a1 + 32) delegate];
  [v2 didDismissPaddleOverlayView:*(a1 + 32)];
}

- (void)traitCollectionDidChange:(id)a3
{
  v3.receiver = self;
  v3.super_class = CKPaddleOverlayView;
  [(CKPaddleOverlayView *)&v3 traitCollectionDidChange:a3];
}

- (CKPaddleOverlayViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)overlayRect
{
  x = self->_overlayRect.origin.x;
  y = self->_overlayRect.origin.y;
  width = self->_overlayRect.size.width;
  height = self->_overlayRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)anchorRect
{
  x = self->_anchorRect.origin.x;
  y = self->_anchorRect.origin.y;
  width = self->_anchorRect.size.width;
  height = self->_anchorRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end