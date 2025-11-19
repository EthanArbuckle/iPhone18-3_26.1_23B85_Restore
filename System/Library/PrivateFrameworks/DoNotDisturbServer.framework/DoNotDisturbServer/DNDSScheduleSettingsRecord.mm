@interface DNDSScheduleSettingsRecord
+ (id)_recordWithEncodedInfo:(id)a3 error:(id *)a4;
+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4;
+ (id)recordForLegacyBehaviorOverride:(id)a3 lastUpdated:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_initWithLastUpdatedTimestamp:(id)a3 scheduleEnabledSetting:(id)a4 timePeriodStartTimeHour:(id)a5 timePeriodStartTimeMinute:(id)a6 timePeriodEndTimeHour:(id)a7 timePeriodEndTimeMinute:(id)a8 timePeriodWeekdays:(id)a9 bedtimeBehaviorEnabledSetting:(id)a10;
- (id)_initWithRecord:(id)a3;
- (id)dictionaryRepresentationWithContext:(id)a3;
- (id)legacyBehaviorOverride;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation DNDSScheduleSettingsRecord

- (id)_initWithRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 lastUpdatedTimestamp];
  v6 = [v4 scheduleEnabledSetting];
  v7 = [v4 timePeriodStartTimeHour];
  v8 = [v4 timePeriodStartTimeMinute];
  v9 = [v4 timePeriodEndTimeHour];
  v10 = [v4 timePeriodEndTimeMinute];
  v11 = [v4 timePeriodWeekdays];
  v12 = [v4 bedtimeBehaviorEnabledSetting];

  v13 = [(DNDSScheduleSettingsRecord *)self _initWithLastUpdatedTimestamp:v5 scheduleEnabledSetting:v6 timePeriodStartTimeHour:v7 timePeriodStartTimeMinute:v8 timePeriodEndTimeHour:v9 timePeriodEndTimeMinute:v10 timePeriodWeekdays:v11 bedtimeBehaviorEnabledSetting:v12];
  return v13;
}

- (id)_initWithLastUpdatedTimestamp:(id)a3 scheduleEnabledSetting:(id)a4 timePeriodStartTimeHour:(id)a5 timePeriodStartTimeMinute:(id)a6 timePeriodEndTimeHour:(id)a7 timePeriodEndTimeMinute:(id)a8 timePeriodWeekdays:(id)a9 bedtimeBehaviorEnabledSetting:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v51.receiver = self;
  v51.super_class = DNDSScheduleSettingsRecord;
  v24 = [(DNDSScheduleSettingsRecord *)&v51 init];
  if (v24)
  {
    v25 = [v16 copy];
    v50 = v16;
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

    v28 = [v17 copy];
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

    v31 = [v18 copy];
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

    v34 = [v19 copy];
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

    v37 = [v20 copy];
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

    v40 = [v21 copy];
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

    v43 = [v22 copy];
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

    v46 = [v23 copy];
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

    v16 = v50;
  }

  return v24;
}

