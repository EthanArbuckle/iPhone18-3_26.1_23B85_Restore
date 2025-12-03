@interface TabDocumentView
- ($3E8622391F623B53F6251319F3599675)currentGeometry;
- (TabDocumentViewGeometryProviding)geometryProvider;
- (double)scrollDistance;
- (void)_performReaderTransitionWithCompletion:(id)completion;
- (void)applyGeometry:(id *)geometry toWebView:(id)view;
- (void)applyGeometryToWebView:(id)view;
- (void)beginInteractiveGeometryChanges;
- (void)endInteractiveGeometryChanges;
- (void)ensureContentOffsetWithinContentInsets;
- (void)layoutSubviews;
- (void)setInteractionHintPresented:(BOOL)presented animated:(BOOL)animated;
- (void)setReaderWebView:(id)view;
- (void)setShowingReader:(BOOL)reader animated:(BOOL)animated completion:(id)completion;
- (void)setShowsInteractionHint:(BOOL)hint;
- (void)setWebView:(id)view;
@end

@implementation TabDocumentView

- (void)ensureContentOffsetWithinContentInsets
{
  [(TabDocumentView *)self layoutIfNeeded];
  scrollView = [(WKWebView *)self->_webView scrollView];
  if (([scrollView isDragging] & 1) == 0)
  {
    [scrollView contentOffset];
    v4 = v3;
    v6 = v5;
    [scrollView adjustedContentInset];
    if (v6 < -v7)
    {
      [scrollView setContentOffset:v4];
    }
  }

  scrollView2 = [(WKWebView *)self->_readerWebView scrollView];
  if (([scrollView2 isDragging] & 1) == 0)
  {
    [scrollView2 contentOffset];
    v9 = v8;
    v11 = v10;
    [scrollView2 adjustedContentInset];
    if (v11 < -v12)
    {
      [scrollView2 setContentOffset:v9];
    }
  }
}

