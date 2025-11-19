@interface SUUIBuyButtonDescriptor
- (BOOL)canPerformLocalActionWithItemState:(id)a3;
- (BOOL)canPersonalizeUsingItemState:(id)a3;
- (void)setButtonText:(id)a3;
- (void)setConfirmationText:(id)a3;
- (void)setStoreIdentifier:(id)a3;
- (void)setVariantIdentifier:(id)a3;
@end

@implementation SUUIBuyButtonDescriptor

- (void)setButtonText:(id)a3
{
  if (self->_buttonText != a3)
  {
    v5 = [a3 copy];
    buttonText = self->_buttonText;
    self->_buttonText = v5;

    MEMORY[0x2821F96F8](v5, buttonText);
  }
}

- (void)setConfirmationText:(id)a3
{
  if (self->_confirmationText != a3)
  {
    v5 = [a3 copy];
    confirmationText = self->_confirmationText;
    self->_confirmationText = v5;

    MEMORY[0x2821F96F8](v5, confirmationText);
  }
}

- (void)setStoreIdentifier:(id)a3
{
  if (self->_storeIdentifier != a3)
  {
    v5 = [a3 copy];
    storeIdentifier = self->_storeIdentifier;
    self->_storeIdentifier = v5;

    MEMORY[0x2821F96F8](v5, storeIdentifier);
  }
}

- (void)setVariantIdentifier:(id)a3
{
  if (self->_variantIdentifier != a3)
  {
    v5 = [a3 copy];
    variantIdentifier = self->_variantIdentifier;
    self->_variantIdentifier = v5;

    MEMORY[0x2821F96F8](v5, variantIdentifier);
  }
}

- (BOOL)canPersonalizeUsingItemState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_buttonType <= 3uLL && (itemIdentifier = self->_itemIdentifier, [v4 itemIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "longLongValue"), v7, itemIdentifier == v8) && ((storeIdentifier = self->_storeIdentifier) == 0 || (objc_msgSend(v5, "storeIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[SUUIStoreIdentifier isEqual:](storeIdentifier, "isEqual:", v10), v10, v11)))
  {
    v12 = [v5 variantIdentifier];
    v13 = [(SUUIBuyButtonDescriptor *)self variantIdentifier];
    v14 = v13;
    v15 = 1;
    if (v12 && v13)
    {
      v15 = [v12 isEqualToString:v13];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)canPerformLocalActionWithItemState:(id)a3
{
  v4 = a3;
  if ([(SUUIBuyButtonDescriptor *)self canPersonalizeUsingItemState:v4])
  {
    buttonType = self->_buttonType;
    v6 = (buttonType != 2) ^ [v4 activeStateIsPreview];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end