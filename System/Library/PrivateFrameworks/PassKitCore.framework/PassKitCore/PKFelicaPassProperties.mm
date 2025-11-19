@interface PKFelicaPassProperties
+ (id)passPropertiesForPass:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isInShinkansenStation;
- (BOOL)isInStation;
- (PKFelicaPassProperties)initWithCoder:(id)a3;
- (PKFelicaPassProperties)initWithTransitAppletState:(id)a3 paymentApplication:(id)a4 fieldCollection:(id)a5;
- (id)_stringForRow:(id)a3 seat:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKFelicaPassProperties

+ (id)passPropertiesForPass:(id)a3
{
  v3 = [a3 paymentPass];
  v4 = [v3 transitProperties];
  v5 = [v4 felicaProperties];

  return v5;
}

- (PKFelicaPassProperties)initWithTransitAppletState:(id)a3 paymentApplication:(id)a4 fieldCollection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 felicaState];
  if (v11)
  {
    v63.receiver = self;
    v63.super_class = PKFelicaPassProperties;
    v12 = [(PKStoredValuePassProperties *)&v63 initWithTransitAppletState:v8 paymentApplication:v9 fieldCollection:v10];
    if (v12)
    {
      v12->_shinkansenTicketActive = [v11 isShinkansenTicketActive];
      v12->_greenCarTicketUsed = [v11 isGreenCarTicketUsed];
      v12->_balanceAllowedForCommute = [v11 isBalanceAllowedForCommute];
      v12->_lowBalanceGateNotificationEnabled = [v11 isLowBalanceNotificationEnabled];
      v13 = [v11 shinkansenValidityStartDate];
      v14 = DateComponentsFromFelicaDateNumber(v13);
      shinkansenValidityStartDate = v12->_shinkansenValidityStartDate;
      v12->_shinkansenValidityStartDate = v14;

      v16 = [v11 shinkansenValidityTerm];
      shinkansenValidityTerm = v12->_shinkansenValidityTerm;
      v12->_shinkansenValidityTerm = v16;

      v18 = [v11 shinkansenOriginStationString];
      shinkansenOriginStation = v12->_shinkansenOriginStation;
      v12->_shinkansenOriginStation = v18;

      v20 = [v11 shinkansenDestinationStationString];
      shinkansenDestinationStation = v12->_shinkansenDestinationStation;
      v12->_shinkansenDestinationStation = v20;

      v22 = [v11 shinkansenDepartureTime];
      v23 = DateComponentsFromFelicaTimeNumber(v22);
      shinkansenDepartureTime = v12->_shinkansenDepartureTime;
      v12->_shinkansenDepartureTime = v23;

      v25 = [v11 shinkansenArrivalTime];
      v26 = DateComponentsFromFelicaTimeNumber(v25);
      shinkansenArrivalTime = v12->_shinkansenArrivalTime;
      v12->_shinkansenArrivalTime = v26;

      v28 = [v11 shinkansenTrainName];
      shinkansenTrainName = v12->_shinkansenTrainName;
      v12->_shinkansenTrainName = v28;

      v30 = [v11 shinkansenCarNumber];
      shinkansenCarNumber = v12->_shinkansenCarNumber;
      v12->_shinkansenCarNumber = v30;

      v32 = [v11 shinkansenSeatRow];
      shinkansenSeatRow = v12->_shinkansenSeatRow;
      v12->_shinkansenSeatRow = v32;

      v34 = [v11 shinkansenSeatNumber];
      shinkansenSeatNumber = v12->_shinkansenSeatNumber;
      v12->_shinkansenSeatNumber = v34;

      v36 = [v11 shinkansenSecondaryOriginStationString];
      shinkansenSecondaryOriginStation = v12->_shinkansenSecondaryOriginStation;
      v12->_shinkansenSecondaryOriginStation = v36;

      v38 = [v11 shinkansenSecondaryDestinationStationString];
      shinkansenSecondaryDestinationStation = v12->_shinkansenSecondaryDestinationStation;
      v12->_shinkansenSecondaryDestinationStation = v38;

      v40 = [v11 shinkansenSecondaryDepartureTime];
      v41 = DateComponentsFromFelicaTimeNumber(v40);
      shinkansenSecondaryDepartureTime = v12->_shinkansenSecondaryDepartureTime;
      v12->_shinkansenSecondaryDepartureTime = v41;

      v43 = [v11 shinkansenSecondaryArrivalTime];
      v44 = DateComponentsFromFelicaTimeNumber(v43);
      shinkansenSecondaryArrivalTime = v12->_shinkansenSecondaryArrivalTime;
      v12->_shinkansenSecondaryArrivalTime = v44;

      v46 = [v11 shinkansenSecondaryTrainName];
      shinkansenSecondaryTrainName = v12->_shinkansenSecondaryTrainName;
      v12->_shinkansenSecondaryTrainName = v46;

      v48 = [v11 shinkansenSecondaryCarNumber];
      shinkansenSecondaryCarNumber = v12->_shinkansenSecondaryCarNumber;
      v12->_shinkansenSecondaryCarNumber = v48;

      v50 = [v11 shinkansenSecondarySeatRow];
      shinkansenSecondarySeatRow = v12->_shinkansenSecondarySeatRow;
      v12->_shinkansenSecondarySeatRow = v50;

      v52 = [v11 shinkansenSecondarySeatNumber];
      shinkansenSecondarySeatNumber = v12->_shinkansenSecondarySeatNumber;
      v12->_shinkansenSecondarySeatNumber = v52;

      v54 = [v11 greenCarOriginStationString];
      greenCarOriginStation = v12->_greenCarOriginStation;
      v12->_greenCarOriginStation = v54;

      v56 = [v11 greenCarDestinationStationString];
      greenCarDestinationStation = v12->_greenCarDestinationStation;
      v12->_greenCarDestinationStation = v56;

      v58 = [v11 greenCarValidityStartDate];
      v59 = DateComponentsFromFelicaDateNumber(v58);
      greenCarValidityStartDate = v12->_greenCarValidityStartDate;
      v12->_greenCarValidityStartDate = v59;

      v12->_hasGreenCarTicket = [v11 hasGreenCarTicket];
      v12->_hasShinkansenTicket = [v11 hasShinkansenTicket];
    }

    self = v12;
    v61 = self;
  }

  else
  {
    v61 = 0;
  }

  return v61;
}

