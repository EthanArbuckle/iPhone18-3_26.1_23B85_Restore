@interface PKPaymentAvailableDevicesResponseCardItem
- (PKPaymentAvailableDevicesResponseCardItem)initWithDictionary:(id)dictionary;
@end

@implementation PKPaymentAvailableDevicesResponseCardItem

- (PKPaymentAvailableDevicesResponseCardItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = PKPaymentAvailableDevicesResponseCardItem;
  v5 = [(PKPaymentAvailableDevicesResponseCardItem *)&v15 init];
  v6 = v5;
  if (v5)
  {
    if (dictionaryCopy)
    {
      v7 = [dictionaryCopy objectForKeyedSubscript:@"cardType"];
      cardType = v6->_cardType;
      v6->_cardType = v7;

      v9 = [dictionaryCopy objectForKeyedSubscript:@"cardTypeCode"];
      cardTypeCode = v6->_cardTypeCode;
      v6->_cardTypeCode = v9;

      v11 = [dictionaryCopy objectForKeyedSubscript:@"currentStatus"];
      currentStatus = v6->_currentStatus;
      v6->_currentStatus = v11;

      v13 = [dictionaryCopy objectForKeyedSubscript:@"supportsInApp"];
      v6->_supportsInApp = [v13 BOOLValue];
    }

    else
    {
      v13 = v5;
      v6 = 0;
    }
  }

  return v6;
}

@end