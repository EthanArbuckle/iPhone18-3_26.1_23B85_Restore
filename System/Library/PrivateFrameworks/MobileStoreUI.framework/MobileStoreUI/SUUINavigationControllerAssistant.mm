@interface SUUINavigationControllerAssistant
+ (id)assistantForNavigationController:(id)a3 clientContext:(id)a4;
+ (id)existingAssistantForNavigationController:(id)a3;
- (UINavigationController)navigationController;
- (_UINavigationControllerPalette)paletteBackgroundView;
- (id)_initWithNavigationController:(id)a3 clientContext:(id)a4;
- (void)_hideChildPaletteView:(id)a3 animated:(BOOL)a4;
- (void)_hideOverlayView:(id)a3 animated:(BOOL)a4;
- (void)_previewDocumentChangeNotification:(id)a3;
- (void)_setStatusOverlayProvider:(id)a3 animated:(BOOL)a4;
- (void)_showOverlayView:(id)a3 previousOverlayView:(id)a4 animated:(BOOL)a5;
- (void)_transitionToPaletteView:(id)a3 animated:(BOOL)a4 operation:(int64_t)a5;
- (void)dealloc;
- (void)setHidesShadow:(BOOL)a3;
- (void)setPalettePinningBarHidden:(BOOL)a3;
- (void)setStatusOverlayProvider:(id)a3;
- (void)willShowViewController:(id)a3 animated:(BOOL)a4;
@end

@implementation SUUINavigationControllerAssistant

- (id)_initWithNavigationController:(id)a3 clientContext:(id)a4
{
  objc_initWeak(&location, a3);
  v6 = a4;
  v18.receiver = self;
  v18.super_class = SUUINavigationControllerAssistant;
  v7 = [(SUUINavigationControllerAssistant *)&v18 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_clientContext, a4);
    v9 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v8->_navigationController, v9);

    WeakRetained = objc_loadWeakRetained(&v8->_navigationController);
    v11 = [WeakRetained existingPaletteForEdge:2];
    paletteBackgroundView = v8->_paletteBackgroundView;
    v8->_paletteBackgroundView = v11;

    if (!v8->_paletteBackgroundView)
    {
      v13 = objc_loadWeakRetained(&v8->_navigationController);
      v14 = [v13 paletteForEdge:2 size:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
      v15 = v8->_paletteBackgroundView;
      v8->_paletteBackgroundView = v14;
    }

    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 addObserver:v8 selector:sel__previewDocumentChangeNotification_ name:@"SUUIApplicationControllerPreviewOverlayDidChangeNotification" object:0];
  }

  objc_destroyWeak(&location);
  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"SUUIApplicationControllerPreviewOverlayDidChangeNotification" object:0];
  [v3 removeObserver:self name:0x286AECDA0 object:0];

  v4.receiver = self;
  v4.super_class = SUUINavigationControllerAssistant;
  [(SUUINavigationControllerAssistant *)&v4 dealloc];
}

+ (id)assistantForNavigationController:(id)a3 clientContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v5 _outermostNavigationController];

    v5 = v7;
  }

  v8 = objc_getAssociatedObject(v5, "com.apple.iTunesStoreUI.SUUINavigationControllerAssistant");
  if (!v8)
  {
    v8 = [[SUUINavigationControllerAssistant alloc] _initWithNavigationController:v5 clientContext:v6];
    objc_setAssociatedObject(v5, "com.apple.iTunesStoreUI.SUUINavigationControllerAssistant", v8, 1);
  }

  return v8;
}

+ (id)existingAssistantForNavigationController:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 _outermostNavigationController];

    v3 = v4;
  }

  v5 = objc_getAssociatedObject(v3, "com.apple.iTunesStoreUI.SUUINavigationControllerAssistant");

  return v5;
}

- (void)setHidesShadow:(BOOL)a3
{
  if (self->_hidesShadow != a3)
  {
    v4 = a3;
    self->_hidesShadow = a3;
    v5 = [(SUUINavigationControllerAssistant *)self paletteBackgroundView];
    v6 = v5;
    if (v4)
    {
      [v5 SUUI_beginHidingPaletteShadow];
    }

    else
    {
      [v5 SUUI_endHidingPaletteShadow];
    }
  }
}

- (void)setPalettePinningBarHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUUINavigationControllerAssistant *)self paletteBackgroundView];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SUUINavigationControllerAssistant *)self paletteBackgroundView];
    [v7 _setPalettePinningBarHidden:v3];
  }
}

