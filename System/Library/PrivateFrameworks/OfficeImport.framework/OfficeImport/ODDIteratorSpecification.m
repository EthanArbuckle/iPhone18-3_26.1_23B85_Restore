@interface ODDIteratorSpecification
- (ODDIteratorSpecification)init;
@end

@implementation ODDIteratorSpecification

- (ODDIteratorSpecification)init
{
  v6.receiver = self;
  v6.super_class = ODDIteratorSpecification;
  v2 = [(ODDIteratorSpecification *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mAttributesList = v2->mAttributesList;
    v2->mAttributesList = v3;
  }

  return v2;
}

@end