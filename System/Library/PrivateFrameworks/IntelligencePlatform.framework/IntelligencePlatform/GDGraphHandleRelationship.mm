@interface GDGraphHandleRelationship
- (GDGraphHandleRelationship)initWithLabelField:(id)field emailAddressesField:(id)addressesField phoneNumbersField:(id)numbersField allLabelField:(id)labelField;
@end

@implementation GDGraphHandleRelationship

- (GDGraphHandleRelationship)initWithLabelField:(id)field emailAddressesField:(id)addressesField phoneNumbersField:(id)numbersField allLabelField:(id)labelField
{
  fieldCopy = field;
  addressesFieldCopy = addressesField;
  numbersFieldCopy = numbersField;
  labelFieldCopy = labelField;
  v18.receiver = self;
  v18.super_class = GDGraphHandleRelationship;
  v15 = [(GDGraphHandleRelationship *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_label, field);
    objc_storeStrong(&v16->_emailAddresses, addressesField);
    objc_storeStrong(&v16->_phoneNumbers, numbersField);
    objc_storeStrong(&v16->_allLabel, labelField);
  }

  return v16;
}

@end