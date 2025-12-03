@interface PKCompoundInterestCalculator
- (BOOL)_date:(id)_date isApplicableForProcessingDate:(id)date;
- (BOOL)_interestCanBeCalculated;
- (PKCompoundInterestCalculator)initWithConfiguration:(id)configuration;
- (id)_additionalBalanceForProcessingDate:(id)date;
- (id)_creditsForProcessingDate:(id)date;
- (id)_rawCompoundInterestForPaymentOfAmount:(id)amount onDate:(id)date includeNewBalance:(BOOL)balance;
- (id)_rawUnpostedInterestCalculationForPaymentOfAmount:(id)amount onDate:(id)date includeNewPurchases:(BOOL)purchases;
- (id)compoundInterestForPaymentOfAmount:(id)amount onDate:(id)date;
- (id)compoundInterestWithPaymentOfAmount:(id)amount;
@end

@implementation PKCompoundInterestCalculator

- (PKCompoundInterestCalculator)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = PKCompoundInterestCalculator;
  v6 = [(PKCompoundInterestCalculator *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    calendar = v7->_calendar;
    v7->_calendar = v8;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    toDateCache = v7->_toDateCache;
    v7->_toDateCache = dictionary;
  }

  return v7;
}

- (id)compoundInterestWithPaymentOfAmount:(id)amount
{
  v4 = MEMORY[0x1E695DF00];
  amountCopy = amount;
  date = [v4 date];
  v7 = [(PKCompoundInterestCalculator *)self compoundInterestForPaymentOfAmount:amountCopy onDate:date];

  return v7;
}

- (BOOL)_interestCanBeCalculated
{
  configuration = self->_configuration;
  if (!configuration)
  {
    return 0;
  }

  isInDisasterRecovery = [(PKCompoundInterestCalculatorConfiguration *)configuration isInDisasterRecovery];
  v5 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration apr];
  compoundingPeriods = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration compoundingPeriods];
  periodStartDate = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodStartDate];
  periodEndDate = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodEndDate];
  periodStartingBalance = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodStartingBalance];
  if (v5)
  {
    notANumber = [MEMORY[0x1E696AB90] notANumber];
    if ([v5 isEqual:notANumber])
    {
      v11 = 0;
    }

    else
    {
      notANumber2 = [MEMORY[0x1E696AB90] notANumber];
      v13 = (compoundingPeriods > 0) & ~[periodStartingBalance isEqual:notANumber2];
      if (!periodStartDate)
      {
        LOBYTE(v13) = 0;
      }

      if (!periodEndDate)
      {
        LOBYTE(v13) = 0;
      }

      v11 = v13 & !isInDisasterRecovery;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)compoundInterestForPaymentOfAmount:(id)amount onDate:(id)date
{
  amountCopy = amount;
  dateCopy = date;
  zero = [MEMORY[0x1E696AB90] zero];
  if (amountCopy)
  {
    if (dateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    amountCopy = [MEMORY[0x1E696AB90] zero];
    if (dateCopy)
    {
      goto LABEL_3;
    }
  }

  dateCopy = [MEMORY[0x1E695DF00] date];
LABEL_3:
  if (![(PKCompoundInterestCalculator *)self _interestCanBeCalculated])
  {
    goto LABEL_38;
  }

  remainingPeriodStartingBalanceForGracePurposes = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration remainingPeriodStartingBalanceForGracePurposes];
  zero2 = [MEMORY[0x1E696AB90] zero];
  v11 = [remainingPeriodStartingBalanceForGracePurposes compare:zero2];

  configuration = self->_configuration;
  if (v11 != 1)
  {
    unpostedInterest = [(PKCompoundInterestCalculatorConfiguration *)configuration unpostedInterest];
    if (!unpostedInterest)
    {
      goto LABEL_37;
    }

    zero3 = [MEMORY[0x1E696AB90] zero];
    v22 = [unpostedInterest compare:zero3];

    if (v22 != 1)
    {
      goto LABEL_37;
    }

    PKRoundDecimalNumberToPlaces(unpostedInterest, 2);
    zero = v23 = zero;
    goto LABEL_36;
  }

  v39 = zero;
  inGrace = [(PKCompoundInterestCalculatorConfiguration *)configuration inGrace];
  unpostedInterest2 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration unpostedInterest];
  unpostedInterestTimestamp = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration unpostedInterestTimestamp];
  v15 = remainingPeriodStartingBalanceForGracePurposes;
  v16 = [remainingPeriodStartingBalanceForGracePurposes decimalNumberBySubtracting:amountCopy];
  zero4 = [MEMORY[0x1E696AB90] zero];
  v18 = [v16 compare:zero4];

  if (!inGrace)
  {
    calculationMethod = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration calculationMethod];
    if (v18 == 1)
    {
      goto LABEL_14;
    }

    remainingPeriodStartingBalanceForGracePurposes = v15;
    v23 = unpostedInterestTimestamp;
    if (calculationMethod == 1)
    {
      selfCopy4 = self;
      v34 = amountCopy;
      v35 = dateCopy;
      v36 = 0;
      goto LABEL_30;
    }

    zero = v39;
    unpostedInterest = unpostedInterest2;
    if (calculationMethod)
    {
      goto LABEL_36;
    }

    if (unpostedInterest2)
    {
      zero5 = [MEMORY[0x1E696AB90] zero];
      if ([unpostedInterest2 compare:zero5] == 1 && v23)
      {
        v32 = [(PKCompoundInterestCalculator *)self _date:dateCopy isApplicableForProcessingDate:v23];

        if (v32)
        {
          v30 = PKRoundDecimalNumberToPlaces(unpostedInterest2, 2);
          goto LABEL_34;
        }
      }

      else
      {
      }
    }

    selfCopy3 = self;
    v25 = amountCopy;
    v26 = dateCopy;
    v27 = 0;
    goto LABEL_33;
  }

  if (v18 == 1)
  {
    calculationMethod = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration calculationMethod];
