@interface DDRemoteTimeLineViewControllerProvider
- (id)dayViewController:(id)a3 eventsForStartDate:(id)a4 endDate:(id)a5;
- (void)createViewControllerWithCompletionHandler:(id)a3;
- (void)dayViewControllerDidReloadData:(id)a3;
@end

@implementation DDRemoteTimeLineViewControllerProvider

- (void)createViewControllerWithCompletionHandler:(id)a3
{
  v103 = *MEMORY[0x277D85DE8];
  v89 = a3;
  Helper_x8__OBJC_CLASS___APApplication = gotLoadHelper_x8__OBJC_CLASS___APApplication(v5);
  v90 = [*(v7 + 3712) applicationWithBundleIdentifier:{@"com.apple.mobilecal", Helper_x8__OBJC_CLASS___APApplication}];
  if ([v90 isEffectivelyLocked])
  {
    v96 = 0;
    v8 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:@"com.apple.mobilecal" allowPlaceholder:1 error:&v96];
    v9 = v96;
    if (v9)
    {
      [(DDRemoteTimeLineViewControllerProvider *)a2 createViewControllerWithCompletionHandler:v9];
    }

    v10 = [v8 localizedName];
    gotLoadHelper_x8__OBJC_CLASS___ISIcon(v11);
    v13 = [objc_alloc(*(v12 + 424)) initWithBundleIdentifier:@"com.apple.mobilecal"];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v14 = [MEMORY[0x277D759A0] screens];
    v15 = [v14 countByEnumeratingWithState:&v92 objects:v102 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v93;
      v18 = 1.0;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v93 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v92 + 1) + 8 * i) scale];
          v18 = fmax(v18, v20);
        }

        v16 = [v14 countByEnumeratingWithState:&v92 objects:v102 count:16];
      }

      while (v16);
    }

    else
    {
      v18 = 1.0;
    }

    gotLoadHelper_x8__OBJC_CLASS___ISImageDescriptor(v21);
    v23 = [objc_alloc(*(v22 + 456)) initWithSize:64.0 scale:{64.0, v18}];
    [v23 setDrawBorder:1];
    v24 = [v13 prepareImageForDescriptor:v23];
    v25 = MEMORY[0x277D755B8];
    v26 = [v24 CGImage];
    [v24 scale];
    v27 = [v25 imageWithCGImage:v26 scale:0 orientation:?];
    gotLoadHelper_x8__OBJC_CLASS___APBaseExtensionShieldView(v28);
    v30 = [objc_alloc(*(v29 + 3784)) initWithLocalizedApplicationName:v10 iconImage:v27 unlockButtonHidden:1];
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    v31 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v30 setBackgroundColor:v31];

    shieldView = self->_shieldView;
    self->_shieldView = v30;
  }

  v33 = [[DDEKDayViewController alloc] initWithTargetSizeClass:0];
  [(EKDayViewController *)v33 setDelegate:self];
  [(EKDayViewController *)v33 setDataSource:self];
  [(EKDayViewController *)v33 setShowsBanner:0];
  [(EKDayViewController *)v33 setAllowsSelection:0];
  [(EKDayViewController *)v33 setAllowsDaySwitching:0];
  gotLoadHelper_x8__OBJC_CLASS___EKEventStore(v34);
  v36 = objc_alloc_init(*(v35 + 2624));
  [(DDRemoteTimeLineViewControllerProvider *)self setStore:v36];

  v37 = [(DDRemoteActionViewControllerProvider *)self actionContext];
  v38 = [v37 context];

  if (v38)
  {
    v39 = [(DDRemoteActionViewControllerProvider *)self actionContext];
    v40 = [v39 context];
    v41 = [v40 objectForKeyedSubscript:@"AllResults"];

    if (v41)
    {
      v42 = 0;
      goto LABEL_19;
    }

    v45 = [(DDRemoteActionViewControllerProvider *)self actionContext];
    v46 = [v45 context];
    v42 = [v46 mutableCopy];

    v43 = [(DDRemoteActionViewControllerProvider *)self actionContext];
    v98 = [v43 result];
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];
    [v42 setObject:v44 forKeyedSubscript:@"AllResults"];
  }

  else
  {
    v100 = @"AllResults";
    v43 = [(DDRemoteActionViewControllerProvider *)self actionContext];
    v99 = [v43 result];
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v99 count:1];
    v101 = v44;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
  }

