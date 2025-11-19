@interface PKCompoundInterestCalculator
- (BOOL)_date:(id)a3 isApplicableForProcessingDate:(id)a4;
- (BOOL)_interestCanBeCalculated;
- (PKCompoundInterestCalculator)initWithConfiguration:(id)a3;
- (id)_additionalBalanceForProcessingDate:(id)a3;
- (id)_creditsForProcessingDate:(id)a3;
- (id)_rawCompoundInterestForPaymentOfAmount:(id)a3 onDate:(id)a4 includeNewBalance:(BOOL)a5;
- (id)_rawUnpostedInterestCalculationForPaymentOfAmount:(id)a3 onDate:(id)a4 includeNewPurchases:(BOOL)a5;
- (id)compoundInterestForPaymentOfAmount:(id)a3 onDate:(id)a4;
- (id)compoundInterestWithPaymentOfAmount:(id)a3;
@end

@implementation PKCompoundInterestCalculator

- (PKCompoundInterestCalculator)initWithConfiguration:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PKCompoundInterestCalculator;
  v6 = [(PKCompoundInterestCalculator *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    calendar = v7->_calendar;
    v7->_calendar = v8;

    v10 = [MEMORY[0x1E695DF90] dictionary];
    toDateCache = v7->_toDateCache;
    v7->_toDateCache = v10;
  }

  return v7;
}

- (id)compoundInterestWithPaymentOfAmount:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 date];
  v7 = [(PKCompoundInterestCalculator *)self compoundInterestForPaymentOfAmount:v5 onDate:v6];

  return v7;
}

- (BOOL)_interestCanBeCalculated
{
  configuration = self->_configuration;
  if (!configuration)
  {
    return 0;
  }

  v4 = [(PKCompoundInterestCalculatorConfiguration *)configuration isInDisasterRecovery];
  v5 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration apr];
  v6 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration compoundingPeriods];
  v7 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodStartDate];
  v8 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodEndDate];
  v9 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodStartingBalance];
  if (v5)
  {
    v10 = [MEMORY[0x1E696AB90] notANumber];
    if ([v5 isEqual:v10])
    {
      v11 = 0;
    }

    else
    {
      v12 = [MEMORY[0x1E696AB90] notANumber];
      v13 = (v6 > 0) & ~[v9 isEqual:v12];
      if (!v7)
      {
        LOBYTE(v13) = 0;
      }

      if (!v8)
      {
        LOBYTE(v13) = 0;
      }

      v11 = v13 & !v4;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)compoundInterestForPaymentOfAmount:(id)a3 onDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AB90] zero];
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = [MEMORY[0x1E696AB90] zero];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v7 = [MEMORY[0x1E695DF00] date];
LABEL_3:
  if (![(PKCompoundInterestCalculator *)self _interestCanBeCalculated])
  {
    goto LABEL_38;
  }

  v9 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration remainingPeriodStartingBalanceForGracePurposes];
  v10 = [MEMORY[0x1E696AB90] zero];
  v11 = [v9 compare:v10];

  configuration = self->_configuration;
  if (v11 != 1)
  {
    v20 = [(PKCompoundInterestCalculatorConfiguration *)configuration unpostedInterest];
    if (!v20)
    {
      goto LABEL_37;
    }

    v21 = [MEMORY[0x1E696AB90] zero];
    v22 = [v20 compare:v21];

    if (v22 != 1)
    {
      goto LABEL_37;
    }

    PKRoundDecimalNumberToPlaces(v20, 2);
    v8 = v23 = v8;
    goto LABEL_36;
  }

  v39 = v8;
  v13 = [(PKCompoundInterestCalculatorConfiguration *)configuration inGrace];
  v40 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration unpostedInterest];
  v14 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration unpostedInterestTimestamp];
  v15 = v9;
  v16 = [v9 decimalNumberBySubtracting:v6];
  v17 = [MEMORY[0x1E696AB90] zero];
  v18 = [v16 compare:v17];

  if (!v13)
  {
    v19 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration calculationMethod];
    if (v18 == 1)
    {
      goto LABEL_14;
    }

    v9 = v15;
    v23 = v14;
    if (v19 == 1)
    {
      v33 = self;
      v34 = v6;
      v35 = v7;
      v36 = 0;
      goto LABEL_30;
    }

    v8 = v39;
    v20 = v40;
    if (v19)
    {
      goto LABEL_36;
    }

    if (v40)
    {
      v31 = [MEMORY[0x1E696AB90] zero];
      if ([v40 compare:v31] == 1 && v23)
      {
        v32 = [(PKCompoundInterestCalculator *)self _date:v7 isApplicableForProcessingDate:v23];

        if (v32)
        {
          v30 = PKRoundDecimalNumberToPlaces(v40, 2);
          goto LABEL_34;
        }
      }

      else
      {
      }
    }

    v24 = self;
    v25 = v6;
    v26 = v7;
    v27 = 0;
    goto LABEL_33;
  }

  if (v18 == 1)
  {
    v19 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration calculationMethod];
