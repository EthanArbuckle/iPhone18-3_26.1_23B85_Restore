@interface FMFMapOptionsViewController
- (CGSize)paneSize;
- (FMFMapOptionsViewController)init;
- (FMFMapOptionsViewControllerDelegate)delegate;
- (MKMapAttribution)mapAttribution;
- (void)_dismiss:(id)_dismiss;
- (void)attributionButtonPressed:(id)pressed;
- (void)awakeFromNib;
- (void)openInMaps:(id)maps;
- (void)segmentedControlChanged:(id)changed;
- (void)viewDidLoad;
@end

@implementation FMFMapOptionsViewController

- (FMFMapOptionsViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6.receiver = self;
  v6.super_class = FMFMapOptionsViewController;
  v4 = [(FMFMapOptionsViewController *)&v6 initWithNibName:@"FMFMapOptions" bundle:v3];

  return v4;
}

- (void)awakeFromNib
{
  v2.receiver = self;
  v2.super_class = FMFMapOptionsViewController;
  [(FMFMapOptionsViewController *)&v2 awakeFromNib];
}

- (void)_dismiss:(id)_dismiss
{
  delegate = [(FMFMapOptionsViewController *)self delegate];
  [delegate _dismiss:self];
}

- (CGSize)paneSize
{
  view = [(FMFMapOptionsViewController *)self view];
  [view systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)viewDidLoad
{
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24A4E3000, v3, OS_LOG_TYPE_DEFAULT, "FMFMapOptionsViewController: viewDidLoad", buf, 2u);
  }

  v15.receiver = self;
  v15.super_class = FMFMapOptionsViewController;
  [(FMFMapOptionsViewController *)&v15 viewDidLoad];
  v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__dismiss_];
  topTapView = [(FMFMapOptionsViewController *)self topTapView];
  [topTapView addGestureRecognizer:v4];

  mapAttributionButton = [(FMFMapOptionsViewController *)self mapAttributionButton];
  mapAttribution = [(FMFMapOptionsViewController *)self mapAttribution];
  string = [mapAttribution string];
  [mapAttributionButton setAttributedTitle:string forState:0];

  delegate = [(FMFMapOptionsViewController *)self delegate];
  mapView = [delegate mapView];
  mapType = [mapView mapType];

  if (mapType == 4)
  {
    v12 = 1;
  }

  else
  {
    v12 = mapType;
  }

  if (mapType == 3)
  {
    v13 = 2;
  }

  else
  {
    v13 = v12;
  }

  segmentedControl = [(FMFMapOptionsViewController *)self segmentedControl];
  [segmentedControl setSelectedSegmentIndex:v13];
}

- (void)openInMaps:(id)maps
{
  mapsCopy = maps;
  delegate = [(FMFMapOptionsViewController *)self delegate];
  [delegate openInMapsButtonTapped:self];
  [(FMFMapOptionsViewController *)self _dismiss:mapsCopy];
}

- (MKMapAttribution)mapAttribution
{
  v14[2] = *MEMORY[0x277D85DE8];
  mapAttribution = self->_mapAttribution;
  if (!mapAttribution)
  {
    if (!mapAttribution_stringAttributes)
    {
      v13[0] = *MEMORY[0x277D740C0];
      labelColor = [MEMORY[0x277D75348] labelColor];
      v14[0] = labelColor;
      v13[1] = *MEMORY[0x277D740A8];
      v5 = [MEMORY[0x277D74300] boldSystemFontOfSize:12.0];
      v14[1] = v5;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
      v7 = mapAttribution_stringAttributes;
      mapAttribution_stringAttributes = v6;
    }

    delegate = [(FMFMapOptionsViewController *)self delegate];
    mapView = [delegate mapView];
    v10 = [mapView mapAttributionWithStringAttributes:mapAttribution_stringAttributes underlineText:1];
    [(FMFMapOptionsViewController *)self setMapAttribution:v10];

    mapAttribution = self->_mapAttribution;
  }

  v11 = *MEMORY[0x277D85DE8];

  return mapAttribution;
}

- (void)attributionButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  mapAttribution = [(FMFMapOptionsViewController *)self mapAttribution];
  v5 = [mapAttribution url];

  if (v5)
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v7 = [mapAttribution url];
    [defaultWorkspace openURL:v7 withOptions:0];
  }

  [(FMFMapOptionsViewController *)self _dismiss:pressedCopy];
}

- (void)segmentedControlChanged:(id)changed
{
  v12 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  selectedSegmentIndex = [changedCopy selectedSegmentIndex];
  v6 = LogCategory_Daemon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = selectedSegmentIndex;
    _os_log_impl(&dword_24A4E3000, v6, OS_LOG_TYPE_DEFAULT, "FMFMapOptionsViewController: newMapType %lu", &v10, 0xCu);
  }

  if ([changedCopy selectedSegmentIndex] == 1)
  {
    selectedSegmentIndex = 4;
  }

  else if ([changedCopy selectedSegmentIndex] == 2)
  {
    selectedSegmentIndex = 3;
  }

  delegate = [(FMFMapOptionsViewController *)self delegate];
  mapView = [delegate mapView];
  [mapView setMapType:selectedSegmentIndex];

  [delegate mapTypeChanged:selectedSegmentIndex];
  [(FMFMapOptionsViewController *)self _dismiss:changedCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (FMFMapOptionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end