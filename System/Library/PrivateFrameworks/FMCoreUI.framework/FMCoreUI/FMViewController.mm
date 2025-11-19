@interface FMViewController
- (FMViewController)init;
- (FMViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (NSString)controllerNibName;
- (id)actualNibNameForName:(id)a3;
- (void)addKVOObservationToken:(id)a3 forObject:(id)a4;
- (void)addNotificationToken:(id)a3;
- (void)awakeFromNib;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)didReceiveMemoryWarning;
- (void)performSegueWithIdentifier:(id)a3 sender:(id)a4;
- (void)removeKVOObservationTokens;
- (void)removeNotificationTokens;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation FMViewController

- (FMViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = FMViewController;
  return [(FMViewController *)&v5 initWithNibName:a3 bundle:a4];
}

- (FMViewController)init
{
  v3 = [(FMViewController *)self controllerNibName];
  v4 = [(FMViewController *)self actualNibNameForName:v3];

  if (v4)
  {
    v5 = [(FMViewController *)self initWithNibName:v4 bundle:0];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = FMViewController;
    v5 = [(FMViewController *)&v8 init];
  }

  v6 = v5;

  return v6;
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(FMViewController *)self allKVOObservers];
  if ([v3 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          v10 = LogCategory_Unspecified();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v17 = v9;
            _os_log_error_impl(&dword_24A315000, v10, OS_LOG_TYPE_ERROR, "Leaked KVO Observer: %@", buf, 0xCu);
          }

          [(FMViewController *)self removeKVOBlockForToken:v9];
          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
      }

      while (v6);
    }
  }

  v11.receiver = self;
  v11.super_class = FMViewController;
  [(FMViewController *)&v11 dealloc];
}

- (void)addKVOObservationToken:(id)a3 forObject:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(FMViewController *)self kvoObservationTokens];

    if (!v9)
    {
      v10 = [MEMORY[0x277CBEB38] dictionary];
      [(FMViewController *)self setKvoObservationTokens:v10];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = [(FMViewController *)self kvoObservationTokens];
    v12 = [v11 allKeys];

    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
LABEL_7:
      v16 = 0;
      while (1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * v16);
        v18 = [v17 object];

        if (v18 == v8)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v14)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }

      v20 = v17;

      if (v20)
      {
        goto LABEL_18;
      }
    }

    else
    {
LABEL_13:
    }

    v20 = [objc_alloc(MEMORY[0x277D07B50]) initWithObject:v8];
LABEL_18:
    v21 = [(FMViewController *)self kvoObservationTokens];
    v19 = [v21 objectForKeyedSubscript:v20];

    if (!v19)
    {
      v19 = [MEMORY[0x277CBEB58] set];
      v22 = [(FMViewController *)self kvoObservationTokens];
      [v22 setObject:v19 forKeyedSubscript:v20];
    }

    [v19 addObject:v6];
  }

  else
  {
    v19 = LogCategory_Unspecified();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [FMObservingCell addKVOObservationToken:v19 forObject:?];
    }
  }
}

- (void)removeKVOObservationTokens
{
  v32 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(FMViewController *)self kvoObservationTokens];
  v3 = [obj countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v25;
    *&v4 = 138412290;
    v18 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = [(FMViewController *)self kvoObservationTokens];
        v10 = [v9 objectForKeyedSubscript:v8];

        v11 = [v8 object];
        if (v11)
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v12 = v10;
          v13 = [v12 countByEnumeratingWithState:&v20 objects:v30 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v21;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v21 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                [v11 removeKVOBlockForToken:*(*(&v20 + 1) + 8 * j)];
              }

              v14 = [v12 countByEnumeratingWithState:&v20 objects:v30 count:16];
            }

            while (v14);
          }
        }

        else
        {
          v12 = LogCategory_Unspecified();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v29 = v10;
            _os_log_error_impl(&dword_24A315000, v12, OS_LOG_TYPE_ERROR, "Unable to remove KVO tokenSet [%@] because observedObject is nil!", buf, 0xCu);
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v5);
  }

  v17 = [(FMViewController *)self kvoObservationTokens];
  [v17 removeAllObjects];
}

- (void)addNotificationToken:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [(FMViewController *)a2 addNotificationToken:?];
  }

  v6 = [(FMViewController *)self notificationTokens];

  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    [(FMViewController *)self setNotificationTokens:v7];
  }

  v8 = [(FMViewController *)self notificationTokens];
  [v8 addObject:v5];
}

- (void)removeNotificationTokens
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(FMViewController *)self notificationTokens];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 removeObserver:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = [(FMViewController *)self notificationTokens];
  [v9 removeAllObjects];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = FMViewController;
  [(FMViewController *)&v2 viewDidLoad];
}

- (void)awakeFromNib
{
  v2.receiver = self;
  v2.super_class = FMViewController;
  [(FMViewController *)&v2 awakeFromNib];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = FMViewController;
  [(FMViewController *)&v3 viewWillAppear:a3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = FMViewController;
  [(FMViewController *)&v3 viewDidAppear:a3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = FMViewController;
  [(FMViewController *)&v4 viewWillDisappear:a3];
  [(FMViewController *)self removeKVOObservationTokens];
  [(FMViewController *)self removeNotificationTokens];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = FMViewController;
  [(FMViewController *)&v4 viewDidDisappear:a3];
  [(FMViewController *)self removeKVOObservationTokens];
  [(FMViewController *)self removeNotificationTokens];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = FMViewController;
  [(FMViewController *)&v2 didReceiveMemoryWarning];
}

- (void)willMoveToParentViewController:(id)a3
{
  v3.receiver = self;
  v3.super_class = FMViewController;
  [(FMViewController *)&v3 willMoveToParentViewController:a3];
}

- (void)didMoveToParentViewController:(id)a3
{
  v3.receiver = self;
  v3.super_class = FMViewController;
  [(FMViewController *)&v3 didMoveToParentViewController:a3];
}

- (void)performSegueWithIdentifier:(id)a3 sender:(id)a4
{
  v4.receiver = self;
  v4.super_class = FMViewController;
  [(FMViewController *)&v4 performSegueWithIdentifier:a3 sender:a4];
}

- (NSString)controllerNibName
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  if ([v3 hasSuffix:@"ViewController"])
  {
    v4 = [v3 substringToIndex:{objc_msgSend(v3, "rangeOfString:", @"ViewController"}];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"Cannot derive nib name from class [%@]", objc_opt_class()}];
  }

  return v5;
}

- (id)actualNibNameForName:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1)
  {
    v7 = @"_iPad";
  }

  else
  {
    v8 = [MEMORY[0x277D75418] currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if (v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = v3;
      goto LABEL_11;
    }

    v7 = @"_iPhone";
  }

  v13 = [v3 stringByAppendingString:v7];

  v14 = [v4 pathForResource:v13 ofType:@"nib" inDirectory:0];
  if (v14)
  {
    v10 = v14;
    v15 = 0;
  }

  else
  {
    v12 = v3;

    v10 = [v4 pathForResource:v12 ofType:@"nib" inDirectory:0];
    if (!v10)
    {
      v11 = 0;
      goto LABEL_11;
    }

    v13 = v3;
    v15 = v13;
  }

  v12 = v13;

  v11 = v12;
LABEL_11:
  v16 = v11;

  return v11;
}

- (void)addNotificationToken:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FMViewController.m" lineNumber:160 description:{@"Invalid parameter not satisfying: %@", @"[[inToken class] respondsToSelector:@selector(isAnObserver:)]"}];
}

@end