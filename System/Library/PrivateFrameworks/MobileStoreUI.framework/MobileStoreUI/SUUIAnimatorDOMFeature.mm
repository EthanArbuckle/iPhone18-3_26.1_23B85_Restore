@interface SUUIAnimatorDOMFeature
+ (id)makeFeatureJSObjectForFeature:(id)feature;
- (IKAppContext)appContext;
- (SUUIAnimatorDOMFeature)initWithDOMNode:(id)node featureName:(id)name;
- (SUUIAnimatorDOMFeatureDelegate)delegate;
@end

@implementation SUUIAnimatorDOMFeature

- (SUUIAnimatorDOMFeature)initWithDOMNode:(id)node featureName:(id)name
{
  nodeCopy = node;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = SUUIAnimatorDOMFeature;
  v8 = [(SUUIAnimatorDOMFeature *)&v13 init];
  if (v8)
  {
    appContext = [nodeCopy appContext];
    objc_storeWeak(&v8->_appContext, appContext);

    v10 = [nameCopy copy];
    featureName = v8->_featureName;
    v8->_featureName = v10;
  }

  return v8;
}

+ (id)makeFeatureJSObjectForFeature:(id)feature
{
  featureCopy = feature;
  v4 = [SKJSUIAnimatorDOMFeature alloc];
  appContext = [featureCopy appContext];
  v6 = [(SKJSUIAnimatorDOMFeature *)v4 initWithAppContext:appContext DOMFeature:featureCopy];

  return v6;
}

- (IKAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

- (SUUIAnimatorDOMFeatureDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end