LABEL_14:
    v9 = v15;
    v23 = v14;
    if (v19 != 1)
    {
      v8 = v39;
      v20 = v40;
      if (!v19)
      {
        v24 = self;
        v25 = v6;
        v26 = v7;
        v27 = 1;
LABEL_33:
        v30 = [(PKCompoundInterestCalculator *)v24 _rawCompoundInterestForPaymentOfAmount:v25 onDate:v26 includeNewBalance:v27];
        goto LABEL_34;
      }

      goto LABEL_36;
    }

    v33 = self;
    v34 = v6;
    v35 = v7;
    v36 = 1;
LABEL_30:
    v37 = [(PKCompoundInterestCalculator *)v33 _rawUnpostedInterestCalculationForPaymentOfAmount:v34 onDate:v35 includeNewPurchases:v36];
    v8 = v39;
    v20 = v40;
LABEL_35:

    v8 = v37;
    goto LABEL_36;
  }

  v9 = v15;
  v20 = v40;
  v23 = v14;
  if (!v40)
  {
    v8 = v39;
    goto LABEL_36;
  }

  v28 = [MEMORY[0x1E696AB90] zero];
  v29 = [v40 compare:v28];

  v8 = v39;
  if (v29 == 1)
  {
    v30 = v40;
LABEL_34:
    v37 = v30;
    goto LABEL_35;
  }

LABEL_36:

LABEL_37:
LABEL_38:

  return v8;
}

- (id)_rawCompoundInterestForPaymentOfAmount:(id)a3 onDate:(id)a4 includeNewBalance:(BOOL)a5
{
  v34 = a5;
  v32 = a3;
  v7 = a4;
  v8 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodStartingBalance];
  v9 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodStartDate];
  v36 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodEndDate];
  if ([(PKCompoundInterestCalculatorConfiguration *)self->_configuration inGrace])
  {
    v10 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodStartDate];

    v7 = v10;
  }

  v11 = [MEMORY[0x1E696AB90] zero];
  v12 = [MEMORY[0x1E696AB90] zero];
  v13 = v9;
  v14 = v8;
  v15 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v15 setDay:1];
  v31 = v13;
  v35 = v14;
  if ([(NSCalendar *)self->_calendar compareDate:v13 toDate:v36 toUnitGranularity:16]== NSOrderedAscending)
  {
    v33 = v7;
    do
    {
      v17 = v14;
      v18 = v12;
      v19 = [(PKCompoundInterestCalculator *)self _creditsForProcessingDate:v13, v31];
      v14 = [v14 decimalNumberByAdding:v19];

      v12 = [v12 decimalNumberBySubtracting:v19];

      if (v34)
      {
        v20 = [(PKCompoundInterestCalculator *)self _additionalBalanceForProcessingDate:v13];
        v21 = [v14 decimalNumberByAdding:v20];

        v14 = v21;
      }

      if ([(PKCompoundInterestCalculator *)self _date:v7 isApplicableForProcessingDate:v13])
      {
        v22 = [v14 decimalNumberBySubtracting:v32];

        v7 = v33;
        v23 = [v12 decimalNumberByAdding:v32];

        v14 = v22;
        v12 = v23;
      }

      if ([v12 compare:v35] == -1)
      {
        v24 = [v14 decimalNumberByAdding:v11];
        v25 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration apr];
        v26 = PKCompoundInterestForPrincipal(v24, 1, v25, [(PKCompoundInterestCalculatorConfiguration *)self->_configuration compoundingPeriods]);

        v27 = PKRoundDecimalNumberToPlaces(v26, 7);

        v28 = [v11 decimalNumberByAdding:v27];

        v11 = v28;
        v7 = v33;
      }

      v16 = [(NSCalendar *)self->_calendar dateByAddingComponents:v15 toDate:v13 options:0];

      v13 = v16;
    }

    while ([(NSCalendar *)self->_calendar compareDate:v16 toDate:v36 toUnitGranularity:16]== NSOrderedAscending);
  }

  else
  {
    v16 = v13;
  }

  v29 = PKRoundDecimalNumberToPlaces(v11, 2);

  return v29;
}

