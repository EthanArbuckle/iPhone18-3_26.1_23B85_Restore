@interface ML3LanguageResources
- (ML3LanguageResources)initWithCoder:(id)a3;
- (ML3LanguageResources)initWithSectionsInfo:(id)a3 sortingDetails:(id)a4 canonicalLanguageIdentifier:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ML3LanguageResources

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  if (([v6 allowsKeyedCoding] & 1) == 0)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"ML3LanguageResources.m" lineNumber:56 description:{@"Encoder %@ does not support keyed coding", v6}];
  }

  [v6 encodeObject:self->_sectionsInfo forKey:@"ML3LanguageResourcesSectionsInfoKey"];
  [v6 encodeObject:self->_sortingDetails forKey:@"ML3LanguageResourcesSortingDetailsKey"];
  [v6 encodeObject:self->_canonicalLanguageIdentifier forKey:@"ML3LanguageResourcesCanonicalLanguageIdentifierKey"];
}

- (ML3LanguageResources)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ML3LanguageResources;
  v5 = [(ML3LanguageResources *)&v17 init];
  if (v5)
  {
    v6 = MSVPropertyListDataClasses();
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"ML3LanguageResourcesSectionsInfoKey"];
    v8 = [v7 copy];
    sectionsInfo = v5->_sectionsInfo;
    v5->_sectionsInfo = v8;

    v10 = [v4 decodeObjectOfClasses:v6 forKey:@"ML3LanguageResourcesSortingDetailsKey"];
    v11 = [v10 copy];
    sortingDetails = v5->_sortingDetails;
    v5->_sortingDetails = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ML3LanguageResourcesCanonicalLanguageIdentifierKey"];
    v14 = [v13 copy];
    canonicalLanguageIdentifier = v5->_canonicalLanguageIdentifier;
    v5->_canonicalLanguageIdentifier = v14;
  }

  return v5;
}

- (ML3LanguageResources)initWithSectionsInfo:(id)a3 sortingDetails:(id)a4 canonicalLanguageIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = ML3LanguageResources;
  v11 = [(ML3LanguageResources *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    sectionsInfo = v11->_sectionsInfo;
    v11->_sectionsInfo = v12;

    v14 = [v9 copy];
    sortingDetails = v11->_sortingDetails;
    v11->_sortingDetails = v14;

    v16 = [v10 copy];
    canonicalLanguageIdentifier = v11->_canonicalLanguageIdentifier;
    v11->_canonicalLanguageIdentifier = v16;
  }

  return v11;
}

@end