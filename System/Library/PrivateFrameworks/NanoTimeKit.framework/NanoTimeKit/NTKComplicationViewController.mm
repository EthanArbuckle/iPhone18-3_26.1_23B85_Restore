@interface NTKComplicationViewController
- (CGAffineTransform)_contentTransform;
- (CLKComplicationBackgroundDescriptor)backgroundDescriptor;
- (NTKComplicationViewController)initWithVariant:(id)a3 device:(id)a4 complication:(id)a5 displayProperties:(id)a6;
- (NTKComplicationViewControllerDelegate)delegate;
- (id)_effectiveMetrics;
- (id)takeTouchCancellationAssertion;
- (void)_applyPresentationState;
- (void)_applyStyleIfPossible;
- (void)_applyStyleToDisplay:(id)a3;
- (void)_recreateDisplayIfNecessary;
- (void)_updateController;
- (void)_updatePresentationState;
- (void)_updateWidgetDescriptorForComplication:(id)a3 withProvider:(id)a4;
- (void)complicationController:(id)a3 touchedDownForDisplayWrapper:(id)a4;
- (void)complicationController:(id)a3 touchedUpForDisplayWrapper:(id)a4;
- (void)complicationProviderComplicationsDidChange:(id)a3;
- (void)dealloc;
- (void)descriptorsDidChangeForDescriptorProvider:(id)a3;
- (void)displayWrapperTemplateBackgroundChanged;
- (void)ensureContentWithTimeout:(double)a3 completion:(id)a4;
- (void)loadView;
- (void)setComplication:(id)a3;
- (void)setComplication:(id)a3 displayProperties:(id)a4;
- (void)setDisplayProperties:(id)a3;
- (void)setForceLivePresentationState:(BOOL)a3;
- (void)setStyle:(id)a3;
- (void)updateDisplayPropertiesWithBlock:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)willLaunchAppForComplicationDisplayWrapper:(id)a3;
@end

@implementation NTKComplicationViewController

- (NTKComplicationViewController)initWithVariant:(id)a3 device:(id)a4 complication:(id)a5 displayProperties:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v27.receiver = self;
  v27.super_class = NTKComplicationViewController;
  v15 = [(NTKComplicationViewController *)&v27 initWithNibName:0 bundle:0];
  v16 = +[NTKWidgetDescriptorProvider sharedInstance];
  [v16 registerObserver:v15];

  if (v15)
  {
    objc_storeStrong(&v15->_variant, a3);
    objc_storeStrong(&v15->_device, a4);
    objc_storeStrong(&v15->_complication, a5);
    v17 = objc_opt_new();
    style = v15->_style;
    v15->_style = v17;

    v19 = [[NTKMonochromeModel alloc] initWithDevice:v12];
    monochromeModel = v15->_monochromeModel;
    v15->_monochromeModel = v19;

    v15->_presentationState = 2;
    v15->_forceLivePresentationState = 0;
    v21 = [v14 copy];
    displayProperties = v15->_displayProperties;
    v15->_displayProperties = v21;

    v23 = [NTKComplicationProvider providerForDevice:v12];
    [v23 registerObserver:v15];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    complication = v15->_complication;
    v25 = +[NTKWidgetDescriptorProvider sharedInstance];
    [(NTKComplicationViewController *)v15 _updateWidgetDescriptorForComplication:complication withProvider:v25];
  }

  return v15;
}

- (void)dealloc
{
  [(NTKComplicationController *)self->_controller removeDisplayWrapper:self->_wrapperView];
  v3.receiver = self;
  v3.super_class = NTKComplicationViewController;
  [(NTKComplicationViewController *)&v3 dealloc];
}

- (void)setComplication:(id)a3 displayProperties:(id)a4
{
  v6 = a3;
  v7 = [a4 copy];
  displayProperties = self->_displayProperties;
  self->_displayProperties = v7;

  [(NTKComplicationViewController *)self setComplication:v6];
  controller = self->_controller;
  v10 = self->_displayProperties;
  wrapperView = self->_wrapperView;

  [(NTKComplicationController *)controller setDisplayProperties:v10 forDisplayWrapper:wrapperView];
}

