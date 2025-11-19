@interface _DASLogExtractor
+ (id)extractorForArchive:(id)a3;
- (BOOL)didActivityRun:(id)a3 forActivity:(id)a4;
- (BOOL)didBARFinish:(id)a3 forApplication:(id)a4;
- (_DASLogExtractor)initWithArchive:(id)a3;
- (id)descriptionOfHigherThresholds:(id)a3;
- (id)descriptionOfIncompatibilityDenials:(id)a3;
- (id)descriptionOfPolicyToIntervalsMap:(id)a3;
- (id)getActivityStartBeforeDate:(id)a3 forActivity:(id)a4;
- (id)getAllBARActivityNames:(id)a3;
- (id)getAllPushLaunchActivityNames:(id)a3;
- (id)getBARSummaryFromLogs:(id)a3 forApplication:(id)a4 detail:(BOOL)a5;
- (id)getDefaultFilterPredicate;
- (id)getIncompatibilityReasons:(id)a3 forActivity:(id)a4;
- (id)getInstancesOfHigherThreshold:(id)a3 forActivity:(id)a4;
- (id)getMessagesActivityFinish:(id)a3 forActivity:(id)a4 isCompleted:(BOOL)a5;
- (id)getMessagesAfterRunning:(id)a3 forActivity:(id)a4;
- (id)getMessagesBeforeRunning:(id)a3 forActivity:(id)a4;
- (id)getMessagesForAllBARTasks:(id)a3;
- (id)getMessagesForBARLifecycle:(id)a3 forApplication:(id)a4 queryStatus:(id)a5 taskType:(id)a6;
- (id)getMessagesWhenAppBackgroundSwitch:(id)a3 forApplication:(id)a4 switchTo:(id)a5;
- (id)getPolicyDenialReasonsFromMessage:(id)a3;
- (id)getScheduledBlocksOfBARMessages:(id)a3 forApplication:(id)a4;
- (id)getScheduledBlocksOfMessages:(id)a3 forActivity:(id)a4;
- (id)getpolicyToIntervals:(id)a3;
- (id)objectForTrigger:(id)a3 fromCondition:(id)a4 compactRepresentation:(BOOL)a5;
- (id)summarizeAllDenialsOverMessages:(id)a3 forActivity:(id)a4 detail:(BOOL)a5;
- (id)summarizePolicyDenialsOverMessages:(id)a3 maxDuration:(double)a4;
- (id)summarizeRuntimeOverMessages:(id)a3 forActivity:(id)a4;
- (int)didActivityFinish:(id)a3 forActivity:(id)a4;
- (int)didActivityFinish:(id)a3 forBARActivity:(id)a4;
- (int)handleLogEventsLogEvents:(id)a3 sinceDate:(id)a4 withHandler:(id)a5;
- (int)sysConditionsLog:(BOOL)a3 startDate:(id)a4 endDate:(id)a5;
@end

@implementation _DASLogExtractor

+ (id)extractorForArchive:(id)a3
{
  v3 = a3;
  v4 = [[_DASLogExtractor alloc] initWithArchive:v3];

  return v4;
}

- (_DASLogExtractor)initWithArchive:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _DASLogExtractor;
  v5 = [(_DASLogExtractor *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatter = v5->_dateFormatter;
    v5->_dateFormatter = v6;

    subsystem = v5->_subsystem;
    v5->_subsystem = @"com.apple.duetactivityscheduler";

    [(NSDateFormatter *)v5->_dateFormatter setDateFormat:@"y-MM-dd-HH-mm-ss.SSS-z"];
    if (v4)
    {
      [MEMORY[0x277D24438] storeWithArchiveURL:v4];
    }

    else
    {
      [MEMORY[0x277D24438] localStore];
    }
    v9 = ;
    logStore = v5->_logStore;
    v5->_logStore = v9;

    [(OSLogEventStore *)v5->_logStore setUpgradeConfirmationHandler:&__block_literal_global_146];
  }

  return v5;
}

- (id)getDefaultFilterPredicate
{
  if (getDefaultFilterPredicate_onceToken != -1)
  {
    [_DASLogExtractor getDefaultFilterPredicate];
  }

  v3 = getDefaultFilterPredicate_subpredicates;

  return v3;
}

- (int)handleLogEventsLogEvents:(id)a3 sinceDate:(id)a4 withHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  logStore = self->_logStore;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67___DASLogExtractor_handleLogEventsLogEvents_sinceDate_withHandler___block_invoke;
  v17[3] = &unk_278EE17F8;
  v17[4] = self;
  v12 = v8;
  v18 = v12;
  v22 = self;
  v13 = v10;
  v20 = v13;
  v14 = v9;
  v19 = v14;
  v21 = &v23;
  [(OSLogEventStore *)logStore prepareWithCompletionHandler:v17];
  v15 = *(v24 + 6);

  _Block_object_dispose(&v23, 8);
  return v15;
}

- (id)getScheduledBlocksOfMessages:(id)a3 forActivity:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (![v5 count])
  {
    v28 = 0;
    goto LABEL_27;
  }

  v26 = v6;
  [MEMORY[0x277CBEB18] array];
  v28 = v27 = v5;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_24;
  }

  v9 = v8;
  v10 = 0;
  v11 = 1;
  v12 = *v30;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v30 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v29 + 1) + 8 * i);
      if (v11)
      {
        v15 = [*(*(&v29 + 1) + 8 * i) message];
        if ([v15 containsString:@"Submitted Activity:"])
        {

LABEL_11:
          v18 = [MEMORY[0x277CBEB18] array];
          v11 = 0;
          goto LABEL_18;
        }

        v16 = [v14 message];
        v17 = [v16 containsString:@"SUBMITTING:"];

        if (v17)
        {
          goto LABEL_11;
        }
      }

      v19 = [v14 message];
      if ([v19 containsString:@"COMPLETED"])
      {
      }

      else
      {
        v20 = [v14 message];
        v21 = [v20 containsString:@"CANCELED"];

        if (!v21)
        {
          goto LABEL_19;
        }
      }

      [v10 addObject:v14];
      if ([v10 count])
      {
        v22 = [v10 copy];
        [v28 addObject:v22];
      }

      v18 = 0;
      v11 = 1;
LABEL_18:

      v10 = v18;
LABEL_19:
      [v10 addObject:v14];
    }

    v9 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  }

  while (v9);
LABEL_24:

  v6 = v26;
  if ([v10 count])
  {
    v23 = [v10 copy];
    [v28 addObject:v23];
  }

  v5 = v27;
LABEL_27:

  v24 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)getScheduledBlocksOfBARMessages:(id)a3 forApplication:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (![v5 count])
  {
    v26 = 0;
    goto LABEL_21;
  }

  v24 = v6;
  v26 = [MEMORY[0x277CBEB18] array];
  v7 = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v25 = v5;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9;
  v11 = *v28;
  v12 = 1;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v27 + 1) + 8 * i);
      if ((v12 & 1) != 0 && ([*(*(&v27 + 1) + 8 * i) message], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "containsString:", @"Setting process visibility to: Background"), v15, v16))
      {
        v17 = [MEMORY[0x277CBEB18] array];
        v12 = 0;
      }

      else
      {
        v18 = [v14 message];
        v19 = [v18 containsString:@"Setting process visibility to: Foreground"];

        if (!v19)
        {
          goto LABEL_15;
        }

        [v7 addObject:v14];
        if ([v7 count])
        {
          v20 = [v7 copy];
          [v26 addObject:v20];
        }

        v17 = 0;
        v12 = 1;
      }

      v7 = v17;
LABEL_15:
      [v7 addObject:v14];
    }

    v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v10);
LABEL_17:

  if ([v7 count])
  {
    v21 = [v7 copy];
    [v26 addObject:v21];
  }

  v6 = v24;
  v5 = v25;
LABEL_21:

  v22 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)getMessagesBeforeRunning:(id)a3 forActivity:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v30 = *v32;
