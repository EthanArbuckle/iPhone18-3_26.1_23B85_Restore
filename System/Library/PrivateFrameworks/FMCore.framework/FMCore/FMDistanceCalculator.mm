@interface FMDistanceCalculator
- (FMDistanceCalculator)initWithDefaultsSuiteName:(id)a3 locale:(id)a4 measurementSystemLocale:(id)a5;
- (FMDistanceCalculatorLocalizationDelegate)localizationDelegate;
- (NSNumberFormatter)formatter;
- (double)averageDistanceFromLocation:(id)a3 toLocation:(id)a4;
- (id)_localizedDistanceFromLocation:(id)a3 toLocation:(id)a4;
- (id)_localizedStringFromNumber:(id)a3 numberStyle:(unint64_t)a4 fractionDigits:(unint64_t)a5;
- (id)_scaledAndConvertedMin:(double)a3 andMax:(double)a4;
- (id)futureLocalizedDistanceFromLocation:(id)a3 toLocation:(id)a4;
- (id)localizedDistanceFromLocation:(id)a3 toLocation:(id)a4;
- (id)localizedStringForKey:(id)a3 value:(id)a4 table:(id)a5;
- (int64_t)measurementSystem;
- (void)measurementSystem;
- (void)setMeasurementSystem:(int64_t)a3;
@end

@implementation FMDistanceCalculator

- (FMDistanceCalculator)initWithDefaultsSuiteName:(id)a3 locale:(id)a4 measurementSystemLocale:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = FMDistanceCalculator;
  v11 = [(FMDistanceCalculator *)&v19 init];
  if (v11)
  {
    v12 = dispatch_queue_create("FMDistanceCalculator", 0);
    calculationQueue = v11->_calculationQueue;
    v11->_calculationQueue = v12;

    if (v9)
    {
      [(FMDistanceCalculator *)v11 setLocale:v9];
    }

    else
    {
      v14 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
      [(FMDistanceCalculator *)v11 setLocale:v14];
    }

    if (v8)
    {
      v15 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v8];
    }

    else
    {
      v15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    }

    v16 = v15;
    [(FMDistanceCalculator *)v11 setUserDefaults:v15];

    if (v10)
    {
      [(FMDistanceCalculator *)v11 setMeasurementSystemLocale:v10];
    }

    else
    {
      v17 = [(FMDistanceCalculator *)v11 locale];
      [(FMDistanceCalculator *)v11 setMeasurementSystemLocale:v17];
    }
  }

  return v11;
}

- (int64_t)measurementSystem
{
  v3 = [(FMDistanceCalculator *)self measurementSystemLocale];
  v4 = [v3 objectForKey:*MEMORY[0x277CBE6D0]];

  v5 = [(FMDistanceCalculator *)self userDefaults];
  v6 = [v5 stringForKey:@"distanceUnitPref"];

  if (v6)
  {
    if ([v6 isEqualToString:@"mi"])
    {
      v7 = 3;
    }

    else
    {
      if (([v6 isEqualToString:@"km"] & 1) == 0)
      {
        v8 = LogCategory_Unspecified();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(FMDistanceCalculator *)v6 measurementSystem];
        }
      }

      v7 = 2;
    }
  }

  else if ([v4 isEqualToString:@"Metric"])
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  return v7;
}

- (void)setMeasurementSystem:(int64_t)a3
{
  v27[1] = *MEMORY[0x277D85DE8];
  v5 = [(FMDistanceCalculator *)self userDefaults];
  v20 = [(FMDistanceCalculator *)self measurementSystem];
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v6 = @"km";
      goto LABEL_6;
    }

    if (a3 == 3)
    {
      v6 = @"mi";
LABEL_6:
      [v5 setObject:v6 forKey:@"distanceUnitPref"];
      goto LABEL_11;
    }

    v7 = LogCategory_Unspecified();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(FMDistanceCalculator *)a3 setMeasurementSystem:v7];
    }
  }

  [v5 removeObjectForKey:@"distanceUnitPref"];
