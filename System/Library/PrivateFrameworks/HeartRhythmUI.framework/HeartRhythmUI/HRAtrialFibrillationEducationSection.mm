@interface HRAtrialFibrillationEducationSection
- (id)_accessibilitySuffixForEducationRow:(unint64_t)row;
- (id)_cellTitleForEducationRow:(unint64_t)row;
- (id)_viewControllerForEducationRow:(unint64_t)row;
- (id)cellForIndex:(unint64_t)index tableView:(id)view;
- (id)initForSinglePlayer:(BOOL)player;
- (unint64_t)numberOfRowsInSection;
- (void)selectCellForIndex:(unint64_t)index navigationController:(id)controller animated:(BOOL)animated;
@end

@implementation HRAtrialFibrillationEducationSection

- (id)initForSinglePlayer:(BOOL)player
{
  v5.receiver = self;
  v5.super_class = HRAtrialFibrillationEducationSection;
  result = [(HRAtrialFibrillationEducationSection *)&v5 init];
  if (result)
  {
    *(result + 8) = player;
  }

  return result;
}

- (unint64_t)numberOfRowsInSection
{
  if (self->_forSinglePlayer)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

- (id)cellForIndex:(unint64_t)index tableView:(id)view
{
  v6 = [view dequeueReusableCellWithIdentifier:@"UITableViewCell"];
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"UITableViewCell"];
    textLabel = [v6 textLabel];
    [textLabel setAdjustsFontForContentSizeCategory:1];

    textLabel2 = [v6 textLabel];
    [textLabel2 setNumberOfLines:0];

    [v6 setAccessoryType:1];
  }

  v9 = [(HRAtrialFibrillationEducationSection *)self _cellTitleForEducationRow:index];
  textLabel3 = [v6 textLabel];
  [textLabel3 setText:v9];

  v11 = [(HRAtrialFibrillationEducationSection *)self _accessibilitySuffixForEducationRow:index];
  v12 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:2 suffix:v11];
  [v6 setAccessibilityIdentifier:v12];

  return v6;
}

- (void)selectCellForIndex:(unint64_t)index navigationController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  v7 = [(HRAtrialFibrillationEducationSection *)self _viewControllerForEducationRow:index];
  if (v7)
  {
    topViewController = [controllerCopy topViewController];
    [topViewController showAdaptively:v7 sender:0 animated:1];
  }
}

- (id)_cellTitleForEducationRow:(unint64_t)row
{
  if (row <= 3)
  {
    v4 = off_2796FBA10[row];
    v5 = HRHeartRhythmUIFrameworkBundle();
    v3 = [v5 localizedStringForKey:v4 value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  }

  return v3;
}

- (id)_accessibilitySuffixForEducationRow:(unint64_t)row
{
  if (row > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_2796FBA30[row];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"Education.%@", v3];
}

- (id)_viewControllerForEducationRow:(unint64_t)row
{
  v3 = 0;
  if (row > 1)
  {
    if (row == 2)
    {
      v4 = HROnboardingAtrialFibrillationLimitationViewController;
    }

    else
    {
      if (row != 3)
      {
        goto LABEL_11;
      }

      v4 = HROnboardingAtrialFibrillationEnableViewController;
    }
  }

  else
  {
    if (!row)
    {
      v3 = objc_alloc_init(HRAtrialFibrillationIntroViewController);
      goto LABEL_11;
    }

    if (row != 1)
    {
      goto LABEL_11;
    }

    v4 = HROnboardingAtrialFibrillationWhatIsViewController;
  }

  v3 = [[v4 alloc] initForOnboarding:0];
LABEL_11:

  return v3;
}

@end