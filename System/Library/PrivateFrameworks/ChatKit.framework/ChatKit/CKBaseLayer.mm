@interface CKBaseLayer
- (CKLayerDelegate)ckLayerDelegate;
- (void)layerDidBecomeVisible:(BOOL)a3;
@end

@implementation CKBaseLayer

- (void)layerDidBecomeVisible:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = CKBaseLayer;
  [(CKBaseLayer *)&v6 layerDidBecomeVisible:?];
  v5 = [(CKBaseLayer *)self ckLayerDelegate];
  [v5 ckLayerDidBecomeVisible:v3];
}

- (CKLayerDelegate)ckLayerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_ckLayerDelegate);

  return WeakRetained;
}

@end