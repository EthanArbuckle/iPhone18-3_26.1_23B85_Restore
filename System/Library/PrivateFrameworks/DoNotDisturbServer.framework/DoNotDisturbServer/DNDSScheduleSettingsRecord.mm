@interface DNDSScheduleSettingsRecord
+ (id)_recordWithEncodedInfo:(id)info error:(id *)error;
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
+ (id)recordForLegacyBehaviorOverride:(id)override lastUpdated:(id)updated;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_initWithLastUpdatedTimestamp:(id)timestamp scheduleEnabledSetting:(id)setting timePeriodStartTimeHour:(id)hour timePeriodStartTimeMinute:(id)minute timePeriodEndTimeHour:(id)timeHour timePeriodEndTimeMinute:(id)timeMinute timePeriodWeekdays:(id)weekdays bedtimeBehaviorEnabledSetting:(id)self0;
- (id)_initWithRecord:(id)record;
- (id)dictionaryRepresentationWithContext:(id)context;
- (id)legacyBehaviorOverride;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation DNDSScheduleSettingsRecord

- (id)_initWithRecord:(id)record
{
  recordCopy = record;
  lastUpdatedTimestamp = [recordCopy lastUpdatedTimestamp];
  scheduleEnabledSetting = [recordCopy scheduleEnabledSetting];
  timePeriodStartTimeHour = [recordCopy timePeriodStartTimeHour];
  timePeriodStartTimeMinute = [recordCopy timePeriodStartTimeMinute];
  timePeriodEndTimeHour = [recordCopy timePeriodEndTimeHour];
  timePeriodEndTimeMinute = [recordCopy timePeriodEndTimeMinute];
  timePeriodWeekdays = [recordCopy timePeriodWeekdays];
  bedtimeBehaviorEnabledSetting = [recordCopy bedtimeBehaviorEnabledSetting];

  v13 = [(DNDSScheduleSettingsRecord *)self _initWithLastUpdatedTimestamp:lastUpdatedTimestamp scheduleEnabledSetting:scheduleEnabledSetting timePeriodStartTimeHour:timePeriodStartTimeHour timePeriodStartTimeMinute:timePeriodStartTimeMinute timePeriodEndTimeHour:timePeriodEndTimeHour timePeriodEndTimeMinute:timePeriodEndTimeMinute timePeriodWeekdays:timePeriodWeekdays bedtimeBehaviorEnabledSetting:bedtimeBehaviorEnabledSetting];
  return v13;
}

- (id)_initWithLastUpdatedTimestamp:(id)timestamp scheduleEnabledSetting:(id)setting timePeriodStartTimeHour:(id)hour timePeriodStartTimeMinute:(id)minute timePeriodEndTimeHour:(id)timeHour timePeriodEndTimeMinute:(id)timeMinute timePeriodWeekdays:(id)weekdays bedtimeBehaviorEnabledSetting:(id)self0
{
  timestampCopy = timestamp;
  settingCopy = setting;
  hourCopy = hour;
  minuteCopy = minute;
  timeHourCopy = timeHour;
  timeMinuteCopy = timeMinute;
  weekdaysCopy = weekdays;
  enabledSettingCopy = enabledSetting;
  v51.receiver = self;
  v51.super_class = DNDSScheduleSettingsRecord;
  v24 = [(DNDSScheduleSettingsRecord *)&v51 init];
  if (v24)
  {
    v25 = [timestampCopy copy];
    v50 = timestampCopy;
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = &unk_285C53460;
    }

    objc_storeStrong(&v24->_lastUpdatedTimestamp, v27);

    v28 = [settingCopy copy];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = &unk_285C53460;
    }

    objc_storeStrong(&v24->_scheduleEnabledSetting, v30);

    v31 = [hourCopy copy];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = &unk_285C53460;
    }

    objc_storeStrong(&v24->_timePeriodStartTimeHour, v33);

    v34 = [minuteCopy copy];
    v35 = v34;
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = &unk_285C53460;
    }

    objc_storeStrong(&v24->_timePeriodStartTimeMinute, v36);

    v37 = [timeHourCopy copy];
    v38 = v37;
    if (v37)
    {
      v39 = v37;
    }

    else
    {
      v39 = &unk_285C53460;
    }

    objc_storeStrong(&v24->_timePeriodEndTimeHour, v39);

    v40 = [timeMinuteCopy copy];
    v41 = v40;
    if (v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = &unk_285C53460;
    }

    objc_storeStrong(&v24->_timePeriodEndTimeMinute, v42);

    v43 = [weekdaysCopy copy];
    v44 = v43;
    if (v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = &unk_285C53478;
    }

    objc_storeStrong(&v24->_timePeriodWeekdays, v45);

    v46 = [enabledSettingCopy copy];
    v47 = v46;
    if (v46)
    {
      v48 = v46;
    }

    else
    {
      v48 = &unk_285C53460;
    }

    objc_storeStrong(&v24->_bedtimeBehaviorEnabledSetting, v48);

    timestampCopy = v50;
  }

  return v24;
}

