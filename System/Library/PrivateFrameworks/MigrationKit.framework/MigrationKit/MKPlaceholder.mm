@interface MKPlaceholder
- (MKPlaceholder)initWithBundleIdentifier:(id)a3;
- (MKPlaceholder)initWithBundleIdentifier:(id)a3 appStoreIdentifier:(id)a4 bundleName:(id)a5 developer:(id)a6 icon:(id)a7;
- (MKPlaceholder)initWithJSONData:(id)a3;
- (MKPlaceholder)initWithTestBundleIdentifier;
- (void)install;
- (void)uninstall;
@end

@implementation MKPlaceholder

- (MKPlaceholder)initWithJSONData:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = MKPlaceholder;
  v5 = [(MKPlaceholder *)&v34 init];
  if (v5 && [v4 length])
  {
    v33 = 0;
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:&v33];
    v7 = v33;
    if (v7)
    {
      v8 = +[MKLog log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(MKPlaceholder *)v7 initWithJSONData:v8];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v6 mk_stringForKey:@"id"];
        v10 = [v6 mk_stringForKey:@"name"];
        v11 = [v6 mk_stringForKey:@"icon"];
        v12 = [v6 mk_stringForKey:@"developer"];
        v32 = v10;
        if (v10)
        {
          v13 = v10;
        }

        else
        {
          v13 = v8;
        }

        [(MKPlaceholder *)v5 setName:v13];
        v31 = v11;
        if (v11)
        {
          v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v11 options:0];
          [(MKPlaceholder *)v5 setIcon:v14];
        }

        else
        {
          [(MKPlaceholder *)v5 setIcon:0];
        }

        v30 = v12;
        [(MKPlaceholder *)v5 setDeveloper:v12];
        v16 = objc_alloc_init(MKHex);
        v17 = [MKCrypto alloc];
        v18 = [(MKHex *)v16 hexToData:@"331BB104B13265802FC130A8AC28927CFF1CC3F0D502D0B0DE25A8D6F87D3528"];
        v19 = [(MKCrypto *)v17 initWithKey:v18];

        v20 = [(MKHex *)v16 hexToData:@"94FBBFDC34ECDA1EBEF8B963954CCE8370B1841A7E12A080793994F1184A8F213A0430023E"];
        v21 = [(MKCrypto *)v19 decryptData:v20];

        v29 = v21;
        v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v21 encoding:4];
        if ([v8 isEqualToString:v22])
        {
          v23 = [(MKHex *)v16 hexToData:@"D1FCC9136BB7D621E20BDF8E1EFB7607F11DD455D9929C6F56"];
          v28 = [(MKCrypto *)v19 decryptData:v23];

          v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v28 encoding:4];
          [(MKPlaceholder *)v5 setAppStoreIdentifier:v27];
          v24 = [(MKHex *)v16 hexToData:@"BFADCCA6F10B49705F5D5A33E55AE0F8E20F55C483DC03BE802D90AC5A"];
          v25 = [(MKCrypto *)v19 decryptData:v24];

          v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v25 encoding:4];
          [(MKPlaceholder *)v5 setDeveloper:v26];
        }

        v5 = [(MKPlaceholder *)v5 initWithBundleIdentifier:v8];

        v9 = v5;
        goto LABEL_16;
      }

      v8 = +[MKLog log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [MKPlaceholder initWithJSONData:v8];
      }
    }

    v9 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v9 = 0;
LABEL_17:

  return v9;
}

- (MKPlaceholder)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MKPlaceholder;
  v5 = [(MKPlaceholder *)&v13 init];
  if (!v5)
  {
LABEL_8:
    v11 = v5;
    goto LABEL_9;
  }

  if ([v4 length])
  {
    [(MKPlaceholder *)v5 setBundleIdentifier:v4];
    v6 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v5->_bundleIdentifier allowPlaceholder:1 error:0];
    v7 = [v6 dataContainerURL];
    v8 = [v7 path];
    v9 = [v8 stringByAppendingPathComponent:@"Library"];
    [(MKPlaceholder *)v5 setContainer:v9];

    if (v6)
    {
      v10 = [v6 dataContainerURL];
      [(MKPlaceholder *)v5 setEnabled:v10 != 0];
    }

    else
    {
      [(MKPlaceholder *)v5 setEnabled:0];
    }

    goto LABEL_8;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (MKPlaceholder)initWithBundleIdentifier:(id)a3 appStoreIdentifier:(id)a4 bundleName:(id)a5 developer:(id)a6 icon:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(MKPlaceholder *)self initWithBundleIdentifier:a3];
  v17 = v16;
  if (v16)
  {
    [(MKPlaceholder *)v16 setAppStoreIdentifier:v12];
    [(MKPlaceholder *)v17 setName:v13];
    [(MKPlaceholder *)v17 setDeveloper:v14];
    [(MKPlaceholder *)v17 setIcon:v15];
  }

  return v17;
}