- (void)layoutSubviews
{
  v47[4] = *MEMORY[0x277D85DE8];
  v46.receiver = self;
  v46.super_class = TabDocumentView;
  [(TabDocumentView *)&v46 layoutSubviews];
  _sf_effectiveViewToLayOut = [(WKWebView *)self->_webView _sf_effectiveViewToLayOut];
  readerWebView = self->_readerWebView;
  v47[0] = _sf_effectiveViewToLayOut;
  v47[1] = readerWebView;
  interactionHint = self->_interactionHint;
  v47[2] = self->_readerTransitionContainerView;
  v47[3] = interactionHint;
  [(TabDocumentView *)self _sf_setOrderedSubviews:v47 count:4];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  [(TabDocumentView *)self currentGeometry];
  webView = self->_webView;
  if (webView)
  {
    isHidden = [(WKWebView *)webView isHidden];
    v8 = self->_webView;
    if (self->_showingReader != isHidden)
    {
      [(WKWebView *)self->_webView setHidden:?];
      v8 = self->_webView;
    }
  }

  else
  {
    v8 = 0;
  }

  v26 = v42;
  v27 = v43;
  v28 = v44;
  v29 = v45;
  v22 = v38;
  v23 = v39;
  v24 = v40;
  v25 = v41;
  v18 = v34;
  v19 = v35;
  v20 = v36;
  v21 = v37;
  v14 = v30;
  v15 = v31;
  v16 = v32;
  v17 = v33;
  [(TabDocumentView *)self applyGeometry:&v14 toWebView:v8];
  v26 = v42;
  v27 = v43;
  v28 = v44;
  v29 = v45;
  v22 = v38;
  v23 = v39;
  v24 = v40;
  v25 = v41;
  v18 = v34;
  v19 = v35;
  v20 = v36;
  v21 = v37;
  v14 = v30;
  v15 = v31;
  v16 = v32;
  v17 = v33;
  [(TabDocumentView *)self applyGeometry:&v14 toWebView:self->_readerWebView];
  [(NSLayoutConstraint *)self->_interactionHintTopAnchor setConstant:*&v34 + 20.0];
  [(UIView *)self->_interactionHint frame];
  v9 = CGRectGetHeight(v48) * 0.5;
  [(UIView *)self->_interactionHint _setContinuousCornerRadius:v9];
  [(UIVisualEffectView *)self->_interactionHintBackground _setContinuousCornerRadius:v9];
  v10 = self->_readerWebView;
  if (v10)
  {
    isHidden2 = [(WKWebView *)v10 isHidden];
    showingReader = self->_showingReader;
    if (showingReader == isHidden2)
    {
      [(WKWebView *)self->_readerWebView setHidden:showingReader ^ 1u];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_geometryProvider);
  [WeakRetained tabDocumentViewDidUpdateDistanceScrolled:self];
}

- ($3E8622391F623B53F6251319F3599675)currentGeometry
{
  WeakRetained = objc_loadWeakRetained(&self->_geometryProvider);
  retstr->var0.origin = 0u;
  retstr->var0.size = 0u;
  *&retstr->var1.top = 0u;
  *&retstr->var1.bottom = 0u;
  *&retstr->var2.top = 0u;
  *&retstr->var2.bottom = 0u;
  *&retstr->var3.var0.top = 0u;
  *&retstr->var3.var0.bottom = 0u;
  *&retstr->var3.var1.top = 0u;
  *&retstr->var3.var1.bottom = 0u;
  retstr->var4 = 0u;
  retstr->var5 = 0u;
  retstr->var6 = 0u;
  *&retstr->var7.top = 0u;
  *&retstr->var7.bottom = 0u;
  *&retstr->var8 = 0u;
  if (WeakRetained)
  {
    [(TabDocumentView *)self bounds];
    retstr->var0.origin.x = v6;
    retstr->var0.origin.y = v7;
    retstr->var0.size.width = v8;
    retstr->var0.size.height = v9;
    [WeakRetained obscuredScrollViewInsetsForTabDocumentView:self unobscuredSafeAreaInsets:&retstr->var1];
    retstr->var2.top = v10;
    retstr->var2.left = v11;
    retstr->var2.bottom = v12;
    retstr->var2.right = v13;
    [WeakRetained scrollIndicatorInsetsForTabDocumentView:self];
    *&retstr->var3.var0.top = v26;
    *&retstr->var3.var0.bottom = v27;
    *&retstr->var3.var1.top = v28;
    *&retstr->var3.var1.bottom = v29;
    [WeakRetained minimumWebViewLayoutSizeForTabDocumentView:self];
    retstr->var4.width = v14;
    retstr->var4.height = v15;
    [WeakRetained minimumUnobscuredWebViewLayoutSizeForTabDocumentView:self];
    retstr->var5.width = v16;
    retstr->var5.height = v17;
    [WeakRetained maximumUnobscuredWebViewLayoutSizeForTabDocumentView:self];
    retstr->var6.width = v18;
    retstr->var6.height = v19;
    [WeakRetained scrollViewContentInsetAdjustmentsForTabDocumentView:self];
    retstr->var7.top = v20;
    retstr->var7.left = v21;
    retstr->var7.bottom = v22;
    retstr->var7.right = v23;
    retstr->var8 = [WeakRetained inElementFullscreenForTabDocumentView:self];
    [WeakRetained minimumEffectiveDeviceWidthForTabDocumentView:self];
    retstr->var9 = v24;
  }

  return result;
}

- (void)setWebView:(id)view
{
  viewCopy = view;
  webView = self->_webView;
  v7 = viewCopy;
  if (webView != viewCopy)
  {
    [(WKWebView *)webView removeFromSuperview];
    objc_storeStrong(&self->_webView, view);
    if (v7)
    {
      [(TabDocumentView *)self addSubview:v7];
    }

    [(TabDocumentView *)self setNeedsLayout];
  }
}

- (void)setReaderWebView:(id)view
{
  viewCopy = view;
  readerWebView = self->_readerWebView;
  v7 = viewCopy;
  if (readerWebView != viewCopy)
  {
    [(WKWebView *)readerWebView removeFromSuperview];
    objc_storeStrong(&self->_readerWebView, view);
    if (v7)
    {
      [(TabDocumentView *)self addSubview:v7];
    }

    [(TabDocumentView *)self setNeedsLayout];
  }
}

- (void)setShowingReader:(BOOL)reader animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  readerCopy = reader;
  completionCopy = completion;
  if (self->_showingReader != readerCopy)
  {
    if (self->_interactiveGeometryUpdateCount)
    {
      if (self->_showingReader)
      {
        v8 = &OBJC_IVAR___TabDocumentView__readerWebView;
      }

      else
      {
        v8 = &OBJC_IVAR___TabDocumentView__webView;
      }

      [*(&self->super.super.super.isa + *v8) _endInteractiveObscuredInsetsChange];
      interactiveGeometryUpdateCount = self->_interactiveGeometryUpdateCount;
      self->_showingReader = readerCopy;
      if (interactiveGeometryUpdateCount)
      {
        if (readerCopy)
        {
          v10 = &OBJC_IVAR___TabDocumentView__readerWebView;
        }

        else
        {
          v10 = &OBJC_IVAR___TabDocumentView__webView;
        }

        [*(&self->super.super.super.isa + *v10) _beginInteractiveObscuredInsetsChange];
      }

      if (animatedCopy)
      {
        goto LABEL_12;
      }
    }

    else
    {
      self->_showingReader = readerCopy;
      if (animatedCopy)
      {
LABEL_12:
        [(TabDocumentView *)self _performReaderTransitionWithCompletion:completionCopy];
        goto LABEL_16;
      }
    }

    [(TabDocumentView *)self setNeedsLayout];
    if (completionCopy)
    {
      completionCopy[2]();
    }
  }

LABEL_16:
}