LABEL_3:
    v12 = 0;
    v29 = v9;
    while (1)
    {
      if (*v32 != v30)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v31 + 1) + 8 * v12);
      v14 = [v13 message];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v6];
      if (([v14 containsString:v15] & 1) == 0)
      {
        break;
      }

      v16 = v11;
      v17 = v7;
      v18 = v6;
      v19 = [v13 message];
      if ([v19 containsString:@"Submitted:"])
      {

        v6 = v18;
        v7 = v17;
        v11 = v16;
        v9 = v29;
      }

      else
      {
        [v13 message];
        v23 = v22 = v10;
        v28 = [v23 containsString:@"SUBMITTING:"];

        v10 = v22;
        v6 = v18;
        v7 = v17;
        v11 = v16;
        v9 = v29;
        if (!v28)
        {
          goto LABEL_10;
        }
      }

      v24 = [MEMORY[0x277CBEB18] array];

      v10 = 1;
      v11 = v24;
LABEL_16:
      [v11 addObject:v13];
      if (v9 == ++v12)
      {
        v9 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_21;
      }
    }

LABEL_10:
    if (v10)
    {
      v20 = [v13 message];
      v21 = [v20 containsString:@"Running activities :"];

      if (v21)
      {
        [v11 addObject:v13];
        v25 = v11;

        goto LABEL_22;
      }

      v10 = 1;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_16;
  }

  v11 = 0;
LABEL_21:

  v25 = v11;
LABEL_22:

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)getAllBARActivityNames:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v16 = [MEMORY[0x277CBEB58] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 message];
        if ([v10 containsString:@"Submitted Activity: <_DASActivity: bgRefresh-"])
        {
          v11 = [v9 message];
          v12 = [v11 containsString:@"widget"];

          if (v12)
          {
            continue;
          }

          v13 = [v9 message];
          v10 = getSubstring(v13, @"Submitted: <_DASActivity: ", @", Background,", 0);

          if (v10)
          {
            [v16 addObject:v10];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)getAllPushLaunchActivityNames:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v17 = [MEMORY[0x277CBEB58] set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 message];
        if ([v10 containsString:@"Submitted: <_DASActivity: "])
        {
          v11 = [v9 message];
          if ([v11 containsString:@"widget"])
          {
          }

          else
          {
            v12 = [v9 message];
            v13 = [v12 containsString:@"pushLaunch"];

            if (!v13)
            {
              continue;
            }

            v14 = [v9 message];
            v10 = getSubstring(v14, @"Submitted: <_DASActivity: ", @", Maintenance,", 0);

            if (v10)
            {
              [v17 addObject:v10];
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)getMessagesWhenAppBackgroundSwitch:(id)a3 forApplication:(id)a4 switchTo:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a5;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v13 message];
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Setting process visibility to: %@", v7];
        v16 = [v14 containsString:v15];

        if (v16)
        {
          v19 = [MEMORY[0x277CBEB18] array];
          [v19 addObject:v13];
          v18 = v19;

          v17 = v18;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
  v18 = v8;
LABEL_11:

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)getMessagesForAllBARTasks:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26 = [MEMORY[0x277CBEB18] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0x277CCA000uLL;
    v8 = *v31;
    v9 = @"bgRefresh-";
    v23 = *v31;
    do
    {
      v10 = 0;
      v24 = v6;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * v10);
        v12 = [v11 message];
        v13 = [*(v7 + 3240) stringWithFormat:v9];
        v14 = [v12 containsString:v13];
        if (v14)
        {
          v3 = [v11 message];
          if (([v3 containsString:@"widget"] & 1) == 0)
          {

LABEL_17:
            [v26 addObject:v11];
            goto LABEL_18;
          }
        }

        v28 = v12;
        v29 = v3;
        v15 = [v11 message];
        v16 = [*(v7 + 3240) stringWithFormat:@"Timeline for "];
        if ([v15 containsString:v16])
        {
          v27 = 1;
        }

        else
        {
          v17 = [v11 message];
          [*(v7 + 3240) stringWithFormat:@"pushLaunch"];
          v18 = v9;
          v20 = v19 = v7;
          v27 = [v17 containsString:v20];

          v7 = v19;
          v9 = v18;
          v6 = v24;

          v8 = v23;
        }

        if (v14)
        {
          v3 = v29;

          if (v27)
          {
            goto LABEL_17;
          }
        }

        else
        {

          v3 = v29;
          if (v27)
          {
            goto LABEL_17;
          }
        }

LABEL_18:
        ++v10;
      }

      while (v6 != v10);
      v6 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)getMessagesForBARLifecycle:(id)a3 forApplication:(id)a4 queryStatus:(id)a5 taskType:(id)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v30 = a6;
  v29 = [MEMORY[0x277CBEB18] array];
  v28 = v11;
  if ([v11 isEqual:@"Submitted"])
  {
    v12 = @"Submitted: <_DASActivity: ";
  }

  else if ([v11 isEqual:{@"Completed", v11}])
  {
    v12 = @"COMPLETED ";
  }

  else if ([v11 isEqual:@"Prediction"])
  {
    v12 = @"Timeline for ";
  }

  else
  {
    NSLog(&cfstr_UnsupportedInp.isa);
    v12 = 0;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        v19 = [v18 message];
        if (([v19 containsString:v10] & 1) == 0)
        {
          goto LABEL_18;
        }

        v20 = [v18 message];
        if (([v20 containsString:v12] & 1) == 0)
        {

LABEL_18:
          continue;
        }

        [v18 message];
        v21 = v16;
        v22 = v10;
        v23 = v13;
        v25 = v24 = v12;
        v31 = [v25 containsString:v30];

        v12 = v24;
        v13 = v23;
        v10 = v22;
        v16 = v21;

        if (v31)
        {
          [v29 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v15);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)getActivityStartBeforeDate:(id)a3 forActivity:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = *v21;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v8 message];
        v10 = [v9 containsString:@"Submitted:"];

        if (v10)
        {
          v11 = [v8 message];
          v12 = getSubstring(v11, @", [", @"], Group:", 0);

          v13 = [v12 componentsSeparatedByString:@" "];
          v14 = MEMORY[0x277CCACA8];
          v15 = [v13 objectAtIndexedSubscript:0];
          v16 = [v13 objectAtIndexedSubscript:1];
          v17 = [v13 objectAtIndexedSubscript:2];
          v5 = [v14 stringWithFormat:@"%@ %@ %@", v15, v16, v17];

          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v18 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)didActivityRun:(id)a3 forActivity:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) message];
        v10 = [v9 containsString:@"Running activities :"];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)getMessagesAfterRunning:(id)a3 forActivity:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v21 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v23;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v12 message];
        v14 = [v13 containsString:@"Running activities :"];

        if (v14)
        {
          v15 = [MEMORY[0x277CBEB18] array];

          v9 = v15;
        }

        else
        {
          v16 = [v12 message];
          if ([v16 containsString:@"COMPLETED"])
          {

LABEL_15:
            if (!v9)
            {
              v9 = [MEMORY[0x277CBEB18] array];
            }

            [v9 addObject:v12];
            goto LABEL_18;
          }

          v17 = [v12 message];
          v18 = [v17 containsString:@"CANCELED"];

          if (v18)
          {
            goto LABEL_15;
          }
        }

        [v9 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_18:

  v19 = *MEMORY[0x277D85DE8];

  return v9;
}

