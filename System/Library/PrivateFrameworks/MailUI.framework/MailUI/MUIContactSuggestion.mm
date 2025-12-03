@interface MUIContactSuggestion
+ (id)suggestionWithTitle:(id)title contactEmailAddresses:(id)addresses contactIdentifier:(id)identifier spotlightSuggestion:(id)suggestion;
- (MUIContactSuggestion)initWithTitle:(id)title contactEmailAddresses:(id)addresses contactIdentifier:(id)identifier spotlightSuggestion:(id)suggestion;
@end

@implementation MUIContactSuggestion

+ (id)suggestionWithTitle:(id)title contactEmailAddresses:(id)addresses contactIdentifier:(id)identifier spotlightSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  identifierCopy = identifier;
  addressesCopy = addresses;
  titleCopy = title;
  v14 = [[self alloc] initWithTitle:titleCopy contactEmailAddresses:addressesCopy contactIdentifier:identifierCopy spotlightSuggestion:suggestionCopy];

  return v14;
}

- (MUIContactSuggestion)initWithTitle:(id)title contactEmailAddresses:(id)addresses contactIdentifier:(id)identifier spotlightSuggestion:(id)suggestion
{
  v26[1] = *MEMORY[0x277D85DE8];
  titleCopy = title;
  addressesCopy = addresses;
  identifierCopy = identifier;
  suggestionCopy = suggestion;
  v25.receiver = self;
  v25.super_class = MUIContactSuggestion;
  v14 = [(MUIContactSuggestion *)&v25 init];
  if (v14)
  {
    v15 = [titleCopy copy];
    title = v14->_title;
    v14->_title = v15;

    v17 = [addressesCopy copy];
    contactEmailAddresses = v14->_contactEmailAddresses;
    v14->_contactEmailAddresses = v17;

    v19 = [identifierCopy copy];
    contactIdentifier = v14->_contactIdentifier;
    v14->_contactIdentifier = v19;

    v21 = [titleCopy copy];
    v26[0] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    attributeValues = v14->_attributeValues;
    v14->_attributeValues = v22;

    objc_storeStrong(&v14->_spotlightSuggestion, suggestion);
  }

  return v14;
}

@end