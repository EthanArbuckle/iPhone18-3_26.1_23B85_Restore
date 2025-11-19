@interface MUIContactSuggestion
+ (id)suggestionWithTitle:(id)a3 contactEmailAddresses:(id)a4 contactIdentifier:(id)a5 spotlightSuggestion:(id)a6;
- (MUIContactSuggestion)initWithTitle:(id)a3 contactEmailAddresses:(id)a4 contactIdentifier:(id)a5 spotlightSuggestion:(id)a6;
@end

@implementation MUIContactSuggestion

+ (id)suggestionWithTitle:(id)a3 contactEmailAddresses:(id)a4 contactIdentifier:(id)a5 spotlightSuggestion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithTitle:v13 contactEmailAddresses:v12 contactIdentifier:v11 spotlightSuggestion:v10];

  return v14;
}

- (MUIContactSuggestion)initWithTitle:(id)a3 contactEmailAddresses:(id)a4 contactIdentifier:(id)a5 spotlightSuggestion:(id)a6
{
  v26[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = MUIContactSuggestion;
  v14 = [(MUIContactSuggestion *)&v25 init];
  if (v14)
  {
    v15 = [v10 copy];
    title = v14->_title;
    v14->_title = v15;

    v17 = [v11 copy];
    contactEmailAddresses = v14->_contactEmailAddresses;
    v14->_contactEmailAddresses = v17;

    v19 = [v12 copy];
    contactIdentifier = v14->_contactIdentifier;
    v14->_contactIdentifier = v19;

    v21 = [v10 copy];
    v26[0] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    attributeValues = v14->_attributeValues;
    v14->_attributeValues = v22;

    objc_storeStrong(&v14->_spotlightSuggestion, a6);
  }

  return v14;
}

@end