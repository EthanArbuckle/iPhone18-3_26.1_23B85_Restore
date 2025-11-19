@interface HUQuickControlSingleControlViewController
+ (Class)controlItemClass;
+ (id)controlItemPredicate;
- (BOOL)hasModelValueChangedForInteractionCoordinator:(id)a3;
- (BOOL)isUserInteractionEnabled;
- (HFControlItem)controlItem;
- (HUQuickControlSingleControlViewController)initWithControlItem:(id)a3 home:(id)a4 itemUpdater:(id)a5 controlOrientation:(unint64_t)a6 preferredControl:(unint64_t)a7;
- (HUQuickControlSingleControlViewController)initWithControlItems:(id)a3 home:(id)a4 itemUpdater:(id)a5 controlOrientation:(unint64_t)a6 preferredControl:(unint64_t)a7;
- (HUQuickControlViewProfile)viewProfile;
- (id)createInteractionCoordinator;
- (id)createViewProfile;
- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)a3;
- (id)overrideStatusText;
- (id)overrideValueForCharacteristic:(id)a3;
- (id)viewForTouchContinuation;
- (void)_setModelValue:(id)a3 writeValue:(BOOL)a4;
- (void)_updateControlTransform;
- (void)_updateControlViewReachabilityState;
- (void)_updateTitle;
- (void)_updateViewProfileForCurrentItemState;
- (void)_updateWriteState;
- (void)_writeModelControlValue:(id)a3;
- (void)beginUserInteractionWithFirstTouchGestureRecognizer:(id)a3;
- (void)hideAuxiliaryViewForInteractionCoordinator:(id)a3;
- (void)interactionCoordinator:(id)a3 interactionStateDidChange:(BOOL)a4;
- (void)interactionCoordinator:(id)a3 showAuxiliaryView:(id)a4;
- (void)interactionCoordinator:(id)a3 viewValueDidChange:(id)a4;
- (void)interactionCoordinatorWantsDismissal:(id)a3;
- (void)loadView;
- (void)quickControlItemUpdater:(id)a3 didUpdateResultsForControlItems:(id)a4;
- (void)setControlOrientation:(unint64_t)a3;
- (void)setControlSize:(unint64_t)a3;
- (void)setHorizontalControlCompressionFactor:(double)a3;
- (void)setPreferredControl:(unint64_t)a3;
- (void)setPreferredFrameLayoutGuide:(id)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)setVerticalDirectionalControlStretchFactor:(double)a3;
- (void)updateValueFromControlItem;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HUQuickControlSingleControlViewController

+ (id)controlItemPredicate
{
  v3 = [HUQuickControlSingleItemPredicate alloc];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HUQuickControlSingleControlViewController_controlItemPredicate__block_invoke;
  v6[3] = &__block_descriptor_40_e23_B16__0__HFControlItem_8l;
  v6[4] = a1;
  v4 = [(HUQuickControlSingleItemPredicate *)v3 initWithBlock:v6];

  return v4;
}

uint64_t __65__HUQuickControlSingleControlViewController_controlItemPredicate__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 controlItemClass];
  LOBYTE(v2) = objc_opt_isKindOfClass();

  return v2 & 1;
}

- (HUQuickControlSingleControlViewController)initWithControlItems:(id)a3 home:(id)a4 itemUpdater:(id)a5 controlOrientation:(unint64_t)a6 preferredControl:(unint64_t)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a4;
  if ([v12 count] != 1)
  {
    NSLog(&cfstr_ShouldBeInitia.isa, self, v12);
  }

  v15 = [v12 anyObject];
  v16 = [(HUQuickControlSingleControlViewController *)self initWithControlItem:v15 home:v14 itemUpdater:v13 controlOrientation:a6 preferredControl:a7];

  return v16;
}