- (id)_rawUnpostedInterestCalculationForPaymentOfAmount:(id)a3 onDate:(id)a4 includeNewPurchases:(BOOL)a5
{
  v6 = a5;
  v158 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration remainingPeriodStartingBalance];
  v12 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration remainingPeriodMinimumPayment];
  v13 = v12;
  v14 = 0x1E696A000uLL;
  if (v12)
  {
    v141 = v12;
  }

  else
  {
    v141 = [MEMORY[0x1E696AB90] zero];
  }

  v15 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration remainingPeriodMinimumPaymentExcludedFromInterestCalculation];
  v16 = v15;
  if (v15)
  {
    v138 = v15;
  }

  else
  {
    v138 = [MEMORY[0x1E696AB90] zero];
  }

  v17 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodStartDate];
  v151 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodEndDate];
  v18 = [NSCalendar components:"components:fromDate:toDate:options:" fromDate:16 toDate:v17 options:?];
  v152 = [v18 day];

  v19 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration inGrace];
  v20 = v19;
  v137 = v17;
  if (v19)
  {
    v17 = v17;

    v10 = v17;
  }

  v148 = [MEMORY[0x1E696AB90] zero];
  v140 = v11;
  v136 = v9;
  if (v9)
  {
    v21 = v9;
  }

  else
  {
    v22 = [MEMORY[0x1E696AB90] zero];

    v21 = v22;
  }

  v23 = v141;
  v135 = v21;
  v139 = v140;
  if (([v21 pk_isGreaterThanOrEqualTo:v141] & 1) == 0)
  {
    v17 = v135;
    if ([v135 pk_isLessThan:v141] && (objc_msgSend(v141, "decimalNumberBySubtracting:", v138), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v135, "pk_isGreaterThan:", v24), v24, v23 = v141, v25))
    {
      v26 = [v141 decimalNumberBySubtracting:v135];
      v17 = v140;
      v139 = [v140 decimalNumberBySubtracting:v26];
    }

    else
    {
      v27 = [v23 decimalNumberBySubtracting:v138];
      v28 = [v135 pk_isLessThanOrEqualTo:v27];

      v23 = v141;
      v139 = v140;
      if (!v28)
      {
        goto LABEL_19;
      }

      v26 = v140;
      v139 = [v140 decimalNumberBySubtracting:v138];
    }

    v23 = v141;
  }

