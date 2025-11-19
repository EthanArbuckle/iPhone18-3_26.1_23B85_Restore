@interface IKAppBrowserBridge
+ (id)makeFeatureJSObjectForFeature:(id)a3;
- (IKAppBrowser)appBrowser;
- (IKAppBrowserBridge)initWithDOMNode:(id)a3 featureName:(id)a4;
- (IKAppContext)appContext;
- (UIEdgeInsets)maskInset;
- (void)present;
@end

@implementation IKAppBrowserBridge

+ (id)makeFeatureJSObjectForFeature:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (v3 && (isKindOfClass & 1) != 0)
  {
    v6 = v3;
    v7 = [IKJSBrowser alloc];
    v8 = [v6 appContext];
    v5 = [(IKJSObject *)v7 initWithAppContext:v8];

    [(IKJSBrowser *)v5 setBridge:v6];
  }

  return v5;
}

- (IKAppBrowserBridge)initWithDOMNode:(id)a3 featureName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = IKAppBrowserBridge;
  v8 = [(IKAppBrowserBridge *)&v13 init];
  if (v8)
  {
    v9 = [v6 appContext];
    objc_storeWeak(v8 + 3, v9);

    v10 = [v7 copy];
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
  v3 = [(IKAppBrowserBridge *)self appBrowser];
  [(IKAppBrowserBridge *)self cornerRadius];
  v5 = v4;
  [(IKAppBrowserBridge *)self interitemSpacing];
  v7 = v6;
  [(IKAppBrowserBridge *)self maskInset];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(IKAppBrowserBridge *)self appContext];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __29__IKAppBrowserBridge_present__block_invoke;
  v18[3] = &unk_2797997B8;
  v19 = v3;
  v20 = v5;
  v21 = v7;
  v22 = v9;
  v23 = v11;
  v24 = v13;
  v25 = v15;
  v17 = v3;
  [v16 evaluateDelegateBlockSync:v18];
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