- (HUQuickControlSingleControlViewController)initWithControlItem:(id)a3 home:(id)a4 itemUpdater:(id)a5 controlOrientation:(unint64_t)a6 preferredControl:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  [objc_opt_class() controlItemClass];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v35 = [MEMORY[0x277CCA890] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"HUQuickControlSingleControlViewController.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"[originalControlItem isKindOfClass:[self.class controlItemClass]]"}];
  }

  v16 = [MEMORY[0x277CBEB98] setWithObject:v13];
  v39.receiver = self;
  v39.super_class = HUQuickControlSingleControlViewController;
  v17 = [(HUQuickControlViewController *)&v39 initWithControlItems:v16 home:v14 itemUpdater:v15 controlOrientation:a6 preferredControl:a7];

  if (v17)
  {
    v18 = [(HUQuickControlSingleControlViewController *)v17 controlItem];
    v19 = [v18 latestResults];
    v20 = [v19 objectForKeyedSubscript:*MEMORY[0x277D137F0]];
    v21 = v20;
    if (!v20)
    {
      v20 = MEMORY[0x277CBEC38];
    }

    v22 = [v20 BOOLValue];

    if (v22)
    {
      v23 = 0.25;
    }

    else
    {
      v23 = INFINITY;
    }

    v24 = objc_alloc(MEMORY[0x277D2C940]);
    v25 = [(HUQuickControlSingleControlViewController *)v17 controlItem];
    v26 = [v25 latestResults];
    v27 = [v26 objectForKeyedSubscript:*MEMORY[0x277D13818]];
    v28 = [v24 initWithThrottleInterval:v27 initialValue:v23];
    valueWriteThrottler = v17->_valueWriteThrottler;
    v17->_valueWriteThrottler = v28;

    objc_initWeak(&location, v17);
    v30 = [(HUQuickControlSingleControlViewController *)v17 valueWriteThrottler];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __118__HUQuickControlSingleControlViewController_initWithControlItem_home_itemUpdater_controlOrientation_preferredControl___block_invoke;
    v36[3] = &unk_277DB99B8;
    objc_copyWeak(&v37, &location);
    v31 = [v30 observeValueChangesWithBlock:v36];

    v32 = [(HUQuickControlSingleControlViewController *)v17 createInteractionCoordinator];
    interactionCoordinator = v17->_interactionCoordinator;
    v17->_interactionCoordinator = v32;

    v17->_hasSetControlSize = 0;
    [(HUQuickControlSingleControlViewController *)v17 _updateTitle];
    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  return v17;
}

void __118__HUQuickControlSingleControlViewController_initWithControlItem_home_itemUpdater_controlOrientation_preferredControl___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _writeModelControlValue:v3];
}

- (HFControlItem)controlItem
{
  v3 = [(HUQuickControlViewController *)self controlItems];
  v4 = [v3 count];

  if (v4 != 1)
  {
    v5 = [(HUQuickControlViewController *)self controlItems];
    NSLog(&cfstr_ShouldHaveExac.isa, self, v5);
  }

  v6 = [(HUQuickControlViewController *)self controlItems];
  v7 = [v6 anyObject];

  return v7;
}

- (void)loadView
{
  v3 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  v4 = [v3 controlView];

  v5 = [[_HUQuickControlSingleControlHostView alloc] initWithContentView:v4];
  [(HUQuickControlSingleControlViewController *)self setView:v5];

  v6 = [(HUQuickControlViewController *)self preferredFrameLayoutGuide];
  v7 = [(HUQuickControlSingleControlViewController *)self view];
  [v7 setPreferredFrameLayoutGuide:v6];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__HUQuickControlSingleControlViewController_loadView__block_invoke;
  v8[3] = &unk_277DB8488;
  v8[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v8];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUQuickControlSingleControlViewController;
  [(HUQuickControlSingleControlViewController *)&v5 viewWillAppear:a3];
  v4 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  [v4 setViewVisible:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUQuickControlSingleControlViewController;
  [(HUQuickControlSingleControlViewController *)&v5 viewDidDisappear:a3];
  v4 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  [v4 setViewVisible:0];
}

- (void)setPreferredFrameLayoutGuide:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = HUQuickControlSingleControlViewController;
  [(HUQuickControlViewController *)&v6 setPreferredFrameLayoutGuide:v4];
  if ([(HUQuickControlSingleControlViewController *)self isViewLoaded])
  {
    v5 = [(HUQuickControlSingleControlViewController *)self view];
    [v5 setPreferredFrameLayoutGuide:v4];
  }
}

- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)a3
{
  v4 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  v5 = [v4 controlView];
  v6 = [v5 intrinsicSizeDescriptorForControlSize:a3];

  return v6;
}

- (id)overrideValueForCharacteristic:(id)a3
{
  v4 = a3;
  if (-[HUQuickControlSingleControlViewController areWritesInProgressOrPossible](self, "areWritesInProgressOrPossible") && (-[HUQuickControlViewController affectedCharacteristics](self, "affectedCharacteristics"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsObject:v4], v5, v6))
  {
    v7 = [(HUQuickControlSingleControlViewController *)self controlItem];
    v8 = [(HUQuickControlSingleControlViewController *)self modelValue];
    v9 = [v7 characteristicValuesForValue:v8];
    v10 = [v4 characteristicType];
    v11 = [v9 objectForKeyedSubscript:v10];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HUQuickControlSingleControlViewController;
    v11 = [(HUQuickControlViewController *)&v13 overrideValueForCharacteristic:v4];
  }

  return v11;
}

- (void)beginUserInteractionWithFirstTouchGestureRecognizer:(id)a3
{
  v6.receiver = self;
  v6.super_class = HUQuickControlSingleControlViewController;
  v4 = a3;
  [(HUQuickControlViewController *)&v6 beginUserInteractionWithFirstTouchGestureRecognizer:v4];
  v5 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator:v6.receiver];
  [v5 beginUserInteractionWithFirstTouchGestureRecognizer:v4];
}

- (void)setControlSize:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = HUQuickControlSingleControlViewController;
  [(HUQuickControlViewController *)&v4 setControlSize:a3];
  [(HUQuickControlSingleControlViewController *)self setHasSetControlSize:1];
  [(HUQuickControlSingleControlViewController *)self invalidateViewProfile];
}

- (void)setControlOrientation:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = HUQuickControlSingleControlViewController;
  [(HUQuickControlViewController *)&v6 setControlOrientation:?];
  v5 = [(HUQuickControlSingleControlViewController *)self viewProfile];
  [v5 setOrientation:a3];

  [(HUQuickControlSingleControlViewController *)self invalidateViewProfile];
}

- (void)setPreferredControl:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = HUQuickControlSingleControlViewController;
  [(HUQuickControlViewController *)&v4 setPreferredControl:a3];
  [(HUQuickControlSingleControlViewController *)self invalidateViewProfile];
}

- (HUQuickControlViewProfile)viewProfile
{
  viewProfile = self->_viewProfile;
  if (!viewProfile)
  {
    [(HUQuickControlSingleControlViewController *)self _updateViewProfileForCurrentItemState];
    viewProfile = self->_viewProfile;
  }

  return viewProfile;
}

- (BOOL)isUserInteractionEnabled
{
  v2 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  v3 = [v2 isUserInteractionEnabled];

  return v3;
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  [v4 setUserInteractionEnabled:v3];
}

- (void)_setModelValue:(id)a3 writeValue:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  modelValue = self->_modelValue;
  v12 = v7;
  if (modelValue == v7)
  {
    objc_storeStrong(&self->_modelValue, a3);
    v11 = [(HUQuickControlSingleControlViewController *)self valueWriteThrottler];
    [v11 setValue:v12 notifyObservers:v4];
  }

  else
  {
    v9 = [modelValue isEqual:?];
    objc_storeStrong(&self->_modelValue, a3);
    v10 = [(HUQuickControlSingleControlViewController *)self valueWriteThrottler];
    [v10 setValue:v12 notifyObservers:v4];

    if ((v9 & 1) == 0)
    {
      [(HUQuickControlSingleControlViewController *)self modelValueDidChange];
    }
  }
}

- (void)updateValueFromControlItem
{
  v3 = [(HUQuickControlSingleControlViewController *)self controlItem];
  v4 = [v3 latestResults];
  v11 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13818]];

  v5 = v11;
  if (v11)
  {
    v6 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
    v7 = [v6 isUserInteractionActive];

    if ((v7 & 1) == 0)
    {
      v8 = [(HUQuickControlSingleControlViewController *)self controlToViewValueTransformer];
      v9 = [v8 transformedValueForValue:v11];
      v10 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
      [v10 setValue:v9];
    }

    [(HUQuickControlSingleControlViewController *)self _setModelValue:v11 writeValue:0];
    v5 = v11;
  }
}

