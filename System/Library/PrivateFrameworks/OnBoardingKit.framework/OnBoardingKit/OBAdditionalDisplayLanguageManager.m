@interface OBAdditionalDisplayLanguageManager
- (OBAdditionalDisplayLanguageManager)initWithDisplayLanguage:(id)a3;
- (id)didTapRightBarButtonItemForWelcomeController:(id)a3 currentDisplayLanguage:(id)a4;
- (void)configureNavigationItemRightBarButtonItemForWelcomeController:(id)a3 currentDisplayLanguage:(id)a4 action:(SEL)a5;
@end

@implementation OBAdditionalDisplayLanguageManager

- (OBAdditionalDisplayLanguageManager)initWithDisplayLanguage:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = OBAdditionalDisplayLanguageManager;
  v5 = [(OBAdditionalDisplayLanguageManager *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    [(OBAdditionalDisplayLanguageManager *)v5 setOriginalDisplayLanguage:v6];

    v7 = +[OBCapabilities sharedCapabilities];
    v8 = [v7 additionalDisplayLanguageForDisplayLanguage:v4];
    [(OBAdditionalDisplayLanguageManager *)v5 setAdditionalDisplayLanguage:v8];
  }

  return v5;
}

- (void)configureNavigationItemRightBarButtonItemForWelcomeController:(id)a3 currentDisplayLanguage:(id)a4 action:(SEL)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = _OBLoggingFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(OBAdditionalDisplayLanguageManager *)self additionalDisplayLanguage];
    *buf = 138412802;
    v36 = v8;
    v37 = 2112;
    v38 = v9;
    v39 = 2112;
    v40 = v11;
    _os_log_impl(&dword_1B4FB6000, v10, OS_LOG_TYPE_DEFAULT, "configure toggle button with welcomeController %@ displayLanguage %@ self.additionalDisplayLanguage %@", buf, 0x20u);
  }

  v12 = [(OBAdditionalDisplayLanguageManager *)self additionalDisplayLanguage];

  if (v12)
  {
    v13 = [(OBAdditionalDisplayLanguageManager *)self additionalDisplayLanguage];
    v14 = [v9 isEqualToString:v13];

    if (v14)
    {
      [(OBAdditionalDisplayLanguageManager *)self originalDisplayLanguage];
    }

    else
    {
      [(OBAdditionalDisplayLanguageManager *)self additionalDisplayLanguage];
    }
    v15 = ;
    v16 = _OBLoggingFacility();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v15;
      _os_log_impl(&dword_1B4FB6000, v16, OS_LOG_TYPE_DEFAULT, "configure toggle button using language %@", buf, 0xCu);
    }

    v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v18 = [OBUtilities localizedString:@"ALTERNATE_LANGUAGE_BUTTON_TITLE" forTable:@"Localizable" inBundle:v17 forLanguage:v15];

    v19 = _OBLoggingFacility();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v18;
      _os_log_impl(&dword_1B4FB6000, v19, OS_LOG_TYPE_DEFAULT, "configure toggle button title %@", buf, 0xCu);
    }

    v20 = _OBLoggingFacility();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v8 navigationItem];
      *buf = 138412290;
      v36 = v21;
      _os_log_impl(&dword_1B4FB6000, v20, OS_LOG_TYPE_DEFAULT, "configure toggle button navigation item %@", buf, 0xCu);
    }

    v22 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v18 style:0 target:v8 action:a5];
    v23 = [v8 navigationItem];
    v24 = [v23 rightBarButtonItem];

    v25 = [v8 navigationItem];
    v26 = v25;
    if (v24)
    {
      v27 = [v25 rightBarButtonItem];
      v34[0] = v27;
      v34[1] = v22;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
      v29 = [v8 navigationItem];
      [v29 setRightBarButtonItems:v28];
    }

    else
    {
      [v25 setRightBarButtonItem:v22];
    }

    v30 = _OBLoggingFacility();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v8 navigationItem];
      v32 = [v31 rightBarButtonItem];
      *buf = 138412290;
      v36 = v32;
      _os_log_impl(&dword_1B4FB6000, v30, OS_LOG_TYPE_DEFAULT, "configure toggle button navigation item right bar button item %@", buf, 0xCu);
    }
  }

  else
  {
    v15 = _OBLoggingFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B4FB6000, v15, OS_LOG_TYPE_DEFAULT, "configure toggle button short-circuiting", buf, 2u);
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (id)didTapRightBarButtonItemForWelcomeController:(id)a3 currentDisplayLanguage:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 scrollView];
  [v8 setContentOffset:0 animated:{0.0, 0.0}];

  [v7 updateNavigationBarAnimated:0];
  v9 = [(OBAdditionalDisplayLanguageManager *)self additionalDisplayLanguage];
  LODWORD(v8) = [v9 isEqualToString:v6];

  if (v8)
  {
    [(OBAdditionalDisplayLanguageManager *)self originalDisplayLanguage];
  }

  else
  {
    [(OBAdditionalDisplayLanguageManager *)self additionalDisplayLanguage];
  }
  v10 = ;

  return v10;
}

@end