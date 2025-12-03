@interface SUUIItemOffer
- (NSDictionary)lookupDictionary;
- (NSMutableDictionary)cacheRepresentation;
- (NSString)fileSizeText;
- (SUUIItemOffer)initWithButtonText:(id)text;
- (SUUIItemOffer)initWithCacheRepresentation:(id)representation;
- (SUUIItemOffer)initWithLookupDictionary:(id)dictionary;
- (SUUIItemOffer)initWithOfferDictionary:(id)dictionary;
- (SUUIItemOffer)initWithRedownloadToken:(id)token;
- (int64_t)offerType;
- (void)_addActionParameterWithName:(id)name value:(id)value;
- (void)_setFileSizeWithAssets:(id)assets;
- (void)_setFileSizeWithDeviceSizes:(id)sizes;
- (void)_setFileSizeWithFlavors:(id)flavors;
@end

@implementation SUUIItemOffer

- (SUUIItemOffer)initWithButtonText:(id)text
{
  textCopy = text;
  v10.receiver = self;
  v10.super_class = SUUIItemOffer;
  v5 = [(SUUIItemOffer *)&v10 init];
  if (v5)
  {
    v6 = [textCopy copy];
    buttonText = v5->_buttonText;
    v5->_buttonText = v6;

    confirmationText = v5->_confirmationText;
    v5->_confirmationText = &stru_286AECDE0;
  }

  return v5;
}

- (SUUIItemOffer)initWithLookupDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v31.receiver = self;
  v31.super_class = SUUIItemOffer;
  v5 = [(SUUIItemOffer *)&v31 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"buyParams"];
    if (!v6)
    {
      v6 = [dictionaryCopy objectForKey:@"action-params"];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_actionParameters, v6);
    }

    v7 = [dictionaryCopy objectForKey:@"actionText"];
    objc_opt_class();
    v30 = v7;
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 objectForKey:@"medium"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        uppercaseString = [v8 uppercaseString];
      }

      else
      {
        uppercaseString = 0;
      }

      v6 = v8;
    }

    else
    {
      uppercaseString = 0;
    }

    v10 = [dictionaryCopy objectForKey:@"priceFormatted"];

    if (!v10)
    {
      v10 = [dictionaryCopy objectForKey:@"button_text"];
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

    v12 = [dictionaryCopy objectForKey:@"price"];
    if (objc_opt_respondsToSelector())
    {
      [v12 floatValue];
      v5->_price = price;
    }

    else
    {
      price = v5->_price;
    }

    v28 = uppercaseString;
    if (price == 0.0)
    {
      if (uppercaseString)
      {
        v14 = uppercaseString;
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
      v17 = uppercaseString;
      buttonText = v5->_confirmationText;
      v5->_confirmationText = v17;
    }

    v18 = [dictionaryCopy objectForKey:@"assets"];
    v19 = [dictionaryCopy objectForKey:@"assetFlavors"];
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

    v20 = [dictionaryCopy objectForKey:{@"type", v28}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 copy];
      offerTypeString = v5->_offerTypeString;
      v5->_offerTypeString = v21;
    }

    v23 = [dictionaryCopy objectForKey:@"variant"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [v23 copy];
      variantIdentifier = v5->_variantIdentifier;
      v5->_variantIdentifier = v24;
    }

    v26 = [dictionaryCopy objectForKey:@"shouldEnableMessagesExtension"];
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

- (SUUIItemOffer)initWithOfferDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = SUUIItemOffer;
  v5 = [(SUUIItemOffer *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"action-params"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      actionParameters = v5->_actionParameters;
      v5->_actionParameters = v7;
    }

    v9 = [dictionaryCopy objectForKey:@"button_text"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      buttonText = v5->_buttonText;
      v5->_buttonText = v10;

      v5->_price = ([(NSString *)v5->_buttonText isEqualToString:@"FREE"]^ 1);
    }

    v12 = [dictionaryCopy objectForKey:@"confirm-text"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      confirmationText = v5->_confirmationText;
      v5->_confirmationText = v13;
    }

    v15 = [dictionaryCopy objectForKey:@"assetFlavors"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUUIItemOffer *)v5 _setFileSizeWithFlavors:v15];
    }
  }

  return v5;
}

