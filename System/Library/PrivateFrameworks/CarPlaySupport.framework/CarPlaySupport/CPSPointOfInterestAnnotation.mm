@interface CPSPointOfInterestAnnotation
- (CLLocationCoordinate2D)coordinate;
- (CPSPointOfInterestAnnotation)initWithPointOfInterest:(id)interest;
- (NSString)description;
- (NSString)title;
@end

@implementation CPSPointOfInterestAnnotation

- (CPSPointOfInterestAnnotation)initWithPointOfInterest:(id)interest
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, interest);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = CPSPointOfInterestAnnotation;
  selfCopy = [(CPSPointOfInterestAnnotation *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_pointOfInterest, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (CLLocationCoordinate2D)coordinate
{
  pointOfInterest = [(CPSPointOfInterestAnnotation *)self pointOfInterest];
  location = [(CPPointOfInterest *)pointOfInterest location];
  placemark = [(MKMapItem *)location placemark];
  [(MKPlacemark *)placemark coordinate];
  v9 = v2;
  v10 = v3;
  MEMORY[0x277D82BD8](placemark);
  MEMORY[0x277D82BD8](location);
  MEMORY[0x277D82BD8](pointOfInterest);
  v4 = v9;
  v5 = v10;
  result.longitude = v5;
  result.latitude = v4;
  return result;
}

- (NSString)title
{
  pointOfInterest = [(CPSPointOfInterestAnnotation *)self pointOfInterest];
  title = [(CPPointOfInterest *)pointOfInterest title];
  MEMORY[0x277D82BD8](pointOfInterest);

  return title;
}

- (NSString)description
{
  selfCopy = self;
  v15 = a2;
  v7 = 0x277CCA000uLL;
  v9 = MEMORY[0x277CCACA8];
  v2 = objc_opt_class();
  v11 = NSStringFromClass(v2);
  v8 = selfCopy;
  [(CPSPointOfInterestAnnotation *)selfCopy coordinate];
  v13 = v3;
  v14 = v4;
  v17 = v3;
  v18 = v4;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%+.8f, %+.8f", v3, v4];
  v12 = [v9 stringWithFormat:@"<%@: %p %@>", v11, v8, v10];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v5 = v12;

  return v5;
}

@end