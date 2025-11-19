@interface NUURLHandler
- (NUURLHandler)initWithURLHandling:(id)a3 universalLinksEnabled:(BOOL)a4;
- (NUURLHandlerDelegate)delegate;
- (id)modifyURL:(id)a3;
- (id)viewControllerForURL:(id)a3;
- (void)addModifier:(id)a3;
- (void)openURL:(id)a3;
- (void)removeModifier:(id)a3;
@end

@implementation NUURLHandler

- (NUURLHandler)initWithURLHandling:(id)a3 universalLinksEnabled:(BOOL)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = NUURLHandler;
  v8 = [(NUURLHandler *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_URLHandling, a3);
    v9->_universalLinksEnabled = a4;
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    modifiers = v9->_modifiers;
    v9->_modifiers = v10;
  }

  return v9;
}

- (void)addModifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(NUURLHandler *)self modifiers];
    [v5 addObject:v4];
  }
}

- (void)removeModifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(NUURLHandler *)self modifiers];
    [v5 removeObject:v4];
  }
}

- (id)viewControllerForURL:(id)a3
{
  v4 = [(NUURLHandler *)self modifyURL:a3];
  if (v4)
  {
    v5 = [(NUURLHandler *)self previewViewControllerFactory];
    v6 = [v5 createViewControllerForURL:v4];

    if (v6)
    {
      v7 = v6;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)openURL:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NUURLHandler *)self modifyURL:v4];
  v6 = NUSharedLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 absoluteString];
    *buf = 138543362;
    v27 = v7;
    _os_log_impl(&dword_25C2D6000, v6, OS_LOG_TYPE_DEFAULT, "Attempting to open modified URL %{public}@", buf, 0xCu);
  }

  v8 = [(NUURLHandler *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(NUURLHandler *)self delegate];
    [v10 URLHandler:self willOpenURL:v5];
  }

  objc_initWeak(buf, self);
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __24__NUURLHandler_openURL___block_invoke;
  v23 = &unk_2799A34C0;
  objc_copyWeak(&v25, buf);
  v11 = v5;
  v24 = v11;
  v12 = MEMORY[0x25F883F30](&v20);
  v13 = [MEMORY[0x277CCACE0] componentsWithURL:v11 resolvingAgainstBaseURL:{0, v20, v21, v22, v23}];
  v14 = [v13 scheme];
  v15 = [v14 hasPrefix:@"http"];

  if ([(NUURLHandler *)self universalLinksEnabled]|| (v15 & 1) == 0)
  {
    v16 = [MEMORY[0x277CBEB38] dictionary];
    v17 = v16;
    if (v15)
    {
      [v16 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D766C8]];
    }

    v18 = [(NUURLHandler *)self URLHandling];
    [v18 openURL:v11 options:v17 completion:v12];
  }

  else
  {
    v12[2](v12, 0);
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);

  v19 = *MEMORY[0x277D85DE8];
}

void __24__NUURLHandler_openURL___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = [WeakRetained webViewControllerFactory];
    v7 = [v5 createViewControllerForURL:*(a1 + 32)];

    if (v7)
    {
      [v7 setModalPresentationStyle:6];
      v6 = objc_loadWeakRetained((a1 + 40));
      [v6 presentViewController:v7 animated:1];
    }
  }
}

- (id)modifyURL:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [a3 copy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(NUURLHandler *)self modifiers];
  v6 = [v5 copy];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      v11 = v4;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v15 + 1) + 8 * v10) modifyURL:v11];
        v4 = [v12 copy];

        ++v10;
        v11 = v4;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NUURLHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end