LABEL_14:
    remainingPeriodStartingBalanceForGracePurposes = v15;
    v23 = unpostedInterestTimestamp;
    if (calculationMethod != 1)
    {
      zero = v39;
      unpostedInterest = unpostedInterest2;
      if (!calculationMethod)
      {
        selfCopy3 = self;
        v25 = amountCopy;
        v26 = dateCopy;
        v27 = 1;
LABEL_33:
        v30 = [(PKCompoundInterestCalculator *)selfCopy3 _rawCompoundInterestForPaymentOfAmount:v25 onDate:v26 includeNewBalance:v27];
        goto LABEL_34;
      }

      goto LABEL_36;
    }

    selfCopy4 = self;
    v34 = amountCopy;
    v35 = dateCopy;
    v36 = 1;
LABEL_30:
    v37 = [(PKCompoundInterestCalculator *)selfCopy4 _rawUnpostedInterestCalculationForPaymentOfAmount:v34 onDate:v35 includeNewPurchases:v36];
    zero = v39;
    unpostedInterest = unpostedInterest2;
LABEL_35:

    zero = v37;
    goto LABEL_36;
  }

  remainingPeriodStartingBalanceForGracePurposes = v15;
  unpostedInterest = unpostedInterest2;
  v23 = unpostedInterestTimestamp;
  if (!unpostedInterest2)
  {
    zero = v39;
    goto LABEL_36;
  }

  zero6 = [MEMORY[0x1E696AB90] zero];
  v29 = [unpostedInterest2 compare:zero6];

  zero = v39;
  if (v29 == 1)
  {
    v30 = unpostedInterest2;
LABEL_34:
    v37 = v30;
    goto LABEL_35;
  }

LABEL_36:

LABEL_37:
LABEL_38:

  return zero;
}

