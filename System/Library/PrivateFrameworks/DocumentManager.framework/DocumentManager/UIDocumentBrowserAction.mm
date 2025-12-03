@interface UIDocumentBrowserAction
- (BOOL)isEqual:(id)equal;
- (UIDocumentBrowserAction)initWithCoder:(id)coder;
- (UIDocumentBrowserAction)initWithIdentifier:(NSString *)identifier localizedTitle:(NSString *)localizedTitle availability:(UIDocumentBrowserActionAvailability)availability handler:(void *)handler;
- (UIDocumentBrowserAction)initWithIdentifier:(id)identifier localizedTitle:(id)title resolvedHandler:(id)handler;
- (UIDocumentBrowserAction)initWithIdentifier:(id)identifier localizedTitle:(id)title unresolvedHandler:(id)handler;
- (UIDocumentBrowserAction)initWithUIActionDescriptor:(id)descriptor providerDomain:(id)domain;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)commonInit;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIDocumentBrowserAction

- (void)commonInit
{
  v12[1] = *MEMORY[0x1E69E9840];
  identifier = [*MEMORY[0x1E6982E50] identifier];
  v12[0] = identifier;
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

- (UIDocumentBrowserAction)initWithIdentifier:(id)identifier localizedTitle:(id)title resolvedHandler:(id)handler
{
  identifierCopy = identifier;
  titleCopy = title;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = UIDocumentBrowserAction;
  v12 = [(UIDocumentBrowserAction *)&v18 init];
  v13 = v12;
  if (v12)
  {
    [(UIDocumentBrowserAction *)v12 commonInit];
    objc_storeStrong(&v13->_identifier, identifier);
    objc_storeStrong(&v13->_localizedTitle, title);
    v13->_requiresResolvedItems = 1;
    v14 = MEMORY[0x1E692E2E0](handlerCopy);
    resolvedHandler = v13->_resolvedHandler;
    v13->_resolvedHandler = v14;

    v16 = v13;
  }

  return v13;
}

- (UIDocumentBrowserAction)initWithUIActionDescriptor:(id)descriptor providerDomain:(id)domain
{
  descriptorCopy = descriptor;
  domainCopy = domain;
  v19.receiver = self;
  v19.super_class = UIDocumentBrowserAction;
  v9 = [(UIDocumentBrowserAction *)&v19 init];
  v10 = v9;
  if (v9)
  {
    [(UIDocumentBrowserAction *)v9 commonInit];
    identifier = [descriptorCopy identifier];
    identifier = v10->_identifier;
    v10->_identifier = identifier;

    displayName = [descriptorCopy displayName];
    localizedTitle = v10->_localizedTitle;
    v10->_localizedTitle = displayName;

    v10->_requiresResolvedItems = 0;
    objc_storeStrong(&v10->_uiActionDescriptor, descriptor);
    uiActionProviderIdentifier = [descriptorCopy uiActionProviderIdentifier];
    uiActionProviderIdentifier = v10->_uiActionProviderIdentifier;
    v10->_uiActionProviderIdentifier = uiActionProviderIdentifier;

    objc_storeStrong(&v10->_uiActionProviderDomain, domain);
    v17 = v10;
  }

  return v10;
}

- (UIDocumentBrowserAction)initWithIdentifier:(id)identifier localizedTitle:(id)title unresolvedHandler:(id)handler
{
  identifierCopy = identifier;
  titleCopy = title;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = UIDocumentBrowserAction;
  v12 = [(UIDocumentBrowserAction *)&v18 init];
  v13 = v12;
  if (v12)
  {
    [(UIDocumentBrowserAction *)v12 commonInit];
    objc_storeStrong(&v13->_identifier, identifier);
    objc_storeStrong(&v13->_localizedTitle, title);
    v13->_requiresResolvedItems = 0;
    v14 = MEMORY[0x1E692E2E0](handlerCopy);
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
  localizedTitle = [(UIDocumentBrowserAction *)self localizedTitle];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, localizedTitle];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [(UIDocumentBrowserAction *)self identifier];
    identifier2 = [equalCopy identifier];
    v7 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (UIDocumentBrowserAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = UIDocumentBrowserAction;
  v5 = [(UIDocumentBrowserAction *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(UIDocumentBrowserAction *)v5 setIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    [(UIDocumentBrowserAction *)v5 setLocalizedTitle:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedCompactTitle"];
    [(UIDocumentBrowserAction *)v5 setLocalizedCompactTitle:v8];

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"supportedContentTypes"];
    [(UIDocumentBrowserAction *)v5 setSupportedContentTypes:v12];

    -[UIDocumentBrowserAction setSupportsMultipleItems:](v5, "setSupportsMultipleItems:", [coderCopy decodeBoolForKey:@"supportsMultipleItems"]);
    -[UIDocumentBrowserAction setAvailability:](v5, "setAvailability:", [coderCopy decodeIntegerForKey:@"availability"]);
    -[UIDocumentBrowserAction setNavigationSide:](v5, "setNavigationSide:", [coderCopy decodeIntegerForKey:@"navigationSide"]);
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    [(UIDocumentBrowserAction *)v5 setImage:v13];

    -[UIDocumentBrowserAction setMenuSortOrder:](v5, "setMenuSortOrder:", [coderCopy decodeIntegerForKey:@"menuSortOrder"]);
    -[UIDocumentBrowserAction setRequiresResolvedItems:](v5, "setRequiresResolvedItems:", [coderCopy decodeBoolForKey:@"requiresResolvedItems"]);
    -[UIDocumentBrowserAction setRequiresVersioning:](v5, "setRequiresVersioning:", [coderCopy decodeBoolForKey:@"requiresVersioning"]);
    -[UIDocumentBrowserAction setRequiresFullyFormedItems:](v5, "setRequiresFullyFormedItems:", [coderCopy decodeBoolForKey:@"requiresFullyFormedItems"]);
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filteringPredicate"];
    [(UIDocumentBrowserAction *)v5 setFilteringPredicate:v14];

    -[UIDocumentBrowserAction setPerformActionExitsEditMode:](v5, "setPerformActionExitsEditMode:", [coderCopy decodeBoolForKey:@"performActionExitsEditMode"]);
    -[UIDocumentBrowserAction setActionStyle:](v5, "setActionStyle:", [coderCopy decodeIntegerForKey:@"actionStyle"]);
    -[UIDocumentBrowserAction setRequiresAuthentication:](v5, "setRequiresAuthentication:", [coderCopy decodeBoolForKey:@"requiresAuthentication"]);
    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(UIDocumentBrowserAction *)self identifier];

  if (identifier)
  {
    identifier2 = [(UIDocumentBrowserAction *)self identifier];
    [coderCopy encodeObject:identifier2 forKey:@"identifier"];
  }

  localizedTitle = [(UIDocumentBrowserAction *)self localizedTitle];

  if (localizedTitle)
  {
    localizedTitle2 = [(UIDocumentBrowserAction *)self localizedTitle];
    [coderCopy encodeObject:localizedTitle2 forKey:@"localizedTitle"];
  }

  localizedCompactTitle = [(UIDocumentBrowserAction *)self localizedCompactTitle];

  if (localizedCompactTitle)
  {
    localizedCompactTitle2 = [(UIDocumentBrowserAction *)self localizedCompactTitle];
    [coderCopy encodeObject:localizedCompactTitle2 forKey:@"localizedCompactTitle"];
  }

  supportedContentTypes = [(UIDocumentBrowserAction *)self supportedContentTypes];

  if (supportedContentTypes)
  {
    supportedContentTypes2 = [(UIDocumentBrowserAction *)self supportedContentTypes];
    [coderCopy encodeObject:supportedContentTypes2 forKey:@"supportedContentTypes"];
  }

  filteringPredicate = [(UIDocumentBrowserAction *)self filteringPredicate];

  if (filteringPredicate)
  {
    filteringPredicate2 = [(UIDocumentBrowserAction *)self filteringPredicate];
    [coderCopy encodeObject:filteringPredicate2 forKey:@"filteringPredicate"];
  }

  [coderCopy encodeBool:-[UIDocumentBrowserAction supportsMultipleItems](self forKey:{"supportsMultipleItems"), @"supportsMultipleItems"}];
  if ([(UIDocumentBrowserAction *)self availability])
  {
    [coderCopy encodeInteger:-[UIDocumentBrowserAction availability](self forKey:{"availability"), @"availability"}];
  }

  [coderCopy encodeInteger:-[UIDocumentBrowserAction navigationSide](self forKey:{"navigationSide"), @"navigationSide"}];
  image = [(UIDocumentBrowserAction *)self image];

  if (image)
  {
    image2 = [(UIDocumentBrowserAction *)self image];
    [coderCopy encodeObject:image2 forKey:@"image"];
  }

  [coderCopy encodeInteger:-[UIDocumentBrowserAction menuSortOrder](self forKey:{"menuSortOrder"), @"menuSortOrder"}];
  [coderCopy encodeBool:-[UIDocumentBrowserAction requiresResolvedItems](self forKey:{"requiresResolvedItems"), @"requiresResolvedItems"}];
  [coderCopy encodeBool:-[UIDocumentBrowserAction requiresVersioning](self forKey:{"requiresVersioning"), @"requiresVersioning"}];
  [coderCopy encodeBool:-[UIDocumentBrowserAction requiresFullyFormedItems](self forKey:{"requiresFullyFormedItems"), @"requiresFullyFormedItems"}];
  [coderCopy encodeBool:-[UIDocumentBrowserAction performActionExitsEditMode](self forKey:{"performActionExitsEditMode"), @"performActionExitsEditMode"}];
  [coderCopy encodeInteger:-[UIDocumentBrowserAction actionStyle](self forKey:{"actionStyle"), @"actionStyle"}];
  [coderCopy encodeBool:-[UIDocumentBrowserAction requiresAuthentication](self forKey:{"requiresAuthentication"), @"requiresAuthentication"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UIDocumentBrowserAction allocWithZone:zone];
  identifier = [(UIDocumentBrowserAction *)self identifier];
  v6 = [identifier copy];
  localizedTitle = [(UIDocumentBrowserAction *)self localizedTitle];
  v8 = [localizedTitle copy];
  resolvedHandler = [(UIDocumentBrowserAction *)self resolvedHandler];
  v10 = [resolvedHandler copy];
  v11 = [(UIDocumentBrowserAction *)v4 initWithIdentifier:v6 localizedTitle:v8 resolvedHandler:v10];

  if (v11)
  {
    image = [(UIDocumentBrowserAction *)self image];
    v13 = [image copy];
    [(UIDocumentBrowserAction *)v11 setImage:v13];

    localizedCompactTitle = [(UIDocumentBrowserAction *)self localizedCompactTitle];
    v15 = [localizedCompactTitle copy];
    [(UIDocumentBrowserAction *)v11 setLocalizedCompactTitle:v15];

    v16 = objc_alloc(MEMORY[0x1E695DEC8]);
    supportedContentTypes = [(UIDocumentBrowserAction *)self supportedContentTypes];
    v18 = [v16 initWithArray:supportedContentTypes copyItems:1];
    [(UIDocumentBrowserAction *)v11 setSupportedContentTypes:v18];

    [(UIDocumentBrowserAction *)v11 setSupportsMultipleItems:[(UIDocumentBrowserAction *)self supportsMultipleItems]];
    [(UIDocumentBrowserAction *)v11 setAvailability:[(UIDocumentBrowserAction *)self availability]];
    [(UIDocumentBrowserAction *)v11 setRequiresResolvedItems:[(UIDocumentBrowserAction *)self requiresResolvedItems]];
    unresolvedHandler = [(UIDocumentBrowserAction *)self unresolvedHandler];
    v20 = [unresolvedHandler copy];
    [(UIDocumentBrowserAction *)v11 setUnresolvedHandler:v20];

    [(UIDocumentBrowserAction *)v11 setNavigationSide:[(UIDocumentBrowserAction *)self navigationSide]];
    [(UIDocumentBrowserAction *)v11 setRequiresVersioning:[(UIDocumentBrowserAction *)self requiresVersioning]];
    [(UIDocumentBrowserAction *)v11 setRequiresFullyFormedItems:[(UIDocumentBrowserAction *)self requiresFullyFormedItems]];
    [(UIDocumentBrowserAction *)v11 setMenuSortOrder:[(UIDocumentBrowserAction *)self menuSortOrder]];
    filteringPredicate = [(UIDocumentBrowserAction *)self filteringPredicate];
    [(UIDocumentBrowserAction *)v11 setFilteringPredicate:filteringPredicate];

    [(UIDocumentBrowserAction *)v11 setPerformActionExitsEditMode:[(UIDocumentBrowserAction *)self performActionExitsEditMode]];
    [(UIDocumentBrowserAction *)v11 setActionStyle:[(UIDocumentBrowserAction *)self actionStyle]];
    [(UIDocumentBrowserAction *)v11 setRequiresAuthentication:[(UIDocumentBrowserAction *)self requiresAuthentication]];
  }

  return v11;
}

@end