- (void)_performReaderTransitionWithCompletion:(id)completion
{
  completionCopy = completion;
  [(UIView *)self->_readerTransitionContainerView removeFromSuperview];
  v5 = objc_alloc(MEMORY[0x277D75D18]);
  [(TabDocumentView *)self bounds];
  v33 = [v5 initWithFrame:?];
  objc_storeStrong(&self->_readerTransitionContainerView, v33);
  [(TabDocumentView *)self setNeedsLayout];
  [(TabDocumentView *)self layoutSubviews];
  if (self->_showingReader)
  {
    v6 = &OBJC_IVAR___TabDocumentView__webView;
  }

  else
  {
    v6 = &OBJC_IVAR___TabDocumentView__readerWebView;
  }

  v32 = *(&self->super.super.super.isa + *v6);
  v7 = [v32 snapshotViewAfterScreenUpdates:0];
  v46 = 0;
  v47 = &v46;
  v48 = 0x5012000000;
  v49 = __Block_byref_object_copy__12;
  v50 = __Block_byref_object_dispose__12;
  v51 = "";
  v52 = 0u;
  v53 = 0u;
  [v7 bounds];
  *&v52 = v8;
  *(&v52 + 1) = v9;
  *&v53 = v10;
  *(&v53 + 1) = v11;
  v12 = objc_alloc(MEMORY[0x277D75D18]);
  v13 = [v12 initWithFrame:{v47[6], v47[7], v47[8], v47[9]}];
  [v13 setClipsToBounds:1];
  [v13 addSubview:v7];
  [(UIView *)self->_readerTransitionContainerView addSubview:v13];
  v14 = objc_alloc(MEMORY[0x277D75D18]);
  [v13 bounds];
  v15 = [v14 initWithFrame:?];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [v15 setBackgroundColor:blackColor];

  v17 = 0.0;
  if (!self->_showingReader)
  {
    v17 = 0.3;
  }

  [v15 setAlpha:v17];
  if (self->_showingReader)
  {
    [v13 addSubview:v15];
  }

  else
  {
    [(UIView *)self->_readerTransitionContainerView insertSubview:v15 belowSubview:v13];
  }

  v18 = MEMORY[0x277D75D18];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __58__TabDocumentView__performReaderTransitionWithCompletion___block_invoke;
  v43[3] = &unk_2781D61F8;
  v19 = v15;
  v44 = v19;
  selfCopy = self;
  [v18 animateWithDuration:0 delay:v43 options:0 animations:0.3 completion:0.0];
  v20 = MEMORY[0x277D75D18];
  LODWORD(v18) = self->_showingReader;
  v54 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v54.minimum;
  maximum = v54.maximum;
  preferred = v54.preferred;
  if (v18)
  {
    v24 = 0.15;
  }

  else
  {
    v24 = 0.0;
  }

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __58__TabDocumentView__performReaderTransitionWithCompletion___block_invoke_2;
  v38[3] = &unk_2781DB600;
  v25 = v7;
  v42 = &v46;
  v39 = v25;
  selfCopy2 = self;
  v26 = v13;
  v41 = v26;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __58__TabDocumentView__performReaderTransitionWithCompletion___block_invoke_3;
  v34[3] = &unk_2781DB628;
  v27 = v33;
  v35 = v27;
  selfCopy3 = self;
  v28 = completionCopy;
  v37 = v28;
  *&v29 = minimum;
  *&v30 = maximum;
  *&v31 = preferred;
  [v20 sf_animateUsingDefaultDampedSpringWithDelay:0 initialSpringVelocity:v38 options:v34 preferredFrameRateRange:v24 animations:0.0 completion:{v29, v30, v31}];

  _Block_object_dispose(&v46, 8);
}

