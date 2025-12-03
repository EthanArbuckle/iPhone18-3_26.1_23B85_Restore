@interface CKAtomBatchEnumerationOptions
+ (id)optionsWithAtomType:(unint64_t)type;
+ (id)optionsWithSiteIdentifierModifier:(id)modifier;
@end

@implementation CKAtomBatchEnumerationOptions

+ (id)optionsWithAtomType:(unint64_t)type
{
  objc_opt_class();
  v4 = objc_opt_new();
  v10 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v5, type, v6, v7, v8, v9);
  objc_msgSend_setAtomType_(v4, v11, v10, v12, v13, v14, v15);

  return v4;
}

+ (id)optionsWithSiteIdentifierModifier:(id)modifier
{
  modifierCopy = modifier;
  objc_opt_class();
  v4 = objc_opt_new();
  objc_msgSend_setSiteIdentifierModifier_(v4, v5, modifierCopy, v6, v7, v8, v9);

  return v4;
}

@end