@interface MKPlaceholderMigrator
- (MKPlaceholderMigrator)init;
- (void)didSearchForPlaceholder:(id)placeholder apps:(id)apps error:(id)error;
- (void)import:(id)import;
- (void)importDataEncodedInJSON:(id)n;
- (void)install:(id)install apps:(id)apps error:(id)error;
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

- (void)importDataEncodedInJSON:(id)n
{
  nCopy = n;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_autoreleasePoolPush();
  [(MKPlaceholderMigrator *)selfCopy import:nCopy];
  objc_autoreleasePoolPop(v5);
  objc_sync_exit(selfCopy);
}

- (void)import:(id)import
{
  v21 = *MEMORY[0x277D85DE8];
  importCopy = import;
  v5 = +[MKLog log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_2592D2000, v5, OS_LOG_TYPE_INFO, "%@ will import placeholders.", buf, 0xCu);
  }

  v6 = [[MKPlaceholder alloc] initWithJSONData:importCopy];
  v7 = v6;
  if (v6)
  {
    if ([(MKPlaceholder *)v6 enabled])
    {
      bundleIdentifier2 = +[MKLog log];
      if (os_log_type_enabled(bundleIdentifier2, OS_LOG_TYPE_INFO))
      {
        bundleIdentifier = [(MKPlaceholder *)v7 bundleIdentifier];
        *buf = 138412290;
        selfCopy = bundleIdentifier;
        _os_log_impl(&dword_2592D2000, bundleIdentifier2, OS_LOG_TYPE_INFO, "the placeholder was already installed. placeholder=%@", buf, 0xCu);
      }
    }

    else
    {
      bundleIdentifier2 = [(MKPlaceholder *)v7 bundleIdentifier];
      v10 = +[MKLog log];
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
      if (bundleIdentifier2)
      {
        if (v11)
        {
          *buf = 138412290;
          selfCopy = bundleIdentifier2;
          _os_log_impl(&dword_2592D2000, v10, OS_LOG_TYPE_INFO, "will search an application. id=%@", buf, 0xCu);
        }

        objc_initWeak(buf, self);
        request = self->_request;
        v18 = bundleIdentifier2;
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
    bundleIdentifier2 = +[MKLog log];
    if (os_log_type_enabled(bundleIdentifier2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2592D2000, bundleIdentifier2, OS_LOG_TYPE_INFO, "will skip a placeholder because did receive an invalid placeholder. placeholder=nil", buf, 2u);
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

- (void)didSearchForPlaceholder:(id)placeholder apps:(id)apps error:(id)error
{
  placeholderCopy = placeholder;
  appsCopy = apps;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = objc_autoreleasePoolPush();
  [(MKPlaceholderMigrator *)selfCopy install:placeholderCopy apps:appsCopy error:errorCopy];
  objc_autoreleasePoolPop(v11);
  objc_sync_exit(selfCopy);
}

- (void)install:(id)install apps:(id)apps error:(id)error
{
  v42 = *MEMORY[0x277D85DE8];
  installCopy = install;
  appsCopy = apps;
  errorCopy = error;
  if (errorCopy)
  {
    v11 = +[MKLog log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      bundleIdentifier = [installCopy bundleIdentifier];
      v13 = [errorCopy description];
      *buf = 138412546;
      v39 = bundleIdentifier;
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
      bundleIdentifier2 = [installCopy bundleIdentifier];
      *buf = 138412290;
      v39 = bundleIdentifier2;
      _os_log_impl(&dword_2592D2000, v17, OS_LOG_TYPE_INFO, "did not receive an icon due to an network error but will install a placeholder using existing metadata. id=%@", buf, 0xCu);
    }

    [installCopy install];
    goto LABEL_17;
  }

  if (![appsCopy count])
  {
    v11 = +[MKLog log];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    bundleIdentifier = [installCopy bundleIdentifier];
    *buf = 138412290;
    v39 = bundleIdentifier;
    v14 = "did not receive any matching app but will install a placeholder using existing metadata. id=%@";
LABEL_11:
    v15 = v11;
    v16 = 12;
LABEL_12:
    _os_log_impl(&dword_2592D2000, v15, OS_LOG_TYPE_INFO, v14, buf, v16);
    goto LABEL_13;
  }

  if ([appsCopy count] >= 2)
  {
    v11 = +[MKLog log];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    bundleIdentifier = [installCopy bundleIdentifier];
    *buf = 138412290;
    v39 = bundleIdentifier;
    v14 = "did receive too many matching apps but will install a placeholder using existing metadata. id=%@";
    goto LABEL_11;
  }

  v11 = [appsCopy objectAtIndexedSubscript:0];
  iconURL = [v11 iconURL];
  if (!iconURL)
  {
    bundleIdentifier = +[MKLog log];
    if (!os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v14 = "did not receive an icon url from the app store api or a new icon type might be added to ios.";
    v15 = bundleIdentifier;
    v16 = 2;
    goto LABEL_12;
  }

  bundleIdentifier = iconURL;
  v23 = MEMORY[0x277CBEA90];
  v24 = [MEMORY[0x277CBEBC0] URLWithString:iconURL];
  v25 = [v23 dataWithContentsOfURL:v24];

  if (!v25)
  {
    icon = [installCopy icon];

    if (icon)
    {
      v13 = +[MKLog log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        bundleIdentifier3 = [installCopy bundleIdentifier];
        *buf = 138412290;
        v39 = bundleIdentifier3;
        _os_log_impl(&dword_2592D2000, v13, OS_LOG_TYPE_INFO, "did not receive an icon data due to an network error but will install a placeholder using existing metadata. id=%@", buf, 0xCu);
      }

      goto LABEL_4;
    }
  }

  v36 = v25;
  v37 = bundleIdentifier;
  v26 = +[MKLog log];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier4 = [installCopy bundleIdentifier];
    *buf = 138412290;
    v39 = bundleIdentifier4;
    _os_log_impl(&dword_2592D2000, v26, OS_LOG_TYPE_INFO, "will install a placeholder using the latest metadata from the app store. id=%@", buf, 0xCu);
  }

  v28 = [MKPlaceholder alloc];
  bundleIdentifier5 = [v11 bundleIdentifier];
  appStoreIdentifier = [v11 appStoreIdentifier];
  name = [v11 name];
  developer = [v11 developer];
  v32 = [(MKPlaceholder *)v28 initWithBundleIdentifier:bundleIdentifier5 appStoreIdentifier:appStoreIdentifier bundleName:name developer:developer icon:v36];

  [(MKPlaceholder *)v32 install];
LABEL_17:
  identifiers = self->_identifiers;
  bundleIdentifier6 = [installCopy bundleIdentifier];
  [(NSMutableArray *)identifiers addObject:bundleIdentifier6];

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