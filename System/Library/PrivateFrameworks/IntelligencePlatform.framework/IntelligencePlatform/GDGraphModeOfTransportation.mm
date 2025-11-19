@interface GDGraphModeOfTransportation
- (GDGraphModeOfTransportation)initWithEntityIdentifierField:(id)a3 transportationTypeField:(id)a4 allTransportationTypeField:(id)a5;
@end

@implementation GDGraphModeOfTransportation

- (GDGraphModeOfTransportation)initWithEntityIdentifierField:(id)a3 transportationTypeField:(id)a4 allTransportationTypeField:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = GDGraphModeOfTransportation;
  v12 = [(GDGraphModeOfTransportation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_entityIdentifier, a3);
    objc_storeStrong(&v13->_transportationType, a4);
    objc_storeStrong(&v13->_allTransportationType, a5);
  }

  return v13;
}

@end