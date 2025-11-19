@interface PDAuxiliaryPassInformationManagerItemUpdate
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation PDAuxiliaryPassInformationManagerItemUpdate

- (unint64_t)hash
{
  [(PKPassAuxiliaryPassInformationItem *)self->_item hash];

  return PKIntegerHash();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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