- (id)_rawCompoundInterestForPaymentOfAmount:(id)amount onDate:(id)date includeNewBalance:(BOOL)balance
{
  balanceCopy = balance;
  amountCopy = amount;
  dateCopy = date;
  periodStartingBalance = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodStartingBalance];
  periodStartDate = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodStartDate];
  periodEndDate = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodEndDate];
  if ([(PKCompoundInterestCalculatorConfiguration *)self->_configuration inGrace])
  {
    periodStartDate2 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodStartDate];

    dateCopy = periodStartDate2;
  }

  zero = [MEMORY[0x1E696AB90] zero];
  zero2 = [MEMORY[0x1E696AB90] zero];
  v13 = periodStartDate;
  v14 = periodStartingBalance;
  v15 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v15 setDay:1];
  v31 = v13;
  v35 = v14;
  if ([(NSCalendar *)self->_calendar compareDate:v13 toDate:periodEndDate toUnitGranularity:16]== NSOrderedAscending)
  {
    v33 = dateCopy;
    do
    {
      v17 = v14;
      v18 = zero2;
      v19 = [(PKCompoundInterestCalculator *)self _creditsForProcessingDate:v13, v31];
      v14 = [v14 decimalNumberByAdding:v19];

      zero2 = [zero2 decimalNumberBySubtracting:v19];

      if (balanceCopy)
      {
        v20 = [(PKCompoundInterestCalculator *)self _additionalBalanceForProcessingDate:v13];
        v21 = [v14 decimalNumberByAdding:v20];

        v14 = v21;
      }

      if ([(PKCompoundInterestCalculator *)self _date:dateCopy isApplicableForProcessingDate:v13])
      {
        v22 = [v14 decimalNumberBySubtracting:amountCopy];

        dateCopy = v33;
        v23 = [zero2 decimalNumberByAdding:amountCopy];

        v14 = v22;
        zero2 = v23;
      }

      if ([zero2 compare:v35] == -1)
      {
        v24 = [v14 decimalNumberByAdding:zero];
        v25 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration apr];
        v26 = PKCompoundInterestForPrincipal(v24, 1, v25, [(PKCompoundInterestCalculatorConfiguration *)self->_configuration compoundingPeriods]);

        v27 = PKRoundDecimalNumberToPlaces(v26, 7);

        v28 = [zero decimalNumberByAdding:v27];

        zero = v28;
        dateCopy = v33;
      }

      v16 = [(NSCalendar *)self->_calendar dateByAddingComponents:v15 toDate:v13 options:0];

      v13 = v16;
    }

    while ([(NSCalendar *)self->_calendar compareDate:v16 toDate:periodEndDate toUnitGranularity:16]== NSOrderedAscending);
  }

  else
  {
    v16 = v13;
  }

  v29 = PKRoundDecimalNumberToPlaces(zero, 2);

  return v29;
}

