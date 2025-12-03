@interface PDAuxiliaryPassInformationManagerItemUpdate
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation PDAuxiliaryPassInformationManagerItemUpdate

- (unint64_t)hash
{
  [(PKPassAuxiliaryPassInformationItem *)self->_item hash];

  return PKIntegerHash();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(PDAuxiliaryPassInformationManagerItemUpdate *)self _isEqualToItem:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end