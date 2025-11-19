@interface CPSPointOfInterestAnnotation
- (CLLocationCoordinate2D)coordinate;
- (CPSPointOfInterestAnnotation)initWithPointOfInterest:(id)a3;
- (NSString)description;
- (NSString)title;
@end

@implementation CPSPointOfInterestAnnotation

- (CPSPointOfInterestAnnotation)initWithPointOfInterest:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = CPSPointOfInterestAnnotation;
  v8 = [(CPSPointOfInterestAnnotation *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(&v8->_pointOfInterest, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (CLLocationCoordinate2D)coordinate
{
  v8 = [(CPSPointOfInterestAnnotation *)self pointOfInterest];
  v7 = [(CPPointOfInterest *)v8 location];
  v6 = [(MKMapItem *)v7 placemark];
  [(MKPlacemark *)v6 coordinate];
  v9 = v2;
  v10 = v3;
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v4 = v9;
  v5 = v10;
  result.longitude = v5;
  result.latitude = v4;
  return result;
}

- (NSString)title
{
  v3 = [(CPSPointOfInterestAnnotation *)self pointOfInterest];
  v4 = [(CPPointOfInterest *)v3 title];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (NSString)description
{
  v16 = self;
  v15 = a2;
  v7 = 0x277CCA000uLL;
  v9 = MEMORY[0x277CCACA8];
  v2 = objc_opt_class();
  v11 = NSStringFromClass(v2);
  v8 = v16;
  [(CPSPointOfInterestAnnotation *)v16 coordinate];
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