- (id)_rawUnpostedInterestCalculationForPaymentOfAmount:(id)amount onDate:(id)date includeNewPurchases:(BOOL)purchases
{
  purchasesCopy = purchases;
  v158 = *MEMORY[0x1E69E9840];
  amountCopy = amount;
  dateCopy = date;
  remainingPeriodStartingBalance = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration remainingPeriodStartingBalance];
  remainingPeriodMinimumPayment = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration remainingPeriodMinimumPayment];
  v13 = remainingPeriodMinimumPayment;
  v14 = 0x1E696A000uLL;
  if (remainingPeriodMinimumPayment)
  {
    zero = remainingPeriodMinimumPayment;
  }

  else
  {
    zero = [MEMORY[0x1E696AB90] zero];
  }

  remainingPeriodMinimumPaymentExcludedFromInterestCalculation = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration remainingPeriodMinimumPaymentExcludedFromInterestCalculation];
  v16 = remainingPeriodMinimumPaymentExcludedFromInterestCalculation;
  if (remainingPeriodMinimumPaymentExcludedFromInterestCalculation)
  {
    zero2 = remainingPeriodMinimumPaymentExcludedFromInterestCalculation;
  }

  else
  {
    zero2 = [MEMORY[0x1E696AB90] zero];
  }

  periodStartDate = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodStartDate];
  periodEndDate = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodEndDate];
  v18 = [NSCalendar components:"components:fromDate:toDate:options:" fromDate:16 toDate:periodStartDate options:?];
  v152 = [v18 day];

  inGrace = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration inGrace];
  v20 = inGrace;
  v137 = periodStartDate;
  if (inGrace)
  {
    periodStartDate = periodStartDate;

    dateCopy = periodStartDate;
  }

  zero3 = [MEMORY[0x1E696AB90] zero];
  v140 = remainingPeriodStartingBalance;
  v136 = amountCopy;
  if (amountCopy)
  {
    v21 = amountCopy;
  }

  else
  {
    zero4 = [MEMORY[0x1E696AB90] zero];

    v21 = zero4;
  }

  v23 = zero;
  v135 = v21;
  v139 = v140;
  if (([v21 pk_isGreaterThanOrEqualTo:zero] & 1) == 0)
  {
    periodStartDate = v135;
    if ([v135 pk_isLessThan:zero] && (objc_msgSend(zero, "decimalNumberBySubtracting:", zero2), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v135, "pk_isGreaterThan:", v24), v24, v23 = zero, v25))
    {
      v26 = [zero decimalNumberBySubtracting:v135];
      periodStartDate = v140;
      v139 = [v140 decimalNumberBySubtracting:v26];
    }

    else
    {
      v27 = [v23 decimalNumberBySubtracting:zero2];
      v28 = [v135 pk_isLessThanOrEqualTo:v27];

      v23 = zero;
      v139 = v140;
      if (!v28)
      {
        goto LABEL_19;
      }

      v26 = v140;
      v139 = [v140 decimalNumberBySubtracting:zero2];
    }

    v23 = zero;
  }