- (void)setStatusOverlayProvider:(id)a3
{
  v4 = MEMORY[0x277D75D18];
  v5 = a3;
  -[SUUINavigationControllerAssistant setStatusOverlayProvider:animated:](self, "setStatusOverlayProvider:animated:", v5, [v4 _isInAnimationBlock]);
}

- (void)willShowViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SUUINavigationControllerAssistant *)self childPaletteView];
  if ([v6 conformsToProtocol:&unk_286C81348])
  {
    v8 = [v6 navigationPaletteView];
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = 0;
  if (v4)
  {
LABEL_5:
    v9 = [v6 navigationController];
    v10 = [v9 viewControllers];
    v11 = [v10 firstObject];
    v4 = v11 != v6;
  }

LABEL_6:
  v12 = [(SUUINavigationControllerAssistant *)self navigationController];
  -[SUUINavigationControllerAssistant _transitionToPaletteView:animated:operation:](self, "_transitionToPaletteView:animated:operation:", v8, v4, [v12 lastOperation]);

  v13 = [(SUUINavigationControllerAssistant *)self navigationController];
  v14 = [v13 topViewController];
  v15 = [v14 transitionCoordinator];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __69__SUUINavigationControllerAssistant_willShowViewController_animated___block_invoke;
  v17[3] = &unk_2798FBAB0;
  v17[4] = self;
  v18 = v7;
  v16 = v7;
  [v15 notifyWhenInteractionEndsUsingBlock:v17];
}

void __69__SUUINavigationControllerAssistant_willShowViewController_animated___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isCancelled])
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = [v4 navigationController];
    [v4 _transitionToPaletteView:v3 animated:0 operation:{objc_msgSend(v5, "lastOperation")}];
  }
}

- (_UINavigationControllerPalette)paletteBackgroundView
{
  if (([(_UINavigationControllerPalette *)self->_paletteBackgroundView isAttached]& 1) == 0)
  {
    v3 = [(SUUINavigationControllerAssistant *)self navigationController];
    [v3 attachPalette:self->_paletteBackgroundView isPinned:1];
  }

  paletteBackgroundView = self->_paletteBackgroundView;

  return paletteBackgroundView;
}

- (void)_previewDocumentChangeNotification:(id)a3
{
  v11 = a3;
  v4 = [(SUUINavigationControllerAssistant *)self statusOverlayProvider];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = v11;
  if (isKindOfClass)
  {
    v7 = [v11 object];
    v8 = [v7 _previewOverlayDocumentController];
    if (([v8 isPreviewActive] & 1) == 0)
    {

      v8 = 0;
    }

    v9 = [(SUUINavigationControllerAssistant *)self navigationController];
    IsVisible = SUUIViewControllerIsVisible(v9);

    [(SUUINavigationControllerAssistant *)self _setStatusOverlayProvider:v8 animated:IsVisible];
    v6 = v11;
  }
}

- (void)_hideChildPaletteView:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = [(SUUINavigationControllerAssistant *)self paletteBackgroundView];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(SUUINavigationControllerAssistant *)self statusOverlayViewController];
  v15 = [v14 view];

  if (v15)
  {
    [v15 frame];
    v17 = v16;
    v19 = v18;
    v20 = v18;
  }

  else
  {
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    v19 = *(MEMORY[0x277CBF3A0] + 24);
    v20 = 0.0;
  }

  v22 = *MEMORY[0x277CBF348];
  v21 = *(MEMORY[0x277CBF348] + 8);
  if (a4)
  {
    v23 = MEMORY[0x277D75D18];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __68__SUUINavigationControllerAssistant__hideChildPaletteView_animated___block_invoke;
    v28[3] = &unk_2798FBAD8;
    v29 = v6;
    v32 = v22;
    v33 = v21;
    v34 = v17;
    v35 = v19;
    v30 = v15;
    v31 = self;
    v36 = v9;
    v37 = v11;
    v38 = v13;
    v39 = v20;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __68__SUUINavigationControllerAssistant__hideChildPaletteView_animated___block_invoke_2;
    v26[3] = &unk_2798FBB00;
    v26[4] = self;
    v27 = v29;
    [v23 animateWithDuration:0 delay:v28 usingSpringWithDamping:v26 initialSpringVelocity:0.35 options:0.0 animations:0.7 completion:0.0];
  }

  else
  {
    [v15 setFrame:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v17, v19}];
    v24 = [(SUUINavigationControllerAssistant *)self paletteBackgroundView];
    [v24 setFrame:objc_msgSend(MEMORY[0x277D75D18] isAnimating:{"_isInAnimationBlockWithAnimationsEnabled"), v9, v11, v13, v20}];

    v25 = [(SUUINavigationControllerAssistant *)self paletteBackgroundView];
    [v25 setPinningBarShadowIsHidden:{objc_msgSend(MEMORY[0x277D75D18], "_isInAnimationBlockWithAnimationsEnabled")}];

    [v6 removeFromSuperview];
  }
}