- (unint64_t)hash
{
  lastUpdatedTimestamp = [(DNDSScheduleSettingsRecord *)self lastUpdatedTimestamp];
  v4 = [lastUpdatedTimestamp hash];
  scheduleEnabledSetting = [(DNDSScheduleSettingsRecord *)self scheduleEnabledSetting];
  v6 = [scheduleEnabledSetting hash] ^ v4;
  timePeriodStartTimeHour = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeHour];
  v8 = [timePeriodStartTimeHour hash];
  timePeriodStartTimeMinute = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeMinute];
  v10 = v6 ^ v8 ^ [timePeriodStartTimeMinute hash];
  timePeriodEndTimeHour = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeHour];
  v12 = [timePeriodEndTimeHour hash];
  timePeriodEndTimeMinute = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeMinute];
  v14 = v12 ^ [timePeriodEndTimeMinute hash];
  timePeriodWeekdays = [(DNDSScheduleSettingsRecord *)self timePeriodWeekdays];
  v16 = v10 ^ v14 ^ [timePeriodWeekdays hash];
  bedtimeBehaviorEnabledSetting = [(DNDSScheduleSettingsRecord *)self bedtimeBehaviorEnabledSetting];
  v18 = [bedtimeBehaviorEnabledSetting hash];

  return v16 ^ v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
    goto LABEL_126;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = 0;
    goto LABEL_126;
  }

  v6 = equalCopy;
  lastUpdatedTimestamp = [(DNDSScheduleSettingsRecord *)self lastUpdatedTimestamp];
  lastUpdatedTimestamp2 = [(DNDSScheduleSettingsRecord *)v6 lastUpdatedTimestamp];
  bedtimeBehaviorEnabledSetting4 = lastUpdatedTimestamp != lastUpdatedTimestamp2;
  if (lastUpdatedTimestamp == lastUpdatedTimestamp2)
  {
    goto LABEL_10;
  }

  lastUpdatedTimestamp3 = [(DNDSScheduleSettingsRecord *)self lastUpdatedTimestamp];
  if (!lastUpdatedTimestamp3)
  {
    v93 = 0;
    memset(v94, 0, sizeof(v94));
    memset(v98, 0, 36);
    v97 = 0;
    v13 = 0;
    v96 = 0;
    memset(v95, 0, sizeof(v95));
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_63;
  }

  v93 = lastUpdatedTimestamp3;
  lastUpdatedTimestamp4 = [(DNDSScheduleSettingsRecord *)v6 lastUpdatedTimestamp];
  if (!lastUpdatedTimestamp4)
  {
    v90 = 0;
    memset(v98, 0, 12);
    memset(&v98[2], 0, 20);
    v97 = 0;
    v13 = 0;
    v96 = 0;
    memset(v94, 0, sizeof(v94));
    memset(v95, 0, sizeof(v95));
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    HIDWORD(v98[1]) = 1;
    goto LABEL_63;
  }

  v90 = lastUpdatedTimestamp4;
  lastUpdatedTimestamp5 = [(DNDSScheduleSettingsRecord *)self lastUpdatedTimestamp];
  [(DNDSScheduleSettingsRecord *)v6 lastUpdatedTimestamp];
  v85 = v86 = lastUpdatedTimestamp5;
  if ([lastUpdatedTimestamp5 isEqual:?])
  {
LABEL_10:
    scheduleEnabledSetting = [(DNDSScheduleSettingsRecord *)self scheduleEnabledSetting];
    scheduleEnabledSetting2 = [(DNDSScheduleSettingsRecord *)v6 scheduleEnabledSetting];
    v92 = scheduleEnabledSetting;
    v19 = scheduleEnabledSetting != scheduleEnabledSetting2;
    HIDWORD(v98[1]) = lastUpdatedTimestamp != lastUpdatedTimestamp2;
    if (scheduleEnabledSetting == scheduleEnabledSetting2)
    {
      goto LABEL_16;
    }

    scheduleEnabledSetting3 = [(DNDSScheduleSettingsRecord *)self scheduleEnabledSetting];
    if (!scheduleEnabledSetting3)
    {
      v89 = 0;
      v97 = 0;
      v13 = 0;
      v96 = 0;
      *(&v98[2] + 4) = 0;
      *(&v98[3] + 4) = 0;
      memset(v94, 0, sizeof(v94));
      memset(v95, 0, sizeof(v95));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      LODWORD(v98[1]) = 0;
      v98[0] = (lastUpdatedTimestamp != lastUpdatedTimestamp2) | 0x100000000;
      LODWORD(v98[2]) = 1;
      goto LABEL_63;
    }

    v89 = scheduleEnabledSetting3;
    scheduleEnabledSetting4 = [(DNDSScheduleSettingsRecord *)v6 scheduleEnabledSetting];
    if (!scheduleEnabledSetting4)
    {
      v84 = 0;
      v13 = 0;
      v98[0] = (lastUpdatedTimestamp != lastUpdatedTimestamp2) | 0x100000000;
      v96 = 0;
      *(&v98[2] + 4) = 0;
      *(&v98[3] + 4) = 0;
      memset(v94, 0, sizeof(v94));
      memset(v95, 0, sizeof(v95));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      LODWORD(v98[1]) = 0;
      LODWORD(v98[2]) = 1;
      v97 = 1;
      goto LABEL_63;
    }

    v84 = scheduleEnabledSetting4;
    scheduleEnabledSetting5 = [(DNDSScheduleSettingsRecord *)self scheduleEnabledSetting];
    scheduleEnabledSetting6 = [(DNDSScheduleSettingsRecord *)v6 scheduleEnabledSetting];
    v80 = scheduleEnabledSetting5;
    if ([scheduleEnabledSetting5 isEqual:?])
    {
LABEL_16:
      timePeriodStartTimeHour = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeHour];
      timePeriodStartTimeHour2 = [(DNDSScheduleSettingsRecord *)v6 timePeriodStartTimeHour];
      v25 = timePeriodStartTimeHour;
      v26 = timePeriodStartTimeHour == timePeriodStartTimeHour2;
      v27 = timePeriodStartTimeHour != timePeriodStartTimeHour2;
      v87 = timePeriodStartTimeHour2;
      v88 = v25;
      LODWORD(v98[2]) = v19;
      if (v26)
      {
        goto LABEL_23;
      }

      timePeriodStartTimeHour3 = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeHour];
      if (!timePeriodStartTimeHour3)
      {
        v83 = 0;
        v96 = 0;
        *(&v98[2] + 4) = 0;
        *(&v98[3] + 4) = 0;
        memset(v94, 0, sizeof(v94));
        memset(v95, 0, sizeof(v95));
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v98[0] = (lastUpdatedTimestamp != lastUpdatedTimestamp2) | 0x100000000;
        v97 = v19 | 0x100000000;
        v13 = v19;
        v14 = 0;
        LODWORD(v98[1]) = 1;
        goto LABEL_63;
      }

      v83 = timePeriodStartTimeHour3;
      timePeriodStartTimeHour4 = [(DNDSScheduleSettingsRecord *)v6 timePeriodStartTimeHour];
      if (!timePeriodStartTimeHour4)
      {
        v78 = 0;
        *v95 = 0;
        v96 = 0;
        *(&v98[2] + 4) = 0;
        *(&v98[3] + 4) = 0;
        memset(v94, 0, sizeof(v94));
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v98[0] = (lastUpdatedTimestamp != lastUpdatedTimestamp2) | 0x100000000;
        v97 = v19 | 0x100000000;
        v13 = v19;
        v14 = 0;
        LODWORD(v98[1]) = 1;
        *&v95[8] = 1;
        goto LABEL_63;
      }

      v78 = timePeriodStartTimeHour4;
      timePeriodStartTimeHour5 = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeHour];
      timePeriodStartTimeHour6 = [(DNDSScheduleSettingsRecord *)v6 timePeriodStartTimeHour];
      v74 = timePeriodStartTimeHour5;
      if ([timePeriodStartTimeHour5 isEqual:?])
      {
LABEL_23:
        timePeriodStartTimeMinute = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeMinute];
        timePeriodStartTimeMinute2 = [(DNDSScheduleSettingsRecord *)v6 timePeriodStartTimeMinute];
        v32 = timePeriodStartTimeMinute;
        v81 = timePeriodStartTimeMinute2;
        v26 = timePeriodStartTimeMinute == timePeriodStartTimeMinute2;
        timePeriodStartTimeHour5 = timePeriodStartTimeMinute != timePeriodStartTimeMinute2;
        LODWORD(v98[1]) = v27;
        v82 = v32;
        if (v26)
        {
          LODWORD(v98[4]) = timePeriodStartTimeHour5;
        }

        else
        {
          timePeriodStartTimeMinute3 = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeMinute];
          if (!timePeriodStartTimeMinute3)
          {
            v77 = 0;
            v98[3] = 0;
            memset(v94, 0, sizeof(v94));
            HIDWORD(v98[2]) = 0;
            *v95 = 0;
            *&v95[4] = v27;
            *&v95[8] = v27;
            v96 = 0x100000000;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v98[0] = (lastUpdatedTimestamp != lastUpdatedTimestamp2) | 0x100000000;
            v97 = v19 | 0x100000000;
            v13 = v19;
            v14 = 0;
            LODWORD(v98[4]) = 1;
            goto LABEL_63;
          }

          v77 = timePeriodStartTimeMinute3;
          timePeriodStartTimeMinute4 = [(DNDSScheduleSettingsRecord *)v6 timePeriodStartTimeMinute];
          if (!timePeriodStartTimeMinute4)
          {
            v72 = 0;
            *&v94[24] = 0;
            *&v94[32] = 0;
            v98[3] = 0;
            memset(v94, 0, 20);
            HIDWORD(v98[2]) = 0;
            *v95 = 0;
            *&v95[4] = v27;
            *&v95[8] = v27;
            v96 = 0x100000000;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v98[0] = (lastUpdatedTimestamp != lastUpdatedTimestamp2) | 0x100000000;
            v97 = v19 | 0x100000000;
            v13 = v19;
            v14 = 0;
            LODWORD(v98[4]) = 1;
            *&v94[20] = 1;
            goto LABEL_63;
          }

          LODWORD(v98[4]) = timePeriodStartTimeHour5;
          v72 = timePeriodStartTimeMinute4;
          timePeriodStartTimeHour5 = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeMinute];
          timePeriodStartTimeMinute5 = [(DNDSScheduleSettingsRecord *)v6 timePeriodStartTimeMinute];
          v68 = timePeriodStartTimeHour5;
          if (![timePeriodStartTimeHour5 isEqual:?])
          {
            *&v94[24] = 0;
            *&v94[32] = 0;
            v98[3] = 0;
            *v94 = 0uLL;
            HIDWORD(v98[2]) = 0;
            *v95 = 0;
            *&v95[4] = v27;
            *&v95[8] = v27;
            v96 = 0x100000000;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v98[0] = (lastUpdatedTimestamp != lastUpdatedTimestamp2) | 0x100000000;
            v97 = v19 | 0x100000000;
            v13 = v19;
            v14 = 0;
            LODWORD(v98[4]) = 1;
            *&v94[16] = 0x100000001;
            goto LABEL_63;
          }
        }

        timePeriodStartTimeHour5 = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeHour];
        timePeriodEndTimeHour = [(DNDSScheduleSettingsRecord *)v6 timePeriodEndTimeHour];
        HIDWORD(v98[3]) = timePeriodStartTimeHour5 != timePeriodEndTimeHour;
        v76 = timePeriodStartTimeHour5;
        if (timePeriodStartTimeHour5 == timePeriodEndTimeHour)
        {
          goto LABEL_38;
        }

        timePeriodEndTimeHour2 = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeHour];
        if (!timePeriodEndTimeHour2)
        {
          v71 = 0;
          *v94 = 0;
          *&v94[8] = 0;
          *&v94[28] = 0;
          *(&v98[2] + 4) = 0;
          *v95 = 0;
          *&v95[4] = v27;
          *&v95[8] = v27;
          v96 = 0x100000000;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v98[0] = (lastUpdatedTimestamp != lastUpdatedTimestamp2) | 0x100000000;
          v97 = v19 | 0x100000000;
          v13 = v19;
          v14 = 0;
          *&v94[20] = v98[4];
          *&v94[24] = 0;
          *&v94[16] = v98[4];
          *&v94[36] = 1;
          HIDWORD(v98[3]) = 1;
          goto LABEL_63;
        }

        v71 = timePeriodEndTimeHour2;
        timePeriodEndTimeHour3 = [(DNDSScheduleSettingsRecord *)v6 timePeriodEndTimeHour];
        if (!timePeriodEndTimeHour3)
        {
          v66 = 0;
          *&v94[4] = 0;
          *&v94[28] = 0;
          *(&v98[2] + 4) = 0;
          *v95 = 0;
          *&v95[4] = v27;
          *&v95[8] = v27;
          v96 = 0x100000000;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v98[0] = (lastUpdatedTimestamp != lastUpdatedTimestamp2) | 0x100000000;
          v97 = v19 | 0x100000000;
          v13 = v19;
          v14 = 0;
          *&v94[20] = v98[4];
          *&v94[24] = 0;
          *&v94[12] = 0;
          *&v94[16] = v98[4];
          *&v94[36] = 1;
          HIDWORD(v98[3]) = 1;
          *v94 = 1;
          goto LABEL_63;
        }

        v66 = timePeriodEndTimeHour3;
        timePeriodStartTimeHour5 = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeHour];
        timePeriodEndTimeHour4 = [(DNDSScheduleSettingsRecord *)v6 timePeriodEndTimeHour];
        v62 = timePeriodStartTimeHour5;
        if ([timePeriodStartTimeHour5 isEqual:?])
        {
LABEL_38:
          timePeriodStartTimeHour5 = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeMinute];
          timePeriodEndTimeMinute = [(DNDSScheduleSettingsRecord *)v6 timePeriodEndTimeMinute];
          LODWORD(v98[3]) = timePeriodStartTimeHour5 != timePeriodEndTimeMinute;
          v69 = timePeriodEndTimeMinute;
          v70 = timePeriodStartTimeHour5;
          if (timePeriodStartTimeHour5 == timePeriodEndTimeMinute)
          {
            goto LABEL_45;
          }

          timePeriodEndTimeMinute2 = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeMinute];
          if (!timePeriodEndTimeMinute2)
          {
            v65 = 0;
            *&v94[32] = 0x100000000;
            *(&v98[2] + 4) = 0x100000000;
            *v95 = 0;
            *&v95[4] = v27;
            *&v95[8] = v27;
            v96 = 0x100000000;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v98[0] = (lastUpdatedTimestamp != lastUpdatedTimestamp2) | 0x100000000;
            v97 = v19 | 0x100000000;
            v13 = v19;
            v14 = 0;
            *&v94[20] = v98[4];
            *&v94[24] = 0x100000000;
            *&v94[16] = v98[4];
            *v94 = HIDWORD(v98[3]);
            *&v94[8] = HIDWORD(v98[3]);
            goto LABEL_63;
          }

          v65 = timePeriodEndTimeMinute2;
          timePeriodEndTimeMinute3 = [(DNDSScheduleSettingsRecord *)v6 timePeriodEndTimeMinute];
          if (!timePeriodEndTimeMinute3)
          {
            v60 = 0;
            *&v94[32] = 0x100000000;
            *(&v98[2] + 4) = 0x100000000;
            *v95 = 0;
            *&v95[4] = v27;
            *&v95[8] = v27;
            v96 = 0x100000000;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v98[0] = (lastUpdatedTimestamp != lastUpdatedTimestamp2) | 0x100000000;
            v97 = v19 | 0x100000000;
            v13 = v19;
            v14 = 0;
            *&v94[20] = v98[4];
            *&v94[24] = 0x100000000;
            *&v94[16] = v98[4];
            *v94 = HIDWORD(v98[3]);
            *&v94[4] = 1;
            *&v94[8] = HIDWORD(v98[3]);
            goto LABEL_63;
          }

          v60 = timePeriodEndTimeMinute3;
          timePeriodStartTimeHour5 = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeMinute];
          timePeriodEndTimeMinute4 = [(DNDSScheduleSettingsRecord *)v6 timePeriodEndTimeMinute];
          v56 = timePeriodStartTimeHour5;
          if ([timePeriodStartTimeHour5 isEqual:?])
          {
LABEL_45:
            timePeriodStartTimeHour5 = [(DNDSScheduleSettingsRecord *)self timePeriodWeekdays];
            timePeriodWeekdays = [(DNDSScheduleSettingsRecord *)v6 timePeriodWeekdays];
            HIDWORD(v98[2]) = timePeriodStartTimeHour5 != timePeriodWeekdays;
            v64 = timePeriodStartTimeHour5;
            if (timePeriodStartTimeHour5 == timePeriodWeekdays)
            {
              goto LABEL_52;
            }

            timePeriodWeekdays2 = [(DNDSScheduleSettingsRecord *)self timePeriodWeekdays];
            if (!timePeriodWeekdays2)
            {
              v59 = 0;
              *v95 = 0;
              *&v95[4] = v27;
              *&v95[8] = v27;
              v96 = 0x100000000;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v98[0] = (lastUpdatedTimestamp != lastUpdatedTimestamp2) | 0x100000000;
              v97 = v19 | 0x100000000;
              v13 = v19;
              v14 = 0;
              *&v94[20] = LODWORD(v98[4]);
              *v94 = HIDWORD(v98[3]);
              *&v94[28] = 1;
              *&v94[4] = v98[3];
              *&v94[12] = v98[3];
              *&v94[16] = v98[4];
              *&v94[32] = 0x100000001;
              HIDWORD(v98[2]) = 1;
              goto LABEL_63;
            }

            v59 = timePeriodWeekdays2;
            timePeriodWeekdays3 = [(DNDSScheduleSettingsRecord *)v6 timePeriodWeekdays];
            if (!timePeriodWeekdays3)
            {
              v54 = 0;
              *v95 = 0;
              *&v95[4] = v27;
              *&v95[8] = v27;
              v96 = 0x100000000;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v98[0] = (lastUpdatedTimestamp != lastUpdatedTimestamp2) | 0x100000000;
              v97 = v19 | 0x100000000;
              v13 = v19;
              v14 = 0;
              *&v94[16] = v98[4];
              *&v94[20] = v98[4];
              *v94 = HIDWORD(v98[3]);
              *&v94[4] = v98[3];
              *&v94[12] = v98[3];
              *&v94[32] = 0x100000001;
              HIDWORD(v98[2]) = 1;
              *&v94[24] = 0x100000001;
              goto LABEL_63;
            }

            v54 = timePeriodWeekdays3;
            timePeriodStartTimeHour5 = [(DNDSScheduleSettingsRecord *)self timePeriodWeekdays];
            timePeriodWeekdays4 = [(DNDSScheduleSettingsRecord *)v6 timePeriodWeekdays];
            v52 = timePeriodStartTimeHour5;
            if ([timePeriodStartTimeHour5 isEqual:?])
            {
LABEL_52:
              timePeriodStartTimeHour5 = [(DNDSScheduleSettingsRecord *)self bedtimeBehaviorEnabledSetting];
              bedtimeBehaviorEnabledSetting = [(DNDSScheduleSettingsRecord *)v6 bedtimeBehaviorEnabledSetting];
              v58 = timePeriodStartTimeHour5;
              if (timePeriodStartTimeHour5 == bedtimeBehaviorEnabledSetting)
              {
                v15 = 0;
                v16 = 0;
                v98[0] = (lastUpdatedTimestamp != lastUpdatedTimestamp2) | 0x100000000;
                v97 = v19 | 0x100000000;
                v13 = v19;
                v14 = 0;
                *&v95[4] = v27;
                *&v95[8] = v27;
                *&v94[16] = v98[4];
                *&v94[20] = v98[4];
                *v95 = HIDWORD(v98[2]);
                *v94 = HIDWORD(v98[3]);
                *&v94[24] = HIDWORD(v98[2]);
                *&v94[28] = 1;
                *&v94[4] = v98[3];
                *&v94[12] = v98[3];
                *&v94[32] = 0x100000001;
                v96 = 0x100000001;
                v17 = 1;
              }

              else
              {
                bedtimeBehaviorEnabledSetting2 = [(DNDSScheduleSettingsRecord *)self bedtimeBehaviorEnabledSetting];
                if (bedtimeBehaviorEnabledSetting2)
                {
                  v53 = bedtimeBehaviorEnabledSetting2;
                  bedtimeBehaviorEnabledSetting3 = [(DNDSScheduleSettingsRecord *)v6 bedtimeBehaviorEnabledSetting];
                  if (bedtimeBehaviorEnabledSetting3)
                  {
                    v50 = bedtimeBehaviorEnabledSetting3;
                    timePeriodStartTimeHour5 = [(DNDSScheduleSettingsRecord *)self bedtimeBehaviorEnabledSetting];
                    bedtimeBehaviorEnabledSetting4 = [(DNDSScheduleSettingsRecord *)v6 bedtimeBehaviorEnabledSetting];
                    v17 = [timePeriodStartTimeHour5 isEqual:bedtimeBehaviorEnabledSetting4];
                    v98[0] = (lastUpdatedTimestamp != lastUpdatedTimestamp2) | 0x100000000;
                    v97 = v19 | 0x100000000;
                    v13 = v19;
                    *&v95[4] = v27;
                    *&v95[8] = v27;
                    *&v94[16] = v98[4];
                    *&v94[20] = v98[4];
                    *v94 = HIDWORD(v98[3]);
                    *&v94[28] = 1;
                    *&v94[4] = v98[3];
                    *&v94[12] = v98[3];
                    *&v94[32] = 0x100000001;
                    *&v94[24] = HIDWORD(v98[2]);
                    *v95 = HIDWORD(v98[2]);
                    v16 = 1;
                  }

                  else
                  {
                    v50 = 0;
                    v16 = 0;
                    v17 = 0;
                    v98[0] = (lastUpdatedTimestamp != lastUpdatedTimestamp2) | 0x100000000;
                    v97 = v19 | 0x100000000;
                    v13 = v19;
                    *&v95[4] = v27;
                    *&v95[8] = v27;
                    *&v94[16] = v98[4];
                    *&v94[20] = v98[4];
                    *v94 = HIDWORD(v98[3]);
                    *&v94[28] = 1;
                    *&v94[4] = v98[3];
                    *&v94[12] = v98[3];
                    *&v94[32] = 0x100000001;
                    *&v94[24] = HIDWORD(v98[2]);
                    *v95 = HIDWORD(v98[2]);
                  }

                  v96 = 0x100000001;
                  v14 = 1;
                  v15 = 1;
                }

                else
                {
                  v53 = 0;
                  v15 = 0;
                  v16 = 0;
                  v17 = 0;
                  v98[0] = (lastUpdatedTimestamp != lastUpdatedTimestamp2) | 0x100000000;
                  v97 = v19 | 0x100000000;
                  v13 = v19;
                  *&v95[4] = v27;
                  *&v95[8] = v27;
                  *&v94[16] = v98[4];
                  *&v94[20] = v98[4];
                  *v94 = HIDWORD(v98[3]);
                  *&v94[28] = 1;
                  *&v94[4] = v98[3];
                  *&v94[12] = v98[3];
                  *&v94[32] = 0x100000001;
                  *&v94[24] = HIDWORD(v98[2]);
                  *v95 = HIDWORD(v98[2]);
                  v96 = 0x100000001;
                  v14 = 1;
                }
              }

              goto LABEL_63;
            }

            *&v95[8] = v27;
            v96 = 0x100000000;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v98[0] = (lastUpdatedTimestamp != lastUpdatedTimestamp2) | 0x100000000;
            v97 = v19 | 0x100000000;
            v13 = v19;
            v14 = 0;
            *&v94[16] = v98[4];
            *&v94[20] = v98[4];
            *v94 = __PAIR64__(v98[3], HIDWORD(v98[3]));
            *&v94[8] = HIDWORD(v98[3]);
            *&v94[12] = v98[3];
            *&v94[32] = 0x100000001;
            HIDWORD(v98[2]) = 1;
            *&v94[24] = 0x100000001;
            *v95 = 1;
            *&v95[4] = v27;
          }

          else
          {
            *&v94[32] = 0x100000000;
            *(&v98[2] + 4) = 0x100000000;
            *v95 = 0;
            *&v95[4] = v27;
            *&v95[8] = v27;
            v96 = 0x100000000;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v98[0] = (lastUpdatedTimestamp != lastUpdatedTimestamp2) | 0x100000000;
            v97 = v19 | 0x100000000;
            v13 = v19;
            v14 = 0;
            *&v94[20] = LODWORD(v98[4]);
            *v94 = HIDWORD(v98[3]) | 0x100000000;
            *&v94[28] = 1;
            *&v94[8] = *v94;
            *&v94[16] = v98[4];
          }
        }

        else
        {
          *&v94[28] = 0;
          *(&v98[2] + 4) = 0;
          *v95 = 0;
          *&v95[4] = v27;
          *&v95[8] = v27;
          v96 = 0x100000000;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v98[0] = (lastUpdatedTimestamp != lastUpdatedTimestamp2) | 0x100000000;
          v97 = v19 | 0x100000000;
          v13 = v19;
          v14 = 0;
          *&v94[20] = v98[4];
          *&v94[24] = 0;
          *&v94[16] = v98[4];
          *&v94[36] = 1;
          HIDWORD(v98[3]) = 1;
          *v94 = 1;
          *&v94[8] = 1;
        }
      }

      else
      {
        v96 = 0;
        *(&v98[2] + 4) = 0;
        *(&v98[3] + 4) = 0;
        memset(v94, 0, sizeof(v94));
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v98[0] = (lastUpdatedTimestamp != lastUpdatedTimestamp2) | 0x100000000;
        v97 = v19 | 0x100000000;
        v13 = v19;
        v14 = 0;
        LODWORD(v98[1]) = 1;
        *&v95[8] = 1;
        *v95 = 0x100000000;
      }
    }

    else
    {
      LODWORD(v98[0]) = lastUpdatedTimestamp != lastUpdatedTimestamp2;
      v96 = 0;
      *(&v98[2] + 4) = 0;
      *(&v98[3] + 4) = 0;
      memset(v94, 0, sizeof(v94));
      memset(v95, 0, sizeof(v95));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *(v98 + 4) = 1;
      LODWORD(v98[2]) = 1;
      v97 = 1;
      v13 = 1;
    }
  }

  else
  {
    *(v98 + 4) = 0;
    memset(&v98[2], 0, 20);
    v97 = 0;
    v13 = 0;
    v96 = 0;
    memset(v94, 0, sizeof(v94));
    memset(v95, 0, sizeof(v95));
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    HIDWORD(v98[1]) = 1;
    LODWORD(v98[0]) = 1;
  }

