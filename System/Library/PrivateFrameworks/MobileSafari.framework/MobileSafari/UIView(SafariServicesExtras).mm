@interface UIView(SafariServicesExtras)
+ (void)_sf_animateLinkImage:()SafariServicesExtras withAnimation:fromPoint:inView:toRect:inView:afterImageDisappearsBlock:afterDestinationLayerBouncesBlock:;
+ (void)_sf_animateLinkImage:()SafariServicesExtras withAnimation:fromRect:inView:toRect:inView:afterImageDisappearsBlock:afterDestinationLayerBouncesBlock:;
+ (void)_sf_cancelLinkAnimationsOnSourceWindow:()SafariServicesExtras destinationWindow:;
+ (void)_sf_performLinkAnimation:()SafariServicesExtras onView:;
+ (void)safari_performWithoutRetargetingAnimations:()SafariServicesExtras;
- (BOOL)_sf_hasLandscapeAspectRatio;
- (BOOL)_sf_isFullScreenHeight;
- (BOOL)_sf_isFullScreenWidth;
- (double)_sf_bottomUnsafeAreaFrame;
- (double)_sf_bottomUnsafeAreaFrameForToolbar;
- (double)_sf_safeAreaBounds;
- (double)_sf_safeAreaInsetsFlippedForLayoutDirectionality;
- (id)_sf_firstAncestorViewOfClass:()SafariServicesExtras;
- (id)_sf_viewAncestrySummaryWithMinDepth:()SafariServicesExtras paddingLevel:;
- (id)safari_snapshotImageFromIOSurfaceInRect:()SafariServicesExtras;
- (id)sf_commonAncestrySummaryWithView:()SafariServicesExtras;
- (id)sf_privacyPreservingDescription;
- (uint64_t)_sf_depth;
- (uint64_t)_sf_setMatchesIntrinsicContentSize;
- (uint64_t)_sf_snapshotImageFromIOSurface;
- (uint64_t)sf_applyContentSizeCategoryLimitsForToolbarButton;
- (void)_sf_addEdgeMatchedSubview:()SafariServicesExtras;
- (void)_sf_addInteractionUnlessNil:()SafariServicesExtras;
- (void)_sf_setOrderedSubviews:()SafariServicesExtras count:;
@end

@implementation UIView(SafariServicesExtras)

- (uint64_t)sf_applyContentSizeCategoryLimitsForToolbarButton
{
  [self setMinimumContentSizeCategory:*MEMORY[0x1E69DDC70]];
  v2 = *MEMORY[0x1E69DDC58];

  return [self setMaximumContentSizeCategory:v2];
}