- (void)_writeModelControlValue:(id)a3
{
  v4 = a3;
  [(HUQuickControlSingleControlViewController *)self setInFlightWriteCount:[(HUQuickControlSingleControlViewController *)self inFlightWriteCount]+ 1];
  [(HUQuickControlSingleControlViewController *)self setHasWrittenAnyNewValues:1];
  [(HUQuickControlSingleControlViewController *)self _updateWriteState];
  objc_initWeak(&location, self);
  v5 = [(HUQuickControlSingleControlViewController *)self controlItem];
  v6 = [v5 writeValue:v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__HUQuickControlSingleControlViewController__writeModelControlValue___block_invoke;
  v8[3] = &unk_277DBC2C8;
  objc_copyWeak(&v9, &location);
  v7 = [v6 addCompletionBlock:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __69__HUQuickControlSingleControlViewController__writeModelControlValue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setInFlightWriteCount:{objc_msgSend(WeakRetained, "inFlightWriteCount") - 1}];
  [WeakRetained inFlightWriteCount];
  [WeakRetained _updateWriteState];
}

- (void)_updateWriteState
{
  v3 = [(HUQuickControlSingleControlViewController *)self areWritesInProgressOrPossible];
  v4 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  if (([v4 isUserInteractionActive] & 1) != 0 || -[HUQuickControlSingleControlViewController inFlightWriteCount](self, "inFlightWriteCount"))
  {
    [(HUQuickControlSingleControlViewController *)self setWritesInProgressOrPossible:1];
  }

  else
  {
    v11 = [(HUQuickControlSingleControlViewController *)self valueWriteThrottler];
    -[HUQuickControlSingleControlViewController setWritesInProgressOrPossible:](self, "setWritesInProgressOrPossible:", [v11 hasPendingValueChange]);
  }

  if (v3 != [(HUQuickControlSingleControlViewController *)self areWritesInProgressOrPossible])
  {
    v5 = [(HUQuickControlSingleControlViewController *)self controlItem];
    v6 = [v5 characteristicOptions];
    v7 = [v6 objectForKeyedSubscript:&unk_2824923D8];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__HUQuickControlSingleControlViewController__updateWriteState__block_invoke;
    v12[3] = &unk_277DB73C0;
    v12[4] = self;
    v8 = [v7 na_flatMap:v12];

    LODWORD(v6) = [(HUQuickControlSingleControlViewController *)self areWritesInProgressOrPossible];
    v9 = [(HUQuickControlViewController *)self characteristicWritingDelegate];
    v10 = v9;
    if (v6)
    {
      [v9 quickControlContent:self willBeginPossibleWritesForCharacteristics:v8];
    }

    else
    {
      [v9 quickControlContent:self didEndPossibleWritesForCharacteristics:v8];
    }
  }
}

id __62__HUQuickControlSingleControlViewController__updateWriteState__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 controlItem];
  v5 = [v4 valueSource];
  v6 = [v5 allCharacteristicsForCharacteristicType:v3];

  return v6;
}

- (void)_updateTitle
{
  v6 = [(HUQuickControlSingleControlViewController *)self controlItem];
  v3 = [v6 latestResults];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  if (v4)
  {
    [(HUQuickControlSingleControlViewController *)self setTitle:v4];
  }

  else
  {
    v5 = HFLocalizedString();
    [(HUQuickControlSingleControlViewController *)self setTitle:v5];
  }
}

