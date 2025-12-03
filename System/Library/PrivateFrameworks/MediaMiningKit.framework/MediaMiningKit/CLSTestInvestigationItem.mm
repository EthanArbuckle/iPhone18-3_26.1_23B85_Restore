@interface CLSTestInvestigationItem
+ (id)itemWithPeopleNames:(id)names universalDate:(id)date coordinate:(CLLocationCoordinate2D)coordinate;
+ (id)itemWithUniversalDate:(id)date sceneClassifications:(id)classifications;
- (CLLocationCoordinate2D)pl_coordinate;
- (CLSTestInvestigationItem)init;
- (NSArray)clsPersonAndPetLocalIdentifiers;
- (NSDate)cls_localDate;
- (NSDateComponents)cls_localDateComponents;
- (unint64_t)clsPeopleCount;
@end

@implementation CLSTestInvestigationItem

- (CLLocationCoordinate2D)pl_coordinate
{
  location = [(CLSTestInvestigationItem *)self location];

  if (location)
  {
    location2 = [(CLSTestInvestigationItem *)self location];
    [location2 coordinate];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = *MEMORY[0x277CE4278];
    v8 = *(MEMORY[0x277CE4278] + 8);
  }

  v9 = v6;
  v10 = v8;
  result.longitude = v10;
  result.latitude = v9;
  return result;
}

- (NSDateComponents)cls_localDateComponents
{
  cls_universalDate = [(CLSTestInvestigationItem *)self cls_universalDate];
  cls_localDate = [(CLSTestInvestigationItem *)self cls_localDate];
  v5 = [CLSCalendar dateComponentsWithUTCDate:cls_universalDate localDate:cls_localDate];

  return v5;
}

- (NSDate)cls_localDate
{
  cls_universalDate = [(CLSTestInvestigationItem *)self cls_universalDate];
  clsLocation = [(CLSTestInvestigationItem *)self clsLocation];
  v5 = [CLSCalendar localDateFromUniversalDate:cls_universalDate atLocation:clsLocation];

  return v5;
}

- (NSArray)clsPersonAndPetLocalIdentifiers
{
  clsPersonLocalIdentifiers = [(CLSTestInvestigationItem *)self clsPersonLocalIdentifiers];
  v4 = clsPersonLocalIdentifiers;
  v5 = MEMORY[0x277CBEBF8];
  if (clsPersonLocalIdentifiers)
  {
    v6 = clsPersonLocalIdentifiers;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = v6;

  clsPetLocalIdentifiers = [(CLSTestInvestigationItem *)self clsPetLocalIdentifiers];
  v9 = clsPetLocalIdentifiers;
  if (clsPetLocalIdentifiers)
  {
    v10 = clsPetLocalIdentifiers;
  }

  else
  {
    v10 = v5;
  }

  v11 = v10;

  v12 = [v7 arrayByAddingObjectsFromArray:v11];

  return v12;
}

- (unint64_t)clsPeopleCount
{
  clsPersonLocalIdentifiers = [(CLSTestInvestigationItem *)self clsPersonLocalIdentifiers];
  v3 = [clsPersonLocalIdentifiers count];

  return v3;
}

- (CLSTestInvestigationItem)init
{
  v7.receiver = self;
  v7.super_class = CLSTestInvestigationItem;
  v2 = [(CLSTestInvestigationItem *)&v7 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    clsIdentifier = v2->_clsIdentifier;
    v2->_clsIdentifier = uUIDString;

    v2->_clsAestheticScore = 0.5;
  }

  return v2;
}

+ (id)itemWithUniversalDate:(id)date sceneClassifications:(id)classifications
{
  classificationsCopy = classifications;
  dateCopy = date;
  v7 = objc_opt_new();
  [v7 setCls_universalDate:dateCopy];

  v8 = [MEMORY[0x277CBEB98] setWithArray:classificationsCopy];

  [v7 setClsSceneClassifications:v8];

  return v7;
}

+ (id)itemWithPeopleNames:(id)names universalDate:(id)date coordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  namesCopy = names;
  dateCopy = date;
  v10 = objc_opt_new();
  v14.latitude = latitude;
  v14.longitude = longitude;
  if (CLLocationCoordinate2DIsValid(v14))
  {
    v11 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:latitude longitude:longitude];
    [v10 setClsLocation:v11];
  }

  [v10 setClsPersonLocalIdentifiers:namesCopy];
  [v10 setCls_universalDate:dateCopy];

  return v10;
}

@end