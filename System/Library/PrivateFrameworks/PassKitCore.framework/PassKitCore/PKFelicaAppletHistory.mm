@interface PKFelicaAppletHistory
+ (int64_t)appletTypeForDictionary:(id)dictionary;
- (BOOL)isInShinkansenStation;
- (BOOL)isInStation;
- (PKFelicaAppletHistory)initWithCoder:(id)coder;
- (PKFelicaAppletHistory)initWithDictionary:(id)dictionary source:(int64_t)source;
- (void)_addEnrouteTransitType:(id)type;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)sanitizeValuesWithState:(id)state;
@end

@implementation PKFelicaAppletHistory

+ (int64_t)appletTypeForDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"NFServiceProviderID"];
  v4 = PKFelicaAppletTypeFromSPID(v3);

  return v4;
}

- (PKFelicaAppletHistory)initWithDictionary:(id)dictionary source:(int64_t)source
{
  v48 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v46.receiver = self;
  v46.super_class = PKFelicaAppletHistory;
  v7 = [(PKTransitAppletHistory *)&v46 init];
  v8 = v7;
  if (v7)
  {
    [(PKTransitAppletHistory *)v7 setSource:source];
    if (dictionaryCopy)
    {
      v9 = objc_alloc(MEMORY[0x1E695DFD8]);
      source = [dictionaryCopy allKeys];
      v10 = [v9 initWithArray:source];
    }

    else
    {
      v10 = 0;
    }

    objc_storeStrong(&v8->_existingKeys, v10);
    if (dictionaryCopy)
    {
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"NFServiceProviderID"];
    v12 = [v11 copy];
    SPID = v8->_SPID;
    v8->_SPID = v12;

    v8->_type = PKFelicaAppletTypeFromSPID(v8->_SPID);
    v14 = [dictionaryCopy objectForKeyedSubscript:@"NFBlacklisted"];
    -[PKTransitAppletHistory setBlacklisted:](v8, "setBlacklisted:", [v14 BOOLValue]);
    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v16 = [dictionaryCopy objectForKeyedSubscript:@"NFInStation"];

    if ([v16 BOOLValue])
    {
      [v15 addObject:@"Transit"];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"NFInStationShinkansen"];

    if ([v17 BOOLValue])
    {
      [v15 addObject:@"TransitTrainShinkansen"];
    }

    [(PKTransitAppletHistory *)v8 setEnrouteTransitTypes:v15];
    v18 = [dictionaryCopy objectForKeyedSubscript:@"NFTicketUsed"];

    v8->_greenCarTicketUsed = [v18 BOOLValue];
    v19 = [dictionaryCopy objectForKeyedSubscript:@"NFTicketSelected"];

    v8->_shinkansenTicketActive = [v19 unsignedIntegerValue] != 0;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"NFAllowBalanceUsageForCommute"];

    v8->_balanceAllowedForCommute = [v20 BOOLValue];
    v21 = [dictionaryCopy objectForKeyedSubscript:@"NFNotifyOnLowBalance"];

    v8->_lowBalanceNotificationEnabled = [v21 BOOLValue];
    v22 = [dictionaryCopy objectForKeyedSubscript:@"NFBalance"];
    v23 = PKDecimalAmountFromAmount(v22, @"JPY");
    [(PKTransitAppletHistory *)v8 setBalance:v23];

    [(PKTransitAppletHistory *)v8 setCurrency:@"JPY"];
    v24 = [dictionaryCopy objectForKeyedSubscript:@"NFHistoryRecords"];
    v25 = [v24 count];
    if (v25)
    {
      v40 = v21;
      v41 = v15;
      v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v25];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v27 = v24;
      v28 = [v27 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v43;
        do
        {
          v31 = 0;
          do
          {
            if (*v43 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = [[PKFelicaAppletHistoryRecord alloc] initWithDictionary:*(*(&v42 + 1) + 8 * v31)];
            if (v32)
            {
              [v26 addObject:v32];
            }

            ++v31;
          }

          while (v29 != v31);
          v29 = [v27 countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v29);
      }

      [(PKTransitAppletHistory *)v8 setHistoryRecords:v26];
      v21 = v40;
      v15 = v41;
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:{@"NFShinkansenTicket", v40, v41, v42}];

    if (v33)
    {
      v34 = [[PKFelicaShinkansenTicket alloc] initWithDictionary:v33];
      shinkansenTicket = v8->_shinkansenTicket;
      v8->_shinkansenTicket = v34;
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"NFGreenCarTicket"];

    if (v36)
    {
      v37 = [[PKFelicaGreenCarTicket alloc] initWithDictionary:v36];
      greenCarTicket = v8->_greenCarTicket;
      v8->_greenCarTicket = v37;
    }
  }

  return v8;
}

