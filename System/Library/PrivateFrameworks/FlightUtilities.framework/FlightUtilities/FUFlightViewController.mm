@interface FUFlightViewController
- (CGSize)preferredContentSize;
- (FUFlightViewController)initWithFlightCode:(unint64_t)code airlineCode:(id)airlineCode;
- (FUFlightViewController)initWithFlights:(id)flights;
- (FUFlightViewController)initWithNibName:(id)name bundle:(id)bundle;
- (FUFlightViewController)initWithSFFlight:(id)flight leg:(int64_t)leg style:(unint64_t)style delegate:(id)delegate;
- (FUFlightViewController)initWithSFFlights:(id)flights;
- (int64_t)selectedFlight;
- (int64_t)selectedLeg;
- (void)addFittingView:(id)view;
- (void)awakeFromNib;
- (void)commonInit;
- (void)fadeLayer:(id)layer visible:(BOOL)visible completionBlock:(id)block;
- (void)flightView:(id)view didSelectLeg:(int64_t)leg ofFlight:(int64_t)flight;
- (void)hideView:(id)view;
- (void)loadFlightWithFlightCode:(id)code airlineCode:(id)airlineCode date:(id)date;
- (void)setDisplayStyle:(unint64_t)style;
- (void)setFlights:(id)flights selectedFlight:(int64_t)flight selectedLeg:(int64_t)leg;
- (void)setNoBackground;
- (void)setSelectedFlight:(int64_t)flight;
- (void)setSelectedLeg:(int64_t)leg;
- (void)showErrorView;
- (void)showFlightView;
- (void)showLoadingView;
- (void)showView:(id)view;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation FUFlightViewController

- (FUFlightViewController)initWithNibName:(id)name bundle:(id)bundle
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

- (FUFlightViewController)initWithFlights:(id)flights
{
  flightsCopy = flights;
  v5 = [(FUFlightViewController *)self init];
  v6 = v5;
  if (v5)
  {
    v5->_displayStyle = 2;
    if (flightsCopy)
    {
      [(FUFlightViewController *)v5 setFlights:flightsCopy];
    }

    [(FUFlightViewController *)v6 commonInit];
  }

  return v6;
}

- (FUFlightViewController)initWithSFFlights:(id)flights
{
  flightsCopy = flights;
  v5 = [(FUFlightViewController *)self init];
  v6 = v5;
  if (v5)
  {
    v5->_displayStyle = 2;
    if (flightsCopy)
    {
      v7 = [MEMORY[0x277D0A9D8] convertFlightModel:flightsCopy withError:0];
      [(FUFlightViewController *)v6 setFlights:v7];
    }

    [(FUFlightViewController *)v6 commonInit];
  }

  return v6;
}

