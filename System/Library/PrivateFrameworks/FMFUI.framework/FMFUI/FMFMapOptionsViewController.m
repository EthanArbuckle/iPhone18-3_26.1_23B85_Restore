@interface FMFMapOptionsViewController
- (CGSize)paneSize;
- (FMFMapOptionsViewController)init;
- (FMFMapOptionsViewControllerDelegate)delegate;
- (MKMapAttribution)mapAttribution;
- (void)_dismiss:(id)a3;
- (void)attributionButtonPressed:(id)a3;
- (void)awakeFromNib;
- (void)openInMaps:(id)a3;
- (void)segmentedControlChanged:(id)a3;
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

- (void)_dismiss:(id)a3
{
  v4 = [(FMFMapOptionsViewController *)self delegate];
  [v4 _dismiss:self];
}

- (CGSize)paneSize
{
  v2 = [(FMFMapOptionsViewController *)self view];
  [v2 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
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
  v5 = [(FMFMapOptionsViewController *)self topTapView];
  [v5 addGestureRecognizer:v4];

  v6 = [(FMFMapOptionsViewController *)self mapAttributionButton];
  v7 = [(FMFMapOptionsViewController *)self mapAttribution];
  v8 = [v7 string];
  [v6 setAttributedTitle:v8 forState:0];

  v9 = [(FMFMapOptionsViewController *)self delegate];
  v10 = [v9 mapView];
  v11 = [v10 mapType];

  if (v11 == 4)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v11 == 3)
  {
    v13 = 2;
  }

  else
  {
    v13 = v12;
  }

  v14 = [(FMFMapOptionsViewController *)self segmentedControl];
  [v14 setSelectedSegmentIndex:v13];
}

- (void)openInMaps:(id)a3
{
  v4 = a3;
  v5 = [(FMFMapOptionsViewController *)self delegate];
  [v5 openInMapsButtonTapped:self];
  [(FMFMapOptionsViewController *)self _dismiss:v4];
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
      v4 = [MEMORY[0x277D75348] labelColor];
      v14[0] = v4;
      v13[1] = *MEMORY[0x277D740A8];
      v5 = [MEMORY[0x277D74300] boldSystemFontOfSize:12.0];
      v14[1] = v5;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
      v7 = mapAttribution_stringAttributes;
      mapAttribution_stringAttributes = v6;
    }

    v8 = [(FMFMapOptionsViewController *)self delegate];
    v9 = [v8 mapView];
    v10 = [v9 mapAttributionWithStringAttributes:mapAttribution_stringAttributes underlineText:1];
    [(FMFMapOptionsViewController *)self setMapAttribution:v10];

    mapAttribution = self->_mapAttribution;
  }

  v11 = *MEMORY[0x277D85DE8];

  return mapAttribution;
}

- (void)attributionButtonPressed:(id)a3
{
  v8 = a3;
  v4 = [(FMFMapOptionsViewController *)self mapAttribution];
  v5 = [v4 url];

  if (v5)
  {
    v6 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v7 = [v4 url];
    [v6 openURL:v7 withOptions:0];
  }

  [(FMFMapOptionsViewController *)self _dismiss:v8];
}

- (void)segmentedControlChanged:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 selectedSegmentIndex];
  v6 = LogCategory_Daemon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = v5;
    _os_log_impl(&dword_24A4E3000, v6, OS_LOG_TYPE_DEFAULT, "FMFMapOptionsViewController: newMapType %lu", &v10, 0xCu);
  }

  if ([v4 selectedSegmentIndex] == 1)
  {
    v5 = 4;
  }

  else if ([v4 selectedSegmentIndex] == 2)
  {
    v5 = 3;
  }

  v7 = [(FMFMapOptionsViewController *)self delegate];
  v8 = [v7 mapView];
  [v8 setMapType:v5];

  [v7 mapTypeChanged:v5];
  [(FMFMapOptionsViewController *)self _dismiss:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (FMFMapOptionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end