uint64_t __58__TabDocumentView__performReaderTransitionWithCompletion___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v1 = *(a1 + 32);
  v3 = 0.3;
  if (!*(*(v2 + 8) + 448))
  {
    v3 = 0.0;
  }

  return [v1 setAlpha:v3];
}

uint64_t __58__TabDocumentView__performReaderTransitionWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  Height = CGRectGetHeight(*(*(*(a1 + 56) + 8) + 48));
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 56);
  if (*(*(a1 + 40) + 448) == 1)
  {
    *(v11 + 56) = Height + v12;
    v13 = v5 - Height;
  }

  else
  {
    *(v11 + 56) = v12 - Height;
    v13 = v5 + Height;
  }

  [*(a1 + 48) setFrame:{*(*(*(a1 + 56) + 8) + 48), *(*(*(a1 + 56) + 8) + 56), *(*(*(a1 + 56) + 8) + 64), *(*(*(a1 + 56) + 8) + 72)}];
  v14 = *(a1 + 32);

  return [v14 setFrame:{v3, v13, v7, v9}];
}

uint64_t __58__TabDocumentView__performReaderTransitionWithCompletion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);
  v3 = *(v2 + 416);
  if (v3 == *(a1 + 32))
  {
    *(v2 + 416) = 0;
  }

  result = *(a1 + 48);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (double)scrollDistance
{
  if (self->_showingReader)
  {
    v2 = &OBJC_IVAR___TabDocumentView__readerWebView;
  }

  else
  {
    v2 = &OBJC_IVAR___TabDocumentView__webView;
  }

  scrollView = [*(&self->super.super.super.isa + *v2) scrollView];
  [scrollView contentOffset];
  v5 = v4;
  [scrollView adjustedContentInset];
  v7 = v5 + v6;

  return v7;
}