- (FUFlightViewController)initWithSFFlight:(id)flight leg:(int64_t)leg style:(unint64_t)style delegate:(id)delegate
{
  v19[1] = *MEMORY[0x277D85DE8];
  flightCopy = flight;
  delegateCopy = delegate;
  v12 = [(FUFlightViewController *)self init];
  v13 = v12;
  if (v12)
  {
    v12->_displayStyle = style;
    objc_storeWeak(&v12->_delegate, delegateCopy);
    if (flightCopy)
    {
      v14 = MEMORY[0x277D0A9D8];
      v19[0] = flightCopy;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
      v16 = [v14 convertFlightModel:v15 withError:0];
      [(FUFlightViewController *)v13 setFlights:v16 selectedFlight:0 selectedLeg:leg];
    }

    [(FUFlightViewController *)v13 commonInit];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

- (FUFlightViewController)initWithFlightCode:(unint64_t)code airlineCode:(id)airlineCode
{
  airlineCodeCopy = airlineCode;
  v7 = [(FUFlightViewController *)self init];
  v8 = v7;
  if (v7)
  {
    v7->_displayStyle = 2;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:code];
    [(FUFlightViewController *)v8 setFlightCode:v9];

    [(FUFlightViewController *)v8 setAirlineCode:airlineCodeCopy];
    v10 = MEMORY[0x277CCACA8];
    v11 = [airlineCodeCopy FU_uppercaseStringUsingCurrentLocale:0];
    code = [v10 stringWithFormat:@"%@%ld", v11, code];
    [(FUFlightViewController *)v8 setTitle:code];

    [(FUFlightViewController *)v8 commonInit];
    flightCode = [(FUFlightViewController *)v8 flightCode];
    if (flightCode)
    {
      v14 = flightCode;
      airlineCode = [(FUFlightViewController *)v8 airlineCode];

      if (airlineCode)
      {
        v8->_requiresDataLoad = 1;
      }
    }

    if (v8->_viewLoaded && v8->_requiresDataLoad)
    {
      v8->_requiresDataLoad = 0;
      flightCode2 = [(FUFlightViewController *)v8 flightCode];
      airlineCode2 = [(FUFlightViewController *)v8 airlineCode];
      date = [MEMORY[0x277CBEAA8] date];
      [(FUFlightViewController *)v8 loadFlightWithFlightCode:flightCode2 airlineCode:airlineCode2 date:date];
    }
  }

  return v8;
}

- (void)commonInit
{
  [(FUFlightViewController *)self setHighlightCurrentFlightLeg:1];
  [(FUFlightViewController *)self setShowInfoPanel:1];
  displayStyle = self->_displayStyle;
  flightView = [(FUFlightViewController *)self flightView];
  [flightView setDisplayStyle:displayStyle];
}

- (void)awakeFromNib
{
  v5.receiver = self;
  v5.super_class = FUFlightViewController;
  [(FUFlightViewController *)&v5 awakeFromNib];
  displayStyle = self->_displayStyle;
  flightView = [(FUFlightViewController *)self flightView];
  [flightView setDisplayStyle:displayStyle];
}

- (void)loadFlightWithFlightCode:(id)code airlineCode:(id)airlineCode date:(id)date
{
  codeCopy = code;
  airlineCodeCopy = airlineCode;
  dateCopy = date;
  [(FUFlightViewController *)self setAirlineCode:airlineCodeCopy];
  [(FUFlightViewController *)self setFlightCode:codeCopy];
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
  flightCode = [(FUFlightViewController *)self flightCode];
  unsignedIntegerValue = [flightCode unsignedIntegerValue];
  airlineCode = [(FUFlightViewController *)self airlineCode];
  date = dateCopy;
  if (!dateCopy)
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__FUFlightViewController_loadFlightWithFlightCode_airlineCode_date___block_invoke_2;
  v17[3] = &unk_2790114E8;
  objc_copyWeak(&v18, &location);
  [v12 loadFlightsWithNumber:unsignedIntegerValue airlineCode:airlineCode date:date dateType:1 completionHandler:v17];
  if (!dateCopy)
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

- (void)setDisplayStyle:(unint64_t)style
{
  if (self->_displayStyle != style)
  {
    self->_displayStyle = style;
    flightView = [(FUFlightViewController *)self flightView];
    [flightView setDisplayStyle:style];
  }
}

- (void)setNoBackground
{
  flightView = [(FUFlightViewController *)self flightView];
  [flightView removeMapBackground];

  view = [(FUFlightViewController *)self view];
  [view setBackgroundColor:0];
}

- (void)setFlights:(id)flights selectedFlight:(int64_t)flight selectedLeg:(int64_t)leg
{
  flightsCopy = flights;
  self->_loadingFlight = 0;
  objc_storeStrong(&self->_flights, flights);
  view = [(FUFlightViewController *)self view];
  if (flightsCopy && [flightsCopy count])
  {
    flightView = [(FUFlightViewController *)self flightView];
    [flightView setIgnoreMapUpdate:1];
    [flightView setDisplayStyle:self->_displayStyle];
    [(FUFlightViewController *)self showFlightView];
    if ([flightView setFlights:flightsCopy selectedFlight:flight selectedLeg:leg])
    {
      [flightView layoutSubviews];
    }

    [flightView setIgnoreMapUpdate:0];
    [flightView updateMapCamera];
  }

  else
  {
    [(FUFlightViewController *)self showErrorView];
  }
}

- (void)setSelectedLeg:(int64_t)leg
{
  flightView = [(FUFlightViewController *)self flightView];
  [flightView setSelectedLeg:leg];
}

- (void)setSelectedFlight:(int64_t)flight
{
  flightView = [(FUFlightViewController *)self flightView];
  [flightView setSelectedFlight:flight];
}

- (int64_t)selectedLeg
{
  flightView = [(FUFlightViewController *)self flightView];
  selectedLeg = [flightView selectedLeg];

  return selectedLeg;
}

- (int64_t)selectedFlight
{
  flightView = [(FUFlightViewController *)self flightView];
  selectedFlight = [flightView selectedFlight];

  return selectedFlight;
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = FUFlightViewController;
  [(FUFlightViewController *)&v18 viewDidLoad];
  flightView = [(FUFlightViewController *)self flightView];
  displayStyle = [flightView displayStyle];

  if (!displayStyle)
  {
    flightView2 = [(FUFlightViewController *)self flightView];
    [flightView2 setDisplayStyle:2];
  }

  highlightCurrentFlightLeg = [(FUFlightViewController *)self highlightCurrentFlightLeg];
  flightView3 = [(FUFlightViewController *)self flightView];
  [flightView3 setHighlightCurrentFlightLeg:highlightCurrentFlightLeg];

  showInfoPanel = [(FUFlightViewController *)self showInfoPanel];
  flightView4 = [(FUFlightViewController *)self flightView];
  [flightView4 setShowInfoPanel:showInfoPanel];

  if (self->_requiresDataLoad)
  {
    self->_requiresDataLoad = 0;
    flightCode = [(FUFlightViewController *)self flightCode];
    airlineCode = [(FUFlightViewController *)self airlineCode];
    date = [MEMORY[0x277CBEAA8] date];
    [(FUFlightViewController *)self loadFlightWithFlightCode:flightCode airlineCode:airlineCode date:date];
  }

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v13 = objc_alloc_init(MEMORY[0x277D75788]);
    v14 = [MEMORY[0x277D75210] effectWithStyle:1100];
    [v13 setBackgroundEffect:v14];

    navigationItem = [(FUFlightViewController *)self navigationItem];
    [navigationItem setScrollEdgeAppearance:v13];
  }

  flightView5 = [(FUFlightViewController *)self flightView];
  [(FUFlightViewController *)self showView:flightView5];

  flightView6 = [(FUFlightViewController *)self flightView];
  [flightView6 setDelegate:self];

  self->_viewLoaded = 1;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__FUFlightViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v4[3] = &unk_279011530;
  v4[4] = self;
  [coordinator animateAlongsideTransition:&__block_literal_global completion:v4];
}

void __77__FUFlightViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) flightView];
  [v1 updateMapCamera];
}