- (int)didActivityFinish:(id)a3 forActivity:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 message];
        v11 = [v10 containsString:@"COMPLETED"];

        if (v11)
        {
          v14 = 1;
          goto LABEL_14;
        }

        v12 = [v9 message];
        v13 = [v12 containsString:@"CANCELED"];

        if (v13)
        {
          v14 = 2;
          goto LABEL_14;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v14 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_14:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (int)didActivityFinish:(id)a3 forBARActivity:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 message];
        v12 = [v11 containsString:@"COMPLETED"];

        if (v12)
        {
          v7 = 1;
        }

        else
        {
          v13 = [v10 message];
          v14 = [v13 containsString:@"CANCELED"];

          v6 |= v14;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
    if (v6)
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }

    if (v7)
    {
      LODWORD(v5) = 1;
    }

    else
    {
      LODWORD(v5) = v15;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)getMessagesActivityFinish:(id)a3 forActivity:(id)a4 isCompleted:(BOOL)a5
{
  v5 = a5;
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v15 = [v14 message];
        v16 = [v15 containsString:v8];

        if (v16)
        {
          v17 = [v14 message];
          v18 = v17;
          v19 = v5 ? @"COMPLETED" : @"CANCELED";
          v20 = [v17 containsString:v19];

          if (v20)
          {
            v21 = v14;
            goto LABEL_15;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
LABEL_15:

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (BOOL)didBARFinish:(id)a3 forApplication:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) message];
        v10 = [v9 containsString:@"COMPLETED bgRefresh-"];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)summarizeRuntimeOverMessages:(id)a3 forActivity:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v35 = defaultFormatter();
    v7 = [v5 firstObject];
    v38 = [v7 date];

    v8 = [v5 lastObject];
    v37 = [v8 date];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v39 objects:v43 count:16];
    v36 = v6;
    if (v10)
    {
      v11 = v10;
      v34 = v5;
      v12 = 0;
      v13 = 0;
      v14 = *v40;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v40 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v39 + 1) + 8 * i);
          v17 = [v16 message];
          v18 = [v17 containsString:@"Suspending"];

          if (v18)
          {
            v19 = [v16 date];

            v13 = 1;
            v12 = v19;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v11);

      v20 = MEMORY[0x277CCACA8];
      if (v13)
      {
        v21 = v35;
        v22 = [v35 stringFromDate:v12];
        v23 = 1;
        v24 = [v20 stringWithFormat:@"%d %@", 1, v22];

        v5 = v34;
LABEL_17:
        v26 = MEMORY[0x277CCACA8];
        v27 = getIntervalString(v38, v37);
        v28 = [v21 stringFromDate:v38];
        v29 = [v21 stringFromDate:v37];
        v30 = [v26 stringWithFormat:@"Activity ran for %@, from %@ to %@(Was suspended = %@)\n", v27, v28, v29, v24];

        v25 = [MEMORY[0x277CBEB38] dictionary];
        [v25 setObject:v30 forKeyedSubscript:@"result"];
        if (v23)
        {
          v31 = [v21 stringFromDate:v12];
          [v25 setObject:v31 forKeyedSubscript:@"suspendTime"];
        }

        else
        {
          [v25 setObject:&stru_2859F0B50 forKeyedSubscript:@"suspendTime"];
        }

        v6 = v36;
        goto LABEL_21;
      }

      v5 = v34;
    }

    else
    {

      v12 = 0;
      v20 = MEMORY[0x277CCACA8];
    }

    v21 = v35;
    v24 = [v20 stringWithFormat:@"%d %@", 0, &stru_2859F0B50];
    v23 = 0;
    goto LABEL_17;
  }

  v25 = 0;
