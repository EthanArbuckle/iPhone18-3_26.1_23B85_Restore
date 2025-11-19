@interface CPSPointOfInterestClusterView
- (CPSPointOfInterestClusterView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
- (void)_configure;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setAnnotation:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)update;
@end

@implementation CPSPointOfInterestClusterView

- (CPSPointOfInterestClusterView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = v12;
  v12 = 0;
  v9.receiver = v4;
  v9.super_class = CPSPointOfInterestClusterView;
  v8 = [(MKMarkerAnnotationView *)&v9 initWithAnnotation:location[0] reuseIdentifier:v10];
  v12 = v8;
  objc_storeStrong(&v12, v8);
  if (v8)
  {
    [(CPSPointOfInterestClusterView *)v12 _configure];
  }

  v6 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = CPSPointOfInterestClusterView;
  [(CPSPointOfInterestClusterView *)&v3 traitCollectionDidChange:location[0]];
  [(CPSPointOfInterestClusterView *)v5 update];
  objc_storeStrong(location, 0);
}

- (void)setAnnotation:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = CPSPointOfInterestClusterView;
  [(MKMarkerAnnotationView *)&v3 setAnnotation:location[0]];
  [(CPSPointOfInterestClusterView *)v5 update];
  objc_storeStrong(location, 0);
}

- (void)prepareForDisplay
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSPointOfInterestClusterView;
  [(MKMarkerAnnotationView *)&v2 prepareForDisplay];
  [(CPSPointOfInterestClusterView *)v4 _configure];
}

- (void)prepareForReuse
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSPointOfInterestClusterView;
  [(MKMarkerAnnotationView *)&v2 prepareForReuse];
  [(CPSPointOfInterestClusterView *)v4 _configure];
}

- (void)update
{
  v2 = MEMORY[0x277CCACA8];
  v5 = [(MKAnnotationView *)self annotation];
  v4 = [(MKAnnotation *)v5 memberAnnotations];
  v3 = [v2 stringWithFormat:@"%ld", objc_msgSend(v4, "count")];
  [(MKMarkerAnnotationView *)self setGlyphText:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
}

- (void)_configure
{
  [(MKAnnotationView *)self setCollisionMode:?];
  [(MKAnnotationView *)self setCanShowCallout:0];
  LODWORD(v2) = 1148846080;
  [(MKAnnotationView *)self setDisplayPriority:v2];
  [(MKMarkerAnnotationView *)self setTitleVisibility:1];
  [(MKMarkerAnnotationView *)self setSubtitleVisibility:1];
}

@end