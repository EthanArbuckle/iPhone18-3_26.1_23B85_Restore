@interface GDGraphModeOfTransportation
- (GDGraphModeOfTransportation)initWithEntityIdentifierField:(id)field transportationTypeField:(id)typeField allTransportationTypeField:(id)transportationTypeField;
@end

@implementation GDGraphModeOfTransportation

- (GDGraphModeOfTransportation)initWithEntityIdentifierField:(id)field transportationTypeField:(id)typeField allTransportationTypeField:(id)transportationTypeField
{
  fieldCopy = field;
  typeFieldCopy = typeField;
  transportationTypeFieldCopy = transportationTypeField;
  v15.receiver = self;
  v15.super_class = GDGraphModeOfTransportation;
  v12 = [(GDGraphModeOfTransportation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_entityIdentifier, field);
    objc_storeStrong(&v13->_transportationType, typeField);
    objc_storeStrong(&v13->_allTransportationType, transportationTypeField);
  }

  return v13;
}

@end