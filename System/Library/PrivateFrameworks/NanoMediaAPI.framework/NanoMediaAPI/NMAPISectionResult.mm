@interface NMAPISectionResult
- (NMAPISectionResult)initWithSectionIdentifier:(id)a3 sectionDictionary:(id)a4 itemsArray:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NMAPISectionResult

- (NMAPISectionResult)initWithSectionIdentifier:(id)a3 sectionDictionary:(id)a4 itemsArray:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = NMAPISectionResult;
  v12 = [(NMAPISectionResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sectionIdentifier, a3);
    objc_storeStrong(&v13->_sectionDictionary, a4);
    objc_storeStrong(&v13->_itemsArray, a5);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
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