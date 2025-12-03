@interface _HKCardioFitnessLevelDataSourceDelegate
- (_HKCardioFitnessLevelDataSourceDelegate)initWithCardioFitnessLevel:(int64_t)level healthStore:(id)store baseDisplayType:(id)type;
- (id)dataForDateRange:(id)range timeScope:(int64_t)scope;
@end

@implementation _HKCardioFitnessLevelDataSourceDelegate

- (_HKCardioFitnessLevelDataSourceDelegate)initWithCardioFitnessLevel:(int64_t)level healthStore:(id)store baseDisplayType:(id)type
{
  storeCopy = store;
  typeCopy = type;
  v20.receiver = self;
  v20.super_class = _HKCardioFitnessLevelDataSourceDelegate;
  v10 = [(_HKCardioFitnessLevelDataSourceDelegate *)&v20 init];
  v11 = v10;
  if (v10)
  {
    v10->_cardioFitnessLevel = level;
    objc_storeStrong(&v10->_baseDisplayType, type);
    v12 = [storeCopy biologicalSexWithError:0];
    biologicalSex = [v12 biologicalSex];

    v14 = [storeCopy dateOfBirthComponentsWithError:0];
    dateOfBirthComponents = v11->_dateOfBirthComponents;
    v11->_biologicalSex = biologicalSex;
    v11->_dateOfBirthComponents = v14;
    v16 = v14;

    v17 = [MEMORY[0x1E696C510] unitFromString:@"mL/(kg*min)"];
    unit = v11->_unit;
    v11->_unit = v17;
  }

  return v11;
}

- (id)dataForDateRange:(id)range timeScope:(int64_t)scope
{
  rangeCopy = range;
  v7 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:scope];
  v8 = [v7 seriesPointIntervalComponentsAtResolution:0];
  v9 = +[HKGraphZoomLevelConfiguration defaultCalendar];
  startDate = [rangeCopy startDate];
  v11 = [v9 hk_dateByShiftingFromGregorianCalendarWithUTCTimeZone:startDate];

  endDate = [rangeCopy endDate];

  v13 = [v9 hk_dateByShiftingFromGregorianCalendarWithUTCTimeZone:endDate];

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v11 endDate:v13];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __70___HKCardioFitnessLevelDataSourceDelegate_dataForDateRange_timeScope___block_invoke;
  v21[3] = &unk_1E81B73C8;
  v22 = v8;
  selfCopy = self;
  v16 = v14;
  v24 = v16;
  v17 = v8;
  [v9 hk_enumerateDateInterval:v15 byDateComponents:v17 block:v21];

  v18 = v24;
  v19 = v16;

  return v16;
}

@end