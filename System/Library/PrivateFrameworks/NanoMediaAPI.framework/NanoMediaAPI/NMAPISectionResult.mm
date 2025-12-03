@interface NMAPISectionResult
- (NMAPISectionResult)initWithSectionIdentifier:(id)identifier sectionDictionary:(id)dictionary itemsArray:(id)array;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NMAPISectionResult

- (NMAPISectionResult)initWithSectionIdentifier:(id)identifier sectionDictionary:(id)dictionary itemsArray:(id)array
{
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  arrayCopy = array;
  v15.receiver = self;
  v15.super_class = NMAPISectionResult;
  v12 = [(NMAPISectionResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sectionIdentifier, identifier);
    objc_storeStrong(&v13->_sectionDictionary, dictionary);
    objc_storeStrong(&v13->_itemsArray, array);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(NMAPISectionResult);
  p_isa = &v4->super.isa;
  if (v4)
  {
    objc_storeStrong(&v4->_sectionIdentifier, self->_sectionIdentifier);
    objc_storeStrong(p_isa + 2, self->_sectionDictionary);
    objc_storeStrong(p_isa + 3, self->_itemsArray);
  }

  return p_isa;
}

@end