@interface HDRestorableAlarm(BloodPressureJournal)
- (id)bloodPressureJournalAlarmEventWithNotificationIdentifier:()BloodPressureJournal journalType:dueDate:isFollowUp:measurementInfo:;
@end

@implementation HDRestorableAlarm(BloodPressureJournal)

- (id)bloodPressureJournalAlarmEventWithNotificationIdentifier:()BloodPressureJournal journalType:dueDate:isFollowUp:measurementInfo:
{
  v53 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v48 = a5;
  v11 = a7;
  v46 = v11;
  if (v11)
  {
    v12 = v11;
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v11, "measurementIndex")];
    v50 = @"mesurementIndex";
    v51 = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:2];
    v15 = [v14 componentsJoinedByString:@":"];

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v12, "measurementCount")];
    v50 = @"measurementCount";
    v51 = v16;
    [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:2];
    v18 = v17 = a6;
    v19 = [v18 componentsJoinedByString:@":"];

    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v12, "measurementWindowType")];
    v50 = @"measurementWindowType";
    v51 = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:2];
    v22 = [v21 componentsJoinedByString:@":"];

    a6 = v17;
    v50 = v15;
    v51 = v19;
    v52 = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:3];
    v24 = [v23 componentsJoinedByString:{@", "}];
  }

  else
  {
    v24 = &stru_283CC4740;
  }

  v25 = v24;
  v49 = v10;
  identifierString = [v10 identifierString];
  v27 = [MEMORY[0x277CCABB0] numberWithBool:a6];
  longValue = [v27 longValue];

  v50 = @"notificationIdentifier";
  v51 = identifierString;
  v29 = MEMORY[0x277CBEA60];
  v30 = identifierString;
  v31 = [v29 arrayWithObjects:&v50 count:2];
  v44 = v30;

  v32 = [v31 componentsJoinedByString:@":"];

  v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a4];
  v50 = @"journalType";
  v51 = v33;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:2];
  v35 = [v34 componentsJoinedByString:@":"];

  v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue];
  v50 = @"isFollowUp";
  v51 = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:2];
  v38 = [v37 componentsJoinedByString:@":"];

  v39 = [MEMORY[0x277CBEB18] arrayWithObjects:{v32, v35, v38, 0}];
  if ([(__CFString *)v25 length])
  {
    [v39 addObject:v25];
  }

  v40 = [v39 componentsJoinedByString:{@", "}];

  v41 = [self eventWithIdentifier:v40 dueDate:v48 eventOptions:0];

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

@end