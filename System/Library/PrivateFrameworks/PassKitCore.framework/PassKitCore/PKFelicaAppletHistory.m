@interface PKFelicaAppletHistory
+ (int64_t)appletTypeForDictionary:(id)a3;
- (BOOL)isInShinkansenStation;
- (BOOL)isInStation;
- (PKFelicaAppletHistory)initWithCoder:(id)a3;
- (PKFelicaAppletHistory)initWithDictionary:(id)a3 source:(int64_t)a4;
- (void)_addEnrouteTransitType:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)sanitizeValuesWithState:(id)a3;
@end

@implementation PKFelicaAppletHistory

+ (int64_t)appletTypeForDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"NFServiceProviderID"];
  v4 = PKFelicaAppletTypeFromSPID(v3);

  return v4;
}

- (PKFelicaAppletHistory)initWithDictionary:(id)a3 source:(int64_t)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v46.receiver = self;
  v46.super_class = PKFelicaAppletHistory;
  v7 = [(PKTransitAppletHistory *)&v46 init];
  v8 = v7;
  if (v7)
  {
    [(PKTransitAppletHistory *)v7 setSource:a4];
    if (v6)
    {
      v9 = objc_alloc(MEMORY[0x1E695DFD8]);
      a4 = [v6 allKeys];
      v10 = [v9 initWithArray:a4];
    }

    else
    {
      v10 = 0;
    }

    objc_storeStrong(&v8->_existingKeys, v10);
    if (v6)
    {
    }

    v11 = [v6 objectForKeyedSubscript:@"NFServiceProviderID"];
    v12 = [v11 copy];
    SPID = v8->_SPID;
    v8->_SPID = v12;

    v8->_type = PKFelicaAppletTypeFromSPID(v8->_SPID);
    v14 = [v6 objectForKeyedSubscript:@"NFBlacklisted"];
    -[PKTransitAppletHistory setBlacklisted:](v8, "setBlacklisted:", [v14 BOOLValue]);
    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v16 = [v6 objectForKeyedSubscript:@"NFInStation"];

    if ([v16 BOOLValue])
    {
      [v15 addObject:@"Transit"];
    }

    v17 = [v6 objectForKeyedSubscript:@"NFInStationShinkansen"];

    if ([v17 BOOLValue])
    {
      [v15 addObject:@"TransitTrainShinkansen"];
    }

    [(PKTransitAppletHistory *)v8 setEnrouteTransitTypes:v15];
    v18 = [v6 objectForKeyedSubscript:@"NFTicketUsed"];

    v8->_greenCarTicketUsed = [v18 BOOLValue];
    v19 = [v6 objectForKeyedSubscript:@"NFTicketSelected"];

    v8->_shinkansenTicketActive = [v19 unsignedIntegerValue] != 0;
    v20 = [v6 objectForKeyedSubscript:@"NFAllowBalanceUsageForCommute"];

    v8->_balanceAllowedForCommute = [v20 BOOLValue];
    v21 = [v6 objectForKeyedSubscript:@"NFNotifyOnLowBalance"];

    v8->_lowBalanceNotificationEnabled = [v21 BOOLValue];
    v22 = [v6 objectForKeyedSubscript:@"NFBalance"];
    v23 = PKDecimalAmountFromAmount(v22, @"JPY");
    [(PKTransitAppletHistory *)v8 setBalance:v23];

    [(PKTransitAppletHistory *)v8 setCurrency:@"JPY"];
    v24 = [v6 objectForKeyedSubscript:@"NFHistoryRecords"];
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

    v33 = [v6 objectForKeyedSubscript:{@"NFShinkansenTicket", v40, v41, v42}];

    if (v33)
    {
      v34 = [[PKFelicaShinkansenTicket alloc] initWithDictionary:v33];
      shinkansenTicket = v8->_shinkansenTicket;
      v8->_shinkansenTicket = v34;
    }

    v36 = [v6 objectForKeyedSubscript:@"NFGreenCarTicket"];

    if (v36)
    {
      v37 = [[PKFelicaGreenCarTicket alloc] initWithDictionary:v36];
      greenCarTicket = v8->_greenCarTicket;
      v8->_greenCarTicket = v37;
    }
  }

  return v8;
}

