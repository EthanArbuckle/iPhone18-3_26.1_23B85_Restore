@interface FUFlightViewController
- (CGSize)preferredContentSize;
- (FUFlightViewController)initWithFlightCode:(unint64_t)a3 airlineCode:(id)a4;
- (FUFlightViewController)initWithFlights:(id)a3;
- (FUFlightViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (FUFlightViewController)initWithSFFlight:(id)a3 leg:(int64_t)a4 style:(unint64_t)a5 delegate:(id)a6;
- (FUFlightViewController)initWithSFFlights:(id)a3;
- (int64_t)selectedFlight;
- (int64_t)selectedLeg;
- (void)addFittingView:(id)a3;
- (void)awakeFromNib;
- (void)commonInit;
- (void)fadeLayer:(id)a3 visible:(BOOL)a4 completionBlock:(id)a5;
- (void)flightView:(id)a3 didSelectLeg:(int64_t)a4 ofFlight:(int64_t)a5;
- (void)hideView:(id)a3;
- (void)loadFlightWithFlightCode:(id)a3 airlineCode:(id)a4 date:(id)a5;
- (void)setDisplayStyle:(unint64_t)a3;
- (void)setFlights:(id)a3 selectedFlight:(int64_t)a4 selectedLeg:(int64_t)a5;
- (void)setNoBackground;
- (void)setSelectedFlight:(int64_t)a3;
- (void)setSelectedLeg:(int64_t)a3;
- (void)showErrorView;
- (void)showFlightView;
- (void)showLoadingView;
- (void)showView:(id)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation FUFlightViewController

- (FUFlightViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8.receiver = self;
  v8.super_class = FUFlightViewController;
  v6 = [(FUFlightViewController *)&v8 initWithNibName:@"FUFlightViewController" bundle:v5];

  if (v6)
  {
    v6->_displayStyle = 2;
    [(FUFlightViewController *)v6 commonInit];
  }

  return v6;
}

- (FUFlightViewController)initWithFlights:(id)a3
{
  v4 = a3;
  v5 = [(FUFlightViewController *)self init];
  v6 = v5;
  if (v5)
  {
    v5->_displayStyle = 2;
    if (v4)
    {
      [(FUFlightViewController *)v5 setFlights:v4];
    }

    [(FUFlightViewController *)v6 commonInit];
  }

  return v6;
}

- (FUFlightViewController)initWithSFFlights:(id)a3
{
  v4 = a3;
  v5 = [(FUFlightViewController *)self init];
  v6 = v5;
  if (v5)
  {
    v5->_displayStyle = 2;
    if (v4)
    {
      v7 = [MEMORY[0x277D0A9D8] convertFlightModel:v4 withError:0];
      [(FUFlightViewController *)v6 setFlights:v7];
    }

    [(FUFlightViewController *)v6 commonInit];
  }

  return v6;
}

- (FUFlightViewController)initWithSFFlight:(id)a3 leg:(int64_t)a4 style:(unint64_t)a5 delegate:(id)a6
{
  v19[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = [(FUFlightViewController *)self init];
  v13 = v12;
  if (v12)
  {
    v12->_displayStyle = a5;
    objc_storeWeak(&v12->_delegate, v11);
    if (v10)
    {
      v14 = MEMORY[0x277D0A9D8];
      v19[0] = v10;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
      v16 = [v14 convertFlightModel:v15 withError:0];
      [(FUFlightViewController *)v13 setFlights:v16 selectedFlight:0 selectedLeg:a4];
    }

    [(FUFlightViewController *)v13 commonInit];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

- (FUFlightViewController)initWithFlightCode:(unint64_t)a3 airlineCode:(id)a4
{
  v6 = a4;
  v7 = [(FUFlightViewController *)self init];
  v8 = v7;
  if (v7)
  {
    v7->_displayStyle = 2;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [(FUFlightViewController *)v8 setFlightCode:v9];

    [(FUFlightViewController *)v8 setAirlineCode:v6];
    v10 = MEMORY[0x277CCACA8];
    v11 = [v6 FU_uppercaseStringUsingCurrentLocale:0];
    v12 = [v10 stringWithFormat:@"%@%ld", v11, a3];
    [(FUFlightViewController *)v8 setTitle:v12];

    [(FUFlightViewController *)v8 commonInit];
    v13 = [(FUFlightViewController *)v8 flightCode];
    if (v13)
    {
      v14 = v13;
      v15 = [(FUFlightViewController *)v8 airlineCode];

      if (v15)
      {
        v8->_requiresDataLoad = 1;
      }
    }

    if (v8->_viewLoaded && v8->_requiresDataLoad)
    {
      v8->_requiresDataLoad = 0;
      v16 = [(FUFlightViewController *)v8 flightCode];
      v17 = [(FUFlightViewController *)v8 airlineCode];
      v18 = [MEMORY[0x277CBEAA8] date];
      [(FUFlightViewController *)v8 loadFlightWithFlightCode:v16 airlineCode:v17 date:v18];
    }
  }

  return v8;
}

- (void)commonInit
{
  [(FUFlightViewController *)self setHighlightCurrentFlightLeg:1];
  [(FUFlightViewController *)self setShowInfoPanel:1];
  displayStyle = self->_displayStyle;
  v4 = [(FUFlightViewController *)self flightView];
  [v4 setDisplayStyle:displayStyle];
}

- (void)awakeFromNib
{
  v5.receiver = self;
  v5.super_class = FUFlightViewController;
  [(FUFlightViewController *)&v5 awakeFromNib];
  displayStyle = self->_displayStyle;
  v4 = [(FUFlightViewController *)self flightView];
  [v4 setDisplayStyle:displayStyle];
}

- (void)loadFlightWithFlightCode:(id)a3 airlineCode:(id)a4 date:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(FUFlightViewController *)self setAirlineCode:v9];
  [(FUFlightViewController *)self setFlightCode:v8];
  self->_loadingFlight = 1;
  v11 = dispatch_time(0, 750000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__FUFlightViewController_loadFlightWithFlightCode_airlineCode_date___block_invoke;
  block[3] = &unk_279011498;
  block[4] = self;
  dispatch_after(v11, MEMORY[0x277D85CD0], block);
  objc_initWeak(&location, self);
  v12 = [MEMORY[0x277D0A9D0] flightFactoryClassWithProvider:*MEMORY[0x277D0A9B8]];
  v13 = [(FUFlightViewController *)self flightCode];
  v14 = [v13 unsignedIntegerValue];
  v15 = [(FUFlightViewController *)self airlineCode];
  v16 = v10;
  if (!v10)
  {
    v16 = [MEMORY[0x277CBEAA8] date];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__FUFlightViewController_loadFlightWithFlightCode_airlineCode_date___block_invoke_2;
  v17[3] = &unk_2790114E8;
  objc_copyWeak(&v18, &location);
  [v12 loadFlightsWithNumber:v14 airlineCode:v15 date:v16 dateType:1 completionHandler:v17];
  if (!v10)
  {
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

_BYTE *__68__FUFlightViewController_loadFlightWithFlightCode_airlineCode_date___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[992] == 1)
  {
    [result showLoadingView];
    v3 = [MEMORY[0x277CBEAA8] date];
    v4 = *(a1 + 32);
    v5 = *(v4 + 1000);
    *(v4 + 1000) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

void __68__FUFlightViewController_loadFlightWithFlightCode_airlineCode_date___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 992) = 0;
    v9 = *(WeakRetained + 125);
    v10 = 0.5;
    if (v9)
    {
      [v9 timeIntervalSinceNow];
      v10 = -v11;
    }

    v12 = dispatch_time(0, ((0.5 - v10) * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__FUFlightViewController_loadFlightWithFlightCode_airlineCode_date___block_invoke_3;
    block[3] = &unk_2790114C0;
    v14 = v6;
    v15 = v8;
    v16 = v5;
    dispatch_after(v12, MEMORY[0x277D85CD0], block);
  }
}

uint64_t __68__FUFlightViewController_loadFlightWithFlightCode_airlineCode_date___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return [*(a1 + 40) showErrorView];
  }

  else
  {
    return [*(a1 + 40) setFlights:*(a1 + 48)];
  }
}

- (void)setDisplayStyle:(unint64_t)a3
{
  if (self->_displayStyle != a3)
  {
    self->_displayStyle = a3;
    v5 = [(FUFlightViewController *)self flightView];
    [v5 setDisplayStyle:a3];
  }
}

- (void)setNoBackground
{
  v3 = [(FUFlightViewController *)self flightView];
  [v3 removeMapBackground];

  v4 = [(FUFlightViewController *)self view];
  [v4 setBackgroundColor:0];
}

- (void)setFlights:(id)a3 selectedFlight:(int64_t)a4 selectedLeg:(int64_t)a5
{
  v11 = a3;
  self->_loadingFlight = 0;
  objc_storeStrong(&self->_flights, a3);
  v9 = [(FUFlightViewController *)self view];
  if (v11 && [v11 count])
  {
    v10 = [(FUFlightViewController *)self flightView];
    [v10 setIgnoreMapUpdate:1];
    [v10 setDisplayStyle:self->_displayStyle];
    [(FUFlightViewController *)self showFlightView];
    if ([v10 setFlights:v11 selectedFlight:a4 selectedLeg:a5])
    {
      [v10 layoutSubviews];
    }

    [v10 setIgnoreMapUpdate:0];
    [v10 updateMapCamera];
  }

  else
  {
    [(FUFlightViewController *)self showErrorView];
  }
}

- (void)setSelectedLeg:(int64_t)a3
{
  v4 = [(FUFlightViewController *)self flightView];
  [v4 setSelectedLeg:a3];
}

- (void)setSelectedFlight:(int64_t)a3
{
  v4 = [(FUFlightViewController *)self flightView];
  [v4 setSelectedFlight:a3];
}

- (int64_t)selectedLeg
{
  v2 = [(FUFlightViewController *)self flightView];
  v3 = [v2 selectedLeg];

  return v3;
}

- (int64_t)selectedFlight
{
  v2 = [(FUFlightViewController *)self flightView];
  v3 = [v2 selectedFlight];

  return v3;
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = FUFlightViewController;
  [(FUFlightViewController *)&v18 viewDidLoad];
  v3 = [(FUFlightViewController *)self flightView];
  v4 = [v3 displayStyle];

  if (!v4)
  {
    v5 = [(FUFlightViewController *)self flightView];
    [v5 setDisplayStyle:2];
  }

  v6 = [(FUFlightViewController *)self highlightCurrentFlightLeg];
  v7 = [(FUFlightViewController *)self flightView];
  [v7 setHighlightCurrentFlightLeg:v6];

  v8 = [(FUFlightViewController *)self showInfoPanel];
  v9 = [(FUFlightViewController *)self flightView];
  [v9 setShowInfoPanel:v8];

  if (self->_requiresDataLoad)
  {
    self->_requiresDataLoad = 0;
    v10 = [(FUFlightViewController *)self flightCode];
    v11 = [(FUFlightViewController *)self airlineCode];
    v12 = [MEMORY[0x277CBEAA8] date];
    [(FUFlightViewController *)self loadFlightWithFlightCode:v10 airlineCode:v11 date:v12];
  }

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v13 = objc_alloc_init(MEMORY[0x277D75788]);
    v14 = [MEMORY[0x277D75210] effectWithStyle:1100];
    [v13 setBackgroundEffect:v14];

    v15 = [(FUFlightViewController *)self navigationItem];
    [v15 setScrollEdgeAppearance:v13];
  }

  v16 = [(FUFlightViewController *)self flightView];
  [(FUFlightViewController *)self showView:v16];

  v17 = [(FUFlightViewController *)self flightView];
  [v17 setDelegate:self];

  self->_viewLoaded = 1;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__FUFlightViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v4[3] = &unk_279011530;
  v4[4] = self;
  [a4 animateAlongsideTransition:&__block_literal_global completion:v4];
}

void __77__FUFlightViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) flightView];
  [v1 updateMapCamera];
}

