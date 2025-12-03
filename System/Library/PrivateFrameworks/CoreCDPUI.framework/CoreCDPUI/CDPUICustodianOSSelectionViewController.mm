@interface CDPUICustodianOSSelectionViewController
- (CDPUICustodianOSSelectionViewController)initWithViewModel:(id)model cdpContext:(id)context;
- (double)heightForFooterInTableView:(id)view;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_makeEventForEscapeOptionSelected:(id)selected;
- (id)_makeViewAppearedEvent;
- (id)_offersJoinedByComma;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)viewForFooterInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation CDPUICustodianOSSelectionViewController

- (CDPUICustodianOSSelectionViewController)initWithViewModel:(id)model cdpContext:(id)context
{
  modelCopy = model;
  contextCopy = context;
  title = [modelCopy title];
  message = [modelCopy message];
  v14.receiver = self;
  v14.super_class = CDPUICustodianOSSelectionViewController;
  v11 = [(CDPTableViewController *)&v14 initWithTitle:title subTitle:message];

  if (v11)
  {
    objc_storeStrong(&v11->_viewModel, model);
    objc_storeStrong(&v11->_cdpContext, context);
    icon = [(CDPUICustodianOSSelectionViewModel *)v11->_viewModel icon];
    [(CDPTableViewController *)v11 setIcon:icon];

    [(CDPTableViewController *)v11 setTableViewStyle:[(CDPUICustodianOSSelectionViewModel *)v11->_viewModel tableViewStyle]];
  }

  return v11;
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CDPUICustodianOSSelectionViewController;
  [(CDPUICustodianOSSelectionViewController *)&v6 viewDidAppear:appear];
  rtcAnalyticsReporter = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  _makeViewAppearedEvent = [(CDPUICustodianOSSelectionViewController *)self _makeViewAppearedEvent];
  [rtcAnalyticsReporter sendEvent:_makeViewAppearedEvent];
}

- (id)_makeViewAppearedEvent
{
  v3 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD7E8] category:*MEMORY[0x277CFD930]];
  _offersJoinedByComma = [(CDPUICustodianOSSelectionViewController *)self _offersJoinedByComma];
  if (_offersJoinedByComma)
  {
    [v3 setObject:_offersJoinedByComma forKeyedSubscript:*MEMORY[0x277CFD6C8]];
  }

  return v3;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(CDPUICustodianOSSelectionViewModel *)self->_viewModel tableViewStyle:view]== 2;
  options = [(CDPUICustodianOSSelectionViewModel *)self->_viewModel options];
  v7 = [options count] - v5;

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(CDPTableViewController *)self tableView];
  v7 = [tableView dequeueReusableCellWithIdentifier:@"CDPOSCell"];

  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"CDPOSCell"];
    [v7 setAccessoryType:1];
  }

  v8 = [pathCopy row];
  if ([(CDPUICustodianOSSelectionViewModel *)self->_viewModel tableViewStyle]== 2)
  {
    ++v8;
  }

  options = [(CDPUICustodianOSSelectionViewModel *)self->_viewModel options];
  v10 = [options objectAtIndexedSubscript:v8];

  title = [v10 title];
  textLabel = [v7 textLabel];
  [textLabel setText:title];

  v13 = MEMORY[0x277D74300];
  textLabel2 = [v7 textLabel];
  font = [textLabel2 font];
  [font pointSize];
  v16 = [v13 systemFontOfSize:?];
  textLabel3 = [v7 textLabel];
  [textLabel3 setFont:v16];

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

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if ([(CDPUICustodianOSSelectionViewModel *)self->_viewModel tableViewStyle:view]== 2)
  {
    options = [(CDPUICustodianOSSelectionViewModel *)self->_viewModel options];
    v6 = [options objectAtIndexedSubscript:0];
    title = [v6 title];
  }

  else
  {
    title = 0;
  }

  return title;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = [path row];
  if ([(CDPUICustodianOSSelectionViewModel *)self->_viewModel tableViewStyle]== 2)
  {
    ++v5;
  }

  options = [(CDPUICustodianOSSelectionViewModel *)self->_viewModel options];
  v11 = [options objectAtIndexedSubscript:v5];

  rtcAnalyticsReporter = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  v8 = [(CDPUICustodianOSSelectionViewController *)self _makeEventForEscapeOptionSelected:v11];
  [rtcAnalyticsReporter sendEvent:v8];

  escapeAction = [v11 escapeAction];

  if (escapeAction)
  {
    escapeAction2 = [v11 escapeAction];
    escapeAction2[2]();
  }
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  if ([view style] == 2)
  {
    v5 = 44.0;
  }

  else
  {
    v5 = 60.0;
  }

  traitCollection = [(CDPUICustodianOSSelectionViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v5 = *MEMORY[0x277D76F30];
  }

  return v5;
}

