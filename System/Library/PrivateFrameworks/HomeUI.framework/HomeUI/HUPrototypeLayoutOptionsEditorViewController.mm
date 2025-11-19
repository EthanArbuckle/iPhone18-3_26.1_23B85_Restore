@interface HUPrototypeLayoutOptionsEditorViewController
- (HUPrototypeLayoutOptionsEditorViewControllerDelegate)delegate;
- (id)_viewSizeSubclassDescription;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)_done:(id)a3;
- (void)sliderValueTableViewCell:(id)a3 didChangeValue:(double)a4;
- (void)viewDidLoad;
@end

@implementation HUPrototypeLayoutOptionsEditorViewController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = HUPrototypeLayoutOptionsEditorViewController;
  [(HUPrototypeLayoutOptionsEditorViewController *)&v9 viewDidLoad];
  [(HUPrototypeLayoutOptionsEditorViewController *)self setLayoutOptionsKeys:&unk_282492918];
  v3 = [(HUPrototypeLayoutOptionsEditorViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 registerClass:v4 forCellReuseIdentifier:v6];

  v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
  v8 = [(HUPrototypeLayoutOptionsEditorViewController *)self navigationItem];
  [v8 setRightBarButtonItem:v7];
}

- (void)_done:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(HUPrototypeLayoutOptionsEditorViewController *)self _viewSizeSubclassDescription];
    *buf = 138412290;
    v23 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "----------- Start options for: %@ -----------", buf, 0xCu);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(HUPrototypeLayoutOptionsEditorViewController *)self layoutOptionsKeys];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = HFLogForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [(HUPrototypeLayoutOptionsEditorViewController *)self layoutOptions];
          v14 = [v13 valueForKeyPath:v11];
          *buf = 138412546;
          v23 = v11;
          v24 = 2112;
          v25 = v14;
          _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@ = %@", buf, 0x16u);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v8);
  }

  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(HUPrototypeLayoutOptionsEditorViewController *)self _viewSizeSubclassDescription];
    *buf = 138412290;
    v23 = v16;
    _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "----------- End options for: %@ -----------", buf, 0xCu);
  }

  v17 = [(HUPrototypeLayoutOptionsEditorViewController *)self delegate];
  [v17 layoutOptionsEditorDidFinish:self];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(HUPrototypeLayoutOptionsEditorViewController *)self layoutOptionsKeys];
  v4 = [v3 count];

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

  v11 = [(HUPrototypeLayoutOptionsEditorViewController *)self layoutOptionsKeys];
  v12 = [v6 section];

  v13 = [v11 objectAtIndexedSubscript:v12];

  [v10 setDelegate:self];
  [v10 setMinimumValue:0.0];
  v14 = [&unk_282492930 containsObject:v13];
  v15 = 1.0;
  if ((v14 & 1) == 0)
  {
    v16 = [v13 isEqualToString:{@"overrideNumberOfColumns", 1.0}];
    v15 = 100.0;
    if (v16)
    {
      v15 = 12.0;
    }
  }

  [v10 setMaximumValue:v15];
  v17 = [(HUPrototypeLayoutOptionsEditorViewController *)self layoutOptions];
  v18 = [v17 valueForKeyPath:v13];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v18 floatValue];
    v20 = v19;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v20 = 0.0;
    if (isKindOfClass)
    {
      [v18 pointSize];
    }
  }

  [v10 setValue:v20];

  return v10;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(HUPrototypeLayoutOptionsEditorViewController *)self layoutOptionsKeys];
  v6 = [v5 objectAtIndexedSubscript:a4];

  return v6;
}

- (id)_viewSizeSubclassDescription
{
  v2 = [(HUPrototypeLayoutOptionsEditorViewController *)self layoutOptions];
  v3 = [v2 viewSizeSubclass];

  if (v3 > 0xA)
  {
    return @"unknown";
  }

  else
  {
    return off_277DBA098[v3];
  }
}

- (void)sliderValueTableViewCell:(id)a3 didChangeValue:(double)a4
{
  v6 = a3;
  v7 = [(HUPrototypeLayoutOptionsEditorViewController *)self tableView];
  v19 = [v7 indexPathForCell:v6];

  v8 = [(HUPrototypeLayoutOptionsEditorViewController *)self layoutOptionsKeys];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v19, "section")}];

  v10 = [(HUPrototypeLayoutOptionsEditorViewController *)self layoutOptions];
  v11 = [v10 valueForKeyPath:v9];

  v12 = v11;
  if ([v9 isEqualToString:@"overrideNumberOfColumns"])
  {
    if (floor(a4) == 0.0)
    {
      v15 = 0;
      goto LABEL_11;
    }

    v13 = MEMORY[0x277CCABB0];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      v15 = v12;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_12;
      }

      v14 = [v12 fontWithSize:a4];
      goto LABEL_7;
    }

    v13 = MEMORY[0x277CCABB0];
  }

  v14 = [v13 numberWithDouble:a4];
LABEL_7:
  v15 = v14;
LABEL_11:

LABEL_12:
  v16 = [(HUPrototypeLayoutOptionsEditorViewController *)self layoutOptions];
  [v16 setValue:v15 forKeyPath:v9];

  v17 = [(HUPrototypeLayoutOptionsEditorViewController *)self delegate];
  v18 = [(HUPrototypeLayoutOptionsEditorViewController *)self layoutOptions];
  [v17 layoutOptionsEditor:self didUpdateLayoutOptions:v18];
}

- (HUPrototypeLayoutOptionsEditorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end