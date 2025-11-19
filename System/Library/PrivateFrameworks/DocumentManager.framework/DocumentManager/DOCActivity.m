@interface DOCActivity
+ (BOOL)isDestructiveActionIdentifier:(id)a3;
+ (id)_activityWithIdentifier:(id)a3 forBrowserAction:(id)a4 actionPerformerProxy:(id)a5;
+ (id)_imageNameForActivityIdentifier:(id)a3;
+ (id)_titleForActivityIdentifier:(id)a3;
+ (id)activityForBrowserAction:(id)a3 actionPerformerProxy:(id)a4;
- (BOOL)canPerformWithActivityItems:(id)a3;
- (DOCActivity)initWithIdentifier:(id)a3 actionPerformer:(id)a4 forBrowserAction:(id)a5;
- (void)performActivity;
- (void)validate;
@end

@implementation DOCActivity

+ (id)activityForBrowserAction:(id)a3 actionPerformerProxy:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 identifier];
  v9 = [a1 _activityWithIdentifier:v8 forBrowserAction:v7 actionPerformerProxy:v6];

  return v9;
}

+ (id)_activityWithIdentifier:(id)a3 forBrowserAction:(id)a4 actionPerformerProxy:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 identifier];
  v12 = [a1 _activityStyleForActivityIdentifier:v11];

  if (v12 == 1 || v9 && [v9 actionStyle] == 1)
  {
    v13 = off_1E8781CC8;
  }

  else
  {
    v13 = off_1E8781CA8;
  }

  v14 = [objc_alloc(*v13) initWithIdentifier:v8 actionPerformer:v10 forBrowserAction:v9];

  return v14;
}

+ (BOOL)isDestructiveActionIdentifier:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = @"com.apple.DocumentManager.action.trash";
  v8 = @"com.apple.DocumentManager.action.mixedDelete";
  v9 = @"com.apple.DocumentManager.action.delete";
  v3 = MEMORY[0x1E695DEC8];
  v4 = a3;
  v5 = [v3 arrayWithObjects:&v7 count:3];
  LOBYTE(v3) = [v5 containsObject:{v4, v7, v8, v9, v10}];

  return v3;
}