- (PKFelicaPassProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v59.receiver = self;
  v59.super_class = PKFelicaPassProperties;
  v5 = [(PKStoredValuePassProperties *)&v59 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [(PKStoredValuePassProperties *)v5 balanceAmount];

    if (!v7)
    {
      v8 = MEMORY[0x1E695DFD8];
      v9 = objc_opt_class();
      v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
      v11 = [v4 decodeObjectOfClasses:v10 forKey:@"transitBalance"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v12 = [MEMORY[0x1E696AB90] decimalNumberWithMantissa:-[NSDecimalNumber unsignedLongLongValue](v11 exponent:"unsignedLongLongValue") isNegative:{0, 0}];

        v11 = v12;
      }

      v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
      v14 = v13;
      if (v11 && v13)
      {
        v15 = PKCurrencyAmountCreate(v11, v13, 0);
        [(PKStoredValuePassProperties *)v6 setBalanceAmount:v15];
      }
    }

    v6->_shinkansenTicketActive = [v4 decodeBoolForKey:@"shinkansenTicketActive"];
    v6->_greenCarTicketUsed = [v4 decodeBoolForKey:@"greenCarTicketUsed"];
    v6->_balanceAllowedForCommute = [v4 decodeBoolForKey:@"balanceAllowedForCommute"];
    v6->_lowBalanceGateNotificationEnabled = [v4 decodeBoolForKey:@"lowBalanceGateNotificationEnabled"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenValidityStartDate"];
    shinkansenValidityStartDate = v6->_shinkansenValidityStartDate;
    v6->_shinkansenValidityStartDate = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenValidityTerm"];
    shinkansenValidityTerm = v6->_shinkansenValidityTerm;
    v6->_shinkansenValidityTerm = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenOriginStation"];
    shinkansenOriginStation = v6->_shinkansenOriginStation;
    v6->_shinkansenOriginStation = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenDestinationStation"];
    shinkansenDestinationStation = v6->_shinkansenDestinationStation;
    v6->_shinkansenDestinationStation = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenDepartureTime"];
    shinkansenDepartureTime = v6->_shinkansenDepartureTime;
    v6->_shinkansenDepartureTime = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenArrivalTime"];
    shinkansenArrivalTime = v6->_shinkansenArrivalTime;
    v6->_shinkansenArrivalTime = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenTrainName"];
    shinkansenTrainName = v6->_shinkansenTrainName;
    v6->_shinkansenTrainName = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenCarNumber"];
    shinkansenCarNumber = v6->_shinkansenCarNumber;
    v6->_shinkansenCarNumber = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSeatRow"];
    shinkansenSeatRow = v6->_shinkansenSeatRow;
    v6->_shinkansenSeatRow = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSeatNumber"];
    shinkansenSeatNumber = v6->_shinkansenSeatNumber;
    v6->_shinkansenSeatNumber = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondaryOriginStation"];
    shinkansenSecondaryOriginStation = v6->_shinkansenSecondaryOriginStation;
    v6->_shinkansenSecondaryOriginStation = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondaryDestinationStation"];
    shinkansenSecondaryDestinationStation = v6->_shinkansenSecondaryDestinationStation;
    v6->_shinkansenSecondaryDestinationStation = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondaryDepartureTime"];
    shinkansenSecondaryDepartureTime = v6->_shinkansenSecondaryDepartureTime;
    v6->_shinkansenSecondaryDepartureTime = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondaryArrivalTime"];
    shinkansenSecondaryArrivalTime = v6->_shinkansenSecondaryArrivalTime;
    v6->_shinkansenSecondaryArrivalTime = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondaryTrainName"];
    shinkansenSecondaryTrainName = v6->_shinkansenSecondaryTrainName;
    v6->_shinkansenSecondaryTrainName = v44;

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondaryCarNumber"];
    shinkansenSecondaryCarNumber = v6->_shinkansenSecondaryCarNumber;
    v6->_shinkansenSecondaryCarNumber = v46;

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondarySeatRow"];
    shinkansenSecondarySeatRow = v6->_shinkansenSecondarySeatRow;
    v6->_shinkansenSecondarySeatRow = v48;

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondarySeatNumber"];
    shinkansenSecondarySeatNumber = v6->_shinkansenSecondarySeatNumber;
    v6->_shinkansenSecondarySeatNumber = v50;

    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"greenCarOriginStation"];
    greenCarOriginStation = v6->_greenCarOriginStation;
    v6->_greenCarOriginStation = v52;

    v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"greenCarDestinationStation"];
    greenCarDestinationStation = v6->_greenCarDestinationStation;
    v6->_greenCarDestinationStation = v54;

    v56 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"greenCarValidityStartDate"];
    greenCarValidityStartDate = v6->_greenCarValidityStartDate;
    v6->_greenCarValidityStartDate = v56;

    v6->_hasGreenCarTicket = [v4 decodeBoolForKey:@"hasGreenCarTicket"];
    v6->_hasShinkansenTicket = [v4 decodeBoolForKey:@"hasShinkansenTicket"];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = PKFelicaPassProperties;
  v4 = a3;
  [(PKStoredValuePassProperties *)&v9 encodeWithCoder:v4];
  v5 = [(PKStoredValuePassProperties *)self balanceAmount:v9.receiver];
  v6 = [v5 currency];
  [v4 encodeObject:v6 forKey:@"currencyCode"];

  v7 = [(PKStoredValuePassProperties *)self balanceAmount];
  v8 = [v7 amount];
  [v4 encodeObject:v8 forKey:@"transitBalance"];

  [v4 encodeBool:self->_shinkansenTicketActive forKey:@"shinkansenTicketActive"];
  [v4 encodeBool:self->_greenCarTicketUsed forKey:@"greenCarTicketUsed"];
  [v4 encodeBool:self->_balanceAllowedForCommute forKey:@"balanceAllowedForCommute"];
  [v4 encodeBool:self->_lowBalanceGateNotificationEnabled forKey:@"lowBalanceGateNotificationEnabled"];
  [v4 encodeObject:self->_shinkansenValidityStartDate forKey:@"shinkansenValidityStartDate"];
  [v4 encodeObject:self->_shinkansenValidityTerm forKey:@"shinkansenValidityTerm"];
  [v4 encodeObject:self->_shinkansenOriginStation forKey:@"shinkansenOriginStation"];
  [v4 encodeObject:self->_shinkansenDestinationStation forKey:@"shinkansenDestinationStation"];
  [v4 encodeObject:self->_shinkansenDepartureTime forKey:@"shinkansenDepartureTime"];
  [v4 encodeObject:self->_shinkansenArrivalTime forKey:@"shinkansenArrivalTime"];
  [v4 encodeObject:self->_shinkansenTrainName forKey:@"shinkansenTrainName"];
  [v4 encodeObject:self->_shinkansenCarNumber forKey:@"shinkansenCarNumber"];
  [v4 encodeObject:self->_shinkansenSeatRow forKey:@"shinkansenSeatRow"];
  [v4 encodeObject:self->_shinkansenSeatNumber forKey:@"shinkansenSeatNumber"];
  [v4 encodeObject:self->_shinkansenSecondaryOriginStation forKey:@"shinkansenSecondaryOriginStation"];
  [v4 encodeObject:self->_shinkansenSecondaryDestinationStation forKey:@"shinkansenSecondaryDestinationStation"];
  [v4 encodeObject:self->_shinkansenSecondaryDepartureTime forKey:@"shinkansenSecondaryDepartureTime"];
  [v4 encodeObject:self->_shinkansenSecondaryArrivalTime forKey:@"shinkansenSecondaryArrivalTime"];
  [v4 encodeObject:self->_shinkansenSecondaryTrainName forKey:@"shinkansenSecondaryTrainName"];
  [v4 encodeObject:self->_shinkansenSecondaryCarNumber forKey:@"shinkansenSecondaryCarNumber"];
  [v4 encodeObject:self->_shinkansenSecondarySeatRow forKey:@"shinkansenSecondarySeatRow"];
  [v4 encodeObject:self->_shinkansenSecondarySeatNumber forKey:@"shinkansenSecondarySeatNumber"];
  [v4 encodeObject:self->_greenCarOriginStation forKey:@"greenCarOriginStation"];
  [v4 encodeObject:self->_greenCarDestinationStation forKey:@"greenCarDestinationStation"];
  [v4 encodeObject:self->_greenCarValidityStartDate forKey:@"greenCarValidityStartDate"];
  [v4 encodeBool:self->_hasGreenCarTicket forKey:@"hasGreenCarTicket"];
  [v4 encodeBool:self->_hasShinkansenTicket forKey:@"hasShinkansenTicket"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PKFelicaPassProperties;
  v4 = [(PKStoredValuePassProperties *)&v6 copyWithZone:a3];
  [v4 setShinkansenTicketActive:self->_shinkansenTicketActive];
  [v4 setGreenCarTicketUsed:self->_greenCarTicketUsed];
  [v4 setBalanceAllowedForCommute:self->_balanceAllowedForCommute];
  [v4 setLowBalanceGateNotificationEnabled:self->_lowBalanceGateNotificationEnabled];
  [v4 setShinkansenValidityStartDate:self->_shinkansenValidityStartDate];
  [v4 setShinkansenValidityTerm:self->_shinkansenValidityTerm];
  [v4 setShinkansenOriginStation:self->_shinkansenOriginStation];
  [v4 setShinkansenDestinationStation:self->_shinkansenDestinationStation];
  [v4 setShinkansenDepartureTime:self->_shinkansenDepartureTime];
  [v4 setShinkansenArrivalTime:self->_shinkansenArrivalTime];
  [v4 setShinkansenTrainName:self->_shinkansenTrainName];
  [v4 setShinkansenCarNumber:self->_shinkansenCarNumber];
  [v4 setShinkansenSeatRow:self->_shinkansenSeatRow];
  [v4 setShinkansenSeatNumber:self->_shinkansenSeatNumber];
  [v4 setShinkansenSecondaryOriginStation:self->_shinkansenSecondaryOriginStation];
  [v4 setShinkansenSecondaryDestinationStation:self->_shinkansenSecondaryDestinationStation];
  [v4 setShinkansenSecondaryDepartureTime:self->_shinkansenSecondaryDepartureTime];
  [v4 setShinkansenSecondaryArrivalTime:self->_shinkansenSecondaryArrivalTime];
  [v4 setShinkansenSecondaryTrainName:self->_shinkansenSecondaryTrainName];
  [v4 setShinkansenSecondaryCarNumber:self->_shinkansenSecondaryCarNumber];
  [v4 setShinkansenSecondarySeatRow:self->_shinkansenSecondarySeatRow];
  [v4 setShinkansenSecondarySeatNumber:self->_shinkansenSecondarySeatNumber];
  [v4 setGreenCarOriginStation:self->_greenCarOriginStation];
  [v4 setGreenCarDestinationStation:self->_greenCarDestinationStation];
  [v4 setGreenCarValidityStartDate:self->_greenCarValidityStartDate];
  [v4 setHasGreenCarTicket:self->_hasGreenCarTicket];
  [v4 setHasShinkansenTicket:self->_hasShinkansenTicket];
  return v4;
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

- (id)_stringForRow:(id)a3 seat:(id)a4
{
  v5 = a4;
  v6 = [a3 stringValue];
  v7 = [v5 integerValue];
  if ((v7 - 1) > 0x19)
  {
    v8 = [v5 stringValue];
  }

  else
  {
    v13 = v7 | 0x40;
    v8 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v13 length:1];
  }

  v9 = v8;
  if (v6 && v8)
  {
    v10 = PKCoreLocalizedString(&cfstr_FelicaPassProp.isa, &cfstr_12_0.isa, v6, v8);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_10;
    }

    v10 = v8;
  }

  v11 = v10;

  v6 = v11;
