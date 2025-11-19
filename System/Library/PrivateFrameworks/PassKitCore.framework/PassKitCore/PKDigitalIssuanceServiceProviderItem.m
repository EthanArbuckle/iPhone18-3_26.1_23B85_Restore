@interface PKDigitalIssuanceServiceProviderItem
- (PKDigitalIssuanceServiceProviderItem)initWithDictionary:(id)a3;
- (PKDigitalIssuanceServiceProviderItem)initWithServiceProviderProduct:(id)a3;
@end

@implementation PKDigitalIssuanceServiceProviderItem

- (PKDigitalIssuanceServiceProviderItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKDigitalIssuanceServiceProviderItem;
  v5 = [(PKDigitalIssuanceServiceProviderItem *)&v15 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 PKStringForKey:@"localizedDisplayName"];
    localizedDisplayName = v5->_localizedDisplayName;
    v5->_localizedDisplayName = v8;

    v10 = [v4 PKStringForKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v10;

    v5->_unitCount = [v4 PKIntegerForKey:@"unitCount"];
    v12 = [v4 PKDecimalNumberForKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v12;
  }

  return v5;
}

- (PKDigitalIssuanceServiceProviderItem)initWithServiceProviderProduct:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKDigitalIssuanceServiceProviderItem;
  v5 = [(PKDigitalIssuanceServiceProviderItem *)&v15 init];
  if (v5)
  {
    v6 = [v4 identifier];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 localizedDisplayName];
    localizedDisplayName = v5->_localizedDisplayName;
    v5->_localizedDisplayName = v8;

    v10 = [v4 localizedDescription];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v10;

    v5->_unitCount = 0;
    v12 = [objc_alloc(MEMORY[0x1E696AB90]) initWithInt:0];
    amount = v5->_amount;
    v5->_amount = v12;
  }

  return v5;
}

@end