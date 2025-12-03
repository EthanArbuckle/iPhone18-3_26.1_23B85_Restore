@interface IKAppBrowserBridge
+ (id)makeFeatureJSObjectForFeature:(id)feature;
- (IKAppBrowser)appBrowser;
- (IKAppBrowserBridge)initWithDOMNode:(id)node featureName:(id)name;
- (IKAppContext)appContext;
- (UIEdgeInsets)maskInset;
- (void)present;
@end

@implementation IKAppBrowserBridge

+ (id)makeFeatureJSObjectForFeature:(id)feature
{
  featureCopy = feature;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (featureCopy && (isKindOfClass & 1) != 0)
  {
    v6 = featureCopy;
    v7 = [IKJSBrowser alloc];
    appContext = [v6 appContext];
    v5 = [(IKJSObject *)v7 initWithAppContext:appContext];

    [(IKJSBrowser *)v5 setBridge:v6];
  }

  return v5;
}

- (IKAppBrowserBridge)initWithDOMNode:(id)node featureName:(id)name
{
  nodeCopy = node;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = IKAppBrowserBridge;
  v8 = [(IKAppBrowserBridge *)&v13 init];
  if (v8)
  {
    appContext = [nodeCopy appContext];
    objc_storeWeak(v8 + 3, appContext);

    v10 = [nameCopy copy];
    v11 = *(v8 + 4);
    *(v8 + 4) = v10;

    *(v8 + 8) = xmmword_254A68FE0;
    *(v8 + 3) = xmmword_254A68FF0;
    *(v8 + 4) = xmmword_254A69000;
  }

  return v8;
}

- (void)present
{
  appBrowser = [(IKAppBrowserBridge *)self appBrowser];
  [(IKAppBrowserBridge *)self cornerRadius];
  v5 = v4;
  [(IKAppBrowserBridge *)self interitemSpacing];
  v7 = v6;
  [(IKAppBrowserBridge *)self maskInset];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  appContext = [(IKAppBrowserBridge *)self appContext];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __29__IKAppBrowserBridge_present__block_invoke;
  v18[3] = &unk_2797997B8;
  v19 = appBrowser;
  v20 = v5;
  v21 = v7;
  v22 = v9;
  v23 = v11;
  v24 = v13;
  v25 = v15;
  v17 = appBrowser;
  [appContext evaluateDelegateBlockSync:v18];
}

uint64_t __29__IKAppBrowserBridge_present__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCornerRadius:*(a1 + 40)];
  [*(a1 + 32) setInteritemSpacing:*(a1 + 48)];
  [*(a1 + 32) setMaskInset:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v2 = *(a1 + 32);

  return [v2 present];
}

- (UIEdgeInsets)maskInset
{
  top = self->_maskInset.top;
  left = self->_maskInset.left;
  bottom = self->_maskInset.bottom;
  right = self->_maskInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (IKAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

- (IKAppBrowser)appBrowser
{
  WeakRetained = objc_loadWeakRetained(&self->_appBrowser);

  return WeakRetained;
}

@end