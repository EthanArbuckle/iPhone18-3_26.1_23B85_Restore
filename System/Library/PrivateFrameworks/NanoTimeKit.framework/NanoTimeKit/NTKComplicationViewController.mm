@interface NTKComplicationViewController
- (CGAffineTransform)_contentTransform;
- (CLKComplicationBackgroundDescriptor)backgroundDescriptor;
- (NTKComplicationViewController)initWithVariant:(id)variant device:(id)device complication:(id)complication displayProperties:(id)properties;
- (NTKComplicationViewControllerDelegate)delegate;
- (id)_effectiveMetrics;
- (id)takeTouchCancellationAssertion;
- (void)_applyPresentationState;
- (void)_applyStyleIfPossible;
- (void)_applyStyleToDisplay:(id)display;
- (void)_recreateDisplayIfNecessary;
- (void)_updateController;
- (void)_updatePresentationState;
- (void)_updateWidgetDescriptorForComplication:(id)complication withProvider:(id)provider;
- (void)complicationController:(id)controller touchedDownForDisplayWrapper:(id)wrapper;
- (void)complicationController:(id)controller touchedUpForDisplayWrapper:(id)wrapper;
- (void)complicationProviderComplicationsDidChange:(id)change;
- (void)dealloc;
- (void)descriptorsDidChangeForDescriptorProvider:(id)provider;
- (void)displayWrapperTemplateBackgroundChanged;
- (void)ensureContentWithTimeout:(double)timeout completion:(id)completion;
- (void)loadView;
- (void)setComplication:(id)complication;
- (void)setComplication:(id)complication displayProperties:(id)properties;
- (void)setDisplayProperties:(id)properties;
- (void)setForceLivePresentationState:(BOOL)state;
- (void)setStyle:(id)style;
- (void)updateDisplayPropertiesWithBlock:(id)block;
- (void)viewDidLayoutSubviews;
- (void)willLaunchAppForComplicationDisplayWrapper:(id)wrapper;
@end

@implementation NTKComplicationViewController

