@interface CPSTravelEstimatesStringFormatter
- (CPSTravelEstimatesStringFormatter)init;
- (double)_minuteRoundedTimeRemainingForTravelEstimates:(id)estimates;
- (id)generateTravelEstimatesStringsForTravelEstimates:(id)estimates;
@end

@implementation CPSTravelEstimatesStringFormatter

- (CPSTravelEstimatesStringFormatter)init
{
  v12 = a2;
  v13 = 0;
  v11.receiver = self;
  v11.super_class = CPSTravelEstimatesStringFormatter;
  v13 = [(CPSTravelEstimatesStringFormatter *)&v11 init];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    v10 = objc_alloc_init(MEMORY[0x277CCA968]);
    v7 = v10;
    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    [v7 setLocale:?];
    *&v2 = MEMORY[0x277D82BD8](autoupdatingCurrentLocale).n128_u64[0];
    [v10 setDateStyle:v2];
    [v10 setTimeStyle:1];
    [v10 setAMSymbol:?];
    [v10 setPMSymbol:&stru_2855A5FC8];
    objc_storeStrong(&v13->_arrivalTimeFormatter, v10);
    v9 = objc_alloc_init(MEMORY[0x277CCA958]);
    [v9 setUnitsStyle:0];
    objc_storeStrong(&v13->_remainingTimeFormatter, v9);
    autoupdatingCurrentCalendar = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    calendar = v13->_calendar;
    v13->_calendar = autoupdatingCurrentCalendar;
    MEMORY[0x277D82BD8](calendar);
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
  }

  v6 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v13, 0);
  return v6;
}

- (double)_minuteRoundedTimeRemainingForTravelEstimates:(id)estimates
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, estimates);
  [location[0] timeRemaining];
  v6 = v3;
  [location[0] timeRemaining];
  v7 = v6 - fmod(v4, 60.0);
  objc_storeStrong(location, 0);
  return v7;
}

