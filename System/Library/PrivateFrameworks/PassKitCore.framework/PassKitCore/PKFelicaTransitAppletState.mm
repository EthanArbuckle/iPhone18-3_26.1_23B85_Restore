@interface PKFelicaTransitAppletState
- (BOOL)isEqual:(id)a3;
- (BOOL)isInShinkansenStation;
- (BOOL)isInStation;
- (PKFelicaTransitAppletState)init;
- (PKFelicaTransitAppletState)initWithCoder:(id)a3;
- (id)_concreteTransactionForRecordAtIndex:(unint64_t)a3 withBalance:(unsigned int *)a4 historyRecords:(id)a5 terminalState:(id)a6 numberProcessed:(unint64_t *)a7 exitedShinkansen:(BOOL *)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)processUpdateWithAppletHistory:(id)a3 concreteTransactions:(id *)a4 ephemeralTransaction:(id *)a5;
- (id)transitPassPropertiesWithPaymentApplication:(id)a3;
- (id)transitPassPropertiesWithPaymentApplication:(id)a3 fieldCollection:(id)a4;
- (id)transitPassPropertiesWithPaymentApplication:(id)a3 pass:(id)a4;
- (unint64_t)hash;
- (void)_resolveTransactionsFromState:(id)a3 toState:(id)a4 withHistoryRecords:(id)a5 concreteTransactions:(id *)a6 ephemeralTransaction:(id *)a7;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKFelicaTransitAppletState

- (PKFelicaTransitAppletState)init
{
  v5.receiver = self;
  v5.super_class = PKFelicaTransitAppletState;
  v2 = [(PKFelicaTransitAppletState *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PKTransitAppletState *)v2 setCurrency:@"JPY"];
  }

  return v3;
}