void __68__SUUINavigationControllerAssistant__hideChildPaletteView_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) frame];
  [*(a1 + 32) setFrame:?];
  [*(a1 + 40) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v2 = [*(a1 + 48) paletteBackgroundView];
  [v2 setFrame:1 isAnimating:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
}

uint64_t __68__SUUINavigationControllerAssistant__hideChildPaletteView_animated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) paletteBackgroundView];
  [v2 setPinningBarShadowIsHidden:0];

  v3 = *(a1 + 40);

  return [v3 removeFromSuperview];
}

- (void)_hideOverlayView:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = [(SUUINavigationControllerAssistant *)self paletteBackgroundView];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(SUUINavigationControllerAssistant *)self childPaletteView];

  if (v14)
  {
    v15 = [(SUUINavigationControllerAssistant *)self childPaletteView];
    [v15 bounds];
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  if (a4)
  {
    v18 = [(SUUINavigationControllerAssistant *)self childPaletteView];

    if (v18)
    {
      v19 = objc_alloc(MEMORY[0x277D75D18]);
      [v6 frame];
      v18 = [v19 initWithFrame:?];
      v20 = [MEMORY[0x277D75348] clearColor];
      [v18 setBackgroundColor:v20];

      [v18 setClipsToBounds:1];
      v21 = [v6 superview];
      v22 = [(SUUINavigationControllerAssistant *)self childPaletteView];
      [v21 insertSubview:v18 belowSubview:v22];

      [v18 bounds];
      [v6 setFrame:?];
      [v18 addSubview:v6];
    }

    v23 = MEMORY[0x277D75D18];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __63__SUUINavigationControllerAssistant__hideOverlayView_animated___block_invoke;
    v31[3] = &unk_2798F8DB0;
    v32 = v6;
    v33 = self;
    v34 = v9;
    v35 = v11;
    v36 = v13;
    v37 = v17;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __63__SUUINavigationControllerAssistant__hideOverlayView_animated___block_invoke_2;
    v28[3] = &unk_2798FAC50;
    v28[4] = self;
    v29 = v32;
    v30 = v18;
    v24 = v18;
    [v23 animateWithDuration:0 delay:v31 usingSpringWithDamping:v28 initialSpringVelocity:0.35 options:0.0 animations:0.7 completion:0.0];
  }

  else
  {
    v25 = [(SUUINavigationControllerAssistant *)self paletteBackgroundView];
    [v25 setFrame:0 isAnimating:{v9, v11, v13, v17}];

    v26 = [(SUUINavigationControllerAssistant *)self paletteBackgroundView];
    v27 = [(SUUINavigationControllerAssistant *)self childPaletteView];
    [v26 setPinningBarShadowIsHidden:v27 != 0];

    [v6 removeFromSuperview];
  }
}

void __63__SUUINavigationControllerAssistant__hideOverlayView_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) frame];
  [*(a1 + 32) setFrame:?];
  v2 = [*(a1 + 40) paletteBackgroundView];
  [v2 setFrame:1 isAnimating:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
}

uint64_t __63__SUUINavigationControllerAssistant__hideOverlayView_animated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) paletteBackgroundView];
  v3 = [*(a1 + 32) childPaletteView];
  [v2 setPinningBarShadowIsHidden:v3 != 0];

  [*(a1 + 40) removeFromSuperview];
  v4 = *(a1 + 48);

  return [v4 removeFromSuperview];
}

