@interface HRAtrialFibrillationEducationSection
- (id)_accessibilitySuffixForEducationRow:(unint64_t)a3;
- (id)_cellTitleForEducationRow:(unint64_t)a3;
- (id)_viewControllerForEducationRow:(unint64_t)a3;
- (id)cellForIndex:(unint64_t)a3 tableView:(id)a4;
- (id)initForSinglePlayer:(BOOL)a3;
- (unint64_t)numberOfRowsInSection;
- (void)selectCellForIndex:(unint64_t)a3 navigationController:(id)a4 animated:(BOOL)a5;
@end

@implementation HRAtrialFibrillationEducationSection

- (id)initForSinglePlayer:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HRAtrialFibrillationEducationSection;
  result = [(HRAtrialFibrillationEducationSection *)&v5 init];
  if (result)
  {
    *(result + 8) = a3;
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

- (id)cellForIndex:(unint64_t)a3 tableView:(id)a4
{
  v6 = [a4 dequeueReusableCellWithIdentifier:@"UITableViewCell"];
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"UITableViewCell"];
    v7 = [v6 textLabel];
    [v7 setAdjustsFontForContentSizeCategory:1];

    v8 = [v6 textLabel];
    [v8 setNumberOfLines:0];

    [v6 setAccessoryType:1];
  }

  v9 = [(HRAtrialFibrillationEducationSection *)self _cellTitleForEducationRow:a3];
  v10 = [v6 textLabel];
  [v10 setText:v9];

  v11 = [(HRAtrialFibrillationEducationSection *)self _accessibilitySuffixForEducationRow:a3];
  v12 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:2 suffix:v11];
  [v6 setAccessibilityIdentifier:v12];

  return v6;
}

- (void)selectCellForIndex:(unint64_t)a3 navigationController:(id)a4 animated:(BOOL)a5
{
  v9 = a4;
  v7 = [(HRAtrialFibrillationEducationSection *)self _viewControllerForEducationRow:a3];
  if (v7)
  {
    v8 = [v9 topViewController];
    [v8 showAdaptively:v7 sender:0 animated:1];
  }
}

- (id)_cellTitleForEducationRow:(unint64_t)a3
{
  if (a3 <= 3)
  {
    v4 = off_2796FBA10[a3];
    v5 = HRHeartRhythmUIFrameworkBundle();
    v3 = [v5 localizedStringForKey:v4 value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  }

  return v3;
}

- (id)_accessibilitySuffixForEducationRow:(unint64_t)a3
{
  if (a3 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_2796FBA30[a3];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"Education.%@", v3];
}

- (id)_viewControllerForEducationRow:(unint64_t)a3
{
  v3 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = HROnboardingAtrialFibrillationLimitationViewController;
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_11;
      }

      v4 = HROnboardingAtrialFibrillationEnableViewController;
    }
  }

  else
  {
    if (!a3)
    {
      v3 = objc_alloc_init(HRAtrialFibrillationIntroViewController);
      goto LABEL_11;
    }

    if (a3 != 1)
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