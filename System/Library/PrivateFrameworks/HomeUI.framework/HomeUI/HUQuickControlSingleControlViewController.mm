@interface HUQuickControlSingleControlViewController
+ (Class)controlItemClass;
+ (id)controlItemPredicate;
- (BOOL)hasModelValueChangedForInteractionCoordinator:(id)coordinator;
- (BOOL)isUserInteractionEnabled;
- (HFControlItem)controlItem;
- (HUQuickControlSingleControlViewController)initWithControlItem:(id)item home:(id)home itemUpdater:(id)updater controlOrientation:(unint64_t)orientation preferredControl:(unint64_t)control;
- (HUQuickControlSingleControlViewController)initWithControlItems:(id)items home:(id)home itemUpdater:(id)updater controlOrientation:(unint64_t)orientation preferredControl:(unint64_t)control;
- (HUQuickControlViewProfile)viewProfile;
- (id)createInteractionCoordinator;
- (id)createViewProfile;
- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)size;
- (id)overrideStatusText;
- (id)overrideValueForCharacteristic:(id)characteristic;
- (id)viewForTouchContinuation;
- (void)_setModelValue:(id)value writeValue:(BOOL)writeValue;
- (void)_updateControlTransform;
- (void)_updateControlViewReachabilityState;
- (void)_updateTitle;
- (void)_updateViewProfileForCurrentItemState;
- (void)_updateWriteState;
- (void)_writeModelControlValue:(id)value;
- (void)beginUserInteractionWithFirstTouchGestureRecognizer:(id)recognizer;
- (void)hideAuxiliaryViewForInteractionCoordinator:(id)coordinator;
- (void)interactionCoordinator:(id)coordinator interactionStateDidChange:(BOOL)change;
- (void)interactionCoordinator:(id)coordinator showAuxiliaryView:(id)view;
- (void)interactionCoordinator:(id)coordinator viewValueDidChange:(id)change;
- (void)interactionCoordinatorWantsDismissal:(id)dismissal;
- (void)loadView;
- (void)quickControlItemUpdater:(id)updater didUpdateResultsForControlItems:(id)items;
- (void)setControlOrientation:(unint64_t)orientation;
- (void)setControlSize:(unint64_t)size;
- (void)setHorizontalControlCompressionFactor:(double)factor;
- (void)setPreferredControl:(unint64_t)control;
- (void)setPreferredFrameLayoutGuide:(id)guide;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)setVerticalDirectionalControlStretchFactor:(double)factor;
- (void)updateValueFromControlItem;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HUQuickControlSingleControlViewController

+ (id)controlItemPredicate
{
  v3 = [HUQuickControlSingleItemPredicate alloc];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HUQuickControlSingleControlViewController_controlItemPredicate__block_invoke;
  v6[3] = &__block_descriptor_40_e23_B16__0__HFControlItem_8l;
  v6[4] = self;
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

- (HUQuickControlSingleControlViewController)initWithControlItems:(id)items home:(id)home itemUpdater:(id)updater controlOrientation:(unint64_t)orientation preferredControl:(unint64_t)control
{
  itemsCopy = items;
  updaterCopy = updater;
  homeCopy = home;
  if ([itemsCopy count] != 1)
  {
    NSLog(&cfstr_ShouldBeInitia.isa, self, itemsCopy);
  }

  anyObject = [itemsCopy anyObject];
  v16 = [(HUQuickControlSingleControlViewController *)self initWithControlItem:anyObject home:homeCopy itemUpdater:updaterCopy controlOrientation:orientation preferredControl:control];

  return v16;
}

- (HUQuickControlSingleControlViewController)initWithControlItem:(id)item home:(id)home itemUpdater:(id)updater controlOrientation:(unint64_t)orientation preferredControl:(unint64_t)control
{
  itemCopy = item;
  homeCopy = home;
  updaterCopy = updater;
  [objc_opt_class() controlItemClass];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUQuickControlSingleControlViewController.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"[originalControlItem isKindOfClass:[self.class controlItemClass]]"}];
  }

  v16 = [MEMORY[0x277CBEB98] setWithObject:itemCopy];
  v39.receiver = self;
  v39.super_class = HUQuickControlSingleControlViewController;
  v17 = [(HUQuickControlViewController *)&v39 initWithControlItems:v16 home:homeCopy itemUpdater:updaterCopy controlOrientation:orientation preferredControl:control];

  if (v17)
  {
    controlItem = [(HUQuickControlSingleControlViewController *)v17 controlItem];
    latestResults = [controlItem latestResults];
    v20 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D137F0]];
    v21 = v20;
    if (!v20)
    {
      v20 = MEMORY[0x277CBEC38];
    }

    bOOLValue = [v20 BOOLValue];

    if (bOOLValue)
    {
      v23 = 0.25;
    }

    else
    {
      v23 = INFINITY;
    }

    v24 = objc_alloc(MEMORY[0x277D2C940]);
    controlItem2 = [(HUQuickControlSingleControlViewController *)v17 controlItem];
    latestResults2 = [controlItem2 latestResults];
    v27 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13818]];
    v28 = [v24 initWithThrottleInterval:v27 initialValue:v23];
    valueWriteThrottler = v17->_valueWriteThrottler;
    v17->_valueWriteThrottler = v28;

    objc_initWeak(&location, v17);
    valueWriteThrottler = [(HUQuickControlSingleControlViewController *)v17 valueWriteThrottler];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __118__HUQuickControlSingleControlViewController_initWithControlItem_home_itemUpdater_controlOrientation_preferredControl___block_invoke;
    v36[3] = &unk_277DB99B8;
    objc_copyWeak(&v37, &location);
    v31 = [valueWriteThrottler observeValueChangesWithBlock:v36];

    createInteractionCoordinator = [(HUQuickControlSingleControlViewController *)v17 createInteractionCoordinator];
    interactionCoordinator = v17->_interactionCoordinator;
    v17->_interactionCoordinator = createInteractionCoordinator;

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
  controlItems = [(HUQuickControlViewController *)self controlItems];
  v4 = [controlItems count];

  if (v4 != 1)
  {
    controlItems2 = [(HUQuickControlViewController *)self controlItems];
    NSLog(&cfstr_ShouldHaveExac.isa, self, controlItems2);
  }

  controlItems3 = [(HUQuickControlViewController *)self controlItems];
  anyObject = [controlItems3 anyObject];

  return anyObject;
}

