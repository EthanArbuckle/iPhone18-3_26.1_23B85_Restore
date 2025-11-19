@interface SUUIAnimatorDOMFeature
+ (id)makeFeatureJSObjectForFeature:(id)a3;
- (IKAppContext)appContext;
- (SUUIAnimatorDOMFeature)initWithDOMNode:(id)a3 featureName:(id)a4;
- (SUUIAnimatorDOMFeatureDelegate)delegate;
@end

@implementation SUUIAnimatorDOMFeature

- (SUUIAnimatorDOMFeature)initWithDOMNode:(id)a3 featureName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = SUUIAnimatorDOMFeature;
  v8 = [(SUUIAnimatorDOMFeature *)&v13 init];
  if (v8)
  {
    v9 = [v6 appContext];
    objc_storeWeak(&v8->_appContext, v9);

    v10 = [v7 copy];
    featureName = v8->_featureName;
    v8->_featureName = v10;
  }

  return v8;
}

+ (id)makeFeatureJSObjectForFeature:(id)a3
{
  v3 = a3;
  v4 = [SKJSUIAnimatorDOMFeature alloc];
  v5 = [v3 appContext];
  v6 = [(SKJSUIAnimatorDOMFeature *)v4 initWithAppContext:v5 DOMFeature:v3];

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