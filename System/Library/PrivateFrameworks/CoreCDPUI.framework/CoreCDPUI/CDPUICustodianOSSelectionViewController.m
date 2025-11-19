@interface CDPUICustodianOSSelectionViewController
- (CDPUICustodianOSSelectionViewController)initWithViewModel:(id)a3 cdpContext:(id)a4;
- (double)heightForFooterInTableView:(id)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_makeEventForEscapeOptionSelected:(id)a3;
- (id)_makeViewAppearedEvent;
- (id)_offersJoinedByComma;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)viewForFooterInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation CDPUICustodianOSSelectionViewController

- (CDPUICustodianOSSelectionViewController)initWithViewModel:(id)a3 cdpContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 title];
  v10 = [v7 message];
  v14.receiver = self;
  v14.super_class = CDPUICustodianOSSelectionViewController;
  v11 = [(CDPTableViewController *)&v14 initWithTitle:v9 subTitle:v10];

  if (v11)
  {
    objc_storeStrong(&v11->_viewModel, a3);
    objc_storeStrong(&v11->_cdpContext, a4);
    v12 = [(CDPUICustodianOSSelectionViewModel *)v11->_viewModel icon];
    [(CDPTableViewController *)v11 setIcon:v12];

    [(CDPTableViewController *)v11 setTableViewStyle:[(CDPUICustodianOSSelectionViewModel *)v11->_viewModel tableViewStyle]];
  }

  return v11;
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CDPUICustodianOSSelectionViewController;
  [(CDPUICustodianOSSelectionViewController *)&v6 viewDidAppear:a3];
  v4 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  v5 = [(CDPUICustodianOSSelectionViewController *)self _makeViewAppearedEvent];
  [v4 sendEvent:v5];
}

- (id)_makeViewAppearedEvent
{
  v3 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD7E8] category:*MEMORY[0x277CFD930]];
  v4 = [(CDPUICustodianOSSelectionViewController *)self _offersJoinedByComma];
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x277CFD6C8]];
  }

  return v3;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(CDPUICustodianOSSelectionViewModel *)self->_viewModel tableViewStyle:a3]== 2;
  v6 = [(CDPUICustodianOSSelectionViewModel *)self->_viewModel options];
  v7 = [v6 count] - v5;

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CDPTableViewController *)self tableView];
  v7 = [v6 dequeueReusableCellWithIdentifier:@"CDPOSCell"];

  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"CDPOSCell"];
    [v7 setAccessoryType:1];
  }

  v8 = [v5 row];
  if ([(CDPUICustodianOSSelectionViewModel *)self->_viewModel tableViewStyle]== 2)
  {
    ++v8;
  }

  v9 = [(CDPUICustodianOSSelectionViewModel *)self->_viewModel options];
  v10 = [v9 objectAtIndexedSubscript:v8];

  v11 = [v10 title];
  v12 = [v7 textLabel];
  [v12 setText:v11];

  v13 = MEMORY[0x277D74300];
  v14 = [v7 textLabel];
  v15 = [v14 font];
  [v15 pointSize];
  v16 = [v13 systemFontOfSize:?];
  v17 = [v7 textLabel];
  [v17 setFont:v16];

  if ([(CDPUICustodianOSSelectionViewModel *)self->_viewModel tableViewStyle]== 2)
  {
    [MEMORY[0x277D75348] systemGray6Color];
  }

  else
  {
    [MEMORY[0x277D75348] systemBackgroundColor];
  }
  v18 = ;
  [v7 setBackgroundColor:v18];

  return v7;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if ([(CDPUICustodianOSSelectionViewModel *)self->_viewModel tableViewStyle:a3]== 2)
  {
    v5 = [(CDPUICustodianOSSelectionViewModel *)self->_viewModel options];
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 title];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = [a4 row];
  if ([(CDPUICustodianOSSelectionViewModel *)self->_viewModel tableViewStyle]== 2)
  {
    ++v5;
  }

  v6 = [(CDPUICustodianOSSelectionViewModel *)self->_viewModel options];
  v11 = [v6 objectAtIndexedSubscript:v5];

  v7 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  v8 = [(CDPUICustodianOSSelectionViewController *)self _makeEventForEscapeOptionSelected:v11];
  [v7 sendEvent:v8];

  v9 = [v11 escapeAction];

  if (v9)
  {
    v10 = [v11 escapeAction];
    v10[2]();
  }
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  if ([a3 style] == 2)
  {
    v5 = 44.0;
  }

  else
  {
    v5 = 60.0;
  }

  v6 = [(CDPUICustodianOSSelectionViewController *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v7))
  {
    v5 = *MEMORY[0x277D76F30];
  }

  return v5;
}