+ (id)_imageNameForActivityIdentifier:(id)a3
{
  v3 = a3;
  if (@"com.apple.DocumentManager.action.copySharedLink" == v3)
  {
    v5 = @"square.and.arrow.up";
  }

  else if (@"com.apple.DocumentManager.action.copy" == v3)
  {
    v5 = @"doc.on.doc";
  }

  else if (@"com.apple.DocumentManager.action.archive" == v3 || @"com.apple.DocumentManager.action.unarchive" == v3)
  {
    v5 = @"archivebox";
  }

  else if (@"com.apple.DocumentManager.action.rename" == v3)
  {
    v5 = @"pencil";
  }

  else if (@"com.apple.DocumentManager.action.duplicate" == v3)
  {
    v5 = @"plus.square.on.square";
  }

  else if (@"com.apple.DocumentManager.action.move" == v3)
  {
    v5 = @"folder";
  }

  else if (@"com.apple.DocumentManager.action.trash" == v3)
  {
    v5 = @"trash";
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_titleForActivityIdentifier:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (@"com.apple.DocumentManager.action.copySharedLink" == v3)
  {
    v6 = _DocumentManagerBundle();
    v7 = v6;
    v8 = @"Copy Link [Action Sheet]";
    v9 = @"Copy Link";
  }

  else if (@"com.apple.DocumentManager.action.copy" == v3)
  {
    v6 = _DocumentManagerBundle();
    v7 = v6;
    v8 = @"Copy [Action Sheet]";
    v9 = @"Copy";
  }

  else if (@"com.apple.DocumentManager.action.archive" == v3)
  {
    v6 = _DocumentManagerBundle();
    v7 = v6;
    v8 = @"Compress [Action Sheet]";
    v9 = @"Compress";
  }

  else if (@"com.apple.DocumentManager.action.unarchive" == v3)
  {
    v6 = _DocumentManagerBundle();
    v7 = v6;
    v8 = @"Uncompress [Action Sheet]";
    v9 = @"Uncompress";
  }

  else if (@"com.apple.DocumentManager.action.rename" == v3)
  {
    v6 = _DocumentManagerBundle();
    v7 = v6;
    v8 = @"Rename [Action Sheet]";
    v9 = @"Rename";
  }

  else if (@"com.apple.DocumentManager.action.duplicate" == v3)
  {
    v6 = _DocumentManagerBundle();
    v7 = v6;
    v8 = @"Duplicate [Action Sheet]";
    v9 = @"Duplicate";
  }

  else if (@"com.apple.DocumentManager.action.move" == v3)
  {
    v6 = _DocumentManagerBundle();
    v7 = v6;
    v8 = @"Move [Action Sheet]";
    v9 = @"Move";
  }

  else
  {
    if (@"com.apple.DocumentManager.action.trash" != v3)
    {
      v5 = 0;
      goto LABEL_19;
    }

    v6 = _DocumentManagerBundle();
    v7 = v6;
    v8 = @"Delete [Action Sheet]";
    v9 = @"Delete";
  }

  v5 = [v6 localizedStringForKey:v8 value:v9 table:@"Localizable"];

LABEL_19:

  return v5;
}

- (DOCActivity)initWithIdentifier:(id)a3 actionPerformer:(id)a4 forBrowserAction:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [DOCActivity initWithIdentifier:a2 actionPerformer:self forBrowserAction:?];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [DOCActivity initWithIdentifier:a2 actionPerformer:self forBrowserAction:?];
LABEL_3:
  v41.receiver = self;
  v41.super_class = DOCActivity;
  v12 = [(UIActivity *)&v41 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_actionPerformerProxy, a4);
    if (v11)
    {
      v14 = [v11 identifier];
      v15 = [v14 copy];
      identifier = v13->_identifier;
      v13->_identifier = v15;
    }

    else
    {
      v17 = v9;
      v14 = v13->_identifier;
      v13->_identifier = v17;
    }

    v18 = [objc_opt_class() _imageNameForActivityIdentifier:v9];
    imageName = v13->_imageName;
    v13->_imageName = v18;

    if (v11 && !v13->_imageName)
    {
      v20 = [v11 image];
      v21 = [MEMORY[0x1E69DCEB0] mainScreen];
      v22 = [v21 traitCollection];
      v23 = [v22 preferredContentSizeCategory];

      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v23);
      v25 = *MEMORY[0x1E69DDCF8];
      if (IsAccessibilityCategory)
      {
        v26 = MEMORY[0x1E69DB880];
        v27 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC40]];
        v28 = [v26 preferredFontDescriptorWithTextStyle:v25 compatibleWithTraitCollection:v27];

        v29 = [v28 fontDescriptorWithSymbolicTraits:0x8000];

        v30 = [MEMORY[0x1E69DB878] fontWithDescriptor:v29 size:0.0];
        v31 = MEMORY[0x1E69DCAD8];
        [v30 pointSize];
        v32 = [v31 configurationWithPointSize:?];
      }

      else
      {
        v32 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:*MEMORY[0x1E69DDE40]];
      }

      v33 = [v20 imageWithConfiguration:v32];
      image = v13->_image;
      v13->_image = v33;
    }

    v35 = [objc_opt_class() _titleForActivityIdentifier:v9];
    localizedTitle = v13->_localizedTitle;
    v13->_localizedTitle = v35;

    v37 = [(NSString *)v13->_localizedTitle length];
    if (v11 && !v37)
    {
      v38 = [v11 localizedTitle];
      v39 = v13->_localizedTitle;
      v13->_localizedTitle = v38;
    }

    [(DOCActivity *)v13 validate];
  }

  return v13;
}

- (void)validate
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 152);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1E57D8000, a2, OS_LOG_TYPE_DEBUG, "Unable to get localized title for activity with identifier %@", &v3, 0xCu);
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  return v8;
}

- (void)performActivity
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = self;
  v4 = [(DOCActivity *)self items];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        v17 = 0;
        v10 = [MEMORY[0x1E6967408] wrapperWithURL:v9 readonly:0 error:&v17];
        v11 = v17;
        if (v10)
        {
          [v3 addObject:v10];
        }

        else
        {
          v12 = *MEMORY[0x1E699A450];
          if (!*MEMORY[0x1E699A450])
          {
            DOCInitLogging();
            v12 = *MEMORY[0x1E699A450];
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v23 = v9;
            v24 = 2112;
            v25 = v11;
            _os_log_error_impl(&dword_1E57D8000, v12, OS_LOG_TYPE_ERROR, "Unable to wrap url %@ with error %@", buf, 0x16u);
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v6);
  }

  v13 = [(DOCActivity *)v15 actionPerformerProxy];
  v14 = [(DOCActivity *)v15 activityType];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __30__DOCActivity_performActivity__block_invoke;
  v16[3] = &unk_1E87839B8;
  v16[4] = v15;
  [v13 performAction:v14 withURLs:v3 completionHandler:v16];
}

- (void)initWithIdentifier:(uint64_t)a1 actionPerformer:(uint64_t)a2 forBrowserAction:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DOCActivity.m" lineNumber:148 description:{@"Invalid parameter not satisfying: %@", @"actionPerformer"}];
}

- (void)initWithIdentifier:(uint64_t)a1 actionPerformer:(uint64_t)a2 forBrowserAction:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DOCActivity.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

@end