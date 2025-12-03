@interface DOCActivity
+ (BOOL)isDestructiveActionIdentifier:(id)identifier;
+ (id)_activityWithIdentifier:(id)identifier forBrowserAction:(id)action actionPerformerProxy:(id)proxy;
+ (id)_imageNameForActivityIdentifier:(id)identifier;
+ (id)_titleForActivityIdentifier:(id)identifier;
+ (id)activityForBrowserAction:(id)action actionPerformerProxy:(id)proxy;
- (BOOL)canPerformWithActivityItems:(id)items;
- (DOCActivity)initWithIdentifier:(id)identifier actionPerformer:(id)performer forBrowserAction:(id)action;
- (void)performActivity;
- (void)validate;
@end

@implementation DOCActivity

+ (id)activityForBrowserAction:(id)action actionPerformerProxy:(id)proxy
{
  proxyCopy = proxy;
  actionCopy = action;
  identifier = [actionCopy identifier];
  v9 = [self _activityWithIdentifier:identifier forBrowserAction:actionCopy actionPerformerProxy:proxyCopy];

  return v9;
}

+ (id)_activityWithIdentifier:(id)identifier forBrowserAction:(id)action actionPerformerProxy:(id)proxy
{
  identifierCopy = identifier;
  actionCopy = action;
  proxyCopy = proxy;
  identifier = [actionCopy identifier];
  v12 = [self _activityStyleForActivityIdentifier:identifier];

  if (v12 == 1 || actionCopy && [actionCopy actionStyle] == 1)
  {
    v13 = off_1E8781CC8;
  }

  else
  {
    v13 = off_1E8781CA8;
  }

  v14 = [objc_alloc(*v13) initWithIdentifier:identifierCopy actionPerformer:proxyCopy forBrowserAction:actionCopy];

  return v14;
}

+ (BOOL)isDestructiveActionIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = @"com.apple.DocumentManager.action.trash";
  v8 = @"com.apple.DocumentManager.action.mixedDelete";
  v9 = @"com.apple.DocumentManager.action.delete";
  v3 = MEMORY[0x1E695DEC8];
  identifierCopy = identifier;
  v5 = [v3 arrayWithObjects:&v7 count:3];
  LOBYTE(v3) = [v5 containsObject:{identifierCopy, v7, v8, v9, v10}];

  return v3;
}

