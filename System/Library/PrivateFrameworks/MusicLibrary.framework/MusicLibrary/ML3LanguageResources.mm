@interface ML3LanguageResources
- (ML3LanguageResources)initWithCoder:(id)coder;
- (ML3LanguageResources)initWithSectionsInfo:(id)info sortingDetails:(id)details canonicalLanguageIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ML3LanguageResources

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3LanguageResources.m" lineNumber:56 description:{@"Encoder %@ does not support keyed coding", coderCopy}];
  }

  [coderCopy encodeObject:self->_sectionsInfo forKey:@"ML3LanguageResourcesSectionsInfoKey"];
  [coderCopy encodeObject:self->_sortingDetails forKey:@"ML3LanguageResourcesSortingDetailsKey"];
  [coderCopy encodeObject:self->_canonicalLanguageIdentifier forKey:@"ML3LanguageResourcesCanonicalLanguageIdentifierKey"];
}

- (ML3LanguageResources)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = ML3LanguageResources;
  v5 = [(ML3LanguageResources *)&v17 init];
  if (v5)
  {
    v6 = MSVPropertyListDataClasses();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"ML3LanguageResourcesSectionsInfoKey"];
    v8 = [v7 copy];
    sectionsInfo = v5->_sectionsInfo;
    v5->_sectionsInfo = v8;

    v10 = [coderCopy decodeObjectOfClasses:v6 forKey:@"ML3LanguageResourcesSortingDetailsKey"];
    v11 = [v10 copy];
    sortingDetails = v5->_sortingDetails;
    v5->_sortingDetails = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ML3LanguageResourcesCanonicalLanguageIdentifierKey"];
    v14 = [v13 copy];
    canonicalLanguageIdentifier = v5->_canonicalLanguageIdentifier;
    v5->_canonicalLanguageIdentifier = v14;
  }

  return v5;
}

- (ML3LanguageResources)initWithSectionsInfo:(id)info sortingDetails:(id)details canonicalLanguageIdentifier:(id)identifier
{
  infoCopy = info;
  detailsCopy = details;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = ML3LanguageResources;
  v11 = [(ML3LanguageResources *)&v19 init];
  if (v11)
  {
    v12 = [infoCopy copy];
    sectionsInfo = v11->_sectionsInfo;
    v11->_sectionsInfo = v12;

    v14 = [detailsCopy copy];
    sortingDetails = v11->_sortingDetails;
    v11->_sortingDetails = v14;

    v16 = [identifierCopy copy];
    canonicalLanguageIdentifier = v11->_canonicalLanguageIdentifier;
    v11->_canonicalLanguageIdentifier = v16;
  }

  return v11;
}

@end