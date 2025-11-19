@interface HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent
- (HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent)initWithCountNotStartedAndEndedAtHome:(id)a3 countStartedAndEndedAtHome:(id)a4 durationBetweenInitialETAAndActualArrivalTime:(id)a5 durationBetweenStartingComingHomeAndActualArrivalTime:(id)a6 countStartedAndEndedNotAtHome:(id)a7 durationBetweenStartingComingHomeAndCancellingComingHome:(id)a8 durationBetweenCancellingComingHomeAndEstimatedArrivalTime:(id)a9 countEndDateUpdated:(id)a10 countPausedNotMakingProgress:(id)a11 durationBetweenStartingComingHomeAndPausingComingHome:(id)a12 durationBetweenPausingComingHomeAndEstimatedArrivalTime:(id)a13 countResumedAfterPaused:(id)a14;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v19[12] = *MEMORY[0x277D85DE8];
  v18[0] = @"countNotStartedAndEndedAtHome";
  v17 = [(HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent *)self countNotStartedAndEndedAtHome];
  v19[0] = v17;
  v18[1] = @"countStartedAndEndedAtHome";
  v16 = [(HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent *)self countStartedAndEndedAtHome];
  v19[1] = v16;
  v18[2] = @"durationBetweenInitialETAAndActualArrivalTime";
  v15 = [(HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent *)self durationBetweenInitialETAAndActualArrivalTime];
  v19[2] = v15;
  v18[3] = @"durationBetweenStartingComingHomeAndActualArrivalTime";
  v3 = [(HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent *)self durationBetweenStartingComingHomeAndActualArrivalTime];
  v19[3] = v3;
  v18[4] = @"countStartedAndEndedNotAtHome";
  v4 = [(HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent *)self countStartedAndEndedNotAtHome];
  v19[4] = v4;
  v18[5] = @"durationBetweenStartingComingHomeAndCancellingComingHome";
  v5 = [(HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent *)self durationBetweenStartingComingHomeAndCancellingComingHome];
  v19[5] = v5;
  v18[6] = @"durationBetweenCancellingComingHomeAndEstimatedArrivalTime";
  v6 = [(HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent *)self durationBetweenCancellingComingHomeAndEstimatedArrivalTime];
  v19[6] = v6;
  v18[7] = @"countEndDateUpdated";
  v7 = [(HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent *)self countEndDateUpdated];
  v19[7] = v7;
  v18[8] = @"countPausedNotMakingProgress";
  v8 = [(HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent *)self countPausedNotMakingProgress];
  v19[8] = v8;
  v18[9] = @"durationBetweenStartingComingHomeAndPausingComingHome";
  v9 = [(HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent *)self durationBetweenStartingComingHomeAndPausingComingHome];
  v19[9] = v9;
  v18[10] = @"durationBetweenPausingComingHomeAndEstimatedArrivalTime";
  v10 = [(HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent *)self durationBetweenPausingComingHomeAndEstimatedArrivalTime];
  v19[10] = v10;
  v18[11] = @"countResumedAfterPaused";
  v11 = [(HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent *)self countResumedAfterPaused];
  v19[11] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:12];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent)initWithCountNotStartedAndEndedAtHome:(id)a3 countStartedAndEndedAtHome:(id)a4 durationBetweenInitialETAAndActualArrivalTime:(id)a5 durationBetweenStartingComingHomeAndActualArrivalTime:(id)a6 countStartedAndEndedNotAtHome:(id)a7 durationBetweenStartingComingHomeAndCancellingComingHome:(id)a8 durationBetweenCancellingComingHomeAndEstimatedArrivalTime:(id)a9 countEndDateUpdated:(id)a10 countPausedNotMakingProgress:(id)a11 durationBetweenStartingComingHomeAndPausingComingHome:(id)a12 durationBetweenPausingComingHomeAndEstimatedArrivalTime:(id)a13 countResumedAfterPaused:(id)a14
{
  v38 = a3;
  v27 = a4;
  v37 = a4;
  v28 = a5;
  v36 = a5;
  v29 = a6;
  v35 = a6;
  v34 = a7;
  v33 = a8;
  v32 = a9;
  v31 = a10;
  v19 = a11;
  v20 = a12;
  v21 = a13;
  v22 = a14;
  v39.receiver = self;
  v39.super_class = HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent;
  v23 = [(HMMLogEvent *)&v39 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_countNotStartedAndEndedAtHome, a3);
    objc_storeStrong(&v24->_countStartedAndEndedAtHome, v27);
    objc_storeStrong(&v24->_durationBetweenInitialETAAndActualArrivalTime, v28);
    objc_storeStrong(&v24->_durationBetweenStartingComingHomeAndActualArrivalTime, v29);
    objc_storeStrong(&v24->_countStartedAndEndedNotAtHome, a7);
    objc_storeStrong(&v24->_durationBetweenStartingComingHomeAndCancellingComingHome, a8);
    objc_storeStrong(&v24->_durationBetweenCancellingComingHomeAndEstimatedArrivalTime, a9);
    objc_storeStrong(&v24->_countEndDateUpdated, a10);
    objc_storeStrong(&v24->_countPausedNotMakingProgress, a11);
    objc_storeStrong(&v24->_durationBetweenStartingComingHomeAndPausingComingHome, a12);
    objc_storeStrong(&v24->_durationBetweenPausingComingHomeAndEstimatedArrivalTime, a13);
    objc_storeStrong(&v24->_countResumedAfterPaused, a14);
  }

  return v24;
}

@end