- (void)_updateViewProfileForCurrentItemState
{
  v19 = [(HUQuickControlSingleControlViewController *)self createViewProfile];
  [v19 setControlSize:{-[HUQuickControlViewController controlSize](self, "controlSize")}];
  v3 = [(HUQuickControlSingleControlViewController *)self controlItem];
  v4 = [v3 latestResults];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D14158]];
  [v19 setSuspendedState:{objc_msgSend(v5, "unsignedIntegerValue")}];

  [v19 setOrientation:{-[HUQuickControlViewController controlOrientation](self, "controlOrientation")}];
  v6 = [(HUQuickControlSingleControlViewController *)self controlItem];
  v7 = [v6 latestResults];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13808]];
  [v19 setSupplementaryFormattedValue:v8];

  v9 = [(HUQuickControlSingleControlViewController *)self controlItem];
  v10 = [v9 latestResults];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D137E8]];
  [v19 setDecorationIconDescriptor:v11];

  v12 = [(HUQuickControlSingleControlViewController *)self controlItem];
  v13 = [v12 hu_tintColor];
  [v19 setTintColor:v13];

  [(HUQuickControlSingleControlViewController *)self setViewProfile:v19];
  v14 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  v15 = [v14 controlView];

  v16 = [v15 profile];
  if (v16)
  {
    v17 = objc_opt_class();
    if (v17 == objc_opt_class())
    {
      [v15 setProfile:v19];
    }

    else
    {
      v18 = [(HUQuickControlSingleControlViewController *)self createInteractionCoordinator];
      [(HUQuickControlSingleControlViewController *)self setInteractionCoordinator:v18];
    }
  }
}

- (void)_updateControlTransform
{
  [(HUQuickControlSingleControlViewController *)self horizontalControlCompressionFactor];
  v4 = 1.0 - v3;
  [(HUQuickControlSingleControlViewController *)self verticalDirectionalControlStretchFactor];
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeScale(&v14, v4, fabs(v5) + 1.0);
  v6 = [(HUQuickControlSingleControlViewController *)self view];
  [v6 bounds];
  v8 = v7;
  [(HUQuickControlSingleControlViewController *)self verticalDirectionalControlStretchFactor];
  v12 = v14;
  CGAffineTransformTranslate(&v13, &v12, 0.0, v8 * v9 * -0.5);
  v14 = v13;

  v11 = v14;
  v10 = [(HUQuickControlSingleControlViewController *)self view];
  v13 = v11;
  [v10 setTransform:&v13];
}

- (void)setHorizontalControlCompressionFactor:(double)a3
{
  if ((NACGFloatEqualToFloat() & 1) == 0)
  {
    self->_horizontalControlCompressionFactor = a3;

    [(HUQuickControlSingleControlViewController *)self _updateControlTransform];
  }
}

- (void)setVerticalDirectionalControlStretchFactor:(double)a3
{
  if ((NACGFloatEqualToFloat() & 1) == 0)
  {
    self->_verticalDirectionalControlStretchFactor = a3;

    [(HUQuickControlSingleControlViewController *)self _updateControlTransform];
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUQuickControlSingleControlViewController;
  [(HUQuickControlSingleControlViewController *)&v3 viewDidLayoutSubviews];
  [(HUQuickControlSingleControlViewController *)self _updateControlTransform];
}

- (id)createInteractionCoordinator
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HUQuickControlSingleControlViewController.m" lineNumber:343 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUQuickControlSingleControlViewController createInteractionCoordinator]", objc_opt_class()}];

  return 0;
}

+ (Class)controlItemClass
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"HUQuickControlSingleControlViewController.m" lineNumber:349 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HUQuickControlSingleControlViewController controlItemClass]", objc_opt_class()}];

  return 0;
}

- (id)createViewProfile
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HUQuickControlSingleControlViewController.m" lineNumber:355 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUQuickControlSingleControlViewController createViewProfile]", objc_opt_class()}];

  return 0;
}

- (id)overrideStatusText
{
  v2 = [(HUQuickControlSingleControlViewController *)self controlItem];
  v3 = [v2 latestResults];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13DE8]];

  return v4;
}

- (void)quickControlItemUpdater:(id)a3 didUpdateResultsForControlItems:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = HUQuickControlSingleControlViewController;
  [(HUQuickControlViewController *)&v10 quickControlItemUpdater:a3 didUpdateResultsForControlItems:v6];
  v7 = [(HUQuickControlSingleControlViewController *)self controlItem];
  v8 = [v6 containsObject:v7];

  if ((v8 & 1) == 0)
  {
    v9 = [(HUQuickControlSingleControlViewController *)self controlItem];
    NSLog(&cfstr_UnexpectedUpda.isa, v6, v9);
  }

  if (![(HUQuickControlSingleControlViewController *)self areWritesInProgressOrPossible])
  {
    [(HUQuickControlSingleControlViewController *)self updateValueFromControlItem];
  }

  [(HUQuickControlSingleControlViewController *)self _updateTitle];
  [(HUQuickControlSingleControlViewController *)self invalidateViewProfile];
  [(HUQuickControlSingleControlViewController *)self _updateControlViewReachabilityState];
}