- (PKFelicaAppletHistory)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKFelicaAppletHistory;
  v5 = [(PKTransitAppletHistory *)&v19 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"existingKeys"];
    existingKeys = v5->_existingKeys;
    v5->_existingKeys = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SPID"];
    SPID = v5->_SPID;
    v5->_SPID = v11;

    v5->_type = PKFelicaAppletTypeFromSPID(v5->_SPID);
    v5->_shinkansenTicketActive = [v4 decodeBoolForKey:@"shinkansenTicketActive"];
    v5->_greenCarTicketUsed = [v4 decodeBoolForKey:@"ticketUsed"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shinkansenTicket"];
    shinkansenTicket = v5->_shinkansenTicket;
    v5->_shinkansenTicket = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"greenCarTicket"];
    greenCarTicket = v5->_greenCarTicket;
    v5->_greenCarTicket = v15;

    v5->_balanceAllowedForCommute = [v4 decodeBoolForKey:@"balanceAllowedForCommute"];
    v5->_lowBalanceNotificationEnabled = [v4 decodeBoolForKey:@"lowBalanceNotificationEnabled"];
    v17 = [(PKTransitAppletHistory *)v5 enrouteTransitTypes];
    LODWORD(v7) = [v17 containsObject:@"TransitMetro"];

    if (v7)
    {
      [(PKTransitAppletHistory *)v5 setEnrouteTransitTypes:0];
    }

    if ([v4 decodeBoolForKey:@"inStation"] && !-[PKFelicaAppletHistory isInStation](v5, "isInStation"))
    {
      [(PKFelicaAppletHistory *)v5 _addEnrouteTransitType:@"Transit"];
    }

    if ([v4 decodeBoolForKey:@"inShinkansenStation"] && !-[PKFelicaAppletHistory isInShinkansenStation](v5, "isInShinkansenStation"))
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKFelicaAppletHistory;
  v4 = a3;
  [(PKTransitAppletHistory *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_existingKeys forKey:{@"existingKeys", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_SPID forKey:@"SPID"];
  [v4 encodeBool:-[PKFelicaAppletHistory isInShinkansenStation](self forKey:{"isInShinkansenStation"), @"inShinkansenStation"}];
  [v4 encodeBool:self->_shinkansenTicketActive forKey:@"shinkansenTicketActive"];
  [v4 encodeBool:self->_greenCarTicketUsed forKey:@"ticketUsed"];
  [v4 encodeObject:self->_shinkansenTicket forKey:@"shinkansenTicket"];
  [v4 encodeObject:self->_greenCarTicket forKey:@"greenCarTicket"];
  [v4 encodeBool:self->_balanceAllowedForCommute forKey:@"balanceAllowedForCommute"];
  [v4 encodeBool:self->_lowBalanceNotificationEnabled forKey:@"lowBalanceNotificationEnabled"];
}

- (void)sanitizeValuesWithState:(id)a3
{
  v4 = a3;
  v5 = [v4 felicaState];
  if (v5)
  {
    if ([(PKTransitAppletHistory *)self source]!= 1)
    {
      if (![(NSSet *)self->_existingKeys containsObject:@"NFBlacklisted"])
      {
        -[PKTransitAppletHistory setBlacklisted:](self, "setBlacklisted:", [v4 isBlacklisted]);
      }

      if (!-[NSSet containsObject:](self->_existingKeys, "containsObject:", @"NFInStation") && [v5 isInStation] && !-[PKFelicaAppletHistory isInStation](self, "isInStation"))
      {
        [(PKFelicaAppletHistory *)self _addEnrouteTransitType:@"Transit"];
      }

      if (!-[NSSet containsObject:](self->_existingKeys, "containsObject:", @"NFInStationShinkansen") && [v5 isInShinkansenStation] && !-[PKFelicaAppletHistory isInShinkansenStation](self, "isInShinkansenStation"))
      {
        [(PKFelicaAppletHistory *)self _addEnrouteTransitType:@"TransitTrainShinkansen"];
      }

      if (![(NSSet *)self->_existingKeys containsObject:@"NFTicketSelected"])
      {
        self->_shinkansenTicketActive = [v5 isShinkansenTicketActive];
      }

      if (![(NSSet *)self->_existingKeys containsObject:@"NFTicketUsed"])
      {
        self->_greenCarTicketUsed = [v5 isGreenCarTicketUsed];
      }

      if (![(NSSet *)self->_existingKeys containsObject:@"NFBalance"])
      {
        v6 = [v5 balance];
        [(PKTransitAppletHistory *)self setBalance:v6];
      }

      if (![(NSSet *)self->_existingKeys containsObject:@"NFAllowBalanceUsageForCommute"])
      {
        self->_balanceAllowedForCommute = [v5 isBalanceAllowedForCommute];
      }

      if (![(NSSet *)self->_existingKeys containsObject:@"NFNotifyOnLowBalance"])
      {
        self->_lowBalanceNotificationEnabled = [v5 isLowBalanceNotificationEnabled];
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
  v2 = [(PKTransitAppletHistory *)self enrouteTransitTypes];
  v3 = [v2 containsObject:@"TransitTrainShinkansen"];

  return v3;
}

- (BOOL)isInStation
{
  v2 = [(PKTransitAppletHistory *)self enrouteTransitTypes];
  v3 = [v2 containsObject:@"Transit"];

  return v3;
}

- (void)_addEnrouteTransitType:(id)a3
{
  v4 = a3;
  v5 = [(PKTransitAppletHistory *)self enrouteTransitTypes];
  v6 = [v5 mutableCopy];
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

  [v9 addObject:v4];
  [(PKTransitAppletHistory *)self setEnrouteTransitTypes:v9];
}

@end