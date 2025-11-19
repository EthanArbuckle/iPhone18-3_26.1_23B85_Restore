@interface _HKCardioFitnessLevelDataSourceDelegate
- (_HKCardioFitnessLevelDataSourceDelegate)initWithCardioFitnessLevel:(int64_t)a3 healthStore:(id)a4 baseDisplayType:(id)a5;
- (id)dataForDateRange:(id)a3 timeScope:(int64_t)a4;
@end

@implementation _HKCardioFitnessLevelDataSourceDelegate

- (_HKCardioFitnessLevelDataSourceDelegate)initWithCardioFitnessLevel:(int64_t)a3 healthStore:(id)a4 baseDisplayType:(id)a5
{
  v8 = a4;
  v9 = a5;
  v20.receiver = self;
  v20.super_class = _HKCardioFitnessLevelDataSourceDelegate;
  v10 = [(_HKCardioFitnessLevelDataSourceDelegate *)&v20 init];
  v11 = v10;
  if (v10)
  {
    v10->_cardioFitnessLevel = a3;
    objc_storeStrong(&v10->_baseDisplayType, a5);
    v12 = [v8 biologicalSexWithError:0];
    v13 = [v12 biologicalSex];

    v14 = [v8 dateOfBirthComponentsWithError:0];
    dateOfBirthComponents = v11->_dateOfBirthComponents;
    v11->_biologicalSex = v13;
    v11->_dateOfBirthComponents = v14;
    v16 = v14;

    v17 = [MEMORY[0x1E696C510] unitFromString:@"mL/(kg*min)"];
    unit = v11->_unit;
    v11->_unit = v17;
  }

  return v11;
}

- (id)dataForDateRange:(id)a3 timeScope:(int64_t)a4
{
  v6 = a3;
  v7 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:a4];
  v8 = [v7 seriesPointIntervalComponentsAtResolution:0];
  v9 = +[HKGraphZoomLevelConfiguration defaultCalendar];
  v10 = [v6 startDate];
  v11 = [v9 hk_dateByShiftingFromGregorianCalendarWithUTCTimeZone:v10];

  v12 = [v6 endDate];

  v13 = [v9 hk_dateByShiftingFromGregorianCalendarWithUTCTimeZone:v12];

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v11 endDate:v13];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __70___HKCardioFitnessLevelDataSourceDelegate_dataForDateRange_timeScope___block_invoke;
  v21[3] = &unk_1E81B73C8;
  v22 = v8;
  v23 = self;
  v16 = v14;
  v24 = v16;
  v17 = v8;
  [v9 hk_enumerateDateInterval:v15 byDateComponents:v17 block:v21];

  v18 = v24;
  v19 = v16;

  return v16;
}

@end