LABEL_63:
  if (v16)
  {
    v44 = lastUpdatedTimestamp2;
    v45 = lastUpdatedTimestamp;
    v46 = v14;
    v47 = v13;
    v48 = v15;

    v15 = v48;
    v13 = v47;
    v14 = v46;
    lastUpdatedTimestamp = v45;
    lastUpdatedTimestamp2 = v44;
  }

  if (v15)
  {
  }

  if (v14)
  {
  }

  if (v96)
  {
  }

  if (*v95)
  {
  }

  if (*&v94[24])
  {
  }

  if (HIDWORD(v98[2]))
  {
  }

  if (*&v94[32])
  {
  }

  if (*&v94[12])
  {
  }

  if (*&v94[4])
  {
  }

  if (LODWORD(v98[3]))
  {
  }

  if (*&v94[28])
  {
  }

  if (*&v94[8])
  {
  }

  if (*v94)
  {
  }

  if (HIDWORD(v98[3]))
  {
  }

  if (*&v94[36])
  {
  }

  if (*&v94[16])
  {
  }

  if (*&v94[20])
  {
  }

  if (LODWORD(v98[4]))
  {
  }

  if (HIDWORD(v96))
  {
  }

  if (*&v95[4])
  {
  }

  if (*&v95[8])
  {
  }

  if (LODWORD(v98[1]))
  {
  }

  if (HIDWORD(v97))
  {
  }

  if (v13)
  {
  }

  if (v97)
  {
  }

  if (LODWORD(v98[2]))
  {
  }

  if (HIDWORD(v98[0]))
  {
  }

  if (LODWORD(v98[0]))
  {
  }

  if (HIDWORD(v98[1]))
  {
  }

  if (lastUpdatedTimestamp != lastUpdatedTimestamp2)
  {
  }

