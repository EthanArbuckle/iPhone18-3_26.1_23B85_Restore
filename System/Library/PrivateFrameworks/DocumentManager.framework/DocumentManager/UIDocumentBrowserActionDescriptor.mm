@interface UIDocumentBrowserActionDescriptor
- (UIDocumentBrowserActionDescriptor)initWithIdentifier:(id)a3 uiActionProviderIdentifier:(id)a4 fileProviderIdentifier:(id)a5 displayName:(id)a6 predicate:(id)a7 displayInline:(BOOL)a8;
@end

@implementation UIDocumentBrowserActionDescriptor

- (UIDocumentBrowserActionDescriptor)initWithIdentifier:(id)a3 uiActionProviderIdentifier:(id)a4 fileProviderIdentifier:(id)a5 displayName:(id)a6 predicate:(id)a7 displayInline:(BOOL)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = UIDocumentBrowserActionDescriptor;
  v18 = [(UIDocumentBrowserActionDescriptor *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, a3);
    objc_storeStrong(&v19->_displayName, a6);
    objc_storeStrong(&v19->_predicate, a7);
    objc_storeStrong(&v19->_uiActionProviderIdentifier, a4);
    objc_storeStrong(&v19->_fileProviderIdentifier, a5);
    v19->_displayInline = a8;
  }

  return v19;
}

@end