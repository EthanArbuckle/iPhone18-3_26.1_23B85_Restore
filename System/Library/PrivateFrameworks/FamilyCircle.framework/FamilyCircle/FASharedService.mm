@interface FASharedService
- (BOOL)isDefault;
- (BOOL)isEnabled;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSharedService:(id)service;
- (BOOL)isSeparator;
- (FASharedService)initWithDictionary:(id)dictionary;
- (NSString)subLabel;
- (unint64_t)hash;
@end

@implementation FASharedService

uint64_t __31__FASharedService_sortedArray___block_invoke(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 >= a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (a2 > a3)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (BOOL)isSeparator
{
  name = [(FASharedService *)self name];
  v3 = [name caseInsensitiveCompare:@"separator"] == 0;

  return v3;
}

- (BOOL)isDefault
{
  v2 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"default"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isEnabled
{
  v2 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"pageViews"];
  v3 = [v2 containsObject:@"memberDetails"];

  return v3;
}

- (NSString)subLabel
{
  name = [(FASharedService *)self name];
  if ([name isEqualToString:@"ALL_SUBSCRIPTIONS"] && (-[NSDictionary objectForKeyedSubscript:](self->_dictionary, "objectForKeyedSubscript:", @"subLabel"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, !v5))
  {
    v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v8 localizedStringForKey:@"SUBSCRIPTION_SHARING" value:&stru_1F2F2DA80 table:@"Localizable"];
  }

  else
  {
    v6 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"subLabel"];
  }

  return v6;
}

- (FASharedService)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = FASharedService;
  v5 = [(FASharedService *)&v15 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:dictionaryCopy];
    v7 = [dictionaryCopy objectForKeyedSubscript:@"pageViews"];
    v8 = [FASharedService sortedArray:v7];
    [(NSDictionary *)v6 setObject:v8 forKeyedSubscript:@"pageViews"];

    v9 = [dictionaryCopy objectForKeyedSubscript:@"memberDetailsViewTypes"];
    v10 = [FASharedService sortedArray:v9];
    [(NSDictionary *)v6 setObject:v10 forKeyedSubscript:@"memberDetailsViewTypes"];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"subscriberDSIDs"];
    v12 = [FASharedService sortedArray:v11];
    [(NSDictionary *)v6 setObject:v12 forKeyedSubscript:@"subscriberDSIDs"];

    dictionary = v5->_dictionary;
    v5->_dictionary = v6;
  }

  return v5;
}

- (unint64_t)hash
{
  name = [(FASharedService *)self name];
  v3 = [name hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(FASharedService *)self isEqualToSharedService:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToSharedService:(id)service
{
  serviceCopy = service;
  dictionary = [(FASharedService *)self dictionary];
  dictionary2 = [serviceCopy dictionary];

  if (dictionary == dictionary2)
  {
    v7 = 1;
  }

  else
  {
    v7 = [dictionary isEqual:dictionary2];
  }

  return v7;
}

@end