LABEL_21:

  v32 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)getPolicyDenialReasonsFromMessage:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 containsString:@"Must Not Proceed}"])
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v16 = v3;
    v5 = [v3 componentsSeparatedByString:@"\n"];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          if ([v10 containsString:{@"Not Proceed, Score:"}])
          {
            v11 = getSubstring(v10, @"\t{name: ", @",", 0);
            if (v11)
            {
              v12 = getSubstring(v10, @"Rationale: [", @"]", 1);
              [v4 setObject:v12 forKeyedSubscript:v11];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    v13 = v4;

    v3 = v16;
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)getpolicyToIntervals:(id)a3
{
  v128 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v101 = defaultFormatter();
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v119 objects:v127 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v87 = *v120;
    v8 = 1;
    v100 = v4;
    do
    {
      v9 = 0;
      v84 = v6;
      do
      {
        if (*v120 != v87)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v119 + 1) + 8 * v9);
        v11 = [v10 message];
        v12 = [(_DASLogExtractor *)self getPolicyDenialReasonsFromMessage:v11];

        v102 = v12;
        if (v12)
        {
          v90 = v9;
          v13 = MEMORY[0x277CBEB98];
          v14 = [v7 allKeys];
          v15 = [v13 setWithArray:v14];

          v16 = MEMORY[0x277CBEB98];
          v17 = [v12 allKeys];
          v18 = [v16 setWithArray:v17];

          v91 = v7;
          v89 = v18;
          if (v8)
          {
            v19 = v18;

            v117 = 0u;
            v118 = 0u;
            v115 = 0u;
            v116 = 0u;
            v20 = v19;
            v21 = [v20 countByEnumeratingWithState:&v115 objects:v126 count:16];
            if (v21)
            {
              v22 = v21;
              v97 = *v116;
              v94 = v20;
              do
              {
                for (i = 0; i != v22; ++i)
                {
                  if (*v116 != v97)
                  {
                    objc_enumerationMutation(v94);
                  }

                  v24 = *(*(&v115 + 1) + 8 * i);
                  v25 = [MEMORY[0x277CBEB18] array];
                  [v4 setObject:v25 forKeyedSubscript:v24];

                  v26 = objc_opt_new();
                  v27 = [v10 date];
                  [v26 setStartDate:v27];

                  v28 = [v10 date];
                  [v26 setEndDate:v28];

                  v29 = [v102 objectForKeyedSubscript:v24];
                  v30 = [MEMORY[0x277CBEB18] array];
                  v31 = MEMORY[0x277CCACA8];
                  v32 = [v10 date];
                  v33 = [v101 stringFromDate:v32];
                  v34 = [v31 stringWithFormat:@"[%@] %@", v33, v29];
                  [v30 addObject:v34];

                  v4 = v100;
                  [v26 setValue:v30];
                  v35 = [v100 objectForKeyedSubscript:v24];
                  [v35 addObject:v26];
                }

                v20 = v94;
                v22 = [v94 countByEnumeratingWithState:&v115 objects:v126 count:16];
              }

              while (v22);
              v36 = v94;
              v7 = v91;
              v6 = v84;
            }

            else
            {
              v36 = v20;
            }
          }

          else
          {
            v37 = [v15 mutableCopy];
            [v37 unionSet:v18];
            [v37 minusSet:v18];
            v85 = [v37 copy];
            [v37 unionSet:v18];
            v86 = v15;
            [v37 minusSet:v15];
            v95 = v37;
            v38 = [v37 copy];
            v111 = 0u;
            v112 = 0u;
            v113 = 0u;
            v114 = 0u;
            v93 = v38;
            v39 = [v93 countByEnumeratingWithState:&v111 objects:v125 count:16];
            if (v39)
            {
              v40 = v39;
              v98 = *v112;
              do
              {
                for (j = 0; j != v40; ++j)
                {
                  if (*v112 != v98)
                  {
                    objc_enumerationMutation(v93);
                  }

                  v42 = *(*(&v111 + 1) + 8 * j);
                  v43 = [v4 objectForKeyedSubscript:v42];

                  if (!v43)
                  {
                    v44 = [MEMORY[0x277CBEB18] array];
                    [v4 setObject:v44 forKeyedSubscript:v42];
                  }

                  v45 = objc_opt_new();
                  v46 = [v10 date];
                  [v45 setStartDate:v46];

                  v47 = [v10 date];
                  [v45 setEndDate:v47];

                  v48 = [v102 objectForKeyedSubscript:v42];
                  v49 = [MEMORY[0x277CBEB18] array];
                  v50 = MEMORY[0x277CCACA8];
                  v51 = [v10 date];
                  v52 = [v101 stringFromDate:v51];
                  v53 = [v50 stringWithFormat:@"[%@] %@", v52, v48];
                  [v49 addObject:v53];

                  v4 = v100;
                  [v45 setValue:v49];
                  v54 = [v100 objectForKeyedSubscript:v42];
                  [v54 addObject:v45];
                }

                v40 = [v93 countByEnumeratingWithState:&v111 objects:v125 count:16];
              }

              while (v40);
            }

            [v95 unionSet:v86];
            [v95 minusSet:v93];
            [v95 minusSet:v85];
            v55 = [v95 copy];
            v107 = 0u;
            v108 = 0u;
            v109 = 0u;
            v110 = 0u;
            v92 = v55;
            v56 = v91;
            v57 = v102;
            v99 = [v92 countByEnumeratingWithState:&v107 objects:v124 count:16];
            if (v99)
            {
              v96 = *v108;
              do
              {
                for (k = 0; k != v99; ++k)
                {
                  if (*v108 != v96)
                  {
                    objc_enumerationMutation(v92);
                  }

                  v59 = *(*(&v107 + 1) + 8 * k);
                  v60 = [v4 objectForKeyedSubscript:v59];
                  [v60 count];
                  v61 = [v60 lastObject];
                  v62 = [v10 date];
                  [v61 setEndDate:v62];

                  v63 = [v57 objectForKeyedSubscript:v59];
                  v64 = [v56 objectForKeyedSubscript:v59];
                  if (([v63 isEqualToString:v64] & 1) == 0)
                  {
                    v65 = [v61 value];
                    v66 = MEMORY[0x277CCACA8];
                    v67 = [v10 date];
                    v68 = [v101 stringFromDate:v67];
                    v69 = [v66 stringWithFormat:@"[%@] %@", v68, v63];
                    [v65 addObject:v69];

                    v4 = v100;
                    v57 = v102;

                    v56 = v91;
                  }
                }

                v99 = [v92 countByEnumeratingWithState:&v107 objects:v124 count:16];
              }

              while (v99);
            }

            v70 = v57;
            v7 = v70;
            v6 = v84;
            v20 = v95;
            v36 = v86;
          }

          v8 = 0;
          v9 = v90;
        }

        ++v9;
      }

      while (v9 != v6);
      v6 = [obj countByEnumeratingWithState:&v119 objects:v127 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v71 = [obj lastObject];
  v72 = [v71 date];

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v73 = [v7 allKeys];
  v74 = [v73 countByEnumeratingWithState:&v103 objects:v123 count:16];
  if (v74)
  {
    v75 = v74;
    v76 = *v104;
    do
    {
      for (m = 0; m != v75; ++m)
      {
        if (*v104 != v76)
        {
          objc_enumerationMutation(v73);
        }

        v78 = [v4 objectForKeyedSubscript:*(*(&v103 + 1) + 8 * m)];
        [v78 count];
        v79 = [v78 lastObject];
        [v79 setEndDate:v72];
      }

      v75 = [v73 countByEnumeratingWithState:&v103 objects:v123 count:16];
    }

    while (v75);
  }

  v80 = v4;
  v81 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)descriptionOfPolicyToIntervalsMap:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v36 = a3;
  v3 = [v36 allKeys];
  if ([v3 count])
  {
    v4 = [MEMORY[0x277CCAB68] string];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v31 = v3;
    obj = v3;
    v34 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v34)
    {
      v33 = *v54;
      do
      {
        v5 = 0;
        do
        {
          if (*v54 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v35 = v5;
          v6 = *(*(&v53 + 1) + 8 * v5);
          [(__CFString *)v4 appendString:@"\n\n-------------------------------------------------------"];
          [(__CFString *)v4 appendString:@"-------------------------------------------------------\n"];
          v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Policy: %@", v6];
          [(__CFString *)v4 appendString:v7];

          v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\nDenial Intervals:\n"];
          [(__CFString *)v4 appendString:v8];

          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v39 = v6;
          v9 = [v36 objectForKeyedSubscript:v6];
          v10 = [v9 countByEnumeratingWithState:&v49 objects:v59 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v50;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v50 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v49 + 1) + 8 * i);
                v15 = [v14 intervalString];
                v16 = [v14 durationString];
                v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"\t%@\t%@\n", v15, v16];
                [(__CFString *)v4 appendString:v17];
              }

              v11 = [v9 countByEnumeratingWithState:&v49 objects:v59 count:16];
            }

            while (v11);
          }

          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\nRationales:\n"];
          [(__CFString *)v4 appendString:v18];

          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v37 = [v36 objectForKeyedSubscript:v39];
          v40 = [v37 countByEnumeratingWithState:&v45 objects:v58 count:16];
          if (v40)
          {
            v38 = *v46;
            do
            {
              for (j = 0; j != v40; ++j)
              {
                if (*v46 != v38)
                {
                  objc_enumerationMutation(v37);
                }

                v20 = *(*(&v45 + 1) + 8 * j);
                v21 = [v20 intervalString];
                v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"\t%@:\n", v21];
                [(__CFString *)v4 appendString:v22];

                v43 = 0u;
                v44 = 0u;
                v41 = 0u;
                v42 = 0u;
                v23 = [v20 value];
                v24 = [v23 countByEnumeratingWithState:&v41 objects:v57 count:16];
                if (v24)
                {
                  v25 = v24;
                  v26 = *v42;
                  do
                  {
                    for (k = 0; k != v25; ++k)
                    {
                      if (*v42 != v26)
                      {
                        objc_enumerationMutation(v23);
                      }

                      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"\t\t%@\n", *(*(&v41 + 1) + 8 * k)];
                      [(__CFString *)v4 appendString:v28];
                    }

                    v25 = [v23 countByEnumeratingWithState:&v41 objects:v57 count:16];
                  }

                  while (v25);
                }
              }

              v40 = [v37 countByEnumeratingWithState:&v45 objects:v58 count:16];
            }

            while (v40);
          }

          v5 = v35 + 1;
        }

        while (v35 + 1 != v34);
        v34 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v34);
    }

    [(__CFString *)v4 appendString:@"\n\n-------------------------------------------------------"];
    [(__CFString *)v4 appendString:@"-------------------------------------------------------"];
    v3 = v31;
  }

  else
  {
    v4 = &stru_2859F0B50;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)getIncompatibilityReasons:(id)a3 forActivity:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v39 = [MEMORY[0x277CBEB18] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = @"Bailing  out.";
    v12 = *v42;
    v37 = v6;
    v38 = v7;
    do
    {
      v13 = 0;
      v40 = v9;
      do
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v41 + 1) + 8 * v13);
        v15 = [v14 message];
        v16 = [v15 containsString:v11];

        if (v16)
        {
          v17 = v11;
          v18 = [v14 message];
          v19 = getSubstring(v18, @"'", @"' has compatibility", 0);

          v20 = [v19 copy];
          v21 = getSubstring(v20, 0, @":", 0);

          if ([v21 containsString:v6])
          {
            v22 = [v14 message];
            v23 = getSubstring(v22, @"with ", @". Bailing ", 0);

            v24 = [v14 message];
            v25 = getSubstring(v24, @"score of ", @" with", 0);

            if (v10)
            {
              if ([v23 isEqualToString:v10])
              {
                v26 = [v14 date];
                v27 = [v39 lastObject];
                [v27 setEndDate:v26];
              }

              else
              {
                v26 = objc_opt_new();
                v31 = [v14 date];
                [v26 setStartDate:v31];

                v32 = [v14 date];
                [v26 setEndDate:v32];

                v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v23, @"activity", v25, @"score", 0}];
                [v26 setValue:v33];

                [v39 addObject:v26];
                v34 = v23;

                v10 = v34;
                v6 = v37;
              }
            }

            else
            {
              v26 = objc_opt_new();
              v28 = [v14 date];
              [v26 setStartDate:v28];

              v29 = [v14 date];
              [v26 setEndDate:v29];

              v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v23, @"activity", v25, @"score", 0}];
              [v26 setValue:v30];

              [v39 addObject:v26];
              v10 = v23;
            }

            v7 = v38;
          }

          v11 = v17;
          v9 = v40;
        }

        ++v13;
      }

      while (v9 != v13);
      v9 = [v7 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v35 = *MEMORY[0x277D85DE8];

  return v39;
}