LABEL_10:

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v51.receiver = self;
  v51.super_class = PKFelicaPassProperties;
  if ([(PKStoredValuePassProperties *)&v51 isEqual:v4])
  {
    v5 = v4;
    v6 = v5;
    if (self->_hasGreenCarTicket != v5[69] || self->_hasShinkansenTicket != v5[70] || self->_shinkansenTicketActive != v5[64] || self->_greenCarTicketUsed != v5[65] || self->_inShinkansenStation != v5[66] || self->_balanceAllowedForCommute != v5[67] || self->_lowBalanceGateNotificationEnabled != v5[68])
    {
      goto LABEL_112;
    }

    shinkansenValidityStartDate = self->_shinkansenValidityStartDate;
    v8 = *(v6 + 9);
    if (shinkansenValidityStartDate && v8)
    {
      if (([(NSDateComponents *)shinkansenValidityStartDate isEqual:?]& 1) == 0)
      {
        goto LABEL_112;
      }
    }

    else if (shinkansenValidityStartDate != v8)
    {
      goto LABEL_112;
    }

    shinkansenValidityTerm = self->_shinkansenValidityTerm;
    v11 = *(v6 + 10);
    if (shinkansenValidityTerm && v11)
    {
      if (([(NSNumber *)shinkansenValidityTerm isEqual:?]& 1) == 0)
      {
        goto LABEL_112;
      }
    }

    else if (shinkansenValidityTerm != v11)
    {
      goto LABEL_112;
    }

    shinkansenOriginStation = self->_shinkansenOriginStation;
    v13 = *(v6 + 11);
    if (shinkansenOriginStation && v13)
    {
      if (([(NSString *)shinkansenOriginStation isEqual:?]& 1) == 0)
      {
        goto LABEL_112;
      }
    }

    else if (shinkansenOriginStation != v13)
    {
      goto LABEL_112;
    }

    shinkansenDestinationStation = self->_shinkansenDestinationStation;
    v15 = *(v6 + 12);
    if (shinkansenDestinationStation && v15)
    {
      if (([(NSString *)shinkansenDestinationStation isEqual:?]& 1) == 0)
      {
        goto LABEL_112;
      }
    }

    else if (shinkansenDestinationStation != v15)
    {
      goto LABEL_112;
    }

    shinkansenDepartureTime = self->_shinkansenDepartureTime;
    v17 = *(v6 + 13);
    if (shinkansenDepartureTime && v17)
    {
      if (([(NSDateComponents *)shinkansenDepartureTime isEqual:?]& 1) == 0)
      {
        goto LABEL_112;
      }
    }

    else if (shinkansenDepartureTime != v17)
    {
      goto LABEL_112;
    }

    shinkansenArrivalTime = self->_shinkansenArrivalTime;
    v19 = *(v6 + 14);
    if (shinkansenArrivalTime && v19)
    {
      if (([(NSDateComponents *)shinkansenArrivalTime isEqual:?]& 1) == 0)
      {
        goto LABEL_112;
      }
    }

    else if (shinkansenArrivalTime != v19)
    {
      goto LABEL_112;
    }

    shinkansenTrainName = self->_shinkansenTrainName;
    v21 = *(v6 + 15);
    if (shinkansenTrainName && v21)
    {
      if (([(NSString *)shinkansenTrainName isEqual:?]& 1) == 0)
      {
        goto LABEL_112;
      }
    }

    else if (shinkansenTrainName != v21)
    {
      goto LABEL_112;
    }

    shinkansenCarNumber = self->_shinkansenCarNumber;
    v23 = *(v6 + 16);
    if (shinkansenCarNumber && v23)
    {
      if (([(NSNumber *)shinkansenCarNumber isEqual:?]& 1) == 0)
      {
        goto LABEL_112;
      }
    }

    else if (shinkansenCarNumber != v23)
    {
      goto LABEL_112;
    }

    shinkansenSeatRow = self->_shinkansenSeatRow;
    v25 = *(v6 + 17);
    if (shinkansenSeatRow && v25)
    {
      if (([(NSNumber *)shinkansenSeatRow isEqual:?]& 1) == 0)
      {
        goto LABEL_112;
      }
    }

    else if (shinkansenSeatRow != v25)
    {
      goto LABEL_112;
    }

    shinkansenSeatNumber = self->_shinkansenSeatNumber;
    v27 = *(v6 + 18);
    if (shinkansenSeatNumber && v27)
    {
      if (([(NSNumber *)shinkansenSeatNumber isEqual:?]& 1) == 0)
      {
        goto LABEL_112;
      }
    }

    else if (shinkansenSeatNumber != v27)
    {
      goto LABEL_112;
    }

    shinkansenSecondaryOriginStation = self->_shinkansenSecondaryOriginStation;
    v29 = *(v6 + 19);
    if (shinkansenSecondaryOriginStation && v29)
    {
      if (([(NSString *)shinkansenSecondaryOriginStation isEqual:?]& 1) == 0)
      {
        goto LABEL_112;
      }
    }

    else if (shinkansenSecondaryOriginStation != v29)
    {
      goto LABEL_112;
    }

    shinkansenSecondaryDestinationStation = self->_shinkansenSecondaryDestinationStation;
    v31 = *(v6 + 20);
    if (shinkansenSecondaryDestinationStation && v31)
    {
      if (([(NSString *)shinkansenSecondaryDestinationStation isEqual:?]& 1) == 0)
      {
        goto LABEL_112;
      }
    }

    else if (shinkansenSecondaryDestinationStation != v31)
    {
      goto LABEL_112;
    }

    shinkansenSecondaryDepartureTime = self->_shinkansenSecondaryDepartureTime;
    v33 = *(v6 + 21);
    if (shinkansenSecondaryDepartureTime && v33)
    {
      if (([(NSDateComponents *)shinkansenSecondaryDepartureTime isEqual:?]& 1) == 0)
      {
        goto LABEL_112;
      }
    }

    else if (shinkansenSecondaryDepartureTime != v33)
    {
      goto LABEL_112;
    }

    shinkansenSecondaryArrivalTime = self->_shinkansenSecondaryArrivalTime;
    v35 = *(v6 + 22);
    if (shinkansenSecondaryArrivalTime && v35)
    {
      if (([(NSDateComponents *)shinkansenSecondaryArrivalTime isEqual:?]& 1) == 0)
      {
        goto LABEL_112;
      }
    }

    else if (shinkansenSecondaryArrivalTime != v35)
    {
      goto LABEL_112;
    }

    shinkansenSecondaryTrainName = self->_shinkansenSecondaryTrainName;
    v37 = *(v6 + 23);
    if (shinkansenSecondaryTrainName && v37)
    {
      if (([(NSString *)shinkansenSecondaryTrainName isEqual:?]& 1) == 0)
      {
        goto LABEL_112;
      }
    }

    else if (shinkansenSecondaryTrainName != v37)
    {
      goto LABEL_112;
    }

    shinkansenSecondaryCarNumber = self->_shinkansenSecondaryCarNumber;
    v39 = *(v6 + 24);
    if (shinkansenSecondaryCarNumber && v39)
    {
      if (([(NSNumber *)shinkansenSecondaryCarNumber isEqual:?]& 1) == 0)
      {
        goto LABEL_112;
      }
    }

    else if (shinkansenSecondaryCarNumber != v39)
    {
      goto LABEL_112;
    }

    shinkansenSecondarySeatRow = self->_shinkansenSecondarySeatRow;
    v41 = *(v6 + 25);
    if (shinkansenSecondarySeatRow && v41)
    {
      if (([(NSNumber *)shinkansenSecondarySeatRow isEqual:?]& 1) == 0)
      {
        goto LABEL_112;
      }
    }

    else if (shinkansenSecondarySeatRow != v41)
    {
      goto LABEL_112;
    }

    shinkansenSecondarySeatNumber = self->_shinkansenSecondarySeatNumber;
    v43 = *(v6 + 26);
    if (shinkansenSecondarySeatNumber && v43)
    {
      if (([(NSNumber *)shinkansenSecondarySeatNumber isEqual:?]& 1) == 0)
      {
        goto LABEL_112;
      }
    }

    else if (shinkansenSecondarySeatNumber != v43)
    {
      goto LABEL_112;
    }

    greenCarOriginStation = self->_greenCarOriginStation;
    v45 = *(v6 + 27);
    if (greenCarOriginStation && v45)
    {
      if (([(NSString *)greenCarOriginStation isEqual:?]& 1) == 0)
      {
        goto LABEL_112;
      }
    }

    else if (greenCarOriginStation != v45)
    {
      goto LABEL_112;
    }

    greenCarDestinationStation = self->_greenCarDestinationStation;
    v47 = *(v6 + 28);
    if (greenCarDestinationStation && v47)
    {
      if (([(NSString *)greenCarDestinationStation isEqual:?]& 1) != 0)
      {
LABEL_108:
        greenCarValidityStartDate = self->_greenCarValidityStartDate;
        v49 = *(v6 + 29);
        if (greenCarValidityStartDate && v49)
        {
          v9 = [(NSDateComponents *)greenCarValidityStartDate isEqual:?];
        }

        else
        {
          v9 = greenCarValidityStartDate == v49;
        }

        goto LABEL_113;
      }
    }

    else if (greenCarDestinationStation == v47)
    {
      goto LABEL_108;
    }

LABEL_112:
    v9 = 0;
LABEL_113:

    goto LABEL_114;
  }

  v9 = 0;