- (void)loadView
{
  interactionCoordinator = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  controlView = [interactionCoordinator controlView];

  v5 = [[_HUQuickControlSingleControlHostView alloc] initWithContentView:controlView];
  [(HUQuickControlSingleControlViewController *)self setView:v5];

  preferredFrameLayoutGuide = [(HUQuickControlViewController *)self preferredFrameLayoutGuide];
  view = [(HUQuickControlSingleControlViewController *)self view];
  [view setPreferredFrameLayoutGuide:preferredFrameLayoutGuide];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__HUQuickControlSingleControlViewController_loadView__block_invoke;
  v8[3] = &unk_277DB8488;
  v8[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v8];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = HUQuickControlSingleControlViewController;
  [(HUQuickControlSingleControlViewController *)&v5 viewWillAppear:appear];
  interactionCoordinator = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  [interactionCoordinator setViewVisible:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = HUQuickControlSingleControlViewController;
  [(HUQuickControlSingleControlViewController *)&v5 viewDidDisappear:disappear];
  interactionCoordinator = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  [interactionCoordinator setViewVisible:0];
}

- (void)setPreferredFrameLayoutGuide:(id)guide
{
  guideCopy = guide;
  v6.receiver = self;
  v6.super_class = HUQuickControlSingleControlViewController;
  [(HUQuickControlViewController *)&v6 setPreferredFrameLayoutGuide:guideCopy];
  if ([(HUQuickControlSingleControlViewController *)self isViewLoaded])
  {
    view = [(HUQuickControlSingleControlViewController *)self view];
    [view setPreferredFrameLayoutGuide:guideCopy];
  }
}

- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)size
{
  interactionCoordinator = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  controlView = [interactionCoordinator controlView];
  v6 = [controlView intrinsicSizeDescriptorForControlSize:size];

  return v6;
}

- (id)overrideValueForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  if (-[HUQuickControlSingleControlViewController areWritesInProgressOrPossible](self, "areWritesInProgressOrPossible") && (-[HUQuickControlViewController affectedCharacteristics](self, "affectedCharacteristics"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsObject:characteristicCopy], v5, v6))
  {
    controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
    modelValue = [(HUQuickControlSingleControlViewController *)self modelValue];
    v9 = [controlItem characteristicValuesForValue:modelValue];
    characteristicType = [characteristicCopy characteristicType];
    v11 = [v9 objectForKeyedSubscript:characteristicType];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HUQuickControlSingleControlViewController;
    v11 = [(HUQuickControlViewController *)&v13 overrideValueForCharacteristic:characteristicCopy];
  }

  return v11;
}

