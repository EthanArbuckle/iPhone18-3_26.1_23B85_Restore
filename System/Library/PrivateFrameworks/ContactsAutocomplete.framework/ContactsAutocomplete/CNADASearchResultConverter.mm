@interface CNADASearchResultConverter
+ (id)autocompleteResultsForDASearchResultElement:(id)a3 request:(id)a4 factory:(id)a5;
+ (id)resultTransformForRequest:(id)a3 factory:(id)a4;
- (CNADASearchResultConverter)initWithFactory:(id)a3;
- (void)addEmailAddress:(id)a3;
- (void)addPhoneNumber:(id)a3;
@end

@implementation CNADASearchResultConverter

+ (id)autocompleteResultsForDASearchResultElement:(id)a3 request:(id)a4 factory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[a1 alloc] initWithFactory:v10];

  v12 = [a1 displayNameForElement:v8];
  [v11 setDisplayName:v12];

  v13 = [a1 nameComponentsForElement:v8];
  [v11 setNameComponents:v13];

  if ([a1 shouldIncludeEmailAddressesForRequest:v9])
  {
    v14 = [v8 emailAddress];
    [v11 addEmailAddress:v14];
  }

  if ([a1 shouldIncludePhoneNumbersForRequest:v9])
  {
    v15 = [v8 homePhone];
    [v11 addPhoneNumber:v15];

    v16 = [v8 workPhone];
    [v11 addPhoneNumber:v16];

    v17 = [v8 mobilePhone];
    [v11 addPhoneNumber:v17];

    v18 = [v8 iPhone];
    [v11 addPhoneNumber:v18];

    v19 = [v8 mainPhone];
    [v11 addPhoneNumber:v19];
  }

  v20 = [v11 build];

  return v20;
}

+ (id)resultTransformForRequest:(id)a3 factory:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__CNADASearchResultConverter_resultTransformForRequest_factory___block_invoke;
  aBlock[3] = &unk_2781C4658;
  v14 = v7;
  v15 = a1;
  v13 = v6;
  v8 = v7;
  v9 = v6;
  v10 = _Block_copy(aBlock);

  return v10;
}

- (CNADASearchResultConverter)initWithFactory:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CNADASearchResultConverter;
  v6 = [(CNADASearchResultConverter *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_factory, a3);
    v8 = objc_opt_new();
    results = v7->_results;
    v7->_results = v8;

    v10 = v7;
  }

  return v7;
}

- (void)addEmailAddress:(id)a3
{
  v6 = a3;
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
  {
    v4 = objc_alloc_init(CNAutocompleteResultValue);
    [(CNAutocompleteResultValue *)v4 setAddress:v6];
    [(CNAutocompleteResultValue *)v4 setAddressType:1];
    v5 = [(CNAutocompleteResultFactory *)self->_factory directoryServerResultWithDisplayName:self->_displayName value:v4 nameComponents:self->_nameComponents];
    [(NSMutableArray *)self->_results addObject:v5];
  }
}

- (void)addPhoneNumber:(id)a3
{
  v6 = a3;
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
  {
    v4 = objc_alloc_init(CNAutocompleteResultValue);
    [(CNAutocompleteResultValue *)v4 setAddress:v6];
    [(CNAutocompleteResultValue *)v4 setAddressType:2];
    v5 = [(CNAutocompleteResultFactory *)self->_factory directoryServerResultWithDisplayName:self->_displayName value:v4 nameComponents:self->_nameComponents];
    [(NSMutableArray *)self->_results addObject:v5];
  }
}

@end