- (void)_updateControlViewReachabilityState
{
  v3 = [(HUQuickControlSingleControlViewController *)self controlItem];
  v4 = [v3 latestResults];
  v12 = [v4 objectForKeyedSubscript:*MEMORY[0x277D140E8]];

  if (v12)
  {
    v5 = [v12 category] == 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  v7 = [v6 controlView];
  if ([v7 conformsToProtocol:&unk_2824F3238])
  {
    v8 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
    v9 = [v8 controlView];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      goto LABEL_9;
    }

    v11 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
    v6 = [v11 controlView];

    [v6 setReachabilityState:v5];
  }

  else
  {
  }

LABEL_9:
}

- (void)interactionCoordinator:(id)a3 viewValueDidChange:(id)a4
{
  v20 = a3;
  v6 = a4;
  if (([v20 isUserInteractionActive] & 1) == 0)
  {
    NSLog(&cfstr_ReceivedAValue.isa, v20);
  }

  v7 = [(HUQuickControlSingleControlViewController *)self controlToViewValueTransformer];
  v8 = [v7 valueForTransformedValue:v6];

  v9 = [(HUQuickControlSingleControlViewController *)self controlItem];
  v10 = [v9 normalizedValueForValue:v8];

  v11 = [(HUQuickControlSingleControlViewController *)self controlItem];
  v12 = [v11 latestResults];
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D13818]];
  v14 = [v13 isEqual:v10];

  if ((v14 & 1) == 0)
  {
    v15 = [(HUQuickControlSingleControlViewController *)self controlItem];
    v16 = [v15 latestResults];
    v17 = [v16 objectForKeyedSubscript:*MEMORY[0x277D13800]];
    v18 = [v17 isEqual:MEMORY[0x277CBEC38]];

    [(HUQuickControlSingleControlViewController *)self _setModelValue:v10 writeValue:v18 ^ 1u];
  }

  v19 = [(HUQuickControlViewController *)self characteristicWritingDelegate];
  [v19 quickControlContentDidUpdateCharacteristicValueOverrides:self];
}

- (void)interactionCoordinator:(id)a3 interactionStateDidChange:(BOOL)a4
{
  if (!a4)
  {
    v5 = [(HUQuickControlSingleControlViewController *)self valueWriteThrottler];
    [v5 flushValueChanges];
  }

  [(HUQuickControlSingleControlViewController *)self _updateWriteState];
}

- (BOOL)hasModelValueChangedForInteractionCoordinator:(id)a3
{
  if ([(HUQuickControlSingleControlViewController *)self hasWrittenAnyNewValues])
  {
    return 1;
  }

  v5 = [(HUQuickControlSingleControlViewController *)self valueWriteThrottler];
  v6 = [v5 hasPendingValueChange];

  return v6;
}

- (void)interactionCoordinatorWantsDismissal:(id)a3
{
  v4 = [(HUQuickControlViewController *)self quickControlHost];
  [v4 quickControlContent:self requestDismissalOfType:1];
}

- (void)interactionCoordinator:(id)a3 showAuxiliaryView:(id)a4
{
  v5 = a4;
  v6 = [(HUQuickControlViewController *)self quickControlHost];
  [v6 quickControlContent:self showAuxiliaryView:v5];
}

- (void)hideAuxiliaryViewForInteractionCoordinator:(id)a3
{
  v4 = [(HUQuickControlViewController *)self quickControlHost];
  [v4 hideAuxiliaryViewForQuickControlContent:self];
}

- (id)viewForTouchContinuation
{
  v3 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  [v3 recordInteractionStart];

  v4 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  v5 = [v4 controlView];

  return v5;
}

@end