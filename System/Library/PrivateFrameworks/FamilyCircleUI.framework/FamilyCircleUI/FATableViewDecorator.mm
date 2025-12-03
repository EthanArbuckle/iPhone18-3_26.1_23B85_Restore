@interface FATableViewDecorator
- (BOOL)respondsToSelector:(SEL)selector;
- (FATableViewDecorator)initWithTableView:(id)view;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
@end

@implementation FATableViewDecorator

- (FATableViewDecorator)initWithTableView:(id)view
{
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = FATableViewDecorator;
  v6 = [(FATableViewDecorator *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tableView, view);
    dataSource = [viewCopy dataSource];
    strongDataSource = v7->_strongDataSource;
    v7->_strongDataSource = dataSource;

    delegate = [viewCopy delegate];
    strongDelegate = v7->_strongDelegate;
    v7->_strongDelegate = delegate;

    [(FATableViewProtocol *)v7->_tableView setDelegate:v7];
    [(FATableViewProtocol *)v7->_tableView setDataSource:v7];
  }

  return v7;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  dataSource = [(FATableViewDecorator *)self dataSource];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    dataSource2 = [(FATableViewDecorator *)self dataSource];
  }

  else
  {
    delegate = [(FATableViewDecorator *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      dataSource2 = [(FATableViewDecorator *)self delegate];
    }

    else
    {
      dataSource2 = 0;
    }
  }

  return dataSource2;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v9.receiver = self;
  v9.super_class = FATableViewDecorator;
  if ([(FATableViewDecorator *)&v9 respondsToSelector:?]|| ([(FATableViewDecorator *)self dataSource], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = 1;
  }

  else
  {
    delegate = [(FATableViewDecorator *)self delegate];
    v6 = objc_opt_respondsToSelector();
  }

  return v6 & 1;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  dataSource = [(FATableViewDecorator *)self dataSource];
  v8 = [dataSource tableView:viewCopy numberOfRowsInSection:section];

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  dataSource = [(FATableViewDecorator *)self dataSource];
  v9 = [dataSource tableView:viewCopy cellForRowAtIndexPath:pathCopy];

  return v9;
}

@end