- (void)_setStatusOverlayProvider:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_statusOverlayProvider != v7)
  {
    v16 = v7;
    v8 = [(SUUINavigationControllerAssistant *)self statusOverlayViewController];
    v9 = [v8 view];

    objc_storeStrong(&self->_statusOverlayProvider, a3);
    v10 = [MEMORY[0x277D759A0] mainScreen];
    v11 = [v10 traitCollection];

    v12 = [v11 userInterfaceStyle];
    if (objc_opt_respondsToSelector())
    {
      v13 = [(SUUIStatusOverlayProvider *)self->_statusOverlayProvider overlayViewControllerWithBackgroundStyle:v12 != 1];
      [(SUUINavigationControllerAssistant *)self setStatusOverlayViewController:v13];
    }

    else
    {
      [(SUUINavigationControllerAssistant *)self setStatusOverlayViewController:0];
    }

    v14 = [(SUUINavigationControllerAssistant *)self statusOverlayViewController];
    v15 = [v14 view];

    if (v15)
    {
      [(SUUINavigationControllerAssistant *)self _showOverlayView:v15 previousOverlayView:v9 animated:v4];
    }

    else if (v9)
    {
      [(SUUINavigationControllerAssistant *)self _hideOverlayView:v9 animated:v4];
    }

    v7 = v16;
  }
}

- (void)_showOverlayView:(id)a3 previousOverlayView:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v62 = 0;
  v63 = &v62;
  v64 = 0x4010000000;
  v65 = "";
  v66 = 0u;
  v67 = 0u;
  [v8 frame];
  *&v66 = v10;
  *(&v66 + 1) = v11;
  *&v67 = v12;
  *(&v67 + 1) = v13;
  *(v63 + 2) = *MEMORY[0x277CBF348];
  v14 = [(SUUINavigationControllerAssistant *)self paletteBackgroundView];
  [v14 bounds];
  v63[6] = v15;

  v16 = [(SUUINavigationControllerAssistant *)self paletteBackgroundView];
  [v16 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = *(v63 + 7);
  v24 = [(SUUINavigationControllerAssistant *)self childPaletteView];

  if (v24)
  {
    v25 = [(SUUINavigationControllerAssistant *)self childPaletteView];
    [v25 frame];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v68.origin.x = v27;
    v68.origin.y = v29;
    v68.size.width = v31;
    v68.size.height = v33;
    *(v63 + 5) = CGRectGetMaxY(v68);
    v23 = v23 + v33;
  }

  [v8 setAutoresizingMask:2];
  [v8 setFrame:{*(v63 + 4), *(v63 + 5), *(v63 + 6), *(v63 + 7)}];
  [v8 layoutIfNeeded];
  v34 = [(SUUINavigationControllerAssistant *)self paletteBackgroundView];
  [v34 addSubview:v8];

  v35 = [(SUUINavigationControllerAssistant *)self paletteBackgroundView];
  v36 = [(SUUINavigationControllerAssistant *)self childPaletteView];
  [v35 setPinningBarShadowIsHidden:v36 != 0];

  [v9 removeFromSuperview];
  if (a5)
  {
    v37 = [(SUUINavigationControllerAssistant *)self childPaletteView];

    if (v37)
    {
      v38 = objc_alloc(MEMORY[0x277D75D18]);
      v37 = [v38 initWithFrame:{*(v63 + 4), *(v63 + 5), *(v63 + 6), *(v63 + 7)}];
      v39 = [MEMORY[0x277D75348] clearColor];
      [v37 setBackgroundColor:v39];

      [v37 setClipsToBounds:1];
      v40 = [v8 superview];
      v41 = [(SUUINavigationControllerAssistant *)self childPaletteView];
      [v40 insertSubview:v37 belowSubview:v41];

      [v37 bounds];
      [v8 setFrame:?];
      [v37 addSubview:v8];
    }

    [v8 frame];
    v42 = v63;
    v63[6] = v43;
    v42[7] = v44;
    *(v42 + 4) = v46;
    v42[5] = v45 - v44;
    [v8 setFrame:?];
    v47 = MEMORY[0x277D75D18];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __83__SUUINavigationControllerAssistant__showOverlayView_previousOverlayView_animated___block_invoke;
    v54[3] = &unk_2798FBB28;
    v57 = &v62;
    v55 = v8;
    v56 = self;
    v58 = v18;
    v59 = v20;
    v60 = v22;
    v61 = v23;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __83__SUUINavigationControllerAssistant__showOverlayView_previousOverlayView_animated___block_invoke_2;
    v49[3] = &unk_2798FBB50;
    v48 = v37;
    v50 = v48;
    v51 = v55;
    v52 = self;
    v53 = &v62;
    [v47 animateWithDuration:0 delay:v54 usingSpringWithDamping:v49 initialSpringVelocity:0.35 options:0.0 animations:0.7 completion:0.0];
  }

  else
  {
    v48 = [(SUUINavigationControllerAssistant *)self paletteBackgroundView];
    [v48 setFrame:0 isAnimating:{v18, v20, v22, v23}];
  }

  _Block_object_dispose(&v62, 8);
}