LABEL_19:
  selfCopy = self;
  if (v20)
  {
    v29 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration apr];
    unpostedInterest = PKCompoundInterestForPrincipal(v139, v152 + 1, v29, [(PKCompoundInterestCalculatorConfiguration *)self->_configuration compoundingPeriods]);

    v31 = zero3;
    v143 = [zero3 decimalNumberByAdding:unpostedInterest];
    v32 = v136;
  }

  else
  {
    calendar = self->_calendar;
    unpostedInterestTimestamp = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration unpostedInterestTimestamp];
    v35 = [(NSCalendar *)calendar components:16 fromDate:unpostedInterestTimestamp toDate:dateCopy options:0];
    v36 = [v35 day];
    v37 = v152 + 1;
    if (v36 <= v152)
    {
      v38 = self->_calendar;
      periodStartDate = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration unpostedInterestTimestamp];
      v5 = [(NSCalendar *)v38 components:16 fromDate:periodStartDate toDate:dateCopy options:0];
      v37 = [v5 day];
    }

    obj = purchasesCopy;
    if (v37 < 1)
    {
      v43 = 0;
    }

    else
    {
      v39 = self->_calendar;
      unpostedInterestTimestamp2 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration unpostedInterestTimestamp];
      v41 = dateCopy;
      v42 = [(NSCalendar *)v39 components:16 fromDate:unpostedInterestTimestamp2 toDate:dateCopy options:0];
      v43 = v152 + 1;
      if ([v42 day] <= v152)
      {
        v44 = selfCopy->_calendar;
        unpostedInterestTimestamp3 = [(PKCompoundInterestCalculatorConfiguration *)selfCopy->_configuration unpostedInterestTimestamp];
        [(NSCalendar *)v44 components:16 fromDate:unpostedInterestTimestamp3 toDate:v41 options:0];
        v144 = v35;
        v46 = unpostedInterestTimestamp;
        v47 = v5;
        v49 = v48 = periodStartDate;
        v43 = [v49 day];

        periodStartDate = v48;
        v5 = v47;
        unpostedInterestTimestamp = v46;
        v35 = v144;
      }

      dateCopy = v41;
      self = selfCopy;
    }

    if (v36 <= v152)
    {
    }

    v50 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration apr];
    v51 = PKCompoundInterestForPrincipal(zero2, v43, v50, [(PKCompoundInterestCalculatorConfiguration *)self->_configuration compoundingPeriods]);

    v52 = [zero3 decimalNumberBySubtracting:v51];

    unpostedInterest = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration unpostedInterest];
    unpostedInterestTimestamp4 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration unpostedInterestTimestamp];
    v54 = unpostedInterestTimestamp4;
    v55 = 0x1E696A000;
    if (!unpostedInterestTimestamp4 || [unpostedInterestTimestamp4 compare:v137] == -1 || objc_msgSend(v54, "compare:", periodEndDate) == 1)
    {
      v56 = v137;

      zero5 = [MEMORY[0x1E696AB90] zero];

      unpostedInterest = zero5;
      v54 = v56;
    }

    if (!unpostedInterest || ([MEMORY[0x1E696AB90] zero], v58 = objc_claimAutoreleasedReturnValue(), v59 = objc_msgSend(unpostedInterest, "compare:", v58), v58, v59 == -1))
    {
      zero6 = [MEMORY[0x1E696AB90] zero];

      v63 = v137;
      v61 = v54;
      unpostedInterest = zero6;
      v54 = v63;
    }

    else
    {
      v60 = [v52 decimalNumberByAdding:unpostedInterest];
      v61 = v52;
      v52 = v60;
    }

    v64 = [(NSCalendar *)self->_calendar components:16 fromDate:v54 toDate:periodEndDate options:0];
    v65 = [v64 day];
    v66 = v152 + 1;
    if (v65 < v152)
    {
      v55 = [(NSCalendar *)self->_calendar components:16 fromDate:v54 toDate:periodEndDate options:0];
      v66 = [v55 day] + 1;
    }

    v67 = dateCopy;
    if (v66 < 1)
    {
      v31 = v54;
      v69 = 0;
    }

    else
    {
      v31 = v54;
      v68 = [(NSCalendar *)selfCopy->_calendar components:16 fromDate:v54 toDate:periodEndDate options:0];
      v69 = v152 + 1;
      if ([v68 day] < v152)
      {
        v70 = [(NSCalendar *)selfCopy->_calendar components:16 fromDate:v31 toDate:periodEndDate options:0];
        v69 = [v70 day] + 1;
      }
    }

    if (v65 < v152)
    {
    }

    v71 = [v139 decimalNumberByAdding:unpostedInterest];
    periodStartDate = [(PKCompoundInterestCalculatorConfiguration *)selfCopy->_configuration apr];
    v72 = PKCompoundInterestForPrincipal(v71, v69, periodStartDate, [(PKCompoundInterestCalculatorConfiguration *)selfCopy->_configuration compoundingPeriods]);

    v143 = [v52 decimalNumberByAdding:v72];

    v14 = 0x1E696A000;
    v32 = v136;
    if (v136)
    {
      purchasesCopy = obj;
      if ([v136 compare:v140] != -1)
      {
        v73 = [(NSCalendar *)selfCopy->_calendar components:16 fromDate:v67 toDate:periodEndDate options:0];
        v74 = [v73 day];
        v75 = v152 + 1;
        if (v74 < v152)
        {
          v32 = [(NSCalendar *)selfCopy->_calendar components:16 fromDate:v67 toDate:periodEndDate options:0];
          v75 = [v32 day] + 1;
        }

        v76 = v31;
        if (v75 < 1)
        {
          v78 = 0;
        }

        else
        {
          v77 = [(NSCalendar *)selfCopy->_calendar components:16 fromDate:v67 toDate:periodEndDate options:0];
          v78 = v152 + 1;
          if ([v77 day] < v152)
          {
            v79 = [(NSCalendar *)selfCopy->_calendar components:16 fromDate:v67 toDate:periodEndDate options:0];
            v78 = [v79 day] + 1;
          }
        }

        if (v74 < v152)
        {
        }

        v80 = selfCopy;
        v81 = [(PKCompoundInterestCalculatorConfiguration *)selfCopy->_configuration apr];
        v82 = PKCompoundInterestForPrincipal(unpostedInterest, v78, v81, [(PKCompoundInterestCalculatorConfiguration *)selfCopy->_configuration compoundingPeriods]);

        v133 = v82;
        v83 = [v143 decimalNumberBySubtracting:v82];

        v84 = [(NSCalendar *)selfCopy->_calendar components:16 fromDate:v76 toDate:v67 options:0];
        v85 = [v84 day];
        v86 = v152 + 1;
        if (v85 <= v152)
        {
          v80 = [(NSCalendar *)selfCopy->_calendar components:16 fromDate:v76 toDate:v67 options:0];
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
          v87 = [(NSCalendar *)selfCopy->_calendar components:16 fromDate:v76 toDate:v67 options:0];
          v88 = v152 + 1;
          if ([v87 day] <= v152)
          {
            [(NSCalendar *)selfCopy->_calendar components:16 fromDate:v31 toDate:v67 options:0];
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

        v92 = [v139 decimalNumberByAdding:unpostedInterest];
        v93 = [(PKCompoundInterestCalculatorConfiguration *)selfCopy->_configuration apr];
        v94 = PKCompoundInterestForPrincipal(v92, v88, v93, [(PKCompoundInterestCalculatorConfiguration *)selfCopy->_configuration compoundingPeriods]);

        v95 = [(PKCompoundInterestCalculatorConfiguration *)selfCopy->_configuration apr];
        periodStartDate = PKCompoundInterestForPrincipal(v94, v149, v95, [(PKCompoundInterestCalculatorConfiguration *)selfCopy->_configuration compoundingPeriods]);

        v143 = [v83 decimalNumberBySubtracting:periodStartDate];

        purchasesCopy = obj;
        v14 = 0x1E696A000uLL;
        v32 = v136;
      }
    }

    else
    {
      purchasesCopy = obj;
    }

    dateCopy = v67;
    v23 = zero;
    self = selfCopy;
  }

  if (v32)
  {
    zero7 = [*(v14 + 2960) zero];
    v97 = [v32 compare:zero7];

    if (v97 == 1)
    {
      v98 = [(NSCalendar *)self->_calendar components:16 fromDate:dateCopy toDate:periodEndDate options:0];
      v99 = [v98 day];
      v100 = v152 + 1;
      if (v99 < v152)
      {
        periodStartDate = [(NSCalendar *)self->_calendar components:16 fromDate:dateCopy toDate:periodEndDate options:0];
        v100 = [periodStartDate day] + 1;
      }

      v101 = v32;
      if (v100 < 1)
      {
        v103 = 0;
      }

      else
      {
        v102 = [(NSCalendar *)self->_calendar components:16 fromDate:dateCopy toDate:periodEndDate options:0];
        v103 = v152 + 1;
        if ([v102 day] < v152)
        {
          [(NSCalendar *)self->_calendar components:16 fromDate:dateCopy toDate:periodEndDate options:0];
          v105 = v104 = purchasesCopy;
          v103 = [v105 day] + 1;

          purchasesCopy = v104;
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
      compoundingPeriods = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration compoundingPeriods];
      v110 = v103;
      v32 = v101;
      v111 = PKCompoundInterestForPrincipal(v107, v110, v108, compoundingPeriods);

      v112 = [v143 decimalNumberBySubtracting:v111];

      v143 = v112;
    }

    v23 = zero;
  }

  if (purchasesCopy)
  {
    v134 = dateCopy;
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
          transactionStatusChangedDate = [v116 transactionStatusChangedDate];
          v118 = transactionStatusChangedDate;
          if (transactionStatusChangedDate)
          {
            transactionDate = transactionStatusChangedDate;
          }

          else
          {
            transactionDate = [v116 transactionDate];
          }

          v120 = [(NSCalendar *)self->_calendar components:16 fromDate:transactionDate toDate:periodEndDate options:0];
          v121 = [v120 day];
          v122 = v152 + 1;
          if (v121 < v152)
          {
            dateCopy = [(NSCalendar *)self->_calendar components:16 fromDate:transactionDate toDate:periodEndDate options:0];
            v122 = [dateCopy day] + 1;
          }

          if (v122 < 1)
          {
            v124 = 0;
          }

          else
          {
            v123 = [(NSCalendar *)self->_calendar components:16 fromDate:transactionDate toDate:periodEndDate options:0];
            v124 = v152 + 1;
            if ([v123 day] < v152)
            {
              v125 = [(NSCalendar *)self->_calendar components:16 fromDate:transactionDate toDate:periodEndDate options:0];
              v124 = [v125 day] + 1;

              self = selfCopy;
            }
          }

          if (v121 < v152)
          {
          }

          if (![v116 transactionType] && objc_msgSend(v116, "transactionStatus") == 1)
          {
            amount = [v116 amount];
            v127 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration apr];
            v128 = PKCompoundInterestForPrincipal(amount, v124, v127, [(PKCompoundInterestCalculatorConfiguration *)self->_configuration compoundingPeriods]);

            v129 = [v143 decimalNumberByAdding:v128];

            v143 = v129;
          }
        }

        v114 = [obja countByEnumeratingWithState:&v153 objects:v157 count:16];
      }

      while (v114);
    }

    v32 = v136;
    dateCopy = v134;
    v23 = zero;
  }

  v130 = PKRoundDecimalNumberToPlaces(v143, 2);

  v131 = v130;
  return v130;
}

