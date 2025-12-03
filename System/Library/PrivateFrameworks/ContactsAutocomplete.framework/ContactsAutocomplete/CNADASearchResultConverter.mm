@interface CNADASearchResultConverter
+ (id)autocompleteResultsForDASearchResultElement:(id)element request:(id)request factory:(id)factory;
+ (id)resultTransformForRequest:(id)request factory:(id)factory;
- (CNADASearchResultConverter)initWithFactory:(id)factory;
- (void)addEmailAddress:(id)address;
- (void)addPhoneNumber:(id)number;
@end

@implementation CNADASearchResultConverter

+ (id)autocompleteResultsForDASearchResultElement:(id)element request:(id)request factory:(id)factory
{
  elementCopy = element;
  requestCopy = request;
  factoryCopy = factory;
  v11 = [[self alloc] initWithFactory:factoryCopy];

  v12 = [self displayNameForElement:elementCopy];
  [v11 setDisplayName:v12];

  v13 = [self nameComponentsForElement:elementCopy];
  [v11 setNameComponents:v13];

  if ([self shouldIncludeEmailAddressesForRequest:requestCopy])
  {
    emailAddress = [elementCopy emailAddress];
    [v11 addEmailAddress:emailAddress];
  }

  if ([self shouldIncludePhoneNumbersForRequest:requestCopy])
  {
    homePhone = [elementCopy homePhone];
    [v11 addPhoneNumber:homePhone];

    workPhone = [elementCopy workPhone];
    [v11 addPhoneNumber:workPhone];

    mobilePhone = [elementCopy mobilePhone];
    [v11 addPhoneNumber:mobilePhone];

    iPhone = [elementCopy iPhone];
    [v11 addPhoneNumber:iPhone];

    mainPhone = [elementCopy mainPhone];
    [v11 addPhoneNumber:mainPhone];
  }

  build = [v11 build];

  return build;
}

+ (id)resultTransformForRequest:(id)request factory:(id)factory
{
  requestCopy = request;
  factoryCopy = factory;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__CNADASearchResultConverter_resultTransformForRequest_factory___block_invoke;
  aBlock[3] = &unk_2781C4658;
  v14 = factoryCopy;
  selfCopy = self;
  v13 = requestCopy;
  v8 = factoryCopy;
  v9 = requestCopy;
  v10 = _Block_copy(aBlock);

  return v10;
}

- (CNADASearchResultConverter)initWithFactory:(id)factory
{
  factoryCopy = factory;
  v12.receiver = self;
  v12.super_class = CNADASearchResultConverter;
  v6 = [(CNADASearchResultConverter *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_factory, factory);
    v8 = objc_opt_new();
    results = v7->_results;
    v7->_results = v8;

    v10 = v7;
  }

  return v7;
}

- (void)addEmailAddress:(id)address
{
  addressCopy = address;
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
  {
    v4 = objc_alloc_init(CNAutocompleteResultValue);
    [(CNAutocompleteResultValue *)v4 setAddress:addressCopy];
    [(CNAutocompleteResultValue *)v4 setAddressType:1];
    v5 = [(CNAutocompleteResultFactory *)self->_factory directoryServerResultWithDisplayName:self->_displayName value:v4 nameComponents:self->_nameComponents];
    [(NSMutableArray *)self->_results addObject:v5];
  }
}

- (void)addPhoneNumber:(id)number
{
  numberCopy = number;
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
  {
    v4 = objc_alloc_init(CNAutocompleteResultValue);
    [(CNAutocompleteResultValue *)v4 setAddress:numberCopy];
    [(CNAutocompleteResultValue *)v4 setAddressType:2];
    v5 = [(CNAutocompleteResultFactory *)self->_factory directoryServerResultWithDisplayName:self->_displayName value:v4 nameComponents:self->_nameComponents];
    [(NSMutableArray *)self->_results addObject:v5];
  }
}

@end