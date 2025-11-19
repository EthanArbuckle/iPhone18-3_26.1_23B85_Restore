@interface SGMIBiomeEventReducer
+ (void)updateSummaryDict:(id)a3 fetchedUnreadMessages:(id)a4 event:(id)a5 timestamp:(double)a6;
@end

@implementation SGMIBiomeEventReducer

+ (void)updateSummaryDict:(id)a3 fetchedUnreadMessages:(id)a4 event:(id)a5 timestamp:(double)a6
{
  v72 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_autoreleasePoolPush();
  v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"app_launch", @"app_resume", 0}];
  objc_autoreleasePoolPop(v12);
  v14 = [v11 eventName];
  v15 = [v13 containsObject:v14];

  if (v15)
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v16 = v10;
    v17 = [v16 countByEnumeratingWithState:&v65 objects:v71 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v66;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v66 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [v9 objectForKeyedSubscript:*(*(&v65 + 1) + 8 * i)];
          [v21 updateWithAppLaunchAtTime:a6];
        }

        v18 = [v16 countByEnumeratingWithState:&v65 objects:v71 count:16];
      }

      while (v18);
    }
  }

  v22 = [v11 messageId];

  if (v22)
  {
    v23 = objc_alloc(MEMORY[0x277CCACA8]);
    v24 = [v11 messageId];
    v25 = [v23 initWithFormat:@"<%@>", v24];

    v26 = [v9 objectForKeyedSubscript:v25];

    if (!v26)
    {
      v27 = objc_opt_new();
      [v9 setObject:v27 forKeyedSubscript:v25];
    }

    v28 = [v11 eventName];
    v29 = [v28 isEqualToString:@"message_fetched"];

    if (v29)
    {
      v30 = [v9 objectForKeyedSubscript:v25];
      [v30 updateWithMessageFetchedEventAtTime:a6];

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v31 = v10;
      v32 = [v31 countByEnumeratingWithState:&v61 objects:v70 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v62;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v62 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = [v9 objectForKeyedSubscript:*(*(&v61 + 1) + 8 * j)];
            [v36 incrementNumberOfMoreRecentUnreadMessageAtFirstViewTime];
          }

          v33 = [v31 countByEnumeratingWithState:&v61 objects:v70 count:16];
        }

        while (v33);
      }

      [v31 addObject:v25];
      goto LABEL_39;
    }

    v37 = [v11 eventName];
    v38 = [v37 isEqualToString:@"message_view_start"];

    if (v38)
    {
      if ([v10 containsObject:v25])
      {
        [v10 removeObject:v25];
      }

      v39 = [v9 objectForKeyedSubscript:v25];
      [v39 updateWithViewStartAtTime:objc_msgSend(v10 unreadMessageCount:{"count"), a6}];

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v40 = v10;
      v41 = [v40 countByEnumeratingWithState:&v57 objects:v69 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v58;
        do
        {
          for (k = 0; k != v42; ++k)
          {
            if (*v58 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = [v9 objectForKeyedSubscript:*(*(&v57 + 1) + 8 * k)];
            [v45 incrementNumberOfMailsViewedBeforeSinceAvailable];
          }

          v42 = [v40 countByEnumeratingWithState:&v57 objects:v69 count:16];
        }

        while (v42);
      }

      goto LABEL_38;
    }

    v46 = [v11 eventName];
    v47 = [v46 isEqualToString:@"message_view_end"];

    if (v47)
    {
      v40 = [v9 objectForKeyedSubscript:v25];
      v48 = [v11 payload];
      [v40 updateWithViewEndWithPayload:v48];
    }

    else
    {
      v49 = [v11 eventName];
      v50 = [v49 isEqualToString:@"read_changed"];

      if (v50)
      {
        v40 = [v9 objectForKeyedSubscript:v25];
        v48 = [v11 payload];
        [v40 updateWithReadChangedEventWithPayload:v48];
      }

      else
      {
        v52 = [v11 eventName];
        v53 = [v52 isEqualToString:@"flag_changed"];

        if (v53)
        {
          v40 = [v9 objectForKeyedSubscript:v25];
          [v40 updateWithFlagChangedEvent];
          goto LABEL_38;
        }

        v54 = [v11 eventName];
        v55 = [v54 isEqualToString:@"message_moved"];

        v56 = [v9 objectForKeyedSubscript:v25];
        v40 = v56;
        if (!v55)
        {
          [v56 updateWithEvent:v11 eventTimestamp:a6];
          goto LABEL_38;
        }

        v48 = [v11 payload];
        [v40 updateWithMessageMovedEventWithPayload:v48];
      }
    }

LABEL_38:
LABEL_39:
  }

  v51 = *MEMORY[0x277D85DE8];
}

@end