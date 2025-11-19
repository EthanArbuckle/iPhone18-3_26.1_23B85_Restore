@interface ICMapViewController
- (ICMapViewController)initWithAnnotation:(id)a3;
- (void)_toolbarItemPressed:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)mapView:(id)a3 didAddAnnotationViews:(id)a4;
- (void)selectPin;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ICMapViewController

- (void)dealloc
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];

  [(MKMapView *)self->_mapView setDelegate:0];
  [(MKLocalSearch *)self->_localSearch cancel];

  v3.receiver = self;
  v3.super_class = ICMapViewController;
  [(ICMapViewController *)&v3 dealloc];
}

- (void)loadView
{
  mapView = self->_mapView;
  if (!mapView)
  {
    v4 = objc_alloc_init(MEMORY[0x277CD4EC8]);
    self->_mapView = v4;
    [(MKMapView *)v4 setMapType:0];
    [(MKMapView *)self->_mapView setDelegate:self];
    mapView = self->_mapView;
  }

  [(ICMapViewController *)self setView:mapView];
  [(MKAnnotation *)[(ICMapViewController *)self annotation] coordinate];
  v6 = v5;
  v8 = v7;
  v9 = objc_alloc_init(MEMORY[0x277CD4F08]);
  [v9 setCoordinate:{v6, v8}];
  [v9 setRepresentation:2];
  [v9 setTitle:{-[MKAnnotation title](-[ICMapViewController annotation](self, "annotation"), "title")}];
  [(MKMapView *)self->_mapView addAnnotation:v9];
  MEMORY[0x21606A490]([(MKMapView *)self->_mapView setCenterCoordinate:v6, v8], v6, v8, 600.0, 600.0);
  [(MKMapView *)self->_mapView setRegion:?];
  if ([MEMORY[0x277D75418] ic_isVision])
  {
    [(MKMapView *)self->_mapView setOverrideUserInterfaceStyle:1];
  }

  v10 = [(ICMapViewController *)self navigationController];

  [v10 setToolbarHidden:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = ICMapViewController;
  [(ICMapViewController *)&v7 viewWillAppear:a3];
  if (objc_opt_class())
  {
    if (objc_opt_class())
    {
      v4 = objc_alloc(MEMORY[0x277CD4F00]);
      [(MKAnnotation *)[(ICMapViewController *)self annotation] coordinate];
      v5 = [v4 initWithCoordinate:?];
      v6 = [objc_alloc(MEMORY[0x277CD4E80]) initWithPlacemark:v5];
      [v6 setName:{-[MKAnnotation title](-[ICMapViewController annotation](self, "annotation"), "title")}];
      [(ICMapViewController *)self setMapItem:v6];
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_selectPin object:0];
  v5.receiver = self;
  v5.super_class = ICMapViewController;
  [(ICMapViewController *)&v5 viewWillDisappear:v3];
  [(ICMapViewController *)self setToolbarItems:0];
  [-[ICMapViewController navigationController](self "navigationController")];
}

- (ICMapViewController)initWithAnnotation:(id)a3
{
  v7.receiver = self;
  v7.super_class = ICMapViewController;
  v4 = [(ICMapViewController *)&v7 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    [(ICMapViewController *)v4 setAnnotation:a3];
  }

  return v5;
}

- (void)mapView:(id)a3 didAddAnnotationViews:(id)a4
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_selectPin object:0];

  [(ICMapViewController *)self performSelector:sel_selectPin withObject:0 afterDelay:0.7];
}

- (void)_toolbarItemPressed:(id)a3
{
  if ([(ICMapViewController *)self mapItem])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (*MEMORY[0x277CD4B68])
    {
      v4 = *MEMORY[0x277CD4B60] == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      [v5 setObject:? forKey:?];
    }

    [(MKMapItem *)[(ICMapViewController *)self mapItem] openInMapsWithLaunchOptions:v5];
  }
}

- (void)selectPin
{
  v3 = [(ICMapViewController *)self mapView];
  v4 = [(ICMapViewController *)self annotation];

  [(MKMapView *)v3 selectAnnotation:v4 animated:1];
}

@end