- (id)descriptionOfIncompatibilityDenials:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x277CCAB68] string];
    [(__CFString *)v4 appendString:@"\n"];
    [(__CFString *)v4 appendString:@"Denials due to incompatibility:\n"];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = v3;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v20 + 1) + 8 * i);
          v10 = [v9 value];
          v11 = [v10 objectForKeyedSubscript:@"activity"];
          v12 = MEMORY[0x277CCACA8];
          v13 = [v9 durationString];
          v14 = [v9 intervalString];
          v15 = [v12 stringWithFormat:@"\tDuration: %@ %@ Activity: %@ \n", v13, v14, v11];

          [(__CFString *)v4 appendString:v15];
        }

        v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }

    [(__CFString *)v4 appendString:@"\n\n-------------------------------------------------------"];
    [(__CFString *)v4 appendString:@"-------------------------------------------------------"];
    v3 = v18;
  }

  else
  {
    v4 = &stru_2859F0B50;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)getInstancesOfHigherThreshold:(id)a3 forActivity:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v31 = a4;
  v6 = [MEMORY[0x277CBEB18] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 1;
    v32 = *v34;
    v30 = v7;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v32)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        v13 = [v12 message];
        v14 = v13;
        if (v10)
        {
          v15 = [v13 containsString:@"DecisionToRun:0"];

          if (v15)
          {
            v16 = objc_opt_new();
            v17 = [v12 date];
            [v16 setStartDate:v17];

            v18 = [v12 date];
            [v16 setEndDate:v18];

            v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@", v31];
            v20 = [v12 message];
            v21 = getSubstring(v20, v19, @" CurrentScore:", 0);

            v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v19, v21];
            v23 = [v12 message];
            getSubstring(v23, v22, @" DecisionToRun", 0);
            v24 = v9;
            v26 = v25 = v6;
            [v16 setValue:v26];

            v6 = v25;
            v9 = v24;

            [v6 addObject:v16];
            v7 = v30;

LABEL_11:
            v10 ^= 1u;

            continue;
          }

          v10 = 1;
        }

        else
        {
          v27 = [v13 containsString:@"Must Not Proceed"];

          if (v27)
          {
            v16 = [v12 date];
            v19 = [v6 lastObject];
            [v19 setEndDate:v16];
            goto LABEL_11;
          }

          v10 = 0;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v9);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)descriptionOfHigherThresholds:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x277CCAB68] string];
    [(__CFString *)v4 appendString:@"\n"];
    [(__CFString *)v4 appendString:@"Denials due to higher Threshold scores:\n"];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v10 = [v9 value];
          v11 = MEMORY[0x277CCACA8];
          v12 = [v9 durationString];
          v13 = [v9 intervalString];
          v14 = [v11 stringWithFormat:@"\t%@   Duration: %@   Values: %@\n", v12, v13, v10];

          [(__CFString *)v4 appendString:v14];
        }

        v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    [(__CFString *)v4 appendString:@"\n\n-------------------------------------------------------"];
    [(__CFString *)v4 appendString:@"-------------------------------------------------------"];
  }

  else
  {
    v4 = &stru_2859F0B50;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)summarizePolicyDenialsOverMessages:(id)a3 maxDuration:(double)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v40 = v5;
  [v5 allKeys];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v50 = 0u;
  v7 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v48;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v47 + 1) + 8 * i);
        v12 = [v40 objectForKeyedSubscript:v11];
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v44;
          v17 = 0.0;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v44 != v16)
              {
                objc_enumerationMutation(v13);
              }

              [*(*(&v43 + 1) + 8 * j) duration];
              if (v17 < 0.0)
              {
                v17 = a4;
                goto LABEL_17;
              }

              v17 = v17 + v19;
            }

            v15 = [v13 countByEnumeratingWithState:&v43 objects:v51 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v17 = 0.0;
        }

LABEL_17:

        v20 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
        [v6 setObject:v20 forKeyedSubscript:v11];
      }

      v8 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v8);
  }

  v21 = [v6 allKeys];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __67___DASLogExtractor_summarizePolicyDenialsOverMessages_maxDuration___block_invoke;
  v41[3] = &unk_278EE1820;
  v22 = v6;
  v42 = v22;
  v23 = [v21 sortedArrayUsingComparator:v41];

  if ([v23 count])
  {
    v24 = [MEMORY[0x277CCAB68] stringWithFormat:@"\tThe top blocking policies are :\n"];
    v25 = [MEMORY[0x277CBEAA8] date];
    if ([v23 count])
    {
      v26 = 0;
      do
      {
        v27 = MEMORY[0x277CBEAA8];
        v28 = [v23 objectAtIndexedSubscript:v26];
        v29 = [v22 objectForKeyedSubscript:v28];
        [v29 doubleValue];
        v30 = [v27 dateWithTimeInterval:v25 sinceDate:?];

        v31 = MEMORY[0x277CCACA8];
        v32 = [v23 objectAtIndexedSubscript:v26];
        v33 = getIntervalString(v25, v30);
        v34 = [v31 stringWithFormat:@"\t\t%@ : %@, \n", v32, v33];
        [(__CFString *)v24 appendString:v34];

        v35 = [v23 count];
        v36 = 6;
        if (v35 < 6)
        {
          v36 = v35;
        }

        ++v26;
      }

      while (v36 > v26);
    }
  }

  else
  {
    v24 = &stru_2859F0B50;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)summarizeAllDenialsOverMessages:(id)a3 forActivity:(id)a4 detail:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    v10 = [MEMORY[0x277CCAB68] string];
    v11 = [v8 firstObject];
    v12 = [v11 date];

    v13 = [v8 lastObject];
    v14 = [v13 date];

    v25 = v12;
    [v14 timeIntervalSinceDate:v12];
    v16 = v15;
    v17 = [(_DASLogExtractor *)self getpolicyToIntervals:v8];
    v18 = [(_DASLogExtractor *)self summarizePolicyDenialsOverMessages:v17 maxDuration:v16];
    [(__CFString *)v10 appendString:v18];
    if (v5)
    {
      v19 = [(_DASLogExtractor *)self descriptionOfPolicyToIntervalsMap:v17];
      [(__CFString *)v10 appendString:v19];
    }

    v20 = [(_DASLogExtractor *)self getIncompatibilityReasons:v8 forActivity:v9];
    v21 = [(_DASLogExtractor *)self descriptionOfIncompatibilityDenials:v20];
    [(__CFString *)v10 appendString:v21];
    v22 = [(_DASLogExtractor *)self getInstancesOfHigherThreshold:v8 forActivity:v9];
    v23 = [(_DASLogExtractor *)self descriptionOfHigherThresholds:v22];
    [(__CFString *)v10 appendString:v23];
  }

  else
  {
    v10 = @"The task is not blocked";
  }

  return v10;
}

