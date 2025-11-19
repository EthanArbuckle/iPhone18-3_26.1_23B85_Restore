@interface GDGraphHandleRelationship
- (GDGraphHandleRelationship)initWithLabelField:(id)a3 emailAddressesField:(id)a4 phoneNumbersField:(id)a5 allLabelField:(id)a6;
@end

@implementation GDGraphHandleRelationship

- (GDGraphHandleRelationship)initWithLabelField:(id)a3 emailAddressesField:(id)a4 phoneNumbersField:(id)a5 allLabelField:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = GDGraphHandleRelationship;
  v15 = [(GDGraphHandleRelationship *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_label, a3);
    objc_storeStrong(&v16->_emailAddresses, a4);
    objc_storeStrong(&v16->_phoneNumbers, a5);
    objc_storeStrong(&v16->_allLabel, a6);
  }

  return v16;
}

@end