LABEL_19:
  v47 = [(DDRemoteTimeLineViewControllerProvider *)self store];
  v48 = [(DDRemoteActionViewControllerProvider *)self actionContext];
  v49 = [v48 associatedResults];
  v50 = DDUIEventForResults(v47, v49, v42);

  v51 = [(DDRemoteTimeLineViewControllerProvider *)self store];
  v52 = [(DDRemoteActionViewControllerProvider *)self actionContext];
  v53 = [v52 associatedResults];
  v54 = [(DDRemoteActionViewControllerProvider *)self actionContext];
  v55 = [v54 hostApplicationIdentifier];
  v56 = DDUISuggestedEventForResults(v51, v53, v42, v55, 0, 0);

  if (!v56)
  {
    goto LABEL_29;
  }

  v57 = [v56 title];
  v58 = [v57 length];

  if (v58)
  {
    v59 = [v56 title];
    [v50 setTitle:v59];
  }

  v60 = [v56 startDate];

  if (v60)
  {
    [v50 setAllDay:0];
    v61 = [v56 startDate];
    [v50 setStartDate:v61];

    v62 = [v56 endDate];
    [v50 setEndDate:v62];
  }

  v63 = [v56 startDate];
  if (!v63)
  {
    [v56 duration];
    if (v64 > 0.0)
    {
      if ([v50 isAllDay])
      {
        goto LABEL_29;
      }

      v63 = [v50 startDate];
      [v56 duration];
      v65 = [v63 dateByAddingTimeInterval:?];
      [v50 setEndDate:v65];
    }
  }

LABEL_29:
  v66 = [(DDRemoteTimeLineViewControllerProvider *)self store];
  v67 = [v66 defaultCalendarForNewEvents];
  [v50 setCalendar:v67];

  gotLoadHelper_x8__OBJC_CLASS___EKAttendee(v68);
  v70 = objc_alloc_init(*(v69 + 2464));
  [v70 setParticipantStatus:4];
  v97 = v70;
  v71 = [MEMORY[0x277CBEA60] arrayWithObjects:&v97 count:1];
  [v50 setAttendees:v71];

  [v50 setStatus:2];
  [(DDRemoteTimeLineViewControllerProvider *)self setEvent:v50];
  [(DDEKDayViewController *)v33 setDd_event:v50];
  v72 = [v50 startDate];

  if (v72)
  {
    [v50 startDate];
  }

  else
  {
    [MEMORY[0x277CBEAA8] date];
  }
  v73 = ;
  v74 = [(EKDayViewController *)v33 calendar];
  v75 = [v74 components:62 fromDate:v73];

  [(EKDayViewController *)v33 setDisplayDate:v75];
  v76 = v90;
  if (self->_shieldView)
  {
    [(DDEKDayViewController *)v33 view];
    v77 = v88 = v73;
    [v77 addSubview:self->_shieldView];
    v78 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_shieldView attribute:9 relatedBy:0 toItem:v77 attribute:9 multiplier:1.0 constant:0.0];
    [v77 addConstraint:v78];

    v79 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_shieldView attribute:10 relatedBy:0 toItem:v77 attribute:10 multiplier:1.0 constant:0.0];
    [v77 addConstraint:v79];

    v80 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_shieldView attribute:7 relatedBy:0 toItem:v77 attribute:7 multiplier:1.0 constant:0.0];
    [v77 addConstraint:v80];

    v76 = v90;
    v81 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_shieldView attribute:8 relatedBy:0 toItem:v77 attribute:8 multiplier:1.0 constant:0.0];
    [v77 addConstraint:v81];

    gotLoadHelper_x8__OBJC_CLASS___APGuard(v82);
    v84 = *(v83 + 3736);
    v85 = self;
    v86 = [v84 sharedGuard];
    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = __84__DDRemoteTimeLineViewControllerProvider_createViewControllerWithCompletionHandler___block_invoke;
    v91[3] = &unk_278290DA8;
    v91[4] = v85;
    [v86 authenticateForSubject:v90 completion:v91];

    v73 = v88;
  }

  v89[2](v89, v33);

  v87 = *MEMORY[0x277D85DE8];
}

