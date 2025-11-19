@interface SUUIItemOffer
- (NSDictionary)lookupDictionary;
- (NSMutableDictionary)cacheRepresentation;
- (NSString)fileSizeText;
- (SUUIItemOffer)initWithButtonText:(id)a3;
- (SUUIItemOffer)initWithCacheRepresentation:(id)a3;
- (SUUIItemOffer)initWithLookupDictionary:(id)a3;
- (SUUIItemOffer)initWithOfferDictionary:(id)a3;
- (SUUIItemOffer)initWithRedownloadToken:(id)a3;
- (int64_t)offerType;
- (void)_addActionParameterWithName:(id)a3 value:(id)a4;
- (void)_setFileSizeWithAssets:(id)a3;
- (void)_setFileSizeWithDeviceSizes:(id)a3;
- (void)_setFileSizeWithFlavors:(id)a3;
@end

@implementation SUUIItemOffer

- (SUUIItemOffer)initWithButtonText:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SUUIItemOffer;
  v5 = [(SUUIItemOffer *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    buttonText = v5->_buttonText;
    v5->_buttonText = v6;

    confirmationText = v5->_confirmationText;
    v5->_confirmationText = &stru_286AECDE0;
  }

  return v5;
}

- (SUUIItemOffer)initWithLookupDictionary:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = SUUIItemOffer;
  v5 = [(SUUIItemOffer *)&v31 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"buyParams"];
    if (!v6)
    {
      v6 = [v4 objectForKey:@"action-params"];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_actionParameters, v6);
    }

    v7 = [v4 objectForKey:@"actionText"];
    objc_opt_class();
    v30 = v7;
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 objectForKey:@"medium"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 uppercaseString];
      }

      else
      {
        v9 = 0;
      }

      v6 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = [v4 objectForKey:@"priceFormatted"];

    if (!v10)
    {
      v10 = [v4 objectForKey:@"button_text"];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v4 objectForKey:@"price"];
    if (objc_opt_respondsToSelector())
    {
      [v12 floatValue];
      v5->_price = price;
    }

    else
    {
      price = v5->_price;
    }

    v28 = v9;
    if (price == 0.0)
    {
      if (v9)
      {
        v14 = v9;
      }

      else
      {
        v14 = v11;
      }

      v15 = [v14 copy];
      buttonText = v5->_buttonText;
      v5->_buttonText = v15;
    }

    else
    {
      objc_storeStrong(&v5->_buttonText, v11);
      v17 = v9;
      buttonText = v5->_confirmationText;
      v5->_confirmationText = v17;
    }

    v18 = [v4 objectForKey:@"assets"];
    v19 = [v4 objectForKey:@"assetFlavors"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUUIItemOffer *)v5 _setFileSizeWithAssets:v18];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SUUIItemOffer *)v5 _setFileSizeWithFlavors:v19];
      }
    }

    v20 = [v4 objectForKey:{@"type", v28}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 copy];
      offerTypeString = v5->_offerTypeString;
      v5->_offerTypeString = v21;
    }

    v23 = [v4 objectForKey:@"variant"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [v23 copy];
      variantIdentifier = v5->_variantIdentifier;
      v5->_variantIdentifier = v24;
    }

    v26 = [v4 objectForKey:@"shouldEnableMessagesExtension"];
    if (v26)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5->_shouldEnableMessagesExtension = [v26 BOOLValue];
      }
    }
  }

  return v5;
}

- (SUUIItemOffer)initWithOfferDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SUUIItemOffer;
  v5 = [(SUUIItemOffer *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"action-params"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      actionParameters = v5->_actionParameters;
      v5->_actionParameters = v7;
    }

    v9 = [v4 objectForKey:@"button_text"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      buttonText = v5->_buttonText;
      v5->_buttonText = v10;

      v5->_price = ([(NSString *)v5->_buttonText isEqualToString:@"FREE"]^ 1);
    }

    v12 = [v4 objectForKey:@"confirm-text"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      confirmationText = v5->_confirmationText;
      v5->_confirmationText = v13;
    }

    v15 = [v4 objectForKey:@"assetFlavors"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUUIItemOffer *)v5 _setFileSizeWithFlavors:v15];
    }
  }

  return v5;
}

- (SUUIItemOffer)initWithRedownloadToken:(id)a3
{
  v4 = a3;
  if (![v4 length])
  {
    v5 = 0;
    goto LABEL_5;
  }

  v5 = [(SUUIItemOffer *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    actionParameters = v5->_actionParameters;
    v5->_actionParameters = v6;

    buttonText = v5->_buttonText;
    v5->_buttonText = @"FREE";

    self = v5->_confirmationText;
    v5->_confirmationText = @"INSTALL APP";
LABEL_5:
  }

  return v5;
}

- (NSString)fileSizeText
{
  fileSizeText = self->_fileSizeText;
  if (!fileSizeText)
  {
    v4 = CPFSSizeStrings();
    v5 = self->_fileSizeText;
    self->_fileSizeText = v4;

    fileSizeText = self->_fileSizeText;
  }

  return fileSizeText;
}

- (NSDictionary)lookupDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  actionParameters = self->_actionParameters;
  if (actionParameters)
  {
    [v3 setObject:actionParameters forKey:@"buyParams"];
  }

  if (self->_price > 0.00000011921)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    [v4 setObject:v6 forKey:@"price"];
  }

  if (self->_confirmationText)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{self->_confirmationText, @"medium", 0}];
    [v4 setObject:v7 forKey:@"actionText"];
  }

  buttonText = self->_buttonText;
  if (buttonText)
  {
    [v4 setObject:buttonText forKey:@"priceFormatted"];
  }

  offerTypeString = self->_offerTypeString;
  if (offerTypeString)
  {
    [v4 setObject:offerTypeString forKey:@"type"];
  }

  variantIdentifier = self->_variantIdentifier;
  if (variantIdentifier)
  {
    [v4 setObject:variantIdentifier forKey:@"variant"];
  }

  if (self->_shouldEnableMessagesExtension)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v4 setObject:v11 forKey:@"shouldEnableMessagesExtension"];
  }

  return v4;
}

