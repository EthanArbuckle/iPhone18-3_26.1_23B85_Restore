@interface IMPluginDataSourceStagingContext
- (IMPluginDataSourceStagingContext)initWithTransientIdentifier:(id)a3 isEmbeddedInTextView:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation IMPluginDataSourceStagingContext

- (IMPluginDataSourceStagingContext)initWithTransientIdentifier:(id)a3 isEmbeddedInTextView:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = IMPluginDataSourceStagingContext;
  v8 = [(IMPluginDataSourceStagingContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_transientIdentifier, a3);
    v9->_isEmbeddedInTextView = a4;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [IMPluginDataSourceStagingContext alloc];
  v7 = objc_msgSend_transientIdentifier(self, v5, v6);
  isEmbeddedInTextView = objc_msgSend_isEmbeddedInTextView(self, v8, v9);
  v12 = objc_msgSend_initWithTransientIdentifier_isEmbeddedInTextView_(v4, v11, v7, isEmbeddedInTextView);

  return v12;
}

@end