- (double)heightForFooterInTableView:(id)a3
{
  v3 = [MEMORY[0x277CFD560] isNaturalUIEnabled];
  result = 90.0;
  if (v3)
  {
    return 110.0;
  }

  return result;
}

- (id)viewForFooterInTableView:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v4 setAxis:1];
  [v4 setAlignment:3];
  [v4 setDistribution:3];
  if ([MEMORY[0x277CFD560] isNaturalUIEnabled])
  {
    [v4 setLayoutMargins:{0.0, 20.0, 0.0, 20.0}];
    [v4 setLayoutMarginsRelativeArrangement:1];
    [v4 setAlignment:0];
    [v4 setDistribution:1];
    [v4 setSpacing:10.0];
    v5 = [(CDPUICustodianOSSelectionViewModel *)self->_viewModel escapeOffers];
    v6 = [v5 firstObject];

    if (v6)
    {
      v7 = [MEMORY[0x277D37618] boldButton];
      v8 = [v6 escapeOfferName];
      [v7 setTitle:v8 forState:0];

      [v7 addTarget:v6 action:sel_handleEscapeAction_ forControlEvents:0x2000];
      [v4 addArrangedSubview:v7];
    }

    else
    {
      v7 = 0;
    }

    v19 = [(CDPUICustodianOSSelectionViewModel *)self->_viewModel escapeOffers];
    v20 = [v19 count];

    if (v20 >= 2)
    {
      v21 = [(CDPUICustodianOSSelectionViewModel *)self->_viewModel escapeOffers];
      v22 = [v21 objectAtIndexedSubscript:1];

      v23 = [MEMORY[0x277D37650] linkButton];

      v24 = [v22 escapeOfferName];
      [v23 setTitle:v24 forState:0];

      [v23 addTarget:v22 action:sel_handleEscapeAction_ forControlEvents:64];
      [v4 addArrangedSubview:v23];
      v7 = v23;
      v6 = v22;
    }
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [(CDPUICustodianOSSelectionViewModel *)self->_viewModel escapeOffers];
    v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          v14 = [MEMORY[0x277D75220] buttonWithType:1];
          v15 = [v13 escapeOfferName];
          [v14 setTitle:v15 forState:0];

          v16 = [v14 titleLabel];
          v17 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
          [v16 setFont:v17];

          v18 = [v14 titleLabel];
          [v18 setTextAlignment:1];

          [v14 addTarget:v13 action:sel_handleEscapeAction_ forControlEvents:64];
          [v14 sizeToFit];
          [v4 addArrangedSubview:v14];
        }

        v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v10);
    }
  }

  return v4;
}

- (id)_offersJoinedByComma
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(CDPUICustodianOSSelectionViewController *)self navigationItem];
  v5 = [v4 backBarButtonItem];

  if (v5)
  {
    v6 = MEMORY[0x277CFD950];
  }

  else
  {
    v7 = [(CDPUICustodianOSSelectionViewController *)self navigationItem];
    v8 = [v7 leftBarButtonItem];

    if (!v8)
    {
      goto LABEL_6;
    }

    v6 = MEMORY[0x277CFD958];
  }

  [v3 addObject:*v6];
LABEL_6:
  v9 = [(CDPUICustodianOSSelectionViewModel *)self->_viewModel options];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __63__CDPUICustodianOSSelectionViewController__offersJoinedByComma__block_invoke;
  v20[3] = &unk_278E2BF08;
  v10 = v3;
  v21 = v10;
  [v9 enumerateObjectsUsingBlock:v20];

  v11 = [(CDPUICustodianOSSelectionViewModel *)self->_viewModel escapeOffers];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __63__CDPUICustodianOSSelectionViewController__offersJoinedByComma__block_invoke_2;
  v18 = &unk_278E2B7D0;
  v12 = v10;
  v19 = v12;
  [v11 enumerateObjectsUsingBlock:&v15];

  if ([v12 count])
  {
    v13 = [v12 aaf_arrayAsCommaSeperatedString];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __63__CDPUICustodianOSSelectionViewController__offersJoinedByComma__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 titleTelemetryKey];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 titleTelemetryKey];
    [v4 addObject:v5];
  }
}

void __63__CDPUICustodianOSSelectionViewController__offersJoinedByComma__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 titleTelemetryKey];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 titleTelemetryKey];
    [v4 addObject:v5];
  }
}

- (id)_makeEventForEscapeOptionSelected:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD6E0] category:*MEMORY[0x277CFD930]];
  v6 = [v4 titleTelemetryKey];

  if (v6)
  {
    v7 = [v4 titleTelemetryKey];
    [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277CFD6D8]];
  }

  return v5;
}

@end