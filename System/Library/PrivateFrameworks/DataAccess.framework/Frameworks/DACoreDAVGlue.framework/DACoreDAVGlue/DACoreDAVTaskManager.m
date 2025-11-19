@interface DACoreDAVTaskManager
- (DACoreDAVTaskManager)initWithAccount:(id)a3;
- (void)_updateSpinner:(BOOL)a3;
- (void)dealloc;
- (void)taskManagerDidAddTask:(id)a3;
- (void)taskManagerWillRemoveTask:(id)a3;
@end

@implementation DACoreDAVTaskManager

- (DACoreDAVTaskManager)initWithAccount:(id)a3
{
  v7.receiver = self;
  v7.super_class = DACoreDAVTaskManager;
  v3 = [(DATaskManager *)&v7 initWithAccount:a3];
  if (v3)
  {
    v4 = objc_opt_new();
    applicationsShowingActivity = v3->_applicationsShowingActivity;
    v3->_applicationsShowingActivity = v4;
  }

  return v3;
}

- (void)_updateSpinner:(BOOL)a3
{
  v3 = a3;
  v53 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((&self->super.super.isa + *MEMORY[0x277D03810]));
  v6 = [WeakRetained spinnerIdentifiers];

  v7 = objc_opt_new();
  v33 = v3;
  if (v3)
  {
    v44 = 0uLL;
    v45 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v42 objects:v52 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v43;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v43 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v42 + 1) + 8 * i);
          if (([(NSMutableSet *)self->_applicationsShowingActivity containsObject:v13]& 1) == 0)
          {
            [(NSMutableSet *)self->_applicationsShowingActivity addObject:v13];
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v42 objects:v52 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v40 = 0uLL;
    v41 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v14 = v6;
    v15 = [v14 countByEnumeratingWithState:&v38 objects:v51 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v39;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v38 + 1) + 8 * j);
          if ([(NSMutableSet *)self->_applicationsShowingActivity containsObject:v19])
          {
            [(NSMutableSet *)self->_applicationsShowingActivity removeObject:v19];
            [v7 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v38 objects:v51 count:16];
      }

      while (v16);
    }
  }

  if ([v7 count])
  {
    v31 = v6;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v7;
    v20 = [obj countByEnumeratingWithState:&v34 objects:v50 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v35;
      v23 = *(MEMORY[0x277D03988] + 6);
      if (v33)
      {
        v24 = @"ON";
      }

      else
      {
        v24 = @"OFF";
      }

      v25 = *(MEMORY[0x277D03988] + 7);
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v35 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v34 + 1) + 8 * k);
          v28 = DALoggingwithCategory();
          if (os_log_type_enabled(v28, v23))
          {
            *buf = 138412546;
            v47 = v24;
            v48 = 2112;
            v49 = v27;
            _os_log_impl(&dword_248521000, v28, v23, "Telling springboard to set the spinner to %@ for identifier %@", buf, 0x16u);
          }

          SBSSetStatusBarShowsActivityForApplication();
          v29 = DALoggingwithCategory();
          if (os_log_type_enabled(v29, v25))
          {
            *buf = 138412546;
            v47 = v24;
            v48 = 2112;
            v49 = v27;
            _os_log_impl(&dword_248521000, v29, v25, "Finished telling springboard to set the spinner to %@ for identifier %@", buf, 0x16u);
          }
        }

        v21 = [obj countByEnumeratingWithState:&v34 objects:v50 count:16];
      }

      while (v21);
    }

    v6 = v31;
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = self->_applicationsShowingActivity;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    v6 = *(MEMORY[0x277D03988] + 6);
    v7 = *(MEMORY[0x277D03988] + 7);
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = DALoggingwithCategory();
        if (os_log_type_enabled(v10, v6))
        {
          *buf = 138412290;
          v20 = v9;
          _os_log_impl(&dword_248521000, v10, v6, "Telling springboard to set the spinner to OFF for identifier %@", buf, 0xCu);
        }

        SBSSetStatusBarShowsActivityForApplication();
        v11 = DALoggingwithCategory();
        if (os_log_type_enabled(v11, v7))
        {
          *buf = 138412290;
          v20 = v9;
          _os_log_impl(&dword_248521000, v11, v7, "Finished telling springboard to set the spinner to OFF for identifier %@", buf, 0xCu);
        }
      }

      v4 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v4);
  }

  v14.receiver = self;
  v14.super_class = DACoreDAVTaskManager;
  [(DATaskManager *)&v14 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)taskManagerDidAddTask:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(DACoreDAVTaskManager *)v5 _updateSpinner:1];
  objc_sync_exit(v5);

  v6.receiver = v5;
  v6.super_class = DACoreDAVTaskManager;
  [(DATaskManager *)&v6 taskManagerDidAddTask:v4];
}

- (void)taskManagerWillRemoveTask:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(DACoreDAVTaskManager *)v5 _updateSpinner:0];
  objc_sync_exit(v5);

  v6.receiver = v5;
  v6.super_class = DACoreDAVTaskManager;
  [(DATaskManager *)&v6 taskManagerWillRemoveTask:v4];
}

@end