- (int64_t)offerType
{
  if ([(NSString *)self->_offerTypeString isEqualToString:@"rent"])
  {
    return 3;
  }

  if ([(NSString *)self->_offerTypeString isEqualToString:@"preorder"])
  {
    return 2;
  }

  if ([(NSString *)self->_offerTypeString isEqualToString:@"complete"])
  {
    return 1;
  }

  if ([(NSString *)self->_offerTypeString isEqualToString:@"get"])
  {
    return 4;
  }

  return 0;
}

- (void)_addActionParameterWithName:(id)a3 value:(id)a4
{
  actionParameters = self->_actionParameters;
  if (actionParameters)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(NSString *)actionParameters stringByAppendingFormat:@"&%@=%@", v8, v7];
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    v7 = a4;
    v8 = a3;
    v9 = [[v10 alloc] initWithFormat:@"%@=%@", v8, v7];
  }

  v11 = v9;

  v12 = self->_actionParameters;
  self->_actionParameters = v11;
}

- (void)_setFileSizeWithDeviceSizes:(id)a3
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v4 = [MEMORY[0x277D69A80] currentDevice];
  v11[0] = [v4 thinnedApplicationVariantIdentifier];
  [v4 compatibleProductType];
  v11[1] = v5 = 0;
  v11[2] = @"universal";
  while (1)
  {
    v6 = v11[v5];
    if (v6)
    {
      break;
    }

LABEL_5:

    if (++v5 == 3)
    {
      goto LABEL_8;
    }
  }

  v7 = [v10 objectForKey:v6];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_5;
  }

  v8 = [v7 longLongValue];
  fileSizeText = self->_fileSizeText;
  self->_fileSize = v8;
  self->_fileSizeText = 0;

LABEL_8:
}

- (SUUIItemOffer)initWithCacheRepresentation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22.receiver = self;
    v22.super_class = SUUIItemOffer;
    v5 = [(SUUIItemOffer *)&v22 init];
    if (v5)
    {
      v6 = [v4 objectForKey:@"action-params"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v6 copy];
        actionParameters = v5->_actionParameters;
        v5->_actionParameters = v7;
      }

      v9 = [v4 objectForKey:@"button_text"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 copy];
        buttonText = v5->_buttonText;
        v5->_buttonText = v10;
      }

      v12 = [v4 objectForKey:@"confirm-text"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 copy];
        confirmationText = v5->_confirmationText;
        v5->_confirmationText = v13;
      }

      v15 = [v4 objectForKey:@"fileSize"];

      if (objc_opt_respondsToSelector())
      {
        v5->_fileSize = [v15 longLongValue];
      }

      v16 = [v4 objectForKey:@"fileSizeText"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v16 copy];
        fileSizeText = v5->_fileSizeText;
        v5->_fileSizeText = v17;
      }

      v19 = [v4 objectForKey:@"price"];

      if (objc_opt_respondsToSelector())
      {
        [v19 floatValue];
        v5->_price = v20;
      }
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (NSMutableDictionary)cacheRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_fileSize];
  [v3 setObject:v4 forKey:@"fileSize"];

  *&v5 = self->_price;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  [v3 setObject:v6 forKey:@"price"];

  actionParameters = self->_actionParameters;
  if (actionParameters)
  {
    [v3 setObject:actionParameters forKey:@"action-params"];
  }

  buttonText = self->_buttonText;
  if (buttonText)
  {
    [v3 setObject:buttonText forKey:@"button_text"];
  }

  confirmationText = self->_confirmationText;
  if (confirmationText)
  {
    [v3 setObject:confirmationText forKey:@"confirm-text"];
  }

  fileSizeText = self->_fileSizeText;
  if (fileSizeText)
  {
    [v3 setObject:fileSizeText forKey:@"fileSizeText"];
  }

  return v3;
}

- (void)_setFileSizeWithAssets:(id)a3
{
  v8 = a3;
  v4 = [v8 count];
  v5 = v8;
  if (v4)
  {
    v6 = [v8 objectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 objectForKey:@"size"];
      if (objc_opt_respondsToSelector())
      {
        self->_fileSize = [v7 longLongValue];
      }
    }

    v5 = v8;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_setFileSizeWithFlavors:(id)a3
{
  v11 = a3;
  v4 = [v11 count];
  v5 = v11;
  if (v4)
  {
    v6 = [v11 objectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 objectForKey:@"fileSize"];
      if (objc_opt_respondsToSelector())
      {
        self->_fileSize = [v7 longLongValue];
      }

      v8 = [v6 objectForKey:@"fileSizeText"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 copy];
        fileSizeText = self->_fileSizeText;
        self->_fileSizeText = v9;
      }
    }

    v5 = v11;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

@end