- (id)generateTravelEstimatesStringsForTravelEstimates:(id)estimates
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, estimates);
  v49 = objc_alloc_init(CPSTravelEstimatesStrings);
  v30 = CPSLocalizedStringForKey(@"ARRIVAL");
  [(CPSTravelEstimatesStrings *)v49 setLocalizedArrivalString:?];
  *&v3 = MEMORY[0x277D82BD8](v30).n128_u64[0];
  distanceRemaining = [location[0] distanceRemaining];
  if (distanceRemaining && ([distanceRemaining doubleValue], v4 >= 0.0))
  {
    v27 = distanceRemaining;
    v38 = MEMORY[0x277D85DD0];
    v39 = -1073741824;
    v40 = 0;
    v41 = __86__CPSTravelEstimatesStringFormatter_generateTravelEstimatesStringsForTravelEstimates___block_invoke;
    v42 = &unk_278D93768;
    v43 = MEMORY[0x277D82BE0](v49);
    CPSFormattedDistanceSepartedShortUnit(v27, &v38);
    objc_storeStrong(&v43, 0);
  }

  else
  {
    [(CPSTravelEstimatesStrings *)v49 setDistanceRemainingString:0x2855A63C8];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v46 = 0;
    v44 = 0;
    if ([currentLocale usesMetricSystem])
    {
      v47 = CPSLocalizedStringForKey(@"KMS");
      v46 = 1;
      v28 = v47;
    }

    else
    {
      v45 = CPSLocalizedStringForKey(@"MI");
      v44 = 1;
      v28 = v45;
    }

    [(CPSTravelEstimatesStrings *)v49 setLocalizedDistanceRemainingUnit:v28];
    if (v44)
    {
      MEMORY[0x277D82BD8](v45);
    }

    if (v46)
    {
      MEMORY[0x277D82BD8](v47);
    }

    *&v5 = MEMORY[0x277D82BD8](currentLocale).n128_u64[0];
  }

  [location[0] timeRemaining];
  if (v6 >= 0.0)
  {
    [(CPSTravelEstimatesStringFormatter *)selfCopy _minuteRoundedTimeRemainingForTravelEstimates:location[0]];
    v37 = v7;
    date = [MEMORY[0x277CBEAA8] date];
    v35 = [date dateByAddingTimeInterval:v37];
    arrivalTimeFormatter = [(CPSTravelEstimatesStringFormatter *)selfCopy arrivalTimeFormatter];
    v34 = [(NSDateFormatter *)arrivalTimeFormatter stringFromDate:v35];
    *&v8 = MEMORY[0x277D82BD8](arrivalTimeFormatter).n128_u64[0];
    [(CPSTravelEstimatesStrings *)v49 setArrivalTimeString:v34, v8];
    calendar = [(CPSTravelEstimatesStringFormatter *)selfCopy calendar];
    v33 = [(NSCalendar *)calendar components:96 fromDate:date toDate:v35 options:0];
    *&v9 = MEMORY[0x277D82BD8](calendar).n128_u64[0];
    if (v33)
    {
      remainingTimeFormatter = [(CPSTravelEstimatesStringFormatter *)selfCopy remainingTimeFormatter];
      [(NSDateComponentsFormatter *)remainingTimeFormatter setAllowedUnits:96];
      if ([v33 hour] >= 10)
      {
        [v33 setMinute:0];
        remainingTimeFormatter2 = [(CPSTravelEstimatesStringFormatter *)selfCopy remainingTimeFormatter];
        [(NSDateComponentsFormatter *)remainingTimeFormatter2 setAllowedUnits:32];
        *&v10 = MEMORY[0x277D82BD8](remainingTimeFormatter2).n128_u64[0];
      }

      remainingTimeFormatter3 = [(CPSTravelEstimatesStringFormatter *)selfCopy remainingTimeFormatter];
      v32 = [(NSDateComponentsFormatter *)remainingTimeFormatter3 stringFromDateComponents:v33];
      v31 = 0;
      if ([v33 hour] <= 1)
      {
        if ([v33 hour] == 1)
        {
          v14 = CPSLocalizedStringForKey(@"HR");
          v15 = v31;
          v31 = v14;
          v13 = MEMORY[0x277D82BD8](v15).n128_u64[0];
        }

        else
        {
          if ([v33 minute] <= 1)
          {
            v16 = CPSLocalizedStringForKey(@"MIN");
          }

          else
          {
            v16 = CPSLocalizedStringForKey(@"MINS");
          }

          v17 = v31;
          v31 = v16;
          v13 = MEMORY[0x277D82BD8](v17).n128_u64[0];
        }
      }

      else
      {
        v11 = CPSLocalizedStringForKey(@"HRS");
        v12 = v31;
        v31 = v11;
        v13 = MEMORY[0x277D82BD8](v12).n128_u64[0];
      }

      [(CPSTravelEstimatesStrings *)v49 setTimeRemainingString:v32, *&v13];
      [(CPSTravelEstimatesStrings *)v49 setLocalizedTimeRemainingUnit:v31];
      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v32, 0);
    }

    else
    {
      [(CPSTravelEstimatesStrings *)v49 setArrivalTimeString:0x2855A63C8, v9];
      [(CPSTravelEstimatesStrings *)v49 setTimeRemainingString:0x2855A63C8];
      v20 = CPSLocalizedStringForKey(@"MINS");
      [(CPSTravelEstimatesStrings *)v49 setLocalizedTimeRemainingUnit:?];
      MEMORY[0x277D82BD8](v20);
    }

    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&date, 0);
  }

  else
  {
    [(CPSTravelEstimatesStrings *)v49 setArrivalTimeString:0x2855A63C8];
    [(CPSTravelEstimatesStrings *)v49 setTimeRemainingString:0x2855A63C8];
    v26 = CPSLocalizedStringForKey(@"MINS");
    [(CPSTravelEstimatesStrings *)v49 setLocalizedTimeRemainingUnit:?];
    MEMORY[0x277D82BD8](v26);
  }

  v19 = MEMORY[0x277D82BE0](v49);
  objc_storeStrong(&distanceRemaining, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(location, 0);

  return v19;
}

void __86__CPSTravelEstimatesStringFormatter_generateTravelEstimatesStringsForTravelEstimates___block_invoke(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  [a1[4] setDistanceRemainingString:location[0]];
  [a1[4] setLocalizedDistanceRemainingUnit:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

@end