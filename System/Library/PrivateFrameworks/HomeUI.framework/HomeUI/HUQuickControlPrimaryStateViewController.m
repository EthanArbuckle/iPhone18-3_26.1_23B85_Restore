@interface HUQuickControlPrimaryStateViewController
+ (id)controlItemPredicate;
- (BOOL)_isCharacteristicTypeRotationDirection;
- (id)controlToViewValueTransformer;
- (id)createInteractionCoordinator;
- (id)createViewProfile;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HUQuickControlPrimaryStateViewController

+ (id)controlItemPredicate
{
  v2 = [[HUQuickControlSingleItemPredicate alloc] initWithBlock:&__block_literal_global_83];

  return v2;
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = HUQuickControlPrimaryStateViewController;
  [(HUQuickControlSingleControlViewController *)&v10 viewWillAppear:a3];
  if (![(HUQuickControlSingleControlViewController *)self hasSetControlSize])
  {
    v4 = [(HUQuickControlSingleControlViewController *)self viewProfile];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v6 = [(HUQuickControlPrimaryStateViewController *)self view];
      [v6 frame];
      v9 = HUViewSizeSubclassForViewSize(v7, v8);

      [(HUQuickControlSingleControlViewController *)self setControlSize:[HUQuickControlUtilities sliderQuickControlSizeForViewSizeSubclass:v9]];
    }
  }
}

- (id)createInteractionCoordinator
{
  v3 = [(HUQuickControlSingleControlViewController *)self viewProfile];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = off_277DB1078;
  if (isKindOfClass)
  {
    v6 = off_277DB10E0;
  }

  else
  {
    v5 = off_277DB1158;
    v6 = off_277DB0FB8;
  }

  v7 = objc_alloc(*v5);
  v8 = [(HUQuickControlSingleControlViewController *)self viewProfile];
  v9 = [v7 initWithProfile:v8];

  v10 = [objc_alloc(*v6) initWithControlView:v9 delegate:self];

  return v10;
}

- (id)createViewProfile
{
  v3 = [(HUQuickControlSingleControlViewController *)self controlItem];
  v4 = [HUQuickControlUtilities shouldDisplayQuickControlAsPushButton:v3 preferredControl:[(HUQuickControlViewController *)self preferredControl]];

  if (v4)
  {
    v5 = objc_alloc_init(HUQuickControlPushButtonViewProfile);
    [(HUQuickControlPushButtonViewProfile *)v5 setToggleColorScheme:[(HUQuickControlPrimaryStateViewController *)self _isCharacteristicTypeRotationDirection]^ 1];
  }

  else
  {
    v5 = objc_alloc_init(HUQuickControlSwitchViewProfile);
  }

  return v5;
}

- (id)controlToViewValueTransformer
{
  v2 = MEMORY[0x277D14CF0];
  v3 = objc_opt_class();

  return [v2 transformerForValueClass:v3 transformBlock:&__block_literal_global_60_0 reverseTransformBlock:&__block_literal_global_66_0];
}

void *__73__HUQuickControlPrimaryStateViewController_controlToViewValueTransformer__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 integerValue] == 2)
  {
    return &unk_282491328;
  }

  else
  {
    return &unk_282491340;
  }
}

uint64_t __73__HUQuickControlPrimaryStateViewController_controlToViewValueTransformer__block_invoke_64(uint64_t a1, void *a2)
{
  [a2 doubleValue];
  v3 = MEMORY[0x277CCABB0];
  if (llround(v2) < 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return [v3 numberWithInteger:v4];
}

- (BOOL)_isCharacteristicTypeRotationDirection
{
  v2 = [(HUQuickControlSingleControlViewController *)self controlItem];
  v3 = [v2 characteristicOptions];
  v4 = [v3 characteristicTypesForUsage:0];
  v5 = [v4 allObjects];
  v6 = [v5 firstObject];

  LOBYTE(v2) = [v6 isEqualToString:*MEMORY[0x277CCFA18]];
  return v2;
}

@end