- (id)_additionalBalanceForProcessingDate:(id)date
{
  v36 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  zero = [MEMORY[0x1E696AB90] zero];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  periodTransactions = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodTransactions];
  v30 = [periodTransactions countByEnumeratingWithState:&v31 objects:v35 count:16];
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
          objc_enumerationMutation(periodTransactions);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        transactionStatusChangedDate = [v9 transactionStatusChangedDate];
        v11 = transactionStatusChangedDate;
        if (transactionStatusChangedDate)
        {
          transactionDate = transactionStatusChangedDate;
        }

        else
        {
          transactionDate = [v9 transactionDate];
        }

        v13 = transactionDate;

        if ([(PKCompoundInterestCalculator *)self _date:v13 isApplicableForProcessingDate:dateCopy])
        {
          if (![v9 transactionType] && objc_msgSend(v9, "transactionStatus") == 1)
          {
            amount = [v9 amount];
            v15 = [zero decimalNumberByAdding:amount];

            zero = v15;
          }

          if ([v9 transactionType] == 4)
          {
            amount2 = [v9 amount];
            v17 = [zero decimalNumberByAdding:amount2];

            zero = v17;
          }

          if ([v9 transactionType] == 7)
          {
            v18 = periodTransactions;
            selfCopy = self;
            v20 = dateCopy;
            amount3 = [v9 amount];
            zero2 = [MEMORY[0x1E696AB90] zero];
            v23 = [amount3 compare:zero2];

            if (v23 == 1)
            {
              amount4 = [v9 amount];
              v25 = [zero decimalNumberByAdding:amount4];

              zero = v25;
            }

            dateCopy = v20;
            self = selfCopy;
            periodTransactions = v18;
            v7 = v29;
          }

          if ([v9 transactionType] == 11)
          {
            amount5 = [v9 amount];
            v27 = [zero decimalNumberByAdding:amount5];

            zero = v27;
          }
        }
      }

      v30 = [periodTransactions countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v30);
  }

  return zero;
}

