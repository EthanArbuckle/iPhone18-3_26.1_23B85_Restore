@interface PKFelicaTransitAppletState
- (BOOL)isEqual:(id)equal;
- (BOOL)isInShinkansenStation;
- (BOOL)isInStation;
- (PKFelicaTransitAppletState)init;
- (PKFelicaTransitAppletState)initWithCoder:(id)coder;
- (id)_concreteTransactionForRecordAtIndex:(unint64_t)index withBalance:(unsigned int *)balance historyRecords:(id)records terminalState:(id)state numberProcessed:(unint64_t *)processed exitedShinkansen:(BOOL *)shinkansen;
- (id)copyWithZone:(_NSZone *)zone;
- (id)processUpdateWithAppletHistory:(id)history concreteTransactions:(id *)transactions ephemeralTransaction:(id *)transaction;
- (id)transitPassPropertiesWithPaymentApplication:(id)application;
- (id)transitPassPropertiesWithPaymentApplication:(id)application fieldCollection:(id)collection;
- (id)transitPassPropertiesWithPaymentApplication:(id)application pass:(id)pass;
- (unint64_t)hash;
- (void)_resolveTransactionsFromState:(id)state toState:(id)toState withHistoryRecords:(id)records concreteTransactions:(id *)transactions ephemeralTransaction:(id *)transaction;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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