- (void)showLoadingView
{
  flightView = [(FUFlightViewController *)self flightView];
  [flightView showLoading];
}

- (void)showErrorView
{
  flightView = [(FUFlightViewController *)self flightView];
  [flightView showError];
}

- (void)showFlightView
{
  flightView = [(FUFlightViewController *)self flightView];
  [flightView showInfo];
}

- (void)showView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    v7 = viewCopy;
    superview = [viewCopy superview];

    viewCopy = v7;
    if (!superview)
    {
      [(FUFlightViewController *)self addFittingView:v7];
      layer = [v7 layer];
      [(FUFlightViewController *)self fadeLayer:layer visible:1 completionBlock:0];

      viewCopy = v7;
    }
  }
}

- (void)hideView:(id)view
{
  viewCopy = view;
  superview = [viewCopy superview];

  if (superview)
  {
    layer = [viewCopy layer];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __35__FUFlightViewController_hideView___block_invoke;
    v7[3] = &unk_279011498;
    v8 = viewCopy;
    [(FUFlightViewController *)self fadeLayer:layer visible:0 completionBlock:v7];
  }
}

- (void)addFittingView:(id)view
{
  v18[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  view = [(FUFlightViewController *)self view];
  [view addSubview:viewCopy];

  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(FUFlightViewController *)self view];
  v7 = MEMORY[0x277CCAAD0];
  v17 = @"view";
  v18[0] = viewCopy;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v9 = [v7 constraintsWithVisualFormat:@"H:|[view]|" options:0 metrics:0 views:v8];
  [view2 addConstraints:v9];

  view3 = [(FUFlightViewController *)self view];
  v11 = MEMORY[0x277CCAAD0];
  v15 = @"view";
  v16 = viewCopy;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v13 = [v11 constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:0 views:v12];

  [view3 addConstraints:v13];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)fadeLayer:(id)layer visible:(BOOL)visible completionBlock:(id)block
{
  visibleCopy = visible;
  layerCopy = layer;
  blockCopy = block;
  view = [(FUFlightViewController *)self view];
  window = [view window];

  if (window)
  {
    if (visibleCopy)
    {
      *&v12 = 0.0;
    }

    else
    {
      *&v12 = 1.0;
    }

    if (visibleCopy)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.0;
    }

    if (visibleCopy)
    {
      v14 = &unk_285EAB5E0;
    }

    else
    {
      v14 = &unk_285EAB5F0;
    }

    if (visibleCopy)
    {
      v15 = &unk_285EAB5F0;
    }

    else
    {
      v15 = &unk_285EAB5E0;
    }

    [layerCopy setOpacity:v12];
    [MEMORY[0x277CD9FF0] begin];
    v16 = MEMORY[0x277CD9FF0];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __60__FUFlightViewController_fadeLayer_visible_completionBlock___block_invoke;
    v20[3] = &unk_279011558;
    v21 = blockCopy;
    [v16 setCompletionBlock:v20];
    *&v17 = v13;
    [layerCopy setOpacity:v17];
    v18 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    [v18 setDuration:0.3];
    [v18 setFromValue:v14];
    [v18 setToValue:v15];
    [layerCopy addAnimation:v18 forKey:@"fade"];

    [MEMORY[0x277CD9FF0] commit];
  }

  else
  {
    v19 = 0.0;
    if (visibleCopy)
    {
      *&v19 = 1.0;
    }

    [layerCopy setOpacity:v19];
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom > 6 || ((1 << userInterfaceIdiom) & 0x62) == 0)
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

