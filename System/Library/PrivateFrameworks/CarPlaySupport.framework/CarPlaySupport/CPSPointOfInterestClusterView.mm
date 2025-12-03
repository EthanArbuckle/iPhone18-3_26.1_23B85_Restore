@interface CPSPointOfInterestClusterView
- (CPSPointOfInterestClusterView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (void)_configure;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setAnnotation:(id)annotation;
- (void)traitCollectionDidChange:(id)change;
- (void)update;
@end

@implementation CPSPointOfInterestClusterView

- (CPSPointOfInterestClusterView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, annotation);
  v10 = 0;
  objc_storeStrong(&v10, identifier);
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = CPSPointOfInterestClusterView;
  v8 = [(MKMarkerAnnotationView *)&v9 initWithAnnotation:location[0] reuseIdentifier:v10];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    [(CPSPointOfInterestClusterView *)selfCopy _configure];
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v3.receiver = selfCopy;
  v3.super_class = CPSPointOfInterestClusterView;
  [(CPSPointOfInterestClusterView *)&v3 traitCollectionDidChange:location[0]];
  [(CPSPointOfInterestClusterView *)selfCopy update];
  objc_storeStrong(location, 0);
}

- (void)setAnnotation:(id)annotation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, annotation);
  v3.receiver = selfCopy;
  v3.super_class = CPSPointOfInterestClusterView;
  [(MKMarkerAnnotationView *)&v3 setAnnotation:location[0]];
  [(CPSPointOfInterestClusterView *)selfCopy update];
  objc_storeStrong(location, 0);
}

- (void)prepareForDisplay
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSPointOfInterestClusterView;
  [(MKMarkerAnnotationView *)&v2 prepareForDisplay];
  [(CPSPointOfInterestClusterView *)selfCopy _configure];
}

- (void)prepareForReuse
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSPointOfInterestClusterView;
  [(MKMarkerAnnotationView *)&v2 prepareForReuse];
  [(CPSPointOfInterestClusterView *)selfCopy _configure];
}

- (void)update
{
  v2 = MEMORY[0x277CCACA8];
  annotation = [(MKAnnotationView *)self annotation];
  memberAnnotations = [(MKAnnotation *)annotation memberAnnotations];
  v3 = [v2 stringWithFormat:@"%ld", objc_msgSend(memberAnnotations, "count")];
  [(MKMarkerAnnotationView *)self setGlyphText:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](memberAnnotations);
  MEMORY[0x277D82BD8](annotation);
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