- (void)beginUserInteractionWithFirstTouchGestureRecognizer:(id)recognizer
{
  v6.receiver = self;
  v6.super_class = HUQuickControlSingleControlViewController;
  recognizerCopy = recognizer;
  [(HUQuickControlViewController *)&v6 beginUserInteractionWithFirstTouchGestureRecognizer:recognizerCopy];
  v5 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator:v6.receiver];
  [v5 beginUserInteractionWithFirstTouchGestureRecognizer:recognizerCopy];
}

- (void)setControlSize:(unint64_t)size
{
  v4.receiver = self;
  v4.super_class = HUQuickControlSingleControlViewController;
  [(HUQuickControlViewController *)&v4 setControlSize:size];
  [(HUQuickControlSingleControlViewController *)self setHasSetControlSize:1];
  [(HUQuickControlSingleControlViewController *)self invalidateViewProfile];
}

- (void)setControlOrientation:(unint64_t)orientation
{
  v6.receiver = self;
  v6.super_class = HUQuickControlSingleControlViewController;
  [(HUQuickControlViewController *)&v6 setControlOrientation:?];
  viewProfile = [(HUQuickControlSingleControlViewController *)self viewProfile];
  [viewProfile setOrientation:orientation];

  [(HUQuickControlSingleControlViewController *)self invalidateViewProfile];
}

- (void)setPreferredControl:(unint64_t)control
{
  v4.receiver = self;
  v4.super_class = HUQuickControlSingleControlViewController;
  [(HUQuickControlViewController *)&v4 setPreferredControl:control];
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
  interactionCoordinator = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  isUserInteractionEnabled = [interactionCoordinator isUserInteractionEnabled];

  return isUserInteractionEnabled;
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  interactionCoordinator = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  [interactionCoordinator setUserInteractionEnabled:enabledCopy];
}

- (void)_setModelValue:(id)value writeValue:(BOOL)writeValue
{
  writeValueCopy = writeValue;
  valueCopy = value;
  modelValue = self->_modelValue;
  v12 = valueCopy;
  if (modelValue == valueCopy)
  {
    objc_storeStrong(&self->_modelValue, value);
    valueWriteThrottler = [(HUQuickControlSingleControlViewController *)self valueWriteThrottler];
    [valueWriteThrottler setValue:v12 notifyObservers:writeValueCopy];
  }

  else
  {
    v9 = [modelValue isEqual:?];
    objc_storeStrong(&self->_modelValue, value);
    valueWriteThrottler2 = [(HUQuickControlSingleControlViewController *)self valueWriteThrottler];
    [valueWriteThrottler2 setValue:v12 notifyObservers:writeValueCopy];

    if ((v9 & 1) == 0)
    {
      [(HUQuickControlSingleControlViewController *)self modelValueDidChange];
    }
  }
}

- (void)updateValueFromControlItem
{
  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  latestResults = [controlItem latestResults];
  v11 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13818]];

  v5 = v11;
  if (v11)
  {
    interactionCoordinator = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
    isUserInteractionActive = [interactionCoordinator isUserInteractionActive];

    if ((isUserInteractionActive & 1) == 0)
    {
      controlToViewValueTransformer = [(HUQuickControlSingleControlViewController *)self controlToViewValueTransformer];
      v9 = [controlToViewValueTransformer transformedValueForValue:v11];
      interactionCoordinator2 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
      [interactionCoordinator2 setValue:v9];
    }

    [(HUQuickControlSingleControlViewController *)self _setModelValue:v11 writeValue:0];
    v5 = v11;
  }
}