- (MKPlaceholder)initWithTestBundleIdentifier
{
  if (+[MKInternal isInternal])
  {
    v3 = objc_alloc_init(MKHex);
    v4 = [MKCrypto alloc];
    v5 = [(MKHex *)v3 hexToData:@"331BB104B13265802FC130A8AC28927CFF1CC3F0D502D0B0DE25A8D6F87D3528"];
    v6 = [(MKCrypto *)v4 initWithKey:v5];

    v7 = [(MKHex *)v3 hexToData:@"94FBBFDC34ECDA1EBEF8B963954CCE8370B1841A7E12A080793994F1184A8F213A0430023E"];
    v8 = [(MKCrypto *)v6 decryptData:v7];

    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
    self = [(MKPlaceholder *)self initWithBundleIdentifier:v9];

    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)install
{
  v44 = *MEMORY[0x277D85DE8];
  if (self->_enabled)
  {
    v3 = +[MKLog log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      bundleIdentifier = self->_bundleIdentifier;
      *buf = 138412290;
      v37 = bundleIdentifier;
      _os_log_impl(&dword_2592D2000, v3, OS_LOG_TYPE_INFO, "The placeholder is already installed. id=%@", buf, 0xCu);
    }
  }

  else
  {
    if ([(NSString *)self->_bundleIdentifier length]&& [(NSString *)self->_appStoreIdentifier length]&& [(NSString *)self->_name length]&& [(NSString *)self->_developer length])
    {
      v5 = [objc_alloc(MEMORY[0x277D1C160]) initWithBundleIdentifier:self->_bundleIdentifier];
      v35 = 0;
      v6 = [MEMORY[0x277D1C1C8] coordinatorForAppWithIdentity:v5 withClientID:24 createIfNotExisting:1 created:0 error:&v35];
      v7 = v35;
      if (v7)
      {
        v3 = v7;
        v8 = 0;
        v9 = 0;
      }

      else
      {
        v8 = [objc_alloc(MEMORY[0x277D1C1A0]) initWithName:@"User data" client:24 diskSpaceNeeded:0];
        v34 = 0;
        v9 = [v6 setUserDataPromise:v8 error:&v34];
        v14 = v34;
        v3 = v14;
        if (v9 && !v14)
        {
          v15 = objc_alloc_init(MEMORY[0x277D1C200]);
          v9 = 1;
          v16 = [objc_alloc(MEMORY[0x277D1C190]) initWithLocalizedBundleName:self->_name bundleID:self->_bundleIdentifier type:1 client:24 location:v15];
          [v16 setInstallType:8];
          v33 = 0;
          v17 = [objc_alloc(MEMORY[0x277D1C180]) initWithSpecification:v16 error:&v33];
          v18 = v33;
          if (v18)
          {
            v3 = v18;
          }

          else
          {
            v32 = 0;
            v9 = [v6 setPlaceholderPromise:v17 error:&v32];
            v21 = v32;
            v3 = v21;
            if (v9)
            {
              if (!v21)
              {
                if (!-[NSData length](self->_icon, "length") || (v22 = [objc_alloc(MEMORY[0x277D1C198]) initWithName:@"Placeholder Icon" client:24 data:self->_icon], v31 = 0, v9 = objc_msgSend(v17, "setIconPromise:error:", v22, &v31), v3 = v31, v22, v9) && !v3)
                {
                  v23 = objc_alloc_init(MEMORY[0x277CCABB8]);
                  [v23 setNumberStyle:1];
                  v28 = v23;
                  v24 = [v23 numberFromString:self->_appStoreIdentifier];
                  v25 = objc_alloc_init(MEMORY[0x277D1C208]);
                  v27 = v24;
                  [v25 setItemID:v24];
                  [v25 setItemName:self->_name];
                  [v25 setArtistName:self->_developer];
                  [v25 setSoftwareVersionBundleID:self->_bundleIdentifier];
                  v30 = 0;
                  v9 = [v17 setMetadata:v25 error:&v30];
                  v26 = v30;
                  v3 = v26;
                  if (v9 && !v26)
                  {
                    v29 = 0;
                    v9 = [v17 setConfigurationCompleteWithError:&v29];
                    v3 = v29;
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v3 = 0;
    }

    [v8 setComplete:1];
    v10 = +[MKLog log];
    v11 = v10;
    if (!v9 || v3)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v19 = self->_bundleIdentifier;
        v20 = [v3 description];
        *buf = 138413058;
        v37 = self;
        v38 = 2112;
        v39 = v19;
        v40 = 1024;
        v41 = v9;
        v42 = 2112;
        v43 = v20;
        _os_log_error_impl(&dword_2592D2000, v11, OS_LOG_TYPE_ERROR, "%@ could not install a placeholder. id=%@, success=%d, error=%@", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = self->_bundleIdentifier;
      *buf = 138412290;
      v37 = v12;
      _os_log_impl(&dword_2592D2000, v11, OS_LOG_TYPE_INFO, "will install a placeholder. id=%@", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)uninstall
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_enabled)
  {
    v3 = objc_alloc_init(MEMORY[0x277D1C1D0]);
    [v3 setRequestUserConfirmation:0];
    [v3 setWaitForDeletion:0];
    [v3 setShowArchiveOption:0];
    [v3 setShowDemotionOption:0];
    [v3 setSystemAppNotAllowed:0];
    v4 = +[MKLog log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      bundleIdentifier = self->_bundleIdentifier;
      v9 = 138412290;
      v10 = bundleIdentifier;
      _os_log_impl(&dword_2592D2000, v4, OS_LOG_TYPE_INFO, "will uninstall an app. id=%@", &v9, 0xCu);
    }

    v6 = [objc_alloc(MEMORY[0x277D1C160]) initWithBundleIdentifier:self->_bundleIdentifier];
    [MEMORY[0x277D1C148] uninstallAppWithIdentity:v6 options:v3 completion:&__block_literal_global_5];
  }

  else
  {
    v3 = +[MKLog log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = self->_bundleIdentifier;
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_2592D2000, v3, OS_LOG_TYPE_INFO, "the placeholder was already uninstalled. id=%@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __26__MKPlaceholder_uninstall__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[MKLog log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134218242;
    v8 = a2;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_2592D2000, v5, OS_LOG_TYPE_INFO, "did uninstall an app. disposition=%ld, error=%@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end