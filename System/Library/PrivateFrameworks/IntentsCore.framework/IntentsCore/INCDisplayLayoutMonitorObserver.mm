@interface INCDisplayLayoutMonitorObserver
+ (void)initialize;
- (void)updateDisplayLayout:(id)a3;
@end

@implementation INCDisplayLayoutMonitorObserver

- (void)updateDisplayLayout:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_handler)
  {
    v5 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v20 = "[INCDisplayLayoutMonitorObserver updateDisplayLayout:]";
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_255503000, v5, OS_LOG_TYPE_INFO, "%s Layout changed to: %@", buf, 0x16u);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v4 elements];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if ([v12 _intents_isExpectedElement])
          {
            v9 |= [v12 _intents_isSiri];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    (*(self->_handler + 2))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    INLogInitIfNeeded();
  }
}

@end