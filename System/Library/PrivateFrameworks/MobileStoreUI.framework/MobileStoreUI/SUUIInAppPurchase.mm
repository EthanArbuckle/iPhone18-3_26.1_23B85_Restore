@interface SUUIInAppPurchase
- (NSMutableDictionary)cacheRepresentation;
- (SUUIInAppPurchase)initWithCacheRepresentation:(id)representation;
- (SUUIInAppPurchase)initWithInAppPurchaseDictionary:(id)dictionary;
@end

@implementation SUUIInAppPurchase

- (SUUIInAppPurchase)initWithInAppPurchaseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SUUIInAppPurchase;
  v5 = [(SUUIInAppPurchase *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"price"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      formattedPrice = v5->_formattedPrice;
      v5->_formattedPrice = v7;
    }

    v9 = [dictionaryCopy objectForKey:@"name"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      name = v5->_name;
      v5->_name = v10;
    }
  }

  return v5;
}

- (SUUIInAppPurchase)initWithCacheRepresentation:(id)representation
{
  representationCopy = representation;
  v13.receiver = self;
  v13.super_class = SUUIInAppPurchase;
  v5 = [(SUUIInAppPurchase *)&v13 init];
  if (v5)
  {
    v6 = [representationCopy objectForKey:@"price"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      formattedPrice = v5->_formattedPrice;
      v5->_formattedPrice = v7;
    }

    v9 = [representationCopy objectForKey:@"name"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      name = v5->_name;
      v5->_name = v10;
    }
  }

  return v5;
}

- (NSMutableDictionary)cacheRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  formattedPrice = self->_formattedPrice;
  if (formattedPrice)
  {
    [dictionary setObject:formattedPrice forKey:@"price"];
  }

  name = self->_name;
  if (name)
  {
    [v4 setObject:name forKey:@"name"];
  }

  return v4;
}

@end