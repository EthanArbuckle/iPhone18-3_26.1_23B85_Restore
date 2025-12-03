@interface PKSuicaPassProperties
+ (PKSuicaPassProperties)passPropertiesForPass:(PKPass *)pass;
- (BOOL)isEqual:(id)equal;
- (BOOL)isInShinkansenStation;
- (BOOL)isInStation;
- (id)_initWithProperties:(id)properties;
- (unint64_t)hash;
@end

@implementation PKSuicaPassProperties

+ (PKSuicaPassProperties)passPropertiesForPass:(PKPass *)pass
{
  v4 = pass;
  paymentPass = [(PKPass *)v4 paymentPass];
  devicePrimaryPaymentApplication = [paymentPass devicePrimaryPaymentApplication];
  paymentNetworkIdentifier = [devicePrimaryPaymentApplication paymentNetworkIdentifier];

  if (paymentNetworkIdentifier == 103)
  {
    v8 = [self alloc];
    v9 = [PKFelicaPassProperties passPropertiesForPass:v4];
    v10 = [v8 _initWithProperties:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_initWithProperties:(id)properties
{
  propertiesCopy = properties;
  v15.receiver = self;
  v15.super_class = PKSuicaPassProperties;
  v5 = [(PKSuicaPassProperties *)&v15 init];
  if (v5)
  {
    balance = [propertiesCopy balance];
    zero = balance;
    if (!balance)
    {
      zero = [MEMORY[0x1E696AB90] zero];
    }

    balanceAmount = [propertiesCopy balanceAmount];
    currency = [balanceAmount currency];
    v10 = currency;
    if (currency)
    {
      v11 = currency;
    }

    else
    {
      v11 = @"JPY";
    }

    v12 = PKCurrencyAmountCreate(zero, &v11->isa, 0);
    [(PKStoredValuePassProperties *)v5 setBalanceAmount:v12];

    if (!balance)
    {
    }

    -[PKStoredValuePassProperties setBlocked:](v5, "setBlocked:", [propertiesCopy isBlocked]);
    enrouteTransitTypes = [propertiesCopy enrouteTransitTypes];
    [(PKStoredValuePassProperties *)v5 setEnrouteTransitTypes:enrouteTransitTypes];

    v5->_greenCarTicketUsed = [propertiesCopy isGreenCarTicketUsed];
    v5->_balanceAllowedForCommute = [propertiesCopy isBalanceAllowedForCommute];
    v5->_lowBalanceGateNotificationEnabled = [propertiesCopy isLowBalanceGateNotificationEnabled];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = PKSuicaPassProperties;
  if ([(PKStoredValuePassProperties *)&v8 isEqual:equalCopy])
  {
    v5 = equalCopy;
    v6 = self->_greenCarTicketUsed == v5[66] && self->_balanceAllowedForCommute == v5[64] && self->_lowBalanceGateNotificationEnabled == v5[65];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = PKSuicaPassProperties;
  v3 = [(PKStoredValuePassProperties *)&v7 hash];
  v4 = self->_greenCarTicketUsed - v3 + 32 * v3;
  v5 = self->_balanceAllowedForCommute - v4 + 32 * v4;
  return self->_lowBalanceGateNotificationEnabled - v5 + 32 * v5;
}

- (BOOL)isInShinkansenStation
{
  enrouteTransitTypes = [(PKStoredValuePassProperties *)self enrouteTransitTypes];
  v3 = [enrouteTransitTypes containsObject:@"TransitTrainShinkansen"];

  return v3;
}

- (BOOL)isInStation
{
  enrouteTransitTypes = [(PKStoredValuePassProperties *)self enrouteTransitTypes];
  v3 = [enrouteTransitTypes containsObject:@"Transit"];

  return v3;
}

@end