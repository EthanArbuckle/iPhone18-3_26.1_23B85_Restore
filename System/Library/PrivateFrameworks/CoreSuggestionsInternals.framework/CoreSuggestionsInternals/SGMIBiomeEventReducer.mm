@interface SGMIBiomeEventReducer
+ (void)updateSummaryDict:(id)dict fetchedUnreadMessages:(id)messages event:(id)event timestamp:(double)timestamp;
@end

@implementation SGMIBiomeEventReducer

+ (void)updateSummaryDict:(id)dict fetchedUnreadMessages:(id)messages event:(id)event timestamp:(double)timestamp
{
  v72 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  messagesCopy = messages;
  eventCopy = event;
  v12 = objc_autoreleasePoolPush();
  v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"app_launch", @"app_resume", 0}];
  objc_autoreleasePoolPop(v12);
  eventName = [eventCopy eventName];
  v15 = [v13 containsObject:eventName];

  if (v15)
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v16 = messagesCopy;
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

          v21 = [dictCopy objectForKeyedSubscript:*(*(&v65 + 1) + 8 * i)];
          [v21 updateWithAppLaunchAtTime:timestamp];
        }

        v18 = [v16 countByEnumeratingWithState:&v65 objects:v71 count:16];
      }

      while (v18);
    }
  }

  messageId = [eventCopy messageId];

  if (messageId)
  {
    v23 = objc_alloc(MEMORY[0x277CCACA8]);
    messageId2 = [eventCopy messageId];
    v25 = [v23 initWithFormat:@"<%@>", messageId2];

    v26 = [dictCopy objectForKeyedSubscript:v25];

    if (!v26)
    {
      v27 = objc_opt_new();
      [dictCopy setObject:v27 forKeyedSubscript:v25];
    }

    eventName2 = [eventCopy eventName];
    v29 = [eventName2 isEqualToString:@"message_fetched"];

    if (v29)
    {
      v30 = [dictCopy objectForKeyedSubscript:v25];
      [v30 updateWithMessageFetchedEventAtTime:timestamp];

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v31 = messagesCopy;
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

            v36 = [dictCopy objectForKeyedSubscript:*(*(&v61 + 1) + 8 * j)];
            [v36 incrementNumberOfMoreRecentUnreadMessageAtFirstViewTime];
          }

          v33 = [v31 countByEnumeratingWithState:&v61 objects:v70 count:16];
        }

        while (v33);
      }

      [v31 addObject:v25];
      goto LABEL_39;
    }

    eventName3 = [eventCopy eventName];
    v38 = [eventName3 isEqualToString:@"message_view_start"];

    if (v38)
    {
      if ([messagesCopy containsObject:v25])
      {
        [messagesCopy removeObject:v25];
      }

      v39 = [dictCopy objectForKeyedSubscript:v25];
      [v39 updateWithViewStartAtTime:objc_msgSend(messagesCopy unreadMessageCount:{"count"), timestamp}];

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v40 = messagesCopy;
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

            v45 = [dictCopy objectForKeyedSubscript:*(*(&v57 + 1) + 8 * k)];
            [v45 incrementNumberOfMailsViewedBeforeSinceAvailable];
          }

          v42 = [v40 countByEnumeratingWithState:&v57 objects:v69 count:16];
        }

        while (v42);
      }

      goto LABEL_38;
    }

    eventName4 = [eventCopy eventName];
    v47 = [eventName4 isEqualToString:@"message_view_end"];

    if (v47)
    {
      v40 = [dictCopy objectForKeyedSubscript:v25];
      payload = [eventCopy payload];
      [v40 updateWithViewEndWithPayload:payload];
    }

    else
    {
      eventName5 = [eventCopy eventName];
      v50 = [eventName5 isEqualToString:@"read_changed"];

      if (v50)
      {
        v40 = [dictCopy objectForKeyedSubscript:v25];
        payload = [eventCopy payload];
        [v40 updateWithReadChangedEventWithPayload:payload];
      }

      else
      {
        eventName6 = [eventCopy eventName];
        v53 = [eventName6 isEqualToString:@"flag_changed"];

        if (v53)
        {
          v40 = [dictCopy objectForKeyedSubscript:v25];
          [v40 updateWithFlagChangedEvent];
          goto LABEL_38;
        }

        eventName7 = [eventCopy eventName];
        v55 = [eventName7 isEqualToString:@"message_moved"];

        v56 = [dictCopy objectForKeyedSubscript:v25];
        v40 = v56;
        if (!v55)
        {
          [v56 updateWithEvent:eventCopy eventTimestamp:timestamp];
          goto LABEL_38;
        }

        payload = [eventCopy payload];
        [v40 updateWithMessageMovedEventWithPayload:payload];
      }
    }

LABEL_38:
LABEL_39:
  }

  v51 = *MEMORY[0x277D85DE8];
}

@end