LABEL_11:
  v8 = objc_opt_new();
  v9 = MEMORY[0x277CBEB98];
  v27[0] = @"distanceUnitPref";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v11 = [v9 setWithArray:v10];
  v12 = [MEMORY[0x277CCA8D8] mainBundle];
  v13 = [v12 bundleIdentifier];
  [v8 synchronizeUserDefaultsDomain:@"group.com.apple.icloud.fm" keys:v11 container:v13 appGroupContainer:@"group.com.apple.icloud.fm"];

  v14 = LogCategory_Unspecified();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = [v15 bundleIdentifier];
    *buf = 138412802;
    v22 = @"distanceUnitPref";
    v23 = 2112;
    v24 = v16;
    v25 = 2112;
    v26 = @"group.com.apple.icloud.fm";
    _os_log_impl(&dword_24A2EE000, v14, OS_LOG_TYPE_INFO, "Syncronizing pref key: %@ for bundle: %@ container:%@", buf, 0x20u);
  }

  if (v20 != a3)
  {
    v17 = LogCategory_Unspecified();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24A2EE000, v17, OS_LOG_TYPE_INFO, "Posting FMDistanceCalculatorMeasurementSystemChangedNotification", buf, 2u);
    }

    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 postNotificationName:@"FMDistanceCalculatorMeasurementSystemChangedNotification" object:self];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (double)averageDistanceFromLocation:(id)a3 toLocation:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 1000000000.0;
  if (v5 && v6)
  {
    [v5 distanceFromLocation:v6];
    v10 = v9;
    [v5 horizontalAccuracy];
    v12 = v11;
    [v7 horizontalAccuracy];
    if (v12 >= v13)
    {
      v13 = v12;
    }

    v14 = 0.0;
    if (v10 > v13)
    {
      [v5 horizontalAccuracy];
      v16 = v10 - v15;
      [v7 horizontalAccuracy];
      v18 = v16 - v17;
      [v5 horizontalAccuracy];
      v20 = v10 + v19;
      [v7 horizontalAccuracy];
      v13 = v20 + v21;
      if (v18 >= 0.0)
      {
        v14 = v18;
      }
    }

    v8 = (v14 + v13) * 0.5;
  }

  return v8;
}

- (id)localizedDistanceFromLocation:(id)a3 toLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = &stru_285D714C0;
  v8 = [(FMDistanceCalculator *)self calculationQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__FMDistanceCalculator_localizedDistanceFromLocation_toLocation___block_invoke;
  v13[3] = &unk_278FD9668;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

uint64_t __65__FMDistanceCalculator_localizedDistanceFromLocation_toLocation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _localizedDistanceFromLocation:*(a1 + 40) toLocation:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)futureLocalizedDistanceFromLocation:(id)a3 toLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277D07B68]);
  v9 = [(FMDistanceCalculator *)self calculationQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__FMDistanceCalculator_futureLocalizedDistanceFromLocation_toLocation___block_invoke;
  v16[3] = &unk_278FD96B8;
  v16[4] = self;
  v17 = v6;
  v18 = v7;
  v10 = v8;
  v19 = v10;
  v11 = v7;
  v12 = v6;
  dispatch_async(v9, v16);

  v13 = v19;
  v14 = v10;

  return v10;
}

void __71__FMDistanceCalculator_futureLocalizedDistanceFromLocation_toLocation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _localizedDistanceFromLocation:*(a1 + 40) toLocation:*(a1 + 48)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__FMDistanceCalculator_futureLocalizedDistanceFromLocation_toLocation___block_invoke_2;
  v4[3] = &unk_278FD9690;
  v5 = *(a1 + 56);
  v6 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

- (id)_scaledAndConvertedMin:(double)a3 andMax:(double)a4
{
  v7 = [(FMDistanceCalculator *)self measurementSystem];
  if (v7 == 3)
  {
    v8 = [(FMDistanceCalculator *)self localizedStringForKey:@"MILES" value:@"Miles"];
    v9 = a3 * 3.2808399 / 5280.0;
    v10 = a4 * 3.2808399 / 5280.0;
  }

  else if (v7 == 2)
  {
    v8 = [(FMDistanceCalculator *)self localizedStringForKey:@"KILOMETERS" value:@"Kilometers"];
    v9 = a3 / 1000.0;
    v10 = a4 / 1000.0;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Unhandled measurementSystem: %ld", -[FMDistanceCalculator measurementSystem](self, "measurementSystem")}];
    v8 = 0;
    v10 = a4;
    v9 = a3;
  }

  v11 = 0;
  if (v10 > 0.0 && v9 >= 0.0)
  {
    v12 = a4 - a3;
    v13 = (a4 - a3) / a3;
    v14 = v12 / a4;
    v11 = [MEMORY[0x277CBEB38] dictionary];
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    [v11 setObject:v15 forKeyedSubscript:@"min"];

    v16 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    [v11 setObject:v16 forKeyedSubscript:@"max"];

    v17 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
    [v11 setObject:v17 forKeyedSubscript:@"minRatio"];

    v18 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
    [v11 setObject:v18 forKeyedSubscript:@"maxRatio"];

    [v11 setObject:v8 forKeyedSubscript:@"units"];
  }

  return v11;
}

