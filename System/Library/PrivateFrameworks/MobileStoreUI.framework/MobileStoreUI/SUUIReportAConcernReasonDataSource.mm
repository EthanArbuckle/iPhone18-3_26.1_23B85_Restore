@interface SUUIReportAConcernReasonDataSource
- (SUUIReportAConcernReasonDataSource)init;
- (SUUIReportAConcernReasonDataSource)initWithTableView:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
@end

@implementation SUUIReportAConcernReasonDataSource

- (SUUIReportAConcernReasonDataSource)init
{
  v3 = objc_alloc_init(MEMORY[0x277D75B40]);
  v4 = [(SUUIReportAConcernReasonDataSource *)self initWithTableView:v3];

  return v4;
}

- (SUUIReportAConcernReasonDataSource)initWithTableView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUUIReportAConcernReasonDataSource;
  v6 = [(SUUIReportAConcernReasonDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tableView, a3);
    [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"SUUIConcernReasonCell"];
  }

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(SUUIReportAConcernReasonDataSource *)self reasons:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SUUIReportAConcernReasonDataSource *)self reasons];
  v9 = [v6 row];

  v10 = [v8 objectAtIndexedSubscript:v9];

  v11 = [v7 dequeueReusableCellWithIdentifier:@"SUUIConcernReasonCell"];

  v12 = [v10 name];
  v13 = [v11 textLabel];
  [v13 setText:v12];

  [v11 setAccessoryType:1];

  return v11;
}

@end