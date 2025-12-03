@interface DOCEnumerationProperties
- (DOCEnumerationProperties)initWithConfiguration:(id)configuration tags:(id)tags;
- (DOCEnumerationProperties)initWithHostIdentifier:(id)identifier maximumNumberOfItems:(int64_t)items allowedContentTypes:(id)types excludedContentTypes:(id)contentTypes tags:(id)tags;
@end

@implementation DOCEnumerationProperties

- (DOCEnumerationProperties)initWithConfiguration:(id)configuration tags:(id)tags
{
  tagsCopy = tags;
  configurationCopy = configuration;
  hostIdentifier = [configurationCopy hostIdentifier];
  maximumNumberOfItemsToFetch = [configurationCopy maximumNumberOfItemsToFetch];
  documentContentTypes = [configurationCopy documentContentTypes];
  excludedDocumentContentTypes = [configurationCopy excludedDocumentContentTypes];

  v12 = [(DOCEnumerationProperties *)self initWithHostIdentifier:hostIdentifier maximumNumberOfItems:maximumNumberOfItemsToFetch allowedContentTypes:documentContentTypes excludedContentTypes:excludedDocumentContentTypes tags:tagsCopy];
  return v12;
}

- (DOCEnumerationProperties)initWithHostIdentifier:(id)identifier maximumNumberOfItems:(int64_t)items allowedContentTypes:(id)types excludedContentTypes:(id)contentTypes tags:(id)tags
{
  identifierCopy = identifier;
  typesCopy = types;
  contentTypesCopy = contentTypes;
  tagsCopy = tags;
  v21.receiver = self;
  v21.super_class = DOCEnumerationProperties;
  v16 = [(DOCEnumerationProperties *)&v21 init];
  v17 = v16;
  if (v16)
  {
    [(DOCEnumerationProperties *)v16 setHostIdentifier:identifierCopy];
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:items];
    [(DOCEnumerationProperties *)v17 setMaximumNumberOfItems:v18];

    [(DOCEnumerationProperties *)v17 setAllowedContentTypes:typesCopy];
    [(DOCEnumerationProperties *)v17 setExcludedContentTypes:contentTypesCopy];
    [(DOCEnumerationProperties *)v17 setTagIdentifiers:tagsCopy];
    v19 = v17;
  }

  return v17;
}

@end