LABEL_19:
  v142 = self;
  if (v20)
  {
    v29 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration apr];
    v30 = PKCompoundInterestForPrincipal(v139, v152 + 1, v29, [(PKCompoundInterestCalculatorConfiguration *)self->_configuration compoundingPeriods]);

    v31 = v148;
    v143 = [v148 decimalNumberByAdding:v30];
    v32 = v136;
  }

  else
  {
    calendar = self->_calendar;
    v34 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration unpostedInterestTimestamp];
    v35 = [(NSCalendar *)calendar components:16 fromDate:v34 toDate:v10 options:0];
    v36 = [v35 day];
    v37 = v152 + 1;
    if (v36 <= v152)
    {
      v38 = self->_calendar;
      v17 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration unpostedInterestTimestamp];
      v5 = [(NSCalendar *)v38 components:16 fromDate:v17 toDate:v10 options:0];
      v37 = [v5 day];
    }

    obj = v6;
    if (v37 < 1)
    {
      v43 = 0;
    }

    else
    {
      v39 = self->_calendar;
      v40 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration unpostedInterestTimestamp];
      v41 = v10;
      v42 = [(NSCalendar *)v39 components:16 fromDate:v40 toDate:v10 options:0];
      v43 = v152 + 1;
      if ([v42 day] <= v152)
      {
        v44 = v142->_calendar;
        v45 = [(PKCompoundInterestCalculatorConfiguration *)v142->_configuration unpostedInterestTimestamp];
        [(NSCalendar *)v44 components:16 fromDate:v45 toDate:v41 options:0];
        v144 = v35;
        v46 = v34;
        v47 = v5;
        v49 = v48 = v17;
        v43 = [v49 day];

        v17 = v48;
        v5 = v47;
        v34 = v46;
        v35 = v144;
      }

      v10 = v41;
      self = v142;
    }

    if (v36 <= v152)
    {
    }

    v50 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration apr];
    v51 = PKCompoundInterestForPrincipal(v138, v43, v50, [(PKCompoundInterestCalculatorConfiguration *)self->_configuration compoundingPeriods]);

    v52 = [v148 decimalNumberBySubtracting:v51];

    v30 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration unpostedInterest];
    v53 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration unpostedInterestTimestamp];
    v54 = v53;
    v55 = 0x1E696A000;
    if (!v53 || [v53 compare:v137] == -1 || objc_msgSend(v54, "compare:", v151) == 1)
    {
      v56 = v137;

      v57 = [MEMORY[0x1E696AB90] zero];

      v30 = v57;
      v54 = v56;
    }

    if (!v30 || ([MEMORY[0x1E696AB90] zero], v58 = objc_claimAutoreleasedReturnValue(), v59 = objc_msgSend(v30, "compare:", v58), v58, v59 == -1))
    {
      v62 = [MEMORY[0x1E696AB90] zero];

      v63 = v137;
      v61 = v54;
      v30 = v62;
      v54 = v63;
    }

    else
    {
      v60 = [v52 decimalNumberByAdding:v30];
      v61 = v52;
      v52 = v60;
    }

    v64 = [(NSCalendar *)self->_calendar components:16 fromDate:v54 toDate:v151 options:0];
    v65 = [v64 day];
    v66 = v152 + 1;
    if (v65 < v152)
    {
      v55 = [(NSCalendar *)self->_calendar components:16 fromDate:v54 toDate:v151 options:0];
      v66 = [v55 day] + 1;
    }

    v67 = v10;
    if (v66 < 1)
    {
      v31 = v54;
      v69 = 0;
    }

    else
    {
      v31 = v54;
      v68 = [(NSCalendar *)v142->_calendar components:16 fromDate:v54 toDate:v151 options:0];
      v69 = v152 + 1;
      if ([v68 day] < v152)
      {
        v70 = [(NSCalendar *)v142->_calendar components:16 fromDate:v31 toDate:v151 options:0];
        v69 = [v70 day] + 1;
      }
    }

    if (v65 < v152)
    {
    }

    v71 = [v139 decimalNumberByAdding:v30];
    v17 = [(PKCompoundInterestCalculatorConfiguration *)v142->_configuration apr];
    v72 = PKCompoundInterestForPrincipal(v71, v69, v17, [(PKCompoundInterestCalculatorConfiguration *)v142->_configuration compoundingPeriods]);

    v143 = [v52 decimalNumberByAdding:v72];

    v14 = 0x1E696A000;
    v32 = v136;
    if (v136)
    {
      v6 = obj;
      if ([v136 compare:v140] != -1)
      {
        v73 = [(NSCalendar *)v142->_calendar components:16 fromDate:v67 toDate:v151 options:0];
        v74 = [v73 day];
        v75 = v152 + 1;
        if (v74 < v152)
        {
          v32 = [(NSCalendar *)v142->_calendar components:16 fromDate:v67 toDate:v151 options:0];
          v75 = [v32 day] + 1;
        }

        v76 = v31;
        if (v75 < 1)
        {
          v78 = 0;
        }

        else
        {
          v77 = [(NSCalendar *)v142->_calendar components:16 fromDate:v67 toDate:v151 options:0];
          v78 = v152 + 1;
          if ([v77 day] < v152)
          {
            v79 = [(NSCalendar *)v142->_calendar components:16 fromDate:v67 toDate:v151 options:0];
            v78 = [v79 day] + 1;
          }
        }

        if (v74 < v152)
        {
        }

        v80 = v142;
        v81 = [(PKCompoundInterestCalculatorConfiguration *)v142->_configuration apr];
        v82 = PKCompoundInterestForPrincipal(v30, v78, v81, [(PKCompoundInterestCalculatorConfiguration *)v142->_configuration compoundingPeriods]);

        v133 = v82;
        v83 = [v143 decimalNumberBySubtracting:v82];

        v84 = [(NSCalendar *)v142->_calendar components:16 fromDate:v76 toDate:v67 options:0];
        v85 = [v84 day];
        v86 = v152 + 1;
        if (v85 <= v152)
        {
          v80 = [(NSCalendar *)v142->_calendar components:16 fromDate:v76 toDate:v67 options:0];
          v86 = [v80 day];
        }

        v149 = v78;
        if (v86 < 1)
        {
          v31 = v76;
          v88 = 0;
        }

        else
        {
          v31 = v76;
          v87 = [(NSCalendar *)v142->_calendar components:16 fromDate:v76 toDate:v67 options:0];
          v88 = v152 + 1;
          if ([v87 day] <= v152)
          {
            [(NSCalendar *)v142->_calendar components:16 fromDate:v31 toDate:v67 options:0];
            v145 = v72;
            v89 = v83;
            v91 = v90 = v80;
            v88 = [v91 day];

            v80 = v90;
            v83 = v89;
            v72 = v145;
          }
        }

        if (v85 <= v152)
        {
        }

        v92 = [v139 decimalNumberByAdding:v30];
        v93 = [(PKCompoundInterestCalculatorConfiguration *)v142->_configuration apr];
        v94 = PKCompoundInterestForPrincipal(v92, v88, v93, [(PKCompoundInterestCalculatorConfiguration *)v142->_configuration compoundingPeriods]);

        v95 = [(PKCompoundInterestCalculatorConfiguration *)v142->_configuration apr];
        v17 = PKCompoundInterestForPrincipal(v94, v149, v95, [(PKCompoundInterestCalculatorConfiguration *)v142->_configuration compoundingPeriods]);

        v143 = [v83 decimalNumberBySubtracting:v17];

        v6 = obj;
        v14 = 0x1E696A000uLL;
        v32 = v136;
      }
    }

    else
    {
      v6 = obj;
    }

    v10 = v67;
    v23 = v141;
    self = v142;
  }

  if (v32)
  {
    v96 = [*(v14 + 2960) zero];
    v97 = [v32 compare:v96];

    if (v97 == 1)
    {
      v98 = [(NSCalendar *)self->_calendar components:16 fromDate:v10 toDate:v151 options:0];
      v99 = [v98 day];
      v100 = v152 + 1;
      if (v99 < v152)
      {
        v17 = [(NSCalendar *)self->_calendar components:16 fromDate:v10 toDate:v151 options:0];
        v100 = [v17 day] + 1;
      }

      v101 = v32;
      if (v100 < 1)
      {
        v103 = 0;
      }

      else
      {
        v102 = [(NSCalendar *)self->_calendar components:16 fromDate:v10 toDate:v151 options:0];
        v103 = v152 + 1;
        if ([v102 day] < v152)
        {
          [(NSCalendar *)self->_calendar components:16 fromDate:v10 toDate:v151 options:0];
          v105 = v104 = v6;
          v103 = [v105 day] + 1;

          v6 = v104;
        }
      }

      if (v99 < v152)
      {
      }

      if ([v101 compare:v140] == 1)
      {
        v106 = v140;
      }

      else
      {
        v106 = v101;
      }

      v107 = v106;
      v108 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration apr];
      v109 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration compoundingPeriods];
      v110 = v103;
      v32 = v101;
      v111 = PKCompoundInterestForPrincipal(v107, v110, v108, v109);

      v112 = [v143 decimalNumberBySubtracting:v111];

      v143 = v112;
    }

    v23 = v141;
  }

  if (v6)
  {
    v134 = v10;
    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    obja = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodTransactions];
    v113 = [obja countByEnumeratingWithState:&v153 objects:v157 count:16];
    if (v113)
    {
      v114 = v113;
      v150 = *v154;
      do
      {
        for (i = 0; i != v114; ++i)
        {
          if (*v154 != v150)
          {
            objc_enumerationMutation(obja);
          }

          v116 = *(*(&v153 + 1) + 8 * i);
          v117 = [v116 transactionStatusChangedDate];
          v118 = v117;
          if (v117)
          {
            v119 = v117;
          }

          else
          {
            v119 = [v116 transactionDate];
          }

          v120 = [(NSCalendar *)self->_calendar components:16 fromDate:v119 toDate:v151 options:0];
          v121 = [v120 day];
          v122 = v152 + 1;
          if (v121 < v152)
          {
            v10 = [(NSCalendar *)self->_calendar components:16 fromDate:v119 toDate:v151 options:0];
            v122 = [v10 day] + 1;
          }

          if (v122 < 1)
          {
            v124 = 0;
          }

          else
          {
            v123 = [(NSCalendar *)self->_calendar components:16 fromDate:v119 toDate:v151 options:0];
            v124 = v152 + 1;
            if ([v123 day] < v152)
            {
              v125 = [(NSCalendar *)self->_calendar components:16 fromDate:v119 toDate:v151 options:0];
              v124 = [v125 day] + 1;

              self = v142;
            }
          }

          if (v121 < v152)
          {
          }

          if (![v116 transactionType] && objc_msgSend(v116, "transactionStatus") == 1)
          {
            v126 = [v116 amount];
            v127 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration apr];
            v128 = PKCompoundInterestForPrincipal(v126, v124, v127, [(PKCompoundInterestCalculatorConfiguration *)self->_configuration compoundingPeriods]);

            v129 = [v143 decimalNumberByAdding:v128];

            v143 = v129;
          }
        }

        v114 = [obja countByEnumeratingWithState:&v153 objects:v157 count:16];
      }

      while (v114);
    }

    v32 = v136;
    v10 = v134;
    v23 = v141;
  }

  v130 = PKRoundDecimalNumberToPlaces(v143, 2);

  v131 = v130;
  return v130;
}

