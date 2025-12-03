@interface SUUIReportAConcernDetailsDataSource
- (SUUIReportAConcernDetailsDataSource)init;
- (SUUIReportAConcernDetailsDataSource)initWithTableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
@end

@implementation SUUIReportAConcernDetailsDataSource

- (SUUIReportAConcernDetailsDataSource)init
{
  v3 = objc_alloc_init(MEMORY[0x277D75B40]);
  v4 = [(SUUIReportAConcernDetailsDataSource *)self initWithTableView:v3];

  return v4;
}

- (SUUIReportAConcernDetailsDataSource)initWithTableView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = SUUIReportAConcernDetailsDataSource;
  v6 = [(SUUIReportAConcernDetailsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tableView, view);
    [viewCopy registerClass:objc_opt_class() forCellReuseIdentifier:@"SUUIConcernDetailsCell"];
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:{@"SUUIConcernDetailsCell", path}];
  placeholder = [(SUUIReportAConcernDetailsDataSource *)self placeholder];
  [v5 setPlaceholderText:placeholder];

  return v5;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(SUUIReportAConcernDetailsDataSource *)self selectedReason:view];
  uppercaseString = [v4 uppercaseString];

  return uppercaseString;
}

@end