- (NTKComplicationViewController)initWithVariant:(id)variant device:(id)device complication:(id)complication displayProperties:(id)properties
{
  variantCopy = variant;
  deviceCopy = device;
  complicationCopy = complication;
  propertiesCopy = properties;
  v27.receiver = self;
  v27.super_class = NTKComplicationViewController;
  v15 = [(NTKComplicationViewController *)&v27 initWithNibName:0 bundle:0];
  v16 = +[NTKWidgetDescriptorProvider sharedInstance];
  [v16 registerObserver:v15];

  if (v15)
  {
    objc_storeStrong(&v15->_variant, variant);
    objc_storeStrong(&v15->_device, device);
    objc_storeStrong(&v15->_complication, complication);
    v17 = objc_opt_new();
    style = v15->_style;
    v15->_style = v17;

    v19 = [[NTKMonochromeModel alloc] initWithDevice:deviceCopy];
    monochromeModel = v15->_monochromeModel;
    v15->_monochromeModel = v19;

    v15->_presentationState = 2;
    v15->_forceLivePresentationState = 0;
    v21 = [propertiesCopy copy];
    displayProperties = v15->_displayProperties;
    v15->_displayProperties = v21;

    v23 = [NTKComplicationProvider providerForDevice:deviceCopy];
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

- (void)setComplication:(id)complication displayProperties:(id)properties
{
  complicationCopy = complication;
  v7 = [properties copy];
  displayProperties = self->_displayProperties;
  self->_displayProperties = v7;

  [(NTKComplicationViewController *)self setComplication:complicationCopy];
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
  view = [(NTKComplicationViewController *)self view];
  [view addSubview:self->_wrapperView];

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
  _effectiveMetrics = [(NTKComplicationViewController *)self _effectiveMetrics];
  [_effectiveMetrics size];
  [(NTKComplicationDisplayWrapperView *)self->_wrapperView setBounds:v3, v4, v6, v7];

  [(NTKComplicationViewController *)self _contentTransform];
  wrapperView = self->_wrapperView;
  v12[0] = v12[3];
  v12[1] = v12[4];
  v12[2] = v12[5];
  [(NTKComplicationDisplayWrapperView *)wrapperView setContentTransform:v12];
  view = [(NTKComplicationViewController *)self view];
  [view bounds];
  MidX = CGRectGetMidX(v14);
  view2 = [(NTKComplicationViewController *)self view];
  [view2 bounds];
  [(NTKComplicationDisplayWrapperView *)self->_wrapperView setCenter:MidX, CGRectGetMidY(v15)];
}

- (id)takeTouchCancellationAssertion
{
  display = [(NTKComplicationDisplayWrapperView *)self->_wrapperView display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    display2 = [(NTKComplicationDisplayWrapperView *)self->_wrapperView display];
    takeTouchCancellationAssertion = [display2 takeTouchCancellationAssertion];
  }

  else
  {
    takeTouchCancellationAssertion = 0;
  }

  return takeTouchCancellationAssertion;
}

- (void)ensureContentWithTimeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  display = [(NTKComplicationDisplayWrapperView *)self->_wrapperView display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    display2 = [(NTKComplicationDisplayWrapperView *)self->_wrapperView display];
    [display2 ensureContentWithTimeout:completionCopy completion:timeout];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  if (![(NTKComplicationStyle *)self->_style isEqual:?])
  {
    v4 = [styleCopy copy];
    style = self->_style;
    self->_style = v4;

    [(NTKComplicationViewController *)self _applyStyleIfPossible];
  }
}

- (void)setComplication:(id)complication
{
  complicationCopy = complication;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = +[NTKWidgetDescriptorProvider sharedInstance];
    [(NTKComplicationViewController *)self _updateWidgetDescriptorForComplication:complicationCopy withProvider:v4];
  }

  if (([complicationCopy isEqual:self->_complication] & 1) == 0)
  {
    v5 = [complicationCopy copy];
    complication = self->_complication;
    self->_complication = v5;

    [(NTKComplicationViewController *)self _updatePresentationState];
    [(NTKComplicationViewController *)self _updateController];
    view = [(NTKComplicationViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)setDisplayProperties:(id)properties
{
  propertiesCopy = properties;
  if ((NTKEqualObjects(self->_displayProperties, propertiesCopy) & 1) == 0)
  {
    v4 = [propertiesCopy copy];
    displayProperties = self->_displayProperties;
    self->_displayProperties = v4;

    [(NTKComplicationController *)self->_controller setDisplayProperties:self->_displayProperties forDisplayWrapper:self->_wrapperView];
  }
}

- (void)updateDisplayPropertiesWithBlock:(id)block
{
  displayProperties = self->_displayProperties;
  blockCopy = block;
  v6 = [(NTKComplicationControllerDisplayProperties *)displayProperties mutableCopy];
  blockCopy[2](blockCopy, v6);

  [(NTKComplicationViewController *)self setDisplayProperties:v6];
}

- (void)setForceLivePresentationState:(BOOL)state
{
  if (self->_forceLivePresentationState != state)
  {
    self->_forceLivePresentationState = state;
  }

  viewIfLoaded = [(NTKComplicationViewController *)self viewIfLoaded];

  if (viewIfLoaded)
  {

    [(NTKComplicationViewController *)self _updatePresentationState];
  }
}

- (void)_updateWidgetDescriptorForComplication:(id)complication withProvider:(id)provider
{
  selfCopy = self;
  v32 = *MEMORY[0x277D85DE8];
  complicationCopy = complication;
  descriptorsByExtensionIdentifier = [provider descriptorsByExtensionIdentifier];
  extensionBundleIdentifier = [complicationCopy extensionBundleIdentifier];
  v8 = [descriptorsByExtensionIdentifier objectForKey:extensionBundleIdentifier];

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
    v25 = complicationCopy;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        kind = [complicationCopy kind];
        kind2 = [v14 kind];
        if (![kind isEqual:kind2])
        {
          goto LABEL_11;
        }

        containerBundleIdentifier = [complicationCopy containerBundleIdentifier];
        containerBundleIdentifier2 = [v14 containerBundleIdentifier];
        if (![containerBundleIdentifier isEqual:containerBundleIdentifier2])
        {

LABEL_11:
          continue;
        }

        extensionBundleIdentifier2 = [complicationCopy extensionBundleIdentifier];
        [v14 extensionBundleIdentifier];
        v20 = v11;
        v22 = v21 = v12;
        v26 = [extensionBundleIdentifier2 isEqual:v22];

        v12 = v21;
        v11 = v20;

        v9 = v24;
        complicationCopy = v25;

        if (v26)
        {
          objc_storeStrong(&selfCopy->_widgetDescriptor, v14);
          [(NTKComplicationViewController *)selfCopy displayWrapperTemplateBackgroundChanged];
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
  family = [(NTKComplicationVariant *)self->_variant family];
  v4 = [NTKComplicationProvider providerForDevice:self->_device];
  complication = self->_complication;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:family];
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
  richComplicationDisplayViewClass = [(NTKComplicationController *)self->_controller richComplicationDisplayViewClass];
  if (richComplicationDisplayViewClass)
  {
    v4 = richComplicationDisplayViewClass;
    if ([(objc_class *)richComplicationDisplayViewClass instancesRespondToSelector:sel_initWithFamily_])
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
    display = [(NTKComplicationDisplayWrapperView *)wrapperView display];
    [(NTKComplicationViewController *)self _applyStyleToDisplay:display];
  }
}

- (void)_applyStyleToDisplay:(id)display
{
  displayCopy = display;
  if ([displayCopy conformsToProtocol:&unk_28A7FF4C0])
  {
    v4 = displayCopy;
    style = [(NTKComplicationViewController *)self style];
    circularPlatterColor = [style circularPlatterColor];
    [v4 setPlatterColor:circularPlatterColor];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = displayCopy;
    style2 = [(NTKComplicationViewController *)self style];
    [v7 setFontStyle:{objc_msgSend(style2, "fontStyle")}];

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
    variant = [(NTKComplicationViewController *)self variant];
    family = [variant family];
    device = [(NTKComplicationViewController *)self device];
    v33 = [NTKComplicationMetrics defaultMetricsForFamily:family device:device];

    variant2 = [(NTKComplicationViewController *)self variant];
    metrics = [variant2 metrics];

    [v33 size];
    v14 = v13;
    [v33 size];
    v16 = v15;
    [v33 safeAreaInsets];
    v19 = v14 - (v17 + v18);
    v22 = v16 - (v20 + v21);
    [metrics size];
    v24 = v23;
    [metrics size];
    v26 = v25;
    [metrics safeAreaInsets];
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
    variant = [(NTKComplicationViewController *)self variant];
    metrics = [variant metrics];
  }

  else
  {
    variant = [(NTKComplicationViewController *)self variant];
    family = [variant family];
    device = [(NTKComplicationViewController *)self device];
    metrics = [NTKComplicationMetrics defaultMetricsForFamily:family device:device];
  }

  return metrics;
}

- (void)displayWrapperTemplateBackgroundChanged
{
  delegate = [(NTKComplicationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate complicationViewControllerBackgroundChanged:self];
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
      initWithMaterialBackground = [objc_alloc(MEMORY[0x277CBB710]) initWithMaterialBackground];
    }

    else
    {
      initWithMaterialBackground = [objc_alloc(MEMORY[0x277CBB710]) initWithClearBackground];
    }

    v7 = initWithMaterialBackground;
  }

  else
  {
    complicationTemplate = [(NTKComplicationDisplayWrapperView *)self->_wrapperView complicationTemplate];
    backgroundDescriptor = [complicationTemplate backgroundDescriptor];

    if (backgroundDescriptor)
    {
      initWithMaterialBackground2 = backgroundDescriptor;
    }

    else
    {
      metrics = [(NTKComplicationVariant *)self->_variant metrics];
      opaque = [metrics opaque];

      v10 = objc_alloc(MEMORY[0x277CBB710]);
      if (opaque)
      {
        initWithMaterialBackground2 = [v10 initWithMaterialBackground];
      }

      else
      {
        initWithMaterialBackground2 = [v10 initWithClearBackground];
      }
    }

    v7 = initWithMaterialBackground2;
  }

  return v7;
}

- (void)descriptorsDidChangeForDescriptorProvider:(id)provider
{
  providerCopy = provider;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__NTKComplicationViewController_descriptorsDidChangeForDescriptorProvider___block_invoke;
  v6[3] = &unk_27877E438;
  v6[4] = self;
  v7 = providerCopy;
  v5 = providerCopy;
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

- (void)complicationController:(id)controller touchedUpForDisplayWrapper:(id)wrapper
{
  [(NTKComplicationViewController *)self setTouchedDown:0, wrapper];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained complicationViewControllerTouchedDownChanged:self];
  }
}

- (void)complicationController:(id)controller touchedDownForDisplayWrapper:(id)wrapper
{
  [(NTKComplicationViewController *)self setTouchedDown:1, wrapper];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained complicationViewControllerTouchedDownChanged:self];
  }
}

- (void)willLaunchAppForComplicationDisplayWrapper:(id)wrapper
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained complicationViewControllerWillPerformAppLaunch:self];
  }
}

- (void)complicationProviderComplicationsDidChange:(id)change
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