- (void)loadView
{
  v13.receiver = self;
  v13.super_class = NTKComplicationViewController;
  [(NTKComplicationViewController *)&v13 loadView];
  v3 = [[NTKComplicationDisplayWrapperView alloc] initWithFamily:[(NTKComplicationVariant *)self->_variant family]];
  wrapperView = self->_wrapperView;
  self->_wrapperView = v3;

  objc_initWeak(&location, self);
  v5 = self->_wrapperView;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __41__NTKComplicationViewController_loadView__block_invoke;
  v10 = &unk_278786F10;
  objc_copyWeak(&v11, &location);
  [(NTKComplicationDisplayWrapperView *)v5 setDisplayConfigurationHandler:&v7];
  [(NTKComplicationDisplayWrapperView *)self->_wrapperView addBackgroundObserver:self, v7, v8, v9, v10];
  [(NTKComplicationViewController *)self _updatePresentationState];
  v6 = [(NTKComplicationViewController *)self view];
  [v6 addSubview:self->_wrapperView];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __41__NTKComplicationViewController_loadView__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _applyStyleToDisplay:v5];
  }
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = NTKComplicationViewController;
  [(NTKComplicationViewController *)&v13 viewDidLayoutSubviews];
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  v5 = [(NTKComplicationViewController *)self _effectiveMetrics];
  [v5 size];
  [(NTKComplicationDisplayWrapperView *)self->_wrapperView setBounds:v3, v4, v6, v7];

  [(NTKComplicationViewController *)self _contentTransform];
  wrapperView = self->_wrapperView;
  v12[0] = v12[3];
  v12[1] = v12[4];
  v12[2] = v12[5];
  [(NTKComplicationDisplayWrapperView *)wrapperView setContentTransform:v12];
  v9 = [(NTKComplicationViewController *)self view];
  [v9 bounds];
  MidX = CGRectGetMidX(v14);
  v11 = [(NTKComplicationViewController *)self view];
  [v11 bounds];
  [(NTKComplicationDisplayWrapperView *)self->_wrapperView setCenter:MidX, CGRectGetMidY(v15)];
}

- (id)takeTouchCancellationAssertion
{
  v3 = [(NTKComplicationDisplayWrapperView *)self->_wrapperView display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(NTKComplicationDisplayWrapperView *)self->_wrapperView display];
    v6 = [v5 takeTouchCancellationAssertion];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)ensureContentWithTimeout:(double)a3 completion:(id)a4
{
  v9 = a4;
  v6 = [(NTKComplicationDisplayWrapperView *)self->_wrapperView display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [(NTKComplicationDisplayWrapperView *)self->_wrapperView display];
    [v8 ensureContentWithTimeout:v9 completion:a3];
  }

  else
  {
    v9[2](v9, 0);
  }
}

- (void)setStyle:(id)a3
{
  v6 = a3;
  if (![(NTKComplicationStyle *)self->_style isEqual:?])
  {
    v4 = [v6 copy];
    style = self->_style;
    self->_style = v4;

    [(NTKComplicationViewController *)self _applyStyleIfPossible];
  }
}

- (void)setComplication:(id)a3
{
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = +[NTKWidgetDescriptorProvider sharedInstance];
    [(NTKComplicationViewController *)self _updateWidgetDescriptorForComplication:v8 withProvider:v4];
  }

  if (([v8 isEqual:self->_complication] & 1) == 0)
  {
    v5 = [v8 copy];
    complication = self->_complication;
    self->_complication = v5;

    [(NTKComplicationViewController *)self _updatePresentationState];
    [(NTKComplicationViewController *)self _updateController];
    v7 = [(NTKComplicationViewController *)self view];
    [v7 setNeedsLayout];
  }
}

- (void)setDisplayProperties:(id)a3
{
  v6 = a3;
  if ((NTKEqualObjects(self->_displayProperties, v6) & 1) == 0)
  {
    v4 = [v6 copy];
    displayProperties = self->_displayProperties;
    self->_displayProperties = v4;

    [(NTKComplicationController *)self->_controller setDisplayProperties:self->_displayProperties forDisplayWrapper:self->_wrapperView];
  }
}

- (void)updateDisplayPropertiesWithBlock:(id)a3
{
  displayProperties = self->_displayProperties;
  v5 = a3;
  v6 = [(NTKComplicationControllerDisplayProperties *)displayProperties mutableCopy];
  v5[2](v5, v6);

  [(NTKComplicationViewController *)self setDisplayProperties:v6];
}

- (void)setForceLivePresentationState:(BOOL)a3
{
  if (self->_forceLivePresentationState != a3)
  {
    self->_forceLivePresentationState = a3;
  }

  v4 = [(NTKComplicationViewController *)self viewIfLoaded];

  if (v4)
  {

    [(NTKComplicationViewController *)self _updatePresentationState];
  }
}

