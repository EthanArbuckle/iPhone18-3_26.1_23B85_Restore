@interface PKDigitalIssuanceServiceProviderItem
- (PKDigitalIssuanceServiceProviderItem)initWithDictionary:(id)dictionary;
- (PKDigitalIssuanceServiceProviderItem)initWithServiceProviderProduct:(id)product;
@end

@implementation PKDigitalIssuanceServiceProviderItem

- (PKDigitalIssuanceServiceProviderItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = PKDigitalIssuanceServiceProviderItem;
  v5 = [(PKDigitalIssuanceServiceProviderItem *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [dictionaryCopy PKStringForKey:@"localizedDisplayName"];
    localizedDisplayName = v5->_localizedDisplayName;
    v5->_localizedDisplayName = v8;

    v10 = [dictionaryCopy PKStringForKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v10;

    v5->_unitCount = [dictionaryCopy PKIntegerForKey:@"unitCount"];
    v12 = [dictionaryCopy PKDecimalNumberForKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v12;
  }

  return v5;
}

- (PKDigitalIssuanceServiceProviderItem)initWithServiceProviderProduct:(id)product
{
  productCopy = product;
  v15.receiver = self;
  v15.super_class = PKDigitalIssuanceServiceProviderItem;
  v5 = [(PKDigitalIssuanceServiceProviderItem *)&v15 init];
  if (v5)
  {
    identifier = [productCopy identifier];
    identifier = v5->_identifier;
    v5->_identifier = identifier;

    localizedDisplayName = [productCopy localizedDisplayName];
    localizedDisplayName = v5->_localizedDisplayName;
    v5->_localizedDisplayName = localizedDisplayName;

    localizedDescription = [productCopy localizedDescription];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = localizedDescription;

    v5->_unitCount = 0;
    v12 = [objc_alloc(MEMORY[0x1E696AB90]) initWithInt:0];
    amount = v5->_amount;
    v5->_amount = v12;
  }

  return v5;
}

@end