- (PKFelicaAppletHistory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PKFelicaAppletHistory;
  v5 = [(PKTransitAppletHistory *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"existingKeys"];
    existingKeys = v5->_existingKeys;
    v5->_existingKeys = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SPID"];
    SPID = v5->_SPID;
    v5->_SPID = v11;

    v5->_type = PKFelicaAppletTypeFromSPID(v5->_SPID);
    v5->_shinkansenTicketActive = [coderCopy decodeBoolForKey:@"shinkansenTicketActive"];
    v5->_greenCarTicketUsed = [coderCopy decodeBoolForKey:@"ticketUsed"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenTicket"];
    shinkansenTicket = v5->_shinkansenTicket;
    v5->_shinkansenTicket = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"greenCarTicket"];
    greenCarTicket = v5->_greenCarTicket;
    v5->_greenCarTicket = v15;

    v5->_balanceAllowedForCommute = [coderCopy decodeBoolForKey:@"balanceAllowedForCommute"];
    v5->_lowBalanceNotificationEnabled = [coderCopy decodeBoolForKey:@"lowBalanceNotificationEnabled"];
    enrouteTransitTypes = [(PKTransitAppletHistory *)v5 enrouteTransitTypes];
    LODWORD(v7) = [enrouteTransitTypes containsObject:@"TransitMetro"];

    if (v7)
    {
      [(PKTransitAppletHistory *)v5 setEnrouteTransitTypes:0];
    }

    if ([coderCopy decodeBoolForKey:@"inStation"] && !-[PKFelicaAppletHistory isInStation](v5, "isInStation"))
    {
      [(PKFelicaAppletHistory *)v5 _addEnrouteTransitType:@"Transit"];
    }

    if ([coderCopy decodeBoolForKey:@"inShinkansenStation"] && !-[PKFelicaAppletHistory isInShinkansenStation](v5, "isInShinkansenStation"))
    {
      [(PKFelicaAppletHistory *)v5 _addEnrouteTransitType:@"TransitTrainShinkansen"];
    }
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKFelicaAppletHistory;
  [(PKTransitAppletHistory *)&v2 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKFelicaAppletHistory;
  coderCopy = coder;
  [(PKTransitAppletHistory *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_existingKeys forKey:{@"existingKeys", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_SPID forKey:@"SPID"];
  [coderCopy encodeBool:-[PKFelicaAppletHistory isInShinkansenStation](self forKey:{"isInShinkansenStation"), @"inShinkansenStation"}];
  [coderCopy encodeBool:self->_shinkansenTicketActive forKey:@"shinkansenTicketActive"];
  [coderCopy encodeBool:self->_greenCarTicketUsed forKey:@"ticketUsed"];
  [coderCopy encodeObject:self->_shinkansenTicket forKey:@"shinkansenTicket"];
  [coderCopy encodeObject:self->_greenCarTicket forKey:@"greenCarTicket"];
  [coderCopy encodeBool:self->_balanceAllowedForCommute forKey:@"balanceAllowedForCommute"];
  [coderCopy encodeBool:self->_lowBalanceNotificationEnabled forKey:@"lowBalanceNotificationEnabled"];
}

- (void)sanitizeValuesWithState:(id)state
{
  stateCopy = state;
  felicaState = [stateCopy felicaState];
  if (felicaState)
  {
    if ([(PKTransitAppletHistory *)self source]!= 1)
    {
      if (![(NSSet *)self->_existingKeys containsObject:@"NFBlacklisted"])
      {
        -[PKTransitAppletHistory setBlacklisted:](self, "setBlacklisted:", [stateCopy isBlacklisted]);
      }

      if (!-[NSSet containsObject:](self->_existingKeys, "containsObject:", @"NFInStation") && [felicaState isInStation] && !-[PKFelicaAppletHistory isInStation](self, "isInStation"))
      {
        [(PKFelicaAppletHistory *)self _addEnrouteTransitType:@"Transit"];
      }

      if (!-[NSSet containsObject:](self->_existingKeys, "containsObject:", @"NFInStationShinkansen") && [felicaState isInShinkansenStation] && !-[PKFelicaAppletHistory isInShinkansenStation](self, "isInShinkansenStation"))
      {
        [(PKFelicaAppletHistory *)self _addEnrouteTransitType:@"TransitTrainShinkansen"];
      }

      if (![(NSSet *)self->_existingKeys containsObject:@"NFTicketSelected"])
      {
        self->_shinkansenTicketActive = [felicaState isShinkansenTicketActive];
      }

      if (![(NSSet *)self->_existingKeys containsObject:@"NFTicketUsed"])
      {
        self->_greenCarTicketUsed = [felicaState isGreenCarTicketUsed];
      }

      if (![(NSSet *)self->_existingKeys containsObject:@"NFBalance"])
      {
        balance = [felicaState balance];
        [(PKTransitAppletHistory *)self setBalance:balance];
      }

      if (![(NSSet *)self->_existingKeys containsObject:@"NFAllowBalanceUsageForCommute"])
      {
        self->_balanceAllowedForCommute = [felicaState isBalanceAllowedForCommute];
      }

      if (![(NSSet *)self->_existingKeys containsObject:@"NFNotifyOnLowBalance"])
      {
        self->_lowBalanceNotificationEnabled = [felicaState isLowBalanceNotificationEnabled];
      }
    }

    if (!self->_greenCarTicketUsed && [(PKFelicaGreenCarTicket *)self->_greenCarTicket isRefunded])
    {
      greenCarTicket = self->_greenCarTicket;
      self->_greenCarTicket = 0;
    }
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject(0xDuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Unexpected: cannot sanitize a non-felica state object against felica history", v9, 2u);
    }
  }
}

- (BOOL)isInShinkansenStation
{
  enrouteTransitTypes = [(PKTransitAppletHistory *)self enrouteTransitTypes];
  v3 = [enrouteTransitTypes containsObject:@"TransitTrainShinkansen"];

  return v3;
}

- (BOOL)isInStation
{
  enrouteTransitTypes = [(PKTransitAppletHistory *)self enrouteTransitTypes];
  v3 = [enrouteTransitTypes containsObject:@"Transit"];

  return v3;
}

- (void)_addEnrouteTransitType:(id)type
{
  typeCopy = type;
  enrouteTransitTypes = [(PKTransitAppletHistory *)self enrouteTransitTypes];
  v6 = [enrouteTransitTypes mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v9 = v8;

  [v9 addObject:typeCopy];
  [(PKTransitAppletHistory *)self setEnrouteTransitTypes:v9];
}

@end