- (void)setShowsInteractionHint:(BOOL)hint
{
  hintCopy = hint;
  v56[8] = *MEMORY[0x277D85DE8];
  if ([(TabDocumentView *)self showsInteractionHint]!= hint)
  {
    v5 = 0x277D75000uLL;
    if (hintCopy)
    {
      v6 = objc_alloc_init(MEMORY[0x277D75D18]);
      interactionHint = self->_interactionHint;
      self->_interactionHint = v6;

      [(UIView *)self->_interactionHint _setContinuousCornerRadius:25.0];
      blackColor = [MEMORY[0x277D75348] blackColor];
      cGColor = [blackColor CGColor];
      layer = [(UIView *)self->_interactionHint layer];
      [layer setShadowColor:cGColor];

      layer2 = [(UIView *)self->_interactionHint layer];
      [layer2 setShadowOffset:{0.0, 5.0}];

      layer3 = [(UIView *)self->_interactionHint layer];
      LODWORD(v13) = 1042536202;
      [layer3 setShadowOpacity:v13];

      layer4 = [(UIView *)self->_interactionHint layer];
      [layer4 setShadowPathIsBounds:1];

      layer5 = [(UIView *)self->_interactionHint layer];
      [layer5 setShadowRadius:20.0];

      [(UIView *)self->_interactionHint setLayoutMargins:15.0, 20.0, 15.0, 20.0];
      [(UIView *)self->_interactionHint setOverrideUserInterfaceStyle:2];
      [(UIView *)self->_interactionHint setTranslatesAutoresizingMaskIntoConstraints:0];
      [(TabDocumentView *)self addSubview:self->_interactionHint];
      v53 = [MEMORY[0x277D75210] effectWithStyle:8];
      v16 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v53];
      interactionHintBackground = self->_interactionHintBackground;
      self->_interactionHintBackground = v16;

      [(UIVisualEffectView *)self->_interactionHintBackground _setContinuousCornerRadius:25.0];
      [(UIVisualEffectView *)self->_interactionHintBackground setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self->_interactionHint _sf_addEdgeMatchedSubview:self->_interactionHintBackground];
      v18 = objc_alloc_init(MEMORY[0x277D756B8]);
      [v18 setNumberOfLines:0];
      v19 = _WBSLocalizedString();
      [v18 setText:v19];

      [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v20) = 1148846080;
      [v18 setContentHuggingPriority:1 forAxis:v20];
      [(UIView *)self->_interactionHint addSubview:v18];
      topAnchor = [(UIView *)self->_interactionHint topAnchor];
      topAnchor2 = [(TabDocumentView *)self topAnchor];
      v23 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
      interactionHintTopAnchor = self->_interactionHintTopAnchor;
      self->_interactionHintTopAnchor = v23;

      layoutMarginsGuide = [(UIView *)self->_interactionHint layoutMarginsGuide];
      v25 = MEMORY[0x277CCAAD0];
      leadingAnchor = [v18 leadingAnchor];
      leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
      v46 = [leadingAnchor constraintEqualToAnchor:?];
      v56[0] = v46;
      trailingAnchor = [v18 trailingAnchor];
      trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
      v44 = [trailingAnchor constraintEqualToAnchor:?];
      v56[1] = v44;
      topAnchor3 = [v18 topAnchor];
      topAnchor4 = [layoutMarginsGuide topAnchor];
      v42 = [topAnchor3 constraintEqualToAnchor:?];
      v56[2] = v42;
      bottomAnchor = [v18 bottomAnchor];
      bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
      v26 = [bottomAnchor constraintEqualToAnchor:?];
      v27 = self->_interactionHintTopAnchor;
      v40 = v26;
      v56[3] = v26;
      v56[4] = v27;
      centerXAnchor = [(UIView *)self->_interactionHint centerXAnchor];
      centerXAnchor2 = [(TabDocumentView *)self centerXAnchor];
      v38 = [centerXAnchor constraintEqualToAnchor:?];
      v56[5] = v38;
      leadingAnchor3 = [(UIView *)self->_interactionHint leadingAnchor];
      leadingAnchor4 = [(TabDocumentView *)self leadingAnchor];
      v30 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4 constant:20.0];
      v56[6] = v30;
      trailingAnchor3 = [(UIView *)self->_interactionHint trailingAnchor];
      trailingAnchor4 = [(TabDocumentView *)self trailingAnchor];
      v33 = v25;
      v34 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4 constant:-20.0];
      v56[7] = v34;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:8];
      [v33 activateConstraints:v35];

      v5 = 0x277D75000;
    }

    else
    {
      [(UIView *)self->_interactionHint removeFromSuperview];
      v36 = self->_interactionHint;
      self->_interactionHint = 0;
    }

    v37 = *(v5 + 3352);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __43__TabDocumentView_setShowsInteractionHint___block_invoke;
    v55[3] = &unk_2781D60B8;
    v55[4] = self;
    [v37 performWithoutAnimation:v55];
  }
}

