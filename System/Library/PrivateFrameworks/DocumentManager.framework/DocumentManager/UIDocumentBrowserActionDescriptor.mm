@interface UIDocumentBrowserActionDescriptor
- (UIDocumentBrowserActionDescriptor)initWithIdentifier:(id)identifier uiActionProviderIdentifier:(id)providerIdentifier fileProviderIdentifier:(id)fileProviderIdentifier displayName:(id)name predicate:(id)predicate displayInline:(BOOL)inline;
@end

@implementation UIDocumentBrowserActionDescriptor

- (UIDocumentBrowserActionDescriptor)initWithIdentifier:(id)identifier uiActionProviderIdentifier:(id)providerIdentifier fileProviderIdentifier:(id)fileProviderIdentifier displayName:(id)name predicate:(id)predicate displayInline:(BOOL)inline
{
  identifierCopy = identifier;
  providerIdentifierCopy = providerIdentifier;
  fileProviderIdentifierCopy = fileProviderIdentifier;
  nameCopy = name;
  predicateCopy = predicate;
  v23.receiver = self;
  v23.super_class = UIDocumentBrowserActionDescriptor;
  v18 = [(UIDocumentBrowserActionDescriptor *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, identifier);
    objc_storeStrong(&v19->_displayName, name);
    objc_storeStrong(&v19->_predicate, predicate);
    objc_storeStrong(&v19->_uiActionProviderIdentifier, providerIdentifier);
    objc_storeStrong(&v19->_fileProviderIdentifier, fileProviderIdentifier);
    v19->_displayInline = inline;
  }

  return v19;
}

@end