- (PKFelicaTransitAppletState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v65.receiver = self;
  v65.super_class = PKFelicaTransitAppletState;
  v5 = [(PKTransitAppletState *)&v65 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(PKTransitAppletState *)v5 setCurrency:@"JPY"];
    enrouteTransitTypes = [(PKTransitAppletState *)v6 enrouteTransitTypes];
    v8 = [enrouteTransitTypes containsObject:@"TransitMetro"];

    if (v8)
    {
      [(PKTransitAppletState *)v6 setEnrouteTransitTypes:0];
    }

    enrouteTransitTypes2 = [(PKTransitAppletState *)v6 enrouteTransitTypes];

    if (!enrouteTransitTypes2)
    {
      if ([coderCopy decodeBoolForKey:@"inStation"])
      {
        [(PKTransitAppletState *)v6 addEnrouteTransitType:@"Transit"];
      }

      if ([coderCopy decodeBoolForKey:@"inShinkansenStation"])
      {
        [(PKTransitAppletState *)v6 addEnrouteTransitType:@"TransitTrainShinkansen"];
      }
    }

    v6->_shinkansenTicketActive = [coderCopy decodeBoolForKey:@"shinkansenTicketActive"];
    v6->_greenCarTicketUsed = [coderCopy decodeBoolForKey:@"greenCarTicketUsed"];
    v6->_balanceAllowedForCommute = [coderCopy decodeBoolForKey:@"balanceAllowedForCommute"];
    v6->_lowBalanceNotificationEnabled = [coderCopy decodeBoolForKey:@"lowBalanceNotificationEnabled"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenValidityStartDate"];
    shinkansenValidityStartDate = v6->_shinkansenValidityStartDate;
    v6->_shinkansenValidityStartDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenValidityTerm"];
    shinkansenValidityTerm = v6->_shinkansenValidityTerm;
    v6->_shinkansenValidityTerm = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenOriginStation"];
    shinkansenOriginStationCode = v6->_shinkansenOriginStationCode;
    v6->_shinkansenOriginStationCode = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenDestinationStation"];
    shinkansenDestinationStationCode = v6->_shinkansenDestinationStationCode;
    v6->_shinkansenDestinationStationCode = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenDepartureTime"];
    shinkansenDepartureTime = v6->_shinkansenDepartureTime;
    v6->_shinkansenDepartureTime = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenArrivalTime"];
    shinkansenArrivalTime = v6->_shinkansenArrivalTime;
    v6->_shinkansenArrivalTime = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenTrainName"];
    shinkansenTrainName = v6->_shinkansenTrainName;
    v6->_shinkansenTrainName = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenCarNumber"];
    shinkansenCarNumber = v6->_shinkansenCarNumber;
    v6->_shinkansenCarNumber = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSeatRow"];
    shinkansenSeatRow = v6->_shinkansenSeatRow;
    v6->_shinkansenSeatRow = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSeatNumber"];
    shinkansenSeatNumber = v6->_shinkansenSeatNumber;
    v6->_shinkansenSeatNumber = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondaryOriginStation"];
    shinkansenSecondaryOriginStationCode = v6->_shinkansenSecondaryOriginStationCode;
    v6->_shinkansenSecondaryOriginStationCode = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondaryDestinationStation"];
    shinkansenSecondaryDestinationStationCode = v6->_shinkansenSecondaryDestinationStationCode;
    v6->_shinkansenSecondaryDestinationStationCode = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondaryDepartureTime"];
    shinkansenSecondaryDepartureTime = v6->_shinkansenSecondaryDepartureTime;
    v6->_shinkansenSecondaryDepartureTime = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondaryArrivalTime"];
    shinkansenSecondaryArrivalTime = v6->_shinkansenSecondaryArrivalTime;
    v6->_shinkansenSecondaryArrivalTime = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondaryTrainName"];
    shinkansenSecondaryTrainName = v6->_shinkansenSecondaryTrainName;
    v6->_shinkansenSecondaryTrainName = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondaryCarNumber"];
    shinkansenSecondaryCarNumber = v6->_shinkansenSecondaryCarNumber;
    v6->_shinkansenSecondaryCarNumber = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondarySeatRow"];
    shinkansenSecondarySeatRow = v6->_shinkansenSecondarySeatRow;
    v6->_shinkansenSecondarySeatRow = v42;

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondarySeatNumber"];
    shinkansenSecondarySeatNumber = v6->_shinkansenSecondarySeatNumber;
    v6->_shinkansenSecondarySeatNumber = v44;

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"greenCarOriginStation"];
    greenCarOriginStationCode = v6->_greenCarOriginStationCode;
    v6->_greenCarOriginStationCode = v46;

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"greenCarDestinationStation"];
    greenCarDestinationStationCode = v6->_greenCarDestinationStationCode;
    v6->_greenCarDestinationStationCode = v48;

    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"greenCarValidityStartDate"];
    greenCarValidityStartDate = v6->_greenCarValidityStartDate;
    v6->_greenCarValidityStartDate = v50;

    v6->_hasShinkansenTicket = [coderCopy decodeBoolForKey:@"hasShinkansenTicket"];
    v6->_hasGreenCarTicket = [coderCopy decodeBoolForKey:@"hasGreenCarTicket"];
    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenOriginStationString"];
    shinkansenOriginStationString = v6->_shinkansenOriginStationString;
    v6->_shinkansenOriginStationString = v52;

    v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenDestinationStationString"];
    shinkansenDestinationStationString = v6->_shinkansenDestinationStationString;
    v6->_shinkansenDestinationStationString = v54;

    v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondaryOriginStationString"];
    shinkansenSecondaryOriginStationString = v6->_shinkansenSecondaryOriginStationString;
    v6->_shinkansenSecondaryOriginStationString = v56;

    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenSecondaryDestinationStationString"];
    shinkansenSecondaryDestinationStationString = v6->_shinkansenSecondaryDestinationStationString;
    v6->_shinkansenSecondaryDestinationStationString = v58;

    v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"greenCarOriginStationString"];
    greenCarOriginStationString = v6->_greenCarOriginStationString;
    v6->_greenCarOriginStationString = v60;

    v62 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"greenCarDestinationStationString"];
    greenCarDestinationStationString = v6->_greenCarDestinationStationString;
    v6->_greenCarDestinationStationString = v62;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKFelicaTransitAppletState;
  coderCopy = coder;
  [(PKTransitAppletState *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[PKFelicaTransitAppletState isInShinkansenStation](self forKey:{"isInShinkansenStation", v5.receiver, v5.super_class), @"inShinkansenStation"}];
  [coderCopy encodeBool:self->_shinkansenTicketActive forKey:@"shinkansenTicketActive"];
  [coderCopy encodeBool:self->_greenCarTicketUsed forKey:@"greenCarTicketUsed"];
  [coderCopy encodeBool:self->_balanceAllowedForCommute forKey:@"balanceAllowedForCommute"];
  [coderCopy encodeBool:self->_lowBalanceNotificationEnabled forKey:@"lowBalanceNotificationEnabled"];
  [coderCopy encodeObject:self->_shinkansenValidityStartDate forKey:@"shinkansenValidityStartDate"];
  [coderCopy encodeObject:self->_shinkansenValidityTerm forKey:@"shinkansenValidityTerm"];
  [coderCopy encodeObject:self->_shinkansenOriginStationCode forKey:@"shinkansenOriginStation"];
  [coderCopy encodeObject:self->_shinkansenDestinationStationCode forKey:@"shinkansenDestinationStation"];
  [coderCopy encodeObject:self->_shinkansenDepartureTime forKey:@"shinkansenDepartureTime"];
  [coderCopy encodeObject:self->_shinkansenArrivalTime forKey:@"shinkansenArrivalTime"];
  [coderCopy encodeObject:self->_shinkansenTrainName forKey:@"shinkansenTrainName"];
  [coderCopy encodeObject:self->_shinkansenCarNumber forKey:@"shinkansenCarNumber"];
  [coderCopy encodeObject:self->_shinkansenSeatRow forKey:@"shinkansenSeatRow"];
  [coderCopy encodeObject:self->_shinkansenSeatNumber forKey:@"shinkansenSeatNumber"];
  [coderCopy encodeObject:self->_shinkansenSecondaryOriginStationCode forKey:@"shinkansenSecondaryOriginStation"];
  [coderCopy encodeObject:self->_shinkansenSecondaryDestinationStationCode forKey:@"shinkansenSecondaryDestinationStation"];
  [coderCopy encodeObject:self->_shinkansenSecondaryDepartureTime forKey:@"shinkansenSecondaryDepartureTime"];
  [coderCopy encodeObject:self->_shinkansenSecondaryArrivalTime forKey:@"shinkansenSecondaryArrivalTime"];
  [coderCopy encodeObject:self->_shinkansenSecondaryTrainName forKey:@"shinkansenSecondaryTrainName"];
  [coderCopy encodeObject:self->_shinkansenSecondaryCarNumber forKey:@"shinkansenSecondaryCarNumber"];
  [coderCopy encodeObject:self->_shinkansenSecondarySeatRow forKey:@"shinkansenSecondarySeatRow"];
  [coderCopy encodeObject:self->_shinkansenSecondarySeatNumber forKey:@"shinkansenSecondarySeatNumber"];
  [coderCopy encodeObject:self->_greenCarOriginStationCode forKey:@"greenCarOriginStation"];
  [coderCopy encodeObject:self->_greenCarDestinationStationCode forKey:@"greenCarDestinationStation"];
  [coderCopy encodeObject:self->_greenCarValidityStartDate forKey:@"greenCarValidityStartDate"];
  [coderCopy encodeBool:self->_hasShinkansenTicket forKey:@"hasShinkansenTicket"];
  [coderCopy encodeBool:self->_hasGreenCarTicket forKey:@"hasGreenCarTicket"];
  [coderCopy encodeObject:self->_shinkansenOriginStationString forKey:@"shinkansenOriginStationString"];
  [coderCopy encodeObject:self->_shinkansenDestinationStationString forKey:@"shinkansenDestinationStationString"];
  [coderCopy encodeObject:self->_shinkansenSecondaryOriginStationString forKey:@"shinkansenSecondaryOriginStationString"];
  [coderCopy encodeObject:self->_shinkansenSecondaryDestinationStationString forKey:@"shinkansenSecondaryDestinationStationString"];
  [coderCopy encodeObject:self->_greenCarOriginStationString forKey:@"greenCarOriginStationString"];
  [coderCopy encodeObject:self->_greenCarDestinationStationString forKey:@"greenCarDestinationStationString"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PKFelicaTransitAppletState;
  v4 = [(PKTransitAppletState *)&v6 copyWithZone:zone];
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
  enrouteTransitTypes = [(PKTransitAppletState *)self enrouteTransitTypes];
  v3 = [enrouteTransitTypes containsObject:@"Transit"];

  return v3;
}

- (BOOL)isInShinkansenStation
{
  enrouteTransitTypes = [(PKTransitAppletState *)self enrouteTransitTypes];
  v3 = [enrouteTransitTypes containsObject:@"TransitTrainShinkansen"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (!equalCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
    goto LABEL_13;
  }

  v5 = equalCopy;
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

- (id)processUpdateWithAppletHistory:(id)history concreteTransactions:(id *)transactions ephemeralTransaction:(id *)transaction
{
  *(&v79 + 1) = transactions;
  v84 = *MEMORY[0x1E69E9840];
  historyCopy = history;
  v8 = [(PKFelicaTransitAppletState *)self copy];
  source = [historyCopy source];
  [historyCopy sanitizeValuesWithState:self];
  [v8 setBlacklisted:{objc_msgSend(historyCopy, "isBlacklisted")}];
  [v8 setShinkansenTicketActive:{objc_msgSend(historyCopy, "isShinkansenTicketActive")}];
  [v8 setGreenCarTicketUsed:{objc_msgSend(historyCopy, "isGreenCarTicketUsed")}];
  [v8 setBalanceAllowedForCommute:{objc_msgSend(historyCopy, "isBalanceAllowedForCommute")}];
  [v8 setLowBalanceNotificationEnabled:{objc_msgSend(historyCopy, "isLowBalanceNotificationEnabled")}];
  enrouteTransitTypes = [v8 enrouteTransitTypes];
  enrouteTransitTypes2 = [historyCopy enrouteTransitTypes];
  selfCopy = self;
  v12 = [(PKTransitAppletState *)self updatedEnrouteTransitTypesFromExistingTypes:enrouteTransitTypes newTypes:enrouteTransitTypes2];
  [v8 setEnrouteTransitTypes:v12];

  shinkansenTicket = [historyCopy shinkansenTicket];
  v14 = shinkansenTicket;
  *&v79 = transaction;
  if (shinkansenTicket || source == 1)
  {
    validityStartDate = [shinkansenTicket validityStartDate];
    [v8 setShinkansenValidityStartDate:validityStartDate];

    validityTerm = [v14 validityTerm];
    [v8 setShinkansenValidityTerm:validityTerm];

    trains = [v14 trains];
    v20 = [trains count];
    if (v20)
    {
      v21 = [trains objectAtIndexedSubscript:0];
    }

    else
    {
      v21 = 0;
    }

    v77 = source;
    departureTime = [v21 departureTime];
    [v8 setShinkansenDepartureTime:departureTime];

    arrivalTime = [v21 arrivalTime];
    [v8 setShinkansenArrivalTime:arrivalTime];

    trainName = [v21 trainName];
    [v8 setShinkansenTrainName:trainName];

    carNumber = [v21 carNumber];
    [v8 setShinkansenCarNumber:carNumber];

    seatRow = [v21 seatRow];
    [v8 setShinkansenSeatRow:seatRow];

    seatNumber = [v21 seatNumber];
    [v8 setShinkansenSeatNumber:seatNumber];

    originStation = [v21 originStation];
    shinkansenOriginStationCode = [v8 shinkansenOriginStationCode];
    v30 = shinkansenOriginStationCode;
    v16 = originStation != 0;
    if (originStation && shinkansenOriginStationCode)
    {
      v31 = [originStation isEqual:shinkansenOriginStationCode];

      if (v31)
      {
LABEL_10:
        v16 = 0;
LABEL_13:
        destinationStation = [v21 destinationStation];

        shinkansenDestinationStationCode = [v8 shinkansenDestinationStationCode];
        v34 = shinkansenDestinationStationCode;
        if (destinationStation && shinkansenDestinationStationCode)
        {
          v35 = [destinationStation isEqual:shinkansenDestinationStationCode];

          if (v35)
          {
            goto LABEL_20;
          }
        }

        else
        {

          if (destinationStation == v34)
          {
            goto LABEL_20;
          }
        }

        [v8 setShinkansenDestinationStationCode:destinationStation];
        [v8 setShinkansenDestinationStationString:0];
        if (destinationStation)
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
          v36 = [trains objectAtIndexedSubscript:1];
        }

        departureTime2 = [v36 departureTime];
        [v8 setShinkansenSecondaryDepartureTime:departureTime2];

        arrivalTime2 = [v36 arrivalTime];
        [v8 setShinkansenSecondaryArrivalTime:arrivalTime2];

        trainName2 = [v36 trainName];
        [v8 setShinkansenSecondaryTrainName:trainName2];

        carNumber2 = [v36 carNumber];
        [v8 setShinkansenSecondaryCarNumber:carNumber2];

        seatRow2 = [v36 seatRow];
        [v8 setShinkansenSecondarySeatRow:seatRow2];

        seatNumber2 = [v36 seatNumber];
        [v8 setShinkansenSecondarySeatNumber:seatNumber2];

        originStation2 = [v36 originStation];

        shinkansenSecondaryOriginStationCode = [v8 shinkansenSecondaryOriginStationCode];
        v45 = shinkansenSecondaryOriginStationCode;
        if (originStation2 && shinkansenSecondaryOriginStationCode)
        {
          v46 = [originStation2 isEqual:shinkansenSecondaryOriginStationCode];

          if (v46)
          {
            goto LABEL_30;
          }
        }

        else
        {

          if (originStation2 == v45)
          {
            goto LABEL_30;
          }
        }

        [v8 setShinkansenSecondaryOriginStationCode:originStation2];
        [v8 setShinkansenSecondaryOriginStationString:0];
        if (originStation2)
        {
          v16 = 1;
        }

LABEL_30:
        destinationStation2 = [v36 destinationStation];

        shinkansenSecondaryDestinationStationCode = [v8 shinkansenSecondaryDestinationStationCode];
        v48 = shinkansenSecondaryDestinationStationCode;
        source = v77;
        if (destinationStation2 && shinkansenSecondaryDestinationStationCode)
        {
          v49 = [destinationStation2 isEqual:shinkansenSecondaryDestinationStationCode];

          if (v49)
          {
            goto LABEL_37;
          }
        }

        else
        {

          if (destinationStation2 == v48)
          {
LABEL_37:
            [v8 setHasShinkansenTicket:v14 != 0];

            goto LABEL_38;
          }
        }

        [v8 setShinkansenSecondaryDestinationStationCode:destinationStation2];
        [v8 setShinkansenSecondaryDestinationStationString:0];
        if (destinationStation2)
        {
          v16 = 1;
        }

        goto LABEL_37;
      }
    }

    else
    {

      if (originStation == v30)
      {
        goto LABEL_10;
      }
    }

    [v8 setShinkansenOriginStationCode:originStation];
    [v8 setShinkansenOriginStationString:0];
    goto LABEL_13;
  }

  destinationStation2 = 0;
  v16 = 0;
LABEL_38:
  greenCarTicket = [historyCopy greenCarTicket];
  v51 = greenCarTicket;
  if (greenCarTicket || source == 1)
  {
    originStation3 = [greenCarTicket originStation];

    greenCarOriginStationCode = [v8 greenCarOriginStationCode];
    v54 = greenCarOriginStationCode;
    if (originStation3 && greenCarOriginStationCode)
    {
      v55 = [originStation3 isEqual:greenCarOriginStationCode];

      if (v55)
      {
        goto LABEL_47;
      }
    }

    else
    {

      if (originStation3 == v54)
      {
        goto LABEL_47;
      }
    }

    [v8 setGreenCarOriginStationCode:originStation3];
    [v8 setGreenCarOriginStationString:0];
    if (originStation3)
    {
      v16 = 1;
    }

LABEL_47:
    destinationStation2 = [v51 destinationStation];

    greenCarDestinationStationCode = [v8 greenCarDestinationStationCode];
    v57 = greenCarDestinationStationCode;
    if (destinationStation2 && greenCarDestinationStationCode)
    {
      v58 = [destinationStation2 isEqual:greenCarDestinationStationCode];

      if (v58)
      {
        goto LABEL_54;
      }
    }

    else
    {

      if (destinationStation2 == v57)
      {
LABEL_54:
        validityStartDate2 = [v51 validityStartDate];
        [v8 setGreenCarValidityStartDate:validityStartDate2];

        [v8 setHasGreenCarTicket:v51 != 0];
        goto LABEL_55;
      }
    }

    [v8 setGreenCarDestinationStationCode:destinationStation2];
    [v8 setGreenCarDestinationStationString:0];
    if (destinationStation2)
    {
      v16 = 1;
    }

    goto LABEL_54;
  }

LABEL_55:
  shinkansenOriginStationCode2 = [v8 shinkansenOriginStationCode];
  if (shinkansenOriginStationCode2)
  {
    v61 = 0;
  }

  else
  {
    shinkansenDestinationStationCode2 = [v8 shinkansenDestinationStationCode];
    if (shinkansenDestinationStationCode2)
    {
      v61 = 0;
    }

    else
    {
      shinkansenSecondaryOriginStationCode2 = [v8 shinkansenSecondaryOriginStationCode];
      if (shinkansenSecondaryOriginStationCode2)
      {
        v61 = 0;
      }

      else
      {
        shinkansenSecondaryDestinationStationCode2 = [v8 shinkansenSecondaryDestinationStationCode];
        if (shinkansenSecondaryDestinationStationCode2)
        {
          v61 = 0;
        }

        else
        {
          greenCarOriginStationCode2 = [v8 greenCarOriginStationCode];
          if (greenCarOriginStationCode2)
          {
            v61 = 0;
          }

          else
          {
            greenCarDestinationStationCode2 = [v8 greenCarDestinationStationCode];
            v61 = greenCarDestinationStationCode2 == 0;

            greenCarOriginStationCode2 = 0;
          }

          shinkansenSecondaryDestinationStationCode2 = 0;
        }
      }
    }
  }

  if (v61 || v16)
  {
    needsStationProcessing = !v61;
  }

  else
  {
    needsStationProcessing = [v8 needsStationProcessing];
  }

  [v8 setNeedsStationProcessing:needsStationProcessing];
  balance = [historyCopy balance];
  [v8 setBalance:balance];

  historyRecords = [historyCopy historyRecords];
  if ([historyRecords count])
  {
    v70 = [historyRecords objectAtIndexedSubscript:0];
    historySequenceNumber = [v70 historySequenceNumber];
    if (historySequenceNumber)
    {
      [v8 setHistorySequenceNumber:historySequenceNumber];
    }
  }

  if (v79 != 0 && ![(PKFelicaTransitAppletState *)selfCopy isEqual:v8])
  {
    [(PKFelicaTransitAppletState *)selfCopy _resolveTransactionsFromState:selfCopy toState:v8 withHistoryRecords:historyRecords concreteTransactions:*(&v79 + 1) ephemeralTransaction:v79];
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

      isInShinkansenStation = [v8 isInShinkansenStation];
      v75 = @"inShinkansenStation";
      if (!isInShinkansenStation)
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

- (void)_resolveTransactionsFromState:(id)state toState:(id)toState withHistoryRecords:(id)records concreteTransactions:(id *)transactions ephemeralTransaction:(id *)transaction
{
  v78 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  toStateCopy = toState;
  recordsCopy = records;
  historySequenceNumber = [stateCopy historySequenceNumber];
  unsignedIntegerValue = [historySequenceNumber unsignedIntegerValue];
  v69 = historySequenceNumber;
  if (historySequenceNumber && ([toStateCopy historySequenceNumber], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "unsignedIntegerValue"), v17, unsignedIntegerValue == v18))
  {
    allObjects = 0;
  }

  else
  {
    v62 = toStateCopy;
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v21 = recordsCopy;
    v22 = [v21 countByEnumeratingWithState:&v73 objects:v77 count:16];
    if (v22)
    {
      v23 = v22;
      selfCopy = self;
      transactionsCopy = transactions;
      transactionCopy = transaction;
      v67 = recordsCopy;
      historySequenceNumber2 = 0;
      v25 = *v74;
      while (2)
      {
        v26 = 0;
        v27 = historySequenceNumber2;
        do
        {
          if (*v74 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v28 = *(*(&v73 + 1) + 8 * v26);
          historySequenceNumber2 = [v28 historySequenceNumber];
          unsignedIntegerValue2 = [historySequenceNumber2 unsignedIntegerValue];
          if (v69 && unsignedIntegerValue == unsignedIntegerValue2)
          {

            historySequenceNumber2 = v27;
            goto LABEL_18;
          }

          if (!v27 || unsignedIntegerValue2 != [v27 unsignedIntegerValue])
          {
            [v20 addObject:v28];
          }

          ++v26;
          v27 = historySequenceNumber2;
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

      transaction = transactionCopy;
      recordsCopy = v67;
      transactions = transactionsCopy;
      self = selfCopy;
    }

    reverseObjectEnumerator = [v20 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    toStateCopy = v62;
  }

  v72 = 0;
  v31 = [allObjects count];
  if (transactions)
  {
    v32 = v31;
    v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v31 + 2];
    if (v32)
    {
      transactionsCopy2 = transactions;
      transactionCopy2 = transaction;
      v68 = recordsCopy;
      balance = [stateCopy balance];
      selfCopy2 = self;
      unsignedLongLongValue = [balance unsignedLongLongValue];

      v37 = 0;
      v71 = unsignedLongLongValue;
      v38 = selfCopy2;
      while (v37 < v32)
      {
        v70 = 0;
        v39 = [(PKFelicaTransitAppletState *)v38 _concreteTransactionForRecordAtIndex:v37 withBalance:&v71 historyRecords:allObjects terminalState:toStateCopy numberProcessed:&v70 exitedShinkansen:&v72];
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

      transaction = transactionCopy2;
      recordsCopy = v68;
      transactions = transactionsCopy2;
    }

    v43 = [v33 count];
    isInShinkansenStation = [stateCopy isInShinkansenStation];
    if (isInShinkansenStation == [toStateCopy isInShinkansenStation] || (v72 & 1) != 0 || objc_msgSend(toStateCopy, "isInShinkansenStation"))
    {
      isInStation = [stateCopy isInStation];
      if (isInStation == [toStateCopy isInStation] || (objc_msgSend(toStateCopy, "isInStation") & 1) != 0 || v43)
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
    isGreenCarTicketUsed = [stateCopy isGreenCarTicketUsed];
    if (isGreenCarTicketUsed != [toStateCopy isGreenCarTicketUsed] && objc_msgSend(toStateCopy, "isGreenCarTicketUsed"))
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
    v51 = *transactions;
    *transactions = v50;
  }

  if (transaction)
  {
    enrouteTransitTypes = [stateCopy enrouteTransitTypes];
    lastObject = [enrouteTransitTypes lastObject];

    enrouteTransitTypes2 = [toStateCopy enrouteTransitTypes];
    lastObject2 = [enrouteTransitTypes2 lastObject];

    if (lastObject2 && ([lastObject2 isEqual:lastObject] & 1) == 0)
    {
      transactionCopy3 = transaction;
      v58 = PKPaymentTransactionTransitSubtypeForTransactionDetailString(lastObject2);
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

      transaction = transactionCopy3;
    }

    else
    {
      v56 = 0;
    }

    v60 = *transaction;
    *transaction = v56;
  }
}

- (id)_concreteTransactionForRecordAtIndex:(unint64_t)index withBalance:(unsigned int *)balance historyRecords:(id)records terminalState:(id)state numberProcessed:(unint64_t *)processed exitedShinkansen:(BOOL *)shinkansen
{
  v91 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  stateCopy = state;
  v13 = [recordsCopy count];
  v14 = [recordsCopy objectAtIndexedSubscript:index];
  v15 = v14;
  v73 = recordsCopy;
  if (index + 1 >= v13)
  {
    endStation = 0;
    startStation2 = 0;
    v27 = 0;
    v23 = 0;
    v71 = 1;
    balanceCopy6 = balance;
    goto LABEL_75;
  }

  shinkansenCopy = shinkansen;
  v79 = stateCopy;
  v16 = v14;
  v17 = [recordsCopy objectAtIndexedSubscript:index + 1];
  v18 = FelicaTransitHistoryRecordFromFelicaRecord(v16);
  v20 = v19;
  v81 = v17;
  v21 = FelicaTransitHistoryRecordFromFelicaRecord(v17);
  v23 = 0;
  endStation = 0;
  v25 = 1;
  if (v18 > 0x15u)
  {
    startStation2 = 0;
    v27 = 0;
    v15 = v16;
    balanceCopy6 = balance;
    goto LABEL_74;
  }

  startStation2 = 0;
  v27 = 0;
  v15 = v16;
  balanceCopy6 = balance;
  if (((1 << v18) & 0x380062) != 0)
  {
    v23 = 0;
    endStation = 0;
    v25 = 1;
    if (v21 > 0x15u)
    {
      goto LABEL_30;
    }

    startStation2 = 0;
    v27 = 0;
    v15 = v16;
    if (((1 << v21) & 0x380062) == 0)
    {
      goto LABEL_74;
    }

    v23 = 0;
    endStation = 0;
    v25 = 1;
    if (HIBYTE(v18) > 0x1Cu)
    {
      goto LABEL_30;
    }

    startStation2 = 0;
    v27 = 0;
    v15 = v16;
    if (((1 << SHIBYTE(v18)) & 0x12000090) == 0)
    {
      goto LABEL_74;
    }

    v23 = 0;
    endStation = 0;
    v70 = v21 >> 8;
    v25 = 1;
    if (BYTE1(v21) > 0x1Bu)
    {
LABEL_30:
      startStation2 = 0;
      v27 = 0;
      goto LABEL_31;
    }

    startStation2 = 0;
    v27 = 0;
    v15 = v16;
    if (((1 << SBYTE1(v21)) & 0x9000048) != 0)
    {
      v29 = v22;
      v30 = HIDWORD(v20);
      v31 = HIDWORD(v22);
      if (HIDWORD(v20) && v31 && v22 != v20)
      {
        endStation = 0;
        startStation2 = 0;
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
        historySequenceNumber = [v16 historySequenceNumber];
        historySequenceNumber2 = [v81 historySequenceNumber];
        *buf = 138413058;
        v84 = historySequenceNumber;
        v85 = 1024;
        v86 = HIBYTE(v18);
        v87 = 2112;
        v88 = historySequenceNumber2;
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
        endStation = [v81 endStation];
        balanceCopy6 = balance;
        v42 = HIBYTE(v18);
        goto LABEL_28;
      }

      balanceCopy6 = balance;
      v42 = HIBYTE(v18);
      if (IsStartStationAvailable(v74, v70))
      {
        v44 = v81;
      }

      else
      {
        if (v18 <= 0x15u && ((1 << v18) & 0x380062) != 0 && HIBYTE(v18) <= 0x1Cu && ((1 << SHIBYTE(v18)) & 0x1FFF7AF0) != 0)
        {
          endStation2 = [v16 endStation];
          goto LABEL_41;
        }

        if (!IsStartStationAvailable(v18, HIBYTE(v18)))
        {
          endStation = 0;
          goto LABEL_45;
        }

        v44 = v16;
      }

      endStation2 = [v44 startStation];
LABEL_41:
      endStation = endStation2;
LABEL_28:
      if (IsStartStationAvailable(v18, v42))
      {
        startStation = [v16 startStation];
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
          startStation2 = [v81 startStation];
          v41 = v70;
          if (!endStation)
          {
            goto LABEL_147;
          }

          goto LABEL_52;
        }

        startStation2 = 0;
        if (v74 > 0x15u || ((1 << v74) & 0x380062) == 0)
        {
          v41 = v70;
          goto LABEL_147;
        }

        startStation2 = 0;
        v41 = v70;
        if (v70 > 0x1Bu || ((1 << v70) & 0xFFF7AF8) == 0)
        {
LABEL_147:
          if (startStation2 != endStation)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }

        v46 = v81;
      }

      startStation = [v46 endStation];
LABEL_51:
      startStation2 = startStation;
      if (!endStation)
      {
        goto LABEL_147;
      }

LABEL_52:
      if (startStation2)
      {
        if (([startStation2 isEqual:endStation] & 1) == 0)
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

        endStation = 0;
        goto LABEL_55;
      }

      goto LABEL_147;
    }
  }

LABEL_74:
  v71 = v25;

  stateCopy = v79;
  shinkansen = shinkansenCopy;
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
  if (balanceCopy6)
  {
    v75 = *balanceCopy6;
  }

  else
  {
    v75 = 0;
  }

  startStation3 = startStation2;
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
    shinkansenCopy2 = shinkansen;
    v57 = v56 = stateCopy;
    *buf = 138412802;
    v84 = v57;
    v85 = 1024;
    v86 = v51;
    v87 = 1024;
    LODWORD(v88) = HIBYTE(v51);
    _os_log_impl(&dword_1AD337000, v54, OS_LOG_TYPE_DEFAULT, "Processing History Record: {sequence number: %@, type: %hhu, sector combination: %hhu}", buf, 0x18u);

    stateCopy = v56;
    shinkansen = shinkansenCopy2;
    balanceCopy6 = balance;
  }

  if (!(endStation | startStation3))
  {
    if (IsStartStationAvailable(v51, v53))
    {
      startStation3 = [v15 startStation];
    }

    else
    {
      startStation3 = 0;
    }

    endStation = 0;
    if (v51 <= 0x15u && ((1 << v51) & 0x380062) != 0)
    {
      endStation = 0;
      if (v53 <= 0x1Fu && ((1 << v53) & 0xDFFF7AFC) != 0)
      {
        endStation = [v15 endStation];
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
  if (balanceCopy6 && v75 != v77)
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
        if ([stateCopy isInShinkansenStation])
        {
          goto LABEL_119;
        }

        v59 = 0;
        v58 = 257;
        goto LABEL_124;
      }

      if (v58 == 1)
      {
        if ([stateCopy isInStation])
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
  transactionID = [v15 transactionID];
  [v63 setPaymentHash:transactionID];

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

    *balanceCopy6 = v77;
  }

  [v63 setStartStationCode:startStation3];
  [v63 setEndStationCode:endStation];
  if (processed)
  {
    *processed = v71;
  }

  if (shinkansen)
  {
    *shinkansen = v82;
  }

  v68 = v63;

  return v63;
}

- (id)transitPassPropertiesWithPaymentApplication:(id)application
{
  applicationCopy = application;
  v5 = [[PKFelicaPassProperties alloc] initWithTransitAppletState:self paymentApplication:applicationCopy fieldCollection:0];

  return v5;
}

- (id)transitPassPropertiesWithPaymentApplication:(id)application pass:(id)pass
{
  passCopy = pass;
  applicationCopy = application;
  v8 = [[PKSecureElementPassFieldCollection alloc] initWithBalanceFieldsFromPass:passCopy];

  v9 = [(PKFelicaTransitAppletState *)self transitPassPropertiesWithPaymentApplication:applicationCopy fieldCollection:v8];

  return v9;
}

- (id)transitPassPropertiesWithPaymentApplication:(id)application fieldCollection:(id)collection
{
  collectionCopy = collection;
  applicationCopy = application;
  v8 = [[PKFelicaPassProperties alloc] initWithTransitAppletState:self paymentApplication:applicationCopy fieldCollection:collectionCopy];

  return v8;
}

@end