LABEL_126:
  return v17;
}

- (NSString)description
{
  v14 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  lastUpdatedTimestamp = [(DNDSScheduleSettingsRecord *)self lastUpdatedTimestamp];
  scheduleEnabledSetting = [(DNDSScheduleSettingsRecord *)self scheduleEnabledSetting];
  timePeriodStartTimeHour = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeHour];
  timePeriodStartTimeMinute = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeMinute];
  timePeriodEndTimeHour = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeHour];
  timePeriodEndTimeMinute = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeMinute];
  timePeriodWeekdays = [(DNDSScheduleSettingsRecord *)self timePeriodWeekdays];
  bedtimeBehaviorEnabledSetting = [(DNDSScheduleSettingsRecord *)self bedtimeBehaviorEnabledSetting];
  v12 = [v14 stringWithFormat:@"<%@: %p lastUpdatedTimestamp: %@; scheduleEnabledSetting: %@; timePeriodStartTimeHour: %@; timePeriodStartTimeMinute: %@; timePeriodEndTimeHour: %@; timePeriodEndTimeMinute: %@; timePeriodWeekdays: %@; bedtimeBehaviorEnabledSetting: %@>", v3, self, lastUpdatedTimestamp, scheduleEnabledSetting, timePeriodStartTimeHour, timePeriodStartTimeMinute, timePeriodEndTimeHour, timePeriodEndTimeMinute, timePeriodWeekdays, bedtimeBehaviorEnabledSetting];;

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableScheduleSettingsRecord alloc];

  return [(DNDSScheduleSettingsRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  representationCopy = representation;
  v6 = [representationCopy bs_safeObjectForKey:@"lastUpdatedTimestamp" ofType:objc_opt_class()];
  v7 = [representationCopy bs_safeObjectForKey:@"scheduleEnabledSetting" ofType:objc_opt_class()];
  v8 = [representationCopy bs_safeObjectForKey:@"timePeriodStartTimeHour" ofType:objc_opt_class()];
  v9 = [representationCopy bs_safeObjectForKey:@"timePeriodStartTimeMinute" ofType:objc_opt_class()];
  v10 = [representationCopy bs_safeObjectForKey:@"timePeriodEndTimeHour" ofType:objc_opt_class()];
  v11 = [representationCopy bs_safeObjectForKey:@"timePeriodEndTimeMinute" ofType:objc_opt_class()];
  v12 = [representationCopy bs_safeObjectForKey:@"timePeriodWeekdays" ofType:objc_opt_class()];
  v13 = [representationCopy bs_safeObjectForKey:@"bedtimeBehaviorEnabledSetting" ofType:objc_opt_class()];

  v14 = [[self alloc] _initWithLastUpdatedTimestamp:v6 scheduleEnabledSetting:v7 timePeriodStartTimeHour:v8 timePeriodStartTimeMinute:v9 timePeriodEndTimeHour:v10 timePeriodEndTimeMinute:v11 timePeriodWeekdays:v12 bedtimeBehaviorEnabledSetting:v13];
  return v14;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  lastUpdatedTimestamp = [(DNDSScheduleSettingsRecord *)self lastUpdatedTimestamp];
  [dictionary setObject:lastUpdatedTimestamp forKey:@"lastUpdatedTimestamp"];

  scheduleEnabledSetting = [(DNDSScheduleSettingsRecord *)self scheduleEnabledSetting];
  [dictionary setObject:scheduleEnabledSetting forKey:@"scheduleEnabledSetting"];

  timePeriodStartTimeHour = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeHour];
  [dictionary setObject:timePeriodStartTimeHour forKey:@"timePeriodStartTimeHour"];

  timePeriodStartTimeMinute = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeMinute];
  [dictionary setObject:timePeriodStartTimeMinute forKey:@"timePeriodStartTimeMinute"];

  timePeriodEndTimeHour = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeHour];
  [dictionary setObject:timePeriodEndTimeHour forKey:@"timePeriodEndTimeHour"];

  timePeriodEndTimeMinute = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeMinute];
  [dictionary setObject:timePeriodEndTimeMinute forKey:@"timePeriodEndTimeMinute"];

  timePeriodWeekdays = [(DNDSScheduleSettingsRecord *)self timePeriodWeekdays];
  [dictionary setObject:timePeriodWeekdays forKey:@"timePeriodWeekdays"];

  bedtimeBehaviorEnabledSetting = [(DNDSScheduleSettingsRecord *)self bedtimeBehaviorEnabledSetting];
  [dictionary setObject:bedtimeBehaviorEnabledSetting forKey:@"bedtimeBehaviorEnabledSetting"];

  return dictionary;
}

