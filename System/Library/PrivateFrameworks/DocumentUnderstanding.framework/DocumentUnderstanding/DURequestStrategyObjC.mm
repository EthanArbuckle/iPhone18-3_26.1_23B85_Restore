@interface DURequestStrategyObjC
- (void)setContentType:(id)a3;
- (void)setModelIdentifier:(id)a3;
@end

@implementation DURequestStrategyObjC

- (void)setModelIdentifier:(id)a3
{
  v9 = objc_msgSend_copy(a3, a2, a3, v3, v4);
  objc_msgSend_setModelIdentifier_(self->_underlyingStrategy, v6, v9, v7, v8);
}

- (void)setContentType:(id)a3
{
  objc_storeStrong(&self->_objCContentType, a3);
  v5 = a3;
  v12 = objc_msgSend_typeForObjCType_(DUObjCCompatibilityUtils, v6, v5, v7, v8);
  objc_msgSend_setContentType_(self->_underlyingStrategy, v9, v12, v10, v11);
}

@end