- (PKFelicaTransitAppletState)initWithCoder:(id)a3
{
  v4 = a3;
  v65.receiver = self;
  v65.super_class = PKFelicaTransitAppletState;
  v5 = [(PKTransitAppletState *)&v65 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(PKTransitAppletState *)v5 setCurrency:@"JPY"];
    v7 = [(PKTransitAppletState *)v6 enrouteTransitTypes];
    v8 = [v7 containsObject:@"TransitMetro"];

    if (v8)
    {
      [(PKTransitAppletState *)v6 setEnrouteTransitTypes:0];
    }

    v9 = [(PKTransitAppletState *)v6 enrouteTransitTypes];

    if (!v9)
    {
      if ([v4 decodeBoolForKey:@"inStation"])
      {
        [(PKTransitAppletState *)v6 addEnrouteTransitType:@"Transit"];
      }

      if ([v4 decodeBoolForKey:@"inShinkansenStation"])
      {
        [(PKTransitAppletState *)v6 addEnrouteTransitType:@"TransitTrainShinkansen"];
      }
    }

    v6->_shinkansenTicketActive = [v4 decodeBoolForKey:@"shinkansenTicketActive"];
    v6->_greenCarTicketUsed = [v4 decodeBoolForKey:@"greenCarTicketUsed"];
    v6->_balanceAllowedForCommute = [v4 decodeBoolForKey:@"balanceAllowedForCommute"];
    v6->_lowBalanceNotificationEnabled = [v4 decodeBoolForKey:@"lowBalanceNotificationEnabled"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenValidityStartDate"];
    shinkansenValidityStartDate = v6->_shinkansenValidityStartDate;
    v6->_shinkansenValidityStartDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenValidityTerm"];
    shinkansenValidityTerm = v6->_shinkansenValidityTerm;
    v6->_shinkansenValidityTerm = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenOriginStation"];
    shinkansenOriginStationCode = v6->_shinkansenOriginStationCode;
    v6->_shinkansenOriginStationCode = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenDestinationStation"];
    shinkansenDestinationStationCode = v6->_shinkansenDestinationStationCode;
    v6->_shinkansenDestinationStationCode = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenDepartureTime"];
    shinkansenDepartureTime = v6->_shinkansenDepartureTime;
    v6->_shinkansenDepartureTime = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenArrivalTime"];
    shinkansenArrivalTime = v6->_shinkansenArrivalTime;
    v6->_shinkansenArrivalTime = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenTrainName"];
    shinkansenTrainName = v6->_shinkansenTrainName;
    v6->_shinkansenTrainName = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenCarNumber"];
    shinkansenCarNumber = v6->_shinkansenCarNumber;
    v6->_shinkansenCarNumber = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSeatRow"];
    shinkansenSeatRow = v6->_shinkansenSeatRow;
    v6->_shinkansenSeatRow = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSeatNumber"];
    shinkansenSeatNumber = v6->_shinkansenSeatNumber;
    v6->_shinkansenSeatNumber = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondaryOriginStation"];
    shinkansenSecondaryOriginStationCode = v6->_shinkansenSecondaryOriginStationCode;
    v6->_shinkansenSecondaryOriginStationCode = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondaryDestinationStation"];
    shinkansenSecondaryDestinationStationCode = v6->_shinkansenSecondaryDestinationStationCode;
    v6->_shinkansenSecondaryDestinationStationCode = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondaryDepartureTime"];
    shinkansenSecondaryDepartureTime = v6->_shinkansenSecondaryDepartureTime;
    v6->_shinkansenSecondaryDepartureTime = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondaryArrivalTime"];
    shinkansenSecondaryArrivalTime = v6->_shinkansenSecondaryArrivalTime;
    v6->_shinkansenSecondaryArrivalTime = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondaryTrainName"];
    shinkansenSecondaryTrainName = v6->_shinkansenSecondaryTrainName;
    v6->_shinkansenSecondaryTrainName = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondaryCarNumber"];
    shinkansenSecondaryCarNumber = v6->_shinkansenSecondaryCarNumber;
    v6->_shinkansenSecondaryCarNumber = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondarySeatRow"];
    shinkansenSecondarySeatRow = v6->_shinkansenSecondarySeatRow;
    v6->_shinkansenSecondarySeatRow = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondarySeatNumber"];
    shinkansenSecondarySeatNumber = v6->_shinkansenSecondarySeatNumber;
    v6->_shinkansenSecondarySeatNumber = v44;

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"greenCarOriginStation"];
    greenCarOriginStationCode = v6->_greenCarOriginStationCode;
    v6->_greenCarOriginStationCode = v46;

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"greenCarDestinationStation"];
    greenCarDestinationStationCode = v6->_greenCarDestinationStationCode;
    v6->_greenCarDestinationStationCode = v48;

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"greenCarValidityStartDate"];
    greenCarValidityStartDate = v6->_greenCarValidityStartDate;
    v6->_greenCarValidityStartDate = v50;

    v6->_hasShinkansenTicket = [v4 decodeBoolForKey:@"hasShinkansenTicket"];
    v6->_hasGreenCarTicket = [v4 decodeBoolForKey:@"hasGreenCarTicket"];
    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenOriginStationString"];
    shinkansenOriginStationString = v6->_shinkansenOriginStationString;
    v6->_shinkansenOriginStationString = v52;

    v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenDestinationStationString"];
    shinkansenDestinationStationString = v6->_shinkansenDestinationStationString;
    v6->_shinkansenDestinationStationString = v54;

    v56 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondaryOriginStationString"];
    shinkansenSecondaryOriginStationString = v6->_shinkansenSecondaryOriginStationString;
    v6->_shinkansenSecondaryOriginStationString = v56;

    v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondaryDestinationStationString"];
    shinkansenSecondaryDestinationStationString = v6->_shinkansenSecondaryDestinationStationString;
    v6->_shinkansenSecondaryDestinationStationString = v58;

    v60 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"greenCarOriginStationString"];
    greenCarOriginStationString = v6->_greenCarOriginStationString;
    v6->_greenCarOriginStationString = v60;

    v62 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"greenCarDestinationStationString"];
    greenCarDestinationStationString = v6->_greenCarDestinationStationString;
    v6->_greenCarDestinationStationString = v62;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKFelicaTransitAppletState;
  v4 = a3;
  [(PKTransitAppletState *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[PKFelicaTransitAppletState isInShinkansenStation](self forKey:{"isInShinkansenStation", v5.receiver, v5.super_class), @"inShinkansenStation"}];
  [v4 encodeBool:self->_shinkansenTicketActive forKey:@"shinkansenTicketActive"];
  [v4 encodeBool:self->_greenCarTicketUsed forKey:@"greenCarTicketUsed"];
  [v4 encodeBool:self->_balanceAllowedForCommute forKey:@"balanceAllowedForCommute"];
  [v4 encodeBool:self->_lowBalanceNotificationEnabled forKey:@"lowBalanceNotificationEnabled"];
  [v4 encodeObject:self->_shinkansenValidityStartDate forKey:@"shinkansenValidityStartDate"];
  [v4 encodeObject:self->_shinkansenValidityTerm forKey:@"shinkansenValidityTerm"];
  [v4 encodeObject:self->_shinkansenOriginStationCode forKey:@"shinkansenOriginStation"];
  [v4 encodeObject:self->_shinkansenDestinationStationCode forKey:@"shinkansenDestinationStation"];
  [v4 encodeObject:self->_shinkansenDepartureTime forKey:@"shinkansenDepartureTime"];
  [v4 encodeObject:self->_shinkansenArrivalTime forKey:@"shinkansenArrivalTime"];
  [v4 encodeObject:self->_shinkansenTrainName forKey:@"shinkansenTrainName"];
  [v4 encodeObject:self->_shinkansenCarNumber forKey:@"shinkansenCarNumber"];
  [v4 encodeObject:self->_shinkansenSeatRow forKey:@"shinkansenSeatRow"];
  [v4 encodeObject:self->_shinkansenSeatNumber forKey:@"shinkansenSeatNumber"];
  [v4 encodeObject:self->_shinkansenSecondaryOriginStationCode forKey:@"shinkansenSecondaryOriginStation"];
  [v4 encodeObject:self->_shinkansenSecondaryDestinationStationCode forKey:@"shinkansenSecondaryDestinationStation"];
  [v4 encodeObject:self->_shinkansenSecondaryDepartureTime forKey:@"shinkansenSecondaryDepartureTime"];
  [v4 encodeObject:self->_shinkansenSecondaryArrivalTime forKey:@"shinkansenSecondaryArrivalTime"];
  [v4 encodeObject:self->_shinkansenSecondaryTrainName forKey:@"shinkansenSecondaryTrainName"];
  [v4 encodeObject:self->_shinkansenSecondaryCarNumber forKey:@"shinkansenSecondaryCarNumber"];
  [v4 encodeObject:self->_shinkansenSecondarySeatRow forKey:@"shinkansenSecondarySeatRow"];
  [v4 encodeObject:self->_shinkansenSecondarySeatNumber forKey:@"shinkansenSecondarySeatNumber"];
  [v4 encodeObject:self->_greenCarOriginStationCode forKey:@"greenCarOriginStation"];
  [v4 encodeObject:self->_greenCarDestinationStationCode forKey:@"greenCarDestinationStation"];
  [v4 encodeObject:self->_greenCarValidityStartDate forKey:@"greenCarValidityStartDate"];
  [v4 encodeBool:self->_hasShinkansenTicket forKey:@"hasShinkansenTicket"];
  [v4 encodeBool:self->_hasGreenCarTicket forKey:@"hasGreenCarTicket"];
  [v4 encodeObject:self->_shinkansenOriginStationString forKey:@"shinkansenOriginStationString"];
  [v4 encodeObject:self->_shinkansenDestinationStationString forKey:@"shinkansenDestinationStationString"];
  [v4 encodeObject:self->_shinkansenSecondaryOriginStationString forKey:@"shinkansenSecondaryOriginStationString"];
  [v4 encodeObject:self->_shinkansenSecondaryDestinationStationString forKey:@"shinkansenSecondaryDestinationStationString"];
  [v4 encodeObject:self->_greenCarOriginStationString forKey:@"greenCarOriginStationString"];
  [v4 encodeObject:self->_greenCarDestinationStationString forKey:@"greenCarDestinationStationString"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PKFelicaTransitAppletState;
  v4 = [(PKTransitAppletState *)&v6 copyWithZone:a3];
  [v4 setShinkansenTicketActive:self->_shinkansenTicketActive];
  [v4 setGreenCarTicketUsed:self->_greenCarTicketUsed];
  [v4 setBalanceAllowedForCommute:self->_balanceAllowedForCommute];
  [v4 setLowBalanceNotificationEnabled:self->_lowBalanceNotificationEnabled];
  [v4 setShinkansenValidityStartDate:self->_shinkansenValidityStartDate];
  [v4 setShinkansenValidityTerm:self->_shinkansenValidityTerm];
  [v4 setShinkansenOriginStationCode:self->_shinkansenOriginStationCode];
  [v4 setShinkansenDestinationStationCode:self->_shinkansenDestinationStationCode];
  [v4 setShinkansenDepartureTime:self->_shinkansenDepartureTime];
  [v4 setShinkansenArrivalTime:self->_shinkansenArrivalTime];
  [v4 setShinkansenTrainName:self->_shinkansenTrainName];
  [v4 setShinkansenCarNumber:self->_shinkansenCarNumber];
  [v4 setShinkansenSeatRow:self->_shinkansenSeatRow];
  [v4 setShinkansenSeatNumber:self->_shinkansenSeatNumber];
  [v4 setShinkansenSecondaryOriginStationCode:self->_shinkansenSecondaryOriginStationCode];
  [v4 setShinkansenSecondaryDestinationStationCode:self->_shinkansenSecondaryDestinationStationCode];
  [v4 setShinkansenSecondaryDepartureTime:self->_shinkansenSecondaryDepartureTime];
  [v4 setShinkansenSecondaryArrivalTime:self->_shinkansenSecondaryArrivalTime];
  [v4 setShinkansenSecondaryTrainName:self->_shinkansenSecondaryTrainName];
  [v4 setShinkansenSecondaryCarNumber:self->_shinkansenSecondaryCarNumber];
  [v4 setShinkansenSecondarySeatRow:self->_shinkansenSecondarySeatRow];
  [v4 setShinkansenSecondarySeatNumber:self->_shinkansenSecondarySeatNumber];
  [v4 setGreenCarOriginStationCode:self->_greenCarOriginStationCode];
  [v4 setGreenCarDestinationStationCode:self->_greenCarDestinationStationCode];
  [v4 setGreenCarValidityStartDate:self->_greenCarValidityStartDate];
  [v4 setHasShinkansenTicket:self->_hasShinkansenTicket];
  [v4 setHasGreenCarTicket:self->_hasGreenCarTicket];
  [v4 setShinkansenOriginStationString:self->_shinkansenOriginStationString];
  [v4 setShinkansenDestinationStationString:self->_shinkansenDestinationStationString];
  [v4 setShinkansenSecondaryOriginStationString:self->_shinkansenSecondaryOriginStationString];
  [v4 setShinkansenSecondaryDestinationStationString:self->_shinkansenSecondaryDestinationStationString];
  [v4 setGreenCarOriginStationString:self->_greenCarOriginStationString];
  [v4 setGreenCarDestinationStationString:self->_greenCarDestinationStationString];
  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKFelicaTransitAppletState;
  [(PKFelicaTransitAppletState *)&v2 dealloc];
}

- (BOOL)isInStation
{
  v2 = [(PKTransitAppletState *)self enrouteTransitTypes];
  v3 = [v2 containsObject:@"Transit"];

  return v3;
}

- (BOOL)isInShinkansenStation
{
  v2 = [(PKTransitAppletState *)self enrouteTransitTypes];
  v3 = [v2 containsObject:@"TransitTrainShinkansen"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
    goto LABEL_13;
  }

  v5 = v4;
  v62.receiver = self;
  v62.super_class = PKFelicaTransitAppletState;
  if (![(PKTransitAppletState *)&v62 isEqual:v5]|| self->_shinkansenTicketActive != *(v5 + 88) || self->_greenCarTicketUsed != *(v5 + 89) || self->_balanceAllowedForCommute != *(v5 + 90) || self->_lowBalanceNotificationEnabled != *(v5 + 91))
  {
    goto LABEL_13;
  }

  shinkansenValidityStartDate = self->_shinkansenValidityStartDate;
  v7 = v5[12];
  if (shinkansenValidityStartDate && v7)
  {
    if (([(NSNumber *)shinkansenValidityStartDate isEqual:?]& 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (shinkansenValidityStartDate != v7)
  {
    goto LABEL_13;
  }

  shinkansenValidityTerm = self->_shinkansenValidityTerm;
  v11 = v5[13];
  if (shinkansenValidityTerm && v11)
  {
    if (([(NSNumber *)shinkansenValidityTerm isEqual:?]& 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (shinkansenValidityTerm != v11)
  {
    goto LABEL_13;
  }

  shinkansenOriginStationCode = self->_shinkansenOriginStationCode;
  v13 = v5[14];
  if (shinkansenOriginStationCode && v13)
  {
    if (([(NSData *)shinkansenOriginStationCode isEqual:?]& 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (shinkansenOriginStationCode != v13)
  {
    goto LABEL_13;
  }

  shinkansenDestinationStationCode = self->_shinkansenDestinationStationCode;
  v15 = v5[15];
  if (shinkansenDestinationStationCode && v15)
  {
    if (([(NSData *)shinkansenDestinationStationCode isEqual:?]& 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (shinkansenDestinationStationCode != v15)
  {
    goto LABEL_13;
  }

  shinkansenDepartureTime = self->_shinkansenDepartureTime;
  v17 = v5[16];
  if (shinkansenDepartureTime && v17)
  {
    if (([(NSNumber *)shinkansenDepartureTime isEqual:?]& 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (shinkansenDepartureTime != v17)
  {
    goto LABEL_13;
  }

  shinkansenArrivalTime = self->_shinkansenArrivalTime;
  v19 = v5[17];
  if (shinkansenArrivalTime && v19)
  {
    if (([(NSNumber *)shinkansenArrivalTime isEqual:?]& 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (shinkansenArrivalTime != v19)
  {
    goto LABEL_13;
  }

  shinkansenTrainName = self->_shinkansenTrainName;
  v21 = v5[18];
  if (shinkansenTrainName && v21)
  {
    if (([(NSString *)shinkansenTrainName isEqual:?]& 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (shinkansenTrainName != v21)
  {
    goto LABEL_13;
  }

  shinkansenCarNumber = self->_shinkansenCarNumber;
  v23 = v5[19];
  if (shinkansenCarNumber && v23)
  {
    if (([(NSNumber *)shinkansenCarNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (shinkansenCarNumber != v23)
  {
    goto LABEL_13;
  }

  shinkansenSeatRow = self->_shinkansenSeatRow;
  v25 = v5[20];
  if (shinkansenSeatRow && v25)
  {
    if (([(NSNumber *)shinkansenSeatRow isEqual:?]& 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (shinkansenSeatRow != v25)
  {
    goto LABEL_13;
  }

  shinkansenSeatNumber = self->_shinkansenSeatNumber;
  v27 = v5[21];
  if (shinkansenSeatNumber && v27)
  {
    if (([(NSNumber *)shinkansenSeatNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (shinkansenSeatNumber != v27)
  {
    goto LABEL_13;
  }

  shinkansenSecondaryOriginStationCode = self->_shinkansenSecondaryOriginStationCode;
  v29 = v5[22];
  if (shinkansenSecondaryOriginStationCode && v29)
  {
    if (([(NSData *)shinkansenSecondaryOriginStationCode isEqual:?]& 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (shinkansenSecondaryOriginStationCode != v29)
  {
    goto LABEL_13;
  }

  shinkansenSecondaryDestinationStationCode = self->_shinkansenSecondaryDestinationStationCode;
  v31 = v5[23];
  if (shinkansenSecondaryDestinationStationCode && v31)
  {
    if (([(NSData *)shinkansenSecondaryDestinationStationCode isEqual:?]& 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (shinkansenSecondaryDestinationStationCode != v31)
  {
    goto LABEL_13;
  }

  shinkansenSecondaryDepartureTime = self->_shinkansenSecondaryDepartureTime;
  v33 = v5[24];
  if (shinkansenSecondaryDepartureTime && v33)
  {
    if (([(NSNumber *)shinkansenSecondaryDepartureTime isEqual:?]& 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (shinkansenSecondaryDepartureTime != v33)
  {
    goto LABEL_13;
  }

  shinkansenSecondaryArrivalTime = self->_shinkansenSecondaryArrivalTime;
  v35 = v5[25];
  if (shinkansenSecondaryArrivalTime && v35)
  {
    if (([(NSNumber *)shinkansenSecondaryArrivalTime isEqual:?]& 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (shinkansenSecondaryArrivalTime != v35)
  {
    goto LABEL_13;
  }

  shinkansenSecondaryTrainName = self->_shinkansenSecondaryTrainName;
  v37 = v5[26];
  if (shinkansenSecondaryTrainName && v37)
  {
    if (([(NSString *)shinkansenSecondaryTrainName isEqual:?]& 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (shinkansenSecondaryTrainName != v37)
  {
    goto LABEL_13;
  }

  shinkansenSecondaryCarNumber = self->_shinkansenSecondaryCarNumber;
  v39 = v5[27];
  if (shinkansenSecondaryCarNumber && v39)
  {
    if (([(NSNumber *)shinkansenSecondaryCarNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (shinkansenSecondaryCarNumber != v39)
  {
    goto LABEL_13;
  }

  shinkansenSecondarySeatRow = self->_shinkansenSecondarySeatRow;
  v41 = v5[28];
  if (shinkansenSecondarySeatRow && v41)
  {
    if (([(NSNumber *)shinkansenSecondarySeatRow isEqual:?]& 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (shinkansenSecondarySeatRow != v41)
  {
    goto LABEL_13;
  }

  shinkansenSecondarySeatNumber = self->_shinkansenSecondarySeatNumber;
  v43 = v5[29];
  if (shinkansenSecondarySeatNumber && v43)
  {
    if (([(NSNumber *)shinkansenSecondarySeatNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (shinkansenSecondarySeatNumber != v43)
  {
    goto LABEL_13;
  }

  greenCarOriginStationCode = self->_greenCarOriginStationCode;
  v45 = v5[30];
  if (greenCarOriginStationCode && v45)
  {
    if (([(NSData *)greenCarOriginStationCode isEqual:?]& 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (greenCarOriginStationCode != v45)
  {
    goto LABEL_13;
  }

  greenCarDestinationStationCode = self->_greenCarDestinationStationCode;
  v47 = v5[31];
  if (greenCarDestinationStationCode && v47)
  {
    if (([(NSData *)greenCarDestinationStationCode isEqual:?]& 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (greenCarDestinationStationCode != v47)
  {
    goto LABEL_13;
  }

  greenCarValidityStartDate = self->_greenCarValidityStartDate;
  v49 = v5[32];
  if (greenCarValidityStartDate && v49)
  {
    if (([(NSNumber *)greenCarValidityStartDate isEqual:?]& 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (greenCarValidityStartDate != v49)
  {
    goto LABEL_13;
  }

  if (self->_hasShinkansenTicket != *(v5 + 92) || self->_hasGreenCarTicket != *(v5 + 93))
  {
    goto LABEL_13;
  }

  shinkansenOriginStationString = self->_shinkansenOriginStationString;
  v51 = v5[33];
  if (shinkansenOriginStationString && v51)
  {
    if (([(NSString *)shinkansenOriginStationString isEqual:?]& 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (shinkansenOriginStationString != v51)
  {
    goto LABEL_13;
  }

  shinkansenDestinationStationString = self->_shinkansenDestinationStationString;
  v53 = v5[34];
  if (shinkansenDestinationStationString && v53)
  {
    if (([(NSString *)shinkansenDestinationStationString isEqual:?]& 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (shinkansenDestinationStationString != v53)
  {
    goto LABEL_13;
  }

  shinkansenSecondaryOriginStationString = self->_shinkansenSecondaryOriginStationString;
  v55 = v5[35];
  if (shinkansenSecondaryOriginStationString && v55)
  {
    if (([(NSString *)shinkansenSecondaryOriginStationString isEqual:?]& 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (shinkansenSecondaryOriginStationString != v55)
  {
    goto LABEL_13;
  }

  shinkansenSecondaryDestinationStationString = self->_shinkansenSecondaryDestinationStationString;
  v57 = v5[36];
  if (shinkansenSecondaryDestinationStationString && v57)
  {
    if (([(NSString *)shinkansenSecondaryDestinationStationString isEqual:?]& 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (shinkansenSecondaryDestinationStationString != v57)
  {
    goto LABEL_13;
  }

  greenCarOriginStationString = self->_greenCarOriginStationString;
  v59 = v5[37];
  if (greenCarOriginStationString && v59)
  {
    if (([(NSString *)greenCarOriginStationString isEqual:?]& 1) != 0)
    {
      goto LABEL_143;
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if (greenCarOriginStationString != v59)
  {
    goto LABEL_13;
  }

LABEL_143:
  greenCarDestinationStationString = self->_greenCarDestinationStationString;
  v61 = v5[38];
  if (greenCarDestinationStationString && v61)
  {
    v8 = [(NSString *)greenCarDestinationStationString isEqual:?];
  }

  else
  {
    v8 = greenCarDestinationStationString == v61;
  }

LABEL_14:

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(4 * ((2 * self->_lowBalanceNotificationEnabled) | (4 * ((2 * self->_greenCarTicketUsed) | (4 * self->_shinkansenTicketActive) | self->_balanceAllowedForCommute)) | self->_hasGreenCarTicket)) | (2 * self->_hasShinkansenTicket)];
  v4 = [v3 hash];

  v27.receiver = self;
  v27.super_class = PKFelicaTransitAppletState;
  v5 = [(PKTransitAppletState *)&v27 hash];
  v6 = v5 ^ [(NSNumber *)self->_shinkansenValidityStartDate hash];
  v7 = v6 ^ [(NSNumber *)self->_shinkansenValidityTerm hash];
  v8 = v7 ^ [(NSData *)self->_shinkansenOriginStationCode hash];
  v9 = v8 ^ [(NSData *)self->_shinkansenDestinationStationCode hash];
  v10 = v9 ^ [(NSNumber *)self->_shinkansenDepartureTime hash];
  v11 = v10 ^ [(NSNumber *)self->_shinkansenArrivalTime hash];
  v12 = v11 ^ [(NSString *)self->_shinkansenTrainName hash];
  v13 = v12 ^ [(NSNumber *)self->_shinkansenCarNumber hash];
  v14 = v13 ^ [(NSNumber *)self->_shinkansenSeatRow hash];
  v15 = v14 ^ [(NSNumber *)self->_shinkansenSeatNumber hash];
  v16 = v15 ^ [(NSData *)self->_shinkansenSecondaryOriginStationCode hash];
  v17 = v16 ^ [(NSData *)self->_shinkansenSecondaryDestinationStationCode hash]^ v4;
  v18 = [(NSNumber *)self->_shinkansenSecondaryDepartureTime hash];
  v19 = v18 ^ [(NSNumber *)self->_shinkansenSecondaryArrivalTime hash];
  v20 = v19 ^ [(NSString *)self->_shinkansenSecondaryTrainName hash];
  v21 = v20 ^ [(NSNumber *)self->_shinkansenSecondaryCarNumber hash];
  v22 = v21 ^ [(NSNumber *)self->_shinkansenSecondarySeatRow hash];
  v23 = v22 ^ [(NSNumber *)self->_shinkansenSecondarySeatNumber hash];
  v24 = v23 ^ [(NSData *)self->_greenCarOriginStationCode hash];
  v25 = v24 ^ [(NSData *)self->_greenCarDestinationStationCode hash];
  return v17 ^ v25 ^ [(NSNumber *)self->_greenCarValidityStartDate hash];
}

- (id)processUpdateWithAppletHistory:(id)a3 concreteTransactions:(id *)a4 ephemeralTransaction:(id *)a5
{
  *(&v79 + 1) = a4;
  v84 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(PKFelicaTransitAppletState *)self copy];
  v9 = [v7 source];
  [v7 sanitizeValuesWithState:self];
  [v8 setBlacklisted:{objc_msgSend(v7, "isBlacklisted")}];
  [v8 setShinkansenTicketActive:{objc_msgSend(v7, "isShinkansenTicketActive")}];
  [v8 setGreenCarTicketUsed:{objc_msgSend(v7, "isGreenCarTicketUsed")}];
  [v8 setBalanceAllowedForCommute:{objc_msgSend(v7, "isBalanceAllowedForCommute")}];
  [v8 setLowBalanceNotificationEnabled:{objc_msgSend(v7, "isLowBalanceNotificationEnabled")}];
  v10 = [v8 enrouteTransitTypes];
  v11 = [v7 enrouteTransitTypes];
  v78 = self;
  v12 = [(PKTransitAppletState *)self updatedEnrouteTransitTypesFromExistingTypes:v10 newTypes:v11];
  [v8 setEnrouteTransitTypes:v12];

  v13 = [v7 shinkansenTicket];
  v14 = v13;
  *&v79 = a5;
  if (v13 || v9 == 1)
  {
    v17 = [v13 validityStartDate];
    [v8 setShinkansenValidityStartDate:v17];

    v18 = [v14 validityTerm];
    [v8 setShinkansenValidityTerm:v18];

    v19 = [v14 trains];
    v20 = [v19 count];
    if (v20)
    {
      v21 = [v19 objectAtIndexedSubscript:0];
    }

    else
    {
      v21 = 0;
    }

    v77 = v9;
    v22 = [v21 departureTime];
    [v8 setShinkansenDepartureTime:v22];

    v23 = [v21 arrivalTime];
    [v8 setShinkansenArrivalTime:v23];

    v24 = [v21 trainName];
    [v8 setShinkansenTrainName:v24];

    v25 = [v21 carNumber];
    [v8 setShinkansenCarNumber:v25];

    v26 = [v21 seatRow];
    [v8 setShinkansenSeatRow:v26];

    v27 = [v21 seatNumber];
    [v8 setShinkansenSeatNumber:v27];

    v28 = [v21 originStation];
    v29 = [v8 shinkansenOriginStationCode];
    v30 = v29;
    v16 = v28 != 0;
    if (v28 && v29)
    {
      v31 = [v28 isEqual:v29];

      if (v31)
      {
LABEL_10:
        v16 = 0;
LABEL_13:
        v32 = [v21 destinationStation];

        v33 = [v8 shinkansenDestinationStationCode];
        v34 = v33;
        if (v32 && v33)
        {
          v35 = [v32 isEqual:v33];

          if (v35)
          {
            goto LABEL_20;
          }
        }

        else
        {

          if (v32 == v34)
          {
            goto LABEL_20;
          }
        }

        [v8 setShinkansenDestinationStationCode:v32];
        [v8 setShinkansenDestinationStationString:0];
        if (v32)
        {
          v16 = 1;
        }

LABEL_20:
        if (v20 < 2)
        {
          v36 = 0;
        }

        else
        {
          v36 = [v19 objectAtIndexedSubscript:1];
        }

        v37 = [v36 departureTime];
        [v8 setShinkansenSecondaryDepartureTime:v37];

        v38 = [v36 arrivalTime];
        [v8 setShinkansenSecondaryArrivalTime:v38];

        v39 = [v36 trainName];
        [v8 setShinkansenSecondaryTrainName:v39];

        v40 = [v36 carNumber];
        [v8 setShinkansenSecondaryCarNumber:v40];

        v41 = [v36 seatRow];
        [v8 setShinkansenSecondarySeatRow:v41];

        v42 = [v36 seatNumber];
        [v8 setShinkansenSecondarySeatNumber:v42];

        v43 = [v36 originStation];

        v44 = [v8 shinkansenSecondaryOriginStationCode];
        v45 = v44;
        if (v43 && v44)
        {
          v46 = [v43 isEqual:v44];

          if (v46)
          {
            goto LABEL_30;
          }
        }

        else
        {

          if (v43 == v45)
          {
            goto LABEL_30;
          }
        }

        [v8 setShinkansenSecondaryOriginStationCode:v43];
        [v8 setShinkansenSecondaryOriginStationString:0];
        if (v43)
        {
          v16 = 1;
        }

LABEL_30:
        v15 = [v36 destinationStation];

        v47 = [v8 shinkansenSecondaryDestinationStationCode];
        v48 = v47;
        v9 = v77;
        if (v15 && v47)
        {
          v49 = [v15 isEqual:v47];

          if (v49)
          {
            goto LABEL_37;
          }
        }

        else
        {

          if (v15 == v48)
          {
LABEL_37:
            [v8 setHasShinkansenTicket:v14 != 0];

            goto LABEL_38;
          }
        }

        [v8 setShinkansenSecondaryDestinationStationCode:v15];
        [v8 setShinkansenSecondaryDestinationStationString:0];
        if (v15)
        {
          v16 = 1;
        }

        goto LABEL_37;
      }
    }

    else
    {

      if (v28 == v30)
      {
        goto LABEL_10;
      }
    }

    [v8 setShinkansenOriginStationCode:v28];
    [v8 setShinkansenOriginStationString:0];
    goto LABEL_13;
  }

  v15 = 0;
  v16 = 0;
LABEL_38:
  v50 = [v7 greenCarTicket];
  v51 = v50;
  if (v50 || v9 == 1)
  {
    v52 = [v50 originStation];

    v53 = [v8 greenCarOriginStationCode];
    v54 = v53;
    if (v52 && v53)
    {
      v55 = [v52 isEqual:v53];

      if (v55)
      {
        goto LABEL_47;
      }
    }

    else
    {

      if (v52 == v54)
      {
        goto LABEL_47;
      }
    }

    [v8 setGreenCarOriginStationCode:v52];
    [v8 setGreenCarOriginStationString:0];
    if (v52)
    {
      v16 = 1;
    }

LABEL_47:
    v15 = [v51 destinationStation];

    v56 = [v8 greenCarDestinationStationCode];
    v57 = v56;
    if (v15 && v56)
    {
      v58 = [v15 isEqual:v56];

      if (v58)
      {
        goto LABEL_54;
      }
    }

    else
    {

      if (v15 == v57)
      {
LABEL_54:
        v59 = [v51 validityStartDate];
        [v8 setGreenCarValidityStartDate:v59];

        [v8 setHasGreenCarTicket:v51 != 0];
        goto LABEL_55;
      }
    }

    [v8 setGreenCarDestinationStationCode:v15];
    [v8 setGreenCarDestinationStationString:0];
    if (v15)
    {
      v16 = 1;
    }

    goto LABEL_54;
  }

LABEL_55:
  v60 = [v8 shinkansenOriginStationCode];
  if (v60)
  {
    v61 = 0;
  }

  else
  {
    v62 = [v8 shinkansenDestinationStationCode];
    if (v62)
    {
      v61 = 0;
    }

    else
    {
      v63 = [v8 shinkansenSecondaryOriginStationCode];
      if (v63)
      {
        v61 = 0;
      }

      else
      {
        v64 = [v8 shinkansenSecondaryDestinationStationCode];
        if (v64)
        {
          v61 = 0;
        }

        else
        {
          v65 = [v8 greenCarOriginStationCode];
          if (v65)
          {
            v61 = 0;
          }

          else
          {
            v66 = [v8 greenCarDestinationStationCode];
            v61 = v66 == 0;

            v65 = 0;
          }

          v64 = 0;
        }
      }
    }
  }

  if (v61 || v16)
  {
    v67 = !v61;
  }

  else
  {
    v67 = [v8 needsStationProcessing];
  }

  [v8 setNeedsStationProcessing:v67];
  v68 = [v7 balance];
  [v8 setBalance:v68];

  v69 = [v7 historyRecords];
  if ([v69 count])
  {
    v70 = [v69 objectAtIndexedSubscript:0];
    v71 = [v70 historySequenceNumber];
    if (v71)
    {
      [v8 setHistorySequenceNumber:v71];
    }
  }

  if (v79 != 0 && ![(PKFelicaTransitAppletState *)v78 isEqual:v8])
  {
    [(PKFelicaTransitAppletState *)v78 _resolveTransactionsFromState:v78 toState:v8 withHistoryRecords:v69 concreteTransactions:*(&v79 + 1) ephemeralTransaction:v79];
    v72 = PKLogFacilityTypeGetObject(0xDuLL);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      if ([v8 isInStation])
      {
        v73 = @"inStation ";
      }

      else
      {
        v73 = &stru_1F227FD28;
      }

      v74 = [v8 isInShinkansenStation];
      v75 = @"inShinkansenStation";
      if (!v74)
      {
        v75 = &stru_1F227FD28;
      }

      *buf = 138412546;
      v81 = v73;
      v82 = 2112;
      v83 = v75;
      _os_log_impl(&dword_1AD337000, v72, OS_LOG_TYPE_DEFAULT, "Resolved State is: %@%@", buf, 0x16u);
    }
  }

  return v8;
}

- (void)_resolveTransactionsFromState:(id)a3 toState:(id)a4 withHistoryRecords:(id)a5 concreteTransactions:(id *)a6 ephemeralTransaction:(id *)a7
{
  v78 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [v12 historySequenceNumber];
  v16 = [v15 unsignedIntegerValue];
  v69 = v15;
  if (v15 && ([v13 historySequenceNumber], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "unsignedIntegerValue"), v17, v16 == v18))
  {
    v19 = 0;
  }

  else
  {
    v62 = v13;
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v21 = v14;
    v22 = [v21 countByEnumeratingWithState:&v73 objects:v77 count:16];
    if (v22)
    {
      v23 = v22;
      v61 = self;
      v63 = a6;
      v65 = a7;
      v67 = v14;
      v24 = 0;
      v25 = *v74;
      while (2)
      {
        v26 = 0;
        v27 = v24;
        do
        {
          if (*v74 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v28 = *(*(&v73 + 1) + 8 * v26);
          v24 = [v28 historySequenceNumber];
          v29 = [v24 unsignedIntegerValue];
          if (v69 && v16 == v29)
          {

            v24 = v27;
            goto LABEL_18;
          }

          if (!v27 || v29 != [v27 unsignedIntegerValue])
          {
            [v20 addObject:v28];
          }

          ++v26;
          v27 = v24;
        }

        while (v23 != v26);
        v23 = [v21 countByEnumeratingWithState:&v73 objects:v77 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }

LABEL_18:

      a7 = v65;
      v14 = v67;
      a6 = v63;
      self = v61;
    }

    v30 = [v20 reverseObjectEnumerator];
    v19 = [v30 allObjects];

    v13 = v62;
  }

  v72 = 0;
  v31 = [v19 count];
  if (a6)
  {
    v32 = v31;
    v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v31 + 2];
    if (v32)
    {
      v64 = a6;
      v66 = a7;
      v68 = v14;
      v34 = [v12 balance];
      v35 = self;
      v36 = [v34 unsignedLongLongValue];

      v37 = 0;
      v71 = v36;
      v38 = v35;
      while (v37 < v32)
      {
        v70 = 0;
        v39 = [(PKFelicaTransitAppletState *)v38 _concreteTransactionForRecordAtIndex:v37 withBalance:&v71 historyRecords:v19 terminalState:v13 numberProcessed:&v70 exitedShinkansen:&v72];
        if (v39)
        {
          [v33 addObject:v39];
        }

        v40 = v70;
        if (!v70)
        {

          break;
        }

        v41 = v32 + ~v37;

        if (v40 <= v41)
        {
          v42 = v40;
        }

        else
        {
          v42 = 0;
        }

        v37 += v42;
        if (v40 > v41)
        {
          break;
        }
      }

      a7 = v66;
      v14 = v68;
      a6 = v64;
    }

    v43 = [v33 count];
    v44 = [v12 isInShinkansenStation];
    if (v44 == [v13 isInShinkansenStation] || (v72 & 1) != 0 || objc_msgSend(v13, "isInShinkansenStation"))
    {
      v45 = [v12 isInStation];
      if (v45 == [v13 isInStation] || (objc_msgSend(v13, "isInStation") & 1) != 0 || v43)
      {
        goto LABEL_43;
      }

      v46 = 1;
    }

    else
    {
      v46 = 257;
    }

    v47 = [PKPaymentTransaction paymentTransactionWithSource:1];
    [v47 setTransactionType:2];
    [v47 setTransitType:v46];
    [v47 setOriginatedByDevice:1];
    [v33 addObject:v47];

LABEL_43:
    v48 = [v12 isGreenCarTicketUsed];
    if (v48 != [v13 isGreenCarTicketUsed] && objc_msgSend(v13, "isGreenCarTicketUsed"))
    {
      v49 = [PKPaymentTransaction paymentTransactionWithSource:1];
      [v49 setTransactionType:2];
      [v49 setTransitType:1025];
      [v49 setOriginatedByDevice:1];
      [v33 addObject:v49];
    }

    if (![v33 count])
    {

      v33 = 0;
    }

    v50 = [v33 copy];
    v51 = *a6;
    *a6 = v50;
  }

  if (a7)
  {
    v52 = [v12 enrouteTransitTypes];
    v53 = [v52 lastObject];

    v54 = [v13 enrouteTransitTypes];
    v55 = [v54 lastObject];

    if (v55 && ([v55 isEqual:v53] & 1) == 0)
    {
      v57 = a7;
      v58 = PKPaymentTransactionTransitSubtypeForTransactionDetailString(v55);
      if (v58)
      {
        v59 = v58;
        v56 = [PKPaymentTransaction paymentTransactionWithSource:1];
        [v56 setTransactionType:2];
        [v56 setTransitType:v59];
        [v56 setEnRoute:1];
        [v56 setOriginatedByDevice:1];
      }

      else
      {
        v56 = 0;
      }

      a7 = v57;
    }

    else
    {
      v56 = 0;
    }

    v60 = *a7;
    *a7 = v56;
  }
}

- (id)_concreteTransactionForRecordAtIndex:(unint64_t)a3 withBalance:(unsigned int *)a4 historyRecords:(id)a5 terminalState:(id)a6 numberProcessed:(unint64_t *)a7 exitedShinkansen:(BOOL *)a8
{
  v91 = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = a6;
  v13 = [v11 count];
  v14 = [v11 objectAtIndexedSubscript:a3];
  v15 = v14;
  v73 = v11;
  if (a3 + 1 >= v13)
  {
    v24 = 0;
    v26 = 0;
    v27 = 0;
    v23 = 0;
    v71 = 1;
    v28 = a4;
    goto LABEL_75;
  }

  v76 = a8;
  v79 = v12;
  v16 = v14;
  v17 = [v11 objectAtIndexedSubscript:a3 + 1];
  v18 = FelicaTransitHistoryRecordFromFelicaRecord(v16);
  v20 = v19;
  v81 = v17;
  v21 = FelicaTransitHistoryRecordFromFelicaRecord(v17);
  v23 = 0;
  v24 = 0;
  v25 = 1;
  if (v18 > 0x15u)
  {
    v26 = 0;
    v27 = 0;
    v15 = v16;
    v28 = a4;
    goto LABEL_74;
  }

  v26 = 0;
  v27 = 0;
  v15 = v16;
  v28 = a4;
  if (((1 << v18) & 0x380062) != 0)
  {
    v23 = 0;
    v24 = 0;
    v25 = 1;
    if (v21 > 0x15u)
    {
      goto LABEL_30;
    }

    v26 = 0;
    v27 = 0;
    v15 = v16;
    if (((1 << v21) & 0x380062) == 0)
    {
      goto LABEL_74;
    }

    v23 = 0;
    v24 = 0;
    v25 = 1;
    if (HIBYTE(v18) > 0x1Cu)
    {
      goto LABEL_30;
    }

    v26 = 0;
    v27 = 0;
    v15 = v16;
    if (((1 << SHIBYTE(v18)) & 0x12000090) == 0)
    {
      goto LABEL_74;
    }

    v23 = 0;
    v24 = 0;
    v70 = v21 >> 8;
    v25 = 1;
    if (BYTE1(v21) > 0x1Bu)
    {
LABEL_30:
      v26 = 0;
      v27 = 0;
      goto LABEL_31;
    }

    v26 = 0;
    v27 = 0;
    v15 = v16;
    if (((1 << SBYTE1(v21)) & 0x9000048) != 0)
    {
      v29 = v22;
      v30 = HIDWORD(v20);
      v31 = HIDWORD(v22);
      if (HIDWORD(v20) && v31 && v22 != v20)
      {
        v24 = 0;
        v26 = 0;
        v27 = 0;
        v23 = 0;
        v25 = 1;
LABEL_31:
        v15 = v16;
        goto LABEL_74;
      }

      v74 = v21;
      v32 = PKLogFacilityTypeGetObject(0xDuLL);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v16 historySequenceNumber];
        v34 = [v81 historySequenceNumber];
        *buf = 138413058;
        v84 = v33;
        v85 = 1024;
        v86 = HIBYTE(v18);
        v87 = 2112;
        v88 = v34;
        v89 = 1024;
        v90 = HIBYTE(v74);
        _os_log_impl(&dword_1AD337000, v32, OS_LOG_TYPE_DEFAULT, "Combining history records [{sequence number: %@, sector combination: %hhu}, {sequence number: %@, sector combination: %hhu}].", buf, 0x22u);
      }

      v35 = [v81 copy];
      if (v31)
      {
        v36 = v31;
      }

      else
      {
        v36 = 0;
      }

      if (v30)
      {
        v37 = v20;
      }

      else
      {
        LODWORD(v30) = 0;
        v37 = v29;
      }

      v38 = [MEMORY[0x1E696AD98] numberWithInt:v37];
      [v35 setAmountType:v38];

      v39 = [MEMORY[0x1E696AD98] numberWithInt:(v36 + v30)];
      v40 = PKDecimalAmountFromAmount(v39, @"JPY");
      [v35 setAmount:v40];

      v41 = v70;
      if (v74 <= 0x15u && ((1 << v74) & 0x380062) != 0 && v70 <= 0x1Bu && ((1 << v70) & 0xFFF7AF8) != 0)
      {
        v24 = [v81 endStation];
        v28 = a4;
        v42 = HIBYTE(v18);
        goto LABEL_28;
      }

      v28 = a4;
      v42 = HIBYTE(v18);
      if (IsStartStationAvailable(v74, v70))
      {
        v44 = v81;
      }

      else
      {
        if (v18 <= 0x15u && ((1 << v18) & 0x380062) != 0 && HIBYTE(v18) <= 0x1Cu && ((1 << SHIBYTE(v18)) & 0x1FFF7AF0) != 0)
        {
          v45 = [v16 endStation];
          goto LABEL_41;
        }

        if (!IsStartStationAvailable(v18, HIBYTE(v18)))
        {
          v24 = 0;
          goto LABEL_45;
        }

        v44 = v16;
      }

      v45 = [v44 startStation];
LABEL_41:
      v24 = v45;
LABEL_28:
      if (IsStartStationAvailable(v18, v42))
      {
        v43 = [v16 startStation];
        goto LABEL_51;
      }

LABEL_45:
      if (v18 <= 0x15u && ((1 << v18) & 0x380062) != 0 && v42 <= 0x1Cu && ((1 << v42) & 0x1FFF7AF0) != 0)
      {
        v46 = v16;
      }

      else
      {
        if (IsStartStationAvailable(v74, v70))
        {
          v26 = [v81 startStation];
          v41 = v70;
          if (!v24)
          {
            goto LABEL_147;
          }

          goto LABEL_52;
        }

        v26 = 0;
        if (v74 > 0x15u || ((1 << v74) & 0x380062) == 0)
        {
          v41 = v70;
          goto LABEL_147;
        }

        v26 = 0;
        v41 = v70;
        if (v70 > 0x1Bu || ((1 << v70) & 0xFFF7AF8) == 0)
        {
LABEL_147:
          if (v26 != v24)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }

        v46 = v81;
      }

      v43 = [v46 endStation];
LABEL_51:
      v26 = v43;
      if (!v24)
      {
        goto LABEL_147;
      }

LABEL_52:
      if (v26)
      {
        if (([v26 isEqual:v24] & 1) == 0)
        {
LABEL_55:
          v15 = v35;

          v23 = v18 == 19 || v74 == 19;
          if (v42 - 4) < 0x19u && ((0x1B5613Du >> (v42 - 4)))
          {
            v48 = 1;
          }

          else if ((v41 - 3) >= 0x19u)
          {
            v48 = 0;
          }

          else
          {
            v48 = qword_1ADB98F20[(v41 - 3)];
          }

          if ((HIBYTE(v74) - 23) >= 6u && (HIBYTE(v18) - 23) >= 6u)
          {
            v27 = v48;
          }

          else
          {
            v27 = v48 | 2;
          }

          v25 = 2;
          goto LABEL_74;
        }

LABEL_54:

        v24 = 0;
        goto LABEL_55;
      }

      goto LABEL_147;
    }
  }

LABEL_74:
  v71 = v25;

  v12 = v79;
  a8 = v76;
LABEL_75:
  v82 = v23;
  v50 = FelicaTransitHistoryRecordFromFelicaRecord(v15);
  v51 = v50;
  if ((v50 - 1) > 0x4Bu)
  {
    v52 = 0;
  }

  else
  {
    v52 = qword_1ADB98FE8[(v50 - 1)];
  }

  v77 = HIDWORD(v50);
  if (v28)
  {
    v75 = *v28;
  }

  else
  {
    v75 = 0;
  }

  v80 = v26;
  if (!v15)
  {
    if (v82)
    {
      v58 = 257;
    }

    else
    {
      v58 = v52;
    }

    v59 = 1;
    goto LABEL_124;
  }

  v53 = v50 >> 8;
  v54 = PKLogFacilityTypeGetObject(0xDuLL);
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    [v15 historySequenceNumber];
    v55 = a8;
    v57 = v56 = v12;
    *buf = 138412802;
    v84 = v57;
    v85 = 1024;
    v86 = v51;
    v87 = 1024;
    LODWORD(v88) = HIBYTE(v51);
    _os_log_impl(&dword_1AD337000, v54, OS_LOG_TYPE_DEFAULT, "Processing History Record: {sequence number: %@, type: %hhu, sector combination: %hhu}", buf, 0x18u);

    v12 = v56;
    a8 = v55;
    v28 = a4;
  }

  if (!(v24 | v80))
  {
    if (IsStartStationAvailable(v51, v53))
    {
      v80 = [v15 startStation];
    }

    else
    {
      v80 = 0;
    }

    v24 = 0;
    if (v51 <= 0x15u && ((1 << v51) & 0x380062) != 0)
    {
      v24 = 0;
      if (v53 <= 0x1Fu && ((1 << v53) & 0xDFFF7AFC) != 0)
      {
        v24 = [v15 endStation];
      }
    }
  }

  v60 = v82;
  if (v51 == 19)
  {
    v60 = 1;
  }

  v61 = v27 | 1;
  if (((1 << v53) & 0x9B5613D8) == 0)
  {
    v61 = v27;
  }

  if (v53 <= 0x1Fu)
  {
    v62 = v61;
  }

  else
  {
    v62 = v27;
  }

  if ((HIBYTE(v51) - 23) >= 6u)
  {
    v27 = v62;
  }

  else
  {
    v27 = v62 | 2;
  }

  v82 = v60;
  if (v60)
  {
    v58 = 257;
  }

  else
  {
    v58 = v52;
  }

  v59 = 1;
  if (v28 && v75 != v77)
  {
    if (!v58)
    {
      v59 = 0;
      if (v75 <= v77)
      {
        v58 = 513;
      }

      else
      {
        v58 = 515;
      }

      goto LABEL_124;
    }

    if (v75 <= v77)
    {
      if (v58 == 257)
      {
LABEL_118:
        if ([v12 isInShinkansenStation])
        {
          goto LABEL_119;
        }

        v59 = 0;
        v58 = 257;
        goto LABEL_124;
      }

      if (v58 == 1)
      {
        if ([v12 isInStation])
        {
LABEL_119:
          v59 = 0;
          v58 = 513;
          goto LABEL_124;
        }

        if (!v82)
        {
          v59 = 0;
          LOBYTE(v82) = 0;
          v58 = v52;
          goto LABEL_124;
        }

        goto LABEL_118;
      }
    }

    v59 = 0;
  }

LABEL_124:
  v63 = [PKPaymentTransaction paymentTransactionWithSource:1];
  [v63 setTransactionType:2];
  [v63 setTransitType:v58];
  [v63 setTransitModifiers:v27];
  v64 = [v15 transactionID];
  [v63 setPaymentHash:v64];

  [v63 setOriginatedByDevice:1];
  if ((v59 & 1) == 0)
  {
    v65 = PKLogFacilityTypeGetObject(0xDuLL);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v65, OS_LOG_TYPE_DEFAULT, "\tProcessed record has balance change.", buf, 2u);
    }

    if (v75 >= v77)
    {
      v66 = v75 - v77;
    }

    else
    {
      v66 = v77 - v75;
    }

    v67 = [MEMORY[0x1E696AB90] decimalNumberWithMantissa:v66 exponent:0 isNegative:v75 < v77];
    [v63 setAmount:v67];

    *v28 = v77;
  }

  [v63 setStartStationCode:v80];
  [v63 setEndStationCode:v24];
  if (a7)
  {
    *a7 = v71;
  }

  if (a8)
  {
    *a8 = v82;
  }

  v68 = v63;

  return v63;
}

- (id)transitPassPropertiesWithPaymentApplication:(id)a3
{
  v4 = a3;
  v5 = [[PKFelicaPassProperties alloc] initWithTransitAppletState:self paymentApplication:v4 fieldCollection:0];

  return v5;
}

- (id)transitPassPropertiesWithPaymentApplication:(id)a3 pass:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[PKSecureElementPassFieldCollection alloc] initWithBalanceFieldsFromPass:v6];

  v9 = [(PKFelicaTransitAppletState *)self transitPassPropertiesWithPaymentApplication:v7 fieldCollection:v8];

  return v9;
}

- (id)transitPassPropertiesWithPaymentApplication:(id)a3 fieldCollection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[PKFelicaPassProperties alloc] initWithTransitAppletState:self paymentApplication:v7 fieldCollection:v6];

  return v8;
}

@end