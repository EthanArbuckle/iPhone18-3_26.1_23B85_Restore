@interface NUNIMoonPhaseModel
- (NUNIMoonPhaseModel)initWithDate:(id)a3 location:(id)a4;
@end

@implementation NUNIMoonPhaseModel

- (NUNIMoonPhaseModel)initWithDate:(id)a3 location:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v44.receiver = self;
  v44.super_class = NUNIMoonPhaseModel;
  v9 = [(NUNIMoonPhaseModel *)&v44 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entryDate, a3);
    objc_storeStrong(&v10->_location, a4);
    location = v10->_location;
    if (!location)
    {
      v23 = NUNILoggingObjectForDomain(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B6D4000, v23, OS_LOG_TYPE_DEFAULT, "NTKMoonPhaseUtilities found no location", buf, 2u);
      }

      v24 = NUNILocalizedString(@"MOONPHASE_UNKNOWN");
      phaseName = v10->_phaseName;
      v10->_phaseName = v24;

      v10->_phaseNumber = 0;
      v10->_hemisphere = -1;
      v10->_event = -1;
      eventDate = v10->_eventDate;
      v10->_eventDate = 0;
      goto LABEL_21;
    }

    [(CLLocation *)location coordinate];
    v13 = v12;
    v15 = v14;
    eventDate = [objc_alloc(MEMORY[0x277D0EAE0]) initWithLocation:v7 date:4 body:{v12, v14}];
    NUNIMoonPhaseAngleFromEphemeris(eventDate);
    v18 = vcvtmd_u64_f64((v17 + 180.0) / 360.0 * 112.0 + 0.5);
    v10->_phaseNumber = v18 - 112 * (((v18 >> 4) * 0x2492492492492493uLL) >> 64);
    v10->_hemisphere = v13 <= 0.0;
    v19 = [MEMORY[0x277CBEBB0] systemTimeZone];
    v20 = NUNIMoonPhaseDescription(v7, v19, v13, v15);
    v21 = v10->_phaseName;
    v10->_phaseName = v20;

    v22 = [eventDate rise];
    if ([v22 compare:v7] == -1)
    {
      v26 = [eventDate set];
      v27 = [v26 compare:v7];

      if (v27 != -1)
      {
        goto LABEL_9;
      }

      v22 = [MEMORY[0x277CBEA80] currentCalendar];
      v41 = objc_alloc(MEMORY[0x277D0EAE0]);
      v42 = [v22 dateByAddingUnit:16 value:1 toDate:v7 options:0];
      v43 = [v41 initWithLocation:v42 date:4 body:{v13, v15}];

      eventDate = v43;
    }

LABEL_9:
    v28 = MEMORY[0x277CBEB18];
    v29 = [eventDate rise];
    v30 = [eventDate set];
    v31 = [v28 arrayWithObjects:{v7, v29, v30, 0}];

    [v31 sortUsingSelector:sel_compare_];
    v32 = [v31 indexOfObject:v7] + 1;
    v33 = NUNILoggingObjectForDomain(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v46 = v32;
      v47 = 2112;
      v48 = v31;
      _os_log_impl(&dword_25B6D4000, v33, OS_LOG_TYPE_DEFAULT, "NTKMoonPhaseUtilities index:%ld times:[%@]", buf, 0x16u);
    }

    if (v32 >= [v31 count])
    {
      v38 = NUNILoggingObjectForDomain(0);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B6D4000, v38, OS_LOG_TYPE_DEFAULT, "NTKMoonPhaseUtilities unknown event as we have old rise set times", buf, 2u);
      }

      v7 = 0;
      v10->_event = -1;
    }

    else
    {
      v34 = [v31 objectAtIndexedSubscript:v32];

      v35 = [eventDate rise];
      v36 = [v34 isEqualToDate:v35];

      v37 = 2;
      if (v36)
      {
        v37 = 0;
      }

      v10->_event = v37;
      if (v34)
      {
        v7 = CLKRoundDateDownToNearestMinute();
      }

      else
      {
        v7 = 0;
      }
    }

    objc_storeStrong(&v10->_eventDate, v7);

LABEL_21:
  }

  v39 = *MEMORY[0x277D85DE8];
  return v10;
}

@end