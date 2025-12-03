@interface IMPluginDataSourceStagingContext
- (IMPluginDataSourceStagingContext)initWithTransientIdentifier:(id)identifier isEmbeddedInTextView:(BOOL)view;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMPluginDataSourceStagingContext

- (IMPluginDataSourceStagingContext)initWithTransientIdentifier:(id)identifier isEmbeddedInTextView:(BOOL)view
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = IMPluginDataSourceStagingContext;
  v8 = [(IMPluginDataSourceStagingContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_transientIdentifier, identifier);
    v9->_isEmbeddedInTextView = view;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [IMPluginDataSourceStagingContext alloc];
  v7 = objc_msgSend_transientIdentifier(self, v5, v6);
  isEmbeddedInTextView = objc_msgSend_isEmbeddedInTextView(self, v8, v9);
  v12 = objc_msgSend_initWithTransientIdentifier_isEmbeddedInTextView_(v4, v11, v7, isEmbeddedInTextView);

  return v12;
}

@end