- (BOOL)_sf_isFullScreenWidth
{
  _screen = [self _screen];
  window = [self window];
  v4 = window;
  if (window)
  {
    selfCopy = window;
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  v7 = 0;
  if (_screen && v6)
  {
    [_screen bounds];
    Width = CGRectGetWidth(v10);
    [v6 bounds];
    v7 = Width == CGRectGetWidth(v11);
  }

  return v7;
}

- (BOOL)_sf_hasLandscapeAspectRatio
{
  [self frame];
  x = v7.origin.x;
  y = v7.origin.y;
  width = v7.size.width;
  height = v7.size.height;
  v5 = CGRectGetWidth(v7);
  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  return v5 > CGRectGetHeight(v8);
}

- (BOOL)_sf_isFullScreenHeight
{
  _screen = [self _screen];
  window = [self window];
  v4 = window;
  if (window)
  {
    selfCopy = window;
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  v7 = 0;
  if (_screen && v6)
  {
    [_screen bounds];
    Height = CGRectGetHeight(v10);
    [v6 bounds];
    v7 = Height == CGRectGetHeight(v11);
  }

  return v7;
}

- (double)_sf_safeAreaInsetsFlippedForLayoutDirectionality
{
  [self safeAreaInsets];
  v3 = v2;
  [self _sf_usesLeftToRightLayout];
  return v3;
}

- (double)_sf_safeAreaBounds
{
  [self bounds];
  v3 = v2;
  [self safeAreaInsets];
  return v3 + v4;
}

- (double)_sf_bottomUnsafeAreaFrame
{
  [self bounds];
  v3 = v2;
  rect = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [self safeAreaInsets];
  v11 = v3 + v10;
  v13 = v5 + v12;
  v15 = v7 - (v10 + v14);
  v17 = v9 - (v12 + v16);
  v21.origin.x = v3 + v10;
  v21.origin.y = v13;
  v21.size.width = v15;
  v21.size.height = v17;
  rect_8 = CGRectGetMinX(v21);
  v22.origin.x = v11;
  v22.origin.y = v13;
  v22.size.width = v15;
  v22.size.height = v17;
  CGRectGetMaxY(v22);
  v23.origin.x = v11;
  v23.origin.y = v13;
  v23.size.width = v15;
  v23.size.height = v17;
  CGRectGetWidth(v23);
  v24.origin.x = rect;
  v24.origin.y = v5;
  v24.size.width = v7;
  v24.size.height = v9;
  CGRectGetHeight(v24);
  v25.origin.x = v11;
  v25.origin.y = v13;
  v25.size.width = v15;
  v25.size.height = v17;
  CGRectGetMaxY(v25);
  return rect_8;
}

- (double)_sf_bottomUnsafeAreaFrameForToolbar
{
  [self _sf_bottomUnsafeAreaFrame];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if ((_SFDeviceHasHomeButton() & 1) == 0 && _SFDeviceIsPad())
  {
    v10.origin.x = v2;
    v10.origin.y = v4;
    v10.size.width = v6;
    v10.size.height = v8;
    CGRectGetHeight(v10);
  }

  return v2;
}

- (id)sf_privacyPreservingDescription
{
  v2 = MEMORY[0x1E696AD60];
  v3 = objc_opt_class();
  [self bounds];
  v4 = NSStringFromCGRect(v13);
  [self center];
  v5 = NSStringFromCGPoint(v12);
  v6 = [v2 stringWithFormat:@"<%@: %p bounds = %@; center = %@", v3, self, v4, v5];;

  memset(&v10, 0, sizeof(v10));
  [self transform];
  transform = v10;
  if (!CGAffineTransformIsIdentity(&transform))
  {
    transform = v10;
    v7 = NSStringFromCGAffineTransform(&transform);
    [v6 appendFormat:@"; transform = %@", v7];
  }

  [v6 appendString:@">"];

  return v6;
}

- (id)_sf_viewAncestrySummaryWithMinDepth:()SafariServicesExtras paddingLevel:
{
  array = [MEMORY[0x1E695DF70] array];
  _sf_depth = [self _sf_depth];
  selfCopy = self;
  if (selfCopy)
  {
    v10 = selfCopy;
    if (_sf_depth >= a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = _sf_depth;
    }

    v12 = ~_sf_depth + v11;
    do
    {
      sf_privacyPreservingDescription = [v10 sf_privacyPreservingDescription];
      [array insertObject:sf_privacyPreservingDescription atIndex:0];

      if (__CFADD__(v12++, 1))
      {
        break;
      }

      superview = [v10 superview];

      v10 = superview;
    }

    while (superview);
  }

  string = [MEMORY[0x1E696AD60] string];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __81__UIView_SafariServicesExtras___sf_viewAncestrySummaryWithMinDepth_paddingLevel___block_invoke;
  v22[3] = &unk_1E721C340;
  v25 = a4;
  v17 = string;
  v23 = v17;
  v24 = array;
  v18 = array;
  [v18 enumerateObjectsUsingBlock:v22];
  v19 = v24;
  v20 = v17;

  return v17;
}

- (uint64_t)_sf_depth
{
  selfCopy = self;
  if (!selfCopy)
  {
    return 0;
  }

  v2 = selfCopy;
  v3 = 0;
  do
  {
    ++v3;
    superview = [v2 superview];

    v2 = superview;
  }

  while (superview);
  return v3;
}

- (id)sf_commonAncestrySummaryWithView:()SafariServicesExtras
{
  v4 = a3;
  v5 = v4;
  if (!v4 || v4 == self)
  {
    sf_viewAncestrySummary = [self sf_viewAncestrySummary];
  }

  else
  {
    _sf_depth = [self _sf_depth];
    _sf_depth2 = [v5 _sf_depth];
    if (_sf_depth <= _sf_depth2)
    {
      v8 = _sf_depth2;
    }

    else
    {
      v8 = _sf_depth;
    }

    if (_sf_depth <= _sf_depth2)
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = v5;
    }

    if (_sf_depth <= _sf_depth2)
    {
      selfCopy2 = v5;
    }

    else
    {
      selfCopy2 = self;
    }

    if (_sf_depth >= _sf_depth2)
    {
      v11 = _sf_depth2;
    }

    else
    {
      v11 = _sf_depth;
    }

    v12 = selfCopy;
    v13 = selfCopy2;
    superview = v13;
    if (v8 > v11)
    {
      do
      {
        v15 = superview;
        --v8;
        superview = [superview superview];
      }

      while (v8 > v11);
      v8 = v11;
    }

    if (v12)
    {
      v16 = superview == 0;
    }

    else
    {
      v16 = 1;
    }

    v17 = v16;
    if (v16 || v12 == superview)
    {
      superview2 = v12;
    }

    else
    {
      superview2 = v12;
      do
      {
        v19 = superview2;
        v20 = superview;
        --v8;
        superview2 = [superview2 superview];

        superview = [superview superview];

        if (superview2)
        {
          v21 = superview == 0;
        }

        else
        {
          v21 = 1;
        }

        v17 = v21;
      }

      while (!v21 && superview2 != superview);
    }

    v23 = MEMORY[0x1E696AEC0];
    if (v17)
    {
      sf_viewAncestrySummary2 = [self sf_viewAncestrySummary];
      [v5 sf_viewAncestrySummary];
    }

    else
    {
      sf_viewAncestrySummary2 = [v12 _sf_viewAncestrySummaryWithMinDepth:v8 paddingLevel:0];
      [v13 _sf_viewAncestrySummaryWithMinDepth:v8 + 1 paddingLevel:1];
    }
    v25 = ;
    sf_viewAncestrySummary = [v23 stringWithFormat:@"%@\n%@", sf_viewAncestrySummary2, v25];
  }

  return sf_viewAncestrySummary;
}

- (uint64_t)_sf_snapshotImageFromIOSurface
{
  [self bounds];

  return [self safari_snapshotImageFromIOSurfaceInRect:?];
}

- (id)safari_snapshotImageFromIOSurfaceInRect:()SafariServicesExtras
{
  v1 = [self _imageFromRect:?];
  if ([v1 ioSurface])
  {
    v2 = UICreateCGImageFromIOSurface();
    v3 = MEMORY[0x1E69DCAB8];
    [v1 scale];
    v5 = [v3 imageWithCGImage:v2 scale:objc_msgSend(v1 orientation:{"imageOrientation"), v4}];

    CFRelease(v2);
    v1 = v5;
  }

  return v1;
}

- (void)_sf_setOrderedSubviews:()SafariServicesExtras count:
{
  subviews = [self subviews];
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  if (a4)
  {
    v9 = 0;
    do
    {
      if (a3[v9])
      {
        [indexSet addIndex:v9];
      }

      ++v9;
    }

    while (a4 != v9);
  }

  v10 = [indexSet count];
  if (v10 == [subviews count])
  {
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x2020000000;
    v22[3] = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 1;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__UIView_SafariServicesExtras___sf_setOrderedSubviews_count___block_invoke;
    v13[3] = &unk_1E721C368;
    v17 = a3;
    v14 = subviews;
    v15 = v22;
    v16 = &v18;
    [indexSet enumerateIndexesUsingBlock:v13];
    v11 = *(v19 + 24);

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(v22, 8);
    if (!a4 || (v11 & 1) != 0)
    {
      goto LABEL_15;
    }
  }

  else if (!a4)
  {
    goto LABEL_15;
  }

  v12 = 0;
  do
  {
    if (*a3)
    {
      [self insertSubview:*a3 atIndex:v12++];
    }

    ++a3;
    --a4;
  }

  while (a4);
LABEL_15:
}

- (id)_sf_firstAncestorViewOfClass:()SafariServicesExtras
{
  selfCopy = self;
  if (selfCopy)
  {
    do
    {
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview = [selfCopy superview];

      selfCopy = superview;
    }

    while (superview);
  }

  return selfCopy;
}

- (uint64_t)_sf_setMatchesIntrinsicContentSize
{
  LODWORD(a2) = 1148846080;
  [self setContentCompressionResistancePriority:0 forAxis:a2];
  LODWORD(v3) = 1148846080;
  [self setContentHuggingPriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [self setContentCompressionResistancePriority:1 forAxis:v4];
  LODWORD(v5) = 1148846080;

  return [self setContentHuggingPriority:1 forAxis:v5];
}

- (void)_sf_addEdgeMatchedSubview:()SafariServicesExtras
{
  v19[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [self addSubview:v4];
  v15 = MEMORY[0x1E696ACD8];
  leadingAnchor = [v4 leadingAnchor];
  leadingAnchor2 = [self leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v19[0] = v16;
  trailingAnchor = [v4 trailingAnchor];
  trailingAnchor2 = [self trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v19[1] = v7;
  topAnchor = [v4 topAnchor];
  topAnchor2 = [self topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v19[2] = v10;
  bottomAnchor = [v4 bottomAnchor];

  bottomAnchor2 = [self bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v19[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  [v15 activateConstraints:v14];
}

- (void)_sf_addInteractionUnlessNil:()SafariServicesExtras
{
  if (a3)
  {
    return [self addInteraction:?];
  }

  return self;
}

+ (void)_sf_animateLinkImage:()SafariServicesExtras withAnimation:fromPoint:inView:toRect:inView:afterImageDisappearsBlock:afterDestinationLayerBouncesBlock:
{
  v26 = a14;
  v27 = a13;
  v28 = a12;
  v37 = a11;
  v29 = a9;
  [v29 size];
  v31 = v30;
  v33 = v32;
  v34 = floor(a2 - v30 * 0.5);
  v35 = floor(a3 - v32 * 0.5);
  cGImage = [v29 CGImage];

  [self _sf_animateLinkImage:cGImage withAnimation:a10 fromRect:v37 inView:v28 toRect:v27 inView:v26 afterImageDisappearsBlock:v34 afterDestinationLayerBouncesBlock:{v35, v31, v33, a4, a5, a6, a7}];
}

+ (void)_sf_animateLinkImage:()SafariServicesExtras withAnimation:fromRect:inView:toRect:inView:afterImageDisappearsBlock:afterDestinationLayerBouncesBlock:
{
  v134[1] = *MEMORY[0x1E69E9840];
  v30 = a13;
  v31 = a14;
  v32 = a15;
  v33 = a16;
  v34 = v33;
  if (v31)
  {
    v118 = v33;
    window = [v30 window];
    [v31 window];
    v36 = v35 = v30;
    selfCopy = self;
    [self _sf_cancelLinkAnimationsOnSourceWindow:window destinationWindow:v36];
    [window layer];
    v37 = v121 = a12;
    layer = [v36 layer];
    v38 = objc_alloc_init(MEMORY[0x1E6979398]);
    v133 = @"sublayers";
    null = [MEMORY[0x1E695DFB0] null];
    v134[0] = null;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v134 forKeys:&v133 count:1];
    v41 = v40 = v32;
    [v38 setActions:v41];

    [v37 addSublayer:v38];
    v42 = objc_alloc_init(MEMORY[0x1E6979398]);
    layer2 = [v35 layer];
    [layer2 convertRect:v38 toLayer:{a2, a3, a4, a5}];
    [v42 setFrame:?];

    [v42 setContents:a11];
    [v38 addSublayer:v42];
    animation = [MEMORY[0x1E6979308] animation];
    v119 = v40;
    v45 = v40;
    v46 = v31;
    v47 = _Block_copy(v45);
    [animation setValue:v47 forKey:@"afterImageDisappearsKey"];

    [animation setValue:v42 forKey:@"layer"];
    [animation setDuration:?];
    UIAnimationDragCoefficient();
    *&v49 = 1.0 / v48;
    [animation setSpeed:v49];
    v135 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [animation setPreferredFrameRateRange:{*&v135.minimum, *&v135.maximum, *&v135.preferred}];
    v114 = animation;
    [animation setHighFrameRateReason:1638403];
    layer3 = [v31 layer];
    [v37 bounds];
    [v37 convertRect:v38 toLayer:?];
    v111 = v51;
    v52 = v38;
    [layer bounds];
    [window convertRect:v36 fromWindow:?];
    v117 = v37;
    v53 = v42;
    [v37 convertRect:v52 toLayer:?];
    v55 = v54;
    v56 = a9;
    v108 = v58;
    v109 = v57;
    v59 = a8;
    v61 = v60;
    [v42 position];
    v63 = v62;
    y = v64;
    v139.origin.x = a6;
    v139.origin.y = a7;
    v139.size.width = v59;
    v139.size.height = v56;
    MidX = CGRectGetMidX(v139);
    v140.origin.x = a6;
    v140.origin.y = a7;
    v140.size.width = v59;
    v140.size.height = v56;
    v115 = v36;
    [window convertPoint:v36 fromWindow:{MidX, CGRectGetMidY(v140)}];
    v112 = v52;
    v113 = layer3;
    [layer3 convertPoint:v52 toLayer:?];
    v67 = v66;
    v69 = v68;
    v70 = (v63 + v66) * 0.5;
    if (v121 == 1)
    {
      v71 = v70;
    }

    else
    {
      v71 = v67;
    }

    v141.origin.x = v55;
    v141.size.height = v108;
    v141.origin.y = v109;
    v141.size.width = v61;
    MinY = CGRectGetMinY(v141);
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, v63, y);
    CGPathAddQuadCurveToPoint(Mutable, 0, v71, MinY, v67, v69);
    CGPathAddLineToPoint(Mutable, 0, v67, v69 + 8.0);
    CGPathAddLineToPoint(Mutable, 0, v67, v69 + -2.66666667);
    CGPathAddLineToPoint(Mutable, 0, v67, v69);
    v74 = [MEMORY[0x1E6979390] animationWithKeyPath:@"position"];
    [v74 setKeyTimes:&unk_1EFF74490];
    v75 = linkImageAnimationTimingFunctions();
    [v74 setTimingFunctions:v75];

    [v74 setPath:Mutable];
    [v74 setDuration:0.9];
    v136 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [v74 setPreferredFrameRateRange:{*&v136.minimum, *&v136.maximum, *&v136.preferred}];
    [v74 setHighFrameRateReason:1638403];
    CGPathRelease(Mutable);
    v132[0] = v74;
    v123 = v46;
    if (v53)
    {
      [v53 transform];
    }

    else
    {
      memset(&v128, 0, sizeof(v128));
    }

    v76 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
    v131 = v128;
    v77 = [MEMORY[0x1E696B098] valueWithBytes:&v131 objCType:"{CATransform3D=dddddddddddddddd}"];
    [v76 setFromValue:v77];

    v78 = MEMORY[0x1E696B098];
    v129 = v128;
    CATransform3DRotate(&v130, &v129, (v67 - v63) / v111 * 0.167 * 3.14159265, 0.0, 0.0, 1.0);
    v79 = [v78 valueWithBytes:&v130 objCType:"{CATransform3D=dddddddddddddddd}"];
    [v76 setToValue:v79];

    [v76 setDuration:0.9];
    [v76 setAdditive:1];
    v137 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [v76 setPreferredFrameRateRange:{*&v137.minimum, *&v137.maximum, *&v137.preferred}];
    [v76 setHighFrameRateReason:1638403];
    v132[1] = v76;
    [v53 bounds];
    v81 = v80;
    v83 = v82;
    [v46 bounds];
    v85 = v84;
    v87 = v86;
    if (v53)
    {
      [v53 transform];
    }

    else
    {
      memset(&v128, 0, sizeof(v128));
    }

    v88 = v85 / v81;
    if (v85 / v81 <= v87 / v83)
    {
      v89 = v87 / v83;
    }

    else
    {
      v89 = v85 / v81;
    }

    if (v85 / v81 >= v87 / v83)
    {
      v88 = v87 / v83;
    }

    v90 = v88 * 1.5;
    if (v89 < v90)
    {
      v90 = v89;
    }

    v91 = fmin(v90, 0.75);
    v92 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
    v131 = v128;
    v93 = [MEMORY[0x1E696B098] valueWithBytes:&v131 objCType:"{CATransform3D=dddddddddddddddd}"];
    [v92 setFromValue:v93];

    v94 = MEMORY[0x1E696B098];
    v129 = v128;
    CATransform3DScale(&v130, &v129, v91, v91, 1.0);
    v95 = [v94 valueWithBytes:&v130 objCType:"{CATransform3D=dddddddddddddddd}"];
    [v92 setToValue:v95];

    [v92 setDuration:0.6462];
    v96 = *MEMORY[0x1E6979EB0];
    v97 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB0]];
    [v92 setTimingFunction:v97];

    [v92 setAdditive:1];
    v138 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [v92 setPreferredFrameRateRange:{*&v138.minimum, *&v138.maximum, *&v138.preferred}];
    [v92 setHighFrameRateReason:1638403];
    v132[2] = v92;
    v98 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [v98 setFromValue:&unk_1EFF73DF0];
    [v98 setToValue:&unk_1EFF74390];
    [v98 setDuration:0.1422];
    [v98 setBeginTime:0.504];
    v99 = [MEMORY[0x1E69793D0] functionWithName:v96];
    [v98 setTimingFunction:v99];

    [v98 setFillMode:*MEMORY[0x1E69797D8]];
    v132[3] = v98;
    v100 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:4];
    [v114 setAnimations:v100];

    if (v113)
    {
      v101 = v113;
      [v113 transform];
      v30 = v35;
      v102 = v123;
      v34 = v118;
    }

    else
    {
      memset(&v131, 0, sizeof(v131));
      v30 = v35;
      v102 = v123;
      v34 = v118;
      v101 = 0;
    }

    v103 = getLinkAnimation(v121, &v131, 0);
    v104 = _Block_copy(v34);
    [v103 setValue:v104 forKey:@"afterDestinationLayerBounces"];

    [v103 setValue:MEMORY[0x1E695E118] forKey:@"isDestinationLayerAnimation"];
    v105 = objc_alloc_init(SFBlockBasedCAAnimationDelegate);
    v124[0] = MEMORY[0x1E69E9820];
    v124[1] = 3221225472;
    v124[2] = __157__UIView_SafariServicesExtras___sf_animateLinkImage_withAnimation_fromRect_inView_toRect_inView_afterImageDisappearsBlock_afterDestinationLayerBouncesBlock___block_invoke;
    v124[3] = &unk_1E721C390;
    v126 = v115;
    v127 = selfCopy;
    v125 = window;
    v106 = v115;
    v107 = window;
    [(SFBlockBasedCAAnimationDelegate *)v105 setAnimationDidStopBlock:v124];
    [v114 setDelegate:v105];
    [(SFBlockBasedCAAnimationDelegate *)v105 associateLifetimeWithAnimation:v114];
    [v103 setDelegate:v105];
    [(SFBlockBasedCAAnimationDelegate *)v105 associateLifetimeWithAnimation:v103];
    [v53 addAnimation:v114 forKey:0];
    [v53 setOpacity:0.0];
    [v101 addAnimation:v103 forKey:@"SafariLinkAnimation"];

    v32 = v119;
    v31 = v102;
  }

  else
  {
    if (v32)
    {
      v32[2](v32);
    }

    if (v34)
    {
      v34[2](v34);
    }
  }
}

+ (void)_sf_performLinkAnimation:()SafariServicesExtras onView:
{
  layer = [a4 layer];
  v6 = [layer animationForKey:@"SafariLinkAnimation"];

  if (!v6)
  {
    if (layer)
    {
      [layer transform];
    }

    else
    {
      memset(v8, 0, sizeof(v8));
    }

    v7 = getLinkAnimation(a3, v8, 1);
    [layer addAnimation:v7 forKey:@"SafariLinkAnimation"];
  }
}

+ (void)_sf_cancelLinkAnimationsOnSourceWindow:()SafariServicesExtras destinationWindow:
{
  v5 = a4;
  v6 = a3;
  v8 = objc_getAssociatedObject(v6, &linkAnimationContainerLayerAssociatedObjectKey);
  objc_setAssociatedObject(v6, &linkAnimationContainerLayerAssociatedObjectKey, 0, 1);

  [v8 removeFromSuperlayer];
  v7 = objc_getAssociatedObject(v5, &linkAnimationDestinationLayerAssociatedObjectKey);
  objc_setAssociatedObject(v5, &linkAnimationDestinationLayerAssociatedObjectKey, 0, 1);

  [v7 removeAnimationForKey:@"SafariLinkAnimation"];
}

+ (void)safari_performWithoutRetargetingAnimations:()SafariServicesExtras
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__UIView_SafariServicesExtras__safari_performWithoutRetargetingAnimations___block_invoke;
  v6[3] = &unk_1E721C3C8;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [self performWithoutAnimation:v6];
}

@end