- (double)heightForFooterInTableView:(id)view
{
  isNaturalUIEnabled = [MEMORY[0x277CFD560] isNaturalUIEnabled];
  result = 90.0;
  if (isNaturalUIEnabled)
  {
    return 110.0;
  }

  return result;
}

- (id)viewForFooterInTableView:(id)view
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
    escapeOffers = [(CDPUICustodianOSSelectionViewModel *)self->_viewModel escapeOffers];
    firstObject = [escapeOffers firstObject];

    if (firstObject)
    {
      boldButton = [MEMORY[0x277D37618] boldButton];
      escapeOfferName = [firstObject escapeOfferName];
      [boldButton setTitle:escapeOfferName forState:0];

      [boldButton addTarget:firstObject action:sel_handleEscapeAction_ forControlEvents:0x2000];
      [v4 addArrangedSubview:boldButton];
    }

    else
    {
      boldButton = 0;
    }

    escapeOffers2 = [(CDPUICustodianOSSelectionViewModel *)self->_viewModel escapeOffers];
    v20 = [escapeOffers2 count];

    if (v20 >= 2)
    {
      escapeOffers3 = [(CDPUICustodianOSSelectionViewModel *)self->_viewModel escapeOffers];
      v22 = [escapeOffers3 objectAtIndexedSubscript:1];

      linkButton = [MEMORY[0x277D37650] linkButton];

      escapeOfferName2 = [v22 escapeOfferName];
      [linkButton setTitle:escapeOfferName2 forState:0];

      [linkButton addTarget:v22 action:sel_handleEscapeAction_ forControlEvents:64];
      [v4 addArrangedSubview:linkButton];
      boldButton = linkButton;
      firstObject = v22;
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
          escapeOfferName3 = [v13 escapeOfferName];
          [v14 setTitle:escapeOfferName3 forState:0];

          titleLabel = [v14 titleLabel];
          v17 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
          [titleLabel setFont:v17];

          titleLabel2 = [v14 titleLabel];
          [titleLabel2 setTextAlignment:1];

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
  array = [MEMORY[0x277CBEB18] array];
  navigationItem = [(CDPUICustodianOSSelectionViewController *)self navigationItem];
  backBarButtonItem = [navigationItem backBarButtonItem];

  if (backBarButtonItem)
  {
    v6 = MEMORY[0x277CFD950];
  }

  else
  {
    navigationItem2 = [(CDPUICustodianOSSelectionViewController *)self navigationItem];
    leftBarButtonItem = [navigationItem2 leftBarButtonItem];

    if (!leftBarButtonItem)
    {
      goto LABEL_6;
    }

    v6 = MEMORY[0x277CFD958];
  }

  [array addObject:*v6];
LABEL_6:
  options = [(CDPUICustodianOSSelectionViewModel *)self->_viewModel options];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __63__CDPUICustodianOSSelectionViewController__offersJoinedByComma__block_invoke;
  v20[3] = &unk_278E2BF08;
  v10 = array;
  v21 = v10;
  [options enumerateObjectsUsingBlock:v20];

  escapeOffers = [(CDPUICustodianOSSelectionViewModel *)self->_viewModel escapeOffers];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __63__CDPUICustodianOSSelectionViewController__offersJoinedByComma__block_invoke_2;
  v18 = &unk_278E2B7D0;
  v12 = v10;
  v19 = v12;
  [escapeOffers enumerateObjectsUsingBlock:&v15];

  if ([v12 count])
  {
    aaf_arrayAsCommaSeperatedString = [v12 aaf_arrayAsCommaSeperatedString];
  }

  else
  {
    aaf_arrayAsCommaSeperatedString = 0;
  }

  return aaf_arrayAsCommaSeperatedString;
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

- (id)_makeEventForEscapeOptionSelected:(id)selected
{
  selectedCopy = selected;
  v5 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD6E0] category:*MEMORY[0x277CFD930]];
  titleTelemetryKey = [selectedCopy titleTelemetryKey];

  if (titleTelemetryKey)
  {
    titleTelemetryKey2 = [selectedCopy titleTelemetryKey];
    [v5 setObject:titleTelemetryKey2 forKeyedSubscript:*MEMORY[0x277CFD6D8]];
  }

  return v5;
}

@end