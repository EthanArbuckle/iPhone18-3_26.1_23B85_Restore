@interface SKJSUIAnimatorDOMFeature
- (SKJSUIAnimatorDOMFeature)initWithAppContext:(id)a3 DOMFeature:(id)a4;
- (void)animate:(id)a3 :(id)a4;
@end

@implementation SKJSUIAnimatorDOMFeature

- (SKJSUIAnimatorDOMFeature)initWithAppContext:(id)a3 DOMFeature:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = SKJSUIAnimatorDOMFeature;
  v7 = [(IKJSObject *)&v10 initWithAppContext:a3];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_feature, v6);
  }

  return v8;
}

- (void)animate:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SKJSUIAnimatorDOMFeature_animate::__block_invoke;
  block[3] = &unk_2798F5BC0;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __37__SKJSUIAnimatorDOMFeature_animate::__block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  v4 = [WeakRetained delegate];

  if (v4)
  {
    v3 = objc_loadWeakRetained((a1[4] + 24));
    [v4 animatorFeature:v3 performAnimationWithName:a1[5] options:a1[6]];
  }
}

@end