- (void)setInteractionHintPresented:(BOOL)presented animated:(BOOL)animated
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__TabDocumentView_setInteractionHintPresented_animated___block_invoke;
  v4[3] = &unk_2781D6638;
  v4[4] = self;
  presentedCopy = presented;
  [MEMORY[0x277D75D18] sf_animate:animated withDuration:0 delay:v4 options:0 animations:0.2 completion:0.0];
}

- (void)applyGeometryToWebView:(id)view
{
  viewCopy = view;
  [(TabDocumentView *)self currentGeometry];
  [(TabDocumentView *)self applyGeometry:&v5 toWebView:viewCopy];
}

- (void)beginInteractiveGeometryChanges
{
  interactiveGeometryUpdateCount = self->_interactiveGeometryUpdateCount;
  if (!interactiveGeometryUpdateCount)
  {
    if (self->_showingReader)
    {
      v4 = &OBJC_IVAR___TabDocumentView__readerWebView;
    }

    else
    {
      v4 = &OBJC_IVAR___TabDocumentView__webView;
    }

    [*(&self->super.super.super.isa + *v4) _beginInteractiveObscuredInsetsChange];
    interactiveGeometryUpdateCount = self->_interactiveGeometryUpdateCount;
  }

  self->_interactiveGeometryUpdateCount = interactiveGeometryUpdateCount + 1;
}

- (void)endInteractiveGeometryChanges
{
  v2 = self->_interactiveGeometryUpdateCount - 1;
  self->_interactiveGeometryUpdateCount = v2;
  if (!v2)
  {
    if (self->_showingReader)
    {
      v3 = &OBJC_IVAR___TabDocumentView__readerWebView;
    }

    else
    {
      v3 = &OBJC_IVAR___TabDocumentView__webView;
    }

    [*(&self->super.super.super.isa + *v3) _endInteractiveObscuredInsetsChange];
  }
}

