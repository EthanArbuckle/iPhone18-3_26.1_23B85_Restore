@interface HUPrototypeLayoutOptionsEditorViewController
- (HUPrototypeLayoutOptionsEditorViewControllerDelegate)delegate;
- (id)_viewSizeSubclassDescription;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)_done:(id)_done;
- (void)sliderValueTableViewCell:(id)cell didChangeValue:(double)value;
- (void)viewDidLoad;
@end

@implementation HUPrototypeLayoutOptionsEditorViewController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = HUPrototypeLayoutOptionsEditorViewController;
  [(HUPrototypeLayoutOptionsEditorViewController *)&v9 viewDidLoad];
  [(HUPrototypeLayoutOptionsEditorViewController *)self setLayoutOptionsKeys:&unk_282492918];
  tableView = [(HUPrototypeLayoutOptionsEditorViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [tableView registerClass:v4 forCellReuseIdentifier:v6];

  v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
  navigationItem = [(HUPrototypeLayoutOptionsEditorViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v7];
}

- (void)_done:(id)_done
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    _viewSizeSubclassDescription = [(HUPrototypeLayoutOptionsEditorViewController *)self _viewSizeSubclassDescription];
    *buf = 138412290;
    v23 = _viewSizeSubclassDescription;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "----------- Start options for: %@ -----------", buf, 0xCu);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  layoutOptionsKeys = [(HUPrototypeLayoutOptionsEditorViewController *)self layoutOptionsKeys];
  v7 = [layoutOptionsKeys countByEnumeratingWithState:&v18 objects:v26 count:16];
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
          objc_enumerationMutation(layoutOptionsKeys);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = HFLogForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          layoutOptions = [(HUPrototypeLayoutOptionsEditorViewController *)self layoutOptions];
          v14 = [layoutOptions valueForKeyPath:v11];
          *buf = 138412546;
          v23 = v11;
          v24 = 2112;
          v25 = v14;
          _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@ = %@", buf, 0x16u);
        }
      }

      v8 = [layoutOptionsKeys countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v8);
  }

  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    _viewSizeSubclassDescription2 = [(HUPrototypeLayoutOptionsEditorViewController *)self _viewSizeSubclassDescription];
    *buf = 138412290;
    v23 = _viewSizeSubclassDescription2;
    _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "----------- End options for: %@ -----------", buf, 0xCu);
  }

  delegate = [(HUPrototypeLayoutOptionsEditorViewController *)self delegate];
  [delegate layoutOptionsEditorDidFinish:self];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  layoutOptionsKeys = [(HUPrototypeLayoutOptionsEditorViewController *)self layoutOptionsKeys];
  v4 = [layoutOptionsKeys count];

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  layoutOptionsKeys = [(HUPrototypeLayoutOptionsEditorViewController *)self layoutOptionsKeys];
  section = [pathCopy section];

  v13 = [layoutOptionsKeys objectAtIndexedSubscript:section];

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
  layoutOptions = [(HUPrototypeLayoutOptionsEditorViewController *)self layoutOptions];
  v18 = [layoutOptions valueForKeyPath:v13];

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

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  layoutOptionsKeys = [(HUPrototypeLayoutOptionsEditorViewController *)self layoutOptionsKeys];
  v6 = [layoutOptionsKeys objectAtIndexedSubscript:section];

  return v6;
}

- (id)_viewSizeSubclassDescription
{
  layoutOptions = [(HUPrototypeLayoutOptionsEditorViewController *)self layoutOptions];
  viewSizeSubclass = [layoutOptions viewSizeSubclass];

  if (viewSizeSubclass > 0xA)
  {
    return @"unknown";
  }

  else
  {
    return off_277DBA098[viewSizeSubclass];
  }
}

- (void)sliderValueTableViewCell:(id)cell didChangeValue:(double)value
{
  cellCopy = cell;
  tableView = [(HUPrototypeLayoutOptionsEditorViewController *)self tableView];
  v19 = [tableView indexPathForCell:cellCopy];

  layoutOptionsKeys = [(HUPrototypeLayoutOptionsEditorViewController *)self layoutOptionsKeys];
  v9 = [layoutOptionsKeys objectAtIndexedSubscript:{objc_msgSend(v19, "section")}];

  layoutOptions = [(HUPrototypeLayoutOptionsEditorViewController *)self layoutOptions];
  v11 = [layoutOptions valueForKeyPath:v9];

  v12 = v11;
  if ([v9 isEqualToString:@"overrideNumberOfColumns"])
  {
    if (floor(value) == 0.0)
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

      v14 = [v12 fontWithSize:value];
      goto LABEL_7;
    }

    v13 = MEMORY[0x277CCABB0];
  }

  v14 = [v13 numberWithDouble:value];
LABEL_7:
  v15 = v14;
LABEL_11:

LABEL_12:
  layoutOptions2 = [(HUPrototypeLayoutOptionsEditorViewController *)self layoutOptions];
  [layoutOptions2 setValue:v15 forKeyPath:v9];

  delegate = [(HUPrototypeLayoutOptionsEditorViewController *)self delegate];
  layoutOptions3 = [(HUPrototypeLayoutOptionsEditorViewController *)self layoutOptions];
  [delegate layoutOptionsEditor:self didUpdateLayoutOptions:layoutOptions3];
}

- (HUPrototypeLayoutOptionsEditorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end