@interface FATableViewDecorator
- (BOOL)respondsToSelector:(SEL)a3;
- (FATableViewDecorator)initWithTableView:(id)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
@end

@implementation FATableViewDecorator

- (FATableViewDecorator)initWithTableView:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = FATableViewDecorator;
  v6 = [(FATableViewDecorator *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tableView, a3);
    v8 = [v5 dataSource];
    strongDataSource = v7->_strongDataSource;
    v7->_strongDataSource = v8;

    v10 = [v5 delegate];
    strongDelegate = v7->_strongDelegate;
    v7->_strongDelegate = v10;

    [(FATableViewProtocol *)v7->_tableView setDelegate:v7];
    [(FATableViewProtocol *)v7->_tableView setDataSource:v7];
  }

  return v7;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  v4 = [(FATableViewDecorator *)self dataSource];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(FATableViewDecorator *)self dataSource];
  }

  else
  {
    v7 = [(FATableViewDecorator *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v6 = [(FATableViewDecorator *)self delegate];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v9.receiver = self;
  v9.super_class = FATableViewDecorator;
  if ([(FATableViewDecorator *)&v9 respondsToSelector:?]|| ([(FATableViewDecorator *)self dataSource], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = 1;
  }

  else
  {
    v7 = [(FATableViewDecorator *)self delegate];
    v6 = objc_opt_respondsToSelector();
  }

  return v6 & 1;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(FATableViewDecorator *)self dataSource];
  v8 = [v7 tableView:v6 numberOfRowsInSection:a4];

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FATableViewDecorator *)self dataSource];
  v9 = [v8 tableView:v7 cellForRowAtIndexPath:v6];

  return v9;
}

@end