@interface UIDocumentBrowserAction
- (BOOL)isEqual:(id)a3;
- (UIDocumentBrowserAction)initWithCoder:(id)a3;
- (UIDocumentBrowserAction)initWithIdentifier:(NSString *)identifier localizedTitle:(NSString *)localizedTitle availability:(UIDocumentBrowserActionAvailability)availability handler:(void *)handler;
- (UIDocumentBrowserAction)initWithIdentifier:(id)a3 localizedTitle:(id)a4 resolvedHandler:(id)a5;
- (UIDocumentBrowserAction)initWithIdentifier:(id)a3 localizedTitle:(id)a4 unresolvedHandler:(id)a5;
- (UIDocumentBrowserAction)initWithUIActionDescriptor:(id)a3 providerDomain:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)commonInit;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIDocumentBrowserAction

- (void)commonInit
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [*MEMORY[0x1E6982E50] identifier];
  v12[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  supportedContentTypes = self->_supportedContentTypes;
  self->_supportedContentTypes = v4;

  self->_supportsMultipleItems = 1;
  self->_availability = 1;
  *&self->_requiresFullyFormedItems = 1;
  self->_navigationSide = 2;
  self->_menuSortOrder = 33;
  uiActionDescriptor = self->_uiActionDescriptor;
  self->_uiActionDescriptor = 0;

  image = self->_image;
  self->_image = 0;

  imageOnlyForContextMenu = self->_imageOnlyForContextMenu;
  self->_imageOnlyForContextMenu = 0;

  unresolvedHandler = self->_unresolvedHandler;
  self->_unresolvedHandler = 0;

  v10 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  filteringPredicate = self->_filteringPredicate;
  self->_filteringPredicate = v10;

  self->_style = 0;
  *&self->_performActionExitsEditMode = 257;
  self->_actionStyle = 0;
}

- (UIDocumentBrowserAction)initWithIdentifier:(NSString *)identifier localizedTitle:(NSString *)localizedTitle availability:(UIDocumentBrowserActionAvailability)availability handler:(void *)handler
{
  v11 = identifier;
  v12 = localizedTitle;
  v13 = handler;
  v24.receiver = self;
  v24.super_class = UIDocumentBrowserAction;
  v14 = [(UIDocumentBrowserAction *)&v24 init];
  v15 = v14;
  if (v14)
  {
    [(UIDocumentBrowserAction *)v14 commonInit];
    objc_storeStrong(&v15->_identifier, identifier);
    objc_storeStrong(&v15->_localizedTitle, localizedTitle);
    v15->_availability = availability;
    v15->_requiresResolvedItems = 1;
    v16 = MEMORY[0x1E692E2E0](v13);
    v17 = v15->_handler;
    v15->_handler = v16;

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __82__UIDocumentBrowserAction_initWithIdentifier_localizedTitle_availability_handler___block_invoke;
    v22[3] = &unk_1E8783298;
    v23 = v13;
    v18 = MEMORY[0x1E692E2E0](v22);
    resolvedHandler = v15->_resolvedHandler;
    v15->_resolvedHandler = v18;

    v20 = v15;
  }

  return v15;
}

void __82__UIDocumentBrowserAction_initWithIdentifier_localizedTitle_availability_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [DOCItemBookmark documentsURLsForItemBookmarks:a2];
  (*(v2 + 16))(v2, v3);
}

- (UIDocumentBrowserAction)initWithIdentifier:(id)a3 localizedTitle:(id)a4 resolvedHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = UIDocumentBrowserAction;
  v12 = [(UIDocumentBrowserAction *)&v18 init];
  v13 = v12;
  if (v12)
  {
    [(UIDocumentBrowserAction *)v12 commonInit];
    objc_storeStrong(&v13->_identifier, a3);
    objc_storeStrong(&v13->_localizedTitle, a4);
    v13->_requiresResolvedItems = 1;
    v14 = MEMORY[0x1E692E2E0](v11);
    resolvedHandler = v13->_resolvedHandler;
    v13->_resolvedHandler = v14;

    v16 = v13;
  }

  return v13;
}

- (UIDocumentBrowserAction)initWithUIActionDescriptor:(id)a3 providerDomain:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = UIDocumentBrowserAction;
  v9 = [(UIDocumentBrowserAction *)&v19 init];
  v10 = v9;
  if (v9)
  {
    [(UIDocumentBrowserAction *)v9 commonInit];
    v11 = [v7 identifier];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [v7 displayName];
    localizedTitle = v10->_localizedTitle;
    v10->_localizedTitle = v13;

    v10->_requiresResolvedItems = 0;
    objc_storeStrong(&v10->_uiActionDescriptor, a3);
    v15 = [v7 uiActionProviderIdentifier];
    uiActionProviderIdentifier = v10->_uiActionProviderIdentifier;
    v10->_uiActionProviderIdentifier = v15;

    objc_storeStrong(&v10->_uiActionProviderDomain, a4);
    v17 = v10;
  }

  return v10;
}

