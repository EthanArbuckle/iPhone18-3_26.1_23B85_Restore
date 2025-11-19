@interface CLSTestInvestigationItem
+ (id)itemWithPeopleNames:(id)a3 universalDate:(id)a4 coordinate:(CLLocationCoordinate2D)a5;
+ (id)itemWithUniversalDate:(id)a3 sceneClassifications:(id)a4;
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
  v3 = [(CLSTestInvestigationItem *)self location];

  if (v3)
  {
    v4 = [(CLSTestInvestigationItem *)self location];
    [v4 coordinate];
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
  v3 = [(CLSTestInvestigationItem *)self cls_universalDate];
  v4 = [(CLSTestInvestigationItem *)self cls_localDate];
  v5 = [CLSCalendar dateComponentsWithUTCDate:v3 localDate:v4];

  return v5;
}

- (NSDate)cls_localDate
{
  v3 = [(CLSTestInvestigationItem *)self cls_universalDate];
  v4 = [(CLSTestInvestigationItem *)self clsLocation];
  v5 = [CLSCalendar localDateFromUniversalDate:v3 atLocation:v4];

  return v5;
}

- (NSArray)clsPersonAndPetLocalIdentifiers
{
  v3 = [(CLSTestInvestigationItem *)self clsPersonLocalIdentifiers];
  v4 = v3;
  v5 = MEMORY[0x277CBEBF8];
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = v6;

  v8 = [(CLSTestInvestigationItem *)self clsPetLocalIdentifiers];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
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
  v2 = [(CLSTestInvestigationItem *)self clsPersonLocalIdentifiers];
  v3 = [v2 count];

  return v3;
}

- (CLSTestInvestigationItem)init
{
  v7.receiver = self;
  v7.super_class = CLSTestInvestigationItem;
  v2 = [(CLSTestInvestigationItem *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    v4 = [v3 UUIDString];
    clsIdentifier = v2->_clsIdentifier;
    v2->_clsIdentifier = v4;

    v2->_clsAestheticScore = 0.5;
  }

  return v2;
}

+ (id)itemWithUniversalDate:(id)a3 sceneClassifications:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setCls_universalDate:v6];

  v8 = [MEMORY[0x277CBEB98] setWithArray:v5];

  [v7 setClsSceneClassifications:v8];

  return v7;
}

+ (id)itemWithPeopleNames:(id)a3 universalDate:(id)a4 coordinate:(CLLocationCoordinate2D)a5
{
  longitude = a5.longitude;
  latitude = a5.latitude;
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_new();
  v14.latitude = latitude;
  v14.longitude = longitude;
  if (CLLocationCoordinate2DIsValid(v14))
  {
    v11 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:latitude longitude:longitude];
    [v10 setClsLocation:v11];
  }

  [v10 setClsPersonLocalIdentifiers:v8];
  [v10 setCls_universalDate:v9];

  return v10;
}

@end