@interface CKBaseLayer
- (CKLayerDelegate)ckLayerDelegate;
- (void)layerDidBecomeVisible:(BOOL)visible;
@end

@implementation CKBaseLayer

- (void)layerDidBecomeVisible:(BOOL)visible
{
  visibleCopy = visible;
  v6.receiver = self;
  v6.super_class = CKBaseLayer;
  [(CKBaseLayer *)&v6 layerDidBecomeVisible:?];
  ckLayerDelegate = [(CKBaseLayer *)self ckLayerDelegate];
  [ckLayerDelegate ckLayerDidBecomeVisible:visibleCopy];
}

- (CKLayerDelegate)ckLayerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_ckLayerDelegate);

  return WeakRetained;
}

@end