@interface PKTransitAppletState(NanoPassKit)
- (id)npk_processUpdateWithAppletHistory:()NanoPassKit concreteTransactions:ephemeralTransaction:mutatedBalances:pass:;
@end

@implementation PKTransitAppletState(NanoPassKit)

- (id)npk_processUpdateWithAppletHistory:()NanoPassKit concreteTransactions:ephemeralTransaction:mutatedBalances:pass:
{
  v113 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a7;
  v90 = v13;
  if (!v13)
  {
    v59 = pk_Payment_log();
    v60 = os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);

    if (v60)
    {
      v61 = pk_Payment_log();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v61, OS_LOG_TYPE_DEFAULT, "Notice: Error no pass to process applet history", buf, 2u);
      }
    }

    goto LABEL_47;
  }

  v14 = v13;
  if (!NPKIsTruthOnCard(v13))
  {
LABEL_47:
    v57 = 0;
    v46 = 0;
    v58 = 0;
    goto LABEL_48;
  }

  selfCopy = self;
  v86 = a4;
  v87 = a5;
  v88 = a6;
  v89 = v12;
  balanceFields = [v14 balanceFields];
  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = balanceFields;
  v17 = [obj countByEnumeratingWithState:&v102 objects:buf count:16];
  if (v17)
  {
    v18 = v17;
    v95 = *v103;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v103 != v95)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v102 + 1) + 8 * i);
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        foreignReferenceIdentifiers = [v20 foreignReferenceIdentifiers];
        v22 = [foreignReferenceIdentifiers countByEnumeratingWithState:&v98 objects:&v107 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v99;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v99 != v24)
              {
                objc_enumerationMutation(foreignReferenceIdentifiers);
              }

              v26 = *(*(&v98 + 1) + 8 * j);
              label = [v20 label];
              [v16 setObject:label forKeyedSubscript:v26];
            }

            v23 = [foreignReferenceIdentifiers countByEnumeratingWithState:&v98 objects:&v107 count:16];
          }

          while (v23);
        }
      }

      v18 = [obj countByEnumeratingWithState:&v102 objects:buf count:16];
    }

    while (v18);
  }

  v84 = [v16 copy];
  v28 = v90;
  v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v83 = v28;
  transitCommutePlans = [v28 transitCommutePlans];
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v96 = transitCommutePlans;
  v31 = [transitCommutePlans countByEnumeratingWithState:&v102 objects:buf count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v103;
    v34 = *MEMORY[0x277D38A00];
    v91 = *MEMORY[0x277D38A00];
    v92 = *v103;
    do
    {
      v35 = 0;
      obja = v32;
      do
      {
        if (*v103 != v33)
        {
          objc_enumerationMutation(v96);
        }

        v36 = *(*(&v102 + 1) + 8 * v35);
        if (([v36 properties] & 4) != 0)
        {
          v37 = [v36 passFieldForKey:v91];
          v98 = 0u;
          v99 = 0u;
          v100 = 0u;
          v101 = 0u;
          foreignReferenceIdentifiers2 = [v37 foreignReferenceIdentifiers];
          v39 = [foreignReferenceIdentifiers2 countByEnumeratingWithState:&v98 objects:&v107 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v99;
            do
            {
              for (k = 0; k != v40; ++k)
              {
                if (*v99 != v41)
                {
                  objc_enumerationMutation(foreignReferenceIdentifiers2);
                }

                v43 = *(*(&v98 + 1) + 8 * k);
                unitType = [v37 unitType];
                if (unitType != -1)
                {
                  v45 = [MEMORY[0x277CCABB0] numberWithInteger:unitType];
                  [v29 setObject:v45 forKeyedSubscript:v43];
                }
              }

              v40 = [foreignReferenceIdentifiers2 countByEnumeratingWithState:&v98 objects:&v107 count:16];
            }

            while (v40);
          }

          v33 = v92;
          v32 = obja;
        }

        ++v35;
      }

      while (v35 != v32);
      v32 = [v96 countByEnumeratingWithState:&v102 objects:buf count:16];
    }

    while (v32);
  }

  v46 = [v29 copy];

  transitCommutePlans2 = [v83 transitCommutePlans];
  v48 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v49 = transitCommutePlans2;
  v50 = [v49 countByEnumeratingWithState:&v107 objects:buf count:16];
  v12 = v89;
  if (v50)
  {
    v51 = v50;
    v52 = *v108;
    do
    {
      for (m = 0; m != v51; ++m)
      {
        if (*v108 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v107 + 1) + 8 * m);
        identifier = [v54 identifier];
        titleText = [v54 titleText];
        [v48 setObject:titleText forKeyedSubscript:identifier];
      }

      v51 = [v49 countByEnumeratingWithState:&v107 objects:buf count:16];
    }

    while (v51);
  }

  v57 = [v48 copy];
  a5 = v87;
  a6 = v88;
  self = selfCopy;
  a4 = v86;
  v58 = v84;
LABEL_48:
  v62 = a4;
  v63 = v58;
  v64 = [self processUpdateWithAppletHistory:v12 concreteTransactions:v62 ephemeralTransaction:a5 mutatedBalances:a6 balanceLabelDictionary:v57 unitDictionary:? planLabelDictionary:?];
  if (a6)
  {
    if (![*a6 count])
    {
      balance = [v64 balance];
      if (balance)
      {
        v68 = balance;
        currency = [v64 currency];

        if (currency)
        {
          currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
          expirationDate = [v64 expirationDate];
          v97 = [currentCalendar components:30 fromDate:expirationDate];

          v72 = objc_alloc(MEMORY[0x277D382F8]);
          v73 = *MEMORY[0x277D38850];
          balance2 = [v64 balance];
          currency2 = [v64 currency];
          v76 = [v72 initWithIdentifier:v73 balance:balance2 currency:currency2 exponent:0 expirationDate:v97];
          v77 = a6;
          v78 = v76;

          v106 = v78;
          v79 = [MEMORY[0x277CBEA60] arrayWithObjects:&v106 count:1];
          v80 = *v77;
          *v77 = v79;

          v81 = pk_Payment_log();
          LODWORD(v73) = os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT);

          if (v73)
          {
            v82 = pk_Payment_log();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v112 = v78;
              _os_log_impl(&dword_25B300000, v82, OS_LOG_TYPE_DEFAULT, "Notice: added Manually mutated transit Applet Balance:%@", buf, 0xCu);
            }
          }
        }
      }
    }
  }

  v65 = *MEMORY[0x277D85DE8];

  return v64;
}

@end