+ (id)_imageNameForActivityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (@"com.apple.DocumentManager.action.copySharedLink" == identifierCopy)
  {
    v5 = @"square.and.arrow.up";
  }

  else if (@"com.apple.DocumentManager.action.copy" == identifierCopy)
  {
    v5 = @"doc.on.doc";
  }

  else if (@"com.apple.DocumentManager.action.archive" == identifierCopy || @"com.apple.DocumentManager.action.unarchive" == identifierCopy)
  {
    v5 = @"archivebox";
  }

  else if (@"com.apple.DocumentManager.action.rename" == identifierCopy)
  {
    v5 = @"pencil";
  }

  else if (@"com.apple.DocumentManager.action.duplicate" == identifierCopy)
  {
    v5 = @"plus.square.on.square";
  }

  else if (@"com.apple.DocumentManager.action.move" == identifierCopy)
  {
    v5 = @"folder";
  }

  else if (@"com.apple.DocumentManager.action.trash" == identifierCopy)
  {
    v5 = @"trash";
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_titleForActivityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (@"com.apple.DocumentManager.action.copySharedLink" == identifierCopy)
  {
    v6 = _DocumentManagerBundle();
    v7 = v6;
    v8 = @"Copy Link [Action Sheet]";
    v9 = @"Copy Link";
  }

  else if (@"com.apple.DocumentManager.action.copy" == identifierCopy)
  {
    v6 = _DocumentManagerBundle();
    v7 = v6;
    v8 = @"Copy [Action Sheet]";
    v9 = @"Copy";
  }

  else if (@"com.apple.DocumentManager.action.archive" == identifierCopy)
  {
    v6 = _DocumentManagerBundle();
    v7 = v6;
    v8 = @"Compress [Action Sheet]";
    v9 = @"Compress";
  }

  else if (@"com.apple.DocumentManager.action.unarchive" == identifierCopy)
  {
    v6 = _DocumentManagerBundle();
    v7 = v6;
    v8 = @"Uncompress [Action Sheet]";
    v9 = @"Uncompress";
  }

  else if (@"com.apple.DocumentManager.action.rename" == identifierCopy)
  {
    v6 = _DocumentManagerBundle();
    v7 = v6;
    v8 = @"Rename [Action Sheet]";
    v9 = @"Rename";
  }

  else if (@"com.apple.DocumentManager.action.duplicate" == identifierCopy)
  {
    v6 = _DocumentManagerBundle();
    v7 = v6;
    v8 = @"Duplicate [Action Sheet]";
    v9 = @"Duplicate";
  }

  else if (@"com.apple.DocumentManager.action.move" == identifierCopy)
  {
    v6 = _DocumentManagerBundle();
    v7 = v6;
    v8 = @"Move [Action Sheet]";
    v9 = @"Move";
  }

  else
  {
    if (@"com.apple.DocumentManager.action.trash" != identifierCopy)
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

- (DOCActivity)initWithIdentifier:(id)identifier actionPerformer:(id)performer forBrowserAction:(id)action
{
  identifierCopy = identifier;
  performerCopy = performer;
  actionCopy = action;
  if (performerCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [DOCActivity initWithIdentifier:a2 actionPerformer:self forBrowserAction:?];
    if (identifierCopy)
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
    objc_storeStrong(&v12->_actionPerformerProxy, performer);
    if (actionCopy)
    {
      identifier = [actionCopy identifier];
      v15 = [identifier copy];
      identifier = v13->_identifier;
      v13->_identifier = v15;
    }

    else
    {
      v17 = identifierCopy;
      identifier = v13->_identifier;
      v13->_identifier = v17;
    }

    v18 = [objc_opt_class() _imageNameForActivityIdentifier:identifierCopy];
    imageName = v13->_imageName;
    v13->_imageName = v18;

    if (actionCopy && !v13->_imageName)
    {
      image = [actionCopy image];
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      traitCollection = [mainScreen traitCollection];
      preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
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

      v33 = [image imageWithConfiguration:v32];
      image = v13->_image;
      v13->_image = v33;
    }

    v35 = [objc_opt_class() _titleForActivityIdentifier:identifierCopy];
    localizedTitle = v13->_localizedTitle;
    v13->_localizedTitle = v35;

    v37 = [(NSString *)v13->_localizedTitle length];
    if (actionCopy && !v37)
    {
      localizedTitle = [actionCopy localizedTitle];
      v39 = v13->_localizedTitle;
      v13->_localizedTitle = localizedTitle;
    }

    [(DOCActivity *)v13 validate];
  }

  return v13;
}

- (void)validate
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(self + 152);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1E57D8000, a2, OS_LOG_TYPE_DEBUG, "Unable to get localized title for activity with identifier %@", &v3, 0xCu);
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  itemsCopy = items;
  v4 = [itemsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(itemsCopy);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [itemsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  items = [(DOCActivity *)self items];
  v5 = [items countByEnumeratingWithState:&v18 objects:v26 count:16];
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
          objc_enumerationMutation(items);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        v17 = 0;
        v10 = [MEMORY[0x1E6967408] wrapperWithURL:v9 readonly:0 error:&v17];
        v11 = v17;
        if (v10)
        {
          [array addObject:v10];
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
      v6 = [items countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v6);
  }

  actionPerformerProxy = [(DOCActivity *)selfCopy actionPerformerProxy];
  activityType = [(DOCActivity *)selfCopy activityType];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __30__DOCActivity_performActivity__block_invoke;
  v16[3] = &unk_1E87839B8;
  v16[4] = selfCopy;
  [actionPerformerProxy performAction:activityType withURLs:array completionHandler:v16];
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