- (void)_updateWidgetDescriptorForComplication:(id)a3 withProvider:(id)a4
{
  v23 = self;
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 descriptorsByExtensionIdentifier];
  v7 = [v5 extensionBundleIdentifier];
  v8 = [v6 objectForKey:v7];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    v24 = v9;
    v25 = v5;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        v15 = [v5 kind];
        v16 = [v14 kind];
        if (![v15 isEqual:v16])
        {
          goto LABEL_11;
        }

        v17 = [v5 containerBundleIdentifier];
        v18 = [v14 containerBundleIdentifier];
        if (![v17 isEqual:v18])
        {

LABEL_11:
          continue;
        }

        v19 = [v5 extensionBundleIdentifier];
        [v14 extensionBundleIdentifier];
        v20 = v11;
        v22 = v21 = v12;
        v26 = [v19 isEqual:v22];

        v12 = v21;
        v11 = v20;

        v9 = v24;
        v5 = v25;

        if (v26)
        {
          objc_storeStrong(&v23->_widgetDescriptor, v14);
          [(NTKComplicationViewController *)v23 displayWrapperTemplateBackgroundChanged];
          goto LABEL_14;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v11);
  }

LABEL_14:
}

- (void)_updatePresentationState
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = [(NTKComplicationVariant *)self->_variant family];
  v4 = [NTKComplicationProvider providerForDevice:self->_device];
  complication = self->_complication;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
  v15[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  LOBYTE(complication) = [v4 isComplicationAvailable:complication forFamilies:v7];

  v8 = (complication & 1) == 0 && !self->_forceLivePresentationState;
  if (self->_presentationState != v8)
  {
    v9 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_complication;
      v11 = 138412546;
      v12 = v10;
      v13 = 2048;
      v14 = v8;
      _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "Presentation state update for %@: %lu", &v11, 0x16u);
    }

    self->_presentationState = v8;
    [(NTKComplicationViewController *)self _applyPresentationState];
  }
}

- (void)_applyPresentationState
{
  [(NTKComplicationViewController *)self _updateController];
  presentationState = self->_presentationState;
  if (presentationState == 2)
  {
    wrapperView = self->_wrapperView;

    [(NTKComplicationDisplayWrapperView *)wrapperView setCustomDisplay:0];
  }

  else if (presentationState == 1)
  {
    v5 = [NTKComplicationPlaceholderController templateForFamily:[(NTKComplicationVariant *)self->_variant family] complication:self->_complication variant:self->_variant];
    [(NTKComplicationDisplayWrapperView *)self->_wrapperView setComplicationTemplate:v5 reason:0 animation:0];
  }
}

- (void)_updateController
{
  if (self->_presentationState)
  {
    v3 = 0;
  }

  else
  {
    v3 = [NTKComplicationController controllerForComplication:self->_complication variant:self->_variant device:self->_device];
  }

  controller = self->_controller;
  if (controller != v3)
  {
    obj = v3;
    if (controller && self->_wrapperView)
    {
      [(NTKComplicationController *)controller removeDisplayWrapper:?];
    }

    objc_storeStrong(&self->_controller, obj);
    [(NTKComplicationViewController *)self _recreateDisplayIfNecessary];
    [(NTKComplicationController *)self->_controller addDisplayWrapper:self->_wrapperView withDisplayProperties:self->_displayProperties];
    [(NTKComplicationController *)self->_controller setTouchObserver:self forDisplayWrapper:self->_wrapperView];
    v3 = obj;
  }
}

- (void)_recreateDisplayIfNecessary
{
  v3 = [(NTKComplicationController *)self->_controller richComplicationDisplayViewClass];
  if (v3)
  {
    v4 = v3;
    if ([(objc_class *)v3 instancesRespondToSelector:sel_initWithFamily_])
    {
      v5 = [[v4 alloc] initWithFamily:{-[NTKComplicationVariant family](self->_variant, "family")}];
    }

    else
    {
      v5 = objc_alloc_init(v4);
    }

    v6 = v5;
    [(NTKComplicationDisplayWrapperView *)self->_wrapperView setCustomDisplay:v5];
  }
}

- (void)_applyStyleIfPossible
{
  wrapperView = self->_wrapperView;
  if (wrapperView)
  {
    v4 = [(NTKComplicationDisplayWrapperView *)wrapperView display];
    [(NTKComplicationViewController *)self _applyStyleToDisplay:v4];
  }
}

- (void)_applyStyleToDisplay:(id)a3
{
  v9 = a3;
  if ([v9 conformsToProtocol:&unk_28A7FF4C0])
  {
    v4 = v9;
    v5 = [(NTKComplicationViewController *)self style];
    v6 = [v5 circularPlatterColor];
    [v4 setPlatterColor:v6];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v9;
    v8 = [(NTKComplicationViewController *)self style];
    [v7 setFontStyle:{objc_msgSend(v8, "fontStyle")}];

    [v7 setFilterProvider:self->_monochromeModel];
    [v7 transitionToMonochromeWithFraction:0.0];
  }
}

