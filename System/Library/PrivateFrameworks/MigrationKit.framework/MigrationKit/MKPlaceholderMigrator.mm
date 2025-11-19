@interface MKPlaceholderMigrator
- (MKPlaceholderMigrator)init;
- (void)didSearchForPlaceholder:(id)a3 apps:(id)a4 error:(id)a5;
- (void)import:(id)a3;
- (void)importDataEncodedInJSON:(id)a3;
- (void)install:(id)a3 apps:(id)a4 error:(id)a5;
- (void)remove;
@end

@implementation MKPlaceholderMigrator

- (MKPlaceholderMigrator)init
{
  v9.receiver = self;
  v9.super_class = MKPlaceholderMigrator;
  v2 = [(MKMigrator *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(MKMigrator *)v2 setType:15];
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    identifiers = v3->_identifiers;
    v3->_identifiers = v4;

    v6 = objc_alloc_init(MKAppSearchRequest);
    request = v3->_request;
    v3->_request = v6;
  }

  return v3;
}

- (void)importDataEncodedInJSON:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = objc_autoreleasePoolPush();
  [(MKPlaceholderMigrator *)v4 import:v6];
  objc_autoreleasePoolPop(v5);
  objc_sync_exit(v4);
}

- (void)import:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[MKLog log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = self;
    _os_log_impl(&dword_2592D2000, v5, OS_LOG_TYPE_INFO, "%@ will import placeholders.", buf, 0xCu);
  }

  v6 = [[MKPlaceholder alloc] initWithJSONData:v4];
  v7 = v6;
  if (v6)
  {
    if ([(MKPlaceholder *)v6 enabled])
    {
      v8 = +[MKLog log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [(MKPlaceholder *)v7 bundleIdentifier];
        *buf = 138412290;
        v20 = v9;
        _os_log_impl(&dword_2592D2000, v8, OS_LOG_TYPE_INFO, "the placeholder was already installed. placeholder=%@", buf, 0xCu);
      }
    }

    else
    {
      v8 = [(MKPlaceholder *)v7 bundleIdentifier];
      v10 = +[MKLog log];
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
      if (v8)
      {
        if (v11)
        {
          *buf = 138412290;
          v20 = v8;
          _os_log_impl(&dword_2592D2000, v10, OS_LOG_TYPE_INFO, "will search an application. id=%@", buf, 0xCu);
        }

        objc_initWeak(buf, self);
        request = self->_request;
        v18 = v8;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __32__MKPlaceholderMigrator_import___block_invoke;
        v15[3] = &unk_2798DCCF0;
        objc_copyWeak(&v17, buf);
        v16 = v7;
        [(MKAppSearchRequest *)request search:v13 androidIDs:0 completion:v15];

        objc_destroyWeak(&v17);
        objc_destroyWeak(buf);
      }

      else
      {
        if (v11)
        {
          *buf = 0;
          _os_log_impl(&dword_2592D2000, v10, OS_LOG_TYPE_INFO, "will skip a placeholder because did receive an invalid bundle identifier. id=nil", buf, 2u);
        }
      }
    }
  }

  else
  {
    v8 = +[MKLog log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2592D2000, v8, OS_LOG_TYPE_INFO, "will skip a placeholder because did receive an invalid placeholder. placeholder=nil", buf, 2u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __32__MKPlaceholderMigrator_import___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didSearchForPlaceholder:*(a1 + 32) apps:v6 error:v5];
}

- (void)didSearchForPlaceholder:(id)a3 apps:(id)a4 error:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = self;
  objc_sync_enter(v10);
  v11 = objc_autoreleasePoolPush();
  [(MKPlaceholderMigrator *)v10 install:v12 apps:v8 error:v9];
  objc_autoreleasePoolPop(v11);
  objc_sync_exit(v10);
}

- (void)install:(id)a3 apps:(id)a4 error:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = +[MKLog log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v8 bundleIdentifier];
      v13 = [v10 description];
      *buf = 138412546;
      v39 = v12;
      v40 = 2112;
      v41 = v13;
      _os_log_impl(&dword_2592D2000, v11, OS_LOG_TYPE_INFO, "did receive an error but will install a placeholder using existing metadata. id=%@, error=%@", buf, 0x16u);
LABEL_4:

LABEL_13:
    }

LABEL_14:

    v17 = +[MKLog log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v8 bundleIdentifier];
      *buf = 138412290;
      v39 = v18;
      _os_log_impl(&dword_2592D2000, v17, OS_LOG_TYPE_INFO, "did not receive an icon due to an network error but will install a placeholder using existing metadata. id=%@", buf, 0xCu);
    }

    [v8 install];
    goto LABEL_17;
  }

  if (![v9 count])
  {
    v11 = +[MKLog log];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    v12 = [v8 bundleIdentifier];
    *buf = 138412290;
    v39 = v12;
    v14 = "did not receive any matching app but will install a placeholder using existing metadata. id=%@";
LABEL_11:
    v15 = v11;
    v16 = 12;
LABEL_12:
    _os_log_impl(&dword_2592D2000, v15, OS_LOG_TYPE_INFO, v14, buf, v16);
    goto LABEL_13;
  }

  if ([v9 count] >= 2)
  {
    v11 = +[MKLog log];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    v12 = [v8 bundleIdentifier];
    *buf = 138412290;
    v39 = v12;
    v14 = "did receive too many matching apps but will install a placeholder using existing metadata. id=%@";
    goto LABEL_11;
  }

  v11 = [v9 objectAtIndexedSubscript:0];
  v22 = [v11 iconURL];
  if (!v22)
  {
    v12 = +[MKLog log];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v14 = "did not receive an icon url from the app store api or a new icon type might be added to ios.";
    v15 = v12;
    v16 = 2;
    goto LABEL_12;
  }

  v12 = v22;
  v23 = MEMORY[0x277CBEA90];
  v24 = [MEMORY[0x277CBEBC0] URLWithString:v22];
  v25 = [v23 dataWithContentsOfURL:v24];

  if (!v25)
  {
    v33 = [v8 icon];

    if (v33)
    {
      v13 = +[MKLog log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v34 = [v8 bundleIdentifier];
        *buf = 138412290;
        v39 = v34;
        _os_log_impl(&dword_2592D2000, v13, OS_LOG_TYPE_INFO, "did not receive an icon data due to an network error but will install a placeholder using existing metadata. id=%@", buf, 0xCu);
      }

      goto LABEL_4;
    }
  }

  v36 = v25;
  v37 = v12;
  v26 = +[MKLog log];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = [v8 bundleIdentifier];
    *buf = 138412290;
    v39 = v27;
    _os_log_impl(&dword_2592D2000, v26, OS_LOG_TYPE_INFO, "will install a placeholder using the latest metadata from the app store. id=%@", buf, 0xCu);
  }

  v28 = [MKPlaceholder alloc];
  v35 = [v11 bundleIdentifier];
  v29 = [v11 appStoreIdentifier];
  v30 = [v11 name];
  v31 = [v11 developer];
  v32 = [(MKPlaceholder *)v28 initWithBundleIdentifier:v35 appStoreIdentifier:v29 bundleName:v30 developer:v31 icon:v36];

  [(MKPlaceholder *)v32 install];
LABEL_17:
  identifiers = self->_identifiers;
  v20 = [v8 bundleIdentifier];
  [(NSMutableArray *)identifiers addObject:v20];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)remove
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_identifiers;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [MKPlaceholder alloc];
        v9 = [(MKPlaceholder *)v8 initWithBundleIdentifier:v7, v11];
        [(MKPlaceholder *)v9 uninstall];

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end