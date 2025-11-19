@interface CKXAtomBindingImplementation
- (CKXAtomBindingImplementation)init;
- (Class)mutableProxyClassForStructToken:(unint64_t)a3;
- (Class)proxyClassForStructToken:(unint64_t)a3;
- (id)orcHelpers;
- (unint64_t)structTokenForClass:(Class)a3;
@end

@implementation CKXAtomBindingImplementation

- (CKXAtomBindingImplementation)init
{
  v6.receiver = self;
  v6.super_class = CKXAtomBindingImplementation;
  v2 = [(CKXAtomBindingImplementation *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    schema = v2->_schema;
    v2->_schema = v3;
  }

  return v2;
}

- (unint64_t)structTokenForClass:(Class)a3
{
  if (objc_opt_class() == a3 || objc_opt_class() == a3)
  {
    return self->tokens.siteIdentifier;
  }

  if (objc_opt_class() == a3 || objc_opt_class() == a3)
  {
    return self->tokens.timestamp;
  }

  if (objc_opt_class() == a3 || objc_opt_class() == a3)
  {
    return self->tokens.location;
  }

  if (objc_opt_class() == a3 || objc_opt_class() == a3)
  {
    return self->tokens.reference;
  }

  if (objc_opt_class() == a3 || objc_opt_class() == a3)
  {
    return self->tokens.atom;
  }

  if (objc_opt_class() == a3 || objc_opt_class() == a3)
  {
    return self->tokens.topLevelContainer;
  }

  v12 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7, v8, v9, v10, v11);
  v13 = NSStringFromClass(a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v14, a2, self, @"CKAtomSerialization.mm", 90, @"Unexpected class %@", v13);

  return -1;
}

- (Class)proxyClassForStructToken:(unint64_t)a3
{
  if (self->tokens.siteIdentifier == a3 || self->tokens.timestamp == a3 || self->tokens.location == a3 || self->tokens.reference == a3 || self->tokens.atom == a3 || self->tokens.topLevelContainer == a3)
  {
    v9 = objc_opt_class();
  }

  else
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, v3, v4, v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CKAtomSerialization.mm", 108, @"Unexpected struct token %ld", a3);

    v9 = 0;
  }

  return v9;
}

- (Class)mutableProxyClassForStructToken:(unint64_t)a3
{
  if (self->tokens.siteIdentifier == a3 || self->tokens.timestamp == a3 || self->tokens.location == a3 || self->tokens.reference == a3 || self->tokens.atom == a3 || self->tokens.topLevelContainer == a3)
  {
    v9 = objc_opt_class();
  }

  else
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, v3, v4, v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CKAtomSerialization.mm", 126, @"Unexpected struct token %ld", a3);

    v9 = 0;
  }

  return v9;
}

- (id)orcHelpers
{
  v9 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2, v3, v4, v5, v6);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CKAtomSerialization.mm", 131, @"Should be implemented by subclass");

  return 0;
}

@end