- (id)getBARSummaryFromLogs:(id)a3 forApplication:(id)a4 detail:(BOOL)a5
{
  v152 = a5;
  v176 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(_DASLogExtractor *)self getScheduledBlocksOfBARMessages:a3 forApplication:v7];
  v151 = defaultFormatter();
  v9 = [MEMORY[0x277CCAB68] string];
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  obj = v8;
  v116 = v7;
  v117 = [obj countByEnumeratingWithState:&v169 objects:v175 count:16];
  if (v117)
  {
    v10 = 0;
    v11 = 0;
    v126 = 0;
    v127 = 0;
    v115 = *v170;
    v12 = 1;
    v144 = v9;
    v159 = self;
    while (1)
    {
      v13 = 0;
      do
      {
        if (*v170 != v115)
        {
          v14 = v13;
          objc_enumerationMutation(obj);
          v13 = v14;
        }

        v123 = v13;
        v15 = *(*(&v169 + 1) + 8 * v13);
        v136 = [(_DASLogExtractor *)self getMessagesWhenAppBackgroundSwitch:v15 forApplication:v7 switchTo:@"Background"];
        v135 = [(_DASLogExtractor *)self getMessagesWhenAppBackgroundSwitch:v15 forApplication:v7 switchTo:@"Foreground"];
        v160 = v15;
        v16 = [(_DASLogExtractor *)self getMessagesForAllBARTasks:v15];
        v17 = [(_DASLogExtractor *)self getMessagesForBARLifecycle:v16 forApplication:v7 queryStatus:@"Submitted" taskType:@"bgRefresh"];
        v141 = v16;
        v150 = [(_DASLogExtractor *)self getMessagesForBARLifecycle:v16 forApplication:v7 queryStatus:@"Completed" taskType:@"bgRefresh"];
        if ([v17 count])
        {
          v134 = [v17 count];
        }

        else
        {
          v134 = 0;
        }

        if ([v150 count])
        {
          v133 = [v150 count];
        }

        else
        {
          v133 = 0;
        }

        v18 = [(_DASLogExtractor *)self getMessagesForBARLifecycle:v16 forApplication:v7 queryStatus:@"Submitted" taskType:@"pushLaunch"];
        v149 = [(_DASLogExtractor *)self getMessagesForBARLifecycle:v141 forApplication:v7 queryStatus:@"Completed" taskType:@"pushLaunch"];
        if ([v18 count])
        {
          v132 = [v18 count];
        }

        else
        {
          v132 = 0;
        }

        v138 = v17;
        v139 = v12;
        v124 = v11;
        v125 = v10;
        v122 = v18;
        if ([v149 count])
        {
          v131 = [v149 count];
        }

        else
        {
          v131 = 0;
        }

        v137 = [(_DASLogExtractor *)self getMessagesForBARLifecycle:v141 forApplication:v7 queryStatus:@"Prediction" taskType:&stru_2859F0B50];
        v140 = [(_DASLogExtractor *)self getAllBARActivityNames:v141];
        v129 = [(_DASLogExtractor *)self getAllPushLaunchActivityNames:v141];
        v19 = [v136 lastObject];
        v20 = [v19 date];

        v21 = [v135 lastObject];
        v22 = [v21 date];

        v23 = [v150 lastObject];
        v128 = [v23 date];

        v24 = MEMORY[0x277CCACA8];
        v121 = v20;
        v25 = [v151 stringFromDate:v20];
        v130 = [v24 stringWithFormat:@"%@", v25];

        v26 = MEMORY[0x277CCACA8];
        v120 = v22;
        v27 = [v151 stringFromDate:v22];
        v28 = [v26 stringWithFormat:@"%@", v27];

        v29 = [(_DASLogExtractor *)self didBARFinish:v141 forApplication:v7];
        v30 = &stru_2859F0B50;
        if (v29)
        {
          v31 = MEMORY[0x277CCACA8];
          v32 = [v151 stringFromDate:v128];
          v30 = [v31 stringWithFormat:@"%@", v32];
        }

        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\n######################## Scheduled Block %d ########################\n\n", v12];
        [v9 appendString:v33];

        v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"App switch to background at:                %@\n", v130];
        [v9 appendString:v34];

        v119 = v28;
        v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"App switch to foreground at:                %@\n", v28];
        [v9 appendString:v35];

        v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Number of bgRefresh tasks submitted:        %lu\n", v134];
        [v9 appendString:v36];

        v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"Number of bgRefresh tasks completed:        %lu\n", v133];
        [v9 appendString:v37];

        v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"Number of pushLaunch tasks submitted:       %lu\n", v132];
        [v9 appendString:v38];

        v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"Number of pushLaunch tasks completed:       %lu\n", v131];
        [v9 appendString:v39];

        v40 = v138;
        if (v29)
        {
          v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"Last Background Refresh Task Completed at:  %@\n", v30];
          [v9 appendString:v41];
        }

        v118 = v30;
        v42 = v137;
        if ([v137 count])
        {
          v43 = [v137 lastObject];
          v44 = [v43 date];

          v45 = MEMORY[0x277CCACA8];
          v46 = [v151 stringFromDate:v44];
          v47 = [v45 stringWithFormat:@"%@", v46];

          v48 = [v137 lastObject];
          v49 = [v48 message];

          v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"Last App Launch Prediction Generated at:    %@\n", v47];
          [v9 appendString:v50];

          v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Last App Launch Prediction:                 %@\n", v49];
          [v9 appendString:v51];
        }

        if ([v140 count])
        {
          [v9 appendString:@"--------------------------------------------------------------------\n"];
          [v9 appendString:@"Summary for bgRefresh tasks:\n"];
          v167 = 0u;
          v168 = 0u;
          v165 = 0u;
          v166 = 0u;
          v142 = v140;
          v147 = [v142 countByEnumeratingWithState:&v165 objects:v174 count:16];
          if (!v147)
          {
            goto LABEL_45;
          }

          v145 = *v166;
          while (1)
          {
            for (i = 0; i != v147; ++i)
            {
              if (*v166 != v145)
              {
                objc_enumerationMutation(v142);
              }

              v53 = *(*(&v165 + 1) + 8 * i);
              v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"Activity %@     \n", v53];
              [v9 appendString:v54];

              v55 = [(_DASLogExtractor *)self getMessagesBeforeRunning:v160 forActivity:v53];
              LODWORD(v54) = [(_DASLogExtractor *)self didActivityRun:v160 forActivity:v53];
              v56 = [v55 lastObject];
              v157 = [v56 date];

              v57 = &stru_2859F0B50;
              v153 = &stru_2859F0B50;
              v155 = &stru_2859F0B50;
              if (v54)
              {
                v58 = [(_DASLogExtractor *)self getMessagesAfterRunning:v160 forActivity:v53];
                v59 = [(_DASLogExtractor *)self summarizeRuntimeOverMessages:v58 forActivity:v53];
                v155 = [v59 objectForKeyedSubscript:@"result"];
                v57 = [v59 objectForKeyedSubscript:@"suspendTime"];
                v60 = MEMORY[0x277CCACA8];
                v61 = [v151 stringFromDate:v157];
                v62 = [v60 stringWithFormat:@"%@", v61];

                v153 = v62;
                v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"Activity ran at:                            %@\n", v62];
                [v9 appendString:v63];

                if (([(__CFString *)v57 isEqualToString:&stru_2859F0B50]& 1) == 0)
                {
                  v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"Suspended at:                                %@\n", v57];
                  [v9 appendString:v64];
                }
              }

              v65 = [(_DASLogExtractor *)self didActivityFinish:v150 forBARActivity:v53];
              if (v65 == 2)
              {
                v67 = [(_DASLogExtractor *)self getMessagesActivityFinish:v150 forActivity:v53 isCompleted:0];
                if (!v67)
                {
                  v66 = &stru_2859F0B50;
                  goto LABEL_42;
                }

                v68 = @"Canceled at:                                %@\n";
                goto LABEL_40;
              }

              v66 = &stru_2859F0B50;
              if (v65 != 1)
              {
                goto LABEL_43;
              }

              v67 = [(_DASLogExtractor *)self getMessagesActivityFinish:v150 forActivity:v53 isCompleted:1];
              if (v67)
              {
                v68 = @"Completed at:                               %@\n";
LABEL_40:
                v69 = [v67 date];
                v70 = MEMORY[0x277CCACA8];
                v71 = [v151 stringFromDate:v69];
                v66 = [v70 stringWithFormat:@"%@", v71];

                v72 = [MEMORY[0x277CCACA8] stringWithFormat:v68, v66];
                v9 = v144;
                [v144 appendString:v72];

                self = v159;
              }

LABEL_42:

LABEL_43:
              v73 = [(_DASLogExtractor *)self summarizeAllDenialsOverMessages:v55 forActivity:v53 detail:v152];
              v74 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v73];
              [v9 appendString:v74];
            }

            v147 = [v142 countByEnumeratingWithState:&v165 objects:v174 count:16];
            if (!v147)
            {
LABEL_45:

              v40 = v138;
              LODWORD(v12) = v139;
              v42 = v137;
              break;
            }
          }
        }

        v75 = v129;
        if (![v129 count])
        {
          goto LABEL_68;
        }

        [v9 appendString:@"--------------------------------------------------------------------\n"];
        [v9 appendString:@"Summary for pushLaunch tasks:\n"];
        v163 = 0u;
        v164 = 0u;
        v161 = 0u;
        v162 = 0u;
        v143 = v129;
        v148 = [v143 countByEnumeratingWithState:&v161 objects:v173 count:16];
        if (!v148)
        {
          goto LABEL_67;
        }

        v146 = *v162;
        do
        {
          for (j = 0; j != v148; ++j)
          {
            if (*v162 != v146)
            {
              objc_enumerationMutation(v143);
            }

            v77 = *(*(&v161 + 1) + 8 * j);
            v78 = [MEMORY[0x277CCACA8] stringWithFormat:@"Activity %@     \n", v77];
            [v9 appendString:v78];

            v79 = [(_DASLogExtractor *)self getMessagesBeforeRunning:v160 forActivity:v77];
            LODWORD(v78) = [(_DASLogExtractor *)self didActivityRun:v160 forActivity:v77];
            v80 = [v79 lastObject];
            v158 = [v80 date];

            v154 = &stru_2859F0B50;
            v156 = &stru_2859F0B50;
            v81 = self;
            v82 = &stru_2859F0B50;
            if (v78)
            {
              v83 = [(_DASLogExtractor *)v81 getMessagesAfterRunning:v160 forActivity:v77];
              v84 = [(_DASLogExtractor *)v81 summarizeRuntimeOverMessages:v83 forActivity:v77];
              v156 = [v84 objectForKeyedSubscript:@"result"];
              v82 = [v84 objectForKeyedSubscript:@"suspendTime"];
              v85 = MEMORY[0x277CCACA8];
              v86 = [v151 stringFromDate:v158];
              v87 = [v85 stringWithFormat:@"%@", v86];

              v154 = v87;
              v88 = [MEMORY[0x277CCACA8] stringWithFormat:@"Activity ran at:                            %@\n", v87];
              [v9 appendString:v88];

              if (([(__CFString *)v82 isEqualToString:&stru_2859F0B50]& 1) == 0)
              {
                v89 = [MEMORY[0x277CCACA8] stringWithFormat:@"Suspended at:                                %@\n", v82];
                [v9 appendString:v89];
              }

              v81 = v159;
            }

            v90 = [(_DASLogExtractor *)v81 didActivityFinish:v149 forBARActivity:v77];
            if (v90 == 2)
            {
              v92 = [(_DASLogExtractor *)v159 getMessagesActivityFinish:v149 forActivity:v77 isCompleted:0];
              if (!v92)
              {
                v91 = &stru_2859F0B50;
                goto LABEL_64;
              }

              v93 = @"Canceled at:                                %@\n";
              goto LABEL_62;
            }

            v91 = &stru_2859F0B50;
            if (v90 != 1)
            {
              goto LABEL_65;
            }

            v92 = [(_DASLogExtractor *)v159 getMessagesActivityFinish:v149 forActivity:v77 isCompleted:1];
            if (v92)
            {
              v93 = @"Completed at:                               %@\n";
LABEL_62:
              v94 = [v92 date];
              v95 = MEMORY[0x277CCACA8];
              v96 = [v151 stringFromDate:v94];
              v91 = [v95 stringWithFormat:@"%@", v96];

              v97 = [MEMORY[0x277CCACA8] stringWithFormat:v93, v91];
              v9 = v144;
              [v144 appendString:v97];
            }

LABEL_64:

LABEL_65:
            v98 = [(_DASLogExtractor *)v159 summarizeAllDenialsOverMessages:v79 forActivity:v77 detail:v152];
            v99 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v98];
            [v9 appendString:v99];

            self = v159;
          }

          v148 = [v143 countByEnumeratingWithState:&v161 objects:v173 count:16];
        }

        while (v148);
LABEL_67:

        v40 = v138;
        LODWORD(v12) = v139;
        v42 = v137;
        v75 = v129;
LABEL_68:
        v126 += v134;
        v127 += v133;
        v11 = v132 + v124;
        v12 = (v12 + 1);
        v10 = v131 + v125;

        v13 = v123 + 1;
        v7 = v116;
      }

      while (v123 + 1 != v117);
      v117 = [obj countByEnumeratingWithState:&v169 objects:v175 count:16];
      if (!v117)
      {
        v100 = v132 + v124;
        v101 = v126;
        v102 = v127;
        goto LABEL_72;
      }
    }
  }

  v10 = 0;
  v100 = 0;
  v102 = 0;
  v101 = 0;