+ (id)_recordWithEncodedInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v7 = [infoCopy bs_safeObjectForKey:@"overrideStatus" ofType:objc_opt_class()];
  integerValue = [v7 integerValue];
  v9 = [infoCopy bs_safeObjectForKey:@"overrideStatusLastCalculatedTime" ofType:objc_opt_class()];
  v10 = v9;
  if (integerValue == 2 || v9 == 0)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  else
  {
    distantPast = v9;
  }

  v13 = distantPast;
  v14 = [infoCopy bs_safeObjectForKey:@"overrides" ofType:objc_opt_class()];
  v15 = [v14 bs_firstObjectOfClass:objc_opt_class()];
  if (v15)
  {
    v16 = [MEMORY[0x277CCAAC8] dnds_secureLegacyUnarchiverForReadingFromData:v15 error:error];
    v17 = [v16 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];

    if (v17)
    {
      v18 = [self recordForLegacyBehaviorOverride:v17 lastUpdated:v13];
      goto LABEL_12;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = 0;
LABEL_12:

  return v18;
}

+ (id)recordForLegacyBehaviorOverride:(id)override lastUpdated:(id)updated
{
  updatedCopy = updated;
  overrideCopy = override;
  v7 = objc_alloc_init(DNDSMutableScheduleSettingsRecord);
  v8 = MEMORY[0x277CCABB0];
  [updatedCopy timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = [v8 numberWithDouble:v10];
  [(DNDSMutableScheduleSettingsRecord *)v7 setLastUpdatedTimestamp:v11];

  if ([overrideCopy mode] == 3)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
  [(DNDSMutableScheduleSettingsRecord *)v7 setScheduleEnabledSetting:v13];

  effectiveIntervals = [overrideCopy effectiveIntervals];

  firstObject = [effectiveIntervals firstObject];

  startComponents = [firstObject startComponents];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(startComponents, "hour")}];
  [(DNDSMutableScheduleSettingsRecord *)v7 setTimePeriodStartTimeHour:v17];

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(startComponents, "minute")}];
  [(DNDSMutableScheduleSettingsRecord *)v7 setTimePeriodStartTimeMinute:v18];

  endComponents = [firstObject endComponents];
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(endComponents, "hour")}];
  [(DNDSMutableScheduleSettingsRecord *)v7 setTimePeriodEndTimeHour:v20];

  v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(endComponents, "minute")}];
  [(DNDSMutableScheduleSettingsRecord *)v7 setTimePeriodEndTimeMinute:v21];

  [(DNDSMutableScheduleSettingsRecord *)v7 setBedtimeBehaviorEnabledSetting:&unk_285C53598];

  return v7;
}