- (void)flightView:(id)view didSelectLeg:(int64_t)leg ofFlight:(int64_t)flight
{
  viewCopy = view;
  if (_UISolariumEnabled())
  {
    [(FUFlightViewController *)self setTitle:0];
    goto LABEL_14;
  }

  flights = [viewCopy flights];
  v9 = [flights count];

  flights2 = [viewCopy flights];
  firstObject = [flights2 firstObject];
  legs = [firstObject legs];
  v13 = [legs count];

  if (v9 < 2)
  {
    if (v13 < 2)
    {
      flights3 = [viewCopy flights];
      firstObject2 = [flights3 firstObject];
      flightCode = [firstObject2 flightCode];
      [(FUFlightViewController *)self setTitle:flightCode];

      goto LABEL_13;
    }

    v18 = MEMORY[0x277CCACA8];
    flights3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [flights3 localizedStringForKey:@"Leg %lu of %@" value:@"Leg %lu of %@" table:@"Localizable"];
    flights4 = [viewCopy flights];
    firstObject3 = [flights4 firstObject];
    flightCode2 = [firstObject3 flightCode];
    [v18 stringWithFormat:v20, leg + 1, flightCode2];
  }

  else
  {
    if (v13 >= 2)
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"Leg %lu of flight %lu" value:@"Leg %lu of flight %lu" table:@"Localizable"];
      v17 = [v14 stringWithFormat:v16, leg + 1, flight + 1];
      [(FUFlightViewController *)self setTitle:v17];

      goto LABEL_14;
    }

    flights5 = [viewCopy flights];
    firstObject4 = [flights5 firstObject];
    flightCode3 = [firstObject4 flightCode];

    v27 = MEMORY[0x277CCACA8];
    v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    flights3 = v28;
    if (!flightCode3)
    {
      v20 = [v28 localizedStringForKey:@"Flight %lu" value:@"Flight %lu" table:@"Localizable"];
      v33 = [v27 stringWithFormat:v20, flight + 1];
      [(FUFlightViewController *)self setTitle:v33];

      goto LABEL_11;
    }

    v20 = [v28 localizedStringForKey:@"Flight %@" value:@"Flight %@" table:@"Localizable"];
    flights4 = [viewCopy flights];
    firstObject3 = [flights4 firstObject];
    flightCode2 = [firstObject3 flightCode];
    [v27 stringWithFormat:v20, flightCode2, v34];
  }
  v29 = ;
  [(FUFlightViewController *)self setTitle:v29];

LABEL_11:
LABEL_13:

LABEL_14:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained flightController:self didSelectLeg:leg ofFlight:flight];
}

@end