- (void)_writeModelControlValue:(id)value
{
  valueCopy = value;
  [(HUQuickControlSingleControlViewController *)self setInFlightWriteCount:[(HUQuickControlSingleControlViewController *)self inFlightWriteCount]+ 1];
  [(HUQuickControlSingleControlViewController *)self setHasWrittenAnyNewValues:1];
  [(HUQuickControlSingleControlViewController *)self _updateWriteState];
  objc_initWeak(&location, self);
  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  v6 = [controlItem writeValue:valueCopy];
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
  areWritesInProgressOrPossible = [(HUQuickControlSingleControlViewController *)self areWritesInProgressOrPossible];
  interactionCoordinator = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  if (([interactionCoordinator isUserInteractionActive] & 1) != 0 || -[HUQuickControlSingleControlViewController inFlightWriteCount](self, "inFlightWriteCount"))
  {
    [(HUQuickControlSingleControlViewController *)self setWritesInProgressOrPossible:1];
  }

  else
  {
    valueWriteThrottler = [(HUQuickControlSingleControlViewController *)self valueWriteThrottler];
    -[HUQuickControlSingleControlViewController setWritesInProgressOrPossible:](self, "setWritesInProgressOrPossible:", [valueWriteThrottler hasPendingValueChange]);
  }

  if (areWritesInProgressOrPossible != [(HUQuickControlSingleControlViewController *)self areWritesInProgressOrPossible])
  {
    controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
    characteristicOptions = [controlItem characteristicOptions];
    v7 = [characteristicOptions objectForKeyedSubscript:&unk_2824923D8];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__HUQuickControlSingleControlViewController__updateWriteState__block_invoke;
    v12[3] = &unk_277DB73C0;
    v12[4] = self;
    v8 = [v7 na_flatMap:v12];

    LODWORD(characteristicOptions) = [(HUQuickControlSingleControlViewController *)self areWritesInProgressOrPossible];
    characteristicWritingDelegate = [(HUQuickControlViewController *)self characteristicWritingDelegate];
    v10 = characteristicWritingDelegate;
    if (characteristicOptions)
    {
      [characteristicWritingDelegate quickControlContent:self willBeginPossibleWritesForCharacteristics:v8];
    }

    else
    {
      [characteristicWritingDelegate quickControlContent:self didEndPossibleWritesForCharacteristics:v8];
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
  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  latestResults = [controlItem latestResults];
  v4 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
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
  createViewProfile = [(HUQuickControlSingleControlViewController *)self createViewProfile];
  [createViewProfile setControlSize:{-[HUQuickControlViewController controlSize](self, "controlSize")}];
  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  latestResults = [controlItem latestResults];
  v5 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14158]];
  [createViewProfile setSuspendedState:{objc_msgSend(v5, "unsignedIntegerValue")}];

  [createViewProfile setOrientation:{-[HUQuickControlViewController controlOrientation](self, "controlOrientation")}];
  controlItem2 = [(HUQuickControlSingleControlViewController *)self controlItem];
  latestResults2 = [controlItem2 latestResults];
  v8 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13808]];
  [createViewProfile setSupplementaryFormattedValue:v8];

  controlItem3 = [(HUQuickControlSingleControlViewController *)self controlItem];
  latestResults3 = [controlItem3 latestResults];
  v11 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D137E8]];
  [createViewProfile setDecorationIconDescriptor:v11];

  controlItem4 = [(HUQuickControlSingleControlViewController *)self controlItem];
  hu_tintColor = [controlItem4 hu_tintColor];
  [createViewProfile setTintColor:hu_tintColor];

  [(HUQuickControlSingleControlViewController *)self setViewProfile:createViewProfile];
  interactionCoordinator = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  controlView = [interactionCoordinator controlView];

  profile = [controlView profile];
  if (profile)
  {
    v17 = objc_opt_class();
    if (v17 == objc_opt_class())
    {
      [controlView setProfile:createViewProfile];
    }

    else
    {
      createInteractionCoordinator = [(HUQuickControlSingleControlViewController *)self createInteractionCoordinator];
      [(HUQuickControlSingleControlViewController *)self setInteractionCoordinator:createInteractionCoordinator];
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
  view = [(HUQuickControlSingleControlViewController *)self view];
  [view bounds];
  v8 = v7;
  [(HUQuickControlSingleControlViewController *)self verticalDirectionalControlStretchFactor];
  v12 = v14;
  CGAffineTransformTranslate(&v13, &v12, 0.0, v8 * v9 * -0.5);
  v14 = v13;

  v11 = v14;
  view2 = [(HUQuickControlSingleControlViewController *)self view];
  v13 = v11;
  [view2 setTransform:&v13];
}

- (void)setHorizontalControlCompressionFactor:(double)factor
{
  if ((NACGFloatEqualToFloat() & 1) == 0)
  {
    self->_horizontalControlCompressionFactor = factor;

    [(HUQuickControlSingleControlViewController *)self _updateControlTransform];
  }
}

- (void)setVerticalDirectionalControlStretchFactor:(double)factor
{
  if ((NACGFloatEqualToFloat() & 1) == 0)
  {
    self->_verticalDirectionalControlStretchFactor = factor;

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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUQuickControlSingleControlViewController.m" lineNumber:343 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUQuickControlSingleControlViewController createInteractionCoordinator]", objc_opt_class()}];

  return 0;
}

+ (Class)controlItemClass
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUQuickControlSingleControlViewController.m" lineNumber:349 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HUQuickControlSingleControlViewController controlItemClass]", objc_opt_class()}];

  return 0;
}

- (id)createViewProfile
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUQuickControlSingleControlViewController.m" lineNumber:355 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUQuickControlSingleControlViewController createViewProfile]", objc_opt_class()}];

  return 0;
}

- (id)overrideStatusText
{
  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  latestResults = [controlItem latestResults];
  v4 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DE8]];

  return v4;
}