- (UIDocumentBrowserAction)initWithIdentifier:(id)a3 localizedTitle:(id)a4 unresolvedHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = UIDocumentBrowserAction;
  v12 = [(UIDocumentBrowserAction *)&v18 init];
  v13 = v12;
  if (v12)
  {
    [(UIDocumentBrowserAction *)v12 commonInit];
    objc_storeStrong(&v13->_identifier, a3);
    objc_storeStrong(&v13->_localizedTitle, a4);
    v13->_requiresResolvedItems = 0;
    v14 = MEMORY[0x1E692E2E0](v11);
    unresolvedHandler = v13->_unresolvedHandler;
    v13->_unresolvedHandler = v14;

    v16 = v13;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = UIDocumentBrowserAction;
  v4 = [(UIDocumentBrowserAction *)&v8 description];
  v5 = [(UIDocumentBrowserAction *)self localizedTitle];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UIDocumentBrowserAction *)self identifier];
    v6 = [v4 identifier];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (UIDocumentBrowserAction)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = UIDocumentBrowserAction;
  v5 = [(UIDocumentBrowserAction *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(UIDocumentBrowserAction *)v5 setIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    [(UIDocumentBrowserAction *)v5 setLocalizedTitle:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedCompactTitle"];
    [(UIDocumentBrowserAction *)v5 setLocalizedCompactTitle:v8];

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"supportedContentTypes"];
    [(UIDocumentBrowserAction *)v5 setSupportedContentTypes:v12];

    -[UIDocumentBrowserAction setSupportsMultipleItems:](v5, "setSupportsMultipleItems:", [v4 decodeBoolForKey:@"supportsMultipleItems"]);
    -[UIDocumentBrowserAction setAvailability:](v5, "setAvailability:", [v4 decodeIntegerForKey:@"availability"]);
    -[UIDocumentBrowserAction setNavigationSide:](v5, "setNavigationSide:", [v4 decodeIntegerForKey:@"navigationSide"]);
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    [(UIDocumentBrowserAction *)v5 setImage:v13];

    -[UIDocumentBrowserAction setMenuSortOrder:](v5, "setMenuSortOrder:", [v4 decodeIntegerForKey:@"menuSortOrder"]);
    -[UIDocumentBrowserAction setRequiresResolvedItems:](v5, "setRequiresResolvedItems:", [v4 decodeBoolForKey:@"requiresResolvedItems"]);
    -[UIDocumentBrowserAction setRequiresVersioning:](v5, "setRequiresVersioning:", [v4 decodeBoolForKey:@"requiresVersioning"]);
    -[UIDocumentBrowserAction setRequiresFullyFormedItems:](v5, "setRequiresFullyFormedItems:", [v4 decodeBoolForKey:@"requiresFullyFormedItems"]);
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"filteringPredicate"];
    [(UIDocumentBrowserAction *)v5 setFilteringPredicate:v14];

    -[UIDocumentBrowserAction setPerformActionExitsEditMode:](v5, "setPerformActionExitsEditMode:", [v4 decodeBoolForKey:@"performActionExitsEditMode"]);
    -[UIDocumentBrowserAction setActionStyle:](v5, "setActionStyle:", [v4 decodeIntegerForKey:@"actionStyle"]);
    -[UIDocumentBrowserAction setRequiresAuthentication:](v5, "setRequiresAuthentication:", [v4 decodeBoolForKey:@"requiresAuthentication"]);
    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v16 = a3;
  v4 = [(UIDocumentBrowserAction *)self identifier];

  if (v4)
  {
    v5 = [(UIDocumentBrowserAction *)self identifier];
    [v16 encodeObject:v5 forKey:@"identifier"];
  }

  v6 = [(UIDocumentBrowserAction *)self localizedTitle];

  if (v6)
  {
    v7 = [(UIDocumentBrowserAction *)self localizedTitle];
    [v16 encodeObject:v7 forKey:@"localizedTitle"];
  }

  v8 = [(UIDocumentBrowserAction *)self localizedCompactTitle];

  if (v8)
  {
    v9 = [(UIDocumentBrowserAction *)self localizedCompactTitle];
    [v16 encodeObject:v9 forKey:@"localizedCompactTitle"];
  }

  v10 = [(UIDocumentBrowserAction *)self supportedContentTypes];

  if (v10)
  {
    v11 = [(UIDocumentBrowserAction *)self supportedContentTypes];
    [v16 encodeObject:v11 forKey:@"supportedContentTypes"];
  }

  v12 = [(UIDocumentBrowserAction *)self filteringPredicate];

  if (v12)
  {
    v13 = [(UIDocumentBrowserAction *)self filteringPredicate];
    [v16 encodeObject:v13 forKey:@"filteringPredicate"];
  }

  [v16 encodeBool:-[UIDocumentBrowserAction supportsMultipleItems](self forKey:{"supportsMultipleItems"), @"supportsMultipleItems"}];
  if ([(UIDocumentBrowserAction *)self availability])
  {
    [v16 encodeInteger:-[UIDocumentBrowserAction availability](self forKey:{"availability"), @"availability"}];
  }

  [v16 encodeInteger:-[UIDocumentBrowserAction navigationSide](self forKey:{"navigationSide"), @"navigationSide"}];
  v14 = [(UIDocumentBrowserAction *)self image];

  if (v14)
  {
    v15 = [(UIDocumentBrowserAction *)self image];
    [v16 encodeObject:v15 forKey:@"image"];
  }

  [v16 encodeInteger:-[UIDocumentBrowserAction menuSortOrder](self forKey:{"menuSortOrder"), @"menuSortOrder"}];
  [v16 encodeBool:-[UIDocumentBrowserAction requiresResolvedItems](self forKey:{"requiresResolvedItems"), @"requiresResolvedItems"}];
  [v16 encodeBool:-[UIDocumentBrowserAction requiresVersioning](self forKey:{"requiresVersioning"), @"requiresVersioning"}];
  [v16 encodeBool:-[UIDocumentBrowserAction requiresFullyFormedItems](self forKey:{"requiresFullyFormedItems"), @"requiresFullyFormedItems"}];
  [v16 encodeBool:-[UIDocumentBrowserAction performActionExitsEditMode](self forKey:{"performActionExitsEditMode"), @"performActionExitsEditMode"}];
  [v16 encodeInteger:-[UIDocumentBrowserAction actionStyle](self forKey:{"actionStyle"), @"actionStyle"}];
  [v16 encodeBool:-[UIDocumentBrowserAction requiresAuthentication](self forKey:{"requiresAuthentication"), @"requiresAuthentication"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UIDocumentBrowserAction allocWithZone:a3];
  v5 = [(UIDocumentBrowserAction *)self identifier];
  v6 = [v5 copy];
  v7 = [(UIDocumentBrowserAction *)self localizedTitle];
  v8 = [v7 copy];
  v9 = [(UIDocumentBrowserAction *)self resolvedHandler];
  v10 = [v9 copy];
  v11 = [(UIDocumentBrowserAction *)v4 initWithIdentifier:v6 localizedTitle:v8 resolvedHandler:v10];

  if (v11)
  {
    v12 = [(UIDocumentBrowserAction *)self image];
    v13 = [v12 copy];
    [(UIDocumentBrowserAction *)v11 setImage:v13];

    v14 = [(UIDocumentBrowserAction *)self localizedCompactTitle];
    v15 = [v14 copy];
    [(UIDocumentBrowserAction *)v11 setLocalizedCompactTitle:v15];

    v16 = objc_alloc(MEMORY[0x1E695DEC8]);
    v17 = [(UIDocumentBrowserAction *)self supportedContentTypes];
    v18 = [v16 initWithArray:v17 copyItems:1];
    [(UIDocumentBrowserAction *)v11 setSupportedContentTypes:v18];

    [(UIDocumentBrowserAction *)v11 setSupportsMultipleItems:[(UIDocumentBrowserAction *)self supportsMultipleItems]];
    [(UIDocumentBrowserAction *)v11 setAvailability:[(UIDocumentBrowserAction *)self availability]];
    [(UIDocumentBrowserAction *)v11 setRequiresResolvedItems:[(UIDocumentBrowserAction *)self requiresResolvedItems]];
    v19 = [(UIDocumentBrowserAction *)self unresolvedHandler];
    v20 = [v19 copy];
    [(UIDocumentBrowserAction *)v11 setUnresolvedHandler:v20];

    [(UIDocumentBrowserAction *)v11 setNavigationSide:[(UIDocumentBrowserAction *)self navigationSide]];
    [(UIDocumentBrowserAction *)v11 setRequiresVersioning:[(UIDocumentBrowserAction *)self requiresVersioning]];
    [(UIDocumentBrowserAction *)v11 setRequiresFullyFormedItems:[(UIDocumentBrowserAction *)self requiresFullyFormedItems]];
    [(UIDocumentBrowserAction *)v11 setMenuSortOrder:[(UIDocumentBrowserAction *)self menuSortOrder]];
    v21 = [(UIDocumentBrowserAction *)self filteringPredicate];
    [(UIDocumentBrowserAction *)v11 setFilteringPredicate:v21];

    [(UIDocumentBrowserAction *)v11 setPerformActionExitsEditMode:[(UIDocumentBrowserAction *)self performActionExitsEditMode]];
    [(UIDocumentBrowserAction *)v11 setActionStyle:[(UIDocumentBrowserAction *)self actionStyle]];
    [(UIDocumentBrowserAction *)v11 setRequiresAuthentication:[(UIDocumentBrowserAction *)self requiresAuthentication]];
  }

  return v11;
}

@end