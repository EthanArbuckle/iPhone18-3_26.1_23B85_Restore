@interface SUUIReportAConcernReasonDataSource
- (SUUIReportAConcernReasonDataSource)init;
- (SUUIReportAConcernReasonDataSource)initWithTableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
@end

@implementation SUUIReportAConcernReasonDataSource

- (SUUIReportAConcernReasonDataSource)init
{
  v3 = objc_alloc_init(MEMORY[0x277D75B40]);
  v4 = [(SUUIReportAConcernReasonDataSource *)self initWithTableView:v3];

  return v4;
}

- (SUUIReportAConcernReasonDataSource)initWithTableView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = SUUIReportAConcernReasonDataSource;
  v6 = [(SUUIReportAConcernReasonDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tableView, view);
    [viewCopy registerClass:objc_opt_class() forCellReuseIdentifier:@"SUUIConcernReasonCell"];
  }

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(SUUIReportAConcernReasonDataSource *)self reasons:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  reasons = [(SUUIReportAConcernReasonDataSource *)self reasons];
  v9 = [pathCopy row];

  v10 = [reasons objectAtIndexedSubscript:v9];

  v11 = [viewCopy dequeueReusableCellWithIdentifier:@"SUUIConcernReasonCell"];

  name = [v10 name];
  textLabel = [v11 textLabel];
  [textLabel setText:name];

  [v11 setAccessoryType:1];

  return v11;
}

@end