- (void)showLoadingView
{
  v2 = [(FUFlightViewController *)self flightView];
  [v2 showLoading];
}

- (void)showErrorView
{
  v2 = [(FUFlightViewController *)self flightView];
  [v2 showError];
}

- (void)showFlightView
{
  v2 = [(FUFlightViewController *)self flightView];
  [v2 showInfo];
}

- (void)showView:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [v4 superview];

    v4 = v7;
    if (!v5)
    {
      [(FUFlightViewController *)self addFittingView:v7];
      v6 = [v7 layer];
      [(FUFlightViewController *)self fadeLayer:v6 visible:1 completionBlock:0];

      v4 = v7;
    }
  }
}

- (void)hideView:(id)a3
{
  v4 = a3;
  v5 = [v4 superview];

  if (v5)
  {
    v6 = [v4 layer];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __35__FUFlightViewController_hideView___block_invoke;
    v7[3] = &unk_279011498;
    v8 = v4;
    [(FUFlightViewController *)self fadeLayer:v6 visible:0 completionBlock:v7];
  }
}

- (void)addFittingView:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(FUFlightViewController *)self view];
  [v5 addSubview:v4];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(FUFlightViewController *)self view];
  v7 = MEMORY[0x277CCAAD0];
  v17 = @"view";
  v18[0] = v4;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v9 = [v7 constraintsWithVisualFormat:@"H:|[view]|" options:0 metrics:0 views:v8];
  [v6 addConstraints:v9];

  v10 = [(FUFlightViewController *)self view];
  v11 = MEMORY[0x277CCAAD0];
  v15 = @"view";
  v16 = v4;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v13 = [v11 constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:0 views:v12];

  [v10 addConstraints:v13];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)fadeLayer:(id)a3 visible:(BOOL)a4 completionBlock:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(FUFlightViewController *)self view];
  v11 = [v10 window];

  if (v11)
  {
    if (v6)
    {
      *&v12 = 0.0;
    }

    else
    {
      *&v12 = 1.0;
    }

    if (v6)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.0;
    }

    if (v6)
    {
      v14 = &unk_285EAB5E0;
    }

    else
    {
      v14 = &unk_285EAB5F0;
    }

    if (v6)
    {
      v15 = &unk_285EAB5F0;
    }

    else
    {
      v15 = &unk_285EAB5E0;
    }

    [v8 setOpacity:v12];
    [MEMORY[0x277CD9FF0] begin];
    v16 = MEMORY[0x277CD9FF0];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __60__FUFlightViewController_fadeLayer_visible_completionBlock___block_invoke;
    v20[3] = &unk_279011558;
    v21 = v9;
    [v16 setCompletionBlock:v20];
    *&v17 = v13;
    [v8 setOpacity:v17];
    v18 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    [v18 setDuration:0.3];
    [v18 setFromValue:v14];
    [v18 setToValue:v15];
    [v8 addAnimation:v18 forKey:@"fade"];

    [MEMORY[0x277CD9FF0] commit];
  }

  else
  {
    v19 = 0.0;
    if (v6)
    {
      *&v19 = 1.0;
    }

    [v8 setOpacity:v19];
    if (v9)
    {
      v9[2](v9);
    }
  }
}

