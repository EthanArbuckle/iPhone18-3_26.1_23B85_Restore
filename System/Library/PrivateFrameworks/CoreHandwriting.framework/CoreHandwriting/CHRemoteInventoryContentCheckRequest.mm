@interface CHRemoteInventoryContentCheckRequest
- (CHRemoteInventoryContentCheckRequest)initWithCoder:(id)coder;
- (CHRemoteInventoryContentCheckRequest)initWithStrokeIdentifiers:(id)identifiers;
@end

@implementation CHRemoteInventoryContentCheckRequest

- (CHRemoteInventoryContentCheckRequest)initWithStrokeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v14.receiver = self;
  v14.super_class = CHRemoteInventoryContentCheckRequest;
  v10 = [(CHRemoteInventoryContentCheckRequest *)&v14 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(identifiersCopy, v5, v6, v7, v8, v9);
    strokeIdentifiers = v10->_strokeIdentifiers;
    v10->_strokeIdentifiers = v11;
  }

  return v10;
}

- (CHRemoteInventoryContentCheckRequest)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v12 = objc_msgSend_setWithObjects_(v4, v8, v6, v9, v10, v11, v7, 0);
  v16 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v13, v12, @"strokeIdentifiers", v14, v15);

  strokeIdentifiers = self->_strokeIdentifiers;
  self->_strokeIdentifiers = v16;

  return self;
}

@end