void __84__DDRemoteTimeLineViewControllerProvider_createViewControllerWithCompletionHandler___block_invoke(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    block[7] = v2;
    block[8] = v3;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__DDRemoteTimeLineViewControllerProvider_createViewControllerWithCompletionHandler___block_invoke_2;
    block[3] = &unk_278290B50;
    block[4] = v4;
    v6 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __84__DDRemoteTimeLineViewControllerProvider_createViewControllerWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

- (id)dayViewController:(id)a3 eventsForStartDate:(id)a4 endDate:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  [(DDRemoteTimeLineViewControllerProvider *)self setEvents:0];
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v10 = [(DDRemoteTimeLineViewControllerProvider *)self store];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __87__DDRemoteTimeLineViewControllerProvider_dayViewController_eventsForStartDate_endDate___block_invoke;
  v39[3] = &unk_278290E18;
  v39[4] = self;
  v34 = v7;
  v40 = v34;
  v11 = v8;
  v41 = v11;
  v12 = v9;
  v42 = v12;
  [v10 requestFullAccessToEventsWithCompletion:v39];

  dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v13 = [MEMORY[0x277CBEB18] array];
  v14 = [MEMORY[0x277CBEB18] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v15 = [(DDRemoteTimeLineViewControllerProvider *)self events];
  v16 = [v15 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v36;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v35 + 1) + 8 * i);
        if ([v20 isAllDay])
        {
          v21 = v13;
        }

        else
        {
          v21 = v14;
        }

        [v21 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v17);
  }

  v22 = [(DDRemoteTimeLineViewControllerProvider *)self event];
  v24 = v22;
  if (v22)
  {
    if ([v22 isAllDay])
    {
      v25 = v13;
    }

    else
    {
      v25 = v14;
    }

    [v25 addObject:v24];
    v26 = [(DDRemoteTimeLineViewControllerProvider *)self events];
    v27 = [v26 arrayByAddingObject:v24];
    [(DDRemoteTimeLineViewControllerProvider *)self setEvents:v27];
  }

  gotLoadHelper_x8__OBJC_CLASS___CUIKOccurrencesCollection(v23);
  v29 = objc_alloc(*(v28 + 3248));
  v30 = [(DDRemoteTimeLineViewControllerProvider *)self events];
  v31 = [v29 initWithOccurrences:v30 timedOccurrences:v14 allDayOccurrences:v13];

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

void __87__DDRemoteTimeLineViewControllerProvider_dayViewController_eventsForStartDate_endDate___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__DDRemoteTimeLineViewControllerProvider_dayViewController_eventsForStartDate_endDate___block_invoke_2;
    block[3] = &unk_278290DF0;
    v9 = *(a1 + 32);
    v4 = *(&v9 + 1);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    *&v7 = v5;
    *(&v7 + 1) = v6;
    v11 = v9;
    v12 = v7;
    dispatch_async(v3, block);
  }

  else
  {
    v8 = *(a1 + 56);

    dispatch_group_leave(v8);
  }
}

void __87__DDRemoteTimeLineViewControllerProvider_dayViewController_eventsForStartDate_endDate___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  v3 = [v2 calendarsForEntityType:0];

  v4 = [v3 indexesOfObjectsPassingTest:&__block_literal_global_1];
  v9 = [v3 objectsAtIndexes:v4];

  v5 = [*(a1 + 32) store];
  v6 = [v5 predicateForEventsWithStartDate:*(a1 + 40) endDate:*(a1 + 48) calendars:v9];

  v7 = [*(a1 + 32) store];
  v8 = [v7 eventsMatchingPredicate:v6];
  [*(a1 + 32) setEvents:v8];

  dispatch_group_leave(*(a1 + 56));
}

- (void)dayViewControllerDidReloadData:(id)a3
{
  v4 = a3;
  v5 = [(DDRemoteTimeLineViewControllerProvider *)self event];
  [v4 scrollEventIntoView:v5 animated:0];
}

- (void)createViewControllerWithCompletionHandler:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"DDRemoteTimeLineViewControllerProvider.m" lineNumber:112 description:{@"couldn't get calendar app properties LS db %@", a3}];
}

@end