uint64_t __60__FUFlightViewController_fadeLayer_visible_completionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (CGSize)preferredContentSize
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 > 6 || ((1 << v3) & 0x62) == 0)
  {
    v5 = 370.0;
    v6 = 696.0;
  }

  else
  {
    v5 = 550.0;
    v6 = 320.0;
  }

  result.height = v5;
  result.width = v6;
  return result;
}

- (void)flightView:(id)a3 didSelectLeg:(int64_t)a4 ofFlight:(int64_t)a5
{
  v35 = a3;
  if (_UISolariumEnabled())
  {
    [(FUFlightViewController *)self setTitle:0];
    goto LABEL_14;
  }

  v8 = [v35 flights];
  v9 = [v8 count];

  v10 = [v35 flights];
  v11 = [v10 firstObject];
  v12 = [v11 legs];
  v13 = [v12 count];

  if (v9 < 2)
  {
    if (v13 < 2)
    {
      v19 = [v35 flights];
      v30 = [v19 firstObject];
      v31 = [v30 flightCode];
      [(FUFlightViewController *)self setTitle:v31];

      goto LABEL_13;
    }

    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"Leg %lu of %@" value:@"Leg %lu of %@" table:@"Localizable"];
    v21 = [v35 flights];
    v22 = [v21 firstObject];
    v23 = [v22 flightCode];
    [v18 stringWithFormat:v20, a4 + 1, v23];
  }

  else
  {
    if (v13 >= 2)
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"Leg %lu of flight %lu" value:@"Leg %lu of flight %lu" table:@"Localizable"];
      v17 = [v14 stringWithFormat:v16, a4 + 1, a5 + 1];
      [(FUFlightViewController *)self setTitle:v17];

      goto LABEL_14;
    }

    v24 = [v35 flights];
    v25 = [v24 firstObject];
    v26 = [v25 flightCode];

    v27 = MEMORY[0x277CCACA8];
    v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = v28;
    if (!v26)
    {
      v20 = [v28 localizedStringForKey:@"Flight %lu" value:@"Flight %lu" table:@"Localizable"];
      v33 = [v27 stringWithFormat:v20, a5 + 1];
      [(FUFlightViewController *)self setTitle:v33];

      goto LABEL_11;
    }

    v20 = [v28 localizedStringForKey:@"Flight %@" value:@"Flight %@" table:@"Localizable"];
    v21 = [v35 flights];
    v22 = [v21 firstObject];
    v23 = [v22 flightCode];
    [v27 stringWithFormat:v20, v23, v34];
  }
  v29 = ;
  [(FUFlightViewController *)self setTitle:v29];

LABEL_11:
LABEL_13:

LABEL_14:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained flightController:self didSelectLeg:a4 ofFlight:a5];
}

@end