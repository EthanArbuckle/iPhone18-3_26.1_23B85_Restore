@interface DMCPayloadDetailsViewController
- (DMCPayloadDetailsViewController)initWithPayload:(id)a3;
- (DMCPayloadDetailsViewController)initWithPayloadViewModel:(id)a3;
- (id)_keyValueSectionForSection:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_setTitle:(id)a3 keyValueSections:(id)a4;
- (void)_setup;
@end

@implementation DMCPayloadDetailsViewController

- (DMCPayloadDetailsViewController)initWithPayload:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = DMCPayloadDetailsViewController;
  v6 = [(DMCProfileTableViewController *)&v11 initWithStyle:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_payload, a3);
    v8 = [v5 friendlyName];
    v9 = [v5 payloadDescriptionKeyValueSections];
    [(DMCPayloadDetailsViewController *)v7 _setTitle:v8 keyValueSections:v9];

    [(DMCPayloadDetailsViewController *)v7 _setup];
  }

  return v7;
}

- (DMCPayloadDetailsViewController)initWithPayloadViewModel:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = DMCPayloadDetailsViewController;
  v6 = [(DMCProfileTableViewController *)&v18 initWithStyle:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_payloadViewModel, a3);
    v8 = objc_opt_new();
    v9 = [(DMCPayloadViewModel *)v7->_payloadViewModel certificateProperties];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [DMCCertificateProperties alloc];
      v12 = [(DMCPayloadViewModel *)v7->_payloadViewModel certificateProperties];
      v13 = [(DMCCertificateProperties *)v11 initWithCertificateProperties:v12];

      v14 = [(DMCCertificateProperties *)v13 keyValueSections];
      [v8 addObjectsFromArray:v14];
    }

    v15 = [v5 payloadDescriptionKeyValueSections];
    [v8 addObjectsFromArray:v15];

    v16 = [v5 friendlyName];
    [(DMCPayloadDetailsViewController *)v7 _setTitle:v16 keyValueSections:v8];

    [(DMCPayloadDetailsViewController *)v7 _setup];
  }

  return v7;
}

- (void)_setup
{
  v5.receiver = self;
  v5.super_class = DMCPayloadDetailsViewController;
  [(DMCProfileTableViewController *)&v5 updateExtendedLayoutIncludesOpaqueBars];
  v3 = [(DMCPayloadDetailsViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PayloadDetailsCell"];

  v4.receiver = self;
  v4.super_class = DMCPayloadDetailsViewController;
  [(DMCProfileTableViewController *)&v4 reloadTableOnContentSizeCategoryChange];
}

- (void)_setTitle:(id)a3 keyValueSections:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(DMCPayloadDetailsViewController *)self navigationItem];
  [v7 setTitle:v6];

  [(DMCPayloadDetailsViewController *)self setKeyValueSections:v8];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(DMCPayloadDetailsViewController *)self keyValueSections];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(DMCPayloadDetailsViewController *)self _keyValueSectionForSection:a4];
  v5 = [v4 sectionKeyValues];

  if (v5)
  {
    v6 = [v5 count];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(DMCPayloadDetailsViewController *)self _keyValueSectionForSection:a4];
  v5 = [v4 sectionTitle];

  return v5;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v4 = [(DMCPayloadDetailsViewController *)self _keyValueSectionForSection:a4];
  v5 = [v4 sectionFooter];

  return v5;
}

- (id)_keyValueSectionForSection:(int64_t)a3
{
  v5 = [(DMCPayloadDetailsViewController *)self keyValueSections];
  if ([v5 count] <= a3)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(DMCPayloadDetailsViewController *)self keyValueSections];
    v7 = [v6 objectAtIndexedSubscript:a3];
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DMCPayloadDetailsViewController *)self keyValueSections];
  v9 = [v8 objectAtIndex:{objc_msgSend(v6, "section")}];

  v10 = [v9 sectionKeyValues];
  v11 = [v10 objectAtIndex:{objc_msgSend(v6, "row")}];

  v12 = [v7 dequeueReusableCellWithIdentifier:@"PayloadDetailsCell" forIndexPath:v6];

  v13 = [v11 key];
  v14 = [v11 value];
  [v12 setDetail:v13 value:v14];

  return v12;
}

@end