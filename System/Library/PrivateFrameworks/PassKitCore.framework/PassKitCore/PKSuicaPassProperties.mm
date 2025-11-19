@interface PKSuicaPassProperties
+ (PKSuicaPassProperties)passPropertiesForPass:(PKPass *)pass;
- (BOOL)isEqual:(id)a3;
- (BOOL)isInShinkansenStation;
- (BOOL)isInStation;
- (id)_initWithProperties:(id)a3;
- (unint64_t)hash;
@end

@implementation PKSuicaPassProperties

+ (PKSuicaPassProperties)passPropertiesForPass:(PKPass *)pass
{
  v4 = pass;
  v5 = [(PKPass *)v4 paymentPass];
  v6 = [v5 devicePrimaryPaymentApplication];
  v7 = [v6 paymentNetworkIdentifier];

  if (v7 == 103)
  {
    v8 = [a1 alloc];
    v9 = [PKFelicaPassProperties passPropertiesForPass:v4];
    v10 = [v8 _initWithProperties:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_initWithProperties:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKSuicaPassProperties;
  v5 = [(PKSuicaPassProperties *)&v15 init];
  if (v5)
  {
    v6 = [v4 balance];
    v7 = v6;
    if (!v6)
    {
      v7 = [MEMORY[0x1E696AB90] zero];
    }

    v8 = [v4 balanceAmount];
    v9 = [v8 currency];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = @"JPY";
    }

    v12 = PKCurrencyAmountCreate(v7, &v11->isa, 0);
    [(PKStoredValuePassProperties *)v5 setBalanceAmount:v12];

    if (!v6)
    {
    }

    -[PKStoredValuePassProperties setBlocked:](v5, "setBlocked:", [v4 isBlocked]);
    v13 = [v4 enrouteTransitTypes];
    [(PKStoredValuePassProperties *)v5 setEnrouteTransitTypes:v13];

    v5->_greenCarTicketUsed = [v4 isGreenCarTicketUsed];
    v5->_balanceAllowedForCommute = [v4 isBalanceAllowedForCommute];
    v5->_lowBalanceGateNotificationEnabled = [v4 isLowBalanceGateNotificationEnabled];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKSuicaPassProperties;
  if ([(PKStoredValuePassProperties *)&v8 isEqual:v4])
  {
    v5 = v4;
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
  v2 = [(PKStoredValuePassProperties *)self enrouteTransitTypes];
  v3 = [v2 containsObject:@"TransitTrainShinkansen"];

  return v3;
}

- (BOOL)isInStation
{
  v2 = [(PKStoredValuePassProperties *)self enrouteTransitTypes];
  v3 = [v2 containsObject:@"Transit"];

  return v3;
}

@end