- (id)legacyBehaviorOverride
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  timePeriodStartTimeHour = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeHour];
  [v3 setHour:{objc_msgSend(timePeriodStartTimeHour, "unsignedIntegerValue")}];

  timePeriodStartTimeMinute = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeMinute];
  [v3 setMinute:{objc_msgSend(timePeriodStartTimeMinute, "unsignedIntegerValue")}];

  v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  timePeriodEndTimeHour = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeHour];
  [v6 setHour:{objc_msgSend(timePeriodEndTimeHour, "unsignedIntegerValue")}];

  timePeriodEndTimeMinute = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeMinute];
  [v6 setMinute:{objc_msgSend(timePeriodEndTimeMinute, "unsignedIntegerValue")}];

  v9 = [DNDSLegacyBehaviorOverrideEffectiveInterval alloc];
  v10 = *MEMORY[0x277CBE5C0];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v12 = [(DNDSLegacyBehaviorOverrideEffectiveInterval *)v9 initWithStartComponents:v3 endComponents:v6 calendarIdentifier:v10 repeatInterval:16 identifier:uUID];

  scheduleEnabledSetting = [(DNDSScheduleSettingsRecord *)self scheduleEnabledSetting];
  [scheduleEnabledSetting unsignedIntegerValue];
  v14 = DNDResolvedScheduleEnabledSetting();

  if (v14 == 2)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  v16 = [DNDSLegacyBehaviorOverride alloc];
  v21[0] = v12;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v18 = [(DNDSLegacyBehaviorOverride *)v16 initWithOverrideType:1 mode:v15 effectiveIntervals:v17];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end