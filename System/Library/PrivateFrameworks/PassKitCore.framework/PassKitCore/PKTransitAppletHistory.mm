@interface PKTransitAppletHistory
- (PKTransitAppletHistory)init;
- (PKTransitAppletHistory)initWithCoder:(id)a3;
- (PKTransitAppletHistory)initWithDictionary:(id)a3 source:(int64_t)a4;
- (id)felicaHistory;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKTransitAppletHistory

- (PKTransitAppletHistory)init
{
  v3.receiver = self;
  v3.super_class = PKTransitAppletHistory;
  result = [(PKTransitAppletHistory *)&v3 init];
  if (result)
  {
    result->_source = 0;
  }

  return result;
}

- (PKTransitAppletHistory)initWithDictionary:(id)a3 source:(int64_t)a4
{
  v85 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"State"];
  if (v7)
  {
    v80.receiver = self;
    v80.super_class = PKTransitAppletHistory;
    v8 = [(PKTransitAppletHistory *)&v80 init];
    v9 = v8;
    if (v8)
    {
      v8->_source = a4;
      v10 = [v7 PKStringForKey:@"SP"];
      serviceProvider = v9->_serviceProvider;
      v9->_serviceProvider = v10;

      v12 = [v7 PKNumberForKey:@"CardDenyListed"];
      v9->_blacklisted = [v12 BOOLValue];

      v13 = [v7 objectForKeyedSubscript:@"TransactionInProgress"];
      objc_storeStrong(&v9->_inStationDetails, v13);
      v63 = v13;
      v14 = PKEnrouteTransitTypesForTransactionsInProgress(v13);
      enrouteTransitTypes = v9->_enrouteTransitTypes;
      v9->_enrouteTransitTypes = v14;

      v16 = [v7 PKDecimalNumberForKey:@"Balance"];
      v17 = [v16 copy];
      balance = v9->_balance;
      v9->_balance = v17;

      v19 = [v7 PKStringForKey:@"CardCurrency"];
      currency = v9->_currency;
      v9->_currency = v19;

      v21 = [v7 PKNumberForKey:@"PointBalance"];
      v22 = [v21 copy];
      loyaltyBalance = v9->_loyaltyBalance;
      v9->_loyaltyBalance = v22;

      v24 = [v7 PKDateComponentsForKey:@"CardExpirationDate"];
      v25 = PKDateFromDateComponents(v24);
      expirationDate = v9->_expirationDate;
      v9->_expirationDate = v25;

      v27 = [v7 PKNumberForKey:@"ServerRefreshRequired"];
      v28 = [v27 copy];
      serverRefreshIdentifier = v9->_serverRefreshIdentifier;
      v9->_serverRefreshIdentifier = v28;

      v30 = [v7 PKArrayContaining:objc_opt_class() forKey:@"Balances"];
      v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v65 = v30;
      v66 = v7;
      if (v30)
      {
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v32 = v30;
        v33 = [v32 countByEnumeratingWithState:&v76 objects:v84 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v77;
          do
          {
            for (i = 0; i != v34; ++i)
            {
              if (*v77 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = [[PKTransitAppletBalance alloc] initWithDictionary:*(*(&v76 + 1) + 8 * i)];
              if (v37)
              {
                [v31 addObject:v37];
              }
            }

            v34 = [v32 countByEnumeratingWithState:&v76 objects:v84 count:16];
          }

          while (v34);
        }

        v38 = [v31 copy];
        balances = v9->_balances;
        v9->_balances = v38;
      }

      v40 = [v7 PKArrayContaining:objc_opt_class() forKey:@"CommutePlans"];
      v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v67 = v6;
      v64 = v40;
      if (v40)
      {
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v42 = v40;
        v43 = [v42 countByEnumeratingWithState:&v72 objects:v83 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v73;
          do
          {
            for (j = 0; j != v44; ++j)
            {
              if (*v73 != v45)
              {
                objc_enumerationMutation(v42);
              }

              v47 = [[PKTransitAppletCommutePlan alloc] initWithDictionary:*(*(&v72 + 1) + 8 * j)];
              if (v47)
              {
                [v41 addObject:v47];
              }
            }

            v44 = [v42 countByEnumeratingWithState:&v72 objects:v83 count:16];
          }

          while (v44);
        }

        v48 = [v41 copy];
        commutePlans = v9->_commutePlans;
        v9->_commutePlans = v48;

        v6 = v67;
      }

      v50 = [v6 PKDictionaryForKey:@"Transaction"];
      if (v50)
      {
        v82 = v50;
        [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:{1, v50}];
      }

      else
      {
        [v6 PKArrayContaining:objc_opt_class() forKey:{@"TransactionHistory", 0}];
      }
      v51 = ;
      v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v53 = v51;
      v54 = [v53 countByEnumeratingWithState:&v68 objects:v81 count:16];
      if (v54)
      {
        v55 = v54;
        v56 = *v69;
        do
        {
          for (k = 0; k != v55; ++k)
          {
            if (*v69 != v56)
            {
              objc_enumerationMutation(v53);
            }

            v58 = [[PKTransitAppletHistoryRecord alloc] initWithDictionary:*(*(&v68 + 1) + 8 * k)];
            if (v58)
            {
              [v52 addObject:v58];
            }
          }

          v55 = [v53 countByEnumeratingWithState:&v68 objects:v81 count:16];
        }

        while (v55);
      }

      v59 = [v52 copy];
      historyRecords = v9->_historyRecords;
      v9->_historyRecords = v59;

      v7 = v66;
      v6 = v67;
      self = v63;
    }

    else
    {
      self = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PKTransitAppletHistory)initWithCoder:(id)a3
{
  v51[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v50.receiver = self;
  v50.super_class = PKTransitAppletHistory;
  v5 = [(PKTransitAppletHistory *)&v50 init];
  if (v5)
  {
    v5->_source = [v4 decodeIntegerForKey:@"source"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceProvider"];
    serviceProvider = v5->_serviceProvider;
    v5->_serviceProvider = v6;

    v5->_blacklisted = [v4 decodeBoolForKey:@"blacklisted"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currency"];
    currency = v5->_currency;
    v5->_currency = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"inStationDetails"];
    inStationDetails = v5->_inStationDetails;
    v5->_inStationDetails = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"enrouteFlagsKey"];
    enrouteTransitTypes = v5->_enrouteTransitTypes;
    v5->_enrouteTransitTypes = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serverRefreshIdentifier"];
    serverRefreshIdentifier = v5->_serverRefreshIdentifier;
    v5->_serverRefreshIdentifier = v20;

    if (!v5->_enrouteTransitTypes)
    {
      v22 = v5->_inStationDetails;
      if (v22)
      {
        v23 = PKEnrouteTransitTypesForTransactionsInProgress(v22);
        v24 = v5->_enrouteTransitTypes;
        v5->_enrouteTransitTypes = v23;
      }
    }

    if ([v4 decodeBoolForKey:@"inStation"] && !-[NSSet count](v5->_enrouteTransitTypes, "count"))
    {
      v51[0] = @"TransitMetro";
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
      v26 = PKEnrouteTransitTypesForTransactionsInProgress(v25);
      v27 = v5->_enrouteTransitTypes;
      v5->_enrouteTransitTypes = v26;
    }

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"balance"];
    balance = v5->_balance;
    v5->_balance = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"loyaltyBalance"];
    loyaltyBalance = v5->_loyaltyBalance;
    v5->_loyaltyBalance = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v32;

    v34 = MEMORY[0x1E695DFD8];
    v35 = objc_opt_class();
    v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
    v37 = [v4 decodeObjectOfClasses:v36 forKey:@"historyRecords"];
    historyRecords = v5->_historyRecords;
    v5->_historyRecords = v37;

    v39 = MEMORY[0x1E695DFD8];
    v40 = objc_opt_class();
    v41 = [v39 setWithObjects:{v40, objc_opt_class(), 0}];
    v42 = [v4 decodeObjectOfClasses:v41 forKey:@"balances"];
    balances = v5->_balances;
    v5->_balances = v42;

    v44 = MEMORY[0x1E695DFD8];
    v45 = objc_opt_class();
    v46 = [v44 setWithObjects:{v45, objc_opt_class(), 0}];
    v47 = [v4 decodeObjectOfClasses:v46 forKey:@"commutePlans"];
    commutePlans = v5->_commutePlans;
    v5->_commutePlans = v47;
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKTransitAppletHistory;
  [(PKTransitAppletHistory *)&v2 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  source = self->_source;
  v5 = a3;
  [v5 encodeInteger:source forKey:@"source"];
  [v5 encodeObject:self->_serviceProvider forKey:@"serviceProvider"];
  [v5 encodeObject:self->_serverRefreshIdentifier forKey:@"serverRefreshIdentifier"];
  [v5 encodeBool:self->_blacklisted forKey:@"blacklisted"];
  [v5 encodeObject:self->_currency forKey:@"currency"];
  [v5 encodeObject:self->_balance forKey:@"balance"];
  [v5 encodeObject:self->_loyaltyBalance forKey:@"loyaltyBalance"];
  [v5 encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [v5 encodeObject:self->_historyRecords forKey:@"historyRecords"];
  [v5 encodeObject:self->_inStationDetails forKey:@"inStationDetails"];
  [v5 encodeObject:self->_enrouteTransitTypes forKey:@"enrouteFlagsKey"];
  [v5 encodeBool:-[PKTransitAppletHistory isInStation](self forKey:{"isInStation"), @"inStation"}];
  [v5 encodeObject:self->_balances forKey:@"balances"];
  [v5 encodeObject:self->_commutePlans forKey:@"commutePlans"];
}

- (id)felicaHistory
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end