- (SUUIItemOffer)initWithRedownloadToken:(id)token
{
  tokenCopy = token;
  if (![tokenCopy length])
  {
    v5 = 0;
    goto LABEL_5;
  }

  v5 = [(SUUIItemOffer *)self init];
  if (v5)
  {
    v6 = [tokenCopy copy];
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  actionParameters = self->_actionParameters;
  if (actionParameters)
  {
    [dictionary setObject:actionParameters forKey:@"buyParams"];
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

- (void)_addActionParameterWithName:(id)name value:(id)value
{
  actionParameters = self->_actionParameters;
  if (actionParameters)
  {
    valueCopy2 = value;
    nameCopy2 = name;
    valueCopy2 = [(NSString *)actionParameters stringByAppendingFormat:@"&%@=%@", nameCopy2, valueCopy2];
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    valueCopy2 = value;
    nameCopy2 = name;
    valueCopy2 = [[v10 alloc] initWithFormat:@"%@=%@", nameCopy2, valueCopy2];
  }

  v11 = valueCopy2;

  v12 = self->_actionParameters;
  self->_actionParameters = v11;
}

- (void)_setFileSizeWithDeviceSizes:(id)sizes
{
  v11[3] = *MEMORY[0x277D85DE8];
  sizesCopy = sizes;
  currentDevice = [MEMORY[0x277D69A80] currentDevice];
  v11[0] = [currentDevice thinnedApplicationVariantIdentifier];
  [currentDevice compatibleProductType];
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

  v7 = [sizesCopy objectForKey:v6];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_5;
  }

  longLongValue = [v7 longLongValue];
  fileSizeText = self->_fileSizeText;
  self->_fileSize = longLongValue;
  self->_fileSizeText = 0;

LABEL_8:
}

- (SUUIItemOffer)initWithCacheRepresentation:(id)representation
{
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22.receiver = self;
    v22.super_class = SUUIItemOffer;
    v5 = [(SUUIItemOffer *)&v22 init];
    if (v5)
    {
      v6 = [representationCopy objectForKey:@"action-params"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v6 copy];
        actionParameters = v5->_actionParameters;
        v5->_actionParameters = v7;
      }

      v9 = [representationCopy objectForKey:@"button_text"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 copy];
        buttonText = v5->_buttonText;
        v5->_buttonText = v10;
      }

      v12 = [representationCopy objectForKey:@"confirm-text"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 copy];
        confirmationText = v5->_confirmationText;
        v5->_confirmationText = v13;
      }

      v15 = [representationCopy objectForKey:@"fileSize"];

      if (objc_opt_respondsToSelector())
      {
        v5->_fileSize = [v15 longLongValue];
      }

      v16 = [representationCopy objectForKey:@"fileSizeText"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v16 copy];
        fileSizeText = v5->_fileSizeText;
        v5->_fileSizeText = v17;
      }

      v19 = [representationCopy objectForKey:@"price"];

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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_fileSize];
  [dictionary setObject:v4 forKey:@"fileSize"];

  *&v5 = self->_price;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  [dictionary setObject:v6 forKey:@"price"];

  actionParameters = self->_actionParameters;
  if (actionParameters)
  {
    [dictionary setObject:actionParameters forKey:@"action-params"];
  }

  buttonText = self->_buttonText;
  if (buttonText)
  {
    [dictionary setObject:buttonText forKey:@"button_text"];
  }

  confirmationText = self->_confirmationText;
  if (confirmationText)
  {
    [dictionary setObject:confirmationText forKey:@"confirm-text"];
  }

  fileSizeText = self->_fileSizeText;
  if (fileSizeText)
  {
    [dictionary setObject:fileSizeText forKey:@"fileSizeText"];
  }

  return dictionary;
}

- (void)_setFileSizeWithAssets:(id)assets
{
  assetsCopy = assets;
  v4 = [assetsCopy count];
  v5 = assetsCopy;
  if (v4)
  {
    v6 = [assetsCopy objectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 objectForKey:@"size"];
      if (objc_opt_respondsToSelector())
      {
        self->_fileSize = [v7 longLongValue];
      }
    }

    v5 = assetsCopy;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_setFileSizeWithFlavors:(id)flavors
{
  flavorsCopy = flavors;
  v4 = [flavorsCopy count];
  v5 = flavorsCopy;
  if (v4)
  {
    v6 = [flavorsCopy objectAtIndex:0];
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

    v5 = flavorsCopy;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

@end