- (id)_localizedStringFromNumber:(id)a3 numberStyle:(unint64_t)a4 fractionDigits:(unint64_t)a5
{
  v8 = a3;
  v9 = [(FMDistanceCalculator *)self formatter];
  [v9 setNumberStyle:a4];
  [v9 setMaximumFractionDigits:a5];
  v10 = [v9 stringForObjectValue:v8];

  return v10;
}

- (id)_localizedDistanceFromLocation:(id)a3 toLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FMDistanceCalculator *)self calculationQueue];
  dispatch_assert_queue_V2(v8);

  [v6 distanceFromLocation:v7];
  v10 = v9;
  [v6 horizontalAccuracy];
  v12 = v11;
  [v6 horizontalAccuracy];
  if (v12 >= v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = 0.0;
  if (v10 > v14)
  {
    [v6 horizontalAccuracy];
    v17 = v10 - v16;
    [v7 horizontalAccuracy];
    v19 = v17 - v18;
    [v6 horizontalAccuracy];
    v21 = v10 + v20;
    [v7 horizontalAccuracy];
    v14 = v21 + v22;
    if (v19 >= 0.0)
    {
      v15 = v19;
    }
  }

  v23 = [(FMDistanceCalculator *)self _scaledAndConvertedMin:v15 andMax:v14];
  v24 = v23;
  if (v23)
  {
    v25 = [v23 objectForKeyedSubscript:@"min"];
    [v25 doubleValue];
    v27 = v26;

    v28 = [v24 objectForKeyedSubscript:@"max"];
    [v28 doubleValue];
    v30 = v29;

    v31 = v30 > 1.0 && v30 < 10.0;
    v32 = vabdd_f64(v30, v27);
    if (!v31 || v32 < 1.0)
    {
      v34 = [MEMORY[0x277CCABB0] numberWithDouble:(v27 + v30) * 0.5];
      v37 = [(FMDistanceCalculator *)self _localizedStringFromNumber:v34 numberStyle:1 fractionDigits:v30 < 1.0];

      v35 = MEMORY[0x277CCACA8];
      v39 = [(FMDistanceCalculator *)self localizedStringForKey:@"DISTANCE_BADGE_FORMAT" value:&stru_285D714C0];
      v41 = [v24 objectForKeyedSubscript:@"units"];
      v43 = [v35 stringWithFormat:v39, v37, v41];
    }

    else
    {
      v36 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
      v37 = [(FMDistanceCalculator *)self _localizedStringFromNumber:v36 numberStyle:1 fractionDigits:0];

      v38 = [MEMORY[0x277CCABB0] numberWithDouble:v30];
      v39 = [(FMDistanceCalculator *)self _localizedStringFromNumber:v38 numberStyle:1 fractionDigits:0];

      v40 = MEMORY[0x277CCACA8];
      v41 = [(FMDistanceCalculator *)self localizedStringForKey:@"DISTANCE_BADGE_RANGE_FORMAT" value:&stru_285D714C0];
      v42 = [v24 objectForKeyedSubscript:@"units"];
      v43 = [v40 stringWithFormat:v41, v37, v39, v42];
    }
  }

  else
  {
    v43 = &stru_285D714C0;
  }

  return v43;
}

- (id)localizedStringForKey:(id)a3 value:(id)a4 table:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [(FMDistanceCalculator *)self localizationDelegate];
  if (!v12)
  {
    goto LABEL_3;
  }

  v13 = [(FMDistanceCalculator *)self locale];
  v14 = [v13 languageCode];
  v15 = [v12 localizedStringForKey:v8 table:v10 bundle:v11 languageCode:v14];

  v16 = v10;
  if (!v15)
  {
LABEL_3:
    v16 = v10;
    if ([v10 isEqualToString:&stru_285D714C0])
    {

      v16 = 0;
    }

    v15 = [v11 localizedStringForKey:v8 value:v9 table:v16];
  }

  return v15;
}

- (NSNumberFormatter)formatter
{
  formatter = self->_formatter;
  if (!formatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v5 = [(FMDistanceCalculator *)self locale];
    [(NSNumberFormatter *)v4 setLocale:v5];

    [(NSNumberFormatter *)v4 setRoundingMode:5];
    v6 = self->_formatter;
    self->_formatter = v4;

    formatter = self->_formatter;
  }

  return formatter;
}

- (FMDistanceCalculatorLocalizationDelegate)localizationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_localizationDelegate);

  return WeakRetained;
}

- (void)measurementSystem
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = @"distanceUnitPref";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_24A2EE000, a2, OS_LOG_TYPE_ERROR, "Unknown value for %@ default key: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setMeasurementSystem:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_24A2EE000, a2, OS_LOG_TYPE_ERROR, "Unknown value for setMeasurementSystem: %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end