- (id)_additionalBalanceForProcessingDate:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AB90] zero];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodTransactions];
  v30 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v30)
  {
    v7 = *v32;
    v29 = *v32;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        v10 = [v9 transactionStatusChangedDate];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = [v9 transactionDate];
        }

        v13 = v12;

        if ([(PKCompoundInterestCalculator *)self _date:v13 isApplicableForProcessingDate:v4])
        {
          if (![v9 transactionType] && objc_msgSend(v9, "transactionStatus") == 1)
          {
            v14 = [v9 amount];
            v15 = [v5 decimalNumberByAdding:v14];

            v5 = v15;
          }

          if ([v9 transactionType] == 4)
          {
            v16 = [v9 amount];
            v17 = [v5 decimalNumberByAdding:v16];

            v5 = v17;
          }

          if ([v9 transactionType] == 7)
          {
            v18 = v6;
            v19 = self;
            v20 = v4;
            v21 = [v9 amount];
            v22 = [MEMORY[0x1E696AB90] zero];
            v23 = [v21 compare:v22];

            if (v23 == 1)
            {
              v24 = [v9 amount];
              v25 = [v5 decimalNumberByAdding:v24];

              v5 = v25;
            }

            v4 = v20;
            self = v19;
            v6 = v18;
            v7 = v29;
          }

          if ([v9 transactionType] == 11)
          {
            v26 = [v9 amount];
            v27 = [v5 decimalNumberByAdding:v26];

            v5 = v27;
          }
        }
      }

      v30 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v30);
  }

  return v5;
}

