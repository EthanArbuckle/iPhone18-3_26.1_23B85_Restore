@interface DMCPayloadDetailsViewController
- (DMCPayloadDetailsViewController)initWithPayload:(id)payload;
- (DMCPayloadDetailsViewController)initWithPayloadViewModel:(id)model;
- (id)_keyValueSectionForSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_setTitle:(id)title keyValueSections:(id)sections;
- (void)_setup;
@end

@implementation DMCPayloadDetailsViewController

- (DMCPayloadDetailsViewController)initWithPayload:(id)payload
{
  payloadCopy = payload;
  v11.receiver = self;
  v11.super_class = DMCPayloadDetailsViewController;
  v6 = [(DMCProfileTableViewController *)&v11 initWithStyle:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_payload, payload);
    friendlyName = [payloadCopy friendlyName];
    payloadDescriptionKeyValueSections = [payloadCopy payloadDescriptionKeyValueSections];
    [(DMCPayloadDetailsViewController *)v7 _setTitle:friendlyName keyValueSections:payloadDescriptionKeyValueSections];

    [(DMCPayloadDetailsViewController *)v7 _setup];
  }

  return v7;
}

- (DMCPayloadDetailsViewController)initWithPayloadViewModel:(id)model
{
  modelCopy = model;
  v18.receiver = self;
  v18.super_class = DMCPayloadDetailsViewController;
  v6 = [(DMCProfileTableViewController *)&v18 initWithStyle:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_payloadViewModel, model);
    v8 = objc_opt_new();
    certificateProperties = [(DMCPayloadViewModel *)v7->_payloadViewModel certificateProperties];
    v10 = [certificateProperties count];

    if (v10)
    {
      v11 = [DMCCertificateProperties alloc];
      certificateProperties2 = [(DMCPayloadViewModel *)v7->_payloadViewModel certificateProperties];
      v13 = [(DMCCertificateProperties *)v11 initWithCertificateProperties:certificateProperties2];

      keyValueSections = [(DMCCertificateProperties *)v13 keyValueSections];
      [v8 addObjectsFromArray:keyValueSections];
    }

    payloadDescriptionKeyValueSections = [modelCopy payloadDescriptionKeyValueSections];
    [v8 addObjectsFromArray:payloadDescriptionKeyValueSections];

    friendlyName = [modelCopy friendlyName];
    [(DMCPayloadDetailsViewController *)v7 _setTitle:friendlyName keyValueSections:v8];

    [(DMCPayloadDetailsViewController *)v7 _setup];
  }

  return v7;
}

- (void)_setup
{
  v5.receiver = self;
  v5.super_class = DMCPayloadDetailsViewController;
  [(DMCProfileTableViewController *)&v5 updateExtendedLayoutIncludesOpaqueBars];
  tableView = [(DMCPayloadDetailsViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PayloadDetailsCell"];

  v4.receiver = self;
  v4.super_class = DMCPayloadDetailsViewController;
  [(DMCProfileTableViewController *)&v4 reloadTableOnContentSizeCategoryChange];
}

- (void)_setTitle:(id)title keyValueSections:(id)sections
{
  sectionsCopy = sections;
  titleCopy = title;
  navigationItem = [(DMCPayloadDetailsViewController *)self navigationItem];
  [navigationItem setTitle:titleCopy];

  [(DMCPayloadDetailsViewController *)self setKeyValueSections:sectionsCopy];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  keyValueSections = [(DMCPayloadDetailsViewController *)self keyValueSections];
  v4 = [keyValueSections count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(DMCPayloadDetailsViewController *)self _keyValueSectionForSection:section];
  sectionKeyValues = [v4 sectionKeyValues];

  if (sectionKeyValues)
  {
    v6 = [sectionKeyValues count];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(DMCPayloadDetailsViewController *)self _keyValueSectionForSection:section];
  sectionTitle = [v4 sectionTitle];

  return sectionTitle;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v4 = [(DMCPayloadDetailsViewController *)self _keyValueSectionForSection:section];
  sectionFooter = [v4 sectionFooter];

  return sectionFooter;
}

- (id)_keyValueSectionForSection:(int64_t)section
{
  keyValueSections = [(DMCPayloadDetailsViewController *)self keyValueSections];
  if ([keyValueSections count] <= section)
  {
    v7 = 0;
  }

  else
  {
    keyValueSections2 = [(DMCPayloadDetailsViewController *)self keyValueSections];
    v7 = [keyValueSections2 objectAtIndexedSubscript:section];
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  keyValueSections = [(DMCPayloadDetailsViewController *)self keyValueSections];
  v9 = [keyValueSections objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  sectionKeyValues = [v9 sectionKeyValues];
  v11 = [sectionKeyValues objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  v12 = [viewCopy dequeueReusableCellWithIdentifier:@"PayloadDetailsCell" forIndexPath:pathCopy];

  v13 = [v11 key];
  value = [v11 value];
  [v12 setDetail:v13 value:value];

  return v12;
}

@end