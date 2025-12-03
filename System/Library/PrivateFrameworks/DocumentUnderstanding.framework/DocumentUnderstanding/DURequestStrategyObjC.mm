@interface DURequestStrategyObjC
- (void)setContentType:(id)type;
- (void)setModelIdentifier:(id)identifier;
@end

@implementation DURequestStrategyObjC

- (void)setModelIdentifier:(id)identifier
{
  v9 = objc_msgSend_copy(identifier, a2, identifier, v3, v4);
  objc_msgSend_setModelIdentifier_(self->_underlyingStrategy, v6, v9, v7, v8);
}

- (void)setContentType:(id)type
{
  objc_storeStrong(&self->_objCContentType, type);
  typeCopy = type;
  v12 = objc_msgSend_typeForObjCType_(DUObjCCompatibilityUtils, v6, typeCopy, v7, v8);
  objc_msgSend_setContentType_(self->_underlyingStrategy, v9, v12, v10, v11);
}

@end