- (void)quickControlItemUpdater:(id)updater didUpdateResultsForControlItems:(id)items
{
  itemsCopy = items;
  v10.receiver = self;
  v10.super_class = HUQuickControlSingleControlViewController;
  [(HUQuickControlViewController *)&v10 quickControlItemUpdater:updater didUpdateResultsForControlItems:itemsCopy];
  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  v8 = [itemsCopy containsObject:controlItem];

  if ((v8 & 1) == 0)
  {
    controlItem2 = [(HUQuickControlSingleControlViewController *)self controlItem];
    NSLog(&cfstr_UnexpectedUpda.isa, itemsCopy, controlItem2);
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
  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  latestResults = [controlItem latestResults];
  v12 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D140E8]];

  if (v12)
  {
    v5 = [v12 category] == 1;
  }

  else
  {
    v5 = 2;
  }

  interactionCoordinator = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  controlView = [interactionCoordinator controlView];
  if ([controlView conformsToProtocol:&unk_2824F3238])
  {
    interactionCoordinator2 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
    controlView2 = [interactionCoordinator2 controlView];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      goto LABEL_9;
    }

    interactionCoordinator3 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
    interactionCoordinator = [interactionCoordinator3 controlView];

    [interactionCoordinator setReachabilityState:v5];
  }

  else
  {
  }

LABEL_9:
}

- (void)interactionCoordinator:(id)coordinator viewValueDidChange:(id)change
{
  coordinatorCopy = coordinator;
  changeCopy = change;
  if (([coordinatorCopy isUserInteractionActive] & 1) == 0)
  {
    NSLog(&cfstr_ReceivedAValue.isa, coordinatorCopy);
  }

  controlToViewValueTransformer = [(HUQuickControlSingleControlViewController *)self controlToViewValueTransformer];
  v8 = [controlToViewValueTransformer valueForTransformedValue:changeCopy];

  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  v10 = [controlItem normalizedValueForValue:v8];

  controlItem2 = [(HUQuickControlSingleControlViewController *)self controlItem];
  latestResults = [controlItem2 latestResults];
  v13 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13818]];
  v14 = [v13 isEqual:v10];

  if ((v14 & 1) == 0)
  {
    controlItem3 = [(HUQuickControlSingleControlViewController *)self controlItem];
    latestResults2 = [controlItem3 latestResults];
    v17 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13800]];
    v18 = [v17 isEqual:MEMORY[0x277CBEC38]];

    [(HUQuickControlSingleControlViewController *)self _setModelValue:v10 writeValue:v18 ^ 1u];
  }

  characteristicWritingDelegate = [(HUQuickControlViewController *)self characteristicWritingDelegate];
  [characteristicWritingDelegate quickControlContentDidUpdateCharacteristicValueOverrides:self];
}

- (void)interactionCoordinator:(id)coordinator interactionStateDidChange:(BOOL)change
{
  if (!change)
  {
    valueWriteThrottler = [(HUQuickControlSingleControlViewController *)self valueWriteThrottler];
    [valueWriteThrottler flushValueChanges];
  }

  [(HUQuickControlSingleControlViewController *)self _updateWriteState];
}

- (BOOL)hasModelValueChangedForInteractionCoordinator:(id)coordinator
{
  if ([(HUQuickControlSingleControlViewController *)self hasWrittenAnyNewValues])
  {
    return 1;
  }

  valueWriteThrottler = [(HUQuickControlSingleControlViewController *)self valueWriteThrottler];
  hasPendingValueChange = [valueWriteThrottler hasPendingValueChange];

  return hasPendingValueChange;
}

- (void)interactionCoordinatorWantsDismissal:(id)dismissal
{
  quickControlHost = [(HUQuickControlViewController *)self quickControlHost];
  [quickControlHost quickControlContent:self requestDismissalOfType:1];
}

- (void)interactionCoordinator:(id)coordinator showAuxiliaryView:(id)view
{
  viewCopy = view;
  quickControlHost = [(HUQuickControlViewController *)self quickControlHost];
  [quickControlHost quickControlContent:self showAuxiliaryView:viewCopy];
}

- (void)hideAuxiliaryViewForInteractionCoordinator:(id)coordinator
{
  quickControlHost = [(HUQuickControlViewController *)self quickControlHost];
  [quickControlHost hideAuxiliaryViewForQuickControlContent:self];
}

- (id)viewForTouchContinuation
{
  interactionCoordinator = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  [interactionCoordinator recordInteractionStart];

  interactionCoordinator2 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  controlView = [interactionCoordinator2 controlView];

  return controlView;
}

@end