LABEL_72:

  v103 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\n######################### Overall Summary #########################\n\n"];
  [v9 appendString:v103];

  v104 = [MEMORY[0x277CCACA8] stringWithFormat:@"Total Number of bgRefresh tasks submitted:  %lu\n", v101];
  [v9 appendString:v104];

  v105 = [MEMORY[0x277CCACA8] stringWithFormat:@"Total Number of bgRefresh tasks completed:  %lu\n", v102];
  [v9 appendString:v105];

  v106 = [MEMORY[0x277CCACA8] stringWithFormat:@"Total Number of pushLaunch tasks submitted: %lu\n", v100];
  [v9 appendString:v106];

  v107 = [MEMORY[0x277CCACA8] stringWithFormat:@"Total Number of pushLaunch tasks completed: %lu\n", v10];
  [v9 appendString:v107];

  v108 = 0.0;
  v109 = ((v102 / v101) * 100.0);
  if (!v101)
  {
    v109 = 0.0;
  }

  v110 = [MEMORY[0x277CCACA8] stringWithFormat:@"Success rate of bgRefresh tasks completed: %.1f%%\n", *&v109];
  [v9 appendString:v110];

  if (v10)
  {
    v108 = ((v10 / v100) * 100.0);
  }

  v111 = [MEMORY[0x277CCACA8] stringWithFormat:@"Success rate of pushLaunch tasks completed: %.1f%%\n", *&v108];
  [v9 appendString:v111];

  v112 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)objectForTrigger:(id)a3 fromCondition:(id)a4 compactRepresentation:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  if (![v7 isEqualToString:@"/device/system/thermalpressure"])
  {
    if ([v7 isEqualToString:@"/device/system/isPluggedIn"])
    {
      if (![v8 isEqualToString:@"0"])
      {
        v9 = @"Plugged In";
        goto LABEL_15;
      }

      v10 = @"Unplugged";
      goto LABEL_56;
    }

    if ([v7 isEqualToString:@"/device/system/cpuusage"])
    {
      if ([v8 isEqualToString:@"0"])
      {
        goto LABEL_3;
      }

      v12 = [v8 isEqualToString:@"50"];
      if (v5)
      {
        if (v12)
        {
          goto LABEL_3;
        }

        v10 = @"Under CPU Load";
LABEL_56:
        v14 = [_DASLogCondition withCondition:v10];
        goto LABEL_57;
      }

      if (v12)
      {
        v9 = @"Light";
        goto LABEL_15;
      }

      if ([v8 isEqualToString:@"75"])
      {
        v10 = @"Moderate";
        goto LABEL_56;
      }

      if ([v8 isEqualToString:@"90"])
      {
        v10 = @"Somewhat Heavy";
        goto LABEL_56;
      }

      if ([v8 isEqualToString:@"95"])
      {
        v10 = @"Really Heavy";
        goto LABEL_56;
      }
    }

    else
    {
      if (([v7 isEqualToString:@"/device/system/wifi/status"] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"/device/system/cell/status") & 1) == 0 && !objc_msgSend(v7, "isEqualToString:", @"/device/system/wired/status"))
      {
        v11 = 0;
        if ([v7 isEqualToString:@"/device/system/batteryPercentage"] && v5)
        {
          v16 = [v8 intValue];
          if (v16 <= 10)
          {
            v11 = [MEMORY[0x277CCABB0] numberWithInt:v16];
            v15 = v11;
            goto LABEL_28;
          }

          v19 = [MEMORY[0x277CCABB0] numberWithInt:10 * (v16 / 0xA)];
          v14 = [_DASLogCondition withCondition:v19];

          if (v16 < 0x15)
          {
            goto LABEL_57;
          }

LABEL_60:
          v13 = v14;
          goto LABEL_16;
        }

LABEL_59:
        v14 = [_DASLogCondition withCondition:v8];

        goto LABEL_60;
      }

      if ([v8 isEqualToString:@"0"])
      {
        v10 = @"None";
        goto LABEL_56;
      }

      if ([v8 isEqualToString:@"20"])
      {
        v10 = @"Minimally Viable";
        goto LABEL_56;
      }

      if ([v8 isEqualToString:@"50"])
      {
        v10 = @"Fair";
        goto LABEL_56;
      }

      if ([v8 isEqualToString:@"100"])
      {
        v14 = [_DASLogCondition withCondition:@"Best"];
        if ([v7 containsString:@"cell"])
        {
          goto LABEL_57;
        }

        goto LABEL_60;
      }
    }

    v11 = 0;
    goto LABEL_59;
  }

  if (![v8 isEqualToString:@"0"])
  {
    if (v5)
    {
      v11 = [_DASLogCondition withCondition:@"Under Thermal Pressure"];
    }

    else
    {
      v11 = 0;
    }

    if ([v8 isEqualToString:@"10"])
    {
      v15 = @"Light";
LABEL_28:
      v14 = [_DASLogCondition withCondition:v15];

      goto LABEL_57;
    }

    if (([v8 isEqualToString:@"1"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"20"))
    {
      v15 = @"Moderate";
      goto LABEL_28;
    }

    if (([v8 isEqualToString:@"2"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"30"))
    {
      v15 = @"Heavy";
      goto LABEL_28;
    }

    if (([v8 isEqualToString:@"3"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"40") || (objc_msgSend(v8, "isEqualToString:", @"4") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"50"))
    {
      v15 = @"Trapping";
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_3:
  v9 = @"Nominal";
LABEL_15:
  v13 = [_DASLogCondition withCondition:v9];
  v14 = v13;
LABEL_16:
  [v13 setIsIdeal:1];
LABEL_57:
  v17 = v14;

  return v14;
}

- (int)sysConditionsLog:(BOOL)a3 startDate:(id)a4 endDate:(id)a5
{
  v82 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB38] dictionary];
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"subsystem = %@", self->_subsystem];
  [v11 addObject:v12];

  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"eventMessage contains Trigger:"];
  [v11 addObject:v13];

  if (v9)
  {
    v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"date <= %@", v9];
    [v11 addObject:v14];
  }

  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __55___DASLogExtractor_sysConditionsLog_startDate_endDate___block_invoke;
  v78[3] = &unk_278EE1890;
  v78[4] = self;
  v15 = v10;
  v79 = v15;
  v80 = a3;
  v16 = [(_DASLogExtractor *)self handleLogEventsLogEvents:v11 sinceDate:v8 withHandler:v78];
  if (!v16)
  {
    v62 = v8;
    v17 = [MEMORY[0x277CBEB18] array];
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __55___DASLogExtractor_sysConditionsLog_startDate_endDate___block_invoke_2;
    v76[3] = &unk_278EE18B8;
    v18 = v17;
    v77 = v18;
    [v15 enumerateKeysAndObjectsUsingBlock:v76];
    v65 = v11;
    v66 = v9;
    v63 = v18;
    v64 = v15;
    if ([v18 count] >= 2)
    {
      do
      {
        v19 = [v18 objectAtIndexedSubscript:0];
        v20 = [v18 objectAtIndexedSubscript:1];
        v21 = v19;
        v22 = v20;
        if ([v21 count] && objc_msgSend(v22, "count"))
        {
          v70 = [MEMORY[0x277CBEB18] array];
          if ([v21 count])
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            do
            {
              if ([v22 count] <= v24)
              {
                break;
              }

              v26 = [v21 objectAtIndexedSubscript:v23];
              v27 = [v22 objectAtIndexedSubscript:v24];
              v28 = [v26 intersectionWithDateInterval:v27];

              if (v28)
              {
                [v70 addObject:v28];
              }

              v29 = [v21 objectAtIndexedSubscript:v23];
              v30 = [v29 endDate];
              v31 = [v22 objectAtIndexedSubscript:v24];
              v32 = [v31 endDate];
              v33 = [v30 compare:v32];

              if (v33 == 1)
              {
                v23 = v25;
              }

              else
              {
                v23 = v25 + 1;
              }

              if (v33 == 1)
              {
                ++v24;
              }

              v25 = v23;
            }

            while ([v21 count] > v23);
          }

          v34 = [v70 copy];

          v11 = v65;
          v9 = v66;
          v18 = v63;
          v15 = v64;
        }

        else
        {
          v34 = MEMORY[0x277CBEBF8];
        }

        [v18 addObject:v34];
        [v18 removeObjectAtIndex:0];
        [v18 removeObjectAtIndex:0];
      }

      while ([v18 count] > 1);
    }

    fwrite("Ideal Conditions:-----------\n", 0x1DuLL, 1uLL, *MEMORY[0x277D85E08]);
    v35 = defaultFormatter();
    if (timeOnlyFormatter_onceToken != -1)
    {
      [_DASLogExtractor sysConditionsLog:startDate:endDate:];
    }

    v69 = timeOnlyFormatter_timeOnlyFormatter;
    v36 = [MEMORY[0x277CBEA80] currentCalendar];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v37 = [v18 firstObject];
    v71 = [v37 countByEnumeratingWithState:&v72 objects:v81 count:16];
    if (v71)
    {
      obj = v37;
      v68 = *v73;
      v38 = 0.0;
      do
      {
        for (i = 0; i != v71; ++i)
        {
          if (*v73 != v68)
          {
            objc_enumerationMutation(obj);
          }

          v40 = *(*(&v72 + 1) + 8 * i);
          v41 = [v40 startDate];
          v42 = [v36 components:24 fromDate:v41];
          v43 = [v40 endDate];
          v44 = [v36 components:24 fromDate:v43];
          v45 = [v42 isEqual:v44];

          v46 = *MEMORY[0x277D85E08];
          v47 = [v40 startDate];
          v48 = [v35 stringFromDate:v47];
          v49 = [v48 UTF8String];
          v50 = [v40 endDate];
          if (v45)
          {
            v51 = v69;
          }

          else
          {
            v51 = v35;
          }

          v52 = [v51 stringFromDate:v50];
          fprintf(v46, "  %s - %s\n", v49, [v52 UTF8String]);

          v53 = [v40 endDate];
          v54 = [MEMORY[0x277CBEAA8] distantFuture];
          v55 = [v53 isEqual:v54];

          if ((v55 & 1) == 0)
          {
            [v40 duration];
            v38 = v38 + v56;
          }
        }

        v71 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
      }

      while (v71);

      v57 = *MEMORY[0x277D85E08];
      if (v38 >= 3600.0)
      {
        v58 = "hours";
        v59 = v38 / 3600.0;
        v11 = v65;
        v9 = v66;
        v18 = v63;
        v15 = v64;
        goto LABEL_40;
      }

      v11 = v65;
      v9 = v66;
      v18 = v63;
      v15 = v64;
    }

    else
    {

      v57 = *MEMORY[0x277D85E08];
      v38 = 0.0;
    }

    v58 = "minutes";
    v59 = v38 / 60.0;
LABEL_40:
    fprintf(v57, "Over the course of the log, there was %5.2f %s of ideal conditions.\n", v59, v58);

    v16 = 0;
    v8 = v62;
  }

  v60 = *MEMORY[0x277D85DE8];
  return v16;
}

@end