void __83__SUUINavigationControllerAssistant__showOverlayView_previousOverlayView_animated___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = *(*(*(a1 + 48) + 8) + 56) + *(*(*(a1 + 48) + 8) + 40);
  [*(a1 + 32) setFrame:{*(*(*(a1 + 48) + 8) + 32), *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 48) + 8) + 48), *(*(*(a1 + 48) + 8) + 56)}];
  v2 = [*(a1 + 40) paletteBackgroundView];
  [v2 setFrame:1 isAnimating:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
}

uint64_t __83__SUUINavigationControllerAssistant__showOverlayView_previousOverlayView_animated___block_invoke_2(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    v2 = *(result + 40);
    v3 = [*(result + 48) paletteBackgroundView];
    [v3 convertRect:*(v1 + 32) fromView:{*(*(*(v1 + 56) + 8) + 32), *(*(*(v1 + 56) + 8) + 40), *(*(*(v1 + 56) + 8) + 48), *(*(*(v1 + 56) + 8) + 56)}];
    [v2 setFrame:?];

    v4 = [*(v1 + 48) paletteBackgroundView];
    [v4 addSubview:*(v1 + 40)];

    v5 = *(v1 + 32);

    return [v5 removeFromSuperview];
  }

  return result;
}

- (void)_transitionToPaletteView:(id)a3 animated:(BOOL)a4 operation:(int64_t)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [(SUUINavigationControllerAssistant *)self childPaletteView];

  v10 = [(SUUINavigationControllerAssistant *)self childPaletteView];
  v11 = v10;
  if (v9 != v8)
  {
    [(SUUINavigationControllerAssistant *)self setChildPaletteView:v8];
    v12 = [(SUUINavigationControllerAssistant *)self childPaletteView];

    if (v12)
    {
      v13 = [(SUUINavigationControllerAssistant *)self paletteBackgroundView];
      [v13 bounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v75 = 0;
      v76 = &v75;
      v77 = 0x4010000000;
      v78 = "";
      v79 = 0u;
      v80 = 0u;
      v22 = [(SUUINavigationControllerAssistant *)self childPaletteView];
      [v22 frame];
      *&v79 = v23;
      *(&v79 + 1) = v24;
      *&v80 = v25;
      *(&v80 + 1) = v26;

      v27 = v76;
      v76[4] = 0.0;
      v27[5] = v21 - v27[7];
      v27[6] = v19;
      if (!v11)
      {
        goto LABEL_12;
      }

      if (a5 == 2)
      {
        MaxX = -v19;
      }

      else
      {
        if (a5 != 1)
        {
          goto LABEL_12;
        }

        v81.origin.x = v15;
        v81.origin.y = v17;
        v81.size.width = v19;
        v81.size.height = v21;
        MaxX = CGRectGetMaxX(v81);
        v27 = v76;
      }

      v27[4] = MaxX;
LABEL_12:
      v29 = [(SUUINavigationControllerAssistant *)self childPaletteView];
      [v29 setAutoresizingMask:2];

      v30 = [(SUUINavigationControllerAssistant *)self childPaletteView];
      [v30 setFrame:{v76[4], v76[5], v76[6], v76[7]}];

      v31 = [(SUUINavigationControllerAssistant *)self childPaletteView];
      [v31 layoutIfNeeded];

      v32 = [(SUUINavigationControllerAssistant *)self paletteBackgroundView];
      v33 = [(SUUINavigationControllerAssistant *)self childPaletteView];
      [v32 addSubview:v33];

      v34 = [(SUUINavigationControllerAssistant *)self paletteBackgroundView];
      [v34 setPinningBarShadowIsHidden:1];

      v35 = [(SUUINavigationControllerAssistant *)self paletteBackgroundView];
      [v35 frame];
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v42 = [(SUUINavigationControllerAssistant *)self childPaletteView];
      [v42 bounds];
      MaxY = v43;

      v45 = [(SUUINavigationControllerAssistant *)self statusOverlayViewController];
      v46 = [v45 view];

      if (v46)
      {
        [v46 frame];
        v82.origin.y = v76[7];
        y = v82.origin.y;
        x = v82.origin.x;
        height = v82.size.height;
        width = v82.size.width;
        MaxY = CGRectGetMaxY(v82);
        if (v6)
        {
LABEL_14:
          v47 = MEMORY[0x277D75D18];
          v58[0] = MEMORY[0x277D85DD0];
          v58[1] = 3221225472;
          v58[2] = __81__SUUINavigationControllerAssistant__transitionToPaletteView_animated_operation___block_invoke;
          v58[3] = &unk_2798FBB78;
          v61 = &v75;
          v58[4] = self;
          v59 = v11;
          v62 = a5;
          v63 = v15;
          v64 = v17;
          v65 = v19;
          v66 = v21;
          v67 = v37;
          v68 = v39;
          v69 = v41;
          v70 = MaxY;
          v60 = v46;
          v71 = x;
          v72 = y;
          v73 = width;
          v74 = height;
          v56[0] = MEMORY[0x277D85DD0];
          v56[1] = 3221225472;
          v56[2] = __81__SUUINavigationControllerAssistant__transitionToPaletteView_animated_operation___block_invoke_2;
          v56[3] = &unk_2798F5D30;
          v57 = v59;
          [v47 animateWithDuration:0 delay:v58 usingSpringWithDamping:v56 initialSpringVelocity:0.35 options:0.0 animations:0.7 completion:0.0];

LABEL_17:
          _Block_object_dispose(&v75, 8);
          goto LABEL_18;
        }
      }

      else
      {
        y = *(MEMORY[0x277CBF3A0] + 8);
        x = *MEMORY[0x277CBF3A0];
        height = *(MEMORY[0x277CBF3A0] + 24);
        width = *(MEMORY[0x277CBF3A0] + 16);
        if (v6)
        {
          goto LABEL_14;
        }
      }

      *(v76 + 2) = *MEMORY[0x277CBF348];
      v48 = [(SUUINavigationControllerAssistant *)self childPaletteView];
      [v48 setFrame:{v76[4], v76[5], v76[6], v76[7]}];

      [v46 setFrame:{x, y, width, height}];
      v49 = [(SUUINavigationControllerAssistant *)self paletteBackgroundView];
      [v49 setFrame:objc_msgSend(MEMORY[0x277D75D18] isAnimating:{"_isInAnimationBlockWithAnimationsEnabled"), v37, v39, v41, MaxY}];

      [v11 removeFromSuperview];
      v50 = [(SUUINavigationControllerAssistant *)self paletteBackgroundView];
      [v50 setHidden:0];

      v51 = [(SUUINavigationControllerAssistant *)self paletteBackgroundView];
      [v51 setAlpha:1.0];

      goto LABEL_17;
    }

    [(SUUINavigationControllerAssistant *)self _hideChildPaletteView:v11 animated:v6];
LABEL_18:

    goto LABEL_19;
  }

  if (v11)
  {
    v11 = [(SUUINavigationControllerAssistant *)self paletteBackgroundView];
    [v11 resetBackgroundConstraints];
    goto LABEL_18;
  }

LABEL_19:
}

void __81__SUUINavigationControllerAssistant__transitionToPaletteView_animated_operation___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 32) = *MEMORY[0x277CBF348];
  v2 = [*(a1 + 32) childPaletteView];
  [v2 setFrame:{*(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 56) + 8) + 48), *(*(*(a1 + 56) + 8) + 56)}];

  v3 = *(a1 + 40);
  if (v3)
  {
    [v3 frame];
    v6 = v5;
    v8 = v7;
    v9 = *(a1 + 64);
    if (v9 == 2)
    {
      MaxX = CGRectGetMaxX(*(a1 + 72));
    }

    else if (v9 == 1)
    {
      MaxX = MaxX - v5;
    }

    [*(a1 + 40) setFrame:{MaxX, *(a1 + 128) - v8, v6, v8}];
  }

  [*(a1 + 48) setFrame:{*(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160)}];
  v10 = [*(a1 + 32) paletteBackgroundView];
  [v10 setFrame:objc_msgSend(MEMORY[0x277D75D18] isAnimating:{"_isInAnimationBlockWithAnimationsEnabled"), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128)}];
}

- (UINavigationController)navigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  return WeakRetained;
}

@end