- (id)_creditsForProcessingDate:(id)date
{
  v54 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  zero = [MEMORY[0x1E696AB90] zero];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  periodTransactions = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodTransactions];
  obj = [periodTransactions countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (obj)
  {
    v7 = *v49;
    v41 = dateCopy;
    do
    {
      for (i = 0; i != obj; i = i + 1)
      {
        if (*v49 != v7)
        {
          objc_enumerationMutation(periodTransactions);
        }

        v9 = *(*(&v48 + 1) + 8 * i);
        transactionStatusChangedDate = [v9 transactionStatusChangedDate];
        v11 = transactionStatusChangedDate;
        if (transactionStatusChangedDate)
        {
          transactionDate = transactionStatusChangedDate;
        }

        else
        {
          transactionDate = [v9 transactionDate];
        }

        v13 = transactionDate;

        if ([(PKCompoundInterestCalculatorConfiguration *)self->_configuration inGrace])
        {
          periodStartDate = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodStartDate];

          v13 = periodStartDate;
        }

        if ([(PKCompoundInterestCalculator *)self _date:v13 isApplicableForProcessingDate:dateCopy])
        {
          if ([v9 transactionType] == 1 && (objc_msgSend(v9, "transactionStatus") == 1 || objc_msgSend(v9, "transactionStatus") == 3))
          {
            amount = [v9 amount];
            v16 = [zero decimalNumberByAdding:amount];

            zero = v16;
          }

          if ([v9 transactionType] == 7)
          {
            v17 = v7;
            v18 = periodTransactions;
            amount2 = [v9 amount];
            zero2 = [MEMORY[0x1E696AB90] zero];
            v21 = [amount2 compare:zero2];

            if (v21 == -1)
            {
              amount3 = [v9 amount];
              v23 = zero;
              zero = [zero decimalNumberByAdding:amount3];
            }

            periodTransactions = v18;
            v7 = v17;
            dateCopy = v41;
          }

          if ([v9 transactionType] == 9)
          {
            amount4 = [v9 amount];
            v25 = [zero decimalNumberByAdding:amount4];

            zero = v25;
          }

          if ([v9 transactionType] == 10)
          {
            amount5 = [v9 amount];
            v27 = [zero decimalNumberByAdding:amount5];

            zero = v27;
          }
        }
      }

      obj = [periodTransactions countByEnumeratingWithState:&v48 objects:v53 count:16];
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
        paymentDate = [v32 paymentDate];
        if ([(PKCompoundInterestCalculatorConfiguration *)self->_configuration inGrace])
        {
          periodStartDate2 = [(PKCompoundInterestCalculatorConfiguration *)self->_configuration periodStartDate];

          paymentDate = periodStartDate2;
        }

        if ([(PKCompoundInterestCalculator *)self _date:paymentDate isApplicableForProcessingDate:dateCopy])
        {
          currencyAmount = [v32 currencyAmount];
          amount6 = [currencyAmount amount];

          if (amount6)
          {
            zero3 = [MEMORY[0x1E696AB90] zero];
            v38 = [amount6 compare:zero3];

            if (v38 == 1)
            {
              v39 = [zero decimalNumberBySubtracting:amount6];

              zero = v39;
            }
          }
        }
      }

      v29 = [obja countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v29);
  }

  return zero;
}

- (BOOL)_date:(id)_date isApplicableForProcessingDate:(id)date
{
  _dateCopy = _date;
  dateCopy = date;
  if (_MergedGlobals_200 != -1)
  {
    dispatch_once(&_MergedGlobals_200, &__block_literal_global_34);
  }

  v8 = dateCopy;
  v9 = [(NSMutableDictionary *)self->_toDateCache objectForKey:v8];
  if (!v9)
  {
    v9 = [(NSCalendar *)self->_calendar dateByAddingComponents:qword_1ED6D18A0 toDate:v8 options:0];
    [(NSMutableDictionary *)self->_toDateCache setObject:v9 forKey:v8];
  }

  v10 = [v8 compare:_dateCopy];
  v11 = [v9 compare:_dateCopy];
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