- (unint64_t)hash
{
  v3 = [(DNDSScheduleSettingsRecord *)self lastUpdatedTimestamp];
  v4 = [v3 hash];
  v5 = [(DNDSScheduleSettingsRecord *)self scheduleEnabledSetting];
  v6 = [v5 hash] ^ v4;
  v7 = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeHour];
  v8 = [v7 hash];
  v9 = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeMinute];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeHour];
  v12 = [v11 hash];
  v13 = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeMinute];
  v14 = v12 ^ [v13 hash];
  v15 = [(DNDSScheduleSettingsRecord *)self timePeriodWeekdays];
  v16 = v10 ^ v14 ^ [v15 hash];
  v17 = [(DNDSScheduleSettingsRecord *)self bedtimeBehaviorEnabledSetting];
  v18 = [v17 hash];

  return v16 ^ v18;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
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

  v6 = v5;
  v7 = [(DNDSScheduleSettingsRecord *)self lastUpdatedTimestamp];
  v8 = [(DNDSScheduleSettingsRecord *)v6 lastUpdatedTimestamp];
  v9 = v7 != v8;
  if (v7 == v8)
  {
    goto LABEL_10;
  }

  v10 = [(DNDSScheduleSettingsRecord *)self lastUpdatedTimestamp];
  if (!v10)
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

  v93 = v10;
  v11 = [(DNDSScheduleSettingsRecord *)v6 lastUpdatedTimestamp];
  if (!v11)
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

  v90 = v11;
  v12 = [(DNDSScheduleSettingsRecord *)self lastUpdatedTimestamp];
  [(DNDSScheduleSettingsRecord *)v6 lastUpdatedTimestamp];
  v85 = v86 = v12;
  if ([v12 isEqual:?])
  {
LABEL_10:
    v18 = [(DNDSScheduleSettingsRecord *)self scheduleEnabledSetting];
    v91 = [(DNDSScheduleSettingsRecord *)v6 scheduleEnabledSetting];
    v92 = v18;
    v19 = v18 != v91;
    HIDWORD(v98[1]) = v7 != v8;
    if (v18 == v91)
    {
      goto LABEL_16;
    }

    v20 = [(DNDSScheduleSettingsRecord *)self scheduleEnabledSetting];
    if (!v20)
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
      v98[0] = (v7 != v8) | 0x100000000;
      LODWORD(v98[2]) = 1;
      goto LABEL_63;
    }

    v89 = v20;
    v21 = [(DNDSScheduleSettingsRecord *)v6 scheduleEnabledSetting];
    if (!v21)
    {
      v84 = 0;
      v13 = 0;
      v98[0] = (v7 != v8) | 0x100000000;
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

    v84 = v21;
    v22 = [(DNDSScheduleSettingsRecord *)self scheduleEnabledSetting];
    v79 = [(DNDSScheduleSettingsRecord *)v6 scheduleEnabledSetting];
    v80 = v22;
    if ([v22 isEqual:?])
    {
LABEL_16:
      v23 = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeHour];
      v24 = [(DNDSScheduleSettingsRecord *)v6 timePeriodStartTimeHour];
      v25 = v23;
      v26 = v23 == v24;
      v27 = v23 != v24;
      v87 = v24;
      v88 = v25;
      LODWORD(v98[2]) = v19;
      if (v26)
      {
        goto LABEL_23;
      }

      v28 = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeHour];
      if (!v28)
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
        v98[0] = (v7 != v8) | 0x100000000;
        v97 = v19 | 0x100000000;
        v13 = v19;
        v14 = 0;
        LODWORD(v98[1]) = 1;
        goto LABEL_63;
      }

      v83 = v28;
      v29 = [(DNDSScheduleSettingsRecord *)v6 timePeriodStartTimeHour];
      if (!v29)
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
        v98[0] = (v7 != v8) | 0x100000000;
        v97 = v19 | 0x100000000;
        v13 = v19;
        v14 = 0;
        LODWORD(v98[1]) = 1;
        *&v95[8] = 1;
        goto LABEL_63;
      }

      v78 = v29;
      v3 = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeHour];
      v73 = [(DNDSScheduleSettingsRecord *)v6 timePeriodStartTimeHour];
      v74 = v3;
      if ([v3 isEqual:?])
      {
LABEL_23:
        v30 = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeMinute];
        v31 = [(DNDSScheduleSettingsRecord *)v6 timePeriodStartTimeMinute];
        v32 = v30;
        v81 = v31;
        v26 = v30 == v31;
        v3 = v30 != v31;
        LODWORD(v98[1]) = v27;
        v82 = v32;
        if (v26)
        {
          LODWORD(v98[4]) = v3;
        }

        else
        {
          v33 = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeMinute];
          if (!v33)
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
            v98[0] = (v7 != v8) | 0x100000000;
            v97 = v19 | 0x100000000;
            v13 = v19;
            v14 = 0;
            LODWORD(v98[4]) = 1;
            goto LABEL_63;
          }

          v77 = v33;
          v34 = [(DNDSScheduleSettingsRecord *)v6 timePeriodStartTimeMinute];
          if (!v34)
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
            v98[0] = (v7 != v8) | 0x100000000;
            v97 = v19 | 0x100000000;
            v13 = v19;
            v14 = 0;
            LODWORD(v98[4]) = 1;
            *&v94[20] = 1;
            goto LABEL_63;
          }

          LODWORD(v98[4]) = v3;
          v72 = v34;
          v3 = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeMinute];
          v67 = [(DNDSScheduleSettingsRecord *)v6 timePeriodStartTimeMinute];
          v68 = v3;
          if (![v3 isEqual:?])
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
            v98[0] = (v7 != v8) | 0x100000000;
            v97 = v19 | 0x100000000;
            v13 = v19;
            v14 = 0;
            LODWORD(v98[4]) = 1;
            *&v94[16] = 0x100000001;
            goto LABEL_63;
          }
        }

        v3 = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeHour];
        v75 = [(DNDSScheduleSettingsRecord *)v6 timePeriodEndTimeHour];
        HIDWORD(v98[3]) = v3 != v75;
        v76 = v3;
        if (v3 == v75)
        {
          goto LABEL_38;
        }

        v35 = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeHour];
        if (!v35)
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
          v98[0] = (v7 != v8) | 0x100000000;
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

        v71 = v35;
        v36 = [(DNDSScheduleSettingsRecord *)v6 timePeriodEndTimeHour];
        if (!v36)
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
          v98[0] = (v7 != v8) | 0x100000000;
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

        v66 = v36;
        v3 = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeHour];
        v61 = [(DNDSScheduleSettingsRecord *)v6 timePeriodEndTimeHour];
        v62 = v3;
        if ([v3 isEqual:?])
        {
LABEL_38:
          v3 = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeMinute];
          v37 = [(DNDSScheduleSettingsRecord *)v6 timePeriodEndTimeMinute];
          LODWORD(v98[3]) = v3 != v37;
          v69 = v37;
          v70 = v3;
          if (v3 == v37)
          {
            goto LABEL_45;
          }

          v38 = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeMinute];
          if (!v38)
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
            v98[0] = (v7 != v8) | 0x100000000;
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

          v65 = v38;
          v39 = [(DNDSScheduleSettingsRecord *)v6 timePeriodEndTimeMinute];
          if (!v39)
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
            v98[0] = (v7 != v8) | 0x100000000;
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

          v60 = v39;
          v3 = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeMinute];
          v55 = [(DNDSScheduleSettingsRecord *)v6 timePeriodEndTimeMinute];
          v56 = v3;
          if ([v3 isEqual:?])
          {
LABEL_45:
            v3 = [(DNDSScheduleSettingsRecord *)self timePeriodWeekdays];
            v63 = [(DNDSScheduleSettingsRecord *)v6 timePeriodWeekdays];
            HIDWORD(v98[2]) = v3 != v63;
            v64 = v3;
            if (v3 == v63)
            {
              goto LABEL_52;
            }

            v40 = [(DNDSScheduleSettingsRecord *)self timePeriodWeekdays];
            if (!v40)
            {
              v59 = 0;
              *v95 = 0;
              *&v95[4] = v27;
              *&v95[8] = v27;
              v96 = 0x100000000;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v98[0] = (v7 != v8) | 0x100000000;
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

            v59 = v40;
            v41 = [(DNDSScheduleSettingsRecord *)v6 timePeriodWeekdays];
            if (!v41)
            {
              v54 = 0;
              *v95 = 0;
              *&v95[4] = v27;
              *&v95[8] = v27;
              v96 = 0x100000000;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v98[0] = (v7 != v8) | 0x100000000;
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

            v54 = v41;
            v3 = [(DNDSScheduleSettingsRecord *)self timePeriodWeekdays];
            v51 = [(DNDSScheduleSettingsRecord *)v6 timePeriodWeekdays];
            v52 = v3;
            if ([v3 isEqual:?])
            {
LABEL_52:
              v3 = [(DNDSScheduleSettingsRecord *)self bedtimeBehaviorEnabledSetting];
              v57 = [(DNDSScheduleSettingsRecord *)v6 bedtimeBehaviorEnabledSetting];
              v58 = v3;
              if (v3 == v57)
              {
                v15 = 0;
                v16 = 0;
                v98[0] = (v7 != v8) | 0x100000000;
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
                v42 = [(DNDSScheduleSettingsRecord *)self bedtimeBehaviorEnabledSetting];
                if (v42)
                {
                  v53 = v42;
                  v43 = [(DNDSScheduleSettingsRecord *)v6 bedtimeBehaviorEnabledSetting];
                  if (v43)
                  {
                    v50 = v43;
                    v3 = [(DNDSScheduleSettingsRecord *)self bedtimeBehaviorEnabledSetting];
                    v9 = [(DNDSScheduleSettingsRecord *)v6 bedtimeBehaviorEnabledSetting];
                    v17 = [v3 isEqual:v9];
                    v98[0] = (v7 != v8) | 0x100000000;
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
                    v98[0] = (v7 != v8) | 0x100000000;
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
                  v98[0] = (v7 != v8) | 0x100000000;
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
            v98[0] = (v7 != v8) | 0x100000000;
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
            v98[0] = (v7 != v8) | 0x100000000;
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
          v98[0] = (v7 != v8) | 0x100000000;
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
        v98[0] = (v7 != v8) | 0x100000000;
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
      LODWORD(v98[0]) = v7 != v8;
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
    v44 = v8;
    v45 = v7;
    v46 = v14;
    v47 = v13;
    v48 = v15;

    v15 = v48;
    v13 = v47;
    v14 = v46;
    v7 = v45;
    v8 = v44;
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

  if (v7 != v8)
  {
  }

LABEL_126:
  return v17;
}

- (NSString)description
{
  v14 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = [(DNDSScheduleSettingsRecord *)self lastUpdatedTimestamp];
  v5 = [(DNDSScheduleSettingsRecord *)self scheduleEnabledSetting];
  v6 = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeHour];
  v7 = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeMinute];
  v8 = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeHour];
  v9 = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeMinute];
  v10 = [(DNDSScheduleSettingsRecord *)self timePeriodWeekdays];
  v11 = [(DNDSScheduleSettingsRecord *)self bedtimeBehaviorEnabledSetting];
  v12 = [v14 stringWithFormat:@"<%@: %p lastUpdatedTimestamp: %@; scheduleEnabledSetting: %@; timePeriodStartTimeHour: %@; timePeriodStartTimeMinute: %@; timePeriodEndTimeHour: %@; timePeriodEndTimeMinute: %@; timePeriodWeekdays: %@; bedtimeBehaviorEnabledSetting: %@>", v3, self, v4, v5, v6, v7, v8, v9, v10, v11];;

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDSMutableScheduleSettingsRecord alloc];

  return [(DNDSScheduleSettingsRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = [v5 bs_safeObjectForKey:@"lastUpdatedTimestamp" ofType:objc_opt_class()];
  v7 = [v5 bs_safeObjectForKey:@"scheduleEnabledSetting" ofType:objc_opt_class()];
  v8 = [v5 bs_safeObjectForKey:@"timePeriodStartTimeHour" ofType:objc_opt_class()];
  v9 = [v5 bs_safeObjectForKey:@"timePeriodStartTimeMinute" ofType:objc_opt_class()];
  v10 = [v5 bs_safeObjectForKey:@"timePeriodEndTimeHour" ofType:objc_opt_class()];
  v11 = [v5 bs_safeObjectForKey:@"timePeriodEndTimeMinute" ofType:objc_opt_class()];
  v12 = [v5 bs_safeObjectForKey:@"timePeriodWeekdays" ofType:objc_opt_class()];
  v13 = [v5 bs_safeObjectForKey:@"bedtimeBehaviorEnabledSetting" ofType:objc_opt_class()];

  v14 = [[a1 alloc] _initWithLastUpdatedTimestamp:v6 scheduleEnabledSetting:v7 timePeriodStartTimeHour:v8 timePeriodStartTimeMinute:v9 timePeriodEndTimeHour:v10 timePeriodEndTimeMinute:v11 timePeriodWeekdays:v12 bedtimeBehaviorEnabledSetting:v13];
  return v14;
}

- (id)dictionaryRepresentationWithContext:(id)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(DNDSScheduleSettingsRecord *)self lastUpdatedTimestamp];
  [v4 setObject:v5 forKey:@"lastUpdatedTimestamp"];

  v6 = [(DNDSScheduleSettingsRecord *)self scheduleEnabledSetting];
  [v4 setObject:v6 forKey:@"scheduleEnabledSetting"];

  v7 = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeHour];
  [v4 setObject:v7 forKey:@"timePeriodStartTimeHour"];

  v8 = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeMinute];
  [v4 setObject:v8 forKey:@"timePeriodStartTimeMinute"];

  v9 = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeHour];
  [v4 setObject:v9 forKey:@"timePeriodEndTimeHour"];

  v10 = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeMinute];
  [v4 setObject:v10 forKey:@"timePeriodEndTimeMinute"];

  v11 = [(DNDSScheduleSettingsRecord *)self timePeriodWeekdays];
  [v4 setObject:v11 forKey:@"timePeriodWeekdays"];

  v12 = [(DNDSScheduleSettingsRecord *)self bedtimeBehaviorEnabledSetting];
  [v4 setObject:v12 forKey:@"bedtimeBehaviorEnabledSetting"];

  return v4;
}

+ (id)_recordWithEncodedInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bs_safeObjectForKey:@"overrideStatus" ofType:objc_opt_class()];
  v8 = [v7 integerValue];
  v9 = [v6 bs_safeObjectForKey:@"overrideStatusLastCalculatedTime" ofType:objc_opt_class()];
  v10 = v9;
  if (v8 == 2 || v9 == 0)
  {
    v12 = [MEMORY[0x277CBEAA8] distantPast];
  }

  else
  {
    v12 = v9;
  }

  v13 = v12;
  v14 = [v6 bs_safeObjectForKey:@"overrides" ofType:objc_opt_class()];
  v15 = [v14 bs_firstObjectOfClass:objc_opt_class()];
  if (v15)
  {
    v16 = [MEMORY[0x277CCAAC8] dnds_secureLegacyUnarchiverForReadingFromData:v15 error:a4];
    v17 = [v16 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];

    if (v17)
    {
      v18 = [a1 recordForLegacyBehaviorOverride:v17 lastUpdated:v13];
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

+ (id)recordForLegacyBehaviorOverride:(id)a3 lastUpdated:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(DNDSMutableScheduleSettingsRecord);
  v8 = MEMORY[0x277CCABB0];
  [v5 timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = [v8 numberWithDouble:v10];
  [(DNDSMutableScheduleSettingsRecord *)v7 setLastUpdatedTimestamp:v11];

  if ([v6 mode] == 3)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
  [(DNDSMutableScheduleSettingsRecord *)v7 setScheduleEnabledSetting:v13];

  v14 = [v6 effectiveIntervals];

  v15 = [v14 firstObject];

  v16 = [v15 startComponents];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v16, "hour")}];
  [(DNDSMutableScheduleSettingsRecord *)v7 setTimePeriodStartTimeHour:v17];

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v16, "minute")}];
  [(DNDSMutableScheduleSettingsRecord *)v7 setTimePeriodStartTimeMinute:v18];

  v19 = [v15 endComponents];
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v19, "hour")}];
  [(DNDSMutableScheduleSettingsRecord *)v7 setTimePeriodEndTimeHour:v20];

  v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v19, "minute")}];
  [(DNDSMutableScheduleSettingsRecord *)v7 setTimePeriodEndTimeMinute:v21];

  [(DNDSMutableScheduleSettingsRecord *)v7 setBedtimeBehaviorEnabledSetting:&unk_285C53598];

  return v7;
}

- (id)legacyBehaviorOverride
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v4 = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeHour];
  [v3 setHour:{objc_msgSend(v4, "unsignedIntegerValue")}];

  v5 = [(DNDSScheduleSettingsRecord *)self timePeriodStartTimeMinute];
  [v3 setMinute:{objc_msgSend(v5, "unsignedIntegerValue")}];

  v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v7 = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeHour];
  [v6 setHour:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [(DNDSScheduleSettingsRecord *)self timePeriodEndTimeMinute];
  [v6 setMinute:{objc_msgSend(v8, "unsignedIntegerValue")}];

  v9 = [DNDSLegacyBehaviorOverrideEffectiveInterval alloc];
  v10 = *MEMORY[0x277CBE5C0];
  v11 = [MEMORY[0x277CCAD78] UUID];
  v12 = [(DNDSLegacyBehaviorOverrideEffectiveInterval *)v9 initWithStartComponents:v3 endComponents:v6 calendarIdentifier:v10 repeatInterval:16 identifier:v11];

  v13 = [(DNDSScheduleSettingsRecord *)self scheduleEnabledSetting];
  [v13 unsignedIntegerValue];
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