- (void)applyGeometry:(id *)geometry toWebView:(id)view
{
  v110 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if (viewCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_geometryProvider);
    if ([WeakRetained shouldFreezeWebViewUpdatesForTabDocumentView:self])
    {
      goto LABEL_27;
    }

    x = geometry->var0.origin.x;
    y = geometry->var0.origin.y;
    width = geometry->var0.size.width;
    height = geometry->var0.size.height;
    _sf_effectiveViewToLayOut = [viewCopy _sf_effectiveViewToLayOut];
    [_sf_effectiveViewToLayOut setFrame:{x, y, width, height}];

    if (geometry->var8 || (objc_opt_respondsToSelector() & 1) != 0 && ([WeakRetained shouldModifyWebViewGeometryForTabDocumentView:self] & 1) == 0)
    {
      goto LABEL_27;
    }

    v13 = WBS_LOG_CHANNEL_PREFIXLayout();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = objc_getAssociatedObject(viewCopy, &[TabDocumentView applyGeometry:toWebView:]::lastAppliedGeometryKey);
      v15 = *&geometry->var7.top;
      v94[12] = geometry->var6;
      v94[13] = v15;
      v16 = *&geometry->var8;
      v94[14] = *&geometry->var7.bottom;
      v94[15] = v16;
      v17 = *&geometry->var3.var1.bottom;
      v94[8] = *&geometry->var3.var1.top;
      v94[9] = v17;
      var5 = geometry->var5;
      v94[10] = geometry->var4;
      v94[11] = var5;
      v19 = *&geometry->var2.bottom;
      v94[4] = *&geometry->var2.top;
      v94[5] = v19;
      v20 = *&geometry->var3.var0.bottom;
      v94[6] = *&geometry->var3.var0.top;
      v94[7] = v20;
      size = geometry->var0.size;
      v94[0] = geometry->var0.origin;
      v94[1] = size;
      v22 = *&geometry->var1.bottom;
      v94[2] = *&geometry->var1.top;
      v94[3] = v22;
      v23 = [MEMORY[0x277CCAE60] valueWithBytes:v94 objCType:"{?={CGRect={CGPoint=dd}{CGSize=dd}}{UIEdgeInsets=dddd}{UIEdgeInsets=dddd}{SFScrollIndicatorInsets={UIEdgeInsets=dddd}{UIEdgeInsets=dddd}}{CGSize=dd}{CGSize=dd}{CGSize=dd}{UIEdgeInsets=dddd}Bd}"];
      objc_setAssociatedObject(viewCopy, &[TabDocumentView applyGeometry:toWebView:]::lastAppliedGeometryKey, v23, 0x301);

      if (v14)
      {
        [v14 getValue:&origin size:256];
        v77 = 0;
        v106 = var6;
        v107 = v91;
        v108 = v92;
        v109 = v93;
        v102 = v86;
        v103 = v87;
        v104 = var4;
        v105 = v89;
        v98 = v82;
        v99 = v83;
        v100 = v84;
        v101 = v85;
        *buf = origin;
        *&buf[16] = v79;
        v96 = v80;
        v97 = v81;
        v24 = *&geometry->var7.top;
        v76[12] = geometry->var6;
        v76[13] = v24;
        v25 = *&geometry->var8;
        v76[14] = *&geometry->var7.bottom;
        v76[15] = v25;
        v26 = *&geometry->var3.var1.bottom;
        v76[8] = *&geometry->var3.var1.top;
        v76[9] = v26;
        v27 = geometry->var5;
        v76[10] = geometry->var4;
        v76[11] = v27;
        v28 = *&geometry->var2.bottom;
        v76[4] = *&geometry->var2.top;
        v76[5] = v28;
        v29 = *&geometry->var3.var0.bottom;
        v76[6] = *&geometry->var3.var0.top;
        v76[7] = v29;
        v30 = geometry->var0.size;
        v76[0] = geometry->var0.origin;
        v76[1] = v30;
        v31 = *&geometry->var1.bottom;
        v76[2] = *&geometry->var1.top;
        v76[3] = v31;
        v32 = WebViewGeometryDescriptionOfDifferenceFromGeometry(buf, v76, &v77);
        if (!v77)
        {
          v33 = WBS_LOG_CHANNEL_PREFIXLayout();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            v75 = objc_opt_class();
            *buf = 138543874;
            *&buf[4] = v75;
            *&buf[12] = 2048;
            *&buf[14] = viewCopy;
            *&buf[22] = 2114;
            *&buf[24] = v32;
            _os_log_debug_impl(&dword_215819000, v33, OS_LOG_TYPE_DEBUG, "Updating <%{public}@: %p> geometry with %{public}@", buf, 0x20u);
          }
        }
      }

      else
      {
        v34 = WBS_LOG_CHANNEL_PREFIXLayout();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          v65 = objc_opt_class();
          v66 = *&geometry->var7.top;
          var6 = geometry->var6;
          v91 = v66;
          v67 = *&geometry->var8;
          v92 = *&geometry->var7.bottom;
          v93 = v67;
          v68 = *&geometry->var3.var1.bottom;
          v86 = *&geometry->var3.var1.top;
          v87 = v68;
          v69 = geometry->var5;
          var4 = geometry->var4;
          v89 = v69;
          v70 = *&geometry->var2.bottom;
          v82 = *&geometry->var2.top;
          v83 = v70;
          v71 = *&geometry->var3.var0.bottom;
          v84 = *&geometry->var3.var0.top;
          v85 = v71;
          v72 = geometry->var0.size;
          origin = geometry->var0.origin;
          v79 = v72;
          v73 = *&geometry->var1.bottom;
          v80 = *&geometry->var1.top;
          v81 = v73;
          v74 = WebViewGeometryDescription(&origin);
          *buf = 138543874;
          *&buf[4] = v65;
          *&buf[12] = 2048;
          *&buf[14] = viewCopy;
          *&buf[22] = 2114;
          *&buf[24] = v74;
          _os_log_debug_impl(&dword_215819000, v34, OS_LOG_TYPE_DEBUG, "Setting initial geometry of <%{public}@: %p> with %{public}@", buf, 0x20u);
        }
      }
    }

    v35 = *&geometry->var7.top;
    var6 = geometry->var6;
    v91 = v35;
    v36 = *&geometry->var8;
    v92 = *&geometry->var7.bottom;
    v93 = v36;
    v37 = *&geometry->var3.var1.bottom;
    v86 = *&geometry->var3.var1.top;
    v87 = v37;
    v38 = geometry->var5;
    var4 = geometry->var4;
    v89 = v38;
    v39 = *&geometry->var2.bottom;
    v82 = *&geometry->var2.top;
    v83 = v39;
    v40 = *&geometry->var3.var0.bottom;
    v84 = *&geometry->var3.var0.top;
    v85 = v40;
    v41 = geometry->var0.size;
    origin = geometry->var0.origin;
    v79 = v41;
    v42 = *&geometry->var1.bottom;
    v80 = *&geometry->var1.top;
    v81 = v42;
    [viewCopy sf_setDisplayedWebViewGeometry:&origin];
    [viewCopy _setObscuredInsets:{geometry->var2.top, geometry->var2.left, geometry->var2.bottom, geometry->var2.right}];
    [viewCopy _setUnobscuredSafeAreaInsets:{geometry->var1.top, geometry->var1.left, geometry->var1.bottom, geometry->var1.right}];
    [viewCopy _setMinimumEffectiveDeviceWidth:geometry->var9];
    v43 = objc_opt_respondsToSelector();
    v44 = geometry->var4.width;
    v45 = geometry->var4.height;
    if (v43)
    {
      [viewCopy _overrideLayoutParametersWithMinimumLayoutSize:v44 minimumUnobscuredSizeOverride:v45 maximumUnobscuredSizeOverride:{geometry->var5.width, geometry->var5.height, geometry->var6.width, geometry->var6.height}];
    }

    else
    {
      [viewCopy _overrideLayoutParametersWithMinimumLayoutSize:v44 maximumUnobscuredSizeOverride:{v45, geometry->var6.width, geometry->var6.height}];
    }

    scrollView = [viewCopy scrollView];
    v47 = *&geometry->var3.var0.bottom;
    origin = *&geometry->var3.var0.top;
    v79 = v47;
    v48 = *&geometry->var3.var1.bottom;
    v80 = *&geometry->var3.var1.top;
    v81 = v48;
    [scrollView _sf_setScrollIndicatorInsets:&origin];
    [scrollView contentInset];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    [scrollView _sf_setContentInsetAdjustments:{geometry->var7.top, geometry->var7.left, geometry->var7.bottom, geometry->var7.right}];
    if (objc_opt_respondsToSelector())
    {
      v57 = [WeakRetained tabDocumentView:self contentOffsetAdjustmentEdgeWithPreviousContentInset:{v50, v52, v54, v56}];
      [scrollView contentOffset];
      v59 = v58;
      v61 = v60;
      if (v57)
      {
        [scrollView contentInset];
        v63 = v61 - (v64 - v50);
        goto LABEL_25;
      }

      if ((v57 & 4) != 0)
      {
        [scrollView contentInset];
        v63 = v61 + v62 - v54;
LABEL_25:
        [scrollView _setContentOffsetPinned:{v59, v63}];
      }
    }

LABEL_27:
  }
}

- (TabDocumentViewGeometryProviding)geometryProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_geometryProvider);

  return WeakRetained;
}

@end