- (id)_creditsForProcessingDate:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AB90] zero];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v6 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodTransactions];
  obj = [v6 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (obj)
  {
    v7 = *v49;
    v41 = v4;
    do
    {
      for (i = 0; i != obj; i = i + 1)
      {
        if (*v49 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v48 + 1) + 8 * i);
        v10 = [v9 transactionStatusChangedDate];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = [v9 transactionDate];
        }

        v13 = v12;

        if ([(PKCompoundInterestCalculatorConfiguration *)self->_configuration inGrace])
        {
          v14 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodStartDate];

          v13 = v14;
        }

        if ([(PKCompoundInterestCalculator *)self _date:v13 isApplicableForProcessingDate:v4])
        {
          if ([v9 transactionType] == 1 && (objc_msgSend(v9, "transactionStatus") == 1 || objc_msgSend(v9, "transactionStatus") == 3))
          {
            v15 = [v9 amount];
            v16 = [v5 decimalNumberByAdding:v15];

            v5 = v16;
          }

          if ([v9 transactionType] == 7)
          {
            v17 = v7;
            v18 = v6;
            v19 = [v9 amount];
            v20 = [MEMORY[0x1E696AB90] zero];
            v21 = [v19 compare:v20];

            if (v21 == -1)
            {
              v22 = [v9 amount];
              v23 = v5;
              v5 = [v5 decimalNumberByAdding:v22];
            }

            v6 = v18;
            v7 = v17;
            v4 = v41;
          }

          if ([v9 transactionType] == 9)
          {
            v24 = [v9 amount];
            v25 = [v5 decimalNumberByAdding:v24];

            v5 = v25;
          }

          if ([v9 transactionType] == 10)
          {
            v26 = [v9 amount];
            v27 = [v5 decimalNumberByAdding:v26];

            v5 = v27;
          }
        }
      }

      obj = [v6 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (obj);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obja = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration futurePayments];
  v28 = [obja countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v45;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v45 != v30)
        {
          objc_enumerationMutation(obja);
        }

        v32 = *(*(&v44 + 1) + 8 * j);
        v33 = [v32 paymentDate];
        if ([(PKCompoundInterestCalculatorConfiguration *)self->_configuration inGrace])
        {
          v34 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodStartDate];

          v33 = v34;
        }

        if ([(PKCompoundInterestCalculator *)self _date:v33 isApplicableForProcessingDate:v4])
        {
          v35 = [v32 currencyAmount];
          v36 = [v35 amount];

          if (v36)
          {
            v37 = [MEMORY[0x1E696AB90] zero];
            v38 = [v36 compare:v37];

            if (v38 == 1)
            {
              v39 = [v5 decimalNumberBySubtracting:v36];

              v5 = v39;
            }
          }
        }
      }

      v29 = [obja countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v29);
  }

  return v5;
}

- (BOOL)_date:(id)a3 isApplicableForProcessingDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_MergedGlobals_200 != -1)
  {
    dispatch_once(&_MergedGlobals_200, &__block_literal_global_34);
  }

  v8 = v7;
  v9 = [(NSMutableDictionary *)self->_toDateCache objectForKey:v8];
  if (!v9)
  {
    v9 = [(NSCalendar *)self->_calendar dateByAddingComponents:qword_1ED6D18A0 toDate:v8 options:0];
    [(NSMutableDictionary *)self->_toDateCache setObject:v9 forKey:v8];
  }

  v10 = [v8 compare:v6];
  v11 = [v9 compare:v6];
  v13 = v10 != 1 && v11 == 1;

  return v13;
}

uint64_t __68__PKCompoundInterestCalculator__date_isApplicableForProcessingDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v1 = qword_1ED6D18A0;
  qword_1ED6D18A0 = v0;

  v2 = qword_1ED6D18A0;

  return [v2 setDay:1];
}

@end