- (CGAffineTransform)_contentTransform
{
  result = [(NTKComplication *)self->_complication complicationType];
  if (result == 56)
  {
    v6 = MEMORY[0x277CBF2C0];
    v7 = *(MEMORY[0x277CBF2C0] + 16);
    *&retstr->a = *MEMORY[0x277CBF2C0];
    *&retstr->c = v7;
    *&retstr->tx = *(v6 + 32);
  }

  else
  {
    v8 = [(NTKComplicationViewController *)self variant];
    v9 = [v8 family];
    v10 = [(NTKComplicationViewController *)self device];
    v33 = [NTKComplicationMetrics defaultMetricsForFamily:v9 device:v10];

    v11 = [(NTKComplicationViewController *)self variant];
    v12 = [v11 metrics];

    [v33 size];
    v14 = v13;
    [v33 size];
    v16 = v15;
    [v33 safeAreaInsets];
    v19 = v14 - (v17 + v18);
    v22 = v16 - (v20 + v21);
    [v12 size];
    v24 = v23;
    [v12 size];
    v26 = v25;
    [v12 safeAreaInsets];
    v31 = (v24 - (v27 + v28)) / v19;
    v32 = (v26 - (v29 + v30)) / v22;
    if (v31 < v32)
    {
      v32 = v31;
    }

    CGAffineTransformMakeScale(retstr, v32, v32);
  }

  return result;
}

- (id)_effectiveMetrics
{
  if ([(NTKComplication *)self->_complication complicationType]== 56)
  {
    v3 = [(NTKComplicationViewController *)self variant];
    v4 = [v3 metrics];
  }

  else
  {
    v3 = [(NTKComplicationViewController *)self variant];
    v5 = [v3 family];
    v6 = [(NTKComplicationViewController *)self device];
    v4 = [NTKComplicationMetrics defaultMetricsForFamily:v5 device:v6];
  }

  return v4;
}

- (void)displayWrapperTemplateBackgroundChanged
{
  v3 = [(NTKComplicationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 complicationViewControllerBackgroundChanged:self];
  }
}

- (CLKComplicationBackgroundDescriptor)backgroundDescriptor
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NTKComplicationVariant *)self->_variant family];
    if (([(CHSWidgetDescriptor *)self->_widgetDescriptor wantsMaterialBackgroundForFamily:CLKWidgetFamilyForComplicationFamily()]& 1) != 0 || ([(CHSWidgetDescriptor *)self->_widgetDescriptor isLinkedOnOrAfter:0]& 1) == 0)
    {
      v3 = [objc_alloc(MEMORY[0x277CBB710]) initWithMaterialBackground];
    }

    else
    {
      v3 = [objc_alloc(MEMORY[0x277CBB710]) initWithClearBackground];
    }

    v7 = v3;
  }

  else
  {
    v4 = [(NTKComplicationDisplayWrapperView *)self->_wrapperView complicationTemplate];
    v5 = [v4 backgroundDescriptor];

    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v8 = [(NTKComplicationVariant *)self->_variant metrics];
      v9 = [v8 opaque];

      v10 = objc_alloc(MEMORY[0x277CBB710]);
      if (v9)
      {
        v6 = [v10 initWithMaterialBackground];
      }

      else
      {
        v6 = [v10 initWithClearBackground];
      }
    }

    v7 = v6;
  }

  return v7;
}

- (void)descriptorsDidChangeForDescriptorProvider:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__NTKComplicationViewController_descriptorsDidChangeForDescriptorProvider___block_invoke;
  v6[3] = &unk_27877E438;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __75__NTKComplicationViewController_descriptorsDidChangeForDescriptorProvider___block_invoke(uint64_t a1)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = v3[129];

    return [v3 _updateWidgetDescriptorForComplication:v5 withProvider:v4];
  }

  return result;
}

- (void)complicationController:(id)a3 touchedUpForDisplayWrapper:(id)a4
{
  [(NTKComplicationViewController *)self setTouchedDown:0, a4];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained complicationViewControllerTouchedDownChanged:self];
  }
}

- (void)complicationController:(id)a3 touchedDownForDisplayWrapper:(id)a4
{
  [(NTKComplicationViewController *)self setTouchedDown:1, a4];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained complicationViewControllerTouchedDownChanged:self];
  }
}

- (void)willLaunchAppForComplicationDisplayWrapper:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained complicationViewControllerWillPerformAppLaunch:self];
  }
}

- (void)complicationProviderComplicationsDidChange:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__NTKComplicationViewController_complicationProviderComplicationsDidChange___block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (NTKComplicationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end