LABEL_114:

  return v9;
}

- (unint64_t)hash
{
  v14.receiver = self;
  v14.super_class = PKFelicaPassProperties;
  v3 = [(PKStoredValuePassProperties *)&v14 hash];
  v4 = self->_hasGreenCarTicket - v3 + 32 * v3;
  v5 = self->_hasShinkansenTicket - v4 + 32 * v4;
  v6 = self->_shinkansenTicketActive - v5 + 32 * v5;
  v7 = self->_greenCarTicketUsed - v6 + 32 * v6;
  v8 = self->_inShinkansenStation - v7 + 32 * v7;
  v9 = self->_balanceAllowedForCommute - v8 + 32 * v8;
  v10 = self->_lowBalanceGateNotificationEnabled - v9 + 32 * v9;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v11 safelyAddObject:self->_shinkansenOriginStation];
  [v11 safelyAddObject:self->_shinkansenDestinationStation];
  [v11 safelyAddObject:self->_shinkansenDepartureTime];
  [v11 safelyAddObject:self->_shinkansenArrivalTime];
  [v11 safelyAddObject:self->_shinkansenTrainName];
  [v11 safelyAddObject:self->_shinkansenCarNumber];
  [v11 safelyAddObject:self->_shinkansenSeatRow];
  [v11 safelyAddObject:self->_shinkansenSeatNumber];
  [v11 safelyAddObject:self->_shinkansenSecondaryOriginStation];
  [v11 safelyAddObject:self->_shinkansenSecondaryDestinationStation];
  [v11 safelyAddObject:self->_shinkansenSecondaryDepartureTime];
  [v11 safelyAddObject:self->_shinkansenSecondaryArrivalTime];
  [v11 safelyAddObject:self->_shinkansenSecondaryTrainName];
  [v11 safelyAddObject:self->_shinkansenSecondaryCarNumber];
  [v11 safelyAddObject:self->_shinkansenSecondarySeatRow];
  [v11 safelyAddObject:self->_shinkansenSecondarySeatNumber];
  [v11 safelyAddObject:self->_greenCarOriginStation];
  [v11 safelyAddObject:self->_greenCarDestinationStation];
  [v11 safelyAddObject:self->_greenCarValidityStartDate];
  v12 = PKCombinedHash(v10, v11);

  return v12;
}

@end