@interface CKDDeferredRelinquishPlaceholder
- (CKDDeferredRelinquishPlaceholder)initWithExistingWaiter:(id)a3;
- (NSString)description;
- (id)ckShortDescription;
@end

@implementation CKDDeferredRelinquishPlaceholder

- (CKDDeferredRelinquishPlaceholder)initWithExistingWaiter:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CKDDeferredRelinquishPlaceholder;
  v7 = [(CKDDeferredRelinquishPlaceholder *)&v13 init];
  if (v7)
  {
    v7->_qualityOfService = objc_msgSend_qualityOfService(v4, v5, v6);
    v10 = objc_msgSend_ckShortDescription(v4, v8, v9);
    underlyingCKShortDescription = v7->_underlyingCKShortDescription;
    v7->_underlyingCKShortDescription = v10;
  }

  return v7;
}

- (id)ckShortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_msgSend_underlyingCKShortDescription(self, a2, v2);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"Deferred relinquish of %@", v4);

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_ckShortDescription(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v3, v9, @"<%@: %p %@>", v5, self, v8);;

  return v10;
}

@end