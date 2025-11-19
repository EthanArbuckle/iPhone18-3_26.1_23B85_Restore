@interface HKMobilityWalkingSteadinessAnalyticsDailyEvent
- (HKMobilityWalkingSteadinessAnalyticsDailyEvent)initWithDataSource:(id)a3;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
@end

@implementation HKMobilityWalkingSteadinessAnalyticsDailyEvent

- (HKMobilityWalkingSteadinessAnalyticsDailyEvent)initWithDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKMobilityWalkingSteadinessAnalyticsDailyEvent;
  v6 = [(HKMobilityWalkingSteadinessAnalyticsDailyEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
  }

  return v7;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = MEMORY[0x277CCABB0];
  v10 = [v7 environmentDataSource];

  v11 = [v9 numberWithBool:{objc_msgSend(v10, "isImproveHealthAndActivityEnabled")}];
  [v8 setObject:v11 forKeyedSubscript:@"isImproveHealthAndActivityAllowed"];

  v12 = [(HKMobilityWalkingSteadinessAnalyticsDailyEvent *)self dataSource];
  v43 = 0;
  v13 = [v12 hasWalkingSteadinessMeasurementsWithError:&v43];
  v14 = v43;
  [v8 setObject:v13 forKeyedSubscript:@"hasWalkingSteadinessMeasurements"];

  v15 = v14;
  if (v15)
  {
    goto LABEL_6;
  }

  v16 = [(HKMobilityWalkingSteadinessAnalyticsDailyEvent *)self dataSource];
  v42 = 0;
  v17 = [v16 walkingSteadinessNotificationsEnabledWithError:&v42];
  v18 = v42;
  [v8 setObject:v17 forKeyedSubscript:@"isWalkingSteadinessNotificationsEnabled"];

  v15 = v18;
  if (v15)
  {
    goto LABEL_6;
  }

  v19 = [(HKMobilityWalkingSteadinessAnalyticsDailyEvent *)self dataSource];
  v41 = 0;
  v20 = [v19 activePairedWatchTypeWithError:&v41];
  v21 = v41;
  [v8 setObject:v20 forKeyedSubscript:@"activePairedWatchType"];

  v15 = v21;
  if (v15)
  {
    goto LABEL_6;
  }

  v22 = [(HKMobilityWalkingSteadinessAnalyticsDailyEvent *)self dataSource];
  v40 = 0;
  v23 = [v22 areHealthNotificationsAuthorizedWithError:&v40];
  v24 = v40;
  [v8 setObject:v23 forKeyedSubscript:@"areHealthNotificationsAuthorized"];

  v15 = v24;
  if (v15)
  {
    goto LABEL_6;
  }

  v25 = [(HKMobilityWalkingSteadinessAnalyticsDailyEvent *)self dataSource];
  v39 = 0;
  v26 = [v25 hasLaunchedHealthAppInLastWeek:&v39];
  v27 = v39;
  [v8 setObject:v26 forKeyedSubscript:@"hasLaunchedHealthAppInLastWeek"];

  v15 = v27;
  if (v15)
  {
LABEL_6:
    v28 = v15;
    if (a4)
    {
      v29 = v15;
      *a4 = v28;
    }

    else
    {
      _HKLogDroppedError();
    }

LABEL_10:
    v30 = 0;
    goto LABEL_11;
  }

  v32 = [(HKMobilityWalkingSteadinessAnalyticsDailyEvent *)self dataSource];
  v38 = 0;
  v33 = [v32 hasLaunchedHealthAppInLastMonth:&v38];
  v34 = v38;
  [v8 setObject:v33 forKeyedSubscript:@"hasLaunchedHealthAppInLastMonth"];

  v35 = v34;
  if (v35)
  {
    v36 = v35;
    if (a4)
    {
      v37 = v35;
      *a4 = v36;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_10;
  }

  v30 = [v8 copy];
LABEL_11:

  return v30;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [(HKMobilityWalkingSteadinessAnalyticsDailyEvent *)self dataSource];
  v67 = 0;
  v8 = [v7 ageWithError:&v67];
  v9 = v67;

  v10 = v9;
  if (v10)
  {
    v11 = v10;
    if (a4)
    {
      v12 = v10;
      v13 = 0;
      *a4 = v11;
    }

    else
    {
      _HKLogDroppedError();
      v13 = 0;
    }

    v49 = v11;
    goto LABEL_21;
  }

  v14 = [HKMobilityAnalyticsUtilities payloadValueForAge:v8];
  [v6 setObject:v14 forKeyedSubscript:@"age"];

  v15 = [(HKMobilityWalkingSteadinessAnalyticsDailyEvent *)self dataSource];
  v66 = 0;
  v11 = [v15 biologicalSexWithError:&v66];
  v16 = v66;

  v17 = v16;
  if (v17)
  {
    goto LABEL_14;
  }

  v18 = [HKMobilityAnalyticsUtilities payloadStringForBiologicalSex:v11];
  [v6 setObject:v18 forKeyedSubscript:@"sex"];

  v19 = [(HKMobilityWalkingSteadinessAnalyticsDailyEvent *)self dataSource];
  v65 = 0;
  v20 = [v19 hasHeightWithError:&v65];
  v21 = v65;
  [v6 setObject:v20 forKeyedSubscript:@"hasHeight"];

  v22 = [(HKMobilityWalkingSteadinessAnalyticsDailyEvent *)self dataSource];
  v64 = v21;
  v23 = [v22 numberOfDaysSinceLastWalkingSteadinessMeasurementWithError:&v64];
  v24 = v64;

  [v6 setObject:v23 forKeyedSubscript:@"numberOfDaysSinceLastWalkingSteadinessMeasurement"];
  v17 = v24;
  if (v17)
  {
    goto LABEL_14;
  }

  v25 = [(HKMobilityWalkingSteadinessAnalyticsDailyEvent *)self dataSource];
  v63 = 0;
  v26 = [v25 numberOfLowNotificationsInPastYearWithError:&v63];
  v27 = v63;
  [v6 setObject:v26 forKeyedSubscript:@"numberOfLowNotificationsInPastYear"];

  v17 = v27;
  if (v17)
  {
    goto LABEL_14;
  }

  v28 = [(HKMobilityWalkingSteadinessAnalyticsDailyEvent *)self dataSource];
  v62 = 0;
  v29 = [v28 numberOfRepeatLowNotificationsInPastYearWithError:&v62];
  v30 = v62;
  [v6 setObject:v29 forKeyedSubscript:@"numberOfRepeatLowNotificationsInPastYear"];

  v17 = v30;
  if (v17)
  {
    goto LABEL_14;
  }

  v31 = [(HKMobilityWalkingSteadinessAnalyticsDailyEvent *)self dataSource];
  v61 = 0;
  v32 = [v31 numberOfVeryLowNotificationsInPastYearWithError:&v61];
  v33 = v61;
  [v6 setObject:v32 forKeyedSubscript:@"numberOfVeryLowNotificationsInPastYear"];

  v17 = v33;
  if (v17)
  {
    goto LABEL_14;
  }

  v34 = [(HKMobilityWalkingSteadinessAnalyticsDailyEvent *)self dataSource];
  v60 = 0;
  v35 = [v34 numberOfRepeatVeryLowNotificationsInPastYearWithError:&v60];
  v36 = v60;
  [v6 setObject:v35 forKeyedSubscript:@"numberOfRepeatVeryLowNotificationsInPastYear"];

  v17 = v36;
  if (v17)
  {
    goto LABEL_14;
  }

  v37 = [(HKMobilityWalkingSteadinessAnalyticsDailyEvent *)self dataSource];
  v59 = 0;
  v38 = [v37 numberOfInitialNotificationsInPastYearWithError:&v59];
  v39 = v59;
  [v6 setObject:v38 forKeyedSubscript:@"numberOfInitialNotificationsInPastYear"];

  v17 = v39;
  if (v17)
  {
    goto LABEL_14;
  }

  v40 = [(HKMobilityWalkingSteadinessAnalyticsDailyEvent *)self dataSource];
  v58 = 0;
  v41 = [v40 daysSinceLastRepeatNotificationWithError:&v58];
  v42 = v58;
  [v6 setObject:v41 forKeyedSubscript:@"daysSinceLastRepeatNotification"];

  v17 = v42;
  if (v17)
  {
    goto LABEL_14;
  }

  v43 = [(HKMobilityWalkingSteadinessAnalyticsDailyEvent *)self dataSource];
  v57 = 0;
  v44 = [v43 daysSinceLastInitialNotificationWithError:&v57];
  v45 = v57;
  [v6 setObject:v44 forKeyedSubscript:@"daysSinceLastInitialNotification"];

  v17 = v45;
  if (v17)
  {
    goto LABEL_14;
  }

  v46 = [(HKMobilityWalkingSteadinessAnalyticsDailyEvent *)self dataSource];
  v56 = 0;
  v47 = [v46 currentWalkingSteadinessClassificationWithError:&v56];
  v48 = v56;
  [v6 setObject:v47 forKeyedSubscript:@"currentWalkingSteadinessClassification"];

  v17 = v48;
  if (v17)
  {
LABEL_14:
    v49 = v17;
LABEL_15:
    if (a4)
    {
      v50 = v49;
      *a4 = v49;
    }

    else
    {
      _HKLogDroppedError();
    }

    v13 = 0;
    goto LABEL_21;
  }

  v52 = [(HKMobilityWalkingSteadinessAnalyticsDailyEvent *)self dataSource];
  v55 = 0;
  v53 = [v52 previousWalkingSteadinessClassificationWithError:&v55];
  v54 = v55;
  [v6 setObject:v53 forKeyedSubscript:@"previousWalkingSteadinessClassification"];

  v49 = v54;
  if (v